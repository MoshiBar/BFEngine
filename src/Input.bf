using BfEngine;
using System;
using System.Collections;
using System.Diagnostics;
using static Win32.Devices.HumanInterfaceDevice;

namespace BfEngine
{
	class Input
	{

		public static Vector2 CursorPosition;
		public static Vector2 CursorNormalizedPosition => (CursorPosition * 2 - Screen.Resolution).x_y / Screen.Resolution.y;
		public static float scroll;
		public static bool mouseDown, onMouseDown, onMouseUp, cursorInBounds;
		public static bool mouse2Down, onMouse2Down, onMouse2Up;


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

		static IDirectInput8A* dinput;
		static List<IDirectInputDevice8A*> inputDevices = new .() ~ delete _;
		static LPDIENUMDEVICESCALLBACKA enumDevicesCallback = (val1, val2) => {
			val1 = .();
			Console.WriteLine(StringView(&val1.tszInstanceName[0]));
			Console.WriteLine(StringView(&val1.tszProductName[0]));
			IDirectInputDevice8A* device = default;
			dinput.CreateDevice(val1.guidInstance, out device);
#unwarn
			device.SetDataFormat(c_dfDIJoystick2);
			device.Acquire();
			inputDevices.Add(device);
			return true;//Continue
		};

		public static void Init(){
#unwarn			
			var dinputresult = DirectInput8Create((.)Engine.[Friend]hInstance, 0x0800, IDirectInput8A.IID, (void**)&dinput);
			Console.WriteLine($"Dinput init result {dinputresult}");

			dinput.EnumDevices(.GameController, enumDevicesCallback, null, .AllDevices);
		}
		static void AppendBinary(String str, uint32 val){
			for(int i < 32){
				str.Append((val & (1 << (31 - i)) != 0) ? '1' : '0');
			}
		}

		static void AppendBinary(String str, uint16 val){
			for(int i < 16){
				str.Append((val & (1 << (15 - i)) != 0) ? '1' : '0');
			}
		}

		static void AppendBinary(String str, uint8 val){
			for(int i < 8){
				str.Append((val & (1 << (7 - i)) != 0) ? '1' : '0');
			}
		}

		/*private enum SwitchButtons1{
			Y			= 0x1,
			X			= 0x2,
			B			= 0x4,
			A			= 0x8,

			R			= 0x40,
			ZR			= 0x80,

			Select		= 0x100,
			Start		= 0x200,

			RStick		= 0x400,
			LStick		= 0x800,

			Home		= 0x1000,
			Screenshot	= 0x2000,
		}

		private enum SwitchButtons2{
			Down 	= 0x1,
			Up 		= 0x2,
			Right 	= 0x4,
			Left 	= 0x8,

			L		= 0x40,
			ZL		= 0x80,
		}*/

		static uint32 mask = 0xFFFFFFFF;

		public static void Update(){
			/*DIJOYSTATE2 js = default;
			/*DIDEVICEOBJECTDATA[64] data = default;
			uint32 count = 64;//data.Count;
			const int size = sizeof(DIDEVICEOBJECTDATA);
			IDirectInputDevice8_GetDeviceData(inputDevices[0], size, &data, &count, 0);
			
			if(count > 0 && count != 64) Debug.Break();*/
			IDirectInputDevice8_GetDeviceState(inputDevices[0], sizeof(DIJOYSTATE2), &js);

			//Console.WriteLine($"({js.lX:X}, {js.lY:X}, {js.lZ:X})\n({js.lRx}, {js.lRy}, {js.lRz})\n({js.rglSlider[0]}, {js.rglSlider[0]})\n");
			String str = scope .();
			AppendBinary(str, (uint32)js.rglVSlider[0]);
			str.Append(',');

			AppendBinary(str, (uint32)js.rglVSlider[1]);
			str.Append(',');

			AppendBinary(str, (uint32)js.lVRz);


			//Xinput.Buttons b = default;
			SwitchButtons1 sb1 = (.)(js.lX - 0x7fff);
			SwitchButtons2 sb2 = (.)((js.lY & 0x30 != 0) ? (js.lY - 0x7FFF) & 0xFF : js.lY & 0xFF);

			
			str.AppendF($"\n{sb1}, {sb2}, {(uint8)((js.lZ & 15) << 4 | (js.lY >> 12) & 15)}, {(uint8)((js.lZ >> 8) & 255)}, {(js.lRz >> 4) & 0xFF}");
			//if((int8)((js.lY >> 10) & 15) != 0)

			Console.WriteLine(str);*/






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

			Vector2 stickR = Vector2(state.Gamepad.sThumbRX / 32767f, state.Gamepad.sThumbRY / 32767f);
			controller.rightStick = Deadzone!(stickR);

			
		}

		static mixin Deadzone(Vector2 stickInput){
			if(stickInput.Length < deadzone) stickInput = Vector2.zero;
			else stickInput = stickInput.normalized * ((stickInput.Length - deadzone) / (1 - deadzone));
			if(stickInput.Length > 1) stickInput = stickInput.normalized;
			stickInput
		}
	}
}
