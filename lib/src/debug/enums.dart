/// {@category Enum}
class WCT_OBJECT_TYPE {
  static const WctCriticalSectionType = 0x00000001;
  static const WctSendMessageType = 0x00000002;
  static const WctMutexType = 0x00000003;
  static const WctAlpcType = 0x00000004;
  static const WctComType = 0x00000005;
  static const WctThreadWaitType = 0x00000006;
  static const WctProcessWaitType = 0x00000007;
  static const WctThreadType = 0x00000008;
  static const WctComActivationType = 0x00000009;
  static const WctUnknownType = 0x0000000a;
  static const WctSocketIoType = 0x0000000b;
  static const WctSmbIoType = 0x0000000c;
  static const WctMaxType = 0x0000000d;
}

/// {@category Enum}
class WCT_OBJECT_STATUS {
  static const WctStatusNoAccess = 0x00000001;
  static const WctStatusRunning = 0x00000002;
  static const WctStatusBlocked = 0x00000003;
  static const WctStatusPidOnly = 0x00000004;
  static const WctStatusPidOnlyRpcss = 0x00000005;
  static const WctStatusOwned = 0x00000006;
  static const WctStatusNotOwned = 0x00000007;
  static const WctStatusAbandoned = 0x00000008;
  static const WctStatusUnknown = 0x00000009;
  static const WctStatusError = 0x0000000a;
  static const WctStatusMax = 0x0000000b;
}

/// {@category Enum}
class MINIDUMP_STREAM_TYPE {
  static const UnusedStream = 0x00000000;
  static const ReservedStream0 = 0x00000001;
  static const ReservedStream1 = 0x00000002;
  static const ThreadListStream = 0x00000003;
  static const ModuleListStream = 0x00000004;
  static const MemoryListStream = 0x00000005;
  static const ExceptionStream = 0x00000006;
  static const SystemInfoStream = 0x00000007;
  static const ThreadExListStream = 0x00000008;
  static const Memory64ListStream = 0x00000009;
  static const CommentStreamA = 0x0000000a;
  static const CommentStreamW = 0x0000000b;
  static const HandleDataStream = 0x0000000c;
  static const FunctionTableStream = 0x0000000d;
  static const UnloadedModuleListStream = 0x0000000e;
  static const MiscInfoStream = 0x0000000f;
  static const MemoryInfoListStream = 0x00000010;
  static const ThreadInfoListStream = 0x00000011;
  static const HandleOperationListStream = 0x00000012;
  static const TokenStream = 0x00000013;
  static const JavaScriptDataStream = 0x00000014;
  static const SystemMemoryInfoStream = 0x00000015;
  static const ProcessVmCountersStream = 0x00000016;
  static const IptTraceStream = 0x00000017;
  static const ThreadNamesStream = 0x00000018;
  static const ceStreamNull = 0x00008000;
  static const ceStreamSystemInfo = 0x00008001;
  static const ceStreamException = 0x00008002;
  static const ceStreamModuleList = 0x00008003;
  static const ceStreamProcessList = 0x00008004;
  static const ceStreamThreadList = 0x00008005;
  static const ceStreamThreadContextList = 0x00008006;
  static const ceStreamThreadCallStackList = 0x00008007;
  static const ceStreamMemoryVirtualList = 0x00008008;
  static const ceStreamMemoryPhysicalList = 0x00008009;
  static const ceStreamBucketParameters = 0x0000800a;
  static const ceStreamProcessModuleMap = 0x0000800b;
  static const ceStreamDiagnosisList = 0x0000800c;
  static const LastReservedStream = 0x0000ffff;
}

/// {@category Enum}
class MINIDUMP_HANDLE_OBJECT_INFORMATION_TYPE {
  static const MiniHandleObjectInformationNone = 0x00000000;
  static const MiniThreadInformation1 = 0x00000001;
  static const MiniMutantInformation1 = 0x00000002;
  static const MiniMutantInformation2 = 0x00000003;
  static const MiniProcessInformation1 = 0x00000004;
  static const MiniProcessInformation2 = 0x00000005;
  static const MiniEventInformation1 = 0x00000006;
  static const MiniSectionInformation1 = 0x00000007;
  static const MiniSemaphoreInformation1 = 0x00000008;
  static const MiniHandleObjectInformationTypeMax = 0x00000009;
}

/// {@category Enum}
class MINIDUMP_CALLBACK_TYPE {
  static const ModuleCallback = 0x00000000;
  static const ThreadCallback = 0x00000001;
  static const ThreadExCallback = 0x00000002;
  static const IncludeThreadCallback = 0x00000003;
  static const IncludeModuleCallback = 0x00000004;
  static const MemoryCallback = 0x00000005;
  static const CancelCallback = 0x00000006;
  static const WriteKernelMinidumpCallback = 0x00000007;
  static const KernelMinidumpStatusCallback = 0x00000008;
  static const RemoveMemoryCallback = 0x00000009;
  static const IncludeVmRegionCallback = 0x0000000a;
  static const IoStartCallback = 0x0000000b;
  static const IoWriteAllCallback = 0x0000000c;
  static const IoFinishCallback = 0x0000000d;
  static const ReadMemoryFailureCallback = 0x0000000e;
  static const SecondaryFlagsCallback = 0x0000000f;
  static const IsProcessSnapshotCallback = 0x00000010;
  static const VmStartCallback = 0x00000011;
  static const VmQueryCallback = 0x00000012;
  static const VmPreReadCallback = 0x00000013;
  static const VmPostReadCallback = 0x00000014;
}

/// {@category Enum}
class THREAD_WRITE_FLAGS {
  static const ThreadWriteThread = 0x00000001;
  static const ThreadWriteStack = 0x00000002;
  static const ThreadWriteContext = 0x00000004;
  static const ThreadWriteBackingStore = 0x00000008;
  static const ThreadWriteInstructionWindow = 0x00000010;
  static const ThreadWriteThreadData = 0x00000020;
  static const ThreadWriteThreadInfo = 0x00000040;
}

/// {@category Enum}
class MODULE_WRITE_FLAGS {
  static const ModuleWriteModule = 0x00000001;
  static const ModuleWriteDataSeg = 0x00000002;
  static const ModuleWriteMiscRecord = 0x00000004;
  static const ModuleWriteCvRecord = 0x00000008;
  static const ModuleReferencedByMemory = 0x00000010;
  static const ModuleWriteTlsData = 0x00000020;
  static const ModuleWriteCodeSegs = 0x00000040;
}

/// {@category Enum}
class MINIDUMP_TYPE {
  static const MiniDumpNormal = 0x00000000;
  static const MiniDumpWithDataSegs = 0x00000001;
  static const MiniDumpWithFullMemory = 0x00000002;
  static const MiniDumpWithHandleData = 0x00000004;
  static const MiniDumpFilterMemory = 0x00000008;
  static const MiniDumpScanMemory = 0x00000010;
  static const MiniDumpWithUnloadedModules = 0x00000020;
  static const MiniDumpWithIndirectlyReferencedMemory = 0x00000040;
  static const MiniDumpFilterModulePaths = 0x00000080;
  static const MiniDumpWithProcessThreadData = 0x00000100;
  static const MiniDumpWithPrivateReadWriteMemory = 0x00000200;
  static const MiniDumpWithoutOptionalData = 0x00000400;
  static const MiniDumpWithFullMemoryInfo = 0x00000800;
  static const MiniDumpWithThreadInfo = 0x00001000;
  static const MiniDumpWithCodeSegs = 0x00002000;
  static const MiniDumpWithoutAuxiliaryState = 0x00004000;
  static const MiniDumpWithFullAuxiliaryState = 0x00008000;
  static const MiniDumpWithPrivateWriteCopyMemory = 0x00010000;
  static const MiniDumpIgnoreInaccessibleMemory = 0x00020000;
  static const MiniDumpWithTokenInformation = 0x00040000;
  static const MiniDumpWithModuleHeaders = 0x00080000;
  static const MiniDumpFilterTriage = 0x00100000;
  static const MiniDumpWithAvxXStateContext = 0x00200000;
  static const MiniDumpWithIptTrace = 0x00400000;
  static const MiniDumpScanInaccessiblePartialPages = 0x00800000;
  static const MiniDumpValidTypeFlags = 0x00ffffff;
}

/// {@category Enum}
class MINIDUMP_SECONDARY_FLAGS {
  static const MiniSecondaryWithoutPowerInfo = 0x00000001;
  static const MiniSecondaryValidFlags = 0x00000001;
}

/// {@category Enum}
class SCRIPTLANGUAGEVERSION {
  static const SCRIPTLANGUAGEVERSION_DEFAULT = 0x00000000;
  static const SCRIPTLANGUAGEVERSION_5_7 = 0x00000001;
  static const SCRIPTLANGUAGEVERSION_5_8 = 0x00000002;
  static const SCRIPTLANGUAGEVERSION_MAX = 0x000000ff;
}

/// {@category Enum}
class SCRIPTSTATE {
  static const SCRIPTSTATE_UNINITIALIZED = 0x00000000;
  static const SCRIPTSTATE_INITIALIZED = 0x00000005;
  static const SCRIPTSTATE_STARTED = 0x00000001;
  static const SCRIPTSTATE_CONNECTED = 0x00000002;
  static const SCRIPTSTATE_DISCONNECTED = 0x00000003;
  static const SCRIPTSTATE_CLOSED = 0x00000004;
}

/// {@category Enum}
class SCRIPTTRACEINFO {
  static const SCRIPTTRACEINFO_SCRIPTSTART = 0x00000000;
  static const SCRIPTTRACEINFO_SCRIPTEND = 0x00000001;
  static const SCRIPTTRACEINFO_COMCALLSTART = 0x00000002;
  static const SCRIPTTRACEINFO_COMCALLEND = 0x00000003;
  static const SCRIPTTRACEINFO_CREATEOBJSTART = 0x00000004;
  static const SCRIPTTRACEINFO_CREATEOBJEND = 0x00000005;
  static const SCRIPTTRACEINFO_GETOBJSTART = 0x00000006;
  static const SCRIPTTRACEINFO_GETOBJEND = 0x00000007;
}

/// {@category Enum}
class SCRIPTTHREADSTATE {
  static const SCRIPTTHREADSTATE_NOTINSCRIPT = 0x00000000;
  static const SCRIPTTHREADSTATE_RUNNING = 0x00000001;
}

/// {@category Enum}
class SCRIPTGCTYPE {
  static const SCRIPTGCTYPE_NORMAL = 0x00000000;
  static const SCRIPTGCTYPE_EXHAUSTIVE = 0x00000001;
}

/// {@category Enum}
class SCRIPTUICITEM {
  static const SCRIPTUICITEM_INPUTBOX = 0x00000001;
  static const SCRIPTUICITEM_MSGBOX = 0x00000002;
}

/// {@category Enum}
class SCRIPTUICHANDLING {
  static const SCRIPTUICHANDLING_ALLOW = 0x00000000;
  static const SCRIPTUICHANDLING_NOUIERROR = 0x00000001;
  static const SCRIPTUICHANDLING_NOUIDEFAULT = 0x00000002;
}

/// {@category Enum}
class tagOBJECT_ATTRIB_FLAG {
  static const OBJECT_ATTRIB_NO_ATTRIB = 0x00000000;
  static const OBJECT_ATTRIB_NO_NAME = 0x00000001;
  static const OBJECT_ATTRIB_NO_TYPE = 0x00000002;
  static const OBJECT_ATTRIB_NO_VALUE = 0x00000004;
  static const OBJECT_ATTRIB_VALUE_IS_INVALID = 0x00000008;
  static const OBJECT_ATTRIB_VALUE_IS_OBJECT = 0x00000010;
  static const OBJECT_ATTRIB_VALUE_IS_ENUM = 0x00000020;
  static const OBJECT_ATTRIB_VALUE_IS_CUSTOM = 0x00000040;
  static const OBJECT_ATTRIB_OBJECT_IS_EXPANDABLE = 0x00000070;
  static const OBJECT_ATTRIB_VALUE_HAS_CODE = 0x00000080;
  static const OBJECT_ATTRIB_TYPE_IS_OBJECT = 0x00000100;
  static const OBJECT_ATTRIB_TYPE_HAS_CODE = 0x00000200;
  static const OBJECT_ATTRIB_TYPE_IS_EXPANDABLE = 0x00000100;
  static const OBJECT_ATTRIB_SLOT_IS_CATEGORY = 0x00000400;
  static const OBJECT_ATTRIB_VALUE_READONLY = 0x00000800;
  static const OBJECT_ATTRIB_ACCESS_PUBLIC = 0x00001000;
  static const OBJECT_ATTRIB_ACCESS_PRIVATE = 0x00002000;
  static const OBJECT_ATTRIB_ACCESS_PROTECTED = 0x00004000;
  static const OBJECT_ATTRIB_ACCESS_FINAL = 0x00008000;
  static const OBJECT_ATTRIB_STORAGE_GLOBAL = 0x00010000;
  static const OBJECT_ATTRIB_STORAGE_STATIC = 0x00020000;
  static const OBJECT_ATTRIB_STORAGE_FIELD = 0x00040000;
  static const OBJECT_ATTRIB_STORAGE_VIRTUAL = 0x00080000;
  static const OBJECT_ATTRIB_TYPE_IS_CONSTANT = 0x00100000;
  static const OBJECT_ATTRIB_TYPE_IS_SYNCHRONIZED = 0x00200000;
  static const OBJECT_ATTRIB_TYPE_IS_VOLATILE = 0x00400000;
  static const OBJECT_ATTRIB_HAS_EXTENDED_ATTRIBS = 0x00800000;
  static const OBJECT_ATTRIB_IS_CLASS = 0x01000000;
  static const OBJECT_ATTRIB_IS_FUNCTION = 0x02000000;
  static const OBJECT_ATTRIB_IS_VARIABLE = 0x04000000;
  static const OBJECT_ATTRIB_IS_PROPERTY = 0x08000000;
  static const OBJECT_ATTRIB_IS_MACRO = 0x10000000;
  static const OBJECT_ATTRIB_IS_TYPE = 0x20000000;
  static const OBJECT_ATTRIB_IS_INHERITED = 0x40000000;
  static const OBJECT_ATTRIB_IS_INTERFACE = 0x80000000;
}

/// {@category Enum}
class PROP_INFO_FLAGS {
  static const PROP_INFO_NAME = 0x00000001;
  static const PROP_INFO_TYPE = 0x00000002;
  static const PROP_INFO_VALUE = 0x00000004;
  static const PROP_INFO_FULLNAME = 0x00000020;
  static const PROP_INFO_ATTRIBUTES = 0x00000008;
  static const PROP_INFO_DEBUGPROP = 0x00000010;
  static const PROP_INFO_AUTOEXPAND = 0x08000000;
}

/// {@category Enum}
class EX_PROP_INFO_FLAGS {
  static const EX_PROP_INFO_ID = 0x00000100;
  static const EX_PROP_INFO_NTYPE = 0x00000200;
  static const EX_PROP_INFO_NVALUE = 0x00000400;
  static const EX_PROP_INFO_LOCKBYTES = 0x00000800;
  static const EX_PROP_INFO_DEBUGEXTPROP = 0x00001000;
}

/// {@category Enum}
class BREAKPOINT_STATE {
  static const BREAKPOINT_DELETED = 0x00000000;
  static const BREAKPOINT_DISABLED = 0x00000001;
  static const BREAKPOINT_ENABLED = 0x00000002;
}

/// {@category Enum}
class BREAKREASON {
  static const BREAKREASON_STEP = 0x00000000;
  static const BREAKREASON_BREAKPOINT = 0x00000001;
  static const BREAKREASON_DEBUGGER_BLOCK = 0x00000002;
  static const BREAKREASON_HOST_INITIATED = 0x00000003;
  static const BREAKREASON_LANGUAGE_INITIATED = 0x00000004;
  static const BREAKREASON_DEBUGGER_HALT = 0x00000005;
  static const BREAKREASON_ERROR = 0x00000006;
  static const BREAKREASON_JIT = 0x00000007;
  static const BREAKREASON_MUTATION_BREAKPOINT = 0x00000008;
}

/// {@category Enum}
class tagBREAKRESUME_ACTION {
  static const BREAKRESUMEACTION_ABORT = 0x00000000;
  static const BREAKRESUMEACTION_CONTINUE = 0x00000001;
  static const BREAKRESUMEACTION_STEP_INTO = 0x00000002;
  static const BREAKRESUMEACTION_STEP_OVER = 0x00000003;
  static const BREAKRESUMEACTION_STEP_OUT = 0x00000004;
  static const BREAKRESUMEACTION_IGNORE = 0x00000005;
  static const BREAKRESUMEACTION_STEP_DOCUMENT = 0x00000006;
}

/// {@category Enum}
class ERRORRESUMEACTION {
  static const ERRORRESUMEACTION_ReexecuteErrorStatement = 0x00000000;
  static const ERRORRESUMEACTION_AbortCallAndReturnErrorToCaller = 0x00000001;
  static const ERRORRESUMEACTION_SkipErrorStatement = 0x00000002;
}

/// {@category Enum}
class DOCUMENTNAMETYPE {
  static const DOCUMENTNAMETYPE_APPNODE = 0x00000000;
  static const DOCUMENTNAMETYPE_TITLE = 0x00000001;
  static const DOCUMENTNAMETYPE_FILE_TAIL = 0x00000002;
  static const DOCUMENTNAMETYPE_URL = 0x00000003;
  static const DOCUMENTNAMETYPE_UNIQUE_TITLE = 0x00000004;
  static const DOCUMENTNAMETYPE_SOURCE_MAP_URL = 0x00000005;
}

/// {@category Enum}
class htmlDesignMode {
  static const htmlDesignModeInherit = 0xfffffffe;
  static const htmlDesignModeOn = 0xffffffff;
  static const htmlDesignModeOff = 0x00000000;
  static const htmlDesignMode_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlZOrder {
  static const htmlZOrderFront = 0x00000000;
  static const htmlZOrderBack = 0x00000001;
  static const htmlZOrder_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlClear {
  static const htmlClearNotSet = 0x00000000;
  static const htmlClearAll = 0x00000001;
  static const htmlClearLeft = 0x00000002;
  static const htmlClearRight = 0x00000003;
  static const htmlClearBoth = 0x00000004;
  static const htmlClearNone = 0x00000005;
  static const htmlClear_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlControlAlign {
  static const htmlControlAlignNotSet = 0x00000000;
  static const htmlControlAlignLeft = 0x00000001;
  static const htmlControlAlignCenter = 0x00000002;
  static const htmlControlAlignRight = 0x00000003;
  static const htmlControlAlignTextTop = 0x00000004;
  static const htmlControlAlignAbsMiddle = 0x00000005;
  static const htmlControlAlignBaseline = 0x00000006;
  static const htmlControlAlignAbsBottom = 0x00000007;
  static const htmlControlAlignBottom = 0x00000008;
  static const htmlControlAlignMiddle = 0x00000009;
  static const htmlControlAlignTop = 0x0000000a;
  static const htmlControlAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlBlockAlign {
  static const htmlBlockAlignNotSet = 0x00000000;
  static const htmlBlockAlignLeft = 0x00000001;
  static const htmlBlockAlignCenter = 0x00000002;
  static const htmlBlockAlignRight = 0x00000003;
  static const htmlBlockAlignJustify = 0x00000004;
  static const htmlBlockAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlReadyState {
  static const htmlReadyStateuninitialized = 0x00000000;
  static const htmlReadyStateloading = 0x00000001;
  static const htmlReadyStateloaded = 0x00000002;
  static const htmlReadyStateinteractive = 0x00000003;
  static const htmlReadyStatecomplete = 0x00000004;
  static const htmlReadyState_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlLoop {
  static const htmlLoopLoopInfinite = 0xffffffff;
  static const htmlLoop_Max = 0x7fffffff;
}

/// {@category Enum}
class mediaType {
  static const mediaTypeNotSet = 0x00000000;
  static const mediaTypeAll = 0x000001ff;
  static const mediaTypeAural = 0x00000001;
  static const mediaTypeBraille = 0x00000002;
  static const mediaTypeEmbossed = 0x00000004;
  static const mediaTypeHandheld = 0x00000008;
  static const mediaTypePrint = 0x00000010;
  static const mediaTypeProjection = 0x00000020;
  static const mediaTypeScreen = 0x00000040;
  static const mediaTypeTty = 0x00000080;
  static const mediaTypeTv = 0x00000100;
  static const mediaType_Max = 0x7fffffff;
}

/// {@category Enum}
class DomConstructor {
  static const DomConstructorObject = 0x00000000;
  static const DomConstructorAttr = 0x00000001;
  static const DomConstructorBehaviorUrnsCollection = 0x00000002;
  static const DomConstructorBookmarkCollection = 0x00000003;
  static const DomConstructorCompatibleInfo = 0x00000004;
  static const DomConstructorCompatibleInfoCollection = 0x00000005;
  static const DomConstructorControlRangeCollection = 0x00000006;
  static const DomConstructorCSSCurrentStyleDeclaration = 0x00000007;
  static const DomConstructorCSSRuleList = 0x00000008;
  static const DomConstructorCSSRuleStyleDeclaration = 0x00000009;
  static const DomConstructorCSSStyleDeclaration = 0x0000000a;
  static const DomConstructorCSSStyleRule = 0x0000000b;
  static const DomConstructorCSSStyleSheet = 0x0000000c;
  static const DomConstructorDataTransfer = 0x0000000d;
  static const DomConstructorDOMImplementation = 0x0000000e;
  static const DomConstructorElement = 0x0000000f;
  static const DomConstructorEvent = 0x00000010;
  static const DomConstructorHistory = 0x00000011;
  static const DomConstructorHTCElementBehaviorDefaults = 0x00000012;
  static const DomConstructorHTMLAnchorElement = 0x00000013;
  static const DomConstructorHTMLAreaElement = 0x00000014;
  static const DomConstructorHTMLAreasCollection = 0x00000015;
  static const DomConstructorHTMLBaseElement = 0x00000016;
  static const DomConstructorHTMLBaseFontElement = 0x00000017;
  static const DomConstructorHTMLBGSoundElement = 0x00000018;
  static const DomConstructorHTMLBlockElement = 0x00000019;
  static const DomConstructorHTMLBodyElement = 0x0000001a;
  static const DomConstructorHTMLBRElement = 0x0000001b;
  static const DomConstructorHTMLButtonElement = 0x0000001c;
  static const DomConstructorHTMLCollection = 0x0000001d;
  static const DomConstructorHTMLCommentElement = 0x0000001e;
  static const DomConstructorHTMLDDElement = 0x0000001f;
  static const DomConstructorHTMLDivElement = 0x00000020;
  static const DomConstructorHTMLDocument = 0x00000021;
  static const DomConstructorHTMLDListElement = 0x00000022;
  static const DomConstructorHTMLDTElement = 0x00000023;
  static const DomConstructorHTMLEmbedElement = 0x00000024;
  static const DomConstructorHTMLFieldSetElement = 0x00000025;
  static const DomConstructorHTMLFontElement = 0x00000026;
  static const DomConstructorHTMLFormElement = 0x00000027;
  static const DomConstructorHTMLFrameElement = 0x00000028;
  static const DomConstructorHTMLFrameSetElement = 0x00000029;
  static const DomConstructorHTMLGenericElement = 0x0000002a;
  static const DomConstructorHTMLHeadElement = 0x0000002b;
  static const DomConstructorHTMLHeadingElement = 0x0000002c;
  static const DomConstructorHTMLHRElement = 0x0000002d;
  static const DomConstructorHTMLHtmlElement = 0x0000002e;
  static const DomConstructorHTMLIFrameElement = 0x0000002f;
  static const DomConstructorHTMLImageElement = 0x00000030;
  static const DomConstructorHTMLInputElement = 0x00000031;
  static const DomConstructorHTMLIsIndexElement = 0x00000032;
  static const DomConstructorHTMLLabelElement = 0x00000033;
  static const DomConstructorHTMLLegendElement = 0x00000034;
  static const DomConstructorHTMLLIElement = 0x00000035;
  static const DomConstructorHTMLLinkElement = 0x00000036;
  static const DomConstructorHTMLMapElement = 0x00000037;
  static const DomConstructorHTMLMarqueeElement = 0x00000038;
  static const DomConstructorHTMLMetaElement = 0x00000039;
  static const DomConstructorHTMLModelessDialog = 0x0000003a;
  static const DomConstructorHTMLNamespaceInfo = 0x0000003b;
  static const DomConstructorHTMLNamespaceInfoCollection = 0x0000003c;
  static const DomConstructorHTMLNextIdElement = 0x0000003d;
  static const DomConstructorHTMLNoShowElement = 0x0000003e;
  static const DomConstructorHTMLObjectElement = 0x0000003f;
  static const DomConstructorHTMLOListElement = 0x00000040;
  static const DomConstructorHTMLOptionElement = 0x00000041;
  static const DomConstructorHTMLParagraphElement = 0x00000042;
  static const DomConstructorHTMLParamElement = 0x00000043;
  static const DomConstructorHTMLPhraseElement = 0x00000044;
  static const DomConstructorHTMLPluginsCollection = 0x00000045;
  static const DomConstructorHTMLPopup = 0x00000046;
  static const DomConstructorHTMLScriptElement = 0x00000047;
  static const DomConstructorHTMLSelectElement = 0x00000048;
  static const DomConstructorHTMLSpanElement = 0x00000049;
  static const DomConstructorHTMLStyleElement = 0x0000004a;
  static const DomConstructorHTMLTableCaptionElement = 0x0000004b;
  static const DomConstructorHTMLTableCellElement = 0x0000004c;
  static const DomConstructorHTMLTableColElement = 0x0000004d;
  static const DomConstructorHTMLTableElement = 0x0000004e;
  static const DomConstructorHTMLTableRowElement = 0x0000004f;
  static const DomConstructorHTMLTableSectionElement = 0x00000050;
  static const DomConstructorHTMLTextAreaElement = 0x00000051;
  static const DomConstructorHTMLTextElement = 0x00000052;
  static const DomConstructorHTMLTitleElement = 0x00000053;
  static const DomConstructorHTMLUListElement = 0x00000054;
  static const DomConstructorHTMLUnknownElement = 0x00000055;
  static const DomConstructorImage = 0x00000056;
  static const DomConstructorLocation = 0x00000057;
  static const DomConstructorNamedNodeMap = 0x00000058;
  static const DomConstructorNavigator = 0x00000059;
  static const DomConstructorNodeList = 0x0000005a;
  static const DomConstructorOption = 0x0000005b;
  static const DomConstructorScreen = 0x0000005c;
  static const DomConstructorSelection = 0x0000005d;
  static const DomConstructorStaticNodeList = 0x0000005e;
  static const DomConstructorStorage = 0x0000005f;
  static const DomConstructorStyleSheetList = 0x00000060;
  static const DomConstructorStyleSheetPage = 0x00000061;
  static const DomConstructorStyleSheetPageList = 0x00000062;
  static const DomConstructorText = 0x00000063;
  static const DomConstructorTextRange = 0x00000064;
  static const DomConstructorTextRangeCollection = 0x00000065;
  static const DomConstructorTextRectangle = 0x00000066;
  static const DomConstructorTextRectangleList = 0x00000067;
  static const DomConstructorWindow = 0x00000068;
  static const DomConstructorXDomainRequest = 0x00000069;
  static const DomConstructorXMLHttpRequest = 0x0000006a;
  static const DomConstructorMax = 0x0000006b;
  static const DomConstructor_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextTransform {
  static const styleTextTransformNotSet = 0x00000000;
  static const styleTextTransformCapitalize = 0x00000001;
  static const styleTextTransformLowercase = 0x00000002;
  static const styleTextTransformUppercase = 0x00000003;
  static const styleTextTransformNone = 0x00000004;
  static const styleTextTransform_Max = 0x7fffffff;
}

/// {@category Enum}
class styleDataRepeat {
  static const styleDataRepeatNone = 0x00000000;
  static const styleDataRepeatInner = 0x00000001;
  static const styleDataRepeat_Max = 0x7fffffff;
}

/// {@category Enum}
class styleOverflow {
  static const styleOverflowNotSet = 0x00000000;
  static const styleOverflowAuto = 0x00000001;
  static const styleOverflowHidden = 0x00000002;
  static const styleOverflowVisible = 0x00000003;
  static const styleOverflowScroll = 0x00000004;
  static const styleOverflow_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsOverflowStyle {
  static const styleMsOverflowStyleNotSet = 0x00000000;
  static const styleMsOverflowStyleAuto = 0x00000001;
  static const styleMsOverflowStyleNone = 0x00000002;
  static const styleMsOverflowStyleScrollbar = 0x00000003;
  static const styleMsOverflowStyleMsAutoHidingScrollbar = 0x00000004;
  static const styleMsOverflowStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTableLayout {
  static const styleTableLayoutNotSet = 0x00000000;
  static const styleTableLayoutAuto = 0x00000001;
  static const styleTableLayoutFixed = 0x00000002;
  static const styleTableLayout_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBorderCollapse {
  static const styleBorderCollapseNotSet = 0x00000000;
  static const styleBorderCollapseSeparate = 0x00000001;
  static const styleBorderCollapseCollapse = 0x00000002;
  static const styleBorderCollapse_Max = 0x7fffffff;
}

/// {@category Enum}
class styleCaptionSide {
  static const styleCaptionSideNotSet = 0x00000000;
  static const styleCaptionSideTop = 0x00000001;
  static const styleCaptionSideBottom = 0x00000002;
  static const styleCaptionSideLeft = 0x00000003;
  static const styleCaptionSideRight = 0x00000004;
  static const styleCaptionSide_Max = 0x7fffffff;
}

/// {@category Enum}
class styleEmptyCells {
  static const styleEmptyCellsNotSet = 0x00000000;
  static const styleEmptyCellsShow = 0x00000001;
  static const styleEmptyCellsHide = 0x00000002;
  static const styleEmptyCells_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFontStyle {
  static const styleFontStyleNotSet = 0x00000000;
  static const styleFontStyleItalic = 0x00000001;
  static const styleFontStyleOblique = 0x00000002;
  static const styleFontStyleNormal = 0x00000003;
  static const styleFontStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFontVariant {
  static const styleFontVariantNotSet = 0x00000000;
  static const styleFontVariantSmallCaps = 0x00000001;
  static const styleFontVariantNormal = 0x00000002;
  static const styleFontVariant_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBackgroundRepeat {
  static const styleBackgroundRepeatRepeat = 0x00000000;
  static const styleBackgroundRepeatRepeatX = 0x00000001;
  static const styleBackgroundRepeatRepeatY = 0x00000002;
  static const styleBackgroundRepeatNoRepeat = 0x00000003;
  static const styleBackgroundRepeatNotSet = 0x00000004;
  static const styleBackgroundRepeat_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBackgroundAttachment {
  static const styleBackgroundAttachmentFixed = 0x00000000;
  static const styleBackgroundAttachmentScroll = 0x00000001;
  static const styleBackgroundAttachmentNotSet = 0x00000002;
  static const styleBackgroundAttachment_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBackgroundAttachment3 {
  static const styleBackgroundAttachment3Fixed = 0x00000000;
  static const styleBackgroundAttachment3Scroll = 0x00000001;
  static const styleBackgroundAttachment3Local = 0x00000002;
  static const styleBackgroundAttachment3NotSet = 0x00000003;
  static const styleBackgroundAttachment3_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBackgroundClip {
  static const styleBackgroundClipBorderBox = 0x00000000;
  static const styleBackgroundClipPaddingBox = 0x00000001;
  static const styleBackgroundClipContentBox = 0x00000002;
  static const styleBackgroundClipNotSet = 0x00000003;
  static const styleBackgroundClip_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBackgroundOrigin {
  static const styleBackgroundOriginBorderBox = 0x00000000;
  static const styleBackgroundOriginPaddingBox = 0x00000001;
  static const styleBackgroundOriginContentBox = 0x00000002;
  static const styleBackgroundOriginNotSet = 0x00000003;
  static const styleBackgroundOrigin_Max = 0x7fffffff;
}

/// {@category Enum}
class styleVerticalAlign {
  static const styleVerticalAlignAuto = 0x00000000;
  static const styleVerticalAlignBaseline = 0x00000001;
  static const styleVerticalAlignSub = 0x00000002;
  static const styleVerticalAlignSuper = 0x00000003;
  static const styleVerticalAlignTop = 0x00000004;
  static const styleVerticalAlignTextTop = 0x00000005;
  static const styleVerticalAlignMiddle = 0x00000006;
  static const styleVerticalAlignBottom = 0x00000007;
  static const styleVerticalAlignTextBottom = 0x00000008;
  static const styleVerticalAlignInherit = 0x00000009;
  static const styleVerticalAlignNotSet = 0x0000000a;
  static const styleVerticalAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFontWeight {
  static const styleFontWeightNotSet = 0x00000000;
  static const styleFontWeight100 = 0x00000001;
  static const styleFontWeight200 = 0x00000002;
  static const styleFontWeight300 = 0x00000003;
  static const styleFontWeight400 = 0x00000004;
  static const styleFontWeight500 = 0x00000005;
  static const styleFontWeight600 = 0x00000006;
  static const styleFontWeight700 = 0x00000007;
  static const styleFontWeight800 = 0x00000008;
  static const styleFontWeight900 = 0x00000009;
  static const styleFontWeightNormal = 0x0000000a;
  static const styleFontWeightBold = 0x0000000b;
  static const styleFontWeightBolder = 0x0000000c;
  static const styleFontWeightLighter = 0x0000000d;
  static const styleFontWeight_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFontSize {
  static const styleFontSizeXXSmall = 0x00000000;
  static const styleFontSizeXSmall = 0x00000001;
  static const styleFontSizeSmall = 0x00000002;
  static const styleFontSizeMedium = 0x00000003;
  static const styleFontSizeLarge = 0x00000004;
  static const styleFontSizeXLarge = 0x00000005;
  static const styleFontSizeXXLarge = 0x00000006;
  static const styleFontSizeSmaller = 0x00000007;
  static const styleFontSizeLarger = 0x00000008;
  static const styleFontSize_Max = 0x7fffffff;
}

/// {@category Enum}
class styleZIndex {
  static const styleZIndexAuto = 0x80000001;
  static const styleZIndex_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWidowsOrphans {
  static const styleWidowsOrphansNotSet = 0x80000001;
  static const styleWidowsOrphans_Max = 0x7fffffff;
}

/// {@category Enum}
class styleAuto {
  static const styleAutoAuto = 0x00000000;
  static const styleAuto_Max = 0x7fffffff;
}

/// {@category Enum}
class styleNone {
  static const styleNoneNone = 0x00000000;
  static const styleNone_Max = 0x7fffffff;
}

/// {@category Enum}
class styleNormal {
  static const styleNormalNormal = 0x00000000;
  static const styleNormal_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBorderWidth {
  static const styleBorderWidthThin = 0x00000000;
  static const styleBorderWidthMedium = 0x00000001;
  static const styleBorderWidthThick = 0x00000002;
  static const styleBorderWidth_Max = 0x7fffffff;
}

/// {@category Enum}
class stylePosition {
  static const stylePositionNotSet = 0x00000000;
  static const stylePositionstatic = 0x00000001;
  static const stylePositionrelative = 0x00000002;
  static const stylePositionabsolute = 0x00000003;
  static const stylePositionfixed = 0x00000004;
  static const stylePositionMsPage = 0x00000005;
  static const stylePositionMsDeviceFixed = 0x00000006;
  static const stylePosition_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBorderStyle {
  static const styleBorderStyleNotSet = 0x00000000;
  static const styleBorderStyleDotted = 0x00000001;
  static const styleBorderStyleDashed = 0x00000002;
  static const styleBorderStyleSolid = 0x00000003;
  static const styleBorderStyleDouble = 0x00000004;
  static const styleBorderStyleGroove = 0x00000005;
  static const styleBorderStyleRidge = 0x00000006;
  static const styleBorderStyleInset = 0x00000007;
  static const styleBorderStyleOutset = 0x00000008;
  static const styleBorderStyleWindowInset = 0x00000009;
  static const styleBorderStyleNone = 0x0000000a;
  static const styleBorderStyleHidden = 0x0000000b;
  static const styleBorderStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class styleOutlineStyle {
  static const styleOutlineStyleNotSet = 0x00000000;
  static const styleOutlineStyleDotted = 0x00000001;
  static const styleOutlineStyleDashed = 0x00000002;
  static const styleOutlineStyleSolid = 0x00000003;
  static const styleOutlineStyleDouble = 0x00000004;
  static const styleOutlineStyleGroove = 0x00000005;
  static const styleOutlineStyleRidge = 0x00000006;
  static const styleOutlineStyleInset = 0x00000007;
  static const styleOutlineStyleOutset = 0x00000008;
  static const styleOutlineStyleWindowInset = 0x00000009;
  static const styleOutlineStyleNone = 0x0000000a;
  static const styleOutlineStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class styleStyleFloat {
  static const styleStyleFloatNotSet = 0x00000000;
  static const styleStyleFloatLeft = 0x00000001;
  static const styleStyleFloatRight = 0x00000002;
  static const styleStyleFloatNone = 0x00000003;
  static const styleStyleFloat_Max = 0x7fffffff;
}

/// {@category Enum}
class styleDisplay {
  static const styleDisplayNotSet = 0x00000000;
  static const styleDisplayBlock = 0x00000001;
  static const styleDisplayInline = 0x00000002;
  static const styleDisplayListItem = 0x00000003;
  static const styleDisplayNone = 0x00000004;
  static const styleDisplayTableHeaderGroup = 0x00000005;
  static const styleDisplayTableFooterGroup = 0x00000006;
  static const styleDisplayInlineBlock = 0x00000007;
  static const styleDisplayTable = 0x00000008;
  static const styleDisplayInlineTable = 0x00000009;
  static const styleDisplayTableRow = 0x0000000a;
  static const styleDisplayTableRowGroup = 0x0000000b;
  static const styleDisplayTableColumn = 0x0000000c;
  static const styleDisplayTableColumnGroup = 0x0000000d;
  static const styleDisplayTableCell = 0x0000000e;
  static const styleDisplayTableCaption = 0x0000000f;
  static const styleDisplayRunIn = 0x00000010;
  static const styleDisplayRuby = 0x00000011;
  static const styleDisplayRubyBase = 0x00000012;
  static const styleDisplayRubyText = 0x00000013;
  static const styleDisplayRubyBaseContainer = 0x00000014;
  static const styleDisplayRubyTextContainer = 0x00000015;
  static const styleDisplayMsFlexbox = 0x00000016;
  static const styleDisplayMsInlineFlexbox = 0x00000017;
  static const styleDisplayMsGrid = 0x00000018;
  static const styleDisplayMsInlineGrid = 0x00000019;
  static const styleDisplayFlex = 0x0000001a;
  static const styleDisplayInlineFlex = 0x0000001b;
  static const styleDisplayWebkitBox = 0x0000001c;
  static const styleDisplayWebkitInlineBox = 0x0000001d;
  static const styleDisplay_Max = 0x7fffffff;
}

/// {@category Enum}
class styleVisibility {
  static const styleVisibilityNotSet = 0x00000000;
  static const styleVisibilityInherit = 0x00000001;
  static const styleVisibilityVisible = 0x00000002;
  static const styleVisibilityHidden = 0x00000003;
  static const styleVisibilityCollapse = 0x00000004;
  static const styleVisibility_Max = 0x7fffffff;
}

/// {@category Enum}
class styleListStyleType {
  static const styleListStyleTypeNotSet = 0x00000000;
  static const styleListStyleTypeDisc = 0x00000001;
  static const styleListStyleTypeCircle = 0x00000002;
  static const styleListStyleTypeSquare = 0x00000003;
  static const styleListStyleTypeDecimal = 0x00000004;
  static const styleListStyleTypeLowerRoman = 0x00000005;
  static const styleListStyleTypeUpperRoman = 0x00000006;
  static const styleListStyleTypeLowerAlpha = 0x00000007;
  static const styleListStyleTypeUpperAlpha = 0x00000008;
  static const styleListStyleTypeNone = 0x00000009;
  static const styleListStyleTypeDecimalLeadingZero = 0x0000000a;
  static const styleListStyleTypeGeorgian = 0x0000000b;
  static const styleListStyleTypeArmenian = 0x0000000c;
  static const styleListStyleTypeUpperLatin = 0x0000000d;
  static const styleListStyleTypeLowerLatin = 0x0000000e;
  static const styleListStyleTypeUpperGreek = 0x0000000f;
  static const styleListStyleTypeLowerGreek = 0x00000010;
  static const styleListStyleType_Max = 0x7fffffff;
}

/// {@category Enum}
class styleListStylePosition {
  static const styleListStylePositionNotSet = 0x00000000;
  static const styleListStylePositionInside = 0x00000001;
  static const styleListStylePositionOutSide = 0x00000002;
  static const styleListStylePosition_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWhiteSpace {
  static const styleWhiteSpaceNotSet = 0x00000000;
  static const styleWhiteSpaceNormal = 0x00000001;
  static const styleWhiteSpacePre = 0x00000002;
  static const styleWhiteSpaceNowrap = 0x00000003;
  static const styleWhiteSpacePreline = 0x00000004;
  static const styleWhiteSpacePrewrap = 0x00000005;
  static const styleWhiteSpace_Max = 0x7fffffff;
}

/// {@category Enum}
class stylePageBreak {
  static const stylePageBreakNotSet = 0x00000000;
  static const stylePageBreakAuto = 0x00000001;
  static const stylePageBreakAlways = 0x00000002;
  static const stylePageBreakLeft = 0x00000003;
  static const stylePageBreakRight = 0x00000004;
  static const stylePageBreakAvoid = 0x00000005;
  static const stylePageBreak_Max = 0x7fffffff;
}

/// {@category Enum}
class stylePageBreakInside {
  static const stylePageBreakInsideNotSet = 0x00000000;
  static const stylePageBreakInsideAuto = 0x00000001;
  static const stylePageBreakInsideAvoid = 0x00000002;
  static const stylePageBreakInside_Max = 0x7fffffff;
}

/// {@category Enum}
class styleCursor {
  static const styleCursorAuto = 0x00000000;
  static const styleCursorCrosshair = 0x00000001;
  static const styleCursorDefault = 0x00000002;
  static const styleCursorHand = 0x00000003;
  static const styleCursorMove = 0x00000004;
  static const styleCursorE_resize = 0x00000005;
  static const styleCursorNe_resize = 0x00000006;
  static const styleCursorNw_resize = 0x00000007;
  static const styleCursorN_resize = 0x00000008;
  static const styleCursorSe_resize = 0x00000009;
  static const styleCursorSw_resize = 0x0000000a;
  static const styleCursorS_resize = 0x0000000b;
  static const styleCursorW_resize = 0x0000000c;
  static const styleCursorText = 0x0000000d;
  static const styleCursorWait = 0x0000000e;
  static const styleCursorHelp = 0x0000000f;
  static const styleCursorPointer = 0x00000010;
  static const styleCursorProgress = 0x00000011;
  static const styleCursorNot_allowed = 0x00000012;
  static const styleCursorNo_drop = 0x00000013;
  static const styleCursorVertical_text = 0x00000014;
  static const styleCursorall_scroll = 0x00000015;
  static const styleCursorcol_resize = 0x00000016;
  static const styleCursorrow_resize = 0x00000017;
  static const styleCursorNone = 0x00000018;
  static const styleCursorContext_menu = 0x00000019;
  static const styleCursorEw_resize = 0x0000001a;
  static const styleCursorNs_resize = 0x0000001b;
  static const styleCursorNesw_resize = 0x0000001c;
  static const styleCursorNwse_resize = 0x0000001d;
  static const styleCursorCell = 0x0000001e;
  static const styleCursorCopy = 0x0000001f;
  static const styleCursorAlias = 0x00000020;
  static const styleCursorcustom = 0x00000021;
  static const styleCursorNotSet = 0x00000022;
  static const styleCursor_Max = 0x7fffffff;
}

/// {@category Enum}
class styleDir {
  static const styleDirNotSet = 0x00000000;
  static const styleDirLeftToRight = 0x00000001;
  static const styleDirRightToLeft = 0x00000002;
  static const styleDirInherit = 0x00000003;
  static const styleDir_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBidi {
  static const styleBidiNotSet = 0x00000000;
  static const styleBidiNormal = 0x00000001;
  static const styleBidiEmbed = 0x00000002;
  static const styleBidiOverride = 0x00000003;
  static const styleBidiInherit = 0x00000004;
  static const styleBidi_Max = 0x7fffffff;
}

/// {@category Enum}
class styleImeMode {
  static const styleImeModeAuto = 0x00000000;
  static const styleImeModeActive = 0x00000001;
  static const styleImeModeInactive = 0x00000002;
  static const styleImeModeDisabled = 0x00000003;
  static const styleImeModeNotSet = 0x00000004;
  static const styleImeMode_Max = 0x7fffffff;
}

/// {@category Enum}
class styleRubyAlign {
  static const styleRubyAlignNotSet = 0x00000000;
  static const styleRubyAlignAuto = 0x00000001;
  static const styleRubyAlignLeft = 0x00000002;
  static const styleRubyAlignCenter = 0x00000003;
  static const styleRubyAlignRight = 0x00000004;
  static const styleRubyAlignDistributeLetter = 0x00000005;
  static const styleRubyAlignDistributeSpace = 0x00000006;
  static const styleRubyAlignLineEdge = 0x00000007;
  static const styleRubyAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class styleRubyPosition {
  static const styleRubyPositionNotSet = 0x00000000;
  static const styleRubyPositionAbove = 0x00000001;
  static const styleRubyPositionInline = 0x00000002;
  static const styleRubyPosition_Max = 0x7fffffff;
}

/// {@category Enum}
class styleRubyOverhang {
  static const styleRubyOverhangNotSet = 0x00000000;
  static const styleRubyOverhangAuto = 0x00000001;
  static const styleRubyOverhangWhitespace = 0x00000002;
  static const styleRubyOverhangNone = 0x00000003;
  static const styleRubyOverhang_Max = 0x7fffffff;
}

/// {@category Enum}
class styleLayoutGridChar {
  static const styleLayoutGridCharNotSet = 0x00000000;
  static const styleLayoutGridCharAuto = 0x00000001;
  static const styleLayoutGridCharNone = 0x00000002;
  static const styleLayoutGridChar_Max = 0x7fffffff;
}

/// {@category Enum}
class styleLayoutGridLine {
  static const styleLayoutGridLineNotSet = 0x00000000;
  static const styleLayoutGridLineAuto = 0x00000001;
  static const styleLayoutGridLineNone = 0x00000002;
  static const styleLayoutGridLine_Max = 0x7fffffff;
}

/// {@category Enum}
class styleLayoutGridMode {
  static const styleLayoutGridModeNotSet = 0x00000000;
  static const styleLayoutGridModeChar = 0x00000001;
  static const styleLayoutGridModeLine = 0x00000002;
  static const styleLayoutGridModeBoth = 0x00000003;
  static const styleLayoutGridModeNone = 0x00000004;
  static const styleLayoutGridMode_Max = 0x7fffffff;
}

/// {@category Enum}
class styleLayoutGridType {
  static const styleLayoutGridTypeNotSet = 0x00000000;
  static const styleLayoutGridTypeLoose = 0x00000001;
  static const styleLayoutGridTypeStrict = 0x00000002;
  static const styleLayoutGridTypeFixed = 0x00000003;
  static const styleLayoutGridType_Max = 0x7fffffff;
}

/// {@category Enum}
class styleLineBreak {
  static const styleLineBreakNotSet = 0x00000000;
  static const styleLineBreakNormal = 0x00000001;
  static const styleLineBreakStrict = 0x00000002;
  static const styleLineBreak_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWordBreak {
  static const styleWordBreakNotSet = 0x00000000;
  static const styleWordBreakNormal = 0x00000001;
  static const styleWordBreakBreakAll = 0x00000002;
  static const styleWordBreakKeepAll = 0x00000003;
  static const styleWordBreak_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWordWrap {
  static const styleWordWrapNotSet = 0x00000000;
  static const styleWordWrapOff = 0x00000001;
  static const styleWordWrapOn = 0x00000002;
  static const styleWordWrap_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextJustify {
  static const styleTextJustifyNotSet = 0x00000000;
  static const styleTextJustifyInterWord = 0x00000001;
  static const styleTextJustifyNewspaper = 0x00000002;
  static const styleTextJustifyDistribute = 0x00000003;
  static const styleTextJustifyDistributeAllLines = 0x00000004;
  static const styleTextJustifyInterIdeograph = 0x00000005;
  static const styleTextJustifyInterCluster = 0x00000006;
  static const styleTextJustifyKashida = 0x00000007;
  static const styleTextJustifyAuto = 0x00000008;
  static const styleTextJustify_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextAlignLast {
  static const styleTextAlignLastNotSet = 0x00000000;
  static const styleTextAlignLastLeft = 0x00000001;
  static const styleTextAlignLastCenter = 0x00000002;
  static const styleTextAlignLastRight = 0x00000003;
  static const styleTextAlignLastJustify = 0x00000004;
  static const styleTextAlignLastAuto = 0x00000005;
  static const styleTextAlignLast_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextJustifyTrim {
  static const styleTextJustifyTrimNotSet = 0x00000000;
  static const styleTextJustifyTrimNone = 0x00000001;
  static const styleTextJustifyTrimPunctuation = 0x00000002;
  static const styleTextJustifyTrimPunctAndKana = 0x00000003;
  static const styleTextJustifyTrim_Max = 0x7fffffff;
}

/// {@category Enum}
class styleAccelerator {
  static const styleAcceleratorFalse = 0x00000000;
  static const styleAcceleratorTrue = 0x00000001;
  static const styleAccelerator_Max = 0x7fffffff;
}

/// {@category Enum}
class styleLayoutFlow {
  static const styleLayoutFlowHorizontal = 0x00000000;
  static const styleLayoutFlowVerticalIdeographic = 0x00000001;
  static const styleLayoutFlowNotSet = 0x00000002;
  static const styleLayoutFlow_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBlockProgression {
  static const styleBlockProgressionTb = 0x00000000;
  static const styleBlockProgressionRl = 0x00000001;
  static const styleBlockProgressionBt = 0x00000002;
  static const styleBlockProgressionLr = 0x00000003;
  static const styleBlockProgressionNotSet = 0x00000004;
  static const styleBlockProgression_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWritingMode {
  static const styleWritingModeLrtb = 0x00000000;
  static const styleWritingModeTbrl = 0x00000001;
  static const styleWritingModeRltb = 0x00000002;
  static const styleWritingModeBtrl = 0x00000003;
  static const styleWritingModeNotSet = 0x00000004;
  static const styleWritingModeTblr = 0x00000005;
  static const styleWritingModeBtlr = 0x00000006;
  static const styleWritingModeLrbt = 0x00000007;
  static const styleWritingModeRlbt = 0x00000008;
  static const styleWritingModeLr = 0x00000009;
  static const styleWritingModeRl = 0x0000000a;
  static const styleWritingModeTb = 0x0000000b;
  static const styleWritingMode_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBool {
  static const styleBoolFalse = 0x00000000;
  static const styleBoolTrue = 0x00000001;
  static const styleBool_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextUnderlinePosition {
  static const styleTextUnderlinePositionBelow = 0x00000000;
  static const styleTextUnderlinePositionAbove = 0x00000001;
  static const styleTextUnderlinePositionAuto = 0x00000002;
  static const styleTextUnderlinePositionNotSet = 0x00000003;
  static const styleTextUnderlinePosition_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextOverflow {
  static const styleTextOverflowClip = 0x00000000;
  static const styleTextOverflowEllipsis = 0x00000001;
  static const styleTextOverflowNotSet = 0x00000002;
  static const styleTextOverflow_Max = 0x7fffffff;
}

/// {@category Enum}
class styleInterpolation {
  static const styleInterpolationNotSet = 0x00000000;
  static const styleInterpolationNN = 0x00000001;
  static const styleInterpolationBCH = 0x00000002;
  static const styleInterpolation_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBoxSizing {
  static const styleBoxSizingNotSet = 0x00000000;
  static const styleBoxSizingContentBox = 0x00000001;
  static const styleBoxSizingBorderBox = 0x00000002;
  static const styleBoxSizing_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFlex {
  static const styleFlexNone = 0x00000000;
  static const styleFlexNotSet = 0x00000001;
  static const styleFlex_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFlexBasis {
  static const styleFlexBasisAuto = 0x00000000;
  static const styleFlexBasisNotSet = 0x00000001;
  static const styleFlexBasis_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFlexDirection {
  static const styleFlexDirectionRow = 0x00000000;
  static const styleFlexDirectionRowReverse = 0x00000001;
  static const styleFlexDirectionColumn = 0x00000002;
  static const styleFlexDirectionColumnReverse = 0x00000003;
  static const styleFlexDirectionNotSet = 0x00000004;
  static const styleFlexDirection_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWebkitBoxOrient {
  static const styleWebkitBoxOrientHorizontal = 0x00000000;
  static const styleWebkitBoxOrientInlineAxis = 0x00000001;
  static const styleWebkitBoxOrientVertical = 0x00000002;
  static const styleWebkitBoxOrientBlockAxis = 0x00000003;
  static const styleWebkitBoxOrientNotSet = 0x00000004;
  static const styleWebkitBoxOrient_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWebkitBoxDirection {
  static const styleWebkitBoxDirectionNormal = 0x00000000;
  static const styleWebkitBoxDirectionReverse = 0x00000001;
  static const styleWebkitBoxDirectionNotSet = 0x00000002;
  static const styleWebkitBoxDirection_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFlexWrap {
  static const styleFlexWrapNowrap = 0x00000000;
  static const styleFlexWrapWrap = 0x00000001;
  static const styleFlexWrapWrapReverse = 0x00000002;
  static const styleFlexWrapNotSet = 0x00000003;
  static const styleFlexWrap_Max = 0x7fffffff;
}

/// {@category Enum}
class styleAlignItems {
  static const styleAlignItemsFlexStart = 0x00000000;
  static const styleAlignItemsFlexEnd = 0x00000001;
  static const styleAlignItemsCenter = 0x00000002;
  static const styleAlignItemsBaseline = 0x00000003;
  static const styleAlignItemsStretch = 0x00000004;
  static const styleAlignItemsNotSet = 0x00000005;
  static const styleAlignItems_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsFlexAlign {
  static const styleMsFlexAlignStart = 0x00000000;
  static const styleMsFlexAlignEnd = 0x00000001;
  static const styleMsFlexAlignCenter = 0x00000002;
  static const styleMsFlexAlignBaseline = 0x00000003;
  static const styleMsFlexAlignStretch = 0x00000004;
  static const styleMsFlexAlignNotSet = 0x00000005;
  static const styleMsFlexAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsFlexItemAlign {
  static const styleMsFlexItemAlignStart = 0x00000000;
  static const styleMsFlexItemAlignEnd = 0x00000001;
  static const styleMsFlexItemAlignCenter = 0x00000002;
  static const styleMsFlexItemAlignBaseline = 0x00000003;
  static const styleMsFlexItemAlignStretch = 0x00000004;
  static const styleMsFlexItemAlignAuto = 0x00000005;
  static const styleMsFlexItemAlignNotSet = 0x00000006;
  static const styleMsFlexItemAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class styleAlignSelf {
  static const styleAlignSelfFlexStart = 0x00000000;
  static const styleAlignSelfFlexEnd = 0x00000001;
  static const styleAlignSelfCenter = 0x00000002;
  static const styleAlignSelfBaseline = 0x00000003;
  static const styleAlignSelfStretch = 0x00000004;
  static const styleAlignSelfAuto = 0x00000005;
  static const styleAlignSelfNotSet = 0x00000006;
  static const styleAlignSelf_Max = 0x7fffffff;
}

/// {@category Enum}
class styleJustifyContent {
  static const styleJustifyContentFlexStart = 0x00000000;
  static const styleJustifyContentFlexEnd = 0x00000001;
  static const styleJustifyContentCenter = 0x00000002;
  static const styleJustifyContentSpaceBetween = 0x00000003;
  static const styleJustifyContentSpaceAround = 0x00000004;
  static const styleJustifyContentNotSet = 0x00000005;
  static const styleJustifyContent_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsFlexPack {
  static const styleMsFlexPackStart = 0x00000000;
  static const styleMsFlexPackEnd = 0x00000001;
  static const styleMsFlexPackCenter = 0x00000002;
  static const styleMsFlexPackJustify = 0x00000003;
  static const styleMsFlexPackDistribute = 0x00000004;
  static const styleMsFlexPackNotSet = 0x00000005;
  static const styleMsFlexPack_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWebkitBoxPack {
  static const styleWebkitBoxPackStart = 0x00000000;
  static const styleWebkitBoxPackEnd = 0x00000001;
  static const styleWebkitBoxPackCenter = 0x00000002;
  static const styleWebkitBoxPackJustify = 0x00000003;
  static const styleWebkitBoxPackNotSet = 0x00000005;
  static const styleWebkitBoxPack_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsFlexLinePack {
  static const styleMsFlexLinePackStart = 0x00000000;
  static const styleMsFlexLinePackEnd = 0x00000001;
  static const styleMsFlexLinePackCenter = 0x00000002;
  static const styleMsFlexLinePackJustify = 0x00000003;
  static const styleMsFlexLinePackDistribute = 0x00000004;
  static const styleMsFlexLinePackStretch = 0x00000005;
  static const styleMsFlexLinePackNotSet = 0x00000006;
  static const styleMsFlexLinePack_Max = 0x7fffffff;
}

/// {@category Enum}
class styleAlignContent {
  static const styleAlignContentFlexStart = 0x00000000;
  static const styleAlignContentFlexEnd = 0x00000001;
  static const styleAlignContentCenter = 0x00000002;
  static const styleAlignContentSpaceBetween = 0x00000003;
  static const styleAlignContentSpaceAround = 0x00000004;
  static const styleAlignContentStretch = 0x00000005;
  static const styleAlignContentNotSet = 0x00000006;
  static const styleAlignContent_Max = 0x7fffffff;
}

/// {@category Enum}
class styleColumnFill {
  static const styleColumnFillAuto = 0x00000000;
  static const styleColumnFillBalance = 0x00000001;
  static const styleColumnFillNotSet = 0x00000002;
  static const styleColumnFill_Max = 0x7fffffff;
}

/// {@category Enum}
class styleColumnSpan {
  static const styleColumnSpanNone = 0x00000000;
  static const styleColumnSpanAll = 0x00000001;
  static const styleColumnSpanOne = 0x00000002;
  static const styleColumnSpanNotSet = 0x00000003;
  static const styleColumnSpan_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBreak {
  static const styleBreakNotSet = 0x00000000;
  static const styleBreakAuto = 0x00000001;
  static const styleBreakAlways = 0x00000002;
  static const styleBreakAvoid = 0x00000003;
  static const styleBreakLeft = 0x00000004;
  static const styleBreakRight = 0x00000005;
  static const styleBreakPage = 0x00000006;
  static const styleBreakColumn = 0x00000007;
  static const styleBreakAvoidPage = 0x00000008;
  static const styleBreakAvoidColumn = 0x00000009;
  static const styleBreak_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBreakInside {
  static const styleBreakInsideNotSet = 0x00000000;
  static const styleBreakInsideAuto = 0x00000001;
  static const styleBreakInsideAvoid = 0x00000002;
  static const styleBreakInsideAvoidPage = 0x00000003;
  static const styleBreakInsideAvoidColumn = 0x00000004;
  static const styleBreakInside_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsScrollChaining {
  static const styleMsScrollChainingNotSet = 0x00000000;
  static const styleMsScrollChainingNone = 0x00000001;
  static const styleMsScrollChainingChained = 0x00000002;
  static const styleMsScrollChaining_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsContentZooming {
  static const styleMsContentZoomingNotSet = 0x00000000;
  static const styleMsContentZoomingNone = 0x00000001;
  static const styleMsContentZoomingZoom = 0x00000002;
  static const styleMsContentZooming_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsContentZoomSnapType {
  static const styleMsContentZoomSnapTypeNotSet = 0x00000000;
  static const styleMsContentZoomSnapTypeNone = 0x00000001;
  static const styleMsContentZoomSnapTypeMandatory = 0x00000002;
  static const styleMsContentZoomSnapTypeProximity = 0x00000003;
  static const styleMsContentZoomSnapType_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsScrollRails {
  static const styleMsScrollRailsNotSet = 0x00000000;
  static const styleMsScrollRailsNone = 0x00000001;
  static const styleMsScrollRailsRailed = 0x00000002;
  static const styleMsScrollRails_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsContentZoomChaining {
  static const styleMsContentZoomChainingNotSet = 0x00000000;
  static const styleMsContentZoomChainingNone = 0x00000001;
  static const styleMsContentZoomChainingChained = 0x00000002;
  static const styleMsContentZoomChaining_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsScrollSnapType {
  static const styleMsScrollSnapTypeNotSet = 0x00000000;
  static const styleMsScrollSnapTypeNone = 0x00000001;
  static const styleMsScrollSnapTypeMandatory = 0x00000002;
  static const styleMsScrollSnapTypeProximity = 0x00000003;
  static const styleMsScrollSnapType_Max = 0x7fffffff;
}

/// {@category Enum}
class styleGridColumn {
  static const styleGridColumnNotSet = 0x00000000;
  static const styleGridColumn_Max = 0x7fffffff;
}

/// {@category Enum}
class styleGridColumnAlign {
  static const styleGridColumnAlignCenter = 0x00000000;
  static const styleGridColumnAlignEnd = 0x00000001;
  static const styleGridColumnAlignStart = 0x00000002;
  static const styleGridColumnAlignStretch = 0x00000003;
  static const styleGridColumnAlignNotSet = 0x00000004;
  static const styleGridColumnAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class styleGridColumnSpan {
  static const styleGridColumnSpanNotSet = 0x00000000;
  static const styleGridColumnSpan_Max = 0x7fffffff;
}

/// {@category Enum}
class styleGridRow {
  static const styleGridRowNotSet = 0x00000000;
  static const styleGridRow_Max = 0x7fffffff;
}

/// {@category Enum}
class styleGridRowAlign {
  static const styleGridRowAlignCenter = 0x00000000;
  static const styleGridRowAlignEnd = 0x00000001;
  static const styleGridRowAlignStart = 0x00000002;
  static const styleGridRowAlignStretch = 0x00000003;
  static const styleGridRowAlignNotSet = 0x00000004;
  static const styleGridRowAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class styleGridRowSpan {
  static const styleGridRowSpanNotSet = 0x00000000;
  static const styleGridRowSpan_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWrapThrough {
  static const styleWrapThroughNotSet = 0x00000000;
  static const styleWrapThroughWrap = 0x00000001;
  static const styleWrapThroughNone = 0x00000002;
  static const styleWrapThrough_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWrapFlow {
  static const styleWrapFlowNotSet = 0x00000000;
  static const styleWrapFlowAuto = 0x00000001;
  static const styleWrapFlowBoth = 0x00000002;
  static const styleWrapFlowStart = 0x00000003;
  static const styleWrapFlowEnd = 0x00000004;
  static const styleWrapFlowClear = 0x00000005;
  static const styleWrapFlowMinimum = 0x00000006;
  static const styleWrapFlowMaximum = 0x00000007;
  static const styleWrapFlow_Max = 0x7fffffff;
}

/// {@category Enum}
class styleAlignmentBaseline {
  static const styleAlignmentBaselineNotSet = 0x00000000;
  static const styleAlignmentBaselineAfterEdge = 0x00000001;
  static const styleAlignmentBaselineAlphabetic = 0x00000002;
  static const styleAlignmentBaselineAuto = 0x00000003;
  static const styleAlignmentBaselineBaseline = 0x00000004;
  static const styleAlignmentBaselineBeforeEdge = 0x00000005;
  static const styleAlignmentBaselineCentral = 0x00000006;
  static const styleAlignmentBaselineHanging = 0x00000007;
  static const styleAlignmentBaselineMathematical = 0x00000008;
  static const styleAlignmentBaselineMiddle = 0x00000009;
  static const styleAlignmentBaselineTextAfterEdge = 0x0000000a;
  static const styleAlignmentBaselineTextBeforeEdge = 0x0000000b;
  static const styleAlignmentBaselineIdeographic = 0x0000000c;
  static const styleAlignmentBaseline_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBaselineShift {
  static const styleBaselineShiftBaseline = 0x00000000;
  static const styleBaselineShiftSub = 0x00000001;
  static const styleBaselineShiftSuper = 0x00000002;
  static const styleBaselineShift_Max = 0x7fffffff;
}

/// {@category Enum}
class styleClipRule {
  static const styleClipRuleNotSet = 0x00000000;
  static const styleClipRuleNonZero = 0x00000001;
  static const styleClipRuleEvenOdd = 0x00000002;
  static const styleClipRule_Max = 0x7fffffff;
}

/// {@category Enum}
class styleDominantBaseline {
  static const styleDominantBaselineNotSet = 0x00000000;
  static const styleDominantBaselineAlphabetic = 0x00000001;
  static const styleDominantBaselineAuto = 0x00000002;
  static const styleDominantBaselineCentral = 0x00000003;
  static const styleDominantBaselineHanging = 0x00000004;
  static const styleDominantBaselineIdeographic = 0x00000005;
  static const styleDominantBaselineMathematical = 0x00000006;
  static const styleDominantBaselineMiddle = 0x00000007;
  static const styleDominantBaselineNoChange = 0x00000008;
  static const styleDominantBaselineResetSize = 0x00000009;
  static const styleDominantBaselineTextAfterEdge = 0x0000000a;
  static const styleDominantBaselineTextBeforeEdge = 0x0000000b;
  static const styleDominantBaselineUseScript = 0x0000000c;
  static const styleDominantBaseline_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFillRule {
  static const styleFillRuleNotSet = 0x00000000;
  static const styleFillRuleNonZero = 0x00000001;
  static const styleFillRuleEvenOdd = 0x00000002;
  static const styleFillRule_Max = 0x7fffffff;
}

/// {@category Enum}
class styleFontStretch {
  static const styleFontStretchNotSet = 0x00000000;
  static const styleFontStretchWider = 0x00000001;
  static const styleFontStretchNarrower = 0x00000002;
  static const styleFontStretchUltraCondensed = 0x00000003;
  static const styleFontStretchExtraCondensed = 0x00000004;
  static const styleFontStretchCondensed = 0x00000005;
  static const styleFontStretchSemiCondensed = 0x00000006;
  static const styleFontStretchNormal = 0x00000007;
  static const styleFontStretchSemiExpanded = 0x00000008;
  static const styleFontStretchExpanded = 0x00000009;
  static const styleFontStretchExtraExpanded = 0x0000000a;
  static const styleFontStretchUltraExpanded = 0x0000000b;
  static const styleFontStretch_Max = 0x7fffffff;
}

/// {@category Enum}
class stylePointerEvents {
  static const stylePointerEventsNotSet = 0x00000000;
  static const stylePointerEventsVisiblePainted = 0x00000001;
  static const stylePointerEventsVisibleFill = 0x00000002;
  static const stylePointerEventsVisibleStroke = 0x00000003;
  static const stylePointerEventsVisible = 0x00000004;
  static const stylePointerEventsPainted = 0x00000005;
  static const stylePointerEventsFill = 0x00000006;
  static const stylePointerEventsStroke = 0x00000007;
  static const stylePointerEventsAll = 0x00000008;
  static const stylePointerEventsNone = 0x00000009;
  static const stylePointerEventsInitial = 0x0000000a;
  static const stylePointerEventsAuto = 0x0000000b;
  static const stylePointerEvents_Max = 0x7fffffff;
}

/// {@category Enum}
class styleEnableBackground {
  static const styleEnableBackgroundNotSet = 0x00000000;
  static const styleEnableBackgroundAccumulate = 0x00000001;
  static const styleEnableBackgroundNew = 0x00000002;
  static const styleEnableBackgroundInherit = 0x00000003;
  static const styleEnableBackground_Max = 0x7fffffff;
}

/// {@category Enum}
class styleStrokeLinecap {
  static const styleStrokeLinecapNotSet = 0x00000000;
  static const styleStrokeLinecapButt = 0x00000001;
  static const styleStrokeLinecapRound = 0x00000002;
  static const styleStrokeLinecapSquare = 0x00000003;
  static const styleStrokeLinecap_Max = 0x7fffffff;
}

/// {@category Enum}
class styleStrokeLinejoin {
  static const styleStrokeLinejoinNotSet = 0x00000000;
  static const styleStrokeLinejoinMiter = 0x00000001;
  static const styleStrokeLinejoinRound = 0x00000002;
  static const styleStrokeLinejoinBevel = 0x00000003;
  static const styleStrokeLinejoin_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextAnchor {
  static const styleTextAnchorNotSet = 0x00000000;
  static const styleTextAnchorStart = 0x00000001;
  static const styleTextAnchorMiddle = 0x00000002;
  static const styleTextAnchorEnd = 0x00000003;
  static const styleTextAnchor_Max = 0x7fffffff;
}

/// {@category Enum}
class styleAttrType {
  static const styleAttrTypeString = 0x00000000;
  static const styleAttrTypeColor = 0x00000001;
  static const styleAttrTypeUrl = 0x00000002;
  static const styleAttrTypeInteger = 0x00000003;
  static const styleAttrTypeNumber = 0x00000004;
  static const styleAttrTypeLength = 0x00000005;
  static const styleAttrTypePx = 0x00000006;
  static const styleAttrTypeEm = 0x00000007;
  static const styleAttrTypeEx = 0x00000008;
  static const styleAttrTypeIn = 0x00000009;
  static const styleAttrTypeCm = 0x0000000a;
  static const styleAttrTypeMm = 0x0000000b;
  static const styleAttrTypePt = 0x0000000c;
  static const styleAttrTypePc = 0x0000000d;
  static const styleAttrTypeRem = 0x0000000e;
  static const styleAttrTypeCh = 0x0000000f;
  static const styleAttrTypeVh = 0x00000010;
  static const styleAttrTypeVw = 0x00000011;
  static const styleAttrTypeVmin = 0x00000012;
  static const styleAttrTypePercentage = 0x00000013;
  static const styleAttrTypeAngle = 0x00000014;
  static const styleAttrTypeDeg = 0x00000015;
  static const styleAttrTypeRad = 0x00000016;
  static const styleAttrTypeGrad = 0x00000017;
  static const styleAttrTypeTime = 0x00000018;
  static const styleAttrTypeS = 0x00000019;
  static const styleAttrTypeMs = 0x0000001a;
  static const styleAttrType_Max = 0x7fffffff;
}

/// {@category Enum}
class styleInitialColor {
  static const styleInitialColorNoInitial = 0x00000000;
  static const styleInitialColorColorProperty = 0x00000001;
  static const styleInitialColorTransparent = 0x00000002;
  static const styleInitialColorInvert = 0x00000003;
  static const styleInitialColor_Max = 0x7fffffff;
}

/// {@category Enum}
class styleInitialString {
  static const styleInitialStringNoInitial = 0x00000000;
  static const styleInitialStringNone = 0x00000001;
  static const styleInitialStringAuto = 0x00000002;
  static const styleInitialStringNormal = 0x00000003;
  static const styleInitialString_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTransformOriginX {
  static const styleTransformOriginXNotSet = 0x00000000;
  static const styleTransformOriginXLeft = 0x00000001;
  static const styleTransformOriginXCenter = 0x00000002;
  static const styleTransformOriginXRight = 0x00000003;
  static const styleTransformOriginX_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTransformOriginY {
  static const styleTransformOriginYNotSet = 0x00000000;
  static const styleTransformOriginYTop = 0x00000001;
  static const styleTransformOriginYCenter = 0x00000002;
  static const styleTransformOriginYBottom = 0x00000003;
  static const styleTransformOriginY_Max = 0x7fffffff;
}

/// {@category Enum}
class stylePerspectiveOriginX {
  static const stylePerspectiveOriginXNotSet = 0x00000000;
  static const stylePerspectiveOriginXLeft = 0x00000001;
  static const stylePerspectiveOriginXCenter = 0x00000002;
  static const stylePerspectiveOriginXRight = 0x00000003;
  static const stylePerspectiveOriginX_Max = 0x7fffffff;
}

/// {@category Enum}
class stylePerspectiveOriginY {
  static const stylePerspectiveOriginYNotSet = 0x00000000;
  static const stylePerspectiveOriginYTop = 0x00000001;
  static const stylePerspectiveOriginYCenter = 0x00000002;
  static const stylePerspectiveOriginYBottom = 0x00000003;
  static const stylePerspectiveOriginY_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTransformStyle {
  static const styleTransformStyleFlat = 0x00000000;
  static const styleTransformStylePreserve3D = 0x00000001;
  static const styleTransformStyleNotSet = 0x00000002;
  static const styleTransformStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBackfaceVisibility {
  static const styleBackfaceVisibilityVisible = 0x00000000;
  static const styleBackfaceVisibilityHidden = 0x00000001;
  static const styleBackfaceVisibilityNotSet = 0x00000002;
  static const styleBackfaceVisibility_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextSizeAdjust {
  static const styleTextSizeAdjustNone = 0x00000000;
  static const styleTextSizeAdjustAuto = 0x00000001;
  static const styleTextSizeAdjust_Max = 0x7fffffff;
}

/// {@category Enum}
class styleColorInterpolationFilters {
  static const styleColorInterpolationFiltersAuto = 0x00000000;
  static const styleColorInterpolationFiltersSRgb = 0x00000001;
  static const styleColorInterpolationFiltersLinearRgb = 0x00000002;
  static const styleColorInterpolationFiltersNotSet = 0x00000003;
  static const styleColorInterpolationFilters_Max = 0x7fffffff;
}

/// {@category Enum}
class styleHyphens {
  static const styleHyphensNone = 0x00000000;
  static const styleHyphensManual = 0x00000001;
  static const styleHyphensAuto = 0x00000002;
  static const styleHyphensNotSet = 0x00000003;
  static const styleHyphens_Max = 0x7fffffff;
}

/// {@category Enum}
class styleHyphenateLimitLines {
  static const styleHyphenateLimitLinesNoLimit = 0x00000000;
  static const styleHyphenateLimitLines_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsAnimationPlayState {
  static const styleMsAnimationPlayStateRunning = 0x00000000;
  static const styleMsAnimationPlayStatePaused = 0x00000001;
  static const styleMsAnimationPlayStateNotSet = 0x00000002;
  static const styleMsAnimationPlayState_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsAnimationDirection {
  static const styleMsAnimationDirectionNormal = 0x00000000;
  static const styleMsAnimationDirectionAlternate = 0x00000001;
  static const styleMsAnimationDirectionReverse = 0x00000002;
  static const styleMsAnimationDirectionAlternateReverse = 0x00000003;
  static const styleMsAnimationDirectionNotSet = 0x00000004;
  static const styleMsAnimationDirection_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsAnimationFillMode {
  static const styleMsAnimationFillModeNone = 0x00000000;
  static const styleMsAnimationFillModeForwards = 0x00000001;
  static const styleMsAnimationFillModeBackwards = 0x00000002;
  static const styleMsAnimationFillModeBoth = 0x00000003;
  static const styleMsAnimationFillModeNotSet = 0x00000004;
  static const styleMsAnimationFillMode_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsHighContrastAdjust {
  static const styleMsHighContrastAdjustNotSet = 0x00000000;
  static const styleMsHighContrastAdjustAuto = 0x00000001;
  static const styleMsHighContrastAdjustNone = 0x00000002;
  static const styleMsHighContrastAdjust_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsUserSelect {
  static const styleMsUserSelectAuto = 0x00000000;
  static const styleMsUserSelectText = 0x00000001;
  static const styleMsUserSelectElement = 0x00000002;
  static const styleMsUserSelectNone = 0x00000003;
  static const styleMsUserSelectNotSet = 0x00000004;
  static const styleMsUserSelect_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsTouchAction {
  static const styleMsTouchActionNotSet = 0xffffffff;
  static const styleMsTouchActionNone = 0x00000000;
  static const styleMsTouchActionAuto = 0x00000001;
  static const styleMsTouchActionManipulation = 0x00000002;
  static const styleMsTouchActionDoubleTapZoom = 0x00000004;
  static const styleMsTouchActionPanX = 0x00000008;
  static const styleMsTouchActionPanY = 0x00000010;
  static const styleMsTouchActionPinchZoom = 0x00000020;
  static const styleMsTouchActionCrossSlideX = 0x00000040;
  static const styleMsTouchActionCrossSlideY = 0x00000080;
  static const styleMsTouchAction_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsTouchSelect {
  static const styleMsTouchSelectGrippers = 0x00000000;
  static const styleMsTouchSelectNone = 0x00000001;
  static const styleMsTouchSelectNotSet = 0x00000002;
  static const styleMsTouchSelect_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsScrollTranslation {
  static const styleMsScrollTranslationNotSet = 0x00000000;
  static const styleMsScrollTranslationNone = 0x00000001;
  static const styleMsScrollTranslationVtoH = 0x00000002;
  static const styleMsScrollTranslation_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBorderImageRepeat {
  static const styleBorderImageRepeatStretch = 0x00000000;
  static const styleBorderImageRepeatRepeat = 0x00000001;
  static const styleBorderImageRepeatRound = 0x00000002;
  static const styleBorderImageRepeatSpace = 0x00000003;
  static const styleBorderImageRepeatNotSet = 0x00000004;
  static const styleBorderImageRepeat_Max = 0x7fffffff;
}

/// {@category Enum}
class styleBorderImageSliceFill {
  static const styleBorderImageSliceFillNotSet = 0x00000000;
  static const styleBorderImageSliceFillFill = 0x00000001;
  static const styleBorderImageSliceFill_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsImeAlign {
  static const styleMsImeAlignAuto = 0x00000000;
  static const styleMsImeAlignAfter = 0x00000001;
  static const styleMsImeAlignNotSet = 0x00000002;
  static const styleMsImeAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class styleMsTextCombineHorizontal {
  static const styleMsTextCombineHorizontalNone = 0x00000000;
  static const styleMsTextCombineHorizontalAll = 0x00000001;
  static const styleMsTextCombineHorizontalDigits = 0x00000002;
  static const styleMsTextCombineHorizontalNotSet = 0x00000003;
  static const styleMsTextCombineHorizontal_Max = 0x7fffffff;
}

/// {@category Enum}
class styleWebkitAppearance {
  static const styleWebkitAppearanceNone = 0x00000000;
  static const styleWebkitAppearanceCapsLockIndicator = 0x00000001;
  static const styleWebkitAppearanceButton = 0x00000002;
  static const styleWebkitAppearanceButtonBevel = 0x00000003;
  static const styleWebkitAppearanceCaret = 0x00000004;
  static const styleWebkitAppearanceCheckbox = 0x00000005;
  static const styleWebkitAppearanceDefaultButton = 0x00000006;
  static const styleWebkitAppearanceListbox = 0x00000007;
  static const styleWebkitAppearanceListitem = 0x00000008;
  static const styleWebkitAppearanceMediaFullscreenButton = 0x00000009;
  static const styleWebkitAppearanceMediaMuteButton = 0x0000000a;
  static const styleWebkitAppearanceMediaPlayButton = 0x0000000b;
  static const styleWebkitAppearanceMediaSeekBackButton = 0x0000000c;
  static const styleWebkitAppearanceMediaSeekForwardButton = 0x0000000d;
  static const styleWebkitAppearanceMediaSlider = 0x0000000e;
  static const styleWebkitAppearanceMediaSliderthumb = 0x0000000f;
  static const styleWebkitAppearanceMenulist = 0x00000010;
  static const styleWebkitAppearanceMenulistButton = 0x00000011;
  static const styleWebkitAppearanceMenulistText = 0x00000012;
  static const styleWebkitAppearanceMenulistTextfield = 0x00000013;
  static const styleWebkitAppearancePushButton = 0x00000014;
  static const styleWebkitAppearanceRadio = 0x00000015;
  static const styleWebkitAppearanceSearchfield = 0x00000016;
  static const styleWebkitAppearanceSearchfieldCancelButton = 0x00000017;
  static const styleWebkitAppearanceSearchfieldDecoration = 0x00000018;
  static const styleWebkitAppearanceSearchfieldResultsButton = 0x00000019;
  static const styleWebkitAppearanceSearchfieldResultsDecoration = 0x0000001a;
  static const styleWebkitAppearanceSliderHorizontal = 0x0000001b;
  static const styleWebkitAppearanceSliderVertical = 0x0000001c;
  static const styleWebkitAppearanceSliderthumbHorizontal = 0x0000001d;
  static const styleWebkitAppearanceSliderthumbVertical = 0x0000001e;
  static const styleWebkitAppearanceSquareButton = 0x0000001f;
  static const styleWebkitAppearanceTextarea = 0x00000020;
  static const styleWebkitAppearanceTextfield = 0x00000021;
  static const styleWebkitAppearanceNotSet = 0x00000022;
  static const styleWebkitAppearance_Max = 0x7fffffff;
}

/// {@category Enum}
class styleViewportSize {
  static const styleViewportSizeAuto = 0x00000000;
  static const styleViewportSizeDeviceWidth = 0x00000001;
  static const styleViewportSizeDeviceHeight = 0x00000002;
  static const styleViewportSize_Max = 0x7fffffff;
}

/// {@category Enum}
class styleUserZoom {
  static const styleUserZoomNotSet = 0x00000000;
  static const styleUserZoomZoom = 0x00000001;
  static const styleUserZoomFixed = 0x00000002;
  static const styleUserZoom_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextLineThroughStyle {
  static const styleTextLineThroughStyleUndefined = 0x00000000;
  static const styleTextLineThroughStyleSingle = 0x00000001;
  static const styleTextLineThroughStyleDouble = 0x00000002;
  static const styleTextLineThroughStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextUnderlineStyle {
  static const styleTextUnderlineStyleUndefined = 0x00000000;
  static const styleTextUnderlineStyleSingle = 0x00000001;
  static const styleTextUnderlineStyleDouble = 0x00000002;
  static const styleTextUnderlineStyleWords = 0x00000003;
  static const styleTextUnderlineStyleDotted = 0x00000004;
  static const styleTextUnderlineStyleThick = 0x00000005;
  static const styleTextUnderlineStyleDash = 0x00000006;
  static const styleTextUnderlineStyleDotDash = 0x00000007;
  static const styleTextUnderlineStyleDotDotDash = 0x00000008;
  static const styleTextUnderlineStyleWave = 0x00000009;
  static const styleTextUnderlineStyleSingleAccounting = 0x0000000a;
  static const styleTextUnderlineStyleDoubleAccounting = 0x0000000b;
  static const styleTextUnderlineStyleThickDash = 0x0000000c;
  static const styleTextUnderlineStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextEffect {
  static const styleTextEffectNone = 0x00000000;
  static const styleTextEffectEmboss = 0x00000001;
  static const styleTextEffectEngrave = 0x00000002;
  static const styleTextEffectOutline = 0x00000003;
  static const styleTextEffect_Max = 0x7fffffff;
}

/// {@category Enum}
class styleDefaultTextSelection {
  static const styleDefaultTextSelectionFalse = 0x00000000;
  static const styleDefaultTextSelectionTrue = 0x00000001;
  static const styleDefaultTextSelection_Max = 0x7fffffff;
}

/// {@category Enum}
class styleTextDecoration {
  static const styleTextDecorationNone = 0x00000000;
  static const styleTextDecorationUnderline = 0x00000001;
  static const styleTextDecorationOverline = 0x00000002;
  static const styleTextDecorationLineThrough = 0x00000003;
  static const styleTextDecorationBlink = 0x00000004;
  static const styleTextDecoration_Max = 0x7fffffff;
}

/// {@category Enum}
class textDecoration {
  static const textDecorationNone = 0x00000000;
  static const textDecorationUnderline = 0x00000001;
  static const textDecorationOverline = 0x00000002;
  static const textDecorationLineThrough = 0x00000003;
  static const textDecorationBlink = 0x00000004;
  static const textDecoration_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlListType {
  static const htmlListTypeNotSet = 0x00000000;
  static const htmlListTypeLargeAlpha = 0x00000001;
  static const htmlListTypeSmallAlpha = 0x00000002;
  static const htmlListTypeLargeRoman = 0x00000003;
  static const htmlListTypeSmallRoman = 0x00000004;
  static const htmlListTypeNumbers = 0x00000005;
  static const htmlListTypeDisc = 0x00000006;
  static const htmlListTypeCircle = 0x00000007;
  static const htmlListTypeSquare = 0x00000008;
  static const htmlListType_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlMethod {
  static const htmlMethodNotSet = 0x00000000;
  static const htmlMethodGet = 0x00000001;
  static const htmlMethodPost = 0x00000002;
  static const htmlMethod_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlWrap {
  static const htmlWrapOff = 0x00000001;
  static const htmlWrapSoft = 0x00000002;
  static const htmlWrapHard = 0x00000003;
  static const htmlWrap_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlDir {
  static const htmlDirNotSet = 0x00000000;
  static const htmlDirLeftToRight = 0x00000001;
  static const htmlDirRightToLeft = 0x00000002;
  static const htmlDir_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlEditable {
  static const htmlEditableInherit = 0x00000000;
  static const htmlEditableTrue = 0x00000001;
  static const htmlEditableFalse = 0x00000002;
  static const htmlEditable_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlInput {
  static const htmlInputNotSet = 0x00000000;
  static const htmlInputButton = 0x00000001;
  static const htmlInputCheckbox = 0x00000002;
  static const htmlInputFile = 0x00000003;
  static const htmlInputHidden = 0x00000004;
  static const htmlInputImage = 0x00000005;
  static const htmlInputPassword = 0x00000006;
  static const htmlInputRadio = 0x00000007;
  static const htmlInputReset = 0x00000008;
  static const htmlInputSelectOne = 0x00000009;
  static const htmlInputSelectMultiple = 0x0000000a;
  static const htmlInputSubmit = 0x0000000b;
  static const htmlInputText = 0x0000000c;
  static const htmlInputTextarea = 0x0000000d;
  static const htmlInputRichtext = 0x0000000e;
  static const htmlInputRange = 0x0000000f;
  static const htmlInputUrl = 0x00000010;
  static const htmlInputEmail = 0x00000011;
  static const htmlInputNumber = 0x00000012;
  static const htmlInputTel = 0x00000013;
  static const htmlInputSearch = 0x00000014;
  static const htmlInput_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlSpellCheck {
  static const htmlSpellCheckNotSet = 0x00000000;
  static const htmlSpellCheckTrue = 0x00000001;
  static const htmlSpellCheckFalse = 0x00000002;
  static const htmlSpellCheckDefault = 0x00000003;
  static const htmlSpellCheck_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlEncoding {
  static const htmlEncodingURL = 0x00000000;
  static const htmlEncodingMultipart = 0x00000001;
  static const htmlEncodingText = 0x00000002;
  static const htmlEncoding_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlAdjacency {
  static const htmlAdjacencyBeforeBegin = 0x00000001;
  static const htmlAdjacencyAfterBegin = 0x00000002;
  static const htmlAdjacencyBeforeEnd = 0x00000003;
  static const htmlAdjacencyAfterEnd = 0x00000004;
  static const htmlAdjacency_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlTabIndex {
  static const htmlTabIndexNotSet = 0xffff8000;
  static const htmlTabIndex_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlComponent {
  static const htmlComponentClient = 0x00000000;
  static const htmlComponentSbLeft = 0x00000001;
  static const htmlComponentSbPageLeft = 0x00000002;
  static const htmlComponentSbHThumb = 0x00000003;
  static const htmlComponentSbPageRight = 0x00000004;
  static const htmlComponentSbRight = 0x00000005;
  static const htmlComponentSbUp = 0x00000006;
  static const htmlComponentSbPageUp = 0x00000007;
  static const htmlComponentSbVThumb = 0x00000008;
  static const htmlComponentSbPageDown = 0x00000009;
  static const htmlComponentSbDown = 0x0000000a;
  static const htmlComponentSbLeft2 = 0x0000000b;
  static const htmlComponentSbPageLeft2 = 0x0000000c;
  static const htmlComponentSbRight2 = 0x0000000d;
  static const htmlComponentSbPageRight2 = 0x0000000e;
  static const htmlComponentSbUp2 = 0x0000000f;
  static const htmlComponentSbPageUp2 = 0x00000010;
  static const htmlComponentSbDown2 = 0x00000011;
  static const htmlComponentSbPageDown2 = 0x00000012;
  static const htmlComponentSbTop = 0x00000013;
  static const htmlComponentSbBottom = 0x00000014;
  static const htmlComponentOutside = 0x00000015;
  static const htmlComponentGHTopLeft = 0x00000016;
  static const htmlComponentGHLeft = 0x00000017;
  static const htmlComponentGHTop = 0x00000018;
  static const htmlComponentGHBottomLeft = 0x00000019;
  static const htmlComponentGHTopRight = 0x0000001a;
  static const htmlComponentGHBottom = 0x0000001b;
  static const htmlComponentGHRight = 0x0000001c;
  static const htmlComponentGHBottomRight = 0x0000001d;
  static const htmlComponent_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlApplyLocation {
  static const htmlApplyLocationInside = 0x00000000;
  static const htmlApplyLocationOutside = 0x00000001;
  static const htmlApplyLocation_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlGlyphMode {
  static const htmlGlyphModeNone = 0x00000000;
  static const htmlGlyphModeBegin = 0x00000001;
  static const htmlGlyphModeEnd = 0x00000002;
  static const htmlGlyphModeBoth = 0x00000003;
  static const htmlGlyphMode_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlDraggable {
  static const htmlDraggableAuto = 0x00000000;
  static const htmlDraggableTrue = 0x00000001;
  static const htmlDraggableFalse = 0x00000002;
  static const htmlDraggable_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlUnit {
  static const htmlUnitCharacter = 0x00000001;
  static const htmlUnitWord = 0x00000002;
  static const htmlUnitSentence = 0x00000003;
  static const htmlUnitTextEdit = 0x00000006;
  static const htmlUnit_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlEndPoints {
  static const htmlEndPointsStartToStart = 0x00000001;
  static const htmlEndPointsStartToEnd = 0x00000002;
  static const htmlEndPointsEndToStart = 0x00000003;
  static const htmlEndPointsEndToEnd = 0x00000004;
  static const htmlEndPoints_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlDirection {
  static const htmlDirectionForward = 0x0001869f;
  static const htmlDirectionBackward = 0xfffe7961;
  static const htmlDirection_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlStart {
  static const htmlStartfileopen = 0x00000000;
  static const htmlStartmouseover = 0x00000001;
  static const htmlStart_Max = 0x7fffffff;
}

/// {@category Enum}
class bodyScroll {
  static const bodyScrollyes = 0x00000001;
  static const bodyScrollno = 0x00000002;
  static const bodyScrollauto = 0x00000004;
  static const bodyScrolldefault = 0x00000003;
  static const bodyScroll_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlSelectType {
  static const htmlSelectTypeSelectOne = 0x00000001;
  static const htmlSelectTypeSelectMultiple = 0x00000002;
  static const htmlSelectType_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlSelectExFlag {
  static const htmlSelectExFlagNone = 0x00000000;
  static const htmlSelectExFlagHideSelectionInDesign = 0x00000001;
  static const htmlSelectExFlag_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlSelection {
  static const htmlSelectionNone = 0x00000000;
  static const htmlSelectionText = 0x00000001;
  static const htmlSelectionControl = 0x00000002;
  static const htmlSelectionTable = 0x00000003;
  static const htmlSelection_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlMarqueeBehavior {
  static const htmlMarqueeBehaviorscroll = 0x00000001;
  static const htmlMarqueeBehaviorslide = 0x00000002;
  static const htmlMarqueeBehavioralternate = 0x00000003;
  static const htmlMarqueeBehavior_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlMarqueeDirection {
  static const htmlMarqueeDirectionleft = 0x00000001;
  static const htmlMarqueeDirectionright = 0x00000003;
  static const htmlMarqueeDirectionup = 0x00000005;
  static const htmlMarqueeDirectiondown = 0x00000007;
  static const htmlMarqueeDirection_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlPersistState {
  static const htmlPersistStateNormal = 0x00000000;
  static const htmlPersistStateFavorite = 0x00000001;
  static const htmlPersistStateHistory = 0x00000002;
  static const htmlPersistStateSnapshot = 0x00000003;
  static const htmlPersistStateUserData = 0x00000004;
  static const htmlPersistState_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlDropEffect {
  static const htmlDropEffectCopy = 0x00000000;
  static const htmlDropEffectLink = 0x00000001;
  static const htmlDropEffectMove = 0x00000002;
  static const htmlDropEffectNone = 0x00000003;
  static const htmlDropEffect_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlEffectAllowed {
  static const htmlEffectAllowedCopy = 0x00000000;
  static const htmlEffectAllowedLink = 0x00000001;
  static const htmlEffectAllowedMove = 0x00000002;
  static const htmlEffectAllowedCopyLink = 0x00000003;
  static const htmlEffectAllowedCopyMove = 0x00000004;
  static const htmlEffectAllowedLinkMove = 0x00000005;
  static const htmlEffectAllowedAll = 0x00000006;
  static const htmlEffectAllowedNone = 0x00000007;
  static const htmlEffectAllowedUninitialized = 0x00000008;
  static const htmlEffectAllowed_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlCompatMode {
  static const htmlCompatModeBackCompat = 0x00000000;
  static const htmlCompatModeCSS1Compat = 0x00000001;
  static const htmlCompatMode_Max = 0x7fffffff;
}

/// {@category Enum}
class BoolValue {
  static const True = 0x00000001;
  static const False = 0x00000000;
  static const BoolValue_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlCaptionAlign {
  static const htmlCaptionAlignNotSet = 0x00000000;
  static const htmlCaptionAlignLeft = 0x00000001;
  static const htmlCaptionAlignCenter = 0x00000002;
  static const htmlCaptionAlignRight = 0x00000003;
  static const htmlCaptionAlignJustify = 0x00000004;
  static const htmlCaptionAlignTop = 0x00000005;
  static const htmlCaptionAlignBottom = 0x00000006;
  static const htmlCaptionAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlCaptionVAlign {
  static const htmlCaptionVAlignNotSet = 0x00000000;
  static const htmlCaptionVAlignTop = 0x00000001;
  static const htmlCaptionVAlignBottom = 0x00000002;
  static const htmlCaptionVAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlFrame {
  static const htmlFrameNotSet = 0x00000000;
  static const htmlFramevoid = 0x00000001;
  static const htmlFrameabove = 0x00000002;
  static const htmlFramebelow = 0x00000003;
  static const htmlFramehsides = 0x00000004;
  static const htmlFramelhs = 0x00000005;
  static const htmlFramerhs = 0x00000006;
  static const htmlFramevsides = 0x00000007;
  static const htmlFramebox = 0x00000008;
  static const htmlFrameborder = 0x00000009;
  static const htmlFrame_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlRules {
  static const htmlRulesNotSet = 0x00000000;
  static const htmlRulesnone = 0x00000001;
  static const htmlRulesgroups = 0x00000002;
  static const htmlRulesrows = 0x00000003;
  static const htmlRulescols = 0x00000004;
  static const htmlRulesall = 0x00000005;
  static const htmlRules_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlCellAlign {
  static const htmlCellAlignNotSet = 0x00000000;
  static const htmlCellAlignLeft = 0x00000001;
  static const htmlCellAlignCenter = 0x00000002;
  static const htmlCellAlignRight = 0x00000003;
  static const htmlCellAlignMiddle = 0x00000002;
  static const htmlCellAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlCellVAlign {
  static const htmlCellVAlignNotSet = 0x00000000;
  static const htmlCellVAlignTop = 0x00000001;
  static const htmlCellVAlignMiddle = 0x00000002;
  static const htmlCellVAlignBottom = 0x00000003;
  static const htmlCellVAlignBaseline = 0x00000004;
  static const htmlCellVAlignCenter = 0x00000002;
  static const htmlCellVAlign_Max = 0x7fffffff;
}

/// {@category Enum}
class frameScrolling {
  static const frameScrollingyes = 0x00000001;
  static const frameScrollingno = 0x00000002;
  static const frameScrollingauto = 0x00000004;
  static const frameScrolling_Max = 0x7fffffff;
}

/// {@category Enum}
class sandboxAllow {
  static const sandboxAllowScripts = 0x00000000;
  static const sandboxAllowSameOrigin = 0x00000001;
  static const sandboxAllowTopNavigation = 0x00000002;
  static const sandboxAllowForms = 0x00000003;
  static const sandboxAllowPopups = 0x00000004;
  static const sandboxAllow_Max = 0x7fffffff;
}

/// {@category Enum}
class svgAngleType {
  static const SVG_ANGLETYPE_UNKNOWN = 0x00000000;
  static const SVG_ANGLETYPE_UNSPECIFIED = 0x00000001;
  static const SVG_ANGLETYPE_DEG = 0x00000002;
  static const SVG_ANGLETYPE_RAD = 0x00000003;
  static const SVG_ANGLETYPE_GRAD = 0x00000004;
  static const svgAngleType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgExternalResourcesRequired {
  static const svgExternalResourcesRequiredFalse = 0x00000000;
  static const svgExternalResourcesRequiredTrue = 0x00000001;
  static const svgExternalResourcesRequired_Max = 0x7fffffff;
}

/// {@category Enum}
class svgFocusable {
  static const svgFocusableNotSet = 0x00000000;
  static const svgFocusableAuto = 0x00000001;
  static const svgFocusableTrue = 0x00000002;
  static const svgFocusableFalse = 0x00000003;
  static const svgFocusable_Max = 0x7fffffff;
}

/// {@category Enum}
class svgLengthType {
  static const SVG_LENGTHTYPE_UNKNOWN = 0x00000000;
  static const SVG_LENGTHTYPE_NUMBER = 0x00000001;
  static const SVG_LENGTHTYPE_PERCENTAGE = 0x00000002;
  static const SVG_LENGTHTYPE_EMS = 0x00000003;
  static const SVG_LENGTHTYPE_EXS = 0x00000004;
  static const SVG_LENGTHTYPE_PX = 0x00000005;
  static const SVG_LENGTHTYPE_CM = 0x00000006;
  static const SVG_LENGTHTYPE_MM = 0x00000007;
  static const SVG_LENGTHTYPE_IN = 0x00000008;
  static const SVG_LENGTHTYPE_PT = 0x00000009;
  static const SVG_LENGTHTYPE_PC = 0x0000000a;
  static const svgLengthType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgPathSegType {
  static const PATHSEG_UNKNOWN = 0x00000000;
  static const PATHSEG_CLOSEPATH = 0x00000001;
  static const PATHSEG_MOVETO_ABS = 0x00000002;
  static const PATHSEG_MOVETO_REL = 0x00000003;
  static const PATHSEG_LINETO_ABS = 0x00000004;
  static const PATHSEG_LINETO_REL = 0x00000005;
  static const PATHSEG_CURVETO_CUBIC_ABS = 0x00000006;
  static const PATHSEG_CURVETO_CUBIC_REL = 0x00000007;
  static const PATHSEG_CURVETO_QUADRATIC_ABS = 0x00000008;
  static const PATHSEG_CURVETO_QUADRATIC_REL = 0x00000009;
  static const PATHSEG_ARC_ABS = 0x0000000a;
  static const PATHSEG_ARC_REL = 0x0000000b;
  static const PATHSEG_LINETO_HORIZONTAL_ABS = 0x0000000c;
  static const PATHSEG_LINETO_HORIZONTAL_REL = 0x0000000d;
  static const PATHSEG_LINETO_VERTICAL_ABS = 0x0000000e;
  static const PATHSEG_LINETO_VERTICAL_REL = 0x0000000f;
  static const PATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 0x00000010;
  static const PATHSEG_CURVETO_CUBIC_SMOOTH_REL = 0x00000011;
  static const PATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 0x00000012;
  static const PATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 0x00000013;
  static const svgPathSegType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgTransformType {
  static const SVG_TRANSFORM_UNKNOWN = 0x00000000;
  static const SVG_TRANSFORM_MATRIX = 0x00000001;
  static const SVG_TRANSFORM_TRANSLATE = 0x00000002;
  static const SVG_TRANSFORM_SCALE = 0x00000003;
  static const SVG_TRANSFORM_ROTATE = 0x00000004;
  static const SVG_TRANSFORM_SKEWX = 0x00000005;
  static const SVG_TRANSFORM_SKEWY = 0x00000006;
  static const svgTransformType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgPreserveAspectRatioAlignType {
  static const SVG_PRESERVEASPECTRATIO_UNKNOWN = 0x00000000;
  static const SVG_PRESERVEASPECTRATIO_NONE = 0x00000001;
  static const SVG_PRESERVEASPECTRATIO_XMINYMIN = 0x00000002;
  static const SVG_PRESERVEASPECTRATIO_XMIDYMIN = 0x00000003;
  static const SVG_PRESERVEASPECTRATIO_XMAXYMIN = 0x00000004;
  static const SVG_PRESERVEASPECTRATIO_XMINYMID = 0x00000005;
  static const SVG_PRESERVEASPECTRATIO_XMIDYMID = 0x00000006;
  static const SVG_PRESERVEASPECTRATIO_XMAXYMID = 0x00000007;
  static const SVG_PRESERVEASPECTRATIO_XMINYMAX = 0x00000008;
  static const SVG_PRESERVEASPECTRATIO_XMIDYMAX = 0x00000009;
  static const SVG_PRESERVEASPECTRATIO_XMAXYMAX = 0x0000000a;
  static const svgPreserveAspectRatioAlignType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgPreserveAspectMeetOrSliceType {
  static const SVG_MEETORSLICE_UNKNOWN = 0x00000000;
  static const SVG_MEETORSLICE_MEET = 0x00000001;
  static const SVG_MEETORSLICE_SLICE = 0x00000002;
  static const svgPreserveAspectMeetOrSliceType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgUnitTypes {
  static const SVG_UNITTYPE_UNKNOWN = 0x00000000;
  static const SVG_UNITTYPE_USERSPACEONUSE = 0x00000001;
  static const SVG_UNITTYPE_OBJECTBOUNDINGBOX = 0x00000002;
  static const svgUnitTypes_Max = 0x7fffffff;
}

/// {@category Enum}
class svgSpreadMethod {
  static const SVG_SPREADMETHOD_UNKNOWN = 0x00000000;
  static const SVG_SPREADMETHOD_PAD = 0x00000001;
  static const SVG_SPREADMETHOD_REFLECT = 0x00000002;
  static const SVG_SPREADMETHOD_REPEAT = 0x00000003;
  static const svgSpreadMethod_Max = 0x7fffffff;
}

/// {@category Enum}
class svgFeblendMode {
  static const SVG_FEBLEND_MODE_UNKNOWN = 0x00000000;
  static const SVG_FEBLEND_MODE_NORMAL = 0x00000001;
  static const SVG_FEBLEND_MODE_MULTIPLY = 0x00000002;
  static const SVG_FEBLEND_MODE_SCREEN = 0x00000003;
  static const SVG_FEBLEND_MODE_DARKEN = 0x00000004;
  static const SVG_FEBLEND_MODE_LIGHTEN = 0x00000005;
  static const svgFeblendMode_Max = 0x7fffffff;
}

/// {@category Enum}
class svgFecolormatrixType {
  static const SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0x00000000;
  static const SVG_FECOLORMATRIX_TYPE_MATRIX = 0x00000001;
  static const SVG_FECOLORMATRIX_TYPE_SATURATE = 0x00000002;
  static const SVG_FECOLORMATRIX_TYPE_HUEROTATE = 0x00000003;
  static const SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 0x00000004;
  static const svgFecolormatrixType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgFecomponenttransferType {
  static const SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0x00000000;
  static const SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 0x00000001;
  static const SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 0x00000002;
  static const SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 0x00000003;
  static const SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 0x00000004;
  static const SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 0x00000005;
  static const svgFecomponenttransferType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgFecompositeOperator {
  static const SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0x00000000;
  static const SVG_FECOMPOSITE_OPERATOR_OVER = 0x00000001;
  static const SVG_FECOMPOSITE_OPERATOR_IN = 0x00000002;
  static const SVG_FECOMPOSITE_OPERATOR_OUT = 0x00000003;
  static const SVG_FECOMPOSITE_OPERATOR_ATOP = 0x00000004;
  static const SVG_FECOMPOSITE_OPERATOR_XOR = 0x00000005;
  static const SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 0x00000006;
  static const svgFecompositeOperator_Max = 0x7fffffff;
}

/// {@category Enum}
class svgEdgemode {
  static const SVG_EDGEMODE_UNKNOWN = 0x00000000;
  static const SVG_EDGEMODE_DUPLICATE = 0x00000001;
  static const SVG_EDGEMODE_WRAP = 0x00000002;
  static const SVG_EDGEMODE_NONE = 0x00000003;
  static const svgEdgemode_Max = 0x7fffffff;
}

/// {@category Enum}
class svgPreserveAlpha {
  static const SVG_PRESERVEALPHA_FALSE = 0x00000000;
  static const SVG_PRESERVEALPHA_TRUE = 0x00000001;
  static const svgPreserveAlpha_Max = 0x7fffffff;
}

/// {@category Enum}
class svgChannel {
  static const SVG_CHANNEL_UNKNOWN = 0x00000000;
  static const SVG_CHANNEL_R = 0x00000001;
  static const SVG_CHANNEL_G = 0x00000002;
  static const SVG_CHANNEL_B = 0x00000003;
  static const SVG_CHANNEL_A = 0x00000004;
  static const svgChannel_Max = 0x7fffffff;
}

/// {@category Enum}
class svgMorphologyOperator {
  static const SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0x00000000;
  static const SVG_MORPHOLOGY_OPERATOR_ERODE = 0x00000001;
  static const SVG_MORPHOLOGY_OPERATOR_DILATE = 0x00000002;
  static const svgMorphologyOperator_Max = 0x7fffffff;
}

/// {@category Enum}
class svgTurbulenceType {
  static const SVG_TURBULENCE_TYPE_UNKNOWN = 0x00000000;
  static const SVG_TURBULENCE_TYPE_FACTALNOISE = 0x00000001;
  static const SVG_TURBULENCE_TYPE_TURBULENCE = 0x00000002;
  static const svgTurbulenceType_Max = 0x7fffffff;
}

/// {@category Enum}
class svgStitchtype {
  static const SVG_STITCHTYPE_UNKNOWN = 0x00000000;
  static const SVG_STITCHTYPE_STITCH = 0x00000001;
  static const SVG_STITCHTYPE_NOSTITCH = 0x00000002;
  static const svgStitchtype_Max = 0x7fffffff;
}

/// {@category Enum}
class svgMarkerUnits {
  static const SVG_MARKERUNITS_UNKNOWN = 0x00000000;
  static const SVG_MARKERUNITS_USERSPACEONUSE = 0x00000001;
  static const SVG_MARKERUNITS_STROKEWIDTH = 0x00000002;
  static const svgMarkerUnits_Max = 0x7fffffff;
}

/// {@category Enum}
class svgMarkerOrient {
  static const SVG_MARKER_ORIENT_UNKNOWN = 0x00000000;
  static const SVG_MARKER_ORIENT_AUTO = 0x00000001;
  static const SVG_MARKER_ORIENT_ANGLE = 0x00000002;
  static const svgMarkerOrient_Max = 0x7fffffff;
}

/// {@category Enum}
class svgMarkerOrientAttribute {
  static const svgMarkerOrientAttributeAuto = 0x00000000;
  static const svgMarkerOrientAttribute_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlMediaNetworkState {
  static const htmlMediaNetworkStateEmpty = 0x00000000;
  static const htmlMediaNetworkStateIdle = 0x00000001;
  static const htmlMediaNetworkStateLoading = 0x00000002;
  static const htmlMediaNetworkStateNoSource = 0x00000003;
  static const htmlMediaNetworkState_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlMediaReadyState {
  static const htmlMediaReadyStateHaveNothing = 0x00000000;
  static const htmlMediaReadyStateHaveMetadata = 0x00000001;
  static const htmlMediaReadyStateHaveCurrentData = 0x00000002;
  static const htmlMediaReadyStateHaveFutureData = 0x00000003;
  static const htmlMediaReadyStateHaveEnoughData = 0x00000004;
  static const htmlMediaReadyState_Max = 0x7fffffff;
}

/// {@category Enum}
class htmlMediaErr {
  static const htmlMediaErrAborted = 0x00000000;
  static const htmlMediaErrNetwork = 0x00000001;
  static const htmlMediaErrDecode = 0x00000002;
  static const htmlMediaErrSrcNotSupported = 0x00000003;
  static const htmlMediaErr_Max = 0x7fffffff;
}

/// {@category Enum}
class lengthAdjust {
  static const LENGTHADJUST_UNKNOWN = 0x00000000;
  static const LENGTHADJUST_SPACING = 0x00000001;
  static const LENGTHADJUST_SPACINGANDGLYPHS = 0x00000002;
  static const lengthAdjust_Max = 0x7fffffff;
}

/// {@category Enum}
class textpathMethodtype {
  static const TEXTPATH_METHODTYPE_UNKNOWN = 0x00000000;
  static const TEXTPATH_METHODTYPE_ALIGN = 0x00000001;
  static const TEXTPATH_METHODTYPE_STRETCH = 0x00000002;
  static const textpathMethodtype_Max = 0x7fffffff;
}

/// {@category Enum}
class textpathSpacingtype {
  static const TEXTPATH_SPACINGTYPE_UNKNOWN = 0x00000000;
  static const TEXTPATH_SPACINGTYPE_AUTO = 0x00000001;
  static const TEXTPATH_SPACINGTYPE_EXACT = 0x00000002;
  static const textpathSpacingtype_Max = 0x7fffffff;
}

/// {@category Enum}
class ELEMENT_CORNER {
  static const ELEMENT_CORNER_NONE = 0x00000000;
  static const ELEMENT_CORNER_TOP = 0x00000001;
  static const ELEMENT_CORNER_LEFT = 0x00000002;
  static const ELEMENT_CORNER_BOTTOM = 0x00000003;
  static const ELEMENT_CORNER_RIGHT = 0x00000004;
  static const ELEMENT_CORNER_TOPLEFT = 0x00000005;
  static const ELEMENT_CORNER_TOPRIGHT = 0x00000006;
  static const ELEMENT_CORNER_BOTTOMLEFT = 0x00000007;
  static const ELEMENT_CORNER_BOTTOMRIGHT = 0x00000008;
  static const ELEMENT_CORNER_Max = 0x7fffffff;
}

/// {@category Enum}
class SECUREURLHOSTVALIDATE_FLAGS {
  static const SUHV_PROMPTBEFORENO = 0x00000001;
  static const SUHV_SILENTYES = 0x00000002;
  static const SUHV_UNSECURESOURCE = 0x00000004;
  static const SECUREURLHOSTVALIDATE_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class POINTER_GRAVITY {
  static const POINTER_GRAVITY_Left = 0x00000000;
  static const POINTER_GRAVITY_Right = 0x00000001;
  static const POINTER_GRAVITY_Max = 0x7fffffff;
}

/// {@category Enum}
class ELEMENT_ADJACENCY {
  static const ELEM_ADJ_BeforeBegin = 0x00000000;
  static const ELEM_ADJ_AfterBegin = 0x00000001;
  static const ELEM_ADJ_BeforeEnd = 0x00000002;
  static const ELEM_ADJ_AfterEnd = 0x00000003;
  static const ELEMENT_ADJACENCY_Max = 0x7fffffff;
}

/// {@category Enum}
class MARKUP_CONTEXT_TYPE {
  static const CONTEXT_TYPE_None = 0x00000000;
  static const CONTEXT_TYPE_Text = 0x00000001;
  static const CONTEXT_TYPE_EnterScope = 0x00000002;
  static const CONTEXT_TYPE_ExitScope = 0x00000003;
  static const CONTEXT_TYPE_NoScope = 0x00000004;
  static const MARKUP_CONTEXT_TYPE_Max = 0x7fffffff;
}

/// {@category Enum}
class FINDTEXT_FLAGS {
  static const FINDTEXT_BACKWARDS = 0x00000001;
  static const FINDTEXT_WHOLEWORD = 0x00000002;
  static const FINDTEXT_MATCHCASE = 0x00000004;
  static const FINDTEXT_RAW = 0x00020000;
  static const FINDTEXT_MATCHREPEATEDWHITESPACE = 0x00040000;
  static const FINDTEXT_MATCHDIAC = 0x20000000;
  static const FINDTEXT_MATCHKASHIDA = 0x40000000;
  static const FINDTEXT_MATCHALEFHAMZA = 0x80000000;
  static const FINDTEXT_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class MOVEUNIT_ACTION {
  static const MOVEUNIT_PREVCHAR = 0x00000000;
  static const MOVEUNIT_NEXTCHAR = 0x00000001;
  static const MOVEUNIT_PREVCLUSTERBEGIN = 0x00000002;
  static const MOVEUNIT_NEXTCLUSTERBEGIN = 0x00000003;
  static const MOVEUNIT_PREVCLUSTEREND = 0x00000004;
  static const MOVEUNIT_NEXTCLUSTEREND = 0x00000005;
  static const MOVEUNIT_PREVWORDBEGIN = 0x00000006;
  static const MOVEUNIT_NEXTWORDBEGIN = 0x00000007;
  static const MOVEUNIT_PREVWORDEND = 0x00000008;
  static const MOVEUNIT_NEXTWORDEND = 0x00000009;
  static const MOVEUNIT_PREVPROOFWORD = 0x0000000a;
  static const MOVEUNIT_NEXTPROOFWORD = 0x0000000b;
  static const MOVEUNIT_NEXTURLBEGIN = 0x0000000c;
  static const MOVEUNIT_PREVURLBEGIN = 0x0000000d;
  static const MOVEUNIT_NEXTURLEND = 0x0000000e;
  static const MOVEUNIT_PREVURLEND = 0x0000000f;
  static const MOVEUNIT_PREVSENTENCE = 0x00000010;
  static const MOVEUNIT_NEXTSENTENCE = 0x00000011;
  static const MOVEUNIT_PREVBLOCK = 0x00000012;
  static const MOVEUNIT_NEXTBLOCK = 0x00000013;
  static const MOVEUNIT_ACTION_Max = 0x7fffffff;
}

/// {@category Enum}
class PARSE_FLAGS {
  static const PARSE_ABSOLUTIFYIE40URLS = 0x00000001;
  static const PARSE_DISABLEVML = 0x00000002;
  static const PARSE_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class ELEMENT_TAG_ID {
  static const TAGID_NULL = 0x00000000;
  static const TAGID_UNKNOWN = 0x00000001;
  static const TAGID_A = 0x00000002;
  static const TAGID_ACRONYM = 0x00000003;
  static const TAGID_ADDRESS = 0x00000004;
  static const TAGID_APPLET = 0x00000005;
  static const TAGID_AREA = 0x00000006;
  static const TAGID_B = 0x00000007;
  static const TAGID_BASE = 0x00000008;
  static const TAGID_BASEFONT = 0x00000009;
  static const TAGID_BDO = 0x0000000a;
  static const TAGID_BGSOUND = 0x0000000b;
  static const TAGID_BIG = 0x0000000c;
  static const TAGID_BLINK = 0x0000000d;
  static const TAGID_BLOCKQUOTE = 0x0000000e;
  static const TAGID_BODY = 0x0000000f;
  static const TAGID_BR = 0x00000010;
  static const TAGID_BUTTON = 0x00000011;
  static const TAGID_CAPTION = 0x00000012;
  static const TAGID_CENTER = 0x00000013;
  static const TAGID_CITE = 0x00000014;
  static const TAGID_CODE = 0x00000015;
  static const TAGID_COL = 0x00000016;
  static const TAGID_COLGROUP = 0x00000017;
  static const TAGID_COMMENT = 0x00000018;
  static const TAGID_COMMENT_RAW = 0x00000019;
  static const TAGID_DD = 0x0000001a;
  static const TAGID_DEL = 0x0000001b;
  static const TAGID_DFN = 0x0000001c;
  static const TAGID_DIR = 0x0000001d;
  static const TAGID_DIV = 0x0000001e;
  static const TAGID_DL = 0x0000001f;
  static const TAGID_DT = 0x00000020;
  static const TAGID_EM = 0x00000021;
  static const TAGID_EMBED = 0x00000022;
  static const TAGID_FIELDSET = 0x00000023;
  static const TAGID_FONT = 0x00000024;
  static const TAGID_FORM = 0x00000025;
  static const TAGID_FRAME = 0x00000026;
  static const TAGID_FRAMESET = 0x00000027;
  static const TAGID_GENERIC = 0x00000028;
  static const TAGID_H1 = 0x00000029;
  static const TAGID_H2 = 0x0000002a;
  static const TAGID_H3 = 0x0000002b;
  static const TAGID_H4 = 0x0000002c;
  static const TAGID_H5 = 0x0000002d;
  static const TAGID_H6 = 0x0000002e;
  static const TAGID_HEAD = 0x0000002f;
  static const TAGID_HR = 0x00000030;
  static const TAGID_HTML = 0x00000031;
  static const TAGID_I = 0x00000032;
  static const TAGID_IFRAME = 0x00000033;
  static const TAGID_IMG = 0x00000034;
  static const TAGID_INPUT = 0x00000035;
  static const TAGID_INS = 0x00000036;
  static const TAGID_KBD = 0x00000037;
  static const TAGID_LABEL = 0x00000038;
  static const TAGID_LEGEND = 0x00000039;
  static const TAGID_LI = 0x0000003a;
  static const TAGID_LINK = 0x0000003b;
  static const TAGID_LISTING = 0x0000003c;
  static const TAGID_MAP = 0x0000003d;
  static const TAGID_MARQUEE = 0x0000003e;
  static const TAGID_MENU = 0x0000003f;
  static const TAGID_META = 0x00000040;
  static const TAGID_NEXTID = 0x00000041;
  static const TAGID_NOBR = 0x00000042;
  static const TAGID_NOEMBED = 0x00000043;
  static const TAGID_NOFRAMES = 0x00000044;
  static const TAGID_NOSCRIPT = 0x00000045;
  static const TAGID_OBJECT = 0x00000046;
  static const TAGID_OL = 0x00000047;
  static const TAGID_OPTION = 0x00000048;
  static const TAGID_P = 0x00000049;
  static const TAGID_PARAM = 0x0000004a;
  static const TAGID_PLAINTEXT = 0x0000004b;
  static const TAGID_PRE = 0x0000004c;
  static const TAGID_Q = 0x0000004d;
  static const TAGID_RP = 0x0000004e;
  static const TAGID_RT = 0x0000004f;
  static const TAGID_RUBY = 0x00000050;
  static const TAGID_S = 0x00000051;
  static const TAGID_SAMP = 0x00000052;
  static const TAGID_SCRIPT = 0x00000053;
  static const TAGID_SELECT = 0x00000054;
  static const TAGID_SMALL = 0x00000055;
  static const TAGID_SPAN = 0x00000056;
  static const TAGID_STRIKE = 0x00000057;
  static const TAGID_STRONG = 0x00000058;
  static const TAGID_STYLE = 0x00000059;
  static const TAGID_SUB = 0x0000005a;
  static const TAGID_SUP = 0x0000005b;
  static const TAGID_TABLE = 0x0000005c;
  static const TAGID_TBODY = 0x0000005d;
  static const TAGID_TC = 0x0000005e;
  static const TAGID_TD = 0x0000005f;
  static const TAGID_TEXTAREA = 0x00000060;
  static const TAGID_TFOOT = 0x00000061;
  static const TAGID_TH = 0x00000062;
  static const TAGID_THEAD = 0x00000063;
  static const TAGID_TITLE = 0x00000064;
  static const TAGID_TR = 0x00000065;
  static const TAGID_TT = 0x00000066;
  static const TAGID_U = 0x00000067;
  static const TAGID_UL = 0x00000068;
  static const TAGID_VAR = 0x00000069;
  static const TAGID_WBR = 0x0000006a;
  static const TAGID_XMP = 0x0000006b;
  static const TAGID_ROOT = 0x0000006c;
  static const TAGID_OPTGROUP = 0x0000006d;
  static const TAGID_ABBR = 0x0000006e;
  static const TAGID_SVG_A = 0x0000006f;
  static const TAGID_SVG_ALTGLYPH = 0x00000070;
  static const TAGID_SVG_ALTGLYPHDEF = 0x00000071;
  static const TAGID_SVG_ALTGLYPHITEM = 0x00000072;
  static const TAGID_SVG_ANIMATE = 0x00000073;
  static const TAGID_SVG_ANIMATECOLOR = 0x00000074;
  static const TAGID_SVG_ANIMATEMOTION = 0x00000075;
  static const TAGID_SVG_ANIMATETRANSFORM = 0x00000076;
  static const TAGID_SVG_CIRCLE = 0x00000077;
  static const TAGID_SVG_CLIPPATH = 0x00000078;
  static const TAGID_SVG_COLOR_PROFILE = 0x00000079;
  static const TAGID_SVG_CURSOR = 0x0000007a;
  static const TAGID_SVG_DEFINITION_SRC = 0x0000007b;
  static const TAGID_SVG_DEFS = 0x0000007c;
  static const TAGID_SVG_DESC = 0x0000007d;
  static const TAGID_SVG_ELLIPSE = 0x0000007e;
  static const TAGID_SVG_FEBLEND = 0x0000007f;
  static const TAGID_SVG_FECOLORMATRIX = 0x00000080;
  static const TAGID_SVG_FECOMPONENTTRANSFER = 0x00000081;
  static const TAGID_SVG_FECOMPOSITE = 0x00000082;
  static const TAGID_SVG_FECONVOLVEMATRIX = 0x00000083;
  static const TAGID_SVG_FEDIFFUSELIGHTING = 0x00000084;
  static const TAGID_SVG_FEDISPLACEMENTMAP = 0x00000085;
  static const TAGID_SVG_FEDISTANTLIGHT = 0x00000086;
  static const TAGID_SVG_FEFLOOD = 0x00000087;
  static const TAGID_SVG_FEFUNCA = 0x00000088;
  static const TAGID_SVG_FEFUNCB = 0x00000089;
  static const TAGID_SVG_FEFUNCG = 0x0000008a;
  static const TAGID_SVG_FEFUNCR = 0x0000008b;
  static const TAGID_SVG_FEGAUSSIANBLUR = 0x0000008c;
  static const TAGID_SVG_FEIMAGE = 0x0000008d;
  static const TAGID_SVG_FEMERGE = 0x0000008e;
  static const TAGID_SVG_FEMERGENODE = 0x0000008f;
  static const TAGID_SVG_FEMORPHOLOGY = 0x00000090;
  static const TAGID_SVG_FEOFFSET = 0x00000091;
  static const TAGID_SVG_FEPOINTLIGHT = 0x00000092;
  static const TAGID_SVG_FESPECULARLIGHTING = 0x00000093;
  static const TAGID_SVG_FESPOTLIGHT = 0x00000094;
  static const TAGID_SVG_FETILE = 0x00000095;
  static const TAGID_SVG_FETURBULENCE = 0x00000096;
  static const TAGID_SVG_FILTER = 0x00000097;
  static const TAGID_SVG_FONT = 0x00000098;
  static const TAGID_SVG_FONT_FACE = 0x00000099;
  static const TAGID_SVG_FONT_FACE_FORMAT = 0x0000009a;
  static const TAGID_SVG_FONT_FACE_NAME = 0x0000009b;
  static const TAGID_SVG_FONT_FACE_SRC = 0x0000009c;
  static const TAGID_SVG_FONT_FACE_URI = 0x0000009d;
  static const TAGID_SVG_FOREIGNOBJECT = 0x0000009e;
  static const TAGID_SVG_G = 0x0000009f;
  static const TAGID_SVG_GLYPH = 0x000000a0;
  static const TAGID_SVG_GLYPHREF = 0x000000a1;
  static const TAGID_SVG_HKERN = 0x000000a2;
  static const TAGID_SVG_IMAGE = 0x000000a3;
  static const TAGID_SVG_LINE = 0x000000a4;
  static const TAGID_SVG_LINEARGRADIENT = 0x000000a5;
  static const TAGID_SVG_MARKER = 0x000000a6;
  static const TAGID_SVG_MASK = 0x000000a7;
  static const TAGID_SVG_METADATA = 0x000000a8;
  static const TAGID_SVG_MISSING_GLYPH = 0x000000a9;
  static const TAGID_SVG_MPATH = 0x000000aa;
  static const TAGID_SVG_PATH = 0x000000ab;
  static const TAGID_SVG_PATTERN = 0x000000ac;
  static const TAGID_SVG_POLYGON = 0x000000ad;
  static const TAGID_SVG_POLYLINE = 0x000000ae;
  static const TAGID_SVG_RADIALGRADIENT = 0x000000af;
  static const TAGID_SVG_RECT = 0x000000b0;
  static const TAGID_SVG_SCRIPT = 0x000000b1;
  static const TAGID_SVG_SET = 0x000000b2;
  static const TAGID_SVG_STOP = 0x000000b3;
  static const TAGID_SVG_STYLE = 0x000000b4;
  static const TAGID_SVG_SVG = 0x000000b5;
  static const TAGID_SVG_SWITCH = 0x000000b6;
  static const TAGID_SVG_SYMBOL = 0x000000b7;
  static const TAGID_SVG_TEXT = 0x000000b8;
  static const TAGID_SVG_TEXTPATH = 0x000000b9;
  static const TAGID_SVG_TITLE = 0x000000ba;
  static const TAGID_SVG_TREF = 0x000000bb;
  static const TAGID_SVG_TSPAN = 0x000000bc;
  static const TAGID_SVG_USE = 0x000000bd;
  static const TAGID_SVG_VIEW = 0x000000be;
  static const TAGID_SVG_VKERN = 0x000000bf;
  static const TAGID_AUDIO = 0x000000c0;
  static const TAGID_SOURCE = 0x000000c1;
  static const TAGID_VIDEO = 0x000000c2;
  static const TAGID_CANVAS = 0x000000c3;
  static const TAGID_DOCTYPE = 0x000000c4;
  static const TAGID_KEYGEN = 0x000000c5;
  static const TAGID_PROCESSINGINSTRUCTION = 0x000000c6;
  static const TAGID_ARTICLE = 0x000000c7;
  static const TAGID_ASIDE = 0x000000c8;
  static const TAGID_FIGCAPTION = 0x000000c9;
  static const TAGID_FIGURE = 0x000000ca;
  static const TAGID_FOOTER = 0x000000cb;
  static const TAGID_HEADER = 0x000000cc;
  static const TAGID_HGROUP = 0x000000cd;
  static const TAGID_MARK = 0x000000ce;
  static const TAGID_NAV = 0x000000cf;
  static const TAGID_SECTION = 0x000000d0;
  static const TAGID_PROGRESS = 0x000000d1;
  static const TAGID_MATHML_ANNOTATION_XML = 0x000000d2;
  static const TAGID_MATHML_MATH = 0x000000d3;
  static const TAGID_MATHML_MI = 0x000000d4;
  static const TAGID_MATHML_MN = 0x000000d5;
  static const TAGID_MATHML_MO = 0x000000d6;
  static const TAGID_MATHML_MS = 0x000000d7;
  static const TAGID_MATHML_MTEXT = 0x000000d8;
  static const TAGID_DATALIST = 0x000000d9;
  static const TAGID_TRACK = 0x000000da;
  static const TAGID_ISINDEX = 0x000000db;
  static const TAGID_COMMAND = 0x000000dc;
  static const TAGID_DETAILS = 0x000000dd;
  static const TAGID_SUMMARY = 0x000000de;
  static const TAGID_X_MS_WEBVIEW = 0x000000df;
  static const TAGID_COUNT = 0x000000e0;
  static const TAGID_LAST_PREDEFINED = 0x00002710;
  static const ELEMENT_TAG_ID_Max = 0x7fffffff;
}

/// {@category Enum}
class SELECTION_TYPE {
  static const SELECTION_TYPE_None = 0x00000000;
  static const SELECTION_TYPE_Caret = 0x00000001;
  static const SELECTION_TYPE_Text = 0x00000002;
  static const SELECTION_TYPE_Control = 0x00000003;
  static const SELECTION_TYPE_Max = 0x7fffffff;
}

/// {@category Enum}
class SAVE_SEGMENTS_FLAGS {
  static const SAVE_SEGMENTS_NoIE4SelectionCompat = 0x00000001;
  static const SAVE_SEGMENTS_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class CARET_DIRECTION {
  static const CARET_DIRECTION_INDETERMINATE = 0x00000000;
  static const CARET_DIRECTION_SAME = 0x00000001;
  static const CARET_DIRECTION_BACKWARD = 0x00000002;
  static const CARET_DIRECTION_FORWARD = 0x00000003;
  static const CARET_DIRECTION_Max = 0x7fffffff;
}

/// {@category Enum}
class LINE_DIRECTION {
  static const LINE_DIRECTION_RightToLeft = 0x00000001;
  static const LINE_DIRECTION_LeftToRight = 0x00000002;
  static const LINE_DIRECTION_Max = 0x7fffffff;
}

/// {@category Enum}
class HT_OPTIONS {
  static const HT_OPT_AllowAfterEOL = 0x00000001;
  static const HT_OPTIONS_Max = 0x7fffffff;
}

/// {@category Enum}
class HT_RESULTS {
  static const HT_RESULTS_Glyph = 0x00000001;
  static const HT_RESULTS_Max = 0x7fffffff;
}

/// {@category Enum}
class DISPLAY_MOVEUNIT {
  static const DISPLAY_MOVEUNIT_PreviousLine = 0x00000001;
  static const DISPLAY_MOVEUNIT_NextLine = 0x00000002;
  static const DISPLAY_MOVEUNIT_CurrentLineStart = 0x00000003;
  static const DISPLAY_MOVEUNIT_CurrentLineEnd = 0x00000004;
  static const DISPLAY_MOVEUNIT_TopOfWindow = 0x00000005;
  static const DISPLAY_MOVEUNIT_BottomOfWindow = 0x00000006;
  static const DISPLAY_MOVEUNIT_Max = 0x7fffffff;
}

/// {@category Enum}
class DISPLAY_GRAVITY {
  static const DISPLAY_GRAVITY_PreviousLine = 0x00000001;
  static const DISPLAY_GRAVITY_NextLine = 0x00000002;
  static const DISPLAY_GRAVITY_Max = 0x7fffffff;
}

/// {@category Enum}
class DISPLAY_BREAK {
  static const DISPLAY_BREAK_None = 0x00000000;
  static const DISPLAY_BREAK_Block = 0x00000001;
  static const DISPLAY_BREAK_Break = 0x00000002;
  static const DISPLAY_BREAK_Max = 0x7fffffff;
}

/// {@category Enum}
class COORD_SYSTEM {
  static const COORD_SYSTEM_GLOBAL = 0x00000000;
  static const COORD_SYSTEM_PARENT = 0x00000001;
  static const COORD_SYSTEM_CONTAINER = 0x00000002;
  static const COORD_SYSTEM_CONTENT = 0x00000003;
  static const COORD_SYSTEM_FRAME = 0x00000004;
  static const COORD_SYSTEM_CLIENT = 0x00000005;
  static const COORD_SYSTEM_Max = 0x7fffffff;
}

/// {@category Enum}
class DEV_CONSOLE_MESSAGE_LEVEL {
  static const DCML_INFORMATIONAL = 0x00000000;
  static const DCML_WARNING = 0x00000001;
  static const DCML_ERROR = 0x00000002;
  static const DEV_CONSOLE_MESSAGE_LEVEL_Max = 0x7fffffff;
}

/// {@category Enum}
class DOM_EVENT_PHASE {
  static const DEP_CAPTURING_PHASE = 0x00000001;
  static const DEP_AT_TARGET = 0x00000002;
  static const DEP_BUBBLING_PHASE = 0x00000003;
  static const DOM_EVENT_PHASE_Max = 0x7fffffff;
}

/// {@category Enum}
class SCRIPT_TIMER_TYPE {
  static const STT_TIMEOUT = 0x00000000;
  static const STT_INTERVAL = 0x00000001;
  static const STT_IMMEDIATE = 0x00000002;
  static const STT_ANIMATION_FRAME = 0x00000003;
  static const SCRIPT_TIMER_TYPE_Max = 0x7fffffff;
}

/// {@category Enum}
class HTML_PAINTER {
  static const HTMLPAINTER_OPAQUE = 0x00000001;
  static const HTMLPAINTER_TRANSPARENT = 0x00000002;
  static const HTMLPAINTER_ALPHA = 0x00000004;
  static const HTMLPAINTER_COMPLEX = 0x00000008;
  static const HTMLPAINTER_OVERLAY = 0x00000010;
  static const HTMLPAINTER_HITTEST = 0x00000020;
  static const HTMLPAINTER_SURFACE = 0x00000100;
  static const HTMLPAINTER_3DSURFACE = 0x00000200;
  static const HTMLPAINTER_NOBAND = 0x00000400;
  static const HTMLPAINTER_NODC = 0x00001000;
  static const HTMLPAINTER_NOPHYSICALCLIP = 0x00002000;
  static const HTMLPAINTER_NOSAVEDC = 0x00004000;
  static const HTMLPAINTER_SUPPORTS_XFORM = 0x00008000;
  static const HTMLPAINTER_EXPAND = 0x00010000;
  static const HTMLPAINTER_NOSCROLLBITS = 0x00020000;
  static const HTML_PAINTER_Max = 0x7fffffff;
}

/// {@category Enum}
class HTML_PAINT_ZORDER {
  static const HTMLPAINT_ZORDER_NONE = 0x00000000;
  static const HTMLPAINT_ZORDER_REPLACE_ALL = 0x00000001;
  static const HTMLPAINT_ZORDER_REPLACE_CONTENT = 0x00000002;
  static const HTMLPAINT_ZORDER_REPLACE_BACKGROUND = 0x00000003;
  static const HTMLPAINT_ZORDER_BELOW_CONTENT = 0x00000004;
  static const HTMLPAINT_ZORDER_BELOW_FLOW = 0x00000005;
  static const HTMLPAINT_ZORDER_ABOVE_FLOW = 0x00000006;
  static const HTMLPAINT_ZORDER_ABOVE_CONTENT = 0x00000007;
  static const HTMLPAINT_ZORDER_WINDOW_TOP = 0x00000008;
  static const HTML_PAINT_ZORDER_Max = 0x7fffffff;
}

/// {@category Enum}
class HTML_PAINT_DRAW_FLAGS {
  static const HTMLPAINT_DRAW_UPDATEREGION = 0x00000001;
  static const HTMLPAINT_DRAW_USE_XFORM = 0x00000002;
  static const HTML_PAINT_DRAW_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class HTML_PAINT_EVENT_FLAGS {
  static const HTMLPAINT_EVENT_TARGET = 0x00000001;
  static const HTMLPAINT_EVENT_SETCURSOR = 0x00000002;
  static const HTML_PAINT_EVENT_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class HTML_PAINT_DRAW_INFO_FLAGS {
  static const HTMLPAINT_DRAWINFO_VIEWPORT = 0x00000001;
  static const HTMLPAINT_DRAWINFO_UPDATEREGION = 0x00000002;
  static const HTMLPAINT_DRAWINFO_XFORM = 0x00000004;
  static const HTML_PAINT_DRAW_INFO_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLDlgFlag {
  static const HTMLDlgFlagNo = 0x00000000;
  static const HTMLDlgFlagOff = 0x00000000;
  static const HTMLDlgFlag0 = 0x00000000;
  static const HTMLDlgFlagYes = 0x00000001;
  static const HTMLDlgFlagOn = 0x00000001;
  static const HTMLDlgFlag1 = 0x00000001;
  static const HTMLDlgFlagNotSet = 0xffffffff;
  static const HTMLDlgFlag_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLDlgBorder {
  static const HTMLDlgBorderThin = 0x00000000;
  static const HTMLDlgBorderThick = 0x00040000;
  static const HTMLDlgBorder_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLDlgEdge {
  static const HTMLDlgEdgeSunken = 0x00000000;
  static const HTMLDlgEdgeRaised = 0x00000010;
  static const HTMLDlgEdge_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLDlgCenter {
  static const HTMLDlgCenterNo = 0x00000000;
  static const HTMLDlgCenterOff = 0x00000000;
  static const HTMLDlgCenter0 = 0x00000000;
  static const HTMLDlgCenterYes = 0x00000001;
  static const HTMLDlgCenterOn = 0x00000001;
  static const HTMLDlgCenter1 = 0x00000001;
  static const HTMLDlgCenterParent = 0x00000001;
  static const HTMLDlgCenterDesktop = 0x00000002;
  static const HTMLDlgCenter_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLAppFlag {
  static const HTMLAppFlagNo = 0x00000000;
  static const HTMLAppFlagOff = 0x00000000;
  static const HTMLAppFlag0 = 0x00000000;
  static const HTMLAppFlagYes = 0x00000001;
  static const HTMLAppFlagOn = 0x00000001;
  static const HTMLAppFlag1 = 0x00000001;
  static const HTMLAppFlag_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLMinimizeFlag {
  static const HTMLMinimizeFlagNo = 0x00000000;
  static const HTMLMinimizeFlagYes = 0x00020000;
  static const HTMLMinimizeFlag_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLMaximizeFlag {
  static const HTMLMaximizeFlagNo = 0x00000000;
  static const HTMLMaximizeFlagYes = 0x00010000;
  static const HTMLMaximizeFlag_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLCaptionFlag {
  static const HTMLCaptionFlagNo = 0x00000000;
  static const HTMLCaptionFlagYes = 0x00c00000;
  static const HTMLCaptionFlag_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLSysMenuFlag {
  static const HTMLSysMenuFlagNo = 0x00000000;
  static const HTMLSysMenuFlagYes = 0x00080000;
  static const HTMLSysMenuFlag_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLBorder {
  static const HTMLBorderNone = 0x00000000;
  static const HTMLBorderThick = 0x00040000;
  static const HTMLBorderDialog = 0x00400000;
  static const HTMLBorderThin = 0x00800000;
  static const HTMLBorder_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLBorderStyle {
  static const HTMLBorderStyleNormal = 0x00000000;
  static const HTMLBorderStyleRaised = 0x00000100;
  static const HTMLBorderStyleSunken = 0x00000200;
  static const HTMLBorderStylecombined = 0x00000300;
  static const HTMLBorderStyleStatic = 0x00020000;
  static const HTMLBorderStyle_Max = 0x7fffffff;
}

/// {@category Enum}
class HTMLWindowState {
  static const HTMLWindowStateNormal = 0x00000001;
  static const HTMLWindowStateMaximize = 0x00000003;
  static const HTMLWindowStateMinimize = 0x00000006;
  static const HTMLWindowState_Max = 0x7fffffff;
}

/// {@category Enum}
class BEHAVIOR_EVENT {
  static const BEHAVIOREVENT_FIRST = 0x00000000;
  static const BEHAVIOREVENT_CONTENTREADY = 0x00000000;
  static const BEHAVIOREVENT_DOCUMENTREADY = 0x00000001;
  static const BEHAVIOREVENT_APPLYSTYLE = 0x00000002;
  static const BEHAVIOREVENT_DOCUMENTCONTEXTCHANGE = 0x00000003;
  static const BEHAVIOREVENT_CONTENTSAVE = 0x00000004;
  static const BEHAVIOREVENT_LAST = 0x00000004;
  static const BEHAVIOR_EVENT_Max = 0x7fffffff;
}

/// {@category Enum}
class BEHAVIOR_EVENT_FLAGS {
  static const BEHAVIOREVENTFLAGS_BUBBLE = 0x00000001;
  static const BEHAVIOREVENTFLAGS_STANDARDADDITIVE = 0x00000002;
  static const BEHAVIOR_EVENT_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class BEHAVIOR_RENDER_INFO {
  static const BEHAVIORRENDERINFO_BEFOREBACKGROUND = 0x00000001;
  static const BEHAVIORRENDERINFO_AFTERBACKGROUND = 0x00000002;
  static const BEHAVIORRENDERINFO_BEFORECONTENT = 0x00000004;
  static const BEHAVIORRENDERINFO_AFTERCONTENT = 0x00000008;
  static const BEHAVIORRENDERINFO_AFTERFOREGROUND = 0x00000020;
  static const BEHAVIORRENDERINFO_ABOVECONTENT = 0x00000028;
  static const BEHAVIORRENDERINFO_ALLLAYERS = 0x000000ff;
  static const BEHAVIORRENDERINFO_DISABLEBACKGROUND = 0x00000100;
  static const BEHAVIORRENDERINFO_DISABLENEGATIVEZ = 0x00000200;
  static const BEHAVIORRENDERINFO_DISABLECONTENT = 0x00000400;
  static const BEHAVIORRENDERINFO_DISABLEPOSITIVEZ = 0x00000800;
  static const BEHAVIORRENDERINFO_DISABLEALLLAYERS = 0x00000f00;
  static const BEHAVIORRENDERINFO_HITTESTING = 0x00001000;
  static const BEHAVIORRENDERINFO_SURFACE = 0x00100000;
  static const BEHAVIORRENDERINFO_3DSURFACE = 0x00200000;
  static const BEHAVIOR_RENDER_INFO_Max = 0x7fffffff;
}

/// {@category Enum}
class BEHAVIOR_RELATION {
  static const BEHAVIOR_FIRSTRELATION = 0x00000000;
  static const BEHAVIOR_SAMEELEMENT = 0x00000000;
  static const BEHAVIOR_PARENT = 0x00000001;
  static const BEHAVIOR_CHILD = 0x00000002;
  static const BEHAVIOR_SIBLING = 0x00000003;
  static const BEHAVIOR_LASTRELATION = 0x00000003;
  static const BEHAVIOR_RELATION_Max = 0x7fffffff;
}

/// {@category Enum}
class BEHAVIOR_LAYOUT_INFO {
  static const BEHAVIORLAYOUTINFO_FULLDELEGATION = 0x00000001;
  static const BEHAVIORLAYOUTINFO_MODIFYNATURAL = 0x00000002;
  static const BEHAVIORLAYOUTINFO_MAPSIZE = 0x00000004;
  static const BEHAVIOR_LAYOUT_INFO_Max = 0x7fffffff;
}

/// {@category Enum}
class BEHAVIOR_LAYOUT_MODE {
  static const BEHAVIORLAYOUTMODE_NATURAL = 0x00000001;
  static const BEHAVIORLAYOUTMODE_MINWIDTH = 0x00000002;
  static const BEHAVIORLAYOUTMODE_MAXWIDTH = 0x00000004;
  static const BEHAVIORLAYOUTMODE_MEDIA_RESOLUTION = 0x00004000;
  static const BEHAVIORLAYOUTMODE_FINAL_PERCENT = 0x00008000;
  static const BEHAVIOR_LAYOUT_MODE_Max = 0x7fffffff;
}

/// {@category Enum}
class ELEMENTDESCRIPTOR_FLAGS {
  static const ELEMENTDESCRIPTORFLAGS_LITERAL = 0x00000001;
  static const ELEMENTDESCRIPTORFLAGS_NESTED_LITERAL = 0x00000002;
  static const ELEMENTDESCRIPTOR_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class ELEMENTNAMESPACE_FLAGS {
  static const ELEMENTNAMESPACEFLAGS_ALLOWANYTAG = 0x00000001;
  static const ELEMENTNAMESPACEFLAGS_QUERYFORUNKNOWNTAGS = 0x00000002;
  static const ELEMENTNAMESPACE_FLAGS_Max = 0x7fffffff;
}

/// {@category Enum}
class VIEW_OBJECT_ALPHA_MODE {
  static const VIEW_OBJECT_ALPHA_MODE_IGNORE = 0x00000000;
  static const VIEW_OBJECT_ALPHA_MODE_PREMULTIPLIED = 0x00000001;
  static const VIEW_OBJECT_ALPHA_MODE_Max = 0x7fffffff;
}

/// {@category Enum}
class VIEW_OBJECT_COMPOSITION_MODE {
  static const VIEW_OBJECT_COMPOSITION_MODE_LEGACY = 0x00000000;
  static const VIEW_OBJECT_COMPOSITION_MODE_SURFACEPRESENTER = 0x00000001;
  static const VIEW_OBJECT_COMPOSITION_MODE_Max = 0x7fffffff;
}

