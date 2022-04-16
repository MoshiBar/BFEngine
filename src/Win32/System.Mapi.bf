using System;

// namespace System.Mapi
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MAPI_OLE = 1;
		public const uint32 MAPI_OLE_STATIC = 2;
		public const uint32 MAPI_ORIG = 0;
		public const uint32 MAPI_TO = 1;
		public const uint32 MAPI_CC = 2;
		public const uint32 MAPI_BCC = 3;
		public const uint32 MAPI_UNREAD = 1;
		public const uint32 MAPI_RECEIPT_REQUESTED = 2;
		public const uint32 MAPI_SENT = 4;
		public const uint32 MAPI_LOGON_UI = 1;
		public const uint32 MAPI_PASSWORD_UI = 131072;
		public const uint32 MAPI_NEW_SESSION = 2;
		public const uint32 MAPI_FORCE_DOWNLOAD = 4096;
		public const uint32 MAPI_EXTENDED = 32;
		public const uint32 MAPI_DIALOG = 8;
		public const uint32 MAPI_FORCE_UNICODE = 262144;
		public const uint32 MAPI_UNREAD_ONLY = 32;
		public const uint32 MAPI_GUARANTEE_FIFO = 256;
		public const uint32 MAPI_LONG_MSGID = 16384;
		public const uint32 MAPI_PEEK = 128;
		public const uint32 MAPI_SUPPRESS_ATTACH = 2048;
		public const uint32 MAPI_ENVELOPE_ONLY = 64;
		public const uint32 MAPI_BODY_AS_FILE = 512;
		public const uint32 MAPI_AB_NOMODIFY = 1024;
		public const uint32 SUCCESS_SUCCESS = 0;
		public const uint32 MAPI_USER_ABORT = 1;
		public const uint32 MAPI_E_USER_ABORT = 1;
		public const uint32 MAPI_E_FAILURE = 2;
		public const uint32 MAPI_E_LOGON_FAILURE = 3;
		public const uint32 MAPI_E_LOGIN_FAILURE = 3;
		public const uint32 MAPI_E_DISK_FULL = 4;
		public const uint32 MAPI_E_INSUFFICIENT_MEMORY = 5;
		public const uint32 MAPI_E_ACCESS_DENIED = 6;
		public const uint32 MAPI_E_TOO_MANY_SESSIONS = 8;
		public const uint32 MAPI_E_TOO_MANY_FILES = 9;
		public const uint32 MAPI_E_TOO_MANY_RECIPIENTS = 10;
		public const uint32 MAPI_E_ATTACHMENT_NOT_FOUND = 11;
		public const uint32 MAPI_E_ATTACHMENT_OPEN_FAILURE = 12;
		public const uint32 MAPI_E_ATTACHMENT_WRITE_FAILURE = 13;
		public const uint32 MAPI_E_UNKNOWN_RECIPIENT = 14;
		public const uint32 MAPI_E_BAD_RECIPTYPE = 15;
		public const uint32 MAPI_E_NO_MESSAGES = 16;
		public const uint32 MAPI_E_INVALID_MESSAGE = 17;
		public const uint32 MAPI_E_TEXT_TOO_LARGE = 18;
		public const uint32 MAPI_E_INVALID_SESSION = 19;
		public const uint32 MAPI_E_TYPE_NOT_SUPPORTED = 20;
		public const uint32 MAPI_E_AMBIGUOUS_RECIPIENT = 21;
		public const uint32 MAPI_E_AMBIG_RECIP = 21;
		public const uint32 MAPI_E_MESSAGE_IN_USE = 22;
		public const uint32 MAPI_E_NETWORK_FAILURE = 23;
		public const uint32 MAPI_E_INVALID_EDITFIELDS = 24;
		public const uint32 MAPI_E_INVALID_RECIPS = 25;
		public const uint32 MAPI_E_NOT_SUPPORTED = 26;
		public const uint32 MAPI_E_UNICODE_NOT_SUPPORTED = 27;
		public const uint32 MAPI_E_ATTACHMENT_TOO_LARGE = 28;
		
		// --- Function Pointers ---
		
		public function uint32 LPMAPILOGON(uint ulUIParam, char8* lpszProfileName, char8* lpszPassword, uint32 flFlags, uint32 ulReserved, out uint lplhSession);
		public function uint32 LPMAPILOGOFF(uint lhSession, uint ulUIParam, uint32 flFlags, uint32 ulReserved);
		public function uint32 LPMAPISENDMAIL(uint lhSession, uint ulUIParam, out MapiMessage lpMessage, uint32 flFlags, uint32 ulReserved);
		public function uint32 LPMAPISENDMAILW(uint lhSession, uint ulUIParam, ref MapiMessageW lpMessage, uint32 flFlags, uint32 ulReserved);
		public function uint32 LPMAPISENDDOCUMENTS(uint ulUIParam, char8* lpszDelimChar, char8* lpszFilePaths, char8* lpszFileNames, uint32 ulReserved);
		public function uint32 LPMAPIFINDNEXT(uint lhSession, uint ulUIParam, char8* lpszMessageType, char8* lpszSeedMessageID, uint32 flFlags, uint32 ulReserved, char8* lpszMessageID);
		public function uint32 LPMAPIREADMAIL(uint lhSession, uint ulUIParam, char8* lpszMessageID, uint32 flFlags, uint32 ulReserved, out MapiMessage* lppMessage);
		public function uint32 LPMAPISAVEMAIL(uint lhSession, uint ulUIParam, out MapiMessage lpMessage, uint32 flFlags, uint32 ulReserved, char8* lpszMessageID);
		public function uint32 LPMAPIDELETEMAIL(uint lhSession, uint ulUIParam, char8* lpszMessageID, uint32 flFlags, uint32 ulReserved);
		public function uint32 LPMAPIFREEBUFFER(void* pv);
		public function uint32 LPMAPIADDRESS(uint lhSession, uint ulUIParam, char8* lpszCaption, uint32 nEditFields, char8* lpszLabels, uint32 nRecips, out MapiRecipDesc lpRecips, uint32 flFlags, uint32 ulReserved, out uint32 lpnNewRecips, out MapiRecipDesc* lppNewRecips);
		public function uint32 LPMAPIDETAILS(uint lhSession, uint ulUIParam, out MapiRecipDesc lpRecip, uint32 flFlags, uint32 ulReserved);
		public function uint32 LPMAPIRESOLVENAME(uint lhSession, uint ulUIParam, char8* lpszName, uint32 flFlags, uint32 ulReserved, out MapiRecipDesc* lppRecip);
		
		// --- Structs ---
		
		[CRepr]
		public struct MapiFileDesc
		{
			public uint32 ulReserved;
			public uint32 flFlags;
			public uint32 nPosition;
			public char8* lpszPathName;
			public char8* lpszFileName;
			public void* lpFileType;
		}
		[CRepr]
		public struct MapiFileDescW
		{
			public uint32 ulReserved;
			public uint32 flFlags;
			public uint32 nPosition;
			public char16* lpszPathName;
			public char16* lpszFileName;
			public void* lpFileType;
		}
		[CRepr]
		public struct MapiFileTagExt
		{
			public uint32 ulReserved;
			public uint32 cbTag;
			public uint8* lpTag;
			public uint32 cbEncoding;
			public uint8* lpEncoding;
		}
		[CRepr]
		public struct MapiRecipDesc
		{
			public uint32 ulReserved;
			public uint32 ulRecipClass;
			public char8* lpszName;
			public char8* lpszAddress;
			public uint32 ulEIDSize;
			public void* lpEntryID;
		}
		[CRepr]
		public struct MapiRecipDescW
		{
			public uint32 ulReserved;
			public uint32 ulRecipClass;
			public char16* lpszName;
			public char16* lpszAddress;
			public uint32 ulEIDSize;
			public void* lpEntryID;
		}
		[CRepr]
		public struct MapiMessage
		{
			public uint32 ulReserved;
			public char8* lpszSubject;
			public char8* lpszNoteText;
			public char8* lpszMessageType;
			public char8* lpszDateReceived;
			public char8* lpszConversationID;
			public uint32 flFlags;
			public MapiRecipDesc* lpOriginator;
			public uint32 nRecipCount;
			public MapiRecipDesc* lpRecips;
			public uint32 nFileCount;
			public MapiFileDesc* lpFiles;
		}
		[CRepr]
		public struct MapiMessageW
		{
			public uint32 ulReserved;
			public char16* lpszSubject;
			public char16* lpszNoteText;
			public char16* lpszMessageType;
			public char16* lpszDateReceived;
			public char16* lpszConversationID;
			public uint32 flFlags;
			public MapiRecipDescW* lpOriginator;
			public uint32 nRecipCount;
			public MapiRecipDescW* lpRecips;
			public uint32 nFileCount;
			public MapiFileDescW* lpFiles;
		}
		
		// --- Functions ---
		
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MAPIFreeBuffer(void* pv);
	}
}
