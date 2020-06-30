// Defined here:
// https://docs.microsoft.com/en-us/dotnet/framework/unmanaged-api/metadata/cormethodattr-enumeration

class CorTypeAttr {
  static const tdVisibilityMask = 0x00000007;
  static const tdNotPublic = 0x00000000;
  static const tdPublic = 0x00000001;
  static const tdNestedPublic = 0x00000002;
  static const tdNestedPrivate = 0x00000003;
  static const tdNestedFamily = 0x00000004;
  static const tdNestedAssembly = 0x00000005;
  static const tdNestedFamANDAssem = 0x00000006;
  static const tdNestedFamORAssem = 0x00000007;
  static const tdLayoutMask = 0x00000018;
  static const tdAutoLayout = 0x00000000;
  static const tdSequentialLayout = 0x00000008;
  static const tdExplicitLayout = 0x00000010;
  static const tdClassSemanticsMask = 0x00000020;
  static const tdClass = 0x00000000;
  static const tdInterface = 0x00000020;
  static const tdAbstract = 0x00000080;
  static const tdSealed = 0x00000100;
  static const tdSpecialName = 0x00000400;
  static const tdImport = 0x00001000;
  static const tdSerializable = 0x00002000;
  static const tdWindowsRuntime = 0x00004000;
  static const tdStringFormatMask = 0x00030000;
  static const tdAnsiClass = 0x00000000;
  static const tdUnicodeClass = 0x00010000;
  static const tdAutoClass = 0x00020000;
  static const tdCustomFormatClass = 0x00030000;
  static const tdCustomFormatMask = 0x00C00000;
  static const tdBeforeFieldInit = 0x00100000;
  static const tdForwarder = 0x00200000;
  static const tdReservedMask = 0x00040800;
  static const tdRTSpecialName = 0x00000800;
  static const tdHasSecurity = 0x00040000;
}

class CorMethodAttr {
  static const mdMemberAccessMask = 0x0007;
  static const mdPrivateScope = 0x0000;
  static const mdPrivate = 0x0001;
  static const mdFamANDAssem = 0x0002;
  static const mdAssem = 0x0003;
  static const mdFamily = 0x0004;
  static const mdFamORAssem = 0x0005;
  static const mdPublic = 0x0006;
  static const mdStatic = 0x0010;
  static const mdFinal = 0x0020;
  static const mdVirtual = 0x0040;
  static const mdHideBySig = 0x0080;
  static const mdVtableLayoutMask = 0x0100;
  static const mdReuseSlot = 0x0000;
  static const mdNewSlot = 0x0100;
  static const mdCheckAccessOnOverride = 0x0200;
  static const mdAbstract = 0x0400;
  static const mdSpecialName = 0x0800;
  static const mdPinvokeImpl = 0x2000;
  static const mdUnmanagedExport = 0x0008;
  static const mdReservedMask = 0xd000;
  static const mdRTSpecialName = 0x1000;
  static const mdHasSecurity = 0x4000;
  static const mdRequireSecObject = 0x8000;
}

class CorParamAttr {
  static const pdIn = 0x0001;
  static const pdOut = 0x0002;
  static const pdOptional = 0x0010;
  static const pdReservedMask = 0xf000;
  static const pdHasDefault = 0x1000;
  static const pdHasFieldMarshal = 0x2000;
  static const pdUnused = 0xcfe0;
}

class CorTokenType {
  static const mdtModule = 0x00000000;
  static const mdtTypeRef = 0x01000000;
  static const mdtTypeDef = 0x02000000;
  static const mdtFieldDef = 0x04000000;
  static const mdtMethodDef = 0x06000000;
  static const mdtParamDef = 0x08000000;
  static const mdtInterfaceImpl = 0x09000000;
  static const mdtMemberRef = 0x0a000000;
  static const mdtCustomAttribute = 0x0c000000;
  static const mdtPermission = 0x0e000000;
  static const mdtSignature = 0x11000000;
  static const mdtEvent = 0x14000000;
  static const mdtProperty = 0x17000000;
  static const mdtModuleRef = 0x1a000000;
  static const mdtTypeSpec = 0x1b000000;
  static const mdtAssembly = 0x20000000;
  static const mdtAssemblyRef = 0x23000000;
  static const mdtFile = 0x26000000;
  static const mdtExportedType = 0x27000000;
  static const mdtManifestResource = 0x28000000;
  static const mdtGenericParam = 0x2a000000;
  static const mdtMethodSpec = 0x2b000000;
  static const mdtGenericParamConstraint = 0x2c000000;
  static const mdtString = 0x70000000;
  static const mdtName = 0x71000000;
  static const mdtBaseType = 0x72000000;
}

class CorElementType {
  static const ELEMENT_TYPE_END = 0x0;
  static const ELEMENT_TYPE_VOID = 0x1;
  static const ELEMENT_TYPE_BOOLEAN = 0x2;
  static const ELEMENT_TYPE_CHAR = 0x3;
  static const ELEMENT_TYPE_I1 = 0x4;
  static const ELEMENT_TYPE_U1 = 0x5;
  static const ELEMENT_TYPE_I2 = 0x6;
  static const ELEMENT_TYPE_U2 = 0x7;
  static const ELEMENT_TYPE_I4 = 0x8;
  static const ELEMENT_TYPE_U4 = 0x9;
  static const ELEMENT_TYPE_I8 = 0xa;
  static const ELEMENT_TYPE_U8 = 0xb;
  static const ELEMENT_TYPE_R4 = 0xc;
  static const ELEMENT_TYPE_R8 = 0xd;
  static const ELEMENT_TYPE_STRING = 0xe;
  static const ELEMENT_TYPE_PTR = 0xf;
  static const ELEMENT_TYPE_BYREF = 0x10;
  static const ELEMENT_TYPE_VALUETYPE = 0x11;
  static const ELEMENT_TYPE_CLASS = 0x12;
  static const ELEMENT_TYPE_VAR = 0x13;
  static const ELEMENT_TYPE_ARRAY = 0x14;
  static const ELEMENT_TYPE_GENERICINST = 0x15;
  static const ELEMENT_TYPE_TYPEDBYREF = 0x16;
  static const ELEMENT_TYPE_I = 0x18;
  static const ELEMENT_TYPE_U = 0x19;
  static const ELEMENT_TYPE_FNPTR = 0x1B;
  static const ELEMENT_TYPE_OBJECT = 0x1C;
  static const ELEMENT_TYPE_SZARRAY = 0x1D;
  static const ELEMENT_TYPE_MVAR = 0x1e;
  static const ELEMENT_TYPE_CMOD_REQD = 0x1F;
  static const ELEMENT_TYPE_CMOD_OPT = 0x20;
  static const ELEMENT_TYPE_INTERNAL = 0x21;
  static const ELEMENT_TYPE_MAX = 0x22;
  static const ELEMENT_TYPE_MODIFIER = 0x40;
  static const ELEMENT_TYPE_SENTINEL = 0x01 | ELEMENT_TYPE_MODIFIER;
  static const ELEMENT_TYPE_PINNED = 0x05 | ELEMENT_TYPE_MODIFIER;
}
