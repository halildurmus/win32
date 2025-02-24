// ignore_for_file: camel_case_types, constant_identifier_names
extension type const CorElementType(int _) implements int {}
const ELEMENT_TYPE_END = CorElementType(0);
const ELEMENT_TYPE_VOID = CorElementType(1);
const ELEMENT_TYPE_BOOLEAN = CorElementType(2);
const ELEMENT_TYPE_CHAR = CorElementType(3);
const ELEMENT_TYPE_I1 = CorElementType(4);
const ELEMENT_TYPE_U1 = CorElementType(5);
const ELEMENT_TYPE_I2 = CorElementType(6);
const ELEMENT_TYPE_U2 = CorElementType(7);
const ELEMENT_TYPE_I4 = CorElementType(8);
const ELEMENT_TYPE_U4 = CorElementType(9);
const ELEMENT_TYPE_I8 = CorElementType(10);
const ELEMENT_TYPE_U8 = CorElementType(11);
const ELEMENT_TYPE_R4 = CorElementType(12);
const ELEMENT_TYPE_R8 = CorElementType(13);
const ELEMENT_TYPE_STRING = CorElementType(14);
const ELEMENT_TYPE_PTR = CorElementType(15);
const ELEMENT_TYPE_BYREF = CorElementType(16);
const ELEMENT_TYPE_VALUETYPE = CorElementType(17);
const ELEMENT_TYPE_CLASS = CorElementType(18);
const ELEMENT_TYPE_VAR = CorElementType(19);
const ELEMENT_TYPE_ARRAY = CorElementType(20);
const ELEMENT_TYPE_GENERICINST = CorElementType(21);
const ELEMENT_TYPE_TYPEDBYREF = CorElementType(22);
const ELEMENT_TYPE_I = CorElementType(24);
const ELEMENT_TYPE_U = CorElementType(25);
const ELEMENT_TYPE_FNPTR = CorElementType(27);
const ELEMENT_TYPE_OBJECT = CorElementType(28);
const ELEMENT_TYPE_SZARRAY = CorElementType(29);
const ELEMENT_TYPE_MVAR = CorElementType(30);
const ELEMENT_TYPE_CMOD_REQD = CorElementType(31);
const ELEMENT_TYPE_CMOD_OPT = CorElementType(32);
const ELEMENT_TYPE_INTERNAL = CorElementType(33);
const ELEMENT_TYPE_MAX = CorElementType(34);
const ELEMENT_TYPE_MODIFIER = CorElementType(64);
const ELEMENT_TYPE_SENTINEL = CorElementType(65);
const ELEMENT_TYPE_PINNED = CorElementType(69);

extension type const CorEventAttr(int _) implements int {}
const evSpecialName = CorEventAttr(512);
const evReservedMask = CorEventAttr(1024);
const evRTSpecialName = CorEventAttr(1024);

extension type const CorFieldAttr(int _) implements int {}
const fdFieldAccessMask = CorFieldAttr(7);
const fdPrivateScope = CorFieldAttr(0);
const fdPrivate = CorFieldAttr(1);
const fdFamANDAssem = CorFieldAttr(2);
const fdAssembly = CorFieldAttr(3);
const fdFamily = CorFieldAttr(4);
const fdFamORAssem = CorFieldAttr(5);
const fdPublic = CorFieldAttr(6);
const fdStatic = CorFieldAttr(16);
const fdInitOnly = CorFieldAttr(32);
const fdLiteral = CorFieldAttr(64);
const fdNotSerialized = CorFieldAttr(128);
const fdSpecialName = CorFieldAttr(512);
const fdPinvokeImpl = CorFieldAttr(8192);
const fdReservedMask = CorFieldAttr(38144);
const fdRTSpecialName = CorFieldAttr(1024);
const fdHasFieldMarshal = CorFieldAttr(4096);
const fdHasDefault = CorFieldAttr(32768);
const fdHasFieldRVA = CorFieldAttr(256);

extension type const CorGenericParamAttr(int _) implements int {}
const gpVarianceMask = CorGenericParamAttr(3);
const gpNonVariant = CorGenericParamAttr(0);
const gpCovariant = CorGenericParamAttr(1);
const gpContravariant = CorGenericParamAttr(2);
const gpSpecialConstraintMask = CorGenericParamAttr(28);
const gpNoSpecialConstraint = CorGenericParamAttr(0);
const gpReferenceTypeConstraint = CorGenericParamAttr(4);
const gpNotNullableValueTypeConstraint = CorGenericParamAttr(8);
const gpDefaultConstructorConstraint = CorGenericParamAttr(16);

extension type const CorMethodAttr(int _) implements int {}
const mdMemberAccessMask = CorMethodAttr(7);
const mdPrivateScope = CorMethodAttr(0);
const mdPrivate = CorMethodAttr(1);
const mdFamANDAssem = CorMethodAttr(2);
const mdAssem = CorMethodAttr(3);
const mdFamily = CorMethodAttr(4);
const mdFamORAssem = CorMethodAttr(5);
const mdPublic = CorMethodAttr(6);
const mdStatic = CorMethodAttr(16);
const mdFinal = CorMethodAttr(32);
const mdVirtual = CorMethodAttr(64);
const mdHideBySig = CorMethodAttr(128);
const mdVtableLayoutMask = CorMethodAttr(256);
const mdReuseSlot = CorMethodAttr(0);
const mdNewSlot = CorMethodAttr(256);
const mdCheckAccessOnOverride = CorMethodAttr(512);
const mdAbstract = CorMethodAttr(1024);
const mdSpecialName = CorMethodAttr(2048);
const mdPinvokeImpl = CorMethodAttr(8192);
const mdUnmanagedExport = CorMethodAttr(8);
const mdReservedMask = CorMethodAttr(53248);
const mdRTSpecialName = CorMethodAttr(4096);
const mdHasSecurity = CorMethodAttr(16384);
const mdRequireSecObject = CorMethodAttr(32768);

extension type const CorMethodImpl(int _) implements int {}
const miCodeTypeMask = CorMethodImpl(3);
const miIL = CorMethodImpl(0);
const miNative = CorMethodImpl(1);
const miOPTIL = CorMethodImpl(2);
const miRuntime = CorMethodImpl(3);
const miManagedMask = CorMethodImpl(4);
const miUnmanaged = CorMethodImpl(4);
const miManaged = CorMethodImpl(0);
const miForwardRef = CorMethodImpl(16);
const miPreserveSig = CorMethodImpl(128);
const miInternalCall = CorMethodImpl(4096);
const miSynchronized = CorMethodImpl(32);
const miNoInlining = CorMethodImpl(8);
const miAggressiveInlining = CorMethodImpl(256);
const miNoOptimization = CorMethodImpl(64);
const miSecurityMitigations = CorMethodImpl(1024);
const miUserMask = CorMethodImpl(5628);
const miMaxMethodImplVal = CorMethodImpl(65535);

extension type const CorOpenFlags(int _) implements int {}
const ofRead = CorOpenFlags(0);
const ofWrite = CorOpenFlags(1);
const ofReadWriteMask = CorOpenFlags(1);
const ofCopyMemory = CorOpenFlags(2);
const ofReadOnly = CorOpenFlags(16);
const ofTakeOwnership = CorOpenFlags(32);
const ofNoTypeLib = CorOpenFlags(128);
const ofNoTransform = CorOpenFlags(4096);
const ofCheckIntegrity = CorOpenFlags(2048);
const ofReserved1 = CorOpenFlags(256);
const ofReserved2 = CorOpenFlags(512);
const ofReserved3 = CorOpenFlags(1024);
const ofReserved = CorOpenFlags(-6336);

extension type const CorParamAttr(int _) implements int {}
const pdIn = CorParamAttr(1);
const pdOut = CorParamAttr(2);
const pdOptional = CorParamAttr(16);
const pdReservedMask = CorParamAttr(61440);
const pdHasDefault = CorParamAttr(4096);
const pdHasFieldMarshal = CorParamAttr(8192);
const pdUnused = CorParamAttr(53216);

extension type const CorPEKind(int _) implements int {}
const peNot = CorPEKind(0);
const peILonly = CorPEKind(1);
const pe32BitRequired = CorPEKind(2);
const pe32Plus = CorPEKind(4);
const pe32Unmanaged = CorPEKind(8);
const pe32BitPreferred = CorPEKind(16);

extension type const CorPinvokeMap(int _) implements int {}
const pmNoMangle = CorPinvokeMap(1);
const pmCharSetMask = CorPinvokeMap(6);
const pmCharSetNotSpec = CorPinvokeMap(0);
const pmCharSetAnsi = CorPinvokeMap(2);
const pmCharSetUnicode = CorPinvokeMap(4);
const pmCharSetAuto = CorPinvokeMap(6);
const pmBestFitUseAssem = CorPinvokeMap(0);
const pmBestFitEnabled = CorPinvokeMap(16);
const pmBestFitDisabled = CorPinvokeMap(32);
const pmBestFitMask = CorPinvokeMap(48);
const pmThrowOnUnmappableCharUseAssem = CorPinvokeMap(0);
const pmThrowOnUnmappableCharEnabled = CorPinvokeMap(4096);
const pmThrowOnUnmappableCharDisabled = CorPinvokeMap(8192);
const pmThrowOnUnmappableCharMask = CorPinvokeMap(12288);
const pmSupportsLastError = CorPinvokeMap(64);
const pmCallConvMask = CorPinvokeMap(1792);
const pmCallConvWinapi = CorPinvokeMap(256);
const pmCallConvCdecl = CorPinvokeMap(512);
const pmCallConvStdcall = CorPinvokeMap(768);
const pmCallConvThiscall = CorPinvokeMap(1024);
const pmCallConvFastcall = CorPinvokeMap(1280);
const pmMaxValue = CorPinvokeMap(65535);

extension type const CorPropertyAttr(int _) implements int {}
const prSpecialName = CorPropertyAttr(512);
const prReservedMask = CorPropertyAttr(62464);
const prRTSpecialName = CorPropertyAttr(1024);
const prHasDefault = CorPropertyAttr(4096);
const prUnused = CorPropertyAttr(59903);

extension type const CorTokenType(int _) implements int {}
const mdtModule = CorTokenType(0);
const mdtTypeRef = CorTokenType(16777216);
const mdtTypeDef = CorTokenType(33554432);
const mdtFieldDef = CorTokenType(67108864);
const mdtMethodDef = CorTokenType(100663296);
const mdtParamDef = CorTokenType(134217728);
const mdtInterfaceImpl = CorTokenType(150994944);
const mdtMemberRef = CorTokenType(167772160);
const mdtCustomAttribute = CorTokenType(201326592);
const mdtPermission = CorTokenType(234881024);
const mdtSignature = CorTokenType(285212672);
const mdtEvent = CorTokenType(335544320);
const mdtProperty = CorTokenType(385875968);
const mdtMethodImpl = CorTokenType(419430400);
const mdtModuleRef = CorTokenType(436207616);
const mdtTypeSpec = CorTokenType(452984832);
const mdtAssembly = CorTokenType(536870912);
const mdtAssemblyRef = CorTokenType(587202560);
const mdtFile = CorTokenType(637534208);
const mdtExportedType = CorTokenType(654311424);
const mdtManifestResource = CorTokenType(671088640);
const mdtGenericParam = CorTokenType(704643072);
const mdtMethodSpec = CorTokenType(721420288);
const mdtGenericParamConstraint = CorTokenType(738197504);
const mdtString = CorTokenType(1879048192);
const mdtName = CorTokenType(1895825408);
const mdtBaseType = CorTokenType(1912602624);

extension type const CorTypeAttr(int _) implements int {}
const tdVisibilityMask = CorTypeAttr(7);
const tdNotPublic = CorTypeAttr(0);
const tdPublic = CorTypeAttr(1);
const tdNestedPublic = CorTypeAttr(2);
const tdNestedPrivate = CorTypeAttr(3);
const tdNestedFamily = CorTypeAttr(4);
const tdNestedAssembly = CorTypeAttr(5);
const tdNestedFamANDAssem = CorTypeAttr(6);
const tdNestedFamORAssem = CorTypeAttr(7);
const tdLayoutMask = CorTypeAttr(24);
const tdAutoLayout = CorTypeAttr(0);
const tdSequentialLayout = CorTypeAttr(8);
const tdExplicitLayout = CorTypeAttr(16);
const tdClassSemanticsMask = CorTypeAttr(32);
const tdClass = CorTypeAttr(0);
const tdInterface = CorTypeAttr(32);
const tdAbstract = CorTypeAttr(128);
const tdSealed = CorTypeAttr(256);
const tdSpecialName = CorTypeAttr(1024);
const tdImport = CorTypeAttr(4096);
const tdSerializable = CorTypeAttr(8192);
const tdWindowsRuntime = CorTypeAttr(16384);
const tdStringFormatMask = CorTypeAttr(196608);
const tdAnsiClass = CorTypeAttr(0);
const tdUnicodeClass = CorTypeAttr(65536);
const tdAutoClass = CorTypeAttr(131072);
const tdCustomFormatClass = CorTypeAttr(196608);
const tdCustomFormatMask = CorTypeAttr(12582912);
const tdBeforeFieldInit = CorTypeAttr(1048576);
const tdForwarder = CorTypeAttr(2097152);
const tdReservedMask = CorTypeAttr(264192);
const tdRTSpecialName = CorTypeAttr(2048);
const tdHasSecurity = CorTypeAttr(262144);

extension type const IMAGE_FILE_MACHINE(int _) implements int {}
const IMAGE_FILE_MACHINE_AXP64 = IMAGE_FILE_MACHINE(644);
const IMAGE_FILE_MACHINE_I386 = IMAGE_FILE_MACHINE(332);
const IMAGE_FILE_MACHINE_IA64 = IMAGE_FILE_MACHINE(512);
const IMAGE_FILE_MACHINE_AMD64 = IMAGE_FILE_MACHINE(34404);
const IMAGE_FILE_MACHINE_UNKNOWN = IMAGE_FILE_MACHINE(0);
const IMAGE_FILE_MACHINE_TARGET_HOST = IMAGE_FILE_MACHINE(1);
const IMAGE_FILE_MACHINE_R3000 = IMAGE_FILE_MACHINE(354);
const IMAGE_FILE_MACHINE_R4000 = IMAGE_FILE_MACHINE(358);
const IMAGE_FILE_MACHINE_R10000 = IMAGE_FILE_MACHINE(360);
const IMAGE_FILE_MACHINE_WCEMIPSV2 = IMAGE_FILE_MACHINE(361);
const IMAGE_FILE_MACHINE_ALPHA = IMAGE_FILE_MACHINE(388);
const IMAGE_FILE_MACHINE_SH3 = IMAGE_FILE_MACHINE(418);
const IMAGE_FILE_MACHINE_SH3DSP = IMAGE_FILE_MACHINE(419);
const IMAGE_FILE_MACHINE_SH3E = IMAGE_FILE_MACHINE(420);
const IMAGE_FILE_MACHINE_SH4 = IMAGE_FILE_MACHINE(422);
const IMAGE_FILE_MACHINE_SH5 = IMAGE_FILE_MACHINE(424);
const IMAGE_FILE_MACHINE_ARM = IMAGE_FILE_MACHINE(448);
const IMAGE_FILE_MACHINE_THUMB = IMAGE_FILE_MACHINE(450);
const IMAGE_FILE_MACHINE_ARMNT = IMAGE_FILE_MACHINE(452);
const IMAGE_FILE_MACHINE_AM33 = IMAGE_FILE_MACHINE(467);
const IMAGE_FILE_MACHINE_POWERPC = IMAGE_FILE_MACHINE(496);
const IMAGE_FILE_MACHINE_POWERPCFP = IMAGE_FILE_MACHINE(497);
const IMAGE_FILE_MACHINE_MIPS16 = IMAGE_FILE_MACHINE(614);
const IMAGE_FILE_MACHINE_ALPHA64 = IMAGE_FILE_MACHINE(644);
const IMAGE_FILE_MACHINE_MIPSFPU = IMAGE_FILE_MACHINE(870);
const IMAGE_FILE_MACHINE_MIPSFPU16 = IMAGE_FILE_MACHINE(1126);
const IMAGE_FILE_MACHINE_TRICORE = IMAGE_FILE_MACHINE(1312);
const IMAGE_FILE_MACHINE_CEF = IMAGE_FILE_MACHINE(3311);
const IMAGE_FILE_MACHINE_EBC = IMAGE_FILE_MACHINE(3772);
const IMAGE_FILE_MACHINE_M32R = IMAGE_FILE_MACHINE(36929);
const IMAGE_FILE_MACHINE_ARM64 = IMAGE_FILE_MACHINE(43620);
const IMAGE_FILE_MACHINE_CEE = IMAGE_FILE_MACHINE(49390);

extension type const KNOWN_FOLDER_FLAG(int _) implements int {
  bool has(KNOWN_FOLDER_FLAG other) => _ & other._ == other._;
  KNOWN_FOLDER_FLAG operator &(int other) => KNOWN_FOLDER_FLAG(_ & other);
  KNOWN_FOLDER_FLAG operator |(int other) => KNOWN_FOLDER_FLAG(_ | other);
}
const KF_FLAG_DEFAULT = KNOWN_FOLDER_FLAG(0);
const KF_FLAG_FORCE_APP_DATA_REDIRECTION = KNOWN_FOLDER_FLAG(524288);
const KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = KNOWN_FOLDER_FLAG(262144);
const KF_FLAG_FORCE_PACKAGE_REDIRECTION = KNOWN_FOLDER_FLAG(131072);
const KF_FLAG_NO_PACKAGE_REDIRECTION = KNOWN_FOLDER_FLAG(65536);
const KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = KNOWN_FOLDER_FLAG(131072);
const KF_FLAG_NO_APPCONTAINER_REDIRECTION = KNOWN_FOLDER_FLAG(65536);
const KF_FLAG_CREATE = KNOWN_FOLDER_FLAG(32768);
const KF_FLAG_DONT_VERIFY = KNOWN_FOLDER_FLAG(16384);
const KF_FLAG_DONT_UNEXPAND = KNOWN_FOLDER_FLAG(8192);
const KF_FLAG_NO_ALIAS = KNOWN_FOLDER_FLAG(4096);
const KF_FLAG_INIT = KNOWN_FOLDER_FLAG(2048);
const KF_FLAG_DEFAULT_PATH = KNOWN_FOLDER_FLAG(1024);
const KF_FLAG_NOT_PARENT_RELATIVE = KNOWN_FOLDER_FLAG(512);
const KF_FLAG_SIMPLE_IDLIST = KNOWN_FOLDER_FLAG(256);
const KF_FLAG_ALIAS_ONLY = KNOWN_FOLDER_FLAG(-2147483648);

extension type const REG_SAM_FLAGS(int _) implements int {
  bool has(REG_SAM_FLAGS other) => _ & other._ == other._;
  REG_SAM_FLAGS operator &(int other) => REG_SAM_FLAGS(_ & other);
  REG_SAM_FLAGS operator |(int other) => REG_SAM_FLAGS(_ | other);
}
const KEY_QUERY_VALUE = REG_SAM_FLAGS(1);
const KEY_SET_VALUE = REG_SAM_FLAGS(2);
const KEY_CREATE_SUB_KEY = REG_SAM_FLAGS(4);
const KEY_ENUMERATE_SUB_KEYS = REG_SAM_FLAGS(8);
const KEY_NOTIFY = REG_SAM_FLAGS(16);
const KEY_CREATE_LINK = REG_SAM_FLAGS(32);
const KEY_WOW64_32KEY = REG_SAM_FLAGS(512);
const KEY_WOW64_64KEY = REG_SAM_FLAGS(256);
const KEY_WOW64_RES = REG_SAM_FLAGS(768);
const KEY_READ = REG_SAM_FLAGS(131097);
const KEY_WRITE = REG_SAM_FLAGS(131078);
const KEY_EXECUTE = REG_SAM_FLAGS(131097);
const KEY_ALL_ACCESS = REG_SAM_FLAGS(983103);

extension type const REG_VALUE_TYPE(int _) implements int {}
const REG_NONE = REG_VALUE_TYPE(0);
const REG_SZ = REG_VALUE_TYPE(1);
const REG_EXPAND_SZ = REG_VALUE_TYPE(2);
const REG_BINARY = REG_VALUE_TYPE(3);
const REG_DWORD = REG_VALUE_TYPE(4);
const REG_DWORD_LITTLE_ENDIAN = REG_VALUE_TYPE(4);
const REG_DWORD_BIG_ENDIAN = REG_VALUE_TYPE(5);
const REG_LINK = REG_VALUE_TYPE(6);
const REG_MULTI_SZ = REG_VALUE_TYPE(7);
const REG_RESOURCE_LIST = REG_VALUE_TYPE(8);
const REG_FULL_RESOURCE_DESCRIPTOR = REG_VALUE_TYPE(9);
const REG_RESOURCE_REQUIREMENTS_LIST = REG_VALUE_TYPE(10);
const REG_QWORD = REG_VALUE_TYPE(11);
const REG_QWORD_LITTLE_ENDIAN = REG_VALUE_TYPE(11);

extension type const WIN32_ERROR(int _) implements int {}
const ERROR_SUCCESS = WIN32_ERROR(0);
