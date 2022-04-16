using System;

// namespace Networking.RemoteDifferentialCompression
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 RDCE_TABLE_FULL = 2147745793;
		public const uint32 RDCE_TABLE_CORRUPT = 2147745794;
		public const uint32 MSRDC_SIGNATURE_HASHSIZE = 16;
		public const uint32 SimilarityFileIdMinSize = 4;
		public const uint32 SimilarityFileIdMaxSize = 32;
		public const uint32 MSRDC_VERSION = 65536;
		public const uint32 MSRDC_MINIMUM_COMPATIBLE_APP_VERSION = 65536;
		public const uint32 MSRDC_MINIMUM_DEPTH = 1;
		public const uint32 MSRDC_MAXIMUM_DEPTH = 8;
		public const uint32 MSRDC_MINIMUM_COMPAREBUFFER = 100000;
		public const uint32 MSRDC_MAXIMUM_COMPAREBUFFER = 1073741824;
		public const uint32 MSRDC_DEFAULT_COMPAREBUFFER = 3200000;
		public const uint32 MSRDC_MINIMUM_INPUTBUFFERSIZE = 1024;
		public const uint32 MSRDC_MINIMUM_HORIZONSIZE = 128;
		public const uint32 MSRDC_MAXIMUM_HORIZONSIZE = 16384;
		public const uint32 MSRDC_MINIMUM_HASHWINDOWSIZE = 2;
		public const uint32 MSRDC_MAXIMUM_HASHWINDOWSIZE = 96;
		public const uint32 MSRDC_DEFAULT_HASHWINDOWSIZE_1 = 48;
		public const uint32 MSRDC_DEFAULT_HORIZONSIZE_1 = 1024;
		public const uint32 MSRDC_DEFAULT_HASHWINDOWSIZE_N = 2;
		public const uint32 MSRDC_DEFAULT_HORIZONSIZE_N = 128;
		public const uint32 MSRDC_MAXIMUM_TRAITVALUE = 63;
		public const uint32 MSRDC_MINIMUM_MATCHESREQUIRED = 1;
		public const uint32 MSRDC_MAXIMUM_MATCHESREQUIRED = 16;
		
		// --- Enums ---
		
		public enum RDC_ErrorCode : int32
		{
			NoError = 0,
			HeaderVersionNewer = 1,
			HeaderVersionOlder = 2,
			HeaderMissingOrCorrupt = 3,
			HeaderWrongType = 4,
			DataMissingOrCorrupt = 5,
			DataTooManyRecords = 6,
			FileChecksumMismatch = 7,
			ApplicationError = 8,
			Aborted = 9,
			Win32Error = 10,
		}
		public enum GeneratorParametersType : int32
		{
			Unused = 0,
			FilterMax = 1,
		}
		public enum RdcNeedType : int32
		{
			SOURCE = 0,
			TARGET = 1,
			SEED = 2,
			SEED_MAX = 255,
		}
		public enum RdcCreatedTables : int32
		{
			InvalidOrUnknown = 0,
			Existing = 1,
			New = 2,
		}
		public enum RdcMappingAccessMode : int32
		{
			Undefined = 0,
			ReadOnly = 1,
			ReadWrite = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct RdcNeed
		{
			public RdcNeedType m_BlockType;
			public uint64 m_FileOffset;
			public uint64 m_BlockLength;
		}
		[CRepr]
		public struct RdcBufferPointer
		{
			public uint32 m_Size;
			public uint32 m_Used;
			public uint8* m_Data;
		}
		[CRepr]
		public struct RdcNeedPointer
		{
			public uint32 m_Size;
			public uint32 m_Used;
			public RdcNeed* m_Data;
		}
		[CRepr]
		public struct RdcSignature
		{
			public uint8[16] m_Signature;
			public uint16 m_BlockLength;
		}
		[CRepr]
		public struct RdcSignaturePointer
		{
			public uint32 m_Size;
			public uint32 m_Used;
			public RdcSignature* m_Data;
		}
		[CRepr]
		public struct SimilarityMappedViewInfo
		{
			public uint8* m_Data;
			public uint32 m_Length;
		}
		[CRepr]
		public struct SimilarityData
		{
			public uint8[16] m_Data;
		}
		[CRepr]
		public struct FindSimilarFileIndexResults
		{
			public uint32 m_FileIndex;
			public uint32 m_MatchCount;
		}
		[CRepr]
		public struct SimilarityDumpData
		{
			public uint32 m_FileIndex;
			public SimilarityData m_Data;
		}
		[CRepr]
		public struct SimilarityFileId
		{
			public uint8[32] m_FileId;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_RdcLibrary = .(0x96236a85, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcGeneratorParameters = .(0x96236a86, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcGeneratorFilterMaxParameters = .(0x96236a87, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcGenerator = .(0x96236a88, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcFileReader = .(0x96236a89, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcSignatureReader = .(0x96236a8a, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcComparator = .(0x96236a8b, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityReportProgress = .(0x96236a8d, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTableDumpState = .(0x96236a8e, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTraitsTable = .(0x96236a8f, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityFileIdTable = .(0x96236a90, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_Similarity = .(0x96236a91, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcSimilarityGenerator = .(0x96236a92, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_FindSimilarResults = .(0x96236a93, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTraitsMapping = .(0x96236a94, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTraitsMappedView = .(0x96236a95, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IRdcGeneratorParameters : IUnknown
		{
			public const new Guid IID = .(0x96236a71, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetGeneratorParametersType(out GeneratorParametersType parametersType) mut => VT.GetGeneratorParametersType(ref this, out parametersType);
			public HResult GetParametersVersion(out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) mut => VT.GetParametersVersion(ref this, out currentVersion, out minimumCompatibleAppVersion);
			public HResult GetSerializeSize(out uint32 size) mut => VT.GetSerializeSize(ref this, out size);
			public HResult Serialize(uint32 size, out uint8 parametersBlob, out uint32 bytesWritten) mut => VT.Serialize(ref this, size, out parametersBlob, out bytesWritten);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorParameters self, out GeneratorParametersType parametersType) GetGeneratorParametersType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorParameters self, out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) GetParametersVersion;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorParameters self, out uint32 size) GetSerializeSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorParameters self, uint32 size, out uint8 parametersBlob, out uint32 bytesWritten) Serialize;
			}
		}
		[CRepr]
		public struct IRdcGeneratorFilterMaxParameters : IUnknown
		{
			public const new Guid IID = .(0x96236a72, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetHorizonSize(out uint32 horizonSize) mut => VT.GetHorizonSize(ref this, out horizonSize);
			public HResult SetHorizonSize(uint32 horizonSize) mut => VT.SetHorizonSize(ref this, horizonSize);
			public HResult GetHashWindowSize(out uint32 hashWindowSize) mut => VT.GetHashWindowSize(ref this, out hashWindowSize);
			public HResult SetHashWindowSize(uint32 hashWindowSize) mut => VT.SetHashWindowSize(ref this, hashWindowSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorFilterMaxParameters self, out uint32 horizonSize) GetHorizonSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorFilterMaxParameters self, uint32 horizonSize) SetHorizonSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorFilterMaxParameters self, out uint32 hashWindowSize) GetHashWindowSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGeneratorFilterMaxParameters self, uint32 hashWindowSize) SetHashWindowSize;
			}
		}
		[CRepr]
		public struct IRdcGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a73, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetGeneratorParameters(uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) mut => VT.GetGeneratorParameters(ref this, level, out iGeneratorParameters);
			public HResult Process(IntBool endOfInput, out IntBool endOfOutput, out RdcBufferPointer inputBuffer, uint32 depth, RdcBufferPointer** outputBuffers, out RDC_ErrorCode rdc_ErrorCode) mut => VT.Process(ref this, endOfInput, out endOfOutput, out inputBuffer, depth, outputBuffers, out rdc_ErrorCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGenerator self, uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) GetGeneratorParameters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcGenerator self, IntBool endOfInput, out IntBool endOfOutput, out RdcBufferPointer inputBuffer, uint32 depth, RdcBufferPointer** outputBuffers, out RDC_ErrorCode rdc_ErrorCode) Process;
			}
		}
		[CRepr]
		public struct IRdcFileReader : IUnknown
		{
			public const new Guid IID = .(0x96236a74, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetFileSize(out uint64 fileSize) mut => VT.GetFileSize(ref this, out fileSize);
			public HResult Read(uint64 offsetFileStart, uint32 bytesToRead, out uint32 bytesActuallyRead, out uint8 buffer, out IntBool eof) mut => VT.Read(ref this, offsetFileStart, bytesToRead, out bytesActuallyRead, out buffer, out eof);
			public HResult GetFilePosition(out uint64 offsetFromStart) mut => VT.GetFilePosition(ref this, out offsetFromStart);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcFileReader self, out uint64 fileSize) GetFileSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcFileReader self, uint64 offsetFileStart, uint32 bytesToRead, out uint32 bytesActuallyRead, out uint8 buffer, out IntBool eof) Read;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcFileReader self, out uint64 offsetFromStart) GetFilePosition;
			}
		}
		[CRepr]
		public struct IRdcFileWriter : IRdcFileReader
		{
			public const new Guid IID = .(0x96236a75, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Write(uint64 offsetFileStart, uint32 bytesToWrite, out uint8 buffer) mut => VT.Write(ref this, offsetFileStart, bytesToWrite, out buffer);
			public HResult Truncate() mut => VT.Truncate(ref this);
			public HResult DeleteOnClose() mut => VT.DeleteOnClose(ref this);

			[CRepr]
			public struct VTable : IRdcFileReader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcFileWriter self, uint64 offsetFileStart, uint32 bytesToWrite, out uint8 buffer) Write;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcFileWriter self) Truncate;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcFileWriter self) DeleteOnClose;
			}
		}
		[CRepr]
		public struct IRdcSignatureReader : IUnknown
		{
			public const new Guid IID = .(0x96236a76, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReadHeader(out RDC_ErrorCode rdc_ErrorCode) mut => VT.ReadHeader(ref this, out rdc_ErrorCode);
			public HResult ReadSignatures(out RdcSignaturePointer rdcSignaturePointer, out IntBool endOfOutput) mut => VT.ReadSignatures(ref this, out rdcSignaturePointer, out endOfOutput);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcSignatureReader self, out RDC_ErrorCode rdc_ErrorCode) ReadHeader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcSignatureReader self, out RdcSignaturePointer rdcSignaturePointer, out IntBool endOfOutput) ReadSignatures;
			}
		}
		[CRepr]
		public struct IRdcComparator : IUnknown
		{
			public const new Guid IID = .(0x96236a77, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Process(IntBool endOfInput, out IntBool endOfOutput, out RdcBufferPointer inputBuffer, out RdcNeedPointer outputBuffer, out RDC_ErrorCode rdc_ErrorCode) mut => VT.Process(ref this, endOfInput, out endOfOutput, out inputBuffer, out outputBuffer, out rdc_ErrorCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcComparator self, IntBool endOfInput, out IntBool endOfOutput, out RdcBufferPointer inputBuffer, out RdcNeedPointer outputBuffer, out RDC_ErrorCode rdc_ErrorCode) Process;
			}
		}
		[CRepr]
		public struct IRdcLibrary : IUnknown
		{
			public const new Guid IID = .(0x96236a78, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ComputeDefaultRecursionDepth(uint64 fileSize, out uint32 depth) mut => VT.ComputeDefaultRecursionDepth(ref this, fileSize, out depth);
			public HResult CreateGeneratorParameters(GeneratorParametersType parametersType, uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) mut => VT.CreateGeneratorParameters(ref this, parametersType, level, out iGeneratorParameters);
			public HResult OpenGeneratorParameters(uint32 size, in uint8 parametersBlob, out IRdcGeneratorParameters* iGeneratorParameters) mut => VT.OpenGeneratorParameters(ref this, size, parametersBlob, out iGeneratorParameters);
			public HResult CreateGenerator(uint32 depth, IRdcGeneratorParameters** iGeneratorParametersArray, out IRdcGenerator* iGenerator) mut => VT.CreateGenerator(ref this, depth, iGeneratorParametersArray, out iGenerator);
			public HResult CreateComparator(ref IRdcFileReader iSeedSignaturesFile, uint32 comparatorBufferSize, out IRdcComparator* iComparator) mut => VT.CreateComparator(ref this, ref iSeedSignaturesFile, comparatorBufferSize, out iComparator);
			public HResult CreateSignatureReader(ref IRdcFileReader iFileReader, out IRdcSignatureReader* iSignatureReader) mut => VT.CreateSignatureReader(ref this, ref iFileReader, out iSignatureReader);
			public HResult GetRDCVersion(out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) mut => VT.GetRDCVersion(ref this, out currentVersion, out minimumCompatibleAppVersion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcLibrary self, uint64 fileSize, out uint32 depth) ComputeDefaultRecursionDepth;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcLibrary self, GeneratorParametersType parametersType, uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) CreateGeneratorParameters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcLibrary self, uint32 size, in uint8 parametersBlob, out IRdcGeneratorParameters* iGeneratorParameters) OpenGeneratorParameters;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcLibrary self, uint32 depth, IRdcGeneratorParameters** iGeneratorParametersArray, out IRdcGenerator* iGenerator) CreateGenerator;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcLibrary self, ref IRdcFileReader iSeedSignaturesFile, uint32 comparatorBufferSize, out IRdcComparator* iComparator) CreateComparator;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcLibrary self, ref IRdcFileReader iFileReader, out IRdcSignatureReader* iSignatureReader) CreateSignatureReader;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcLibrary self, out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) GetRDCVersion;
			}
		}
		[CRepr]
		public struct ISimilarityReportProgress : IUnknown
		{
			public const new Guid IID = .(0x96236a7a, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReportProgress(uint32 percentCompleted) mut => VT.ReportProgress(ref this, percentCompleted);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityReportProgress self, uint32 percentCompleted) ReportProgress;
			}
		}
		[CRepr]
		public struct ISimilarityTableDumpState : IUnknown
		{
			public const new Guid IID = .(0x96236a7b, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetNextData(uint32 resultsSize, out uint32 resultsUsed, out IntBool eof, out SimilarityDumpData results) mut => VT.GetNextData(ref this, resultsSize, out resultsUsed, out eof, out results);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTableDumpState self, uint32 resultsSize, out uint32 resultsUsed, out IntBool eof, out SimilarityDumpData results) GetNextData;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsMappedView : IUnknown
		{
			public const new Guid IID = .(0x96236a7c, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Flush() mut => VT.Flush(ref this);
			public HResult Unmap() mut => VT.Unmap(ref this);
			public HResult Get(uint64 index, IntBool dirty, uint32 numElements, out SimilarityMappedViewInfo viewInfo) mut => VT.Get(ref this, index, dirty, numElements, out viewInfo);
			public void GetView(out uint8* mappedPageBegin, out uint8* mappedPageEnd) mut => VT.GetView(ref this, out mappedPageBegin, out mappedPageEnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMappedView self) Flush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMappedView self) Unmap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMappedView self, uint64 index, IntBool dirty, uint32 numElements, out SimilarityMappedViewInfo viewInfo) Get;
				public new function [CallingConvention(.Stdcall)] void(ref ISimilarityTraitsMappedView self, out uint8* mappedPageBegin, out uint8* mappedPageEnd) GetView;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsMapping : IUnknown
		{
			public const new Guid IID = .(0x96236a7d, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public void CloseMapping() mut => VT.CloseMapping(ref this);
			public HResult SetFileSize(uint64 fileSize) mut => VT.SetFileSize(ref this, fileSize);
			public HResult GetFileSize(out uint64 fileSize) mut => VT.GetFileSize(ref this, out fileSize);
			public HResult OpenMapping(RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) mut => VT.OpenMapping(ref this, accessMode, begin, end, out actualEnd);
			public HResult ResizeMapping(RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) mut => VT.ResizeMapping(ref this, accessMode, begin, end, out actualEnd);
			public void GetPageSize(out uint32 pageSize) mut => VT.GetPageSize(ref this, out pageSize);
			public HResult CreateView(uint32 minimumMappedPages, RdcMappingAccessMode accessMode, out ISimilarityTraitsMappedView* mappedView) mut => VT.CreateView(ref this, minimumMappedPages, accessMode, out mappedView);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref ISimilarityTraitsMapping self) CloseMapping;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMapping self, uint64 fileSize) SetFileSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMapping self, out uint64 fileSize) GetFileSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMapping self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) OpenMapping;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMapping self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) ResizeMapping;
				public new function [CallingConvention(.Stdcall)] void(ref ISimilarityTraitsMapping self, out uint32 pageSize) GetPageSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsMapping self, uint32 minimumMappedPages, RdcMappingAccessMode accessMode, out ISimilarityTraitsMappedView* mappedView) CreateView;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7e, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateTable(char16* path, IntBool truncate, ref uint8 securityDescriptor, out RdcCreatedTables isNew) mut => VT.CreateTable(ref this, path, truncate, ref securityDescriptor, out isNew);
			public HResult CreateTableIndirect(ref ISimilarityTraitsMapping mapping, IntBool truncate, out RdcCreatedTables isNew) mut => VT.CreateTableIndirect(ref this, ref mapping, truncate, out isNew);
			public HResult CloseTable(IntBool isValid) mut => VT.CloseTable(ref this, isValid);
			public HResult Append(ref SimilarityData data, uint32 fileIndex) mut => VT.Append(ref this, ref data, fileIndex);
			public HResult FindSimilarFileIndex(ref SimilarityData similarityData, uint16 numberOfMatchesRequired, out FindSimilarFileIndexResults findSimilarFileIndexResults, uint32 resultsSize, out uint32 resultsUsed) mut => VT.FindSimilarFileIndex(ref this, ref similarityData, numberOfMatchesRequired, out findSimilarFileIndexResults, resultsSize, out resultsUsed);
			public HResult BeginDump(out ISimilarityTableDumpState* similarityTableDumpState) mut => VT.BeginDump(ref this, out similarityTableDumpState);
			public HResult GetLastIndex(out uint32 fileIndex) mut => VT.GetLastIndex(ref this, out fileIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsTable self, char16* path, IntBool truncate, ref uint8 securityDescriptor, out RdcCreatedTables isNew) CreateTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsTable self, ref ISimilarityTraitsMapping mapping, IntBool truncate, out RdcCreatedTables isNew) CreateTableIndirect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsTable self, IntBool isValid) CloseTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsTable self, ref SimilarityData data, uint32 fileIndex) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsTable self, ref SimilarityData similarityData, uint16 numberOfMatchesRequired, out FindSimilarFileIndexResults findSimilarFileIndexResults, uint32 resultsSize, out uint32 resultsUsed) FindSimilarFileIndex;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsTable self, out ISimilarityTableDumpState* similarityTableDumpState) BeginDump;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityTraitsTable self, out uint32 fileIndex) GetLastIndex;
			}
		}
		[CRepr]
		public struct ISimilarityFileIdTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7f, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateTable(char16* path, IntBool truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) mut => VT.CreateTable(ref this, path, truncate, ref securityDescriptor, recordSize, out isNew);
			public HResult CreateTableIndirect(ref IRdcFileWriter fileIdFile, IntBool truncate, uint32 recordSize, out RdcCreatedTables isNew) mut => VT.CreateTableIndirect(ref this, ref fileIdFile, truncate, recordSize, out isNew);
			public HResult CloseTable(IntBool isValid) mut => VT.CloseTable(ref this, isValid);
			public HResult Append(ref SimilarityFileId similarityFileId, out uint32 similarityFileIndex) mut => VT.Append(ref this, ref similarityFileId, out similarityFileIndex);
			public HResult Lookup(uint32 similarityFileIndex, out SimilarityFileId similarityFileId) mut => VT.Lookup(ref this, similarityFileIndex, out similarityFileId);
			public HResult Invalidate(uint32 similarityFileIndex) mut => VT.Invalidate(ref this, similarityFileIndex);
			public HResult GetRecordCount(out uint32 recordCount) mut => VT.GetRecordCount(ref this, out recordCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityFileIdTable self, char16* path, IntBool truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) CreateTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityFileIdTable self, ref IRdcFileWriter fileIdFile, IntBool truncate, uint32 recordSize, out RdcCreatedTables isNew) CreateTableIndirect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityFileIdTable self, IntBool isValid) CloseTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityFileIdTable self, ref SimilarityFileId similarityFileId, out uint32 similarityFileIndex) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityFileIdTable self, uint32 similarityFileIndex, out SimilarityFileId similarityFileId) Lookup;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityFileIdTable self, uint32 similarityFileIndex) Invalidate;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarityFileIdTable self, out uint32 recordCount) GetRecordCount;
			}
		}
		[CRepr]
		public struct IRdcSimilarityGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a80, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult EnableSimilarity() mut => VT.EnableSimilarity(ref this);
			public HResult Results(out SimilarityData similarityData) mut => VT.Results(ref this, out similarityData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcSimilarityGenerator self) EnableSimilarity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IRdcSimilarityGenerator self, out SimilarityData similarityData) Results;
			}
		}
		[CRepr]
		public struct IFindSimilarResults : IUnknown
		{
			public const new Guid IID = .(0x96236a81, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult GetSize(out uint32 size) mut => VT.GetSize(ref this, out size);
			public HResult GetNextFileId(out uint32 numTraitsMatched, out SimilarityFileId similarityFileId) mut => VT.GetNextFileId(ref this, out numTraitsMatched, out similarityFileId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IFindSimilarResults self, out uint32 size) GetSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IFindSimilarResults self, out uint32 numTraitsMatched, out SimilarityFileId similarityFileId) GetNextFileId;
			}
		}
		[CRepr]
		public struct ISimilarity : IUnknown
		{
			public const new Guid IID = .(0x96236a83, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateTable(char16* path, IntBool truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) mut => VT.CreateTable(ref this, path, truncate, ref securityDescriptor, recordSize, out isNew);
			public HResult CreateTableIndirect(ref ISimilarityTraitsMapping mapping, ref IRdcFileWriter fileIdFile, IntBool truncate, uint32 recordSize, out RdcCreatedTables isNew) mut => VT.CreateTableIndirect(ref this, ref mapping, ref fileIdFile, truncate, recordSize, out isNew);
			public HResult CloseTable(IntBool isValid) mut => VT.CloseTable(ref this, isValid);
			public HResult Append(ref SimilarityFileId similarityFileId, ref SimilarityData similarityData) mut => VT.Append(ref this, ref similarityFileId, ref similarityData);
			public HResult FindSimilarFileId(ref SimilarityData similarityData, uint16 numberOfMatchesRequired, uint32 resultsSize, out IFindSimilarResults* findSimilarResults) mut => VT.FindSimilarFileId(ref this, ref similarityData, numberOfMatchesRequired, resultsSize, out findSimilarResults);
			public HResult CopyAndSwap(ref ISimilarity newSimilarityTables, ref ISimilarityReportProgress reportProgress) mut => VT.CopyAndSwap(ref this, ref newSimilarityTables, ref reportProgress);
			public HResult GetRecordCount(out uint32 recordCount) mut => VT.GetRecordCount(ref this, out recordCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarity self, char16* path, IntBool truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) CreateTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarity self, ref ISimilarityTraitsMapping mapping, ref IRdcFileWriter fileIdFile, IntBool truncate, uint32 recordSize, out RdcCreatedTables isNew) CreateTableIndirect;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarity self, IntBool isValid) CloseTable;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarity self, ref SimilarityFileId similarityFileId, ref SimilarityData similarityData) Append;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarity self, ref SimilarityData similarityData, uint16 numberOfMatchesRequired, uint32 resultsSize, out IFindSimilarResults* findSimilarResults) FindSimilarFileId;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarity self, ref ISimilarity newSimilarityTables, ref ISimilarityReportProgress reportProgress) CopyAndSwap;
				public new function [CallingConvention(.Stdcall)] HResult(ref ISimilarity self, out uint32 recordCount) GetRecordCount;
			}
		}
		
	}
}
