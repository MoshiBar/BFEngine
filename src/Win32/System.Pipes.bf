using System;

// namespace System.Pipes
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PIPE_UNLIMITED_INSTANCES = 255;
		public const uint32 NMPWAIT_WAIT_FOREVER = 4294967295;
		public const uint32 NMPWAIT_NOWAIT = 1;
		public const uint32 NMPWAIT_USE_DEFAULT_WAIT = 0;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum NAMED_PIPE_MODE : uint32
		{
			WAIT = 0,
			NOWAIT = 1,
			READMODE_BYTE = 0,
			READMODE_MESSAGE = 2,
			CLIENT_END = 0,
			SERVER_END = 1,
			TYPE_BYTE = 0,
			TYPE_MESSAGE = 4,
			ACCEPT_REMOTE_CLIENTS = 0,
			REJECT_REMOTE_CLIENTS = 8,
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreatePipe(out Handle hReadPipe, out Handle hWritePipe, SECURITY_ATTRIBUTES* lpPipeAttributes, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ConnectNamedPipe(Handle hNamedPipe, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DisconnectNamedPipe(Handle hNamedPipe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetNamedPipeHandleState(Handle hNamedPipe, NAMED_PIPE_MODE* lpMode, uint32* lpMaxCollectionCount, uint32* lpCollectDataTimeout);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PeekNamedPipe(Handle hNamedPipe, void* lpBuffer, uint32 nBufferSize, uint32* lpBytesRead, uint32* lpTotalBytesAvail, uint32* lpBytesLeftThisMessage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool TransactNamedPipe(Handle hNamedPipe, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, out uint32 lpBytesRead, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateNamedPipeW(char16* lpName, FILE_FLAGS_AND_ATTRIBUTES dwOpenMode, NAMED_PIPE_MODE dwPipeMode, uint32 nMaxInstances, uint32 nOutBufferSize, uint32 nInBufferSize, uint32 nDefaultTimeOut, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WaitNamedPipeW(char16* lpNamedPipeName, uint32 nTimeOut);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeClientComputerNameW(Handle Pipe, char16* ClientComputerName, uint32 ClientComputerNameLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ImpersonateNamedPipeClient(Handle hNamedPipe);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeInfo(Handle hNamedPipe, NAMED_PIPE_MODE* lpFlags, uint32* lpOutBufferSize, uint32* lpInBufferSize, uint32* lpMaxInstances);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeHandleStateW(Handle hNamedPipe, NAMED_PIPE_MODE* lpState, uint32* lpCurInstances, uint32* lpMaxCollectionCount, uint32* lpCollectDataTimeout, char16* lpUserName, uint32 nMaxUserNameSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CallNamedPipeW(char16* lpNamedPipeName, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, out uint32 lpBytesRead, uint32 nTimeOut);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateNamedPipeA(char8* lpName, FILE_FLAGS_AND_ATTRIBUTES dwOpenMode, NAMED_PIPE_MODE dwPipeMode, uint32 nMaxInstances, uint32 nOutBufferSize, uint32 nInBufferSize, uint32 nDefaultTimeOut, SECURITY_ATTRIBUTES* lpSecurityAttributes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeHandleStateA(Handle hNamedPipe, NAMED_PIPE_MODE* lpState, uint32* lpCurInstances, uint32* lpMaxCollectionCount, uint32* lpCollectDataTimeout, uint8* lpUserName, uint32 nMaxUserNameSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CallNamedPipeA(char8* lpNamedPipeName, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, out uint32 lpBytesRead, uint32 nTimeOut);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool WaitNamedPipeA(char8* lpNamedPipeName, uint32 nTimeOut);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeClientComputerNameA(Handle Pipe, char8* ClientComputerName, uint32 ClientComputerNameLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeClientProcessId(Handle Pipe, out uint32 ClientProcessId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeClientSessionId(Handle Pipe, out uint32 ClientSessionId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeServerProcessId(Handle Pipe, out uint32 ServerProcessId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetNamedPipeServerSessionId(Handle Pipe, out uint32 ServerSessionId);
	}
}
