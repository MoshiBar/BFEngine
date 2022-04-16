using System;

// namespace Storage.Compression
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 COMPRESS_ALGORITHM_INVALID = 0;
		public const uint32 COMPRESS_ALGORITHM_NULL = 1;
		public const uint32 COMPRESS_ALGORITHM_MAX = 6;
		public const uint32 COMPRESS_RAW = 536870912;
		
		// --- Typedefs ---
		
		public typealias COMPRESSOR_HANDLE = int;
		
		// --- Enums ---
		
		public enum COMPRESS_ALGORITHM : uint32
		{
			MSZIP = 2,
			XPRESS = 3,
			XPRESS_HUFF = 4,
			LZMS = 5,
		}
		public enum COMPRESS_INFORMATION_CLASS : int32
		{
			INVALID = 0,
			BLOCK_SIZE = 1,
			LEVEL = 2,
		}
		
		// --- Function Pointers ---
		
		public function void* PFN_COMPRESS_ALLOCATE(void* UserContext, uint Size);
		public function void PFN_COMPRESS_FREE(void* UserContext, void* Memory);
		
		// --- Structs ---
		
		[CRepr]
		public struct COMPRESS_ALLOCATION_ROUTINES
		{
			public PFN_COMPRESS_ALLOCATE Allocate;
			public PFN_COMPRESS_FREE Free;
			public void* UserContext;
		}
		
		// --- Functions ---
		
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateCompressor(COMPRESS_ALGORITHM Algorithm, COMPRESS_ALLOCATION_ROUTINES* AllocationRoutines, out int CompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetCompressorInformation(COMPRESSOR_HANDLE CompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryCompressorInformation(COMPRESSOR_HANDLE CompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool Compress(COMPRESSOR_HANDLE CompressorHandle, void* UncompressedData, uint UncompressedDataSize, void* CompressedBuffer, uint CompressedBufferSize, out uint CompressedDataSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ResetCompressor(COMPRESSOR_HANDLE CompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CloseCompressor(COMPRESSOR_HANDLE CompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CreateDecompressor(COMPRESS_ALGORITHM Algorithm, COMPRESS_ALLOCATION_ROUTINES* AllocationRoutines, out int DecompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetDecompressorInformation(int DecompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool QueryDecompressorInformation(int DecompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool Decompress(int DecompressorHandle, void* CompressedData, uint CompressedDataSize, void* UncompressedBuffer, uint UncompressedBufferSize, uint* UncompressedDataSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool ResetDecompressor(int DecompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool CloseDecompressor(int DecompressorHandle);
	}
}
