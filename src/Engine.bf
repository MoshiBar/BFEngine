using BfEngine;
using System;
using BfEngine.UI;
using System.Diagnostics;
using System.Collections;
#if IMGUI_ENABLE
using ImGui;
#endif //IMGUI_ENABLE
using BfEngine.Text;
using static Win32.Graphics.Gdi;
using static Win32.UI.WindowsAndMessaging;
using static Win32.Graphics.OpenGL;
using static Win32.Win32;
using static System.Windows;


namespace BfEngine
{
	class Engine
	{
		public static bool Running;

		public static Color4 BGColor = .(0.5f, 0.5f, 1f, 1);

		static Stopwatch sw = new Stopwatch() ~ delete _;

		public static function void() UpdateFunc;

		public static volatile List<IReloadable> toReload = new List<IReloadable>() ~ delete _;//does not own its items

		static HDC hdc;
		public static HWnd hwnd;
		static HInstance hInstance;

		public static HCURSOR handcursor, pointer, ibeam;
		public static HCURSOR currentCursor;

		public static Model defaultRect ~ delete _;

#if IMGUI_ENABLE
		static ImGui.Context* imctx;
#endif //IMGUI_ENABLE

		[CallingConvention(.Stdcall)]
		static int testWndProc(HWnd hwnd, WndProcMessage uMsg, uint wParam, int lParam){
			switch(uMsg){
			case .Size:{
#unwarn
				var size = *(uint16[2]*)&lParam;
				Screen.Resolution = .(size[0], size[1]);
				break;
			}
			case .NCDestroy: Engine.Running = false;
			case .MouseMove:{
#unwarn
				var pos = *(uint16[2]*)&lParam;
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
			case .RButtonDown:{
				Input.mouse2Down = true;
				Input.onMouse2Down = true;
				break;
				}
			case .RButtonUp:{
				Input.mouse2Down = false;
				Input.onMouse2Up = true;
				break;
				}
			case .NCHitTest: {
				var result = (HitTestResult)DefWindowProcA(hwnd, uMsg, wParam, lParam);
				Input.cursorInBounds = ((HitTestResult)result & (.)int16.MaxValue) == .Client;//cursor is only considered in bounds if it is inside the client area(inner area)
				if(Input.cursorInBounds) SetCursor(pointer);
				return (.)result;
			}
			case .SetCursor: {
				HitTestResult testResult = (.)lParam;
				if((testResult & (.)int16.MaxValue) == .Client){
					SetCursor(currentCursor);
				}
				break;
			}
			case .GetIcon: break;
			case .NCMouseMove: {
				
				break;
			}
			case .MouseWheel:{
#unwarn
				var size = *(uint16[2]*)&wParam;
				Input.scroll = (int16)size[1] / 600f;
			}
			case .Char:{
				#if IMGUI_ENABLE
				imctx.IO.AddInputCharacter((.)wParam);
				#endif //IMGUI_ENABLE
			}
			case .KeyDown, .KeyUp, .SysKeyDown, .SysKeyUp:{
				#if IMGUI_ENABLE
				bool down = (uMsg == .KeyDown || uMsg == .SysKeyDown);
				if(wParam < 256)
					imctx.IO.KeysDown[wParam] = down;
				if(wParam == 0x10)//VK_SHIFT
					imctx.IO.KeyShift = down;
				else if(wParam == 0x11)//VK_CONTROL
					imctx.IO.KeyCtrl = down;
				else if(wParam == 0x12)//VK_MENU
					imctx.IO.KeyAlt = down;
				#endif //IMGUI_ENABLE
			}
			default:{

				}
			}

			return DefWindowProcA(hwnd, uMsg, wParam, lParam);
		}

		public static void SetCursor(HCURSOR cursor){
			currentCursor = cursor;
			Win32.UI.WindowsAndMessaging.SetCursor(cursor);
		}

		public static void SetDefaultBlendFunc(){
			GL.BlendFunc(.ONE, .ONE_MINUS_SRC_ALPHA);
		}

		public static void SetDefaultBlendEquation(){
			GL.BlendEquation(.FUNC_ADD);
		}

		public static void Init(){

			// Register the window class.
			char8* CLASS_NAME  = "wclass";

			hInstance = (.)GetModuleHandleA(null);

			handcursor = LoadCursorA(0, (.)IDC_HAND);
			pointer = LoadCursorA(0, (.)IDC_ARROW);
			ibeam = LoadCursorA(0, (.)IDC_IBEAM);

			//defaults to arrow pointer
			currentCursor = pointer;


			WNDCLASSEXA wc = default;
			wc.cbSize = sizeof(WNDCLASSEXA);
			wc.cbClsExtra = 0;
			wc.cbWndExtra = 0;
			wc.hCursor = 0;
			wc.hIcon = LoadIconA(0, (.)IDI_WINLOGO);
			wc.hIconSm = 0;
			wc.lpszMenuName = null;
			wc.style = .OwnDeviceContext | .HRedraw | .VRedraw;
			wc.hbrBackground = 0;

			wc.lpfnWndProc   = => testWndProc;
			wc.hInstance     = hInstance;
			wc.lpszClassName = CLASS_NAME;

			RegisterClassExA(wc);

			//creates window for false opengl context
			hwnd = CreateWindowExA(
			    0,                              // Optional window styles.
			    CLASS_NAME,                     // Window class
			    "False Window",    // Window text
			    default,            // Window style
			    0, 0, 0, 0, // Size and position
			    0,       // Parent window    
			    0,       // Menu
			    hInstance,  // Instance handle
			    null        // Additional application data
			    );

			if (hwnd == 0)
			    Internal.FatalError("Can't Create false window");

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

			var current = wglMakeCurrent(hdc, 0);

			int32 iPixelformat = ChoosePixelFormat(hdc, pfd);
			/*var result =*/ SetPixelFormat(hdc, iPixelformat, pfd);
			var context1 = wglCreateContext(hdc);
			current = wglMakeCurrent(hdc, context1);
			//var ctx = wglGetCurrentContext();

			WGL.Init( => wglGetProcAddress);

			int32 nPixelFormat2 = default;

			IntBool bValidPixFormat;
			uint32 nMaxFormats = 1;
			uint32 nNumFormats;
			float[?] pfAttribFList = .( 0, 0 );
			WGL.ARBEnum[?] piAttribIList = .( 
			    .DrawToWindow, .True,
			    .SupportOpengl, .True,
			    .ColorBits, (.)32,
			    .RedBits, (.)8,
			    .GreenBits, (.)8,
			    .BlueBits, (.)8,
			    .AlphaBits, (.)8,
			    .DepthBits, (.)16,
			    .StencilBits, (.)0,
			    .DoubleBuffer, .True,
			    .PixelType, .TypeRgba,
			    .SampleBuffers, .True,
			    .Samples, (.)16,
			    0, 0 );

			bValidPixFormat = WGL.ChoosePixelFormatARB(hdc, &piAttribIList, &pfAttribFList, nMaxFormats, &nPixelFormat2, &nNumFormats);

			if (bValidPixFormat == 0)
			{
				Debug.Break();
			}
			//destroy false window
			DestroyWindow(hwnd);
			//create true window
			hwnd = CreateWindowExA(
			    0,                              // Optional window styles.
			    CLASS_NAME,                     // Window class
			    "True Window",    // Window text
			    .OverlappedWindow | .Maximized,            // Window style

			    // Size and position
			    0, 0, 600, 400,

			    0,       // Parent window    
			    0,       // Menu
			    hInstance,  // Instance handle
			    null        // Additional application data
			    );

			if (hwnd == 0)
			{
			    Debug.Break();
			}

			/*var showwindow =*/ ShowWindow(hwnd, .Normal);
			hdc = GetDC(hwnd);

			SetPixelFormat(hdc, nPixelFormat2, pfd);


			var mGLRenderContext = wglCreateContext(hdc);

			wglMakeCurrent(hdc, 0);
			wglDeleteContext(context1);
			wglMakeCurrent(hdc, mGLRenderContext);
			

			
			GL.Init((_) => {
					var addr = wglGetProcAddress(_);
					if(addr == null) {
						addr = (.)GetProcAddress(LoadLibraryA("opengl32.dll"), _);
						//var error = Win32.GetLastError();
						//Debug.Break();
					}
					//if(addr == null) Debug.Break();
					return addr;
				});

			SetWindowTextA(hwnd, GL.GetString(.VERSION));

			int32 x = 900, y = 640;
			var rect = GetWindowRect(Engine.[Friend]hwnd, ..var _);
			SetWindowPos(Engine.[Friend]hwnd, default, rect.left, rect.top, x, y, default);
			Console.WriteLine($"getrect: {Vector2(x, y)}");


			
			//GL.Enable(.CULL_FACE);
			//GL.CullFace(.BACK);

			GL.Enable(.MULTISAMPLE);

			GL.Enable(.BLEND);
			//GL.BlendFunc(.SRC_ALPHA, .ONE_MINUS_SRC_ALPHA);
			//GL.BlendFunc(.ONE, .ONE_MINUS_SRC_ALPHA);
			SetDefaultBlendFunc();
			SetDefaultBlendEquation();

			GL.Enable(.DEPTH_TEST);
			GL.DepthFunc(.LEQUAL);

			GL.PolygonMode_(.FRONT, .FILL);
			/*Engine init stuff*/

			Texture.Init();

			Time.Init();
			Input.Init();

			//Audio.Init();

			Camera.[Friend]Update();
			Shader.Load();

			defaultRect = .CreateRect(new Model());
			RenderableText.Init();

			UI.Init();

			Audio.[Friend]Init();

			Running = true;

			GL.Clear(.COLOR_BUFFER_BIT);

			SetCursor(pointer);

#if IMGUI_ENABLE
			imctx = ImGui.CreateContext();
			imctx.IO.KeyMap[(.)ImGui.Key.Tab] = 9;
			imctx.IO.KeyMap[(.)ImGui.Key.LeftArrow] = 37;
			imctx.IO.KeyMap[(.)ImGui.Key.RightArrow] = 39;
			imctx.IO.KeyMap[(.)ImGui.Key.UpArrow] = 38;
			imctx.IO.KeyMap[(.)ImGui.Key.DownArrow] = 40;
			imctx.IO.KeyMap[(.)ImGui.Key.PageUp] = 0x21;
			imctx.IO.KeyMap[(.)ImGui.Key.PageDown] = 0x22;
			imctx.IO.KeyMap[(.)ImGui.Key.Home] = 0x24;
			imctx.IO.KeyMap[(.)ImGui.Key.End] = 0x23;
			imctx.IO.KeyMap[(.)ImGui.Key.Insert] = 0x2D;
			imctx.IO.KeyMap[(.)ImGui.Key.Delete] = 46;
			imctx.IO.KeyMap[(.)ImGui.Key.Backspace] = 8;
			imctx.IO.KeyMap[(.)ImGui.Key.Space] = 32;
			imctx.IO.KeyMap[(.)ImGui.Key.Enter] = 13;
			imctx.IO.KeyMap[(.)ImGui.Key.Escape] = 27;
			imctx.IO.KeyMap[(.)ImGui.Key.KeyPadEnter] = 13;
			imctx.IO.KeyMap[(.)ImGui.Key.A] = (.)'Z';
			imctx.IO.KeyMap[(.)ImGui.Key.C] = (.)'C';
			imctx.IO.KeyMap[(.)ImGui.Key.V] = (.)'V';
			imctx.IO.KeyMap[(.)ImGui.Key.X] = (.)'X';
			imctx.IO.KeyMap[(.)ImGui.Key.Y] = (.)'Y';
			imctx.IO.KeyMap[(.)ImGui.Key.Z] = (.)'Z';

			ImGuiImplOpenGL3.Init();
			ImGui.StyleColorsDark();
#endif //IMGUI_ENABLE

			
		}

		public static void Update()
		{
			

			sw.Restart();

			for(var r in toReload) r.Reload();
			toReload.Clear();

			GL.ClearColor(BGColor.r, BGColor.g, BGColor.b, 1);
			GL.Clear(.COLOR_BUFFER_BIT | .DEPTH_BUFFER_BIT);

			Time.Update();
			Events.Update();
			Input.Update();
			Audio.[Friend]Update();
			Camera.[Friend]Update();

			sw.Stop();
			Time.engineTime = sw.ElapsedMicroseconds / 1000f;
			sw.Restart();
			Tweenie.Update((float)Time.DeltaTime);
			sw.Stop();
			Time.tweenieTime = sw.ElapsedMicroseconds / 1000f;
			sw.Restart();

			#if IMGUI_ENABLE
			imctx.IO.DisplaySize = .(Screen.Resolution.x, Screen.Resolution.y);
			imctx.IO.MousePos = .(Input.CursorPosition.x, Input.CursorPosition.y);
			imctx.IO.MouseDown[0] = Input.mouseDown;
			imctx.IO.MouseDown[1] = Input.mouse2Down;
			imctx.IO.MouseWheel = Input.scroll;
			

			ImGuiImplOpenGL3.NewFrame();
			ImGui.NewFrame();
			#endif //IMGUI_ENABLE

			

			UpdateFunc();

			sw.Stop();
			Time.[Friend]averager.PushValue(sw.ElapsedMicroseconds / 1000f);
			sw.Restart();
			Engine.LateUpdate();
			sw.Stop();
			Time.UITime = sw.ElapsedMicroseconds / 1000f;

			#if IMGUI_ENABLE
			ImGui.Render();
			ImGuiImplOpenGL3.RenderDrawData(ImGui.GetDrawData());
			#endif //IMGUI_ENABLE

			//statsText.scale = textScale;
			//statsText.GenerateTextBuffer(scope $"{Math.Round(1 / Time.SmoothDeltaTime)} FPS\n<size=25%><color=#FF0055>Engine Update Time: {engineTime:0.00}\n<color=yellow>Tweenie Update Time: {tweenieTime:0.00}\nGame Update Time: {averager.average:0.00}\nUI Update Time: {UITime:0.00}", .Default);
			//statsText.Draw(Matrix4.CreateTransform(.(Input.CursorPosition.x, -Input.CursorPosition.y)/*.(0, 0, 0)*/, .(1, 1, 1), .()), Camera.ScreenSpaceMatrix);

			Input.cursorInBounds &= WindowFromPoint(GetCursorPos()) == hwnd;//cursor is considered out of bounds if the mouse is over another window that is obscuring it
			
			SwapBuffers(hdc);
		}

		public static void LateUpdate()
		{
			UI.Update();
		}
	}
}
