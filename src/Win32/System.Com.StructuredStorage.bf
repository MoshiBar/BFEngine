using System;
using static Win32.Win32;
using static System.Windows;
using static System.Windows.COM_IUnknown;

// namespace System.Com.StructuredStorage
namespace Win32.System
{
	extension Com{
	public static class StructuredStorage{
		// --- Constants ---
		
		public const uint32 PROPSETFLAG_DEFAULT = 0;
		public const uint32 PROPSETFLAG_NONSIMPLE = 1;
		public const uint32 PROPSETFLAG_ANSI = 2;
		public const uint32 PROPSETFLAG_UNBUFFERED = 4;
		public const uint32 PROPSETFLAG_CASE_SENSITIVE = 8;
		public const uint32 PROPSET_BEHAVIOR_CASE_SENSITIVE = 1;
		public const uint32 PID_DICTIONARY = 0;
		public const uint32 PID_CODEPAGE = 1;
		public const uint32 PID_FIRST_USABLE = 2;
		public const uint32 PID_FIRST_NAME_DEFAULT = 4095;
		public const uint32 PID_LOCALE = 2147483648;
		public const uint32 PID_MODIFY_TIME = 2147483649;
		public const uint32 PID_SECURITY = 2147483650;
		public const uint32 PID_BEHAVIOR = 2147483651;
		public const uint32 PID_ILLEGAL = 4294967295;
		public const uint32 PID_MIN_READONLY = 2147483648;
		public const uint32 PID_MAX_READONLY = 3221225471;
		public const uint32 PRSPEC_INVALID = 4294967295;
		public const uint32 PROPSETHDR_OSVERSION_UNKNOWN = 4294967295;
		public const int32 PIDDI_THUMBNAIL = 2;
		public const int32 PIDSI_TITLE = 2;
		public const int32 PIDSI_SUBJECT = 3;
		public const int32 PIDSI_AUTHOR = 4;
		public const int32 PIDSI_KEYWORDS = 5;
		public const int32 PIDSI_COMMENTS = 6;
		public const int32 PIDSI_TEMPLATE = 7;
		public const int32 PIDSI_LASTAUTHOR = 8;
		public const int32 PIDSI_REVNUMBER = 9;
		public const int32 PIDSI_EDITTIME = 10;
		public const int32 PIDSI_LASTPRINTED = 11;
		public const int32 PIDSI_CREATE_DTM = 12;
		public const int32 PIDSI_LASTSAVE_DTM = 13;
		public const int32 PIDSI_PAGECOUNT = 14;
		public const int32 PIDSI_WORDCOUNT = 15;
		public const int32 PIDSI_CHARCOUNT = 16;
		public const int32 PIDSI_THUMBNAIL = 17;
		public const int32 PIDSI_APPNAME = 18;
		public const int32 PIDSI_DOC_SECURITY = 19;
		public const uint32 PIDDSI_CATEGORY = 2;
		public const uint32 PIDDSI_PRESFORMAT = 3;
		public const uint32 PIDDSI_BYTECOUNT = 4;
		public const uint32 PIDDSI_LINECOUNT = 5;
		public const uint32 PIDDSI_PARCOUNT = 6;
		public const uint32 PIDDSI_SLIDECOUNT = 7;
		public const uint32 PIDDSI_NOTECOUNT = 8;
		public const uint32 PIDDSI_HIDDENCOUNT = 9;
		public const uint32 PIDDSI_MMCLIPCOUNT = 10;
		public const uint32 PIDDSI_SCALE = 11;
		public const uint32 PIDDSI_HEADINGPAIR = 12;
		public const uint32 PIDDSI_DOCPARTS = 13;
		public const uint32 PIDDSI_MANAGER = 14;
		public const uint32 PIDDSI_COMPANY = 15;
		public const uint32 PIDDSI_LINKSDIRTY = 16;
		public const int32 PIDMSI_EDITOR = 2;
		public const int32 PIDMSI_SUPPLIER = 3;
		public const int32 PIDMSI_SOURCE = 4;
		public const int32 PIDMSI_SEQUENCE_NO = 5;
		public const int32 PIDMSI_PROJECT = 6;
		public const int32 PIDMSI_STATUS = 7;
		public const int32 PIDMSI_OWNER = 8;
		public const int32 PIDMSI_RATING = 9;
		public const int32 PIDMSI_PRODUCTION = 10;
		public const int32 PIDMSI_COPYRIGHT = 11;
		public const uint32 CWCSTORAGENAME = 32;
		public const int32 STGM_DIRECT = 0;
		public const int32 STGM_TRANSACTED = 65536;
		public const int32 STGM_SIMPLE = 134217728;
		public const int32 STGM_READ = 0;
		public const int32 STGM_WRITE = 1;
		public const int32 STGM_READWRITE = 2;
		public const int32 STGM_SHARE_DENY_NONE = 64;
		public const int32 STGM_SHARE_DENY_READ = 48;
		public const int32 STGM_SHARE_DENY_WRITE = 32;
		public const int32 STGM_SHARE_EXCLUSIVE = 16;
		public const int32 STGM_PRIORITY = 262144;
		public const int32 STGM_DELETEONRELEASE = 67108864;
		public const int32 STGM_NOSCRATCH = 1048576;
		public const int32 STGM_CREATE = 4096;
		public const int32 STGM_CONVERT = 131072;
		public const int32 STGM_FAILIFTHERE = 0;
		public const int32 STGM_NOSNAPSHOT = 2097152;
		public const int32 STGM_DIRECT_SWMR = 4194304;
		public const uint32 STGFMT_STORAGE = 0;
		public const uint32 STGFMT_NATIVE = 1;
		public const uint32 STGFMT_FILE = 3;
		public const uint32 STGFMT_ANY = 4;
		public const uint32 STGFMT_DOCFILE = 5;
		public const uint32 STGFMT_DOCUMENT = 0;
		public const uint32 STGOPTIONS_VERSION = 1;
		public const uint32 CCH_MAX_PROPSTG_NAME = 31;
		
		// --- Enums ---
		
		public enum PROPSPEC_KIND : uint32
		{
			LPWSTR = 0,
			PROPID = 1,
		}
		public enum STGC : int32
		{
			DEFAULT = 0,
			OVERWRITE = 1,
			ONLYIFCURRENT = 2,
			DANGEROUSLYCOMMITMERELYTODISKCACHE = 4,
			CONSOLIDATE = 8,
		}
		public enum STGMOVE : int32
		{
			MOVE = 0,
			COPY = 1,
			SHALLOWCOPY = 2,
		}
		public enum STATFLAG : int32
		{
			DEFAULT = 0,
			NONAME = 1,
			NOOPEN = 2,
		}
		public enum LOCKTYPE : int32
		{
			WRITE = 1,
			EXCLUSIVE = 2,
			ONLYONCE = 4,
		}
		public enum PIDMSI_STATUS_VALUE : int32
		{
			NORMAL = 0,
			NEW = 1,
			PRELIM = 2,
			DRAFT = 3,
			INPROGRESS = 4,
			EDIT = 5,
			REVIEW = 6,
			PROOF = 7,
			FINAL = 8,
			OTHER = 32767,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct BSTRBLOB
		{
			public uint32 cbSize;
			public uint8* pData;
		}
		[CRepr]
		public struct CLIPDATA
		{
			public uint32 cbSize;
			public int32 ulClipFmt;
			public uint8* pClipData;
		}
		[CRepr]
		public struct RemSNB
		{
			public uint32 ulCntStr;
			public uint32 ulCntChar;
			public char16[0] rgString;
		}
		[CRepr]
		public struct VERSIONEDSTREAM
		{
			public Guid guidVersion;
			public IStream* pStream;
		}
		[CRepr]
		public struct CAC
		{
			public uint32 cElems;
			public char8* pElems;
		}
		[CRepr]
		public struct CAUB
		{
			public uint32 cElems;
			public uint8* pElems;
		}
		[CRepr]
		public struct CAI
		{
			public uint32 cElems;
			public int16* pElems;
		}
		[CRepr]
		public struct CAUI
		{
			public uint32 cElems;
			public uint16* pElems;
		}
		[CRepr]
		public struct CAL
		{
			public uint32 cElems;
			public int32* pElems;
		}
		[CRepr]
		public struct CAUL
		{
			public uint32 cElems;
			public uint32* pElems;
		}
		[CRepr]
		public struct CAFLT
		{
			public uint32 cElems;
			public float* pElems;
		}
		[CRepr]
		public struct CADBL
		{
			public uint32 cElems;
			public double* pElems;
		}
		[CRepr]
		public struct CACY
		{
			public uint32 cElems;
			public CY* pElems;
		}
		[CRepr]
		public struct CADATE
		{
			public uint32 cElems;
			public double* pElems;
		}
		[CRepr]
		public struct CABSTR
		{
			public uint32 cElems;
			public char16** pElems;
		}
		[CRepr]
		public struct CABSTRBLOB
		{
			public uint32 cElems;
			public BSTRBLOB* pElems;
		}
		[CRepr]
		public struct CAIntBool
		{
			public uint32 cElems;
			public int16* pElems;
		}
		[CRepr]
		public struct CASCODE
		{
			public uint32 cElems;
			public int32* pElems;
		}
		[CRepr]
		public struct CAPROPVARIANT
		{
			public uint32 cElems;
			public PROPVARIANT* pElems;
		}
		[CRepr]
		public struct CAH
		{
			public uint32 cElems;
			public LARGE_INTEGER* pElems;
		}
		[CRepr]
		public struct CAUH
		{
			public uint32 cElems;
			public ULARGE_INTEGER* pElems;
		}
		[CRepr]
		public struct CALPSTR
		{
			public uint32 cElems;
			public char8** pElems;
		}
		[CRepr]
		public struct CALPWSTR
		{
			public uint32 cElems;
			public char16** pElems;
		}
		[CRepr]
		public struct CAFILETIME
		{
			public uint32 cElems;
			public FileTime* pElems;
		}
		[CRepr]
		public struct CACLIPDATA
		{
			public uint32 cElems;
			public CLIPDATA* pElems;
		}
		[CRepr]
		public struct CACLSID
		{
			public uint32 cElems;
			public Guid* pElems;
		}
		[CRepr]
		public struct PROPVARIANT
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public DECIMAL decVal;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 vt;
					public uint16 wReserved1;
					public uint16 wReserved2;
					public uint16 wReserved3;
					public _Anonymous_e__Union Anonymous;
					
					[CRepr, Union]
					public struct _Anonymous_e__Union
					{
						public char8 cVal;
						public uint8 bVal;
						public int16 iVal;
						public uint16 uiVal;
						public int32 lVal;
						public uint32 ulVal;
						public int32 intVal;
						public uint32 uintVal;
						public LARGE_INTEGER hVal;
						public ULARGE_INTEGER uhVal;
						public float fltVal;
						public double dblVal;
						public int16 boolVal;
						public int16 __OBSOLETE__VARIANT_IntBool;
						public int32 scode;
						public CY cyVal;
						public double date;
						public FileTime filetime;
						public Guid* puuid;
						public CLIPDATA* pclipdata;
						public char16* bstrVal;
						public BSTRBLOB bstrblobVal;
						public BLOB blob;
						public char8* pszVal;
						public char16* pwszVal;
						public IUnknown* punkVal;
						public IDispatch* pdispVal;
						public IStream* pStream;
						public IStorage* pStorage;
						public VERSIONEDSTREAM* pVersionedStream;
						public SAFEARRAY* parray;
						public CAC cac;
						public CAUB caub;
						public CAI cai;
						public CAUI caui;
						public CAL cal;
						public CAUL caul;
						public CAH cah;
						public CAUH cauh;
						public CAFLT caflt;
						public CADBL cadbl;
						public CAIntBool cabool;
						public CASCODE cascode;
						public CACY cacy;
						public CADATE cadate;
						public CAFILETIME cafiletime;
						public CACLSID cauuid;
						public CACLIPDATA caclipdata;
						public CABSTR cabstr;
						public CABSTRBLOB cabstrblob;
						public CALPSTR calpstr;
						public CALPWSTR calpwstr;
						public CAPROPVARIANT capropvar;
						public char8* pcVal;
						public uint8* pbVal;
						public int16* piVal;
						public uint16* puiVal;
						public int32* plVal;
						public uint32* pulVal;
						public int32* pintVal;
						public uint32* puintVal;
						public float* pfltVal;
						public double* pdblVal;
						public int16* pboolVal;
						public DECIMAL* pdecVal;
						public int32* pscode;
						public CY* pcyVal;
						public double* pdate;
						public char16** pbstrVal;
						public IUnknown** ppunkVal;
						public IDispatch** ppdispVal;
						public SAFEARRAY** pparray;
						public PROPVARIANT* pvarVal;
					}
				}
			}
		}
		[CRepr]
		public struct PROPSPEC
		{
			public PROPSPEC_KIND ulKind;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 propid;
				public char16* lpwstr;
			}
		}
		[CRepr]
		public struct STATPROPSTG
		{
			public char16* lpwstrName;
			public uint32 propid;
			public uint16 vt;
		}
		[CRepr]
		public struct STATPROPSETSTG
		{
			public Guid fmtid;
			public Guid clsid;
			public uint32 grfFlags;
			public FileTime mtime;
			public FileTime ctime;
			public FileTime atime;
			public uint32 dwOSVersion;
		}
		[CRepr]
		public struct STGOPTIONS
		{
			public uint16 usVersion;
			public uint16 reserved;
			public uint32 ulSectorSize;
			public char16* pwcsTemplateFile;
		}
		[CRepr]
		public struct SERIALIZEDPROPERTYVALUE
		{
			public uint32 dwType;
			public uint8[0] rgb;
		}
		[CRepr]
		public struct PMemoryAllocator {}
		[CRepr]
		public struct OLESTREAMVTBL
		{
			public int Get;
			public int Put;
		}
		[CRepr]
		public struct OLESTREAM
		{
			public OLESTREAMVTBL* lpstbl;
		}
		[CRepr]
		public struct PROPBAG2
		{
			public uint32 dwType;
			public uint16 vt;
			public uint16 cfType;
			public uint32 dwHint;
			public char16* pstrName;
			public Guid clsid;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IEnumSTATSTG : IUnknown
		{
			public const new Guid IID = .(0x0000000d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Next(uint32 celt, STATSTG* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HResult Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Clone(out IEnumSTATSTG* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATSTG self, uint32 celt, STATSTG* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATSTG self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATSTG self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATSTG self, out IEnumSTATSTG* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IStorage : IUnknown
		{
			public const new Guid IID = .(0x0000000b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult CreateStream(char16* pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStream* ppstm) mut => VT.CreateStream(ref this, pwcsName, grfMode, reserved1, reserved2, out ppstm);
			public HResult OpenStream(char16* pwcsName, void* reserved1, uint32 grfMode, uint32 reserved2, out IStream* ppstm) mut => VT.OpenStream(ref this, pwcsName, reserved1, grfMode, reserved2, out ppstm);
			public HResult CreateStorage(char16* pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStorage* ppstg) mut => VT.CreateStorage(ref this, pwcsName, grfMode, reserved1, reserved2, out ppstg);
			public HResult OpenStorage(char16* pwcsName, ref IStorage pstgPriority, uint32 grfMode, ref uint16* snbExclude, uint32 reserved, out IStorage* ppstg) mut => VT.OpenStorage(ref this, pwcsName, ref pstgPriority, grfMode, ref snbExclude, reserved, out ppstg);
			public HResult CopyTo(uint32 ciidExclude, Guid* rgiidExclude, uint16** snbExclude, ref IStorage pstgDest) mut => VT.CopyTo(ref this, ciidExclude, rgiidExclude, snbExclude, ref pstgDest);
			public HResult MoveElementTo(char16* pwcsName, ref IStorage pstgDest, char16* pwcsNewName, uint32 grfFlags) mut => VT.MoveElementTo(ref this, pwcsName, ref pstgDest, pwcsNewName, grfFlags);
			public HResult Commit(uint32 grfCommitFlags) mut => VT.Commit(ref this, grfCommitFlags);
			public HResult Revert() mut => VT.Revert(ref this);
			public HResult EnumElements(uint32 reserved1, void* reserved2, uint32 reserved3, out IEnumSTATSTG* ppenum) mut => VT.EnumElements(ref this, reserved1, reserved2, reserved3, out ppenum);
			public HResult DestroyElement(char16* pwcsName) mut => VT.DestroyElement(ref this, pwcsName);
			public HResult RenameElement(char16* pwcsOldName, char16* pwcsNewName) mut => VT.RenameElement(ref this, pwcsOldName, pwcsNewName);
			public HResult SetElementTimes(char16* pwcsName, in FileTime pctime, in FileTime patime, in FileTime pmtime) mut => VT.SetElementTimes(ref this, pwcsName, pctime, patime, pmtime);
			public HResult SetClass(in Guid clsid) mut => VT.SetClass(ref this, clsid);
			public HResult SetStateBits(uint32 grfStateBits, uint32 grfMask) mut => VT.SetStateBits(ref this, grfStateBits, grfMask);
			public HResult Stat(out STATSTG pstatstg, uint32 grfStatFlag) mut => VT.Stat(ref this, out pstatstg, grfStatFlag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStream* ppstm) CreateStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsName, void* reserved1, uint32 grfMode, uint32 reserved2, out IStream* ppstm) OpenStream;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStorage* ppstg) CreateStorage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsName, ref IStorage pstgPriority, uint32 grfMode, ref uint16* snbExclude, uint32 reserved, out IStorage* ppstg) OpenStorage;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, uint32 ciidExclude, Guid* rgiidExclude, uint16** snbExclude, ref IStorage pstgDest) CopyTo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsName, ref IStorage pstgDest, char16* pwcsNewName, uint32 grfFlags) MoveElementTo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, uint32 grfCommitFlags) Commit;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self) Revert;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, uint32 reserved1, void* reserved2, uint32 reserved3, out IEnumSTATSTG* ppenum) EnumElements;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsName) DestroyElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsOldName, char16* pwcsNewName) RenameElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, char16* pwcsName, in FileTime pctime, in FileTime patime, in FileTime pmtime) SetElementTimes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, in Guid clsid) SetClass;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, uint32 grfStateBits, uint32 grfMask) SetStateBits;
				public new function [CallingConvention(.Stdcall)] HResult(ref IStorage self, out STATSTG pstatstg, uint32 grfStatFlag) Stat;
			}
		}
		[CRepr]
		public struct IPersistStorage : IPersist
		{
			public const new Guid IID = .(0x0000010a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult IsDirty() mut => VT.IsDirty(ref this);
			public HResult InitNew(ref IStorage pStg) mut => VT.InitNew(ref this, ref pStg);
			public HResult Load(ref IStorage pStg) mut => VT.Load(ref this, ref pStg);
			public HResult Save(ref IStorage pStgSave, IntBool fSameAsLoad) mut => VT.Save(ref this, ref pStgSave, fSameAsLoad);
			public HResult SaveCompleted(ref IStorage pStgNew) mut => VT.SaveCompleted(ref this, ref pStgNew);
			public HResult HandsOffStorage() mut => VT.HandsOffStorage(ref this);

			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPersistStorage self) IsDirty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPersistStorage self, ref IStorage pStg) InitNew;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPersistStorage self, ref IStorage pStg) Load;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPersistStorage self, ref IStorage pStgSave, IntBool fSameAsLoad) Save;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPersistStorage self, ref IStorage pStgNew) SaveCompleted;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPersistStorage self) HandsOffStorage;
			}
		}
		[CRepr]
		public struct ILockBytes : IUnknown
		{
			public const new Guid IID = .(0x0000000a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReadAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbRead) mut => VT.ReadAt(ref this, ulOffset, pv, cb, pcbRead);
			public HResult WriteAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) mut => VT.WriteAt(ref this, ulOffset, pv, cb, pcbWritten);
			public HResult Flush() mut => VT.Flush(ref this);
			public HResult SetSize(ULARGE_INTEGER cb) mut => VT.SetSize(ref this, cb);
			public HResult LockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut => VT.LockRegion(ref this, libOffset, cb, dwLockType);
			public HResult UnlockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut => VT.UnlockRegion(ref this, libOffset, cb, dwLockType);
			public HResult Stat(out STATSTG pstatstg, uint32 grfStatFlag) mut => VT.Stat(ref this, out pstatstg, grfStatFlag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ILockBytes self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbRead) ReadAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILockBytes self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) WriteAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILockBytes self) Flush;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILockBytes self, ULARGE_INTEGER cb) SetSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILockBytes self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) LockRegion;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILockBytes self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) UnlockRegion;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILockBytes self, out STATSTG pstatstg, uint32 grfStatFlag) Stat;
			}
		}
		[CRepr]
		public struct IRootStorage : IUnknown
		{
			public const new Guid IID = .(0x00000012, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SwitchToFile(char16* pszFile) mut => VT.SwitchToFile(ref this, pszFile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IRootStorage self, char16* pszFile) SwitchToFile;
			}
		}
		[CRepr]
		public struct IFillLockBytes : IUnknown
		{
			public const new Guid IID = .(0x99caf010, 0x415e, 0x11cf, 0x88, 0x14, 0x00, 0xaa, 0x00, 0xb5, 0x69, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult FillAppend(void* pv, uint32 cb, out uint32 pcbWritten) mut => VT.FillAppend(ref this, pv, cb, out pcbWritten);
			public HResult FillAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, out uint32 pcbWritten) mut => VT.FillAt(ref this, ulOffset, pv, cb, out pcbWritten);
			public HResult SetFillSize(ULARGE_INTEGER ulSize) mut => VT.SetFillSize(ref this, ulSize);
			public HResult Terminate(IntBool bCanceled) mut => VT.Terminate(ref this, bCanceled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IFillLockBytes self, void* pv, uint32 cb, out uint32 pcbWritten) FillAppend;
				public new function [CallingConvention(.Stdcall)] HResult(ref IFillLockBytes self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, out uint32 pcbWritten) FillAt;
				public new function [CallingConvention(.Stdcall)] HResult(ref IFillLockBytes self, ULARGE_INTEGER ulSize) SetFillSize;
				public new function [CallingConvention(.Stdcall)] HResult(ref IFillLockBytes self, IntBool bCanceled) Terminate;
			}
		}
		[CRepr]
		public struct ILayoutStorage : IUnknown
		{
			public const new Guid IID = .(0x0e6d4d90, 0x6738, 0x11cf, 0x96, 0x08, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult LayoutScript(StorageLayout* pStorageLayout, uint32 nEntries, uint32 glfInterleavedFlag) mut => VT.LayoutScript(ref this, pStorageLayout, nEntries, glfInterleavedFlag);
			public HResult BeginMonitor() mut => VT.BeginMonitor(ref this);
			public HResult EndMonitor() mut => VT.EndMonitor(ref this);
			public HResult ReLayoutDocfile(char16* pwcsNewDfName) mut => VT.ReLayoutDocfile(ref this, pwcsNewDfName);
			public HResult ReLayoutDocfileOnILockBytes(ref ILockBytes pILockBytes) mut => VT.ReLayoutDocfileOnILockBytes(ref this, ref pILockBytes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref ILayoutStorage self, StorageLayout* pStorageLayout, uint32 nEntries, uint32 glfInterleavedFlag) LayoutScript;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILayoutStorage self) BeginMonitor;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILayoutStorage self) EndMonitor;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILayoutStorage self, char16* pwcsNewDfName) ReLayoutDocfile;
				public new function [CallingConvention(.Stdcall)] HResult(ref ILayoutStorage self, ref ILockBytes pILockBytes) ReLayoutDocfileOnILockBytes;
			}
		}
		[CRepr]
		public struct IDirectWriterLock : IUnknown
		{
			public const new Guid IID = .(0x0e6d4d92, 0x6738, 0x11cf, 0x96, 0x08, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult WaitForWriteAccess(uint32 dwTimeout) mut => VT.WaitForWriteAccess(ref this, dwTimeout);
			public HResult ReleaseWriteAccess() mut => VT.ReleaseWriteAccess(ref this);
			public HResult HaveWriteAccess() mut => VT.HaveWriteAccess(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IDirectWriterLock self, uint32 dwTimeout) WaitForWriteAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDirectWriterLock self) ReleaseWriteAccess;
				public new function [CallingConvention(.Stdcall)] HResult(ref IDirectWriterLock self) HaveWriteAccess;
			}
		}
		[CRepr]
		public struct IPropertyStorage : IUnknown
		{
			public const new Guid IID = .(0x00000138, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ReadMultiple(uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar) mut => VT.ReadMultiple(ref this, cpspec, rgpspec, rgpropvar);
			public HResult WriteMultiple(uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar, uint32 propidNameFirst) mut => VT.WriteMultiple(ref this, cpspec, rgpspec, rgpropvar, propidNameFirst);
			public HResult DeleteMultiple(uint32 cpspec, PROPSPEC* rgpspec) mut => VT.DeleteMultiple(ref this, cpspec, rgpspec);
			public HResult ReadPropertyNames(uint32 cpropid, uint32* rgpropid, char16** rglpwstrName) mut => VT.ReadPropertyNames(ref this, cpropid, rgpropid, rglpwstrName);
			public HResult WritePropertyNames(uint32 cpropid, uint32* rgpropid, char16** rglpwstrName) mut => VT.WritePropertyNames(ref this, cpropid, rgpropid, rglpwstrName);
			public HResult DeletePropertyNames(uint32 cpropid, uint32* rgpropid) mut => VT.DeletePropertyNames(ref this, cpropid, rgpropid);
			public HResult Commit(uint32 grfCommitFlags) mut => VT.Commit(ref this, grfCommitFlags);
			public HResult Revert() mut => VT.Revert(ref this);
			public HResult Enum(out IEnumSTATPROPSTG* ppenum) mut => VT.Enum(ref this, out ppenum);
			public HResult SetTimes(in FileTime pctime, in FileTime patime, in FileTime pmtime) mut => VT.SetTimes(ref this, pctime, patime, pmtime);
			public HResult SetClass(in Guid clsid) mut => VT.SetClass(ref this, clsid);
			public HResult Stat(out STATPROPSETSTG pstatpsstg) mut => VT.Stat(ref this, out pstatpsstg);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar) ReadMultiple;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar, uint32 propidNameFirst) WriteMultiple;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, uint32 cpspec, PROPSPEC* rgpspec) DeleteMultiple;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, uint32 cpropid, uint32* rgpropid, char16** rglpwstrName) ReadPropertyNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, uint32 cpropid, uint32* rgpropid, char16** rglpwstrName) WritePropertyNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, uint32 cpropid, uint32* rgpropid) DeletePropertyNames;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, uint32 grfCommitFlags) Commit;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self) Revert;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, out IEnumSTATPROPSTG* ppenum) Enum;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, in FileTime pctime, in FileTime patime, in FileTime pmtime) SetTimes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, in Guid clsid) SetClass;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyStorage self, out STATPROPSETSTG pstatpsstg) Stat;
			}
		}
		[CRepr]
		public struct IPropertySetStorage : IUnknown
		{
			public const new Guid IID = .(0x0000013a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Create(in Guid rfmtid, in Guid pclsid, uint32 grfFlags, uint32 grfMode, out IPropertyStorage* ppprstg) mut => VT.Create(ref this, rfmtid, pclsid, grfFlags, grfMode, out ppprstg);
			public HResult Open(in Guid rfmtid, uint32 grfMode, out IPropertyStorage* ppprstg) mut => VT.Open(ref this, rfmtid, grfMode, out ppprstg);
			public HResult Delete(in Guid rfmtid) mut => VT.Delete(ref this, rfmtid);
			public HResult Enum(out IEnumSTATPROPSETSTG* ppenum) mut => VT.Enum(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertySetStorage self, in Guid rfmtid, in Guid pclsid, uint32 grfFlags, uint32 grfMode, out IPropertyStorage* ppprstg) Create;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertySetStorage self, in Guid rfmtid, uint32 grfMode, out IPropertyStorage* ppprstg) Open;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertySetStorage self, in Guid rfmtid) Delete;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertySetStorage self, out IEnumSTATPROPSETSTG* ppenum) Enum;
			}
		}
		[CRepr]
		public struct IEnumSTATPROPSTG : IUnknown
		{
			public const new Guid IID = .(0x00000139, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Next(uint32 celt, STATPROPSTG* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HResult Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Clone(out IEnumSTATPROPSTG* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSTG self, uint32 celt, STATPROPSTG* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSTG self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSTG self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSTG self, out IEnumSTATPROPSTG* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSTATPROPSETSTG : IUnknown
		{
			public const new Guid IID = .(0x0000013b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Next(uint32 celt, STATPROPSETSTG* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HResult Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HResult Reset() mut => VT.Reset(ref this);
			public HResult Clone(out IEnumSTATPROPSETSTG* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSETSTG self, uint32 celt, STATPROPSETSTG* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSETSTG self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSETSTG self) Reset;
				public new function [CallingConvention(.Stdcall)] HResult(ref IEnumSTATPROPSETSTG self, out IEnumSTATPROPSETSTG* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IPropertyBag : IUnknown
		{
			public const new Guid IID = .(0x55272a00, 0x42cb, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Read(char16* pszPropName, out VARIANT pVar, ref IErrorLog pErrorLog) mut => VT.Read(ref this, pszPropName, out pVar, ref pErrorLog);
			public HResult Write(char16* pszPropName, ref VARIANT pVar) mut => VT.Write(ref this, pszPropName, ref pVar);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyBag self, char16* pszPropName, out VARIANT pVar, ref IErrorLog pErrorLog) Read;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyBag self, char16* pszPropName, ref VARIANT pVar) Write;
			}
		}
		[CRepr]
		public struct IPropertyBag2 : IUnknown
		{
			public const new Guid IID = .(0x22f55882, 0x280b, 0x11d0, 0xa8, 0xa9, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult Read(uint32 cProperties, PROPBAG2* pPropBag, ref IErrorLog pErrLog, VARIANT* pvarValue, HResult* phrError) mut => VT.Read(ref this, cProperties, pPropBag, ref pErrLog, pvarValue, phrError);
			public HResult Write(uint32 cProperties, PROPBAG2* pPropBag, VARIANT* pvarValue) mut => VT.Write(ref this, cProperties, pPropBag, pvarValue);
			public HResult CountProperties(out uint32 pcProperties) mut => VT.CountProperties(ref this, out pcProperties);
			public HResult GetPropertyInfo(uint32 iProperty, uint32 cProperties, PROPBAG2* pPropBag, out uint32 pcProperties) mut => VT.GetPropertyInfo(ref this, iProperty, cProperties, pPropBag, out pcProperties);
			public HResult LoadObject(char16* pstrName, uint32 dwHint, ref IUnknown pUnkObject, ref IErrorLog pErrLog) mut => VT.LoadObject(ref this, pstrName, dwHint, ref pUnkObject, ref pErrLog);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyBag2 self, uint32 cProperties, PROPBAG2* pPropBag, ref IErrorLog pErrLog, VARIANT* pvarValue, HResult* phrError) Read;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyBag2 self, uint32 cProperties, PROPBAG2* pPropBag, VARIANT* pvarValue) Write;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyBag2 self, out uint32 pcProperties) CountProperties;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyBag2 self, uint32 iProperty, uint32 cProperties, PROPBAG2* pPropBag, out uint32 pcProperties) GetPropertyInfo;
				public new function [CallingConvention(.Stdcall)] HResult(ref IPropertyBag2 self, char16* pstrName, uint32 dwHint, ref IUnknown pUnkObject, ref IErrorLog pErrLog) LoadObject;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CoGetInstanceFromFile(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown* punkOuter, CLSCTX dwClsCtx, uint32 grfMode, char16* pwszName, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CoGetInstanceFromIStorage(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown* punkOuter, CLSCTX dwClsCtx, ref IStorage pstg, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgOpenAsyncDocfileOnIFillLockBytes(ref IFillLockBytes pflb, uint32 grfMode, uint32 asyncFlags, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgGetIFillLockBytesOnILockBytes(ref ILockBytes pilb, out IFillLockBytes* ppflb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgGetIFillLockBytesOnFile(char16* pwcsName, out IFillLockBytes* ppflb);
		[Import("dflayout.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgOpenLayoutDocfile(char16* pwcsDfName, uint32 grfMode, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateStreamOnHGlobal(int hGlobal, IntBool fDeleteOnRelease, out IStream* ppstm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetHGlobalFromStream(ref IStream pstm, out int phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CoGetInterfaceAndReleaseStream(ref IStream pStm, in Guid iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PropVariantCopy(out PROPVARIANT pvarDest, in PROPVARIANT pvarSrc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PropVariantClear(out PROPVARIANT pvar);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult FreePropVariantArray(uint32 cVariants, PROPVARIANT* rgvars);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgCreateDocfile(char16* pwcsName, uint32 grfMode, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgCreateDocfileOnILockBytes(ref ILockBytes plkbyt, uint32 grfMode, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgOpenStorage(char16* pwcsName, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgOpenStorageOnILockBytes(ref ILockBytes plkbyt, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgIsStorageFile(char16* pwcsName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgIsStorageILockBytes(ref ILockBytes plkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgSetTimes(char16* lpszName, FileTime* pctime, FileTime* patime, FileTime* pmtime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgCreateStorageEx(char16* pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, in Guid riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgOpenStorageEx(char16* pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, in Guid riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgCreatePropStg(ref IUnknown pUnk, in Guid fmtid, in Guid pclsid, uint32 grfFlags, uint32 dwReserved, out IPropertyStorage* ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgOpenPropStg(ref IUnknown pUnk, in Guid fmtid, uint32 grfFlags, uint32 dwReserved, out IPropertyStorage* ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgCreatePropSetStg(ref IStorage pStorage, uint32 dwReserved, out IPropertySetStorage* ppPropSetStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult FmtIdToPropStgName(in Guid pfmtid, char16* oszName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult PropStgNameToFmtId(char16* oszName, out Guid pfmtid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult ReadClassStg(ref IStorage pStg, out Guid pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WriteClassStg(ref IStorage pStg, in Guid rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult ReadClassStm(ref IStream pStm, out Guid pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WriteClassStm(ref IStream pStm, in Guid rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetHGlobalFromILockBytes(ref ILockBytes plkbyt, out int phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateILockBytesOnHGlobal(int hGlobal, IntBool fDeleteOnRelease, out ILockBytes* pplkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult GetConvertStg(ref IStorage pStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERIALIZEDPROPERTYVALUE* StgConvertVariantToProperty(in PROPVARIANT pvar, uint16 CodePage, SERIALIZEDPROPERTYVALUE* pprop, out uint32 pcb, uint32 pid, bool fReserved, uint32* pcIndirect);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern bool StgConvertPropertyToVariant(in SERIALIZEDPROPERTYVALUE pprop, uint16 CodePage, out PROPVARIANT pvar, ref PMemoryAllocator pma);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StgPropertyLengthAsVariant(in SERIALIZEDPROPERTYVALUE pProp, uint32 cbProp, uint16 CodePage, uint8 bReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult WriteFmtUserTypeStg(ref IStorage pstg, uint16 cf, char16* lpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult ReadFmtUserTypeStg(ref IStorage pstg, out uint16 pcf, char16** lplpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult OleConvertOLESTREAMToIStorage(out OLESTREAM lpolestream, ref IStorage pstg, in DVTARGETDEVICE ptd);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult OleConvertIStorageToOLESTREAM(ref IStorage pstg, out OLESTREAM lpolestream);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult SetConvertStg(ref IStorage pStg, IntBool fConvert);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult OleConvertIStorageToOLESTREAMEx(ref IStorage pstg, uint16 cfFormat, int32 lWidth, int32 lHeight, uint32 dwSize, out STGMEDIUM pmedium, out OLESTREAM polestm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult OleConvertOLESTREAMToIStorageEx(out OLESTREAM polestm, ref IStorage pstg, out uint16 pcfFormat, out int32 plwWidth, out int32 plHeight, out uint32 pdwSize, out STGMEDIUM pmedium);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgSerializePropVariant(in PROPVARIANT ppropvar, out SERIALIZEDPROPERTYVALUE* ppProp, out uint32 pcb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult StgDeserializePropVariant(in SERIALIZEDPROPERTYVALUE pprop, uint32 cbMax, out PROPVARIANT ppropvar);
	}
	}
}
