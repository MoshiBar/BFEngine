using System;

// namespace System.HostComputeSystem
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias HCS_OPERATION = int;
		public typealias HCS_SYSTEM = int;
		public typealias HCS_PROCESS = int;
		
		// --- Enums ---
		
		public enum HCS_OPERATION_TYPE : int32
		{
			None = -1,
			Enumerate = 0,
			Create = 1,
			Start = 2,
			Shutdown = 3,
			Pause = 4,
			Resume = 5,
			Save = 6,
			Terminate = 7,
			Modify = 8,
			GetProperties = 9,
			CreateProcess = 10,
			SignalProcess = 11,
			GetProcessInfo = 12,
			GetProcessProperties = 13,
			ModifyProcess = 14,
			Crash = 15,
		}
		public enum HCS_EVENT_TYPE : int32
		{
			Invalid = 0,
			SystemExited = 1,
			SystemCrashInitiated = 2,
			SystemCrashReport = 3,
			SystemRdpEnhancedModeStateChanged = 4,
			SystemSiloJobCreated = 5,
			SystemGuestConnectionClosed = 6,
			ProcessExited = 65536,
			OperationCallback = 16777216,
			ServiceDisconnect = 33554432,
		}
		public enum HCS_EVENT_OPTIONS : uint32
		{
			None = 0,
			EnableOperationCallbacks = 1,
		}
		public enum HCS_NOTIFICATION_FLAGS : int32
		{
			Success = 0,
			Failure = -2147483648,
		}
		[AllowDuplicates]
		public enum HCS_NOTIFICATIONS : int32
		{
			Invalid = 0,
			SystemExited = 1,
			SystemCreateCompleted = 2,
			SystemStartCompleted = 3,
			SystemPauseCompleted = 4,
			SystemResumeCompleted = 5,
			SystemCrashReport = 6,
			SystemSiloJobCreated = 7,
			SystemSaveCompleted = 8,
			SystemRdpEnhancedModeStateChanged = 9,
			SystemShutdownFailed = 10,
			SystemShutdownCompleted = 10,
			SystemGetPropertiesCompleted = 11,
			SystemModifyCompleted = 12,
			SystemCrashInitiated = 13,
			SystemGuestConnectionClosed = 14,
			SystemOperationCompletion = 15,
			SystemPassThru = 16,
			ProcessExited = 65536,
			ServiceDisconnect = 16777216,
			FlagsReserved = -268435456,
		}
		public enum HCS_CREATE_OPTIONS : int32
		{
			HcsCreateOptions_1 = 65536,
		}
		
		// --- Function Pointers ---
		
		public function void HCS_OPERATION_COMPLETION(HCS_OPERATION operation, void* context);
		public function void HCS_EVENT_CALLBACK(ref HCS_EVENT event, void* context);
		public function void HCS_NOTIFICATION_CALLBACK(uint32 notificationType, void* context, HResult notificationStatus, char16* notificationData);
		
		// --- Structs ---
		
		[CRepr]
		public struct HCS_EVENT
		{
			public HCS_EVENT_TYPE Type;
			public char16* EventData;
			public HCS_OPERATION Operation;
		}
		[CRepr]
		public struct HCS_PROCESS_INFORMATION
		{
			public uint32 ProcessId;
			public uint32 Reserved;
			public Handle StdInput;
			public Handle StdOutput;
			public Handle StdError;
		}
		[CRepr]
		public struct HCS_CREATE_OPTIONS_1
		{
			public HCS_CREATE_OPTIONS Version;
			public Handle UserToken;
			public SECURITY_DESCRIPTOR* SecurityDescriptor;
			public HCS_EVENT_OPTIONS CallbackOptions;
			public void* CallbackContext;
			public HCS_EVENT_CALLBACK Callback;
		}
		
		// --- Functions ---
		
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsEnumerateComputeSystems(char16* query, HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsEnumerateComputeSystemsInNamespace(char16* idNamespace, char16* query, HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_OPERATION HcsCreateOperation(void* context, HCS_OPERATION_COMPLETION callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcsCloseOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* HcsGetOperationContext(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSetOperationContext(HCS_OPERATION operation, void* context);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_SYSTEM HcsGetComputeSystemFromOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_PROCESS HcsGetProcessFromOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_OPERATION_TYPE HcsGetOperationType(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 HcsGetOperationId(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetOperationResult(HCS_OPERATION operation, char16** resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetOperationResultAndProcessInfo(HCS_OPERATION operation, HCS_PROCESS_INFORMATION* processInformation, char16** resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetProcessorCompatibilityFromSavedState(char16* RuntimeFileName, char16** ProcessorFeaturesString);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsWaitForOperationResult(HCS_OPERATION operation, uint32 timeoutMs, char16** resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsWaitForOperationResultAndProcessInfo(HCS_OPERATION operation, uint32 timeoutMs, HCS_PROCESS_INFORMATION* processInformation, char16** resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSetOperationCallback(HCS_OPERATION operation, void* context, HCS_OPERATION_COMPLETION callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsCancelOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsCreateComputeSystem(char16* id, char16* configuration, HCS_OPERATION operation, SECURITY_DESCRIPTOR* securityDescriptor, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsCreateComputeSystemInNamespace(char16* idNamespace, char16* id, char16* configuration, HCS_OPERATION operation, HCS_CREATE_OPTIONS* options, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsOpenComputeSystem(char16* id, uint32 requestedAccess, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsOpenComputeSystemInNamespace(char16* idNamespace, char16* id, uint32 requestedAccess, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcsCloseComputeSystem(HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsStartComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsShutDownComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsTerminateComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsCrashComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsPauseComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsResumeComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSaveComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetComputeSystemProperties(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* propertyQuery);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsModifyComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, char16* configuration, Handle identity);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsWaitForComputeSystemExit(HCS_SYSTEM computeSystem, uint32 timeoutMs, char16** result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSetComputeSystemCallback(HCS_SYSTEM computeSystem, HCS_EVENT_OPTIONS callbackOptions, void* context, HCS_EVENT_CALLBACK callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsCreateProcess(HCS_SYSTEM computeSystem, char16* processParameters, HCS_OPERATION operation, SECURITY_DESCRIPTOR* securityDescriptor, out HCS_PROCESS process);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsOpenProcess(HCS_SYSTEM computeSystem, uint32 processId, uint32 requestedAccess, out HCS_PROCESS process);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcsCloseProcess(HCS_PROCESS process);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsTerminateProcess(HCS_PROCESS process, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSignalProcess(HCS_PROCESS process, HCS_OPERATION operation, char16* options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetProcessInfo(HCS_PROCESS process, HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetProcessProperties(HCS_PROCESS process, HCS_OPERATION operation, char16* propertyQuery);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsModifyProcess(HCS_PROCESS process, HCS_OPERATION operation, char16* settings);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSetProcessCallback(HCS_PROCESS process, HCS_EVENT_OPTIONS callbackOptions, void* context, HCS_EVENT_CALLBACK callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsWaitForProcessExit(HCS_PROCESS computeSystem, uint32 timeoutMs, char16** result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetServiceProperties(char16* propertyQuery, out char16* result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsModifyServiceSettings(char16* settings, char16** result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSubmitWerReport(char16* settings);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsCreateEmptyGuestStateFile(char16* guestStateFilePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsCreateEmptyRuntimeStateFile(char16* runtimeStateFilePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGrantVmAccess(char16* vmId, char16* filePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsRevokeVmAccess(char16* vmId, char16* filePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGrantVmGroupAccess(char16* filePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsRevokeVmGroupAccess(char16* filePath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsImportLayer(char16* layerPath, char16* sourceFolderPath, char16* layerData);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsExportLayer(char16* layerPath, char16* exportFolderPath, char16* layerData, char16* options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsExportLegacyWritableLayer(char16* writableLayerMountPath, char16* writableLayerFolderPath, char16* exportFolderPath, char16* layerData);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsDestroyLayer(char16* layerPath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSetupBaseOSLayer(char16* layerPath, Handle vhdHandle, char16* options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsInitializeWritableLayer(char16* writableLayerPath, char16* layerData, char16* options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsInitializeLegacyWritableLayer(char16* writableLayerMountPath, char16* writableLayerFolderPath, char16* layerData, char16* options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsAttachLayerStorageFilter(char16* layerPath, char16* layerData);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsDetachLayerStorageFilter(char16* layerPath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsFormatWritableLayerVhd(Handle vhdHandle);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsGetLayerVhdMountPath(Handle vhdHandle, out char16* mountPath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult HcsSetupBaseOSVolume(char16* layerPath, char16* volumePath, char16* options);
	}
}
