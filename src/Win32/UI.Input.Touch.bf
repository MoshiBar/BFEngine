using System;

// namespace UI.Input.Touch
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias HGESTUREINFO = int;
		public typealias HTOUCHINPUT = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum GESTURECONFIG_ID : uint32
		{
			BEGIN = 1,
			END = 2,
			ZOOM = 3,
			PAN = 4,
			ROTATE = 5,
			TWOFINGERTAP = 6,
			PRESSANDTAP = 7,
			ROLLOVER = 7,
		}
		public enum TOUCHEVENTF_FLAGS : uint32
		{
			MOVE = 1,
			DOWN = 2,
			UP = 4,
			INRANGE = 8,
			PRIMARY = 16,
			NOCOALESCE = 32,
			PEN = 64,
			PALM = 128,
		}
		public enum TOUCHINPUTMASKF_MASK : uint32
		{
			TIMEFROMSYSTEM = 1,
			EXTRAINFO = 2,
			CONTACTAREA = 4,
		}
		public enum REGISTER_TOUCH_WINDOW_FLAGS : uint32
		{
			FINETOUCH = 1,
			WANTPALM = 2,
		}
		public enum MANIPULATION_PROCESSOR_MANIPULATIONS : int32
		{
			NONE = 0,
			TRANSLATE_X = 1,
			TRANSLATE_Y = 2,
			SCALE = 4,
			ROTATE = 8,
			ALL = 15,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct TOUCHINPUT
		{
			public int32 x;
			public int32 y;
			public Handle hSource;
			public uint32 dwID;
			public TOUCHEVENTF_FLAGS dwFlags;
			public TOUCHINPUTMASKF_MASK dwMask;
			public uint32 dwTime;
			public uint dwExtraInfo;
			public uint32 cxContact;
			public uint32 cyContact;
		}
		[CRepr]
		public struct GESTUREINFO
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 dwID;
			public HWnd hwndTarget;
			public POINTS ptsLocation;
			public uint32 dwInstanceID;
			public uint32 dwSequenceID;
			public uint64 ullArguments;
			public uint32 cbExtraArgs;
		}
		[CRepr]
		public struct GESTURENOTIFYSTRUCT
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public HWnd hwndTarget;
			public POINTS ptsLocation;
			public uint32 dwInstanceID;
		}
		[CRepr]
		public struct GESTURECONFIG
		{
			public GESTURECONFIG_ID dwID;
			public uint32 dwWant;
			public uint32 dwBlock;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InertiaProcessor = .(0xabb27087, 0x4ce0, 0x4e58, 0xa0, 0xcb, 0xe2, 0x4d, 0xf9, 0x68, 0x14, 0xbe);
		public const Guid CLSID_ManipulationProcessor = .(0x597d4fb0, 0x47fd, 0x4aff, 0x89, 0xb9, 0xc6, 0xcf, 0xae, 0x8c, 0xf0, 0x8e);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct _IManipulationEvents : IUnknown
		{
			public const new Guid IID = .(0x4f62c8da, 0x9c53, 0x4b22, 0x93, 0xdf, 0x92, 0x7a, 0x86, 0x2b, 0xbb, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ManipulationStarted(float x, float y) mut => VT.ManipulationStarted(ref this, x, y);
			public HResult ManipulationDelta(float x, float y, float translationDeltaX, float translationDeltaY, float scaleDelta, float expansionDelta, float rotationDelta, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) mut => VT.ManipulationDelta(ref this, x, y, translationDeltaX, translationDeltaY, scaleDelta, expansionDelta, rotationDelta, cumulativeTranslationX, cumulativeTranslationY, cumulativeScale, cumulativeExpansion, cumulativeRotation);
			public HResult ManipulationCompleted(float x, float y, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) mut => VT.ManipulationCompleted(ref this, x, y, cumulativeTranslationX, cumulativeTranslationY, cumulativeScale, cumulativeExpansion, cumulativeRotation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref _IManipulationEvents self, float x, float y) ManipulationStarted;
				public new function [CallingConvention(.Stdcall)] HResult(ref _IManipulationEvents self, float x, float y, float translationDeltaX, float translationDeltaY, float scaleDelta, float expansionDelta, float rotationDelta, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationDelta;
				public new function [CallingConvention(.Stdcall)] HResult(ref _IManipulationEvents self, float x, float y, float cumulativeTranslationX, float cumulativeTranslationY, float cumulativeScale, float cumulativeExpansion, float cumulativeRotation) ManipulationCompleted;
			}
		}
		[CRepr]
		public struct IInertiaProcessor : IUnknown
		{
			public const new Guid IID = .(0x18b00c6d, 0xc5ee, 0x41b1, 0x90, 0xa9, 0x9d, 0x4a, 0x92, 0x90, 0x95, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_InitialOriginX(out float x) mut => VT.get_InitialOriginX(ref this, out x);
			public HResult put_InitialOriginX(float x) mut => VT.put_InitialOriginX(ref this, x);
			public HResult get_InitialOriginY(out float y) mut => VT.get_InitialOriginY(ref this, out y);
			public HResult put_InitialOriginY(float y) mut => VT.put_InitialOriginY(ref this, y);
			public HResult get_InitialVelocityX(out float x) mut => VT.get_InitialVelocityX(ref this, out x);
			public HResult put_InitialVelocityX(float x) mut => VT.put_InitialVelocityX(ref this, x);
			public HResult get_InitialVelocityY(out float y) mut => VT.get_InitialVelocityY(ref this, out y);
			public HResult put_InitialVelocityY(float y) mut => VT.put_InitialVelocityY(ref this, y);
			public HResult get_InitialAngularVelocity(out float velocity) mut => VT.get_InitialAngularVelocity(ref this, out velocity);
			public HResult put_InitialAngularVelocity(float velocity) mut => VT.put_InitialAngularVelocity(ref this, velocity);
			public HResult get_InitialExpansionVelocity(out float velocity) mut => VT.get_InitialExpansionVelocity(ref this, out velocity);
			public HResult put_InitialExpansionVelocity(float velocity) mut => VT.put_InitialExpansionVelocity(ref this, velocity);
			public HResult get_InitialRadius(out float radius) mut => VT.get_InitialRadius(ref this, out radius);
			public HResult put_InitialRadius(float radius) mut => VT.put_InitialRadius(ref this, radius);
			public HResult get_BoundaryLeft(out float left) mut => VT.get_BoundaryLeft(ref this, out left);
			public HResult put_BoundaryLeft(float left) mut => VT.put_BoundaryLeft(ref this, left);
			public HResult get_BoundaryTop(out float top) mut => VT.get_BoundaryTop(ref this, out top);
			public HResult put_BoundaryTop(float top) mut => VT.put_BoundaryTop(ref this, top);
			public HResult get_BoundaryRight(out float right) mut => VT.get_BoundaryRight(ref this, out right);
			public HResult put_BoundaryRight(float right) mut => VT.put_BoundaryRight(ref this, right);
			public HResult get_BoundaryBottom(out float bottom) mut => VT.get_BoundaryBottom(ref this, out bottom);
			public HResult put_BoundaryBottom(float bottom) mut => VT.put_BoundaryBottom(ref this, bottom);
			public HResult get_ElasticMarginLeft(out float left) mut => VT.get_ElasticMarginLeft(ref this, out left);
			public HResult put_ElasticMarginLeft(float left) mut => VT.put_ElasticMarginLeft(ref this, left);
			public HResult get_ElasticMarginTop(out float top) mut => VT.get_ElasticMarginTop(ref this, out top);
			public HResult put_ElasticMarginTop(float top) mut => VT.put_ElasticMarginTop(ref this, top);
			public HResult get_ElasticMarginRight(out float right) mut => VT.get_ElasticMarginRight(ref this, out right);
			public HResult put_ElasticMarginRight(float right) mut => VT.put_ElasticMarginRight(ref this, right);
			public HResult get_ElasticMarginBottom(out float bottom) mut => VT.get_ElasticMarginBottom(ref this, out bottom);
			public HResult put_ElasticMarginBottom(float bottom) mut => VT.put_ElasticMarginBottom(ref this, bottom);
			public HResult get_DesiredDisplacement(out float displacement) mut => VT.get_DesiredDisplacement(ref this, out displacement);
			public HResult put_DesiredDisplacement(float displacement) mut => VT.put_DesiredDisplacement(ref this, displacement);
			public HResult get_DesiredRotation(out float rotation) mut => VT.get_DesiredRotation(ref this, out rotation);
			public HResult put_DesiredRotation(float rotation) mut => VT.put_DesiredRotation(ref this, rotation);
			public HResult get_DesiredExpansion(out float expansion) mut => VT.get_DesiredExpansion(ref this, out expansion);
			public HResult put_DesiredExpansion(float expansion) mut => VT.put_DesiredExpansion(ref this, expansion);
			public HResult get_DesiredDeceleration(out float deceleration) mut => VT.get_DesiredDeceleration(ref this, out deceleration);
			public HResult put_DesiredDeceleration(float deceleration) mut => VT.put_DesiredDeceleration(ref this, deceleration);
			public HResult get_DesiredAngularDeceleration(out float deceleration) mut => VT.get_DesiredAngularDeceleration(ref this, out deceleration);
			public HResult put_DesiredAngularDeceleration(float deceleration) mut => VT.put_DesiredAngularDeceleration(ref this, deceleration);
			public HResult get_DesiredExpansionDeceleration(out float deceleration) mut => VT.get_DesiredExpansionDeceleration(ref this, out deceleration);
			public HResult put_DesiredExpansionDeceleration(float deceleration) mut => VT.put_DesiredExpansionDeceleration(ref this, deceleration);
			public HResult get_InitialTimestamp(out uint32 timestamp) mut => VT.get_InitialTimestamp(ref this, out timestamp);
			public HResult put_InitialTimestamp(uint32 timestamp) mut => VT.put_InitialTimestamp(ref this, timestamp);
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Process(out IntBool completed) mut => VT.Process(ref this, out completed);
			public HResult ProcessTime(uint32 timestamp, out IntBool completed) mut => VT.ProcessTime(ref this, timestamp, out completed);
			public HResult Complete() mut => VT.Complete(ref this);
			public HResult CompleteTime(uint32 timestamp) mut => VT.CompleteTime(ref this, timestamp);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float x) get_InitialOriginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float x) put_InitialOriginX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float y) get_InitialOriginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float y) put_InitialOriginY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float x) get_InitialVelocityX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float x) put_InitialVelocityX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float y) get_InitialVelocityY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float y) put_InitialVelocityY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float velocity) get_InitialAngularVelocity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float velocity) put_InitialAngularVelocity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float velocity) get_InitialExpansionVelocity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float velocity) put_InitialExpansionVelocity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float radius) get_InitialRadius;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float radius) put_InitialRadius;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float left) get_BoundaryLeft;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float left) put_BoundaryLeft;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float top) get_BoundaryTop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float top) put_BoundaryTop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float right) get_BoundaryRight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float right) put_BoundaryRight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float bottom) get_BoundaryBottom;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float bottom) put_BoundaryBottom;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float left) get_ElasticMarginLeft;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float left) put_ElasticMarginLeft;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float top) get_ElasticMarginTop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float top) put_ElasticMarginTop;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float right) get_ElasticMarginRight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float right) put_ElasticMarginRight;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float bottom) get_ElasticMarginBottom;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float bottom) put_ElasticMarginBottom;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float displacement) get_DesiredDisplacement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float displacement) put_DesiredDisplacement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float rotation) get_DesiredRotation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float rotation) put_DesiredRotation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float expansion) get_DesiredExpansion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float expansion) put_DesiredExpansion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float deceleration) get_DesiredDeceleration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float deceleration) put_DesiredDeceleration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float deceleration) get_DesiredAngularDeceleration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float deceleration) put_DesiredAngularDeceleration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out float deceleration) get_DesiredExpansionDeceleration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, float deceleration) put_DesiredExpansionDeceleration;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out uint32 timestamp) get_InitialTimestamp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, uint32 timestamp) put_InitialTimestamp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, out IntBool completed) Process;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, uint32 timestamp, out IntBool completed) ProcessTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self) Complete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IInertiaProcessor self, uint32 timestamp) CompleteTime;
			}
		}
		[CRepr]
		public struct IManipulationProcessor : IUnknown
		{
			public const new Guid IID = .(0xa22ac519, 0x8300, 0x48a0, 0xbe, 0xf4, 0xf1, 0xbe, 0x87, 0x37, 0xdb, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult get_SupportedManipulations(out MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) mut => VT.get_SupportedManipulations(ref this, out manipulations);
			public HResult put_SupportedManipulations(MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) mut => VT.put_SupportedManipulations(ref this, manipulations);
			public HResult get_PivotPointX(out float pivotPointX) mut => VT.get_PivotPointX(ref this, out pivotPointX);
			public HResult put_PivotPointX(float pivotPointX) mut => VT.put_PivotPointX(ref this, pivotPointX);
			public HResult get_PivotPointY(out float pivotPointY) mut => VT.get_PivotPointY(ref this, out pivotPointY);
			public HResult put_PivotPointY(float pivotPointY) mut => VT.put_PivotPointY(ref this, pivotPointY);
			public HResult get_PivotRadius(out float pivotRadius) mut => VT.get_PivotRadius(ref this, out pivotRadius);
			public HResult put_PivotRadius(float pivotRadius) mut => VT.put_PivotRadius(ref this, pivotRadius);
			public HResult CompleteManipulation() mut => VT.CompleteManipulation(ref this);
			public HResult ProcessDown(uint32 manipulatorId, float x, float y) mut => VT.ProcessDown(ref this, manipulatorId, x, y);
			public HResult ProcessMove(uint32 manipulatorId, float x, float y) mut => VT.ProcessMove(ref this, manipulatorId, x, y);
			public HResult ProcessUp(uint32 manipulatorId, float x, float y) mut => VT.ProcessUp(ref this, manipulatorId, x, y);
			public HResult ProcessDownWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut => VT.ProcessDownWithTime(ref this, manipulatorId, x, y, timestamp);
			public HResult ProcessMoveWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut => VT.ProcessMoveWithTime(ref this, manipulatorId, x, y, timestamp);
			public HResult ProcessUpWithTime(uint32 manipulatorId, float x, float y, uint32 timestamp) mut => VT.ProcessUpWithTime(ref this, manipulatorId, x, y, timestamp);
			public HResult GetVelocityX(out float velocityX) mut => VT.GetVelocityX(ref this, out velocityX);
			public HResult GetVelocityY(out float velocityY) mut => VT.GetVelocityY(ref this, out velocityY);
			public HResult GetExpansionVelocity(out float expansionVelocity) mut => VT.GetExpansionVelocity(ref this, out expansionVelocity);
			public HResult GetAngularVelocity(out float angularVelocity) mut => VT.GetAngularVelocity(ref this, out angularVelocity);
			public HResult get_MinimumScaleRotateRadius(out float minRadius) mut => VT.get_MinimumScaleRotateRadius(ref this, out minRadius);
			public HResult put_MinimumScaleRotateRadius(float minRadius) mut => VT.put_MinimumScaleRotateRadius(ref this, minRadius);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) get_SupportedManipulations;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, MANIPULATION_PROCESSOR_MANIPULATIONS manipulations) put_SupportedManipulations;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float pivotPointX) get_PivotPointX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, float pivotPointX) put_PivotPointX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float pivotPointY) get_PivotPointY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, float pivotPointY) put_PivotPointY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float pivotRadius) get_PivotRadius;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, float pivotRadius) put_PivotRadius;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self) CompleteManipulation;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y) ProcessDown;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y) ProcessMove;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y) ProcessUp;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessDownWithTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessMoveWithTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, uint32 manipulatorId, float x, float y, uint32 timestamp) ProcessUpWithTime;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float velocityX) GetVelocityX;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float velocityY) GetVelocityY;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float expansionVelocity) GetExpansionVelocity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float angularVelocity) GetAngularVelocity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, out float minRadius) get_MinimumScaleRotateRadius;
				public new function [CallingConvention(.Stdcall)] HResult(ref IManipulationProcessor self, float minRadius) put_MinimumScaleRotateRadius;
			}
		}
		
		// --- Functions ---
		
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetTouchInputInfo(HTOUCHINPUT hTouchInput, uint32 cInputs, TOUCHINPUT* pInputs, int32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CloseTouchInputHandle(HTOUCHINPUT hTouchInput);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RegisterTouchWindow(HWnd hwnd, REGISTER_TOUCH_WINDOW_FLAGS ulFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnregisterTouchWindow(HWnd hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsTouchWindow(HWnd hwnd, uint32* pulFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetGestureInfo(HGESTUREINFO hGestureInfo, out GESTUREINFO pGestureInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetGestureExtraArgs(HGESTUREINFO hGestureInfo, uint32 cbExtraArgs, out uint8 pExtraArgs);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CloseGestureInfoHandle(HGESTUREINFO hGestureInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetGestureConfig(HWnd hwnd, uint32 dwReserved, uint32 cIDs, GESTURECONFIG* pGestureConfig, uint32 cbSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetGestureConfig(HWnd hwnd, uint32 dwReserved, uint32 dwFlags, ref uint32 pcIDs, GESTURECONFIG* pGestureConfig, uint32 cbSize);
	}
}
