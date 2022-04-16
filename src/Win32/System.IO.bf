using System;
using static Win32.Win32;
using static System.Windows;

// namespace System.IO
namespace Win32.System
{
	static class IO
	{
		// --- Function Pointers ---
		
		public function void LPOVERLAPPED_COMPLETION_ROUTINE(uint32 dwErrorCode, uint32 dwNumberOfBytesTransfered, out OVERLAPPED lpOverlapped);
		
		// --- Structs ---
		
		[CRepr]
		public struct OVERLAPPED
		{
			public uint Internal;
			public uint InternalHigh;
			public _Anonymous_e__Union Anonymous;
			public Handle hEvent;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public void* Pointer;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Offset;
					public uint32 OffsetHigh;
				}
			}
		}
		[CRepr]
		public struct OVERLAPPED_ENTRY
		{
			public uint lpCompletionKey;
			public OVERLAPPED* lpOverlapped;
			public uint Internal;
			public uint32 dwNumberOfBytesTransferred;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateIoCompletionPort(Handle FileHandle, Handle ExistingCompletionPort, uint CompletionKey, uint32 NumberOfConcurrentThreads);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetQueuedCompletionStatus(Handle CompletionPort, out uint32 lpNumberOfBytesTransferred, out uint lpCompletionKey, out OVERLAPPED* lpOverlapped, uint32 dwMilliseconds);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetQueuedCompletionStatusEx(Handle CompletionPort, OVERLAPPED_ENTRY* lpCompletionPortEntries, uint32 ulCount, out uint32 ulNumEntriesRemoved, uint32 dwMilliseconds, IntBool fAlertable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PostQueuedCompletionStatus(Handle CompletionPort, uint32 dwNumberOfBytesTransferred, uint dwCompletionKey, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DeviceIoControl(Handle hDevice, uint32 dwIoControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetOverlappedResult(Handle hFile, ref OVERLAPPED lpOverlapped, out uint32 lpNumberOfBytesTransferred, IntBool bWait);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CancelIoEx(Handle hFile, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CancelIo(Handle hFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetOverlappedResultEx(Handle hFile, ref OVERLAPPED lpOverlapped, out uint32 lpNumberOfBytesTransferred, uint32 dwMilliseconds, IntBool bAlertable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CancelSynchronousIo(Handle hThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool BindIoCompletionCallback(Handle FileHandle, LPOVERLAPPED_COMPLETION_ROUTINE Function, uint32 Flags);
	}
}
