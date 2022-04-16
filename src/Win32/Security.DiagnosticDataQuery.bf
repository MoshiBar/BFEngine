using System;

// namespace Security.DiagnosticDataQuery
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum DdqAccessLevel : int32
		{
			NoData = 0,
			CurrentUserData = 1,
			AllUserData = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DIAGNOSTIC_DATA_RECORD
		{
			public int64 rowId;
			public uint64 timestamp;
			public uint64 eventKeywords;
			public char16* fullEventName;
			public char16* providerGroupGuid;
			public char16* producerName;
			public int32* privacyTags;
			public uint32 privacyTagCount;
			public int32* categoryIds;
			public uint32 categoryIdCount;
			public IntBool isCoreData;
			public char16* extra1;
			public char16* extra2;
			public char16* extra3;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_SEARCH_CRITERIA
		{
			public char16** producerNames;
			public uint32 producerNameCount;
			public char16* textToMatch;
			public int32* categoryIds;
			public uint32 categoryIdCount;
			public int32* privacyTags;
			public uint32 privacyTagCount;
			public IntBool coreDataOnly;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION
		{
			public int32 privacyTag;
			public char16* name;
			public char16* description;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION
		{
			public char16* name;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION
		{
			public int32 id;
			public char16* name;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_TAG_STATS
		{
			public int32 privacyTag;
			public uint32 eventCount;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_BINARY_STATS
		{
			public char16* moduleName;
			public char16* friendlyModuleName;
			public uint32 eventCount;
			public uint64 uploadSizeBytes;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_GENERAL_STATS
		{
			public uint32 optInLevel;
			public uint64 transcriptSizeBytes;
			public uint64 oldestEventTimestamp;
			public uint32 totalEventCountLast24Hours;
			public float averageDailyEvents;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION
		{
			public uint32 hoursOfHistoryToKeep;
			public uint32 maxStoreMegabytes;
			public uint32 requestedMaxStoreMegabytes;
		}
		[CRepr]
		public struct DIAGNOSTIC_REPORT_PARAMETER
		{
			public char16[129] name;
			public char16[260] value;
		}
		[CRepr]
		public struct DIAGNOSTIC_REPORT_SIGNATURE
		{
			public char16[65] eventName;
			public DIAGNOSTIC_REPORT_PARAMETER[10] parameters;
		}
		[CRepr]
		public struct DIAGNOSTIC_REPORT_DATA
		{
			public DIAGNOSTIC_REPORT_SIGNATURE signature;
			public Guid bucketId;
			public Guid reportId;
			public FileTime creationTime;
			public uint64 sizeInBytes;
			public char16* cabId;
			public uint32 reportStatus;
			public Guid reportIntegratorId;
			public char16** fileNames;
			public uint32 fileCount;
			public char16* friendlyEventName;
			public char16* applicationName;
			public char16* applicationPath;
			public char16* description;
			public char16* bucketIdString;
			public uint64 legacyBucketId;
			public char16* reportKey;
		}
		
		// --- Functions ---
		
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqCreateSession(DdqAccessLevel accessLevel, out HDIAGNOSTIC_DATA_QUERY_SESSION hSession);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqCloseSession(HDIAGNOSTIC_DATA_QUERY_SESSION hSession);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetSessionAccessLevel(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, out DdqAccessLevel accessLevel);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticDataAccessLevelAllowed(out DdqAccessLevel accessLevel);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordStats(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, in DIAGNOSTIC_DATA_SEARCH_CRITERIA searchCriteria, out uint32 recordCount, out int64 minRowId, out int64 maxRowId);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordPayload(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, int64 rowId, out char16* payload);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordLocaleTags(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, char16* locale, out HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqFreeDiagnosticRecordLocaleTags(HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordLocaleTagAtIndex(HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription, uint32 index, out DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION tagDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordLocaleTagCount(HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription, out uint32 tagDescriptionCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordProducers(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, out HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqFreeDiagnosticRecordProducers(HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordProducerAtIndex(HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription, uint32 index, out DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION producerDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordProducerCount(HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription, out uint32 producerDescriptionCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordProducerCategories(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, char16* producerName, out HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqFreeDiagnosticRecordProducerCategories(HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordCategoryAtIndex(HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription, uint32 index, out DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION categoryDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordCategoryCount(HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription, out uint32 categoryDescriptionCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqIsDiagnosticRecordSampledIn(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, in Guid providerGroup, Guid* providerId, char16* providerName, uint32* eventId, char16* eventName, uint32* eventVersion, uint64* eventKeywords, out IntBool isSampledIn);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordPage(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, ref DIAGNOSTIC_DATA_SEARCH_CRITERIA searchCriteria, uint32 offset, uint32 pageRecordCount, int64 baseRowId, out HDIAGNOSTIC_RECORD hRecord);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqFreeDiagnosticRecordPage(HDIAGNOSTIC_RECORD hRecord);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordAtIndex(HDIAGNOSTIC_RECORD hRecord, uint32 index, out DIAGNOSTIC_DATA_RECORD record);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordCount(HDIAGNOSTIC_RECORD hRecord, out uint32 recordCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticReportStoreReportCount(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, uint32 reportStoreType, out uint32 reportCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqCancelDiagnosticRecordOperation(HDIAGNOSTIC_DATA_QUERY_SESSION hSession);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticReport(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, uint32 reportStoreType, out HDIAGNOSTIC_REPORT hReport);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqFreeDiagnosticReport(HDIAGNOSTIC_REPORT hReport);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticReportAtIndex(HDIAGNOSTIC_REPORT hReport, uint32 index, out DIAGNOSTIC_REPORT_DATA report);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticReportCount(HDIAGNOSTIC_REPORT hReport, out uint32 reportCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqExtractDiagnosticReport(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, uint32 reportStoreType, char16* reportKey, char16* destinationPath);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordTagDistribution(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, char16** producerNames, uint32 producerNameCount, DIAGNOSTIC_DATA_EVENT_TAG_STATS** tagStats, out uint32 statCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordBinaryDistribution(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, char16** producerNames, uint32 producerNameCount, uint32 topNBinaries, DIAGNOSTIC_DATA_EVENT_BINARY_STATS** binaryStats, out uint32 statCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetDiagnosticRecordSummary(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, char16** producerNames, uint32 producerNameCount, out DIAGNOSTIC_DATA_GENERAL_STATS generalStats);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqSetTranscriptConfiguration(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, in DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION desiredConfig);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult DdqGetTranscriptConfiguration(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, out DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION currentConfig);
	}
}
