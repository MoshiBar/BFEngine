using BfEngine;
using System;

namespace BfEngine
{
	class Input
	{
		public static Vector2 CursorPosition;

		public static bool mouseDown, onMouseDown, onMouseUp;


		public struct Controller : this(
			Xinput.Buttons pressed,
			Xinput.Buttons onPressed,
			Xinput.Buttons onReleased,

			Vector2 leftStick,
			Vector2 rightStick
		);

		private static int controllerPacket;

		public static ref Controller controller => ref controllers[0];
		public static Controller[4] controllers;

		public static float deadzone = 0.1f;

		public static void Update(){
			Xinput.XINPUT_STATE state = default;
			Xinput.XInputGetState(0, &state);
			if(state.dwPacketNumber == controllerPacket){
				//short-circuit, pad state hasnt changed
				controller.onPressed = 0;
				controller.onReleased = 0;
				return;
			}

			//bit twiddling hacks that will make you cry
			var changedbuttons = controller.pressed ^ state.buttons;
			controller.onPressed = (Xinput.Buttons)(state.buttons & changedbuttons);
			controller.onReleased = (Xinput.Buttons)(~state.buttons & changedbuttons);
			controller.pressed = state.buttons;

			if(controller.onPressed != 0) Console.WriteLine($"{controller.onPressed} Down");
			if(controller.onReleased != 0) Console.WriteLine($"{controller.onReleased} Up");

			//analogue sticks
			
			Vector2 stickL = Vector2(state.Gamepad.sThumbLX / 32767f, state.Gamepad.sThumbLY / 32767f);
			controller.leftStick = Deadzone!(stickL);
			//Console.WriteLine(controller.leftStick);

			Vector2 stickR = Vector2(state.Gamepad.sThumbRX / 32767f, state.Gamepad.sThumbRY / 32767f);
			controller.rightStick = Deadzone!(stickR);
			//Console.WriteLine(controller.rightStick);

			
		}

		static mixin Deadzone(Vector2 stickInput){
			if(stickInput.Length < deadzone) stickInput = Vector2.zero;
			else stickInput = stickInput.normalized * ((stickInput.Length - deadzone) / (1 - deadzone));
			if(stickInput.Length > 1) stickInput = stickInput.normalized;
			stickInput
		}
	}
}
