using System;

// namespace System.LibraryLoader
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FIND_RESOURCE_DIRECTORY_TYPES = 256;
		public const uint32 FIND_RESOURCE_DIRECTORY_NAMES = 512;
		public const uint32 FIND_RESOURCE_DIRECTORY_LANGUAGES = 1024;
		public const uint32 RESOURCE_ENUM_LN = 1;
		public const uint32 RESOURCE_ENUM_MUI = 2;
		public const uint32 RESOURCE_ENUM_MUI_SYSTEM = 4;
		public const uint32 RESOURCE_ENUM_VALIDATE = 8;
		public const uint32 RESOURCE_ENUM_MODULE_EXACT = 16;
		public const uint32 SUPPORT_LANG_NUMBER = 32;
		public const uint32 GET_MODULE_HANDLE_EX_FLAG_PIN = 1;
		public const uint32 GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT = 2;
		public const uint32 GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = 4;
		public const uint32 CURRENT_IMPORT_REDIRECTION_VERSION = 1;
		public const uint32 LOAD_LIBRARY_OS_INTEGRITY_CONTINUITY = 32768;
		
		// --- Enums ---
		
		public enum LOAD_LIBRARY_FLAGS : uint32
		{
			DONT_RESOLVE_DLL_REFERENCES = 1,
			LOAD_LIBRARY_AS_DATAFILE = 2,
			LOAD_WITH_ALTERED_SEARCH_PATH = 8,
			LOAD_IGNORE_CODE_AUTHZ_LEVEL = 16,
			LOAD_LIBRARY_AS_IMAGE_RESOURCE = 32,
			LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 64,
			LOAD_LIBRARY_REQUIRE_SIGNED_TARGET = 128,
			LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 256,
			LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 512,
			LOAD_LIBRARY_SEARCH_USER_DIRS = 1024,
			LOAD_LIBRARY_SEARCH_SYSTEM32 = 2048,
			LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 4096,
			LOAD_LIBRARY_SAFE_CURRENT_DIRS = 8192,
			LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER = 16384,
		}
		
		// --- Function Pointers ---
		
		public function IntBool ENUMRESLANGPROCA(HINSTANCE hModule, char8* lpType, char8* lpName, uint16 wLanguage, int lParam);
		public function IntBool ENUMRESLANGPROCW(HINSTANCE hModule, char16* lpType, char16* lpName, uint16 wLanguage, int lParam);
		public function IntBool ENUMRESNAMEPROCA(HINSTANCE hModule, char8* lpType, char8* lpName, int lParam);
		public function IntBool ENUMRESNAMEPROCW(HINSTANCE hModule, char16* lpType, char16* lpName, int lParam);
		public function IntBool ENUMRESTYPEPROCA(HINSTANCE hModule, char8* lpType, int lParam);
		public function IntBool ENUMRESTYPEPROCW(HINSTANCE hModule, char16* lpType, int lParam);
		public function IntBool PGET_MODULE_HANDLE_EXA(uint32 dwFlags, char8* lpModuleName, out HINSTANCE phModule);
		public function IntBool PGET_MODULE_HANDLE_EXW(uint32 dwFlags, char16* lpModuleName, out HINSTANCE phModule);
		
		// --- Structs ---
		
		[CRepr]
		public struct ENUMUILANG
		{
			public uint32 NumOfEnumUILang;
			public uint32 SizeOfEnumUIBuffer;
			public uint16* pEnumUIBuffer;
		}
		[CRepr]
		public struct REDIRECTION_FUNCTION_DESCRIPTOR
		{
			public char8* DllName;
			public char8* FunctionName;
			public void* RedirectionTarget;
		}
		[CRepr]
		public struct REDIRECTION_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 FunctionCount;
			public REDIRECTION_FUNCTION_DESCRIPTOR* Redirections;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool DisableThreadLibraryCalls(HINSTANCE hLibModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceExW(HINSTANCE hModule, char16* lpType, char16* lpName, uint16 wLanguage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FreeLibrary(HINSTANCE hLibModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeLibraryAndExitThread(HINSTANCE hLibModule, uint32 dwExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool FreeResource(int hResData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetModuleFileNameA(HINSTANCE hModule, uint8* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetModuleFileNameW(HINSTANCE hModule, char16* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE GetModuleHandleA(char8* lpModuleName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE GetModuleHandleW(char16* lpModuleName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetModuleHandleExA(uint32 dwFlags, char8* lpModuleName, out HINSTANCE phModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool GetModuleHandleExW(uint32 dwFlags, char16* lpModuleName, out HINSTANCE phModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FARPROC GetProcAddress(HINSTANCE hModule, char8* lpProcName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryExA(char8* lpLibFileName, Handle hFile, LOAD_LIBRARY_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryExW(char16* lpLibFileName, Handle hFile, LOAD_LIBRARY_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int LoadResource(HINSTANCE hModule, HRSRC hResInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* LockResource(int hResData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SizeofResource(HINSTANCE hModule, HRSRC hResInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* AddDllDirectory(char16* NewDirectory);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool RemoveDllDirectory(void* Cookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetDefaultDllDirectories(LOAD_LIBRARY_FLAGS DirectoryFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceLanguagesExA(HINSTANCE hModule, char8* lpType, char8* lpName, ENUMRESLANGPROCA lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceLanguagesExW(HINSTANCE hModule, char16* lpType, char16* lpName, ENUMRESLANGPROCW lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceNamesExA(HINSTANCE hModule, char8* lpType, ENUMRESNAMEPROCA lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceNamesExW(HINSTANCE hModule, char16* lpType, ENUMRESNAMEPROCW lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceTypesExA(HINSTANCE hModule, ENUMRESTYPEPROCA lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceTypesExW(HINSTANCE hModule, ENUMRESTYPEPROCW lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceW(HINSTANCE hModule, char16* lpName, char16* lpType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryA(char8* lpLibFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryW(char16* lpLibFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceNamesW(HINSTANCE hModule, char16* lpType, ENUMRESNAMEPROCW lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceNamesA(HINSTANCE hModule, char8* lpType, ENUMRESNAMEPROCA lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LoadModule(char8* lpModuleName, void* lpParameterBlock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadPackagedLibrary(char16* lpwLibFileName, uint32 Reserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceA(HINSTANCE hModule, char8* lpName, char8* lpType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceExA(HINSTANCE hModule, char8* lpType, char8* lpName, uint16 wLanguage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceTypesA(HINSTANCE hModule, ENUMRESTYPEPROCA lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceTypesW(HINSTANCE hModule, ENUMRESTYPEPROCW lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceLanguagesA(HINSTANCE hModule, char8* lpType, char8* lpName, ENUMRESLANGPROCA lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EnumResourceLanguagesW(HINSTANCE hModule, char16* lpType, char16* lpName, ENUMRESLANGPROCW lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle BeginUpdateResourceA(char8* pFileName, IntBool bDeleteExistingResources);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern Handle BeginUpdateResourceW(char16* pFileName, IntBool bDeleteExistingResources);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UpdateResourceA(Handle hUpdate, char8* lpType, char8* lpName, uint16 wLanguage, void* lpData, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool UpdateResourceW(Handle hUpdate, char16* lpType, char16* lpName, uint16 wLanguage, void* lpData, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EndUpdateResourceA(Handle hUpdate, IntBool fDiscard);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool EndUpdateResourceW(Handle hUpdate, IntBool fDiscard);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetDllDirectoryA(char8* lpPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IntBool SetDllDirectoryW(char16* lpPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDllDirectoryA(uint32 nBufferLength, uint8* lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDllDirectoryW(uint32 nBufferLength, char16* lpBuffer);
	}
}
