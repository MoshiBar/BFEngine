using System;
using System.IO;
using static System.Windows;

// namespace System.Memory
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FILE_CACHE_MAX_HARD_ENABLE = 1;
		public const uint32 FILE_CACHE_MAX_HARD_DISABLE = 2;
		public const uint32 FILE_CACHE_MIN_HARD_ENABLE = 4;
		public const uint32 FILE_CACHE_MIN_HARD_DISABLE = 8;
		public const uint32 MEHC_PATROL_SCRUBBER_PRESENT = 1;
		
		// --- Typedefs ---
		
		public typealias HeapHandle = int;
		
		// --- Enums ---
		
		public enum FILE_MAP : uint32
		{
			WRITE = 2,
			READ = 4,
			ALL_ACCESS = 983071,
			EXECUTE = 32,
			COPY = 1,
			RESERVE = 2147483648,
			TARGETS_INVALID = 1073741824,
			LARGE_PAGES = 536870912,
		}
		public enum HEAP_FLAGS : uint32
		{
			NONE = 0,
			NO_SERIALIZE = 1,
			GROWABLE = 2,
			GENERATE_EXCEPTIONS = 4,
			ZERO_MEMORY = 8,
			REALLOC_IN_PLACE_ONLY = 16,
			TAIL_CHECKING_ENABLED = 32,
			FREE_CHECKING_ENABLED = 64,
			DISABLE_COALESCE_ON_FREE = 128,
			CREATE_ALIGN_16 = 65536,
			CREATE_ENABLE_TRACING = 131072,
			CREATE_ENABLE_EXECUTE = 262144,
			MAXIMUM_TAG = 4095,
			PSEUDO_TAG_FLAG = 32768,
			TAG_SHIFT = 18,
			CREATE_SEGMENT_HEAP = 256,
			CREATE_HARDENED = 512,
		}
		[AllowDuplicates]
		public enum PAGE_PROTECTION_FLAGS : uint32
		{
			PAGE_NOACCESS = 1,
			PAGE_READONLY = 2,
			PAGE_READWRITE = 4,
			PAGE_WRITECOPY = 8,
			PAGE_EXECUTE = 16,
			PAGE_EXECUTE_READ = 32,
			PAGE_EXECUTE_READWRITE = 64,
			PAGE_EXECUTE_WRITECOPY = 128,
			PAGE_GUARD = 256,
			PAGE_NOCACHE = 512,
			PAGE_WRITECOMBINE = 1024,
			PAGE_GRAPHICS_NOACCESS = 2048,
			PAGE_GRAPHICS_READONLY = 4096,
			PAGE_GRAPHICS_READWRITE = 8192,
			PAGE_GRAPHICS_EXECUTE = 16384,
			PAGE_GRAPHICS_EXECUTE_READ = 32768,
			PAGE_GRAPHICS_EXECUTE_READWRITE = 65536,
			PAGE_GRAPHICS_COHERENT = 131072,
			PAGE_GRAPHICS_NOCACHE = 262144,
			PAGE_ENCLAVE_THREAD_CONTROL = 2147483648,
			PAGE_REVERT_TO_FILE_MAP = 2147483648,
			PAGE_TARGETS_NO_UPDATE = 1073741824,
			PAGE_TARGETS_INVALID = 1073741824,
			PAGE_ENCLAVE_UNVALIDATED = 536870912,
			PAGE_ENCLAVE_MASK = 268435456,
			PAGE_ENCLAVE_DECOMMIT = 268435456,
			PAGE_ENCLAVE_SS_FIRST = 268435457,
			PAGE_ENCLAVE_SS_REST = 268435458,
			SEC_PARTITION_OWNER_HANDLE = 262144,
			SEC_64K_PAGES = 524288,
			SEC_FILE = 8388608,
			SEC_IMAGE = 16777216,
			SEC_PROTECTED_IMAGE = 33554432,
			SEC_RESERVE = 67108864,
			SEC_COMMIT = 134217728,
			SEC_NOCACHE = 268435456,
			SEC_WRITECOMBINE = 1073741824,
			SEC_LARGE_PAGES = 2147483648,
			SEC_IMAGE_NO_EXECUTE = 285212672,
		}
		public enum UNMAP_VIEW_OF_FILE_FLAGS : uint32
		{
			UNMAP_NONE = 0,
			UNMAP_WITH_TRANSIENT_BOOST = 1,
			PRESERVE_PLACEHOLDER = 2,
		}
		public enum VIRTUAL_FREE_TYPE : uint32
		{
			DECOMMIT = 16384,
			RELEASE = 32768,
		}
		public enum VIRTUAL_ALLOCATION_TYPE : uint32
		{
			COMMIT = 4096,
			RESERVE = 8192,
			RESET = 524288,
			RESET_UNDO = 16777216,
			REPLACE_PLACEHOLDER = 16384,
			LARGE_PAGES = 536870912,
			RESERVE_PLACEHOLDER = 262144,
			FREE = 65536,
		}
		[AllowDuplicates]
		public enum LOCAL_ALLOC_FLAGS : uint32
		{
			LHND = 66,
			LMEM_FIXED = 0,
			LMEM_MOVEABLE = 2,
			LMEM_ZEROINIT = 64,
			LPTR = 64,
			NONZEROLHND = 2,
			NONZEROLPTR = 0,
		}
		[AllowDuplicates]
		public enum GLOBAL_ALLOC_FLAGS : uint32
		{
			GHND = 66,
			GMEM_FIXED = 0,
			GMEM_MOVEABLE = 2,
			GMEM_ZEROINIT = 64,
			GPTR = 64,
		}
		public enum PAGE_TYPE : uint32
		{
			PRIVATE = 131072,
			MAPPED = 262144,
			IMAGE = 16777216,
		}
		public enum MEMORY_RESOURCE_NOTIFICATION_TYPE : int32
		{
			LowMemoryResourceNotification = 0,
			HighMemoryResourceNotification = 1,
		}
		public enum OFFER_PRIORITY : int32
		{
			VeryLow = 1,
			Low = 2,
			BelowNormal = 3,
			Normal = 4,
		}
		public enum WIN32_MEMORY_INFORMATION_CLASS : int32
		{
			MemoryRegionInfo = 0,
		}
		public enum WIN32_MEMORY_PARTITION_INFORMATION_CLASS : int32
		{
			Info = 0,
			DedicatedMemoryInfo = 1,
		}
		public enum MEM_EXTENDED_PARAMETER_TYPE : int32
		{
			InvalidType = 0,
			AddressRequirements = 1,
			NumaNode = 2,
			PartitionHandle = 3,
			UserPhysicalHandle = 4,
			AttributeFlags = 5,
			ImageMachine = 6,
			Max = 7,
		}
		public enum HEAP_INFORMATION_CLASS : int32
		{
			CompatibilityInformation = 0,
			EnableTerminationOnCorruption = 1,
			OptimizeResources = 3,
			Tag = 7,
		}
		
		// --- Function Pointers ---
		
		public function void PBAD_MEMORY_CALLBACK_ROUTINE();
		public function bool PSECURE_MEMORY_CACHE_CALLBACK(void* Addr, uint Range);
		
		// --- Structs ---
		
		[CRepr]
		public struct PROCESS_HEAP_ENTRY
		{
			public void* lpData;
			public uint32 cbData;
			public uint8 cbOverhead;
			public uint8 iRegionIndex;
			public uint16 wFlags;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Block_e__Struct Block;
				public _Region_e__Struct Region;
				
				[CRepr]
				public struct _Block_e__Struct
				{
					public Handle hMem;
					public uint32[3] dwReserved;
				}
				[CRepr]
				public struct _Region_e__Struct
				{
					public uint32 dwCommittedSize;
					public uint32 dwUnCommittedSize;
					public void* lpFirstBlock;
					public void* lpLastBlock;
				}
			}
		}
		[CRepr]
		public struct HEAP_SUMMARY
		{
			public uint32 cb;
			public uint cbAllocated;
			public uint cbCommitted;
			public uint cbReserved;
			public uint cbMaxReserve;
		}
		[CRepr]
		public struct WIN32_MEMORY_RANGE_ENTRY
		{
			public void* VirtualAddress;
			public uint NumberOfBytes;
		}
		[CRepr]
		public struct WIN32_MEMORY_REGION_INFORMATION
		{
			public void* AllocationBase;
			public uint32 AllocationProtect;
			public _Anonymous_e__Union Anonymous;
			public uint RegionSize;
			public uint CommitSize;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 Flags;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct WIN32_MEMORY_PARTITION_INFORMATION
		{
			public uint32 Flags;
			public uint32 NumaNode;
			public uint32 Channel;
			public uint32 NumberOfNumaNodes;
			public uint64 ResidentAvailablePages;
			public uint64 CommittedPages;
			public uint64 CommitLimit;
			public uint64 PeakCommitment;
			public uint64 TotalNumberOfPages;
			public uint64 AvailablePages;
			public uint64 ZeroPages;
			public uint64 FreePages;
			public uint64 StandbyPages;
			public uint64[16] Reserved;
			public uint64 MaximumCommitLimit;
			public uint64 Reserved2;
			public uint32 PartitionId;
		}
		[CRepr]
		public struct MEMORY_BASIC_INFORMATION
		{
			public void* BaseAddress;
			public void* AllocationBase;
			public PAGE_PROTECTION_FLAGS AllocationProtect;
			public uint16 PartitionId;
			public uint RegionSize;
			public VIRTUAL_ALLOCATION_TYPE State;
			public PAGE_PROTECTION_FLAGS Protect;
			public PAGE_TYPE Type;
		}
		[CRepr]
		public struct MEMORY_BASIC_INFORMATION32
		{
			public uint32 BaseAddress;
			public uint32 AllocationBase;
			public PAGE_PROTECTION_FLAGS AllocationProtect;
			public uint32 RegionSize;
			public VIRTUAL_ALLOCATION_TYPE State;
			public PAGE_PROTECTION_FLAGS Protect;
			public PAGE_TYPE Type;
		}
		[CRepr]
		public struct MEMORY_BASIC_INFORMATION64
		{
			public uint64 BaseAddress;
			public uint64 AllocationBase;
			public PAGE_PROTECTION_FLAGS AllocationProtect;
			public uint32 __alignment1;
			public uint64 RegionSize;
			public VIRTUAL_ALLOCATION_TYPE State;
			public PAGE_PROTECTION_FLAGS Protect;
			public PAGE_TYPE Type;
			public uint32 __alignment2;
		}
		[CRepr]
		public struct CFG_CALL_TARGET_INFO
		{
			public uint Offset;
			public uint Flags;
		}
		[CRepr]
		public struct MEM_EXTENDED_PARAMETER
		{
			public _Anonymous1_e__Struct Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint64 ULong64;
				public void* Pointer;
				public uint Size;
				public Handle Handle;
				public uint32 ULong;
			}
			[CRepr]
			public struct _Anonymous1_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HeapHandle HeapCreate(HEAP_FLAGS flOptions, uint dwInitialSize, uint dwMaximumSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapDestroy(HeapHandle hHeap);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* HeapAlloc(HeapHandle hHeap, HEAP_FLAGS dwFlags, uint dwBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* HeapReAlloc(HeapHandle hHeap, HEAP_FLAGS dwFlags, void* lpMem, uint dwBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapFree(HeapHandle hHeap, HEAP_FLAGS dwFlags, void* lpMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint HeapSize(HeapHandle hHeap, HEAP_FLAGS dwFlags, void* lpMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HeapHandle GetProcessHeap();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint HeapCompact(HeapHandle hHeap, HEAP_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapSetInformation(HeapHandle HeapHandle, HEAP_INFORMATION_CLASS HeapInformationClass, void* HeapInformation, uint HeapInformationLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapValidate(HeapHandle hHeap, HEAP_FLAGS dwFlags, void* lpMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapSummary(Handle hHeap, uint32 dwFlags, out HEAP_SUMMARY lpSummary);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetProcessHeaps(uint32 NumberOfHeaps, HeapHandle* ProcessHeaps);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapLock(HeapHandle hHeap);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapUnlock(HeapHandle hHeap);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapWalk(HeapHandle hHeap, out PROCESS_HEAP_ENTRY lpEntry);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool HeapQueryInformation(HeapHandle HeapHandle, HEAP_INFORMATION_CLASS HeapInformationClass, void* HeapInformation, uint HeapInformationLength, uint* ReturnLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* VirtualAlloc(void* lpAddress, uint dwSize, VIRTUAL_ALLOCATION_TYPE flAllocationType, PAGE_PROTECTION_FLAGS flProtect);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualProtect(void* lpAddress, uint dwSize, PAGE_PROTECTION_FLAGS flNewProtect, out PAGE_PROTECTION_FLAGS lpflOldProtect);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualFree(void* lpAddress, uint dwSize, VIRTUAL_FREE_TYPE dwFreeType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint VirtualQuery(void* lpAddress, out MEMORY_BASIC_INFORMATION lpBuffer, uint dwLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* VirtualAllocEx(Handle hProcess, void* lpAddress, uint dwSize, VIRTUAL_ALLOCATION_TYPE flAllocationType, PAGE_PROTECTION_FLAGS flProtect);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualProtectEx(Handle hProcess, void* lpAddress, uint dwSize, PAGE_PROTECTION_FLAGS flNewProtect, out PAGE_PROTECTION_FLAGS lpflOldProtect);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint VirtualQueryEx(Handle hProcess, void* lpAddress, out MEMORY_BASIC_INFORMATION lpBuffer, uint dwLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateFileMappingW(Handle hFile, SecurityAttributes* lpFileMappingAttributes, PAGE_PROTECTION_FLAGS flProtect, uint32 dwMaximumSizeHigh, uint32 dwMaximumSizeLow, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenFileMappingW(uint32 dwDesiredAccess, IntBool bInheritHandle, char16* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MapViewOfFile(Handle hFileMappingObject, FILE_MAP dwDesiredAccess, uint32 dwFileOffsetHigh, uint32 dwFileOffsetLow, uint dwNumberOfBytesToMap);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MapViewOfFileEx(Handle hFileMappingObject, FILE_MAP dwDesiredAccess, uint32 dwFileOffsetHigh, uint32 dwFileOffsetLow, uint dwNumberOfBytesToMap, void* lpBaseAddress);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualFreeEx(Handle hProcess, void* lpAddress, uint dwSize, VIRTUAL_FREE_TYPE dwFreeType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FlushViewOfFile(void* lpBaseAddress, uint dwNumberOfBytesToFlush);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnmapViewOfFile(void* lpBaseAddress);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint GetLargePageMinimum();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetProcessWorkingSetSizeEx(Handle hProcess, out uint lpMinimumWorkingSetSize, out uint lpMaximumWorkingSetSize, out uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessWorkingSetSizeEx(Handle hProcess, uint dwMinimumWorkingSetSize, uint dwMaximumWorkingSetSize, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualLock(void* lpAddress, uint dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualUnlock(void* lpAddress, uint dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetWriteWatch(uint32 dwFlags, void* lpBaseAddress, uint dwRegionSize, void** lpAddresses, uint* lpdwCount, uint32* lpdwGranularity);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ResetWriteWatch(void* lpBaseAddress, uint dwRegionSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateMemoryResourceNotification(MEMORY_RESOURCE_NOTIFICATION_TYPE NotificationType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryMemoryResourceNotification(Handle ResourceNotificationHandle, out IntBool ResourceState);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetSystemFileCacheSize(out uint lpMinimumFileCacheSize, out uint lpMaximumFileCacheSize, out uint32 lpFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetSystemFileCacheSize(uint MinimumFileCacheSize, uint MaximumFileCacheSize, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateFileMappingNumaW(Handle hFile, SecurityAttributes* lpFileMappingAttributes, PAGE_PROTECTION_FLAGS flProtect, uint32 dwMaximumSizeHigh, uint32 dwMaximumSizeLow, char16* lpName, uint32 nndPreferred);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool PrefetchVirtualMemory(Handle hProcess, uint NumberOfEntries, WIN32_MEMORY_RANGE_ENTRY* VirtualAddresses, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateFileMappingFromApp(Handle hFile, SecurityAttributes* SecurityAttributes, PAGE_PROTECTION_FLAGS PageProtection, uint64 MaximumSize, char16* Name);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MapViewOfFileFromApp(Handle hFileMappingObject, FILE_MAP DesiredAccess, uint64 FileOffset, uint NumberOfBytesToMap);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnmapViewOfFileEx(void* BaseAddress, UNMAP_VIEW_OF_FILE_FLAGS UnmapFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AllocateUserPhysicalPages(Handle hProcess, out uint NumberOfPages, uint* PageArray);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FreeUserPhysicalPages(Handle hProcess, out uint NumberOfPages, uint* PageArray);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MapUserPhysicalPages(void* VirtualAddress, uint NumberOfPages, uint* PageArray);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AllocateUserPhysicalPagesNuma(Handle hProcess, out uint NumberOfPages, uint* PageArray, uint32 nndPreferred);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* VirtualAllocExNuma(Handle hProcess, void* lpAddress, uint dwSize, VIRTUAL_ALLOCATION_TYPE flAllocationType, uint32 flProtect, uint32 nndPreferred);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetMemoryErrorHandlingCapabilities(out uint32 Capabilities);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RegisterBadMemoryNotification(PBAD_MEMORY_CALLBACK_ROUTINE Callback);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnregisterBadMemoryNotification(void* RegistrationHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfferVirtualMemory(void* VirtualAddress, uint Size, OFFER_PRIORITY Priority);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ReclaimVirtualMemory(void* VirtualAddress, uint Size);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DiscardVirtualMemory(void* VirtualAddress, uint Size);
		[Import("api-ms-win-core-memory-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessValidCallTargets(Handle hProcess, void* VirtualAddress, uint RegionSize, uint32 NumberOfOffsets, CFG_CALL_TARGET_INFO* OffsetInformation);
		[Import("api-ms-win-core-memory-l1-1-7.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetProcessValidCallTargetsForMappedView(Handle Process, void* VirtualAddress, uint RegionSize, uint32 NumberOfOffsets, CFG_CALL_TARGET_INFO* OffsetInformation, Handle Section, uint64 ExpectedFileOffset);
		[Import("api-ms-win-core-memory-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* VirtualAllocFromApp(void* BaseAddress, uint Size, VIRTUAL_ALLOCATION_TYPE AllocationType, uint32 Protection);
		[Import("api-ms-win-core-memory-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualProtectFromApp(void* Address, uint Size, uint32 NewProtection, out uint32 OldProtection);
		[Import("api-ms-win-core-memory-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenFileMappingFromApp(uint32 DesiredAccess, IntBool InheritHandle, char16* Name);
		[Import("api-ms-win-core-memory-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryVirtualMemoryInformation(Handle Process, void* VirtualAddress, WIN32_MEMORY_INFORMATION_CLASS MemoryInformationClass, void* MemoryInformation, uint MemoryInformationSize, uint* ReturnSize);
		[Import("api-ms-win-core-memory-l1-1-5.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MapViewOfFileNuma2(Handle FileMappingHandle, Handle ProcessHandle, uint64 Offset, void* BaseAddress, uint ViewSize, uint32 AllocationType, uint32 PageProtection, uint32 PreferredNode);
		[Import("api-ms-win-core-memory-l1-1-5.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UnmapViewOfFile2(Handle Process, void* BaseAddress, UNMAP_VIEW_OF_FILE_FLAGS UnmapFlags);
		[Import("api-ms-win-core-memory-l1-1-5.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool VirtualUnlockEx(Handle Process, void* Address, uint Size);
		[Import("api-ms-win-core-memory-l1-1-6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* VirtualAlloc2(Handle Process, void* BaseAddress, uint Size, VIRTUAL_ALLOCATION_TYPE AllocationType, uint32 PageProtection, MEM_EXTENDED_PARAMETER* ExtendedParameters, uint32 ParameterCount);
		[Import("api-ms-win-core-memory-l1-1-6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MapViewOfFile3(Handle FileMapping, Handle Process, void* BaseAddress, uint64 Offset, uint ViewSize, VIRTUAL_ALLOCATION_TYPE AllocationType, uint32 PageProtection, MEM_EXTENDED_PARAMETER* ExtendedParameters, uint32 ParameterCount);
		[Import("api-ms-win-core-memory-l1-1-6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* VirtualAlloc2FromApp(Handle Process, void* BaseAddress, uint Size, VIRTUAL_ALLOCATION_TYPE AllocationType, uint32 PageProtection, MEM_EXTENDED_PARAMETER* ExtendedParameters, uint32 ParameterCount);
		[Import("api-ms-win-core-memory-l1-1-6.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MapViewOfFile3FromApp(Handle FileMapping, Handle Process, void* BaseAddress, uint64 Offset, uint ViewSize, VIRTUAL_ALLOCATION_TYPE AllocationType, uint32 PageProtection, MEM_EXTENDED_PARAMETER* ExtendedParameters, uint32 ParameterCount);
		[Import("api-ms-win-core-memory-l1-1-7.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateFileMapping2(Handle File, SecurityAttributes* SecurityAttributes, uint32 DesiredAccess, PAGE_PROTECTION_FLAGS PageProtection, uint32 AllocationAttributes, uint64 MaximumSize, char16* Name, MEM_EXTENDED_PARAMETER* ExtendedParameters, uint32 ParameterCount);
		[Import("api-ms-win-core-memory-l1-1-8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AllocateUserPhysicalPages2(Handle ObjectHandle, out uint NumberOfPages, uint* PageArray, MEM_EXTENDED_PARAMETER* ExtendedParameters, uint32 ExtendedParameterCount);
		[Import("api-ms-win-core-memory-l1-1-8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenDedicatedMemoryPartition(Handle Partition, uint64 DedicatedMemoryTypeId, uint32 DesiredAccess, IntBool InheritHandle);
		[Import("api-ms-win-core-memory-l1-1-8.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryPartitionInformation(Handle Partition, WIN32_MEMORY_PARTITION_INFORMATION_CLASS PartitionInformationClass, void* PartitionInformation, uint32 PartitionInformationLength);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint RtlCompareMemory(void* Source1, void* Source2, uint Length);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RtlCrc32(void* Buffer, uint Size, uint32 InitialCrc);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 RtlCrc64(void* Buffer, uint Size, uint64 InitialCrc);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern bool RtlIsZeroMemory(void* Buffer, uint Length);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int GlobalAlloc(GLOBAL_ALLOC_FLAGS uFlags, uint dwBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int GlobalReAlloc(int hMem, uint dwBytes, uint32 uFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint GlobalSize(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GlobalUnlock(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* GlobalLock(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GlobalFlags(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int GlobalHandle(void* pMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int GlobalFree(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int LocalAlloc(LOCAL_ALLOC_FLAGS uFlags, uint uBytes);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int LocalReAlloc(int hMem, uint uBytes, uint32 uFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* LocalLock(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int LocalHandle(void* pMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool LocalUnlock(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint LocalSize(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LocalFlags(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int LocalFree(int hMem);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateFileMappingA(Handle hFile, SecurityAttributes* lpFileMappingAttributes, PAGE_PROTECTION_FLAGS flProtect, uint32 dwMaximumSizeHigh, uint32 dwMaximumSizeLow, char8* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle CreateFileMappingNumaA(Handle hFile, SecurityAttributes* lpFileMappingAttributes, PAGE_PROTECTION_FLAGS flProtect, uint32 dwMaximumSizeHigh, uint32 dwMaximumSizeLow, char8* lpName, uint32 nndPreferred);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle OpenFileMappingA(uint32 dwDesiredAccess, IntBool bInheritHandle, char8* lpName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* MapViewOfFileExNuma(Handle hFileMappingObject, FILE_MAP dwDesiredAccess, uint32 dwFileOffsetHigh, uint32 dwFileOffsetLow, uint dwNumberOfBytesToMap, void* lpBaseAddress, uint32 nndPreferred);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsBadReadPtr(void* lp, uint ucb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsBadWritePtr(void* lp, uint ucb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsBadCodePtr(FARPROC lpfn);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsBadStringPtrA(char8* lpsz, uint ucchMax);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool IsBadStringPtrW(char16* lpsz, uint ucchMax);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool MapUserPhysicalPagesScatter(void** VirtualAddresses, uint NumberOfPages, uint* PageArray);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool AddSecureMemoryCacheCallback(PSECURE_MEMORY_CACHE_CALLBACK pfnCallBack);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RemoveSecureMemoryCacheCallback(PSECURE_MEMORY_CACHE_CALLBACK pfnCallBack);
	}
}
