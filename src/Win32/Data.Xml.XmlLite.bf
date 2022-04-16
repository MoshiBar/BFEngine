using System;

// namespace Data.Xml.XmlLite
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid _IID_IXmlReader = .(0x7279fc81, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
		public const Guid _IID_IXmlWriter = .(0x7279fc88, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
		public const Guid _IID_IXmlResolver = .(0x7279fc82, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum XmlNodeType : int32
		{
			XmlNodeType_None = 0,
			XmlNodeType_Element = 1,
			XmlNodeType_Attribute = 2,
			XmlNodeType_Text = 3,
			XmlNodeType_CDATA = 4,
			XmlNodeType_ProcessingInstruction = 7,
			XmlNodeType_Comment = 8,
			XmlNodeType_DocumentType = 10,
			XmlNodeType_Whitespace = 13,
			XmlNodeType_EndElement = 15,
			XmlNodeType_XmlDeclaration = 17,
			_XmlNodeType_Last = 17,
		}
		[AllowDuplicates]
		public enum XmlConformanceLevel : int32
		{
			XmlConformanceLevel_Auto = 0,
			XmlConformanceLevel_Fragment = 1,
			XmlConformanceLevel_Document = 2,
			_XmlConformanceLevel_Last = 2,
		}
		[AllowDuplicates]
		public enum DtdProcessing : int32
		{
			DtdProcessing_Prohibit = 0,
			DtdProcessing_Parse = 1,
			_DtdProcessing_Last = 1,
		}
		public enum XmlReadState : int32
		{
			Initial = 0,
			Interactive = 1,
			Error = 2,
			EndOfFile = 3,
			Closed = 4,
		}
		[AllowDuplicates]
		public enum XmlReaderProperty : int32
		{
			XmlReaderProperty_MultiLanguage = 0,
			XmlReaderProperty_ConformanceLevel = 1,
			XmlReaderProperty_RandomAccess = 2,
			XmlReaderProperty_XmlResolver = 3,
			XmlReaderProperty_DtdProcessing = 4,
			XmlReaderProperty_ReadState = 5,
			XmlReaderProperty_MaxElementDepth = 6,
			XmlReaderProperty_MaxEntityExpansion = 7,
			_XmlReaderProperty_Last = 7,
		}
		public enum XmlError : int32
		{
			MX_E_MX = -1072894464,
			MX_E_INPUTEND = -1072894463,
			MX_E_ENCODING = -1072894462,
			MX_E_ENCODINGSWITCH = -1072894461,
			MX_E_ENCODINGSIGNATURE = -1072894460,
			WC_E_WC = -1072894432,
			WC_E_WHITESPACE = -1072894431,
			WC_E_SEMICOLON = -1072894430,
			WC_E_GREATERTHAN = -1072894429,
			WC_E_QUOTE = -1072894428,
			WC_E_EQUAL = -1072894427,
			WC_E_LESSTHAN = -1072894426,
			WC_E_HEXDIGIT = -1072894425,
			WC_E_DIGIT = -1072894424,
			WC_E_LEFTBRACKET = -1072894423,
			WC_E_LEFTPAREN = -1072894422,
			WC_E_XMLCHARACTER = -1072894421,
			WC_E_NAMECHARACTER = -1072894420,
			WC_E_SYNTAX = -1072894419,
			WC_E_CDSECT = -1072894418,
			WC_E_COMMENT = -1072894417,
			WC_E_CONDSECT = -1072894416,
			WC_E_DECLATTLIST = -1072894415,
			WC_E_DECLDOCTYPE = -1072894414,
			WC_E_DECLELEMENT = -1072894413,
			WC_E_DECLENTITY = -1072894412,
			WC_E_DECLNOTATION = -1072894411,
			WC_E_NDATA = -1072894410,
			WC_E_PUBLIC = -1072894409,
			WC_E_SYSTEM = -1072894408,
			WC_E_NAME = -1072894407,
			WC_E_ROOTELEMENT = -1072894406,
			WC_E_ELEMENTMATCH = -1072894405,
			WC_E_UNIQUEATTRIBUTE = -1072894404,
			WC_E_TEXTXMLDECL = -1072894403,
			WC_E_LEADINGXML = -1072894402,
			WC_E_TEXTDECL = -1072894401,
			WC_E_XMLDECL = -1072894400,
			WC_E_ENCNAME = -1072894399,
			WC_E_PUBLICID = -1072894398,
			WC_E_PESINTERNALSUBSET = -1072894397,
			WC_E_PESBETWEENDECLS = -1072894396,
			WC_E_NORECURSION = -1072894395,
			WC_E_ENTITYCONTENT = -1072894394,
			WC_E_UNDECLAREDENTITY = -1072894393,
			WC_E_PARSEDENTITY = -1072894392,
			WC_E_NOEXTERNALENTITYREF = -1072894391,
			WC_E_PI = -1072894390,
			WC_E_SYSTEMID = -1072894389,
			WC_E_QUESTIONMARK = -1072894388,
			WC_E_CDSECTEND = -1072894387,
			WC_E_MOREDATA = -1072894386,
			WC_E_DTDPROHIBITED = -1072894385,
			WC_E_INVALIDXMLSPACE = -1072894384,
			NC_E_NC = -1072894368,
			NC_E_QNAMECHARACTER = -1072894367,
			NC_E_QNAMECOLON = -1072894366,
			NC_E_NAMECOLON = -1072894365,
			NC_E_DECLAREDPREFIX = -1072894364,
			NC_E_UNDECLAREDPREFIX = -1072894363,
			NC_E_EMPTYURI = -1072894362,
			NC_E_XMLPREFIXRESERVED = -1072894361,
			NC_E_XMLNSPREFIXRESERVED = -1072894360,
			NC_E_XMLURIRESERVED = -1072894359,
			NC_E_XMLNSURIRESERVED = -1072894358,
			SC_E_SC = -1072894336,
			SC_E_MAXELEMENTDEPTH = -1072894335,
			SC_E_MAXENTITYEXPANSION = -1072894334,
			WR_E_WR = -1072894208,
			WR_E_NONWHITESPACE = -1072894207,
			WR_E_NSPREFIXDECLARED = -1072894206,
			WR_E_NSPREFIXWITHEMPTYNSURI = -1072894205,
			WR_E_DUPLICATEATTRIBUTE = -1072894204,
			WR_E_XMLNSPREFIXDECLARATION = -1072894203,
			WR_E_XMLPREFIXDECLARATION = -1072894202,
			WR_E_XMLURIDECLARATION = -1072894201,
			WR_E_XMLNSURIDECLARATION = -1072894200,
			WR_E_NAMESPACEUNDECLARED = -1072894199,
			WR_E_INVALIDXMLSPACE = -1072894198,
			WR_E_INVALIDACTION = -1072894197,
			WR_E_INVALIDSURROGATEPAIR = -1072894196,
			XML_E_INVALID_DECIMAL = -1072898019,
			XML_E_INVALID_HEXIDECIMAL = -1072898018,
			XML_E_INVALID_UNICODE = -1072898017,
			XML_E_INVALIDENCODING = -1072897938,
		}
		[AllowDuplicates]
		public enum XmlStandalone : int32
		{
			XmlStandalone_Omit = 0,
			XmlStandalone_Yes = 1,
			XmlStandalone_No = 2,
			_XmlStandalone_Last = 2,
		}
		[AllowDuplicates]
		public enum XmlWriterProperty : int32
		{
			XmlWriterProperty_MultiLanguage = 0,
			XmlWriterProperty_Indent = 1,
			XmlWriterProperty_ByteOrderMark = 2,
			XmlWriterProperty_OmitXmlDeclaration = 3,
			XmlWriterProperty_ConformanceLevel = 4,
			XmlWriterProperty_CompactEmptyElement = 5,
			_XmlWriterProperty_Last = 5,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IXmlReader : IUnknown
		{
			public const new Guid IID = .(0x7279fc81, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetInput(IUnknown* pInput) mut => VT.SetInput(ref this, pInput);
			public HResult GetProperty(uint32 nProperty, out int ppValue) mut => VT.GetProperty(ref this, nProperty, out ppValue);
			public HResult SetProperty(uint32 nProperty, int pValue) mut => VT.SetProperty(ref this, nProperty, pValue);
			public HResult Read(XmlNodeType* pNodeType) mut => VT.Read(ref this, pNodeType);
			public HResult GetNodeType(out XmlNodeType pNodeType) mut => VT.GetNodeType(ref this, out pNodeType);
			public HResult MoveToFirstAttribute() mut => VT.MoveToFirstAttribute(ref this);
			public HResult MoveToNextAttribute() mut => VT.MoveToNextAttribute(ref this);
			public HResult MoveToAttributeByName(char16* pwszLocalName, char16* pwszNamespaceUri) mut => VT.MoveToAttributeByName(ref this, pwszLocalName, pwszNamespaceUri);
			public HResult MoveToElement() mut => VT.MoveToElement(ref this);
			public HResult GetQualifiedName(PWSTR* ppwszQualifiedName, uint32* pcwchQualifiedName) mut => VT.GetQualifiedName(ref this, ppwszQualifiedName, pcwchQualifiedName);
			public HResult GetNamespaceUri(PWSTR* ppwszNamespaceUri, uint32* pcwchNamespaceUri) mut => VT.GetNamespaceUri(ref this, ppwszNamespaceUri, pcwchNamespaceUri);
			public HResult GetLocalName(PWSTR* ppwszLocalName, uint32* pcwchLocalName) mut => VT.GetLocalName(ref this, ppwszLocalName, pcwchLocalName);
			public HResult GetPrefix(PWSTR* ppwszPrefix, uint32* pcwchPrefix) mut => VT.GetPrefix(ref this, ppwszPrefix, pcwchPrefix);
			public HResult GetValue(PWSTR* ppwszValue, uint32* pcwchValue) mut => VT.GetValue(ref this, ppwszValue, pcwchValue);
			public HResult ReadValueChunk(char16* pwchBuffer, uint32 cwchChunkSize, out uint32 pcwchRead) mut => VT.ReadValueChunk(ref this, pwchBuffer, cwchChunkSize, out pcwchRead);
			public HResult GetBaseUri(PWSTR* ppwszBaseUri, uint32* pcwchBaseUri) mut => VT.GetBaseUri(ref this, ppwszBaseUri, pcwchBaseUri);
			public IntBool IsDefault() mut => VT.IsDefault(ref this);
			public IntBool IsEmptyElement() mut => VT.IsEmptyElement(ref this);
			public HResult GetLineNumber(out uint32 pnLineNumber) mut => VT.GetLineNumber(ref this, out pnLineNumber);
			public HResult GetLinePosition(out uint32 pnLinePosition) mut => VT.GetLinePosition(ref this, out pnLinePosition);
			public HResult GetAttributeCount(out uint32 pnAttributeCount) mut => VT.GetAttributeCount(ref this, out pnAttributeCount);
			public HResult GetDepth(out uint32 pnDepth) mut => VT.GetDepth(ref this, out pnDepth);
			public IntBool IsEOF() mut => VT.IsEOF(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, IUnknown* pInput) SetInput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, uint32 nProperty, out int ppValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, uint32 nProperty, int pValue) SetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, XmlNodeType* pNodeType) Read;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, out XmlNodeType pNodeType) GetNodeType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self) MoveToFirstAttribute;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self) MoveToNextAttribute;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16* pwszLocalName, char16* pwszNamespaceUri) MoveToAttributeByName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self) MoveToElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16** ppwszQualifiedName, uint32* pcwchQualifiedName) GetQualifiedName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16** ppwszNamespaceUri, uint32* pcwchNamespaceUri) GetNamespaceUri;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16** ppwszLocalName, uint32* pcwchLocalName) GetLocalName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16** ppwszPrefix, uint32* pcwchPrefix) GetPrefix;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16** ppwszValue, uint32* pcwchValue) GetValue;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16* pwchBuffer, uint32 cwchChunkSize, out uint32 pcwchRead) ReadValueChunk;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, char16** ppwszBaseUri, uint32* pcwchBaseUri) GetBaseUri;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IXmlReader self) IsDefault;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IXmlReader self) IsEmptyElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, out uint32 pnLineNumber) GetLineNumber;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, out uint32 pnLinePosition) GetLinePosition;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, out uint32 pnAttributeCount) GetAttributeCount;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlReader self, out uint32 pnDepth) GetDepth;
				public new function [CallingConvention(.Stdcall)] IntBool(ref IXmlReader self) IsEOF;
			}
		}
		[CRepr]
		public struct IXmlResolver : IUnknown
		{
			public const new Guid IID = .(0x7279fc82, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult ResolveUri(char16* pwszBaseUri, char16* pwszPublicIdentifier, char16* pwszSystemIdentifier, out IUnknown* ppResolvedInput) mut => VT.ResolveUri(ref this, pwszBaseUri, pwszPublicIdentifier, pwszSystemIdentifier, out ppResolvedInput);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlResolver self, char16* pwszBaseUri, char16* pwszPublicIdentifier, char16* pwszSystemIdentifier, out IUnknown* ppResolvedInput) ResolveUri;
			}
		}
		[CRepr]
		public struct IXmlWriter : IUnknown
		{
			public const new Guid IID = .(0x7279fc88, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOutput(IUnknown* pOutput) mut => VT.SetOutput(ref this, pOutput);
			public HResult GetProperty(uint32 nProperty, out int ppValue) mut => VT.GetProperty(ref this, nProperty, out ppValue);
			public HResult SetProperty(uint32 nProperty, int pValue) mut => VT.SetProperty(ref this, nProperty, pValue);
			public HResult WriteAttributes(ref IXmlReader pReader, IntBool fWriteDefaultAttributes) mut => VT.WriteAttributes(ref this, ref pReader, fWriteDefaultAttributes);
			public HResult WriteAttributeString(char16* pwszPrefix, char16* pwszLocalName, char16* pwszNamespaceUri, char16* pwszValue) mut => VT.WriteAttributeString(ref this, pwszPrefix, pwszLocalName, pwszNamespaceUri, pwszValue);
			public HResult WriteCData(char16* pwszText) mut => VT.WriteCData(ref this, pwszText);
			public HResult WriteCharEntity(char16 wch) mut => VT.WriteCharEntity(ref this, wch);
			public HResult WriteChars(char16* pwch, uint32 cwch) mut => VT.WriteChars(ref this, pwch, cwch);
			public HResult WriteComment(char16* pwszComment) mut => VT.WriteComment(ref this, pwszComment);
			public HResult WriteDocType(char16* pwszName, char16* pwszPublicId, char16* pwszSystemId, char16* pwszSubset) mut => VT.WriteDocType(ref this, pwszName, pwszPublicId, pwszSystemId, pwszSubset);
			public HResult WriteElementString(char16* pwszPrefix, char16* pwszLocalName, char16* pwszNamespaceUri, char16* pwszValue) mut => VT.WriteElementString(ref this, pwszPrefix, pwszLocalName, pwszNamespaceUri, pwszValue);
			public HResult WriteEndDocument() mut => VT.WriteEndDocument(ref this);
			public HResult WriteEndElement() mut => VT.WriteEndElement(ref this);
			public HResult WriteEntityRef(char16* pwszName) mut => VT.WriteEntityRef(ref this, pwszName);
			public HResult WriteFullEndElement() mut => VT.WriteFullEndElement(ref this);
			public HResult WriteName(char16* pwszName) mut => VT.WriteName(ref this, pwszName);
			public HResult WriteNmToken(char16* pwszNmToken) mut => VT.WriteNmToken(ref this, pwszNmToken);
			public HResult WriteNode(ref IXmlReader pReader, IntBool fWriteDefaultAttributes) mut => VT.WriteNode(ref this, ref pReader, fWriteDefaultAttributes);
			public HResult WriteNodeShallow(ref IXmlReader pReader, IntBool fWriteDefaultAttributes) mut => VT.WriteNodeShallow(ref this, ref pReader, fWriteDefaultAttributes);
			public HResult WriteProcessingInstruction(char16* pwszName, char16* pwszText) mut => VT.WriteProcessingInstruction(ref this, pwszName, pwszText);
			public HResult WriteQualifiedName(char16* pwszLocalName, char16* pwszNamespaceUri) mut => VT.WriteQualifiedName(ref this, pwszLocalName, pwszNamespaceUri);
			public HResult WriteRaw(char16* pwszData) mut => VT.WriteRaw(ref this, pwszData);
			public HResult WriteRawChars(char16* pwch, uint32 cwch) mut => VT.WriteRawChars(ref this, pwch, cwch);
			public HResult WriteStartDocument(XmlStandalone standalone) mut => VT.WriteStartDocument(ref this, standalone);
			public HResult WriteStartElement(char16* pwszPrefix, char16* pwszLocalName, char16* pwszNamespaceUri) mut => VT.WriteStartElement(ref this, pwszPrefix, pwszLocalName, pwszNamespaceUri);
			public HResult WriteString(char16* pwszText) mut => VT.WriteString(ref this, pwszText);
			public HResult WriteSurrogateCharEntity(char16 wchLow, char16 wchHigh) mut => VT.WriteSurrogateCharEntity(ref this, wchLow, wchHigh);
			public HResult WriteWhitespace(char16* pwszWhitespace) mut => VT.WriteWhitespace(ref this, pwszWhitespace);
			public HResult Flush() mut => VT.Flush(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, IUnknown* pOutput) SetOutput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, uint32 nProperty, out int ppValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, uint32 nProperty, int pValue) SetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, ref IXmlReader pReader, IntBool fWriteDefaultAttributes) WriteAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszPrefix, char16* pwszLocalName, char16* pwszNamespaceUri, char16* pwszValue) WriteAttributeString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszText) WriteCData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16 wch) WriteCharEntity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwch, uint32 cwch) WriteChars;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszComment) WriteComment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszName, char16* pwszPublicId, char16* pwszSystemId, char16* pwszSubset) WriteDocType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszPrefix, char16* pwszLocalName, char16* pwszNamespaceUri, char16* pwszValue) WriteElementString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self) WriteEndDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self) WriteEndElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszName) WriteEntityRef;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self) WriteFullEndElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszName) WriteName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszNmToken) WriteNmToken;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, ref IXmlReader pReader, IntBool fWriteDefaultAttributes) WriteNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, ref IXmlReader pReader, IntBool fWriteDefaultAttributes) WriteNodeShallow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszName, char16* pwszText) WriteProcessingInstruction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszLocalName, char16* pwszNamespaceUri) WriteQualifiedName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszData) WriteRaw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwch, uint32 cwch) WriteRawChars;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, XmlStandalone standalone) WriteStartDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszPrefix, char16* pwszLocalName, char16* pwszNamespaceUri) WriteStartElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszText) WriteString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16 wchLow, char16 wchHigh) WriteSurrogateCharEntity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self, char16* pwszWhitespace) WriteWhitespace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriter self) Flush;
			}
		}
		[CRepr]
		public struct IXmlWriterLite : IUnknown
		{
			public const new Guid IID = .(0x862494c6, 0x1310, 0x4aad, 0xb3, 0xcd, 0x2d, 0xbe, 0xeb, 0xf6, 0x70, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HResult SetOutput(IUnknown* pOutput) mut => VT.SetOutput(ref this, pOutput);
			public HResult GetProperty(uint32 nProperty, out int ppValue) mut => VT.GetProperty(ref this, nProperty, out ppValue);
			public HResult SetProperty(uint32 nProperty, int pValue) mut => VT.SetProperty(ref this, nProperty, pValue);
			public HResult WriteAttributes(ref IXmlReader pReader, IntBool fWriteDefaultAttributes) mut => VT.WriteAttributes(ref this, ref pReader, fWriteDefaultAttributes);
			public HResult WriteAttributeString(char16* pwszQName, uint32 cwszQName, char16* pwszValue, uint32 cwszValue) mut => VT.WriteAttributeString(ref this, pwszQName, cwszQName, pwszValue, cwszValue);
			public HResult WriteCData(char16* pwszText) mut => VT.WriteCData(ref this, pwszText);
			public HResult WriteCharEntity(char16 wch) mut => VT.WriteCharEntity(ref this, wch);
			public HResult WriteChars(char16* pwch, uint32 cwch) mut => VT.WriteChars(ref this, pwch, cwch);
			public HResult WriteComment(char16* pwszComment) mut => VT.WriteComment(ref this, pwszComment);
			public HResult WriteDocType(char16* pwszName, char16* pwszPublicId, char16* pwszSystemId, char16* pwszSubset) mut => VT.WriteDocType(ref this, pwszName, pwszPublicId, pwszSystemId, pwszSubset);
			public HResult WriteElementString(char16* pwszQName, uint32 cwszQName, char16* pwszValue) mut => VT.WriteElementString(ref this, pwszQName, cwszQName, pwszValue);
			public HResult WriteEndDocument() mut => VT.WriteEndDocument(ref this);
			public HResult WriteEndElement(char16* pwszQName, uint32 cwszQName) mut => VT.WriteEndElement(ref this, pwszQName, cwszQName);
			public HResult WriteEntityRef(char16* pwszName) mut => VT.WriteEntityRef(ref this, pwszName);
			public HResult WriteFullEndElement(char16* pwszQName, uint32 cwszQName) mut => VT.WriteFullEndElement(ref this, pwszQName, cwszQName);
			public HResult WriteName(char16* pwszName) mut => VT.WriteName(ref this, pwszName);
			public HResult WriteNmToken(char16* pwszNmToken) mut => VT.WriteNmToken(ref this, pwszNmToken);
			public HResult WriteNode(ref IXmlReader pReader, IntBool fWriteDefaultAttributes) mut => VT.WriteNode(ref this, ref pReader, fWriteDefaultAttributes);
			public HResult WriteNodeShallow(ref IXmlReader pReader, IntBool fWriteDefaultAttributes) mut => VT.WriteNodeShallow(ref this, ref pReader, fWriteDefaultAttributes);
			public HResult WriteProcessingInstruction(char16* pwszName, char16* pwszText) mut => VT.WriteProcessingInstruction(ref this, pwszName, pwszText);
			public HResult WriteRaw(char16* pwszData) mut => VT.WriteRaw(ref this, pwszData);
			public HResult WriteRawChars(char16* pwch, uint32 cwch) mut => VT.WriteRawChars(ref this, pwch, cwch);
			public HResult WriteStartDocument(XmlStandalone standalone) mut => VT.WriteStartDocument(ref this, standalone);
			public HResult WriteStartElement(char16* pwszQName, uint32 cwszQName) mut => VT.WriteStartElement(ref this, pwszQName, cwszQName);
			public HResult WriteString(char16* pwszText) mut => VT.WriteString(ref this, pwszText);
			public HResult WriteSurrogateCharEntity(char16 wchLow, char16 wchHigh) mut => VT.WriteSurrogateCharEntity(ref this, wchLow, wchHigh);
			public HResult WriteWhitespace(char16* pwszWhitespace) mut => VT.WriteWhitespace(ref this, pwszWhitespace);
			public HResult Flush() mut => VT.Flush(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, IUnknown* pOutput) SetOutput;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, uint32 nProperty, out int ppValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, uint32 nProperty, int pValue) SetProperty;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, ref IXmlReader pReader, IntBool fWriteDefaultAttributes) WriteAttributes;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszQName, uint32 cwszQName, char16* pwszValue, uint32 cwszValue) WriteAttributeString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszText) WriteCData;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16 wch) WriteCharEntity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwch, uint32 cwch) WriteChars;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszComment) WriteComment;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszName, char16* pwszPublicId, char16* pwszSystemId, char16* pwszSubset) WriteDocType;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszQName, uint32 cwszQName, char16* pwszValue) WriteElementString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self) WriteEndDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszQName, uint32 cwszQName) WriteEndElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszName) WriteEntityRef;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszQName, uint32 cwszQName) WriteFullEndElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszName) WriteName;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszNmToken) WriteNmToken;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, ref IXmlReader pReader, IntBool fWriteDefaultAttributes) WriteNode;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, ref IXmlReader pReader, IntBool fWriteDefaultAttributes) WriteNodeShallow;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszName, char16* pwszText) WriteProcessingInstruction;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszData) WriteRaw;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwch, uint32 cwch) WriteRawChars;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, XmlStandalone standalone) WriteStartDocument;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszQName, uint32 cwszQName) WriteStartElement;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszText) WriteString;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16 wchLow, char16 wchHigh) WriteSurrogateCharEntity;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self, char16* pwszWhitespace) WriteWhitespace;
				public new function [CallingConvention(.Stdcall)] HResult(ref IXmlWriterLite self) Flush;
			}
		}
		
		// --- Functions ---
		
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateXmlReader(in Guid riid, void** ppvObject, IMalloc* pMalloc);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateXmlReaderInputWithEncodingCodePage(ref IUnknown pInputStream, IMalloc* pMalloc, uint32 nEncodingCodePage, IntBool fEncodingHint, char16* pwszBaseUri, out IUnknown* ppInput);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateXmlReaderInputWithEncodingName(ref IUnknown pInputStream, IMalloc* pMalloc, char16* pwszEncodingName, IntBool fEncodingHint, char16* pwszBaseUri, out IUnknown* ppInput);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateXmlWriter(in Guid riid, void** ppvObject, IMalloc* pMalloc);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateXmlWriterOutputWithEncodingCodePage(ref IUnknown pOutputStream, IMalloc* pMalloc, uint32 nEncodingCodePage, out IUnknown* ppOutput);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HResult CreateXmlWriterOutputWithEncodingName(ref IUnknown pOutputStream, IMalloc* pMalloc, char16* pwszEncodingName, out IUnknown* ppOutput);
	}
}
