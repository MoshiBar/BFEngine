using System;
namespace BfEngine
{
	class Xinput
	{
		typealias GUID = Guid;
		typealias BOOL = uint32;
		typealias BYTE = uint8;
		typealias WORD = uint16;
		typealias WCHAR = char16;
		typealias SHORT = int16;
		typealias DWORD = uint32;

		/***************************************************************************
		*                                                                          *
		*   XInput.h -- This module defines Xbox 360 Common Controller APIs        *
		*               and constants for the Windows platform.                    *
		*                                                                          *
		*   Copyright (c) Microsoft Corp. All rights reserved.                     *
		*                                                                          *
		***************************************************************************/



		// Current name of the DLL shipped in the same SDK as this header.
		// The name reflects the current version

#define WIN8//comment this out if you're targeting earlier windows versions

#if WIN8
		const String XINPUT_DLL_A = "xinput1_4.dll";
#else 
const String XINPUT_DLL_A = "xinput9_1_0.dll";
#endif
		//
		// Device types available in XINPUT_CAPABILITIES
		//
		public enum DevType : BYTE{
			GAMEPAD = 0x01
		}

		//
		// Device subtypes available in XINPUT_CAPABILITIES
		//
#if WIN8
		enum DevSubType : BYTE
		{
			UNKNOWN = 0x00,
			GAMEPAD = 0x01,
			WHEEL = 0x02,
			ARCADE_STICK = 0x03,
			FLIGHT_STICK = 0x04,
			DANCE_PAD = 0x05,
			GUITAR = 0x06,
			GUITAR_ALTERNATE = 0x07,
			DRUM_KIT = 0x08,
			GUITAR_BASS = 0x0B,
			ARCADE_PAD = 0x13,
		}
#endif//(_WIN32_WINNT >= _WIN32_WINNT_WIN8)

		//
		// Flags for XINPUT_CAPABILITIES
		//
		public enum Capabilities
		{
			VOICE_SUPPORTED = 0x0004,
#if WIN8
			FFB_SUPPORTED = 0x0001,
			WIRELESS = 0x0002,
			PMD_SUPPORTED = 0x0008,
			NO_NAVIGATION = 0x0010,
#endif //(_WIN32_WINNT >= _WIN32_WINNT_WIN8)
	}

		//
		// Constants for gamepad buttons
		//

		public enum Buttons : WORD{
			DpadUp			= 0x0001,
			DpadDown		= 0x0002,
			DpadLeft		= 0x0004,
			DpadRight		= 0x0008,
			START			= 0x0010,
			BACK			= 0x0020,
			LeftThumb		= 0x0040,
			RightThumb		= 0x0080,
			LeftShoulder	= 0x0100,
			RightShoulder	= 0x0200,
			A				= 0x1000,
			B				= 0x2000,
			X				= 0x4000,
			Y				= 0x8000
		}

		//
		// Gamepad thresholds
		//
		public enum Thresholds{
			GAMEPAD_LEFT_THUMB_DEADZONE		= 7849,
			GAMEPAD_RIGHT_THUMB_DEADZONE	= 8689,
			GAMEPAD_TRIGGER_THRESHOLD		= 30,
		}
		//
		// Flags to pass to XInputGetCapabilities
		//
		enum XinputFlag : DWORD
		{
			GAMEPAD = 0x00000001
		}
		

#if WIN8
		//
		// Devices that support batteries
		//
		public enum BatteryDevType{
			GAMEPAD = 0x00,
			HEADSET = 0x01,
		}
		//
		// Flags for battery status level
		//
		public enum BatteryType : BYTE{
			DISCONNECTED      = 0x00,    // This device is not connected
			WIRED             = 0x01,    // Wired device, no battery
			ALKALINE          = 0x02,    // Alkaline battery source
			NIMH              = 0x03,    // Nickel Metal Hydride battery source
			UNKNOWN           = 0xFF,    // Cannot determine the battery type
		}
		// These are only valid for wireless, connected devices, with known battery types
		// The amount of use time remaining depends on the type of device.
		public enum BatteryLevel : BYTE{
			EMPTY  = 0x00,
			LOW    = 0x01,
			MEDIUM = 0x02,
			FULL   = 0x03,
		}
#endif //(_WIN32_WINNT >= _WIN32_WINNT_WIN8)

		// User index definitions
		const int XUSER_MAX_COUNT = 4;

		const int XUSER_INDEX_ANY = 0x000000FF;

#if WIN8

		//
		// Codes returned for the gamepad keystroke
		//
		public enum VirtualKey : WORD{
			A					= 0x5800,
			B					= 0x5801,
			X					= 0x5802,
			Y					= 0x5803,
			RSHOULDER			= 0x5804,
			LSHOULDER			= 0x5805,
			LTRIGGER			= 0x5806,
			RTRIGGER			= 0x5807,

			DPAD_UP				= 0x5810,
			DPAD_DOWN			= 0x5811,
			DPAD_LEFT			= 0x5812,
			DPAD_RIGHT			= 0x5813,
			START				= 0x5814,
			BACK				= 0x5815,
			LTHUMB_PRESS		= 0x5816,
			RTHUMB_PRESS		= 0x5817,

			LTHUMB_UP			= 0x5820,
			LTHUMB_DOWN			= 0x5821,
			LTHUMB_RIGHT		= 0x5822,
			LTHUMB_LEFT			= 0x5823,
			LTHUMB_UPLEFT		= 0x5824,
			LTHUMB_UPRIGHT		= 0x5825,
			LTHUMB_DOWNRIGHT	= 0x5826,
			LTHUMB_DOWNLEFT		= 0x5827,

			RTHUMB_UP			= 0x5830,
			RTHUMB_DOWN			= 0x5831,
			RTHUMB_RIGHT		= 0x5832,
			RTHUMB_LEFT			= 0x5833,
			RTHUMB_UPLEFT		= 0x5834,
			RTHUMB_UPRIGHT		= 0x5835,
			RTHUMB_DOWNRIGHT	= 0x5836,
			RTHUMB_DOWNLEFT		= 0x5837,
		}
		//
		// Flags used in XINPUT_KEYSTROKE
		//
		public enum KeyStrokeFlag{
			KEYDOWN       = 0x0001,
			KEYUP         = 0x0002,
			REPEAT        = 0x0004,
		}
#endif //(_WIN32_WINNT >= _WIN32_WINNT_WIN8)

		//
		// Structures used by XInput APIs
		//
		[CRepr]
		public struct XINPUT_GAMEPAD
		{
		    public Buttons	wButtons;
		    public BYTE		bLeftTrigger;
		    public BYTE		bRightTrigger;
		    public SHORT	sThumbLX;
		    public SHORT	sThumbLY;
		    public SHORT	sThumbRX;
		    public SHORT	sThumbRY;
		}
		typealias PXINPUT_GAMEPAD = XINPUT_GAMEPAD*;

		[CRepr]
		public struct XINPUT_STATE
		{
		    public DWORD			dwPacketNumber;
		    public XINPUT_GAMEPAD	Gamepad;

			public Buttons buttons => Gamepad.wButtons;
		}
		typealias PXINPUT_STATE = XINPUT_STATE*;

		[CRepr]
		public struct XINPUT_VIBRATION
		{
		    public WORD				wLeftMotorSpeed;
		    public WORD				wRightMotorSpeed;
		}
		typealias PXINPUT_VIBRATION = XINPUT_VIBRATION*;

		[CRepr]
		public struct XINPUT_CAPABILITIES
		{
		    public BYTE				Type;
		    public BYTE				SubType;
		    public WORD				Flags;
		    public XINPUT_GAMEPAD	Gamepad;
		    public XINPUT_VIBRATION	Vibration;
		}
		typealias PXINPUT_CAPABILITIES = XINPUT_CAPABILITIES*;

#if WIN8
		[CRepr]
		public struct XINPUT_BATTERY_INFORMATION
		{
		    public BatteryType		BatteryType;
		    public BatteryLevel		BatteryLevel;
		}
		typealias PXINPUT_BATTERY_INFORMATION = XINPUT_BATTERY_INFORMATION*;

		[CRepr]
		public struct XINPUT_KEYSTROKE
		{
		    public VirtualKey		VirtualKey;
		    public WCHAR   			Unicode;
		    public KeyStrokeFlag	Flags;
		    public BYTE				UserIndex;
		    public BYTE				HidCode;
		}
		typealias PXINPUT_KEYSTROKE = XINPUT_KEYSTROKE*;

#endif //(_WIN32_WINNT >= _WIN32_WINNT_WIN8)
 /*
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion
		*/
		//
		// XInput APIs
		//

//#pragma region Application Family
//#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

		[Import(XINPUT_DLL_A), CLink]
		public static extern DWORD XInputGetState
		(
		    DWORD			dwUserIndex,  // Index of the gamer associated with the device
		    XINPUT_STATE*	pState        // Receives the current state
		);

		[Import(XINPUT_DLL_A), CLink]
		public static extern DWORD XInputSetState
		(
		    DWORD				dwUserIndex,  // Index of the gamer associated with the device
		    XINPUT_VIBRATION*	pVibration    // The vibration information to send to the controller
		);

		[Import(XINPUT_DLL_A), CLink]
		public static extern DWORD XInputGetCapabilities
		(
		    DWORD					dwUserIndex,   // Index of the gamer associated with the device
		    XinputFlag				dwFlags,       // Input flags that identify the device type
		    XINPUT_CAPABILITIES*	pCapabilities  // Receives the capabilities
		);

#if WIN8

		[Import(XINPUT_DLL_A), CLink]
		public static extern void XInputEnable
		(
		    BOOL enable     // [in] Indicates whether xinput is enabled or disabled. 
		);
/*
#if WIN10
#pragma deprecated(XInputEnable)
#endif

		DWORD WINAPI XInputGetAudioDeviceIds
		(
		    _In_  DWORD                             dwUserIndex,        // Index of the gamer associated with the device
		    _Out_writes_opt_(*pRenderCount) LPWSTR  pRenderDeviceId,    // Windows Core Audio device ID string for render (speakers)
		    _Inout_opt_ UINT*                       pRenderCount,       // Size of render device ID string buffer (in wide-chars)
		    _Out_writes_opt_(*pCaptureCount) LPWSTR pCaptureDeviceId,   // Windows Core Audio device ID string for capture (microphone)
		    _Inout_opt_ UINT*                       pCaptureCount       // Size of capture device ID string buffer (in wide-chars)
		);

		DWORD WINAPI XInputGetBatteryInformation
		(
		    _In_  DWORD                       dwUserIndex,        // Index of the gamer associated with the device
		    _In_  BYTE                        devType,            // Which device on this user index
		    _Out_ XINPUT_BATTERY_INFORMATION* pBatteryInformation // Contains the level and types of batteries
		);

		DWORD WINAPI XInputGetKeystroke
		(
		    _In_       DWORD dwUserIndex,              // Index of the gamer associated with the device
		    _Reserved_ DWORD dwReserved,               // Reserved for future use
		    _Out_      PXINPUT_KEYSTROKE pKeystroke    // Pointer to an XINPUT_KEYSTROKE structure that receives an input event.
		);
*/
#endif //(_WIN32_WINNT >= _WIN32_WINNT_WIN8)


#if WIN8

		[Import(XINPUT_DLL_A), CLink]
		public static extern DWORD XInputGetDSoundAudioDeviceGuids
		(
		    DWORD     dwUserIndex,          // Index of the gamer associated with the device
		    GUID*     pDSoundRenderGuid,    // DSound device ID for render (speakers)
		    GUID*     pDSoundCaptureGuid    // DSound device ID for capture (microphone)
		);

#endif //(_WIN32_WINNT < _WIN32_WINNT_WIN8)

	}
}
