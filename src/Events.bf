using System;
using Windows;

namespace BfEngine
{
	class Events
	{
		//public static Event<delegate void(DropEvent)> dropFileEvent ~ _.Dispose();

		public static void Update()
		{
			//reset values
			Input.onMouseDown = false;
			Input.onMouseUp = false;
			Input.onMouse2Down = false;
			Input.onMouse2Up = false;
			Input.scroll = 0;

			while(User32.PeekMessageA(var msg, Engine.[Friend]hwnd, 0, 0, 1) != 0){
				User32.TranslateMessage(&msg);
				User32.DispatchMessageA(&msg);
			}
		}
	}
}
