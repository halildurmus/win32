/// {@category Enum}
class DtdProcessing {
  static const DtdProcessing_Prohibit = 0x00000000;
  static const DtdProcessing_Parse = 0x00000001;
  static const DtdProcessing_Last = 0x00000001;
}

/// {@category Enum}
class XmlConformanceLevel {
  static const XmlConformanceLevel_Auto = 0x00000000;
  static const XmlConformanceLevel_Fragment = 0x00000001;
  static const XmlConformanceLevel_Document = 0x00000002;
  static const XmlConformanceLevel_Last = 0x00000002;
}

/// {@category Enum}
class XmlError {
  static const MX_E_MX = 0xc00cee00;
  static const MX_E_INPUTEND = 0xc00cee01;
  static const MX_E_ENCODING = 0xc00cee02;
  static const MX_E_ENCODINGSWITCH = 0xc00cee03;
  static const MX_E_ENCODINGSIGNATURE = 0xc00cee04;
  static const WC_E_WC = 0xc00cee20;
  static const WC_E_WHITESPACE = 0xc00cee21;
  static const WC_E_SEMICOLON = 0xc00cee22;
  static const WC_E_GREATERTHAN = 0xc00cee23;
  static const WC_E_QUOTE = 0xc00cee24;
  static const WC_E_EQUAL = 0xc00cee25;
  static const WC_E_LESSTHAN = 0xc00cee26;
  static const WC_E_HEXDIGIT = 0xc00cee27;
  static const WC_E_DIGIT = 0xc00cee28;
  static const WC_E_LEFTBRACKET = 0xc00cee29;
  static const WC_E_LEFTPAREN = 0xc00cee2a;
  static const WC_E_XMLCHARACTER = 0xc00cee2b;
  static const WC_E_NAMECHARACTER = 0xc00cee2c;
  static const WC_E_SYNTAX = 0xc00cee2d;
  static const WC_E_CDSECT = 0xc00cee2e;
  static const WC_E_COMMENT = 0xc00cee2f;
  static const WC_E_CONDSECT = 0xc00cee30;
  static const WC_E_DECLATTLIST = 0xc00cee31;
  static const WC_E_DECLDOCTYPE = 0xc00cee32;
  static const WC_E_DECLELEMENT = 0xc00cee33;
  static const WC_E_DECLENTITY = 0xc00cee34;
  static const WC_E_DECLNOTATION = 0xc00cee35;
  static const WC_E_NDATA = 0xc00cee36;
  static const WC_E_PUBLIC = 0xc00cee37;
  static const WC_E_SYSTEM = 0xc00cee38;
  static const WC_E_NAME = 0xc00cee39;
  static const WC_E_ROOTELEMENT = 0xc00cee3a;
  static const WC_E_ELEMENTMATCH = 0xc00cee3b;
  static const WC_E_UNIQUEATTRIBUTE = 0xc00cee3c;
  static const WC_E_TEXTXMLDECL = 0xc00cee3d;
  static const WC_E_LEADINGXML = 0xc00cee3e;
  static const WC_E_TEXTDECL = 0xc00cee3f;
  static const WC_E_XMLDECL = 0xc00cee40;
  static const WC_E_ENCNAME = 0xc00cee41;
  static const WC_E_PUBLICID = 0xc00cee42;
  static const WC_E_PESINTERNALSUBSET = 0xc00cee43;
  static const WC_E_PESBETWEENDECLS = 0xc00cee44;
  static const WC_E_NORECURSION = 0xc00cee45;
  static const WC_E_ENTITYCONTENT = 0xc00cee46;
  static const WC_E_UNDECLAREDENTITY = 0xc00cee47;
  static const WC_E_PARSEDENTITY = 0xc00cee48;
  static const WC_E_NOEXTERNALENTITYREF = 0xc00cee49;
  static const WC_E_PI = 0xc00cee4a;
  static const WC_E_SYSTEMID = 0xc00cee4b;
  static const WC_E_QUESTIONMARK = 0xc00cee4c;
  static const WC_E_CDSECTEND = 0xc00cee4d;
  static const WC_E_MOREDATA = 0xc00cee4e;
  static const WC_E_DTDPROHIBITED = 0xc00cee4f;
  static const WC_E_INVALIDXMLSPACE = 0xc00cee50;
  static const NC_E_NC = 0xc00cee60;
  static const NC_E_QNAMECHARACTER = 0xc00cee61;
  static const NC_E_QNAMECOLON = 0xc00cee62;
  static const NC_E_NAMECOLON = 0xc00cee63;
  static const NC_E_DECLAREDPREFIX = 0xc00cee64;
  static const NC_E_UNDECLAREDPREFIX = 0xc00cee65;
  static const NC_E_EMPTYURI = 0xc00cee66;
  static const NC_E_XMLPREFIXRESERVED = 0xc00cee67;
  static const NC_E_XMLNSPREFIXRESERVED = 0xc00cee68;
  static const NC_E_XMLURIRESERVED = 0xc00cee69;
  static const NC_E_XMLNSURIRESERVED = 0xc00cee6a;
  static const SC_E_SC = 0xc00cee80;
  static const SC_E_MAXELEMENTDEPTH = 0xc00cee81;
  static const SC_E_MAXENTITYEXPANSION = 0xc00cee82;
  static const WR_E_WR = 0xc00cef00;
  static const WR_E_NONWHITESPACE = 0xc00cef01;
  static const WR_E_NSPREFIXDECLARED = 0xc00cef02;
  static const WR_E_NSPREFIXWITHEMPTYNSURI = 0xc00cef03;
  static const WR_E_DUPLICATEATTRIBUTE = 0xc00cef04;
  static const WR_E_XMLNSPREFIXDECLARATION = 0xc00cef05;
  static const WR_E_XMLPREFIXDECLARATION = 0xc00cef06;
  static const WR_E_XMLURIDECLARATION = 0xc00cef07;
  static const WR_E_XMLNSURIDECLARATION = 0xc00cef08;
  static const WR_E_NAMESPACEUNDECLARED = 0xc00cef09;
  static const WR_E_INVALIDXMLSPACE = 0xc00cef0a;
  static const WR_E_INVALIDACTION = 0xc00cef0b;
  static const WR_E_INVALIDSURROGATEPAIR = 0xc00cef0c;
  static const XML_E_INVALID_DECIMAL = 0xc00ce01d;
  static const XML_E_INVALID_HEXIDECIMAL = 0xc00ce01e;
  static const XML_E_INVALID_UNICODE = 0xc00ce01f;
  static const XML_E_INVALIDENCODING = 0xc00ce06e;
}

/// {@category Enum}
class XmlNodeType {
  static const XmlNodeType_None = 0x00000000;
  static const XmlNodeType_Element = 0x00000001;
  static const XmlNodeType_Attribute = 0x00000002;
  static const XmlNodeType_Text = 0x00000003;
  static const XmlNodeType_CDATA = 0x00000004;
  static const XmlNodeType_ProcessingInstruction = 0x00000007;
  static const XmlNodeType_Comment = 0x00000008;
  static const XmlNodeType_DocumentType = 0x0000000a;
  static const XmlNodeType_Whitespace = 0x0000000d;
  static const XmlNodeType_EndElement = 0x0000000f;
  static const XmlNodeType_XmlDeclaration = 0x00000011;
  static const XmlNodeType_Last = 0x00000011;
}

/// {@category Enum}
class XmlReadState {
  static const XmlReadState_Initial = 0x00000000;
  static const XmlReadState_Interactive = 0x00000001;
  static const XmlReadState_Error = 0x00000002;
  static const XmlReadState_EndOfFile = 0x00000003;
  static const XmlReadState_Closed = 0x00000004;
}

/// {@category Enum}
class XmlReaderProperty {
  static const XmlReaderProperty_MultiLanguage = 0x00000000;
  static const XmlReaderProperty_ConformanceLevel = 0x00000001;
  static const XmlReaderProperty_RandomAccess = 0x00000002;
  static const XmlReaderProperty_XmlResolver = 0x00000003;
  static const XmlReaderProperty_DtdProcessing = 0x00000004;
  static const XmlReaderProperty_ReadState = 0x00000005;
  static const XmlReaderProperty_MaxElementDepth = 0x00000006;
  static const XmlReaderProperty_MaxEntityExpansion = 0x00000007;
  static const XmlReaderProperty_Last = 0x00000007;
}

/// {@category Enum}
class XmlStandalone {
  static const XmlStandalone_Omit = 0x00000000;
  static const XmlStandalone_Yes = 0x00000001;
  static const XmlStandalone_No = 0x00000002;
  static const XmlStandalone_Last = 0x00000002;
}

/// {@category Enum}
class XmlWriterProperty {
  static const XmlWriterProperty_MultiLanguage = 0x00000000;
  static const XmlWriterProperty_Indent = 0x00000001;
  static const XmlWriterProperty_ByteOrderMark = 0x00000002;
  static const XmlWriterProperty_OmitXmlDeclaration = 0x00000003;
  static const XmlWriterProperty_ConformanceLevel = 0x00000004;
  static const XmlWriterProperty_CompactEmptyElement = 0x00000005;
  static const XmlWriterProperty_Last = 0x00000005;
}
