using System;

// namespace System.SubsystemForLinux
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum WSL_DISTRIBUTION_FLAGS : uint32
		{
			NONE = 0,
			ENABLE_INTEROP = 1,
			APPEND_NT_PATH = 2,
			ENABLE_DRIVE_MOUNTING = 4,
		}
		
		// --- Functions ---
		
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WslIsDistributionRegistered(char16* distributionName);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WslRegisterDistribution(char16* distributionName, char16* tarGzFilename);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WslUnregisterDistribution(char16* distributionName);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WslConfigureDistribution(char16* distributionName, uint32 defaultUID, WSL_DISTRIBUTION_FLAGS wslDistributionFlags);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WslGetDistributionConfiguration(char16* distributionName, out uint32 distributionVersion, out uint32 defaultUID, out WSL_DISTRIBUTION_FLAGS wslDistributionFlags, out PSTR* defaultEnvironmentVariables, out uint32 defaultEnvironmentVariableCount);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WslLaunchInteractive(char16* distributionName, char16* command, IntBool useCurrentWorkingDirectory, out uint32 exitCode);
		[Import("api-ms-win-wsl-api-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WslLaunch(char16* distributionName, char16* command, IntBool useCurrentWorkingDirectory, Handle stdIn, Handle stdOut, Handle stdErr, out Handle process);
	}
}
