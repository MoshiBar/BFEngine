using System;

// namespace System.ServerBackup
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WSB_MAX_OB_STATUS_VALUE_TYPE_PAIR = 5;
		public const uint32 WSB_MAX_OB_STATUS_ENTRY = 5;
		public const HResult WSBAPP_ASYNC_IN_PROGRESS = 7995396;
		
		// --- Enums ---
		
		public enum WSB_OB_STATUS_ENTRY_PAIR_TYPE : int32
		{
			UNDEFINED = 0,
			STRING = 1,
			NUMBER = 2,
			DATETIME = 3,
			TIME = 4,
			SIZE = 5,
			MAX = 6,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct WSB_OB_STATUS_ENTRY_VALUE_TYPE_PAIR
		{
			public char16* m_wszObStatusEntryPairValue;
			public WSB_OB_STATUS_ENTRY_PAIR_TYPE m_ObStatusEntryPairType;
		}
		[CRepr]
		public struct WSB_OB_STATUS_ENTRY
		{
			public uint32 m_dwIcon;
			public uint32 m_dwStatusEntryName;
			public uint32 m_dwStatusEntryValue;
			public uint32 m_cValueTypePair;
			public WSB_OB_STATUS_ENTRY_VALUE_TYPE_PAIR* m_rgValueTypePair;
		}
		[CRepr]
		public struct WSB_OB_STATUS_INFO
		{
			public Guid m_guidSnapinId;
			public uint32 m_cStatusEntry;
			public WSB_OB_STATUS_ENTRY* m_rgStatusEntry;
		}
		[CRepr]
		public struct WSB_OB_REGISTRATION_INFO
		{
			public char16* m_wszResourceDLL;
			public Guid m_guidSnapinId;
			public uint32 m_dwProviderName;
			public uint32 m_dwProviderIcon;
			public bool m_bSupportsRemoting;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWsbApplicationBackupSupport : IUnknown
		{
			public const new Guid IID = .(0x1eff3510, 0x4a27, 0x46ad, 0xb9, 0xe0, 0x08, 0x33, 0x2f, 0x0f, 0x4f, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CheckConsistency(char16* wszWriterMetadata, char16* wszComponentName, char16* wszComponentLogicalPath, uint32 cVolumes, char16** rgwszSourceVolumePath, char16** rgwszSnapshotVolumePath, out IWsbApplicationAsync* ppAsync) mut => VT.CheckConsistency(ref this, wszWriterMetadata, wszComponentName, wszComponentLogicalPath, cVolumes, rgwszSourceVolumePath, rgwszSnapshotVolumePath, out ppAsync);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWsbApplicationBackupSupport self, char16* wszWriterMetadata, char16* wszComponentName, char16* wszComponentLogicalPath, uint32 cVolumes, char16** rgwszSourceVolumePath, char16** rgwszSnapshotVolumePath, out IWsbApplicationAsync* ppAsync) CheckConsistency;
			}
		}
		[CRepr]
		public struct IWsbApplicationRestoreSupport : IUnknown
		{
			public const new Guid IID = .(0x8d3bdb38, 0x4ee8, 0x4718, 0x85, 0xf9, 0xc7, 0xdb, 0xc4, 0xab, 0x77, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult PreRestore(char16* wszWriterMetadata, char16* wszComponentName, char16* wszComponentLogicalPath, bool bNoRollForward) mut => VT.PreRestore(ref this, wszWriterMetadata, wszComponentName, wszComponentLogicalPath, bNoRollForward);
			public HResult PostRestore(char16* wszWriterMetadata, char16* wszComponentName, char16* wszComponentLogicalPath, bool bNoRollForward) mut => VT.PostRestore(ref this, wszWriterMetadata, wszComponentName, wszComponentLogicalPath, bNoRollForward);
			public HResult OrderComponents(uint32 cComponents, char16** rgComponentName, char16** rgComponentLogicalPaths, PWSTR** prgComponentName, PWSTR** prgComponentLogicalPath) mut => VT.OrderComponents(ref this, cComponents, rgComponentName, rgComponentLogicalPaths, prgComponentName, prgComponentLogicalPath);
			public HResult IsRollForwardSupported(out uint8 pbRollForwardSupported) mut => VT.IsRollForwardSupported(ref this, out pbRollForwardSupported);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWsbApplicationRestoreSupport self, char16* wszWriterMetadata, char16* wszComponentName, char16* wszComponentLogicalPath, bool bNoRollForward) PreRestore;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWsbApplicationRestoreSupport self, char16* wszWriterMetadata, char16* wszComponentName, char16* wszComponentLogicalPath, bool bNoRollForward) PostRestore;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWsbApplicationRestoreSupport self, uint32 cComponents, char16** rgComponentName, char16** rgComponentLogicalPaths, PWSTR** prgComponentName, PWSTR** prgComponentLogicalPath) OrderComponents;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWsbApplicationRestoreSupport self, out uint8 pbRollForwardSupported) IsRollForwardSupported;
			}
		}
		[CRepr]
		public struct IWsbApplicationAsync : IUnknown
		{
			public const new Guid IID = .(0x0843f6f7, 0x895c, 0x44a6, 0xb0, 0xc2, 0x05, 0xa5, 0x02, 0x2a, 0xa3, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult QueryStatus(out HResult phrResult) mut => VT.QueryStatus(ref this, out phrResult);
			public HResult Abort() mut => VT.Abort(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IWsbApplicationAsync self, out HResult phrResult) QueryStatus;
				public new function [CallingConvention(.Stdcall)] HResult(ref IWsbApplicationAsync self) Abort;
			}
		}
		
	}
}
