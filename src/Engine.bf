using BfEngine;
using System;
using BfEngine.UI;
using System.Diagnostics;
using Windows;
using static Windows.GDI32;
using static Windows.OpenGL32;
using static Windows.User32;
using static Windows.Kernel32;

namespace BfEngine
{
	class Engine
	{
		//public static Window* window;
		//public static Renderer* renderer;

		public static bool Running;

		public static Color4 BGColor = .(0.5f, 0.5f, 1f, 1);

		static Stopwatch sw = new Stopwatch() ~ delete _;

		public static function void() UpdateFunc;

#define WIN32 //use

#if WIN32
		static HDC hdc;
		static HWND hwnd;

		public static HCURSOR handcursor, pointer, ibeam;
		public static HCURSOR currentCursor;

		[CallingConvention(.Stdcall)]
		static int testWndProc(HWND hwnd, WndProcMessage uMsg, int wParam, int lParam){
			switch(uMsg){
			case .Size:{
				var size = *(uint16[2]*)&lParam;
				Console.WriteLine($"sizemsg: {Vector2(size[0], size[1])}");
				Screen.Resolution = .(size[0], size[1]);
				break;
			}
			case .NCDestroy: Engine.Running = false;
			case .MouseMove:{
				var pos = *(uint16[2]*)&lParam;
				Console.WriteLine(pos);
				Input.CursorPosition = .(pos[0], pos[1]);
				break;
			}
			case .LButtonDown:{
				Input.mouseDown = true;
				Input.onMouseDown = true;
				break;
				}
			case .LButtonUp:{
				Input.mouseDown = false;
				Input.onMouseUp = true;
				break;
				}
			case .NCHitTest: {
				var result = (HitTestResult)DefWindowProcA(hwnd, uMsg, wParam, lParam);
				Input.cursorInBounds = ((HitTestResult)result & (.)int16.MaxValue) == .Client;//cursor is only considered in bounds if it is inside the client area(inner area)
				
				return (.)result;
			}
			case .SetCursor: {
				//Console.WriteLine(lParam);
				if(((HitTestResult)(int)lParam & (.)int16.MaxValue) == .Client){
					User32.SetCursor(currentCursor);
				}
				break;
			}
			case .GetIcon: break;
			case .NCMouseMove: {
				
				break;
			}
			//case .NCMouseLeave: break;
			/*case .SysCommand:{
				var cmd = (SysCommand)((int)wParam & ~0xF);
				var flag = (int)wParam & 0xF;
				Console.WriteLine($"{cmd}, {flag}");
				switch(cmd)
				{
				case .SC_SIZE:{


					var size = *(uint16[2]*)&lParam;

					/*Win32.Rect rc = .(0, 0, size[0], size[1]);

					AdjustWindowRectEx( &rc, 0, 0, dwExStyle );*/

					Win32.SetWindowPos(hwnd, null, 0, 0, size[0] + 8, size[1] + 8, .NOMOVE | .NOZORDER);
					//var result = Win32.DefWindowProcA(hwnd, uMsg, wParam, lParam);
					//Console.WriteLine($"0x{result:x}");
					return 0;
				}
				default: break;
				}
			}*/
			/*case (.)356:{
				var size = *(uint16[2]*)&lParam;
				//Screen.Resolution = .(size[0], size[1]);
				//Debug.Break();
			}*/
			default:{
				//Console.WriteLine($"{hwnd}, {uMsg:x}, {wParam}, {lParam}");
				var size = *(uint16[2]*)&lParam;
				Console.WriteLine($"{hwnd}, {uMsg:x}, {lParam}, ({size[0]}, {size[1]})");
				break;
				}
			}

			return DefWindowProcA(hwnd, uMsg, wParam, lParam);
		}

		/*static int SysCommandProc(LPVOID wParam, LPVOID lParam){

		}*/

		public static void SetCursor(HCURSOR cursor){
			//testWndProc(hwnd, .SetCursor, cursor, null);
			//User32.SetCursor(cursor);
			//User32.PostMessageA(hwnd, .SetCursor, cursor, hwnd);
			currentCursor = cursor;
		}
#else
		public static Vector2Int GetWindowSize(){
			int32 x, y;
			SDL.GetWindowSize(window, out x, out y);
			return .((int32)x, (int32)y);	
		}
#endif

		public static void Init(){
#if WIN32
			// Register the window class.
			char8* CLASS_NAME  = "Sample Window Class";

			HINSTANCE hInstance = GetModuleHandleA(null);

			handcursor = LoadCursorA(null, IDC_HAND);
			pointer = LoadCursorA(null, IDC_ARROW);
			ibeam = LoadCursorA(null, IDC_IBEAM);

			currentCursor = pointer;

			WNDCLASSEXA wc = default;
			wc.cbSize = sizeof(WNDCLASSEXA);
			wc.cbClsExtra = 0;
			wc.cbWndExtra = 0;
			wc.hCursor = null;//pointer;
			wc.hIcon = LoadIconA(null, IDI_WINLOGO);
			wc.hIconSm = null;
			wc.lpszMenuName = null;
			wc.style = .OwnDC | .HRedraw | .VRedraw;
			wc.hbrBackground = null;

			wc.lpfnWndProc   = => testWndProc;
			wc.hInstance     = hInstance;
			wc.lpszClassName = CLASS_NAME;

			var _class = RegisterClassExA(&wc);

			// Create the window.

			hwnd = CreateWindowExA(
			    0,                              // Optional window styles.
			    CLASS_NAME,                     // Window class
			    "Learn to Program Windows",    // Window text
			    .OverlappedWindow | .Maximized,            // Window style

			    // Size and position
			    0, 0, 600, 400,

			    null,       // Parent window    
			    null,       // Menu
			    hInstance,  // Instance handle
			    null        // Additional application data
			    );

			if (hwnd == null)
			{
			    Debug.Break();
			}

			var showwindow = ShowWindow(hwnd, .Normal);


			PIXELFORMATDESCRIPTOR pfd =
				.(
					sizeof(PIXELFORMATDESCRIPTOR),
					1,
					.DrawToWindow | .SupportOpenGL | .DoubleBuffer,    // Flags
					.PFD_TYPE_RGBA,       // The kind of framebuffer. RGBA or palette.
					32,                   // Colordepth of the framebuffer.
					0, 0, 0, 0, 0, 0,
					0,
					0,
					0,
					0, 0, 0, 0,
					24,                   // Number of bits for the depthbuffer
					8,                    // Number of bits for the stencilbuffer
					0,                    // Number of Aux buffers in the framebuffer.
					0,
					0,
					0, 0, 0
				);
			hdc = GetDC(hwnd);

			var current = wglMakeCurrent(hdc, null);

			int32 iPixelformat = ChoosePixelFormat(hdc, &pfd);
			/*var result =*/ SetPixelFormat(hdc, iPixelformat, &pfd);
			var context = wglCreateContext(hdc);
			current = wglMakeCurrent(hdc, context);


			var ctx = wglGetCurrentContext();


			GL.Init((_) => {
					var addr = OpenGL32.wglGetProcAddress(_);
					if(addr == null) {
						addr = GetProcAddress(LoadLibraryA("opengl32.dll"), _);
						//var error = Win32.GetLastError();
						//Debug.Break();
					}
					//if(addr == null) Debug.Break();
					return addr;
				});
			var version = GL.GetString(.VERSION);
			//Utils.ShowMessageBoxOK("OPENGL VERSION", scope String(version));

			SetWindowTextA(hwnd, GL.GetString(.VERSION));
			//SDL.Init(.Everything);

			{
				int32 x = 900, y = 640;
				var rect = GetWindowRect(Engine.[Friend]hwnd, ..var _);
				SetWindowPos(Engine.[Friend]hwnd, default, rect.x, rect.y, x, y, default);
				Console.WriteLine($"getrect: {Vector2(x, y)}");
				//Screen.Resolution = .((.)x, (.)y);
			}
#else
			/*Context init stuff*/

			SDL.Init(.Everything);

			Time.Init();


			SDL.GL_SetSwapInterval(1);

			SDL.GL_SetAttribute(.GL_CONTEXT_MAJOR_VERSION, 4);
			SDL.GL_SetAttribute(.GL_CONTEXT_MINOR_VERSION, 6);


			SDL.GL_SetAttribute(.GL_MULTISAMPLEBUFFERS, 1);
			SDL.GL_SetAttribute(.GL_MULTISAMPLESAMPLES,16);



			window = SDL.CreateWindow("OpenGL -- SDL", .Centered, .Centered, 800, 480, .OpenGL);
			renderer = SDL.GetRenderer(window);


			SDL.SetWindowResizable(window, .True);
			SDL.GL_SetSwapInterval(0);
			SDL.GL_SetAttribute(.GL_DOUBLEBUFFER, 0);
			SDL.GL_SetAttribute(.GL_DEPTH_SIZE, 24);


			/*var GLContext = */SDL.GL_CreateContext(window);

			GL.Init(=> SDL.SDL_GL_GetProcAddress);

			GL.CreateProgram();
#endif
			

			//GL.CreateProgram();
			
			
			//GL.Enable(.CULL_FACE);
			//GL.CullFace(.BACK);
			//GL.BlendFunc(.SRC_ALPHA, .ONE_MINUS_SRC_ALPHA);
			//GL.BlendFuncSeparate(.SRC_ALPHA, .ONE_MINUS_SRC_ALPHA, .ONE, .ONE_MINUS_SRC_ALPHA);
			GL.Enable(.BLEND);
			//GL.BlendFunc(.SRC_ALPHA, .ONE_MINUS_SRC_ALPHA);
			GL.BlendFunc(.ONE, .ONE_MINUS_SRC_ALPHA);

			GL.Disable(.DEPTH_TEST);

			//GL.PolygonMode(.FRONT_AND_BACK, .LINE);
			/*Engine init stuff*/

			Texture.Init();

			Time.Init();

			Audio.Init();

			Camera.[Friend]Update();
			Shader.Load();
			Text.Init();

			UI.Init();

			//SDL.SetWindowBordered(window, false);
			//SDL.SetWindowPosition(window, 0, 0);
			//var bounds = SDL.GetDisplayBounds(0, ..let a);
			//SDL.SetWindowSize(window, bounds.w, bounds.h);

			

			Running = true;

			GL.Clear(.COLOR_BUFFER_BIT);

			User32.SetCursor(pointer);
		}

		public static void Update()
		{
			sw.Restart();

			GL.ClearColor(BGColor.r, BGColor.g, BGColor.b, 1);
			GL.Clear(.COLOR_BUFFER_BIT);

			Time.Update();
			Events.Update();
			Input.Update();
			Camera.[Friend]Update();

			sw.Stop();
			Time.engineTime = sw.ElapsedMicroseconds / 1000f;
			sw.Restart();
			Tweenie.Update((float)Time.DeltaTime);
			sw.Stop();
			Time.tweenieTime = sw.ElapsedMicroseconds / 1000f;
			sw.Restart();

			
			UpdateFunc();

			sw.Stop();
			Time.[Friend]averager.PushValue(sw.ElapsedMicroseconds / 1000f);
			sw.Restart();
			Engine.LateUpdate();
			sw.Stop();
			Time.UITime = sw.ElapsedMicroseconds / 1000f;

			//statsText.scale = textScale;
			//statsText.GenerateTextBuffer(scope $"{Math.Round(1 / Time.SmoothDeltaTime)} FPS\n<size=25%><color=#FF0055>Engine Update Time: {engineTime:0.00}\n<color=yellow>Tweenie Update Time: {tweenieTime:0.00}\nGame Update Time: {averager.average:0.00}\nUI Update Time: {UITime:0.00}", .Default);
			//statsText.Draw(Matrix4.CreateTransform(.(Input.CursorPosition.x, -Input.CursorPosition.y)/*.(0, 0, 0)*/, .(1, 1, 1), .()), Camera.ScreenSpaceMatrix);
#if WIN32
			Input.cursorInBounds &= WindowFromPoint(GetCursorPos()) == hwnd;//cursor is considered out of bounds if the mouse is over another window that is obscuring it
			
			Windows.GDI32.SwapBuffers(hdc);
#else
			SDL.GL_SwapWindow(Engine.window);
#endif
		}

		public static void LateUpdate()
		{
			UI.Update();
		}
	}
}
