using SDL2;
using System;
using static SDL2.SDL;

namespace BfEngine
{
	class Events
	{
		public static Event<delegate void(DropEvent)> dropFileEvent ~ _.Dispose();

		public static void Update()
		{
			//reset values
			Input.onMouseDown = false;
			Input.onMouseUp = false;

			while(SDL.PollEvent(var event) != 0){
				Input.onMouseDown = false;
				Input.onMouseUp = false;

				switch(event.type){
				case .Quit:
					Engine.Running = false;
				case .WindowEvent:{
					var windowEvent = event.window;
					//Console.WriteLine("{}.{}", event.type, windowEvent.windowEvent);
					switch(windowEvent.windowEvent){
					case .SizeChanged:{
						//Screen.Resolution = .(windowEvent.data1, windowEvent.data2);
						Screen.[Friend]Update();
						Camera.[Friend]Update();
						//Console.WriteLine("{}, {}", windowEvent.data1, windowEvent.data2);
					}
					case .Leave:
					case .Enter:
					case .Exposed:
					default:
						//Console.WriteLine("{}.{}", event.type, event.window.windowEvent);
					}
				}
				case .MouseMotion:{
					var mouseMotion = event.motion;
					Input.CursorPosition = .(mouseMotion.x, mouseMotion.y);
				}
				case .MouseButtonDown:{
					Input.mouseDown = true;
					Input.onMouseDown = true;
				}
				case .MouseButtonUp:{
					Input.mouseDown = false;
					Input.onMouseUp = true;
				}
				case .DropFile:{
					dropFileEvent(event.drop);
					/*Program.[Friend]LoadResPack(drop.file);
					Program.[Friend]PlayRandomSong();*/
				}
				case .KeyDown:{
					var keyevent = event.key;
					if(keyevent.keysym.mod.HasFlag(.ALT) && keyevent.keysym.sym == .F4){
						Engine.Running = false;
					}
				}
				default:
					Console.WriteLine(event.type);
				}
			}
		}
	}
}
