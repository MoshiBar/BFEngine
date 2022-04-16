using System;

// namespace System.SetupAndMigration
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function void OOBE_COMPLETED_CALLBACK(void* CallbackContext);
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool OOBEComplete(out IntBool isOOBEComplete);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RegisterWaitUntilOOBECompleted(OOBE_COMPLETED_CALLBACK OOBECompletedCallback, void* CallbackContext, void** WaitHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnregisterWaitUntilOOBECompleted(void* WaitHandle);
	}
}
