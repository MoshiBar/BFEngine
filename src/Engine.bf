using SDL2;
using BfEngine;
using System;
using BfEngine.UI;
using System.Diagnostics;
using static SDL2.SDL;

namespace BfEngine
{
	class Engine
	{
		public static Window* window;
		public static Renderer* renderer;

		public static bool Running;

		public static Color4 BGColor = .(0.5f, 0.5f, 1f, 1);

		static Stopwatch sw = new Stopwatch() ~ delete _;

		public static function void() UpdateFunc;

//#define WIN32 //use

#if WIN32

		static HDC hdc;

		[CallingConvention(.Stdcall)]
		static int testWndProc(HWND hwnd, Win32.WndProcMessage uMsg, LPVOID wParam, LPVOID lParam){
			/*if(uMsg != .MouseMove && uMsg != .NCHitTest && uMsg != .SetCursor)
				Console.WriteLine($"{hwnd}, {uMsg:x}, {wParam}, {lParam}");*/

			switch(uMsg){
			case .Size:{
				var size = *(uint16[2]*)&lParam;
				Screen.Resolution = .(size[0], size[1]);
			}
			case .NCDestroy: Engine.Running = false;
			case .MouseMove:{
				var pos = *(uint16[2]*)&lParam;
				Input.CursorPosition = .(pos[0], pos[1]);
			}
			case .LButtonDown:{
				Input.mouseDown = true;
				Input.onMouseDown = true;
				}
			case .LButtonUp:{
				Input.mouseDown = false;
				Input.onMouseUp = true;
				}
			case .NCHitTest: break;
			case .SetCursor: break;
			case .GetIcon: break;
			case .NCMouseMove: break;
			case .NCMouseLeave: break;
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
			default:{
				//Console.WriteLine($"{hwnd}, {uMsg:x}, {wParam}, {lParam}");
				
			}
			}

			return Win32.DefWindowProcA(hwnd, uMsg, wParam, lParam);
		}

		/*static int SysCommandProc(LPVOID wParam, LPVOID lParam){

		}*/
#endif

		public static void Init(){
			
#if WIN32
			// Register the window class.
			char8* CLASS_NAME  = "Sample Window Class";

			HINSTANCE hInstance = GetModuleHandleA(null);

			WNDCLASSEXA wc = default;
			wc.cbSize = sizeof(WNDCLASSEXA);
			wc.cbClsExtra = 0;
			wc.cbWndExtra = 0;
			wc.hCursor = LoadCursorA(null, IDC_ARROW);
			wc.hIcon = LoadIconA(null, IDI_WINLOGO);
			wc.hIconSm = null;
			wc.lpszMenuName = null;
			wc.style = .OwnDC | .HRedraw | .VRedraw;
			wc.hbrBackground = null;

			wc.lpfnWndProc   = => testWndProc;
			wc.hInstance     = hInstance;
			wc.lpszClassName = CLASS_NAME;

			var _class = Win32.RegisterClassExA(&wc);

			// Create the window.

			Win32.HWND hwnd = Win32.CreateWindowExA(
			    0,                              // Optional window styles.
			    CLASS_NAME,                     // Window class
			    "Learn to Program Windows",    // Window text
			    .OverlappedWindow | .Maximized/*OVERLAPPEDWINDOW*/,            // Window style

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

			var showwindow = ShowWindow(hwnd, 1);


			PIXELFORMATDESCRIPTOR pfd =
				.(
					sizeof(PIXELFORMATDESCRIPTOR),
					1,
					.DrawToWindow | .SupportOpenGL | .DoubleBuffer,    // Flags
					.PFD_TYPE_RGBA,        // The kind of framebuffer. RGBA or palette.
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

			int32 iPixelformat = wglChoosePixelFormat(hdc, &pfd);

			var result = wglSetPixelFormat(hdc, iPixelformat, &pfd);

			var context = wglCreateContext(hdc);
			wglMakeCurrent(hdc, context);


			var ctx = wglGetCurrentContext();


			GL.Init((_) => {
					var addr = wglGetProcAddress(_);
					if(addr == null) {
						addr = GetProcAddress(LoadLibraryA("opengl32.dll"), _);
						//var error = Win32.GetLastError();
						//Debug.Break();
					}
					return addr;
				});

			//Utils.ShowMessageBoxOK("OPENGL VERSION", scope String(GL.GetString(.VERSION)));

			Win32.SetWindowTextA(hwnd, GL.GetString(.VERSION));
			SDL.Init(.Everything);
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

			Screen.[Friend]Update();
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
			Win32.SwapBuffers(hdc);
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
