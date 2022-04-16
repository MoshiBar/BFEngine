using System;
using static Win32.Win32;
using static Win32.UI.WindowsAndMessaging;
using static System.Windows;

// namespace UI.Input.Pointer
namespace Win32.UI.Input
{
	public static class Pointer
	{
		// --- Enums ---
		
		public enum PointerFlags : uint32
		{
			None = 0,
			New = 1,
			InRange = 2,
			InContact = 4,
			FirstButton = 16,
			SecondButton = 32,
			ThirdButton = 64,
			FourthButton = 128,
			FifthButton = 256,
			Primary = 8192,
			Confidence = 16384,
			Canceled = 32768,
			Down = 65536,
			Update = 131072,
			Up = 262144,
			Wheel = 524288,
			HWheel = 1048576,
			CaptureChanged = 2097152,
			HasTransform = 4194304,
		}
		public enum TouchFeedbackMode : uint32
		{
			Default = 1,
			Indirect = 2,
			None = 3,
		}
		public enum PointerButtonChangeType : int32
		{
			None				= 0,
			FirstButtonDown		= 1,
			FirstButtonUp		= 2,
			SecondButtonDown	= 3,
			SecondButtonUp		= 4,
			ThirdButtonDown		= 5,
			ThirdButtonUp		= 6,
			FourthButtonDown	= 7,
			FourthButtonUp		= 8,
			FifthButtonDown		= 9,
			FifthButtonUp		= 10,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct PointerInfo
		{
			public PointerInputType pointerType;
			public uint32 pointerId;
			public uint32 frameId;
			public PointerFlags pointerFlags;
			public Handle sourceDevice;
			public HWnd hwndTarget;
			public POINT ptPixelLocation;
			public POINT ptHimetricLocation;
			public POINT ptPixelLocationRaw;
			public POINT ptHimetricLocationRaw;
			public uint32 dwTime;
			public uint32 historyCount;
			public int32 InputData;
			public uint32 dwKeyStates;
			public uint64 PerformanceCount;
			public PointerButtonChangeType ButtonChangeType;
		}
		[CRepr]
		public struct PointerTouchInfo
		{
			public PointerInfo pointerInfo;
			public uint32 touchFlags;
			public uint32 touchMask;
			public RectI rcContact;
			public RectI rcContactRaw;
			public uint32 orientation;
			public uint32 pressure;
		}
		[CRepr]
		public struct PointerPenInfo
		{
			public PointerInfo pointerInfo;
			public uint32 penFlags;
			public uint32 penMask;
			public uint32 pressure;
			public uint32 rotation;
			public int32 tiltX;
			public int32 tiltY;
		}
		[CRepr]
		public struct InputInjectionValue
		{
			public uint16 page;
			public uint16 usage;
			public int32 value;
			public uint16 index;
		}
		[CRepr]
		public struct InputTransform
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public float[16] m;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public float _11;
					public float _12;
					public float _13;
					public float _14;
					public float _21;
					public float _22;
					public float _23;
					public float _24;
					public float _31;
					public float _32;
					public float _33;
					public float _34;
					public float _41;
					public float _42;
					public float _43;
					public float _44;
				}
			}
		}
		
		// --- Functions ---
		
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUnpredictedMessagePos();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InitializeTouchInjection(uint32 maxCount, TouchFeedbackMode dwMode);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InjectTouchInput(uint32 count, PointerTouchInfo* contacts);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerType(uint32 pointerId, out PointerInputType pointerType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerCursorId(uint32 pointerId, out uint32 cursorId);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerInfo(uint32 pointerId, out PointerInfo pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerInfoHistory(uint32 pointerId, out uint32 entriesCount, PointerInfo* pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerFrameInfo(uint32 pointerId, out uint32 pointerCount, PointerInfo* pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerFrameInfoHistory(uint32 pointerId, out uint32 entriesCount, out uint32 pointerCount, PointerInfo* pointerInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerTouchInfo(uint32 pointerId, out PointerTouchInfo touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerTouchInfoHistory(uint32 pointerId, out uint32 entriesCount, PointerTouchInfo* touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerFrameTouchInfo(uint32 pointerId, out uint32 pointerCount, PointerTouchInfo* touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerFrameTouchInfoHistory(uint32 pointerId, out uint32 entriesCount, out uint32 pointerCount, PointerTouchInfo* touchInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerPenInfo(uint32 pointerId, out PointerPenInfo penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerPenInfoHistory(uint32 pointerId, out uint32 entriesCount, PointerPenInfo* penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerFramePenInfo(uint32 pointerId, out uint32 pointerCount, PointerPenInfo* penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerFramePenInfoHistory(uint32 pointerId, out uint32 entriesCount, out uint32 pointerCount, PointerPenInfo* penInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SkipPointerFrameMessages(uint32 pointerId);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool InjectSyntheticPointerInput(HSYNTHETICPOINTERDEVICE device, POINTER_TYPE_INFO* pointerInfo, uint32 count);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnableMouseInPointer(IntBool fEnable);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsMouseInPointerEnabled();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerInputTransform(uint32 pointerId, uint32 historyCount, InputTransform* inputTransform);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerDevices(out uint32 deviceCount, POINTER_DEVICE_INFO* pointerDevices);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerDevice(Handle device, out POINTER_DEVICE_INFO pointerDevice);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerDeviceProperties(Handle device, out uint32 propertyCount, POINTER_DEVICE_PROPERTY* pointerProperties);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerDeviceRects(Handle device, out RectI pointerDeviceRect, out RectI displayRect);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetPointerDeviceCursors(Handle device, out uint32 cursorCount, POINTER_DEVICE_CURSOR_INFO* deviceCursors);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetRawPointerDeviceData(uint32 pointerId, uint32 historyCount, uint32 propertiesCount, POINTER_DEVICE_PROPERTY* pProperties, out int32 pValues);
	}
}
