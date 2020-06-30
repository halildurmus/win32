// Defined here:
// https://docs.microsoft.com/en-us/dotnet/framework/unmanaged-api/metadata/cormethodattr-enumeration

class CorTypeAttr {
  static final tdVisibilityMask = 0x00000007;
  static final tdNotPublic = 0x00000000;
  static final tdPublic = 0x00000001;
  static final tdNestedPublic = 0x00000002;
  static final tdNestedPrivate = 0x00000003;
  static final tdNestedFamily = 0x00000004;
  static final tdNestedAssembly = 0x00000005;
  static final tdNestedFamANDAssem = 0x00000006;
  static final tdNestedFamORAssem = 0x00000007;
  static final tdLayoutMask = 0x00000018;
  static final tdAutoLayout = 0x00000000;
  static final tdSequentialLayout = 0x00000008;
  static final tdExplicitLayout = 0x00000010;
  static final tdClassSemanticsMask = 0x00000020;
  static final tdClass = 0x00000000;
  static final tdInterface = 0x00000020;
  static final tdAbstract = 0x00000080;
  static final tdSealed = 0x00000100;
  static final tdSpecialName = 0x00000400;
  static final tdImport = 0x00001000;
  static final tdSerializable = 0x00002000;
  static final tdWindowsRuntime = 0x00004000;
  static final tdStringFormatMask = 0x00030000;
  static final tdAnsiClass = 0x00000000;
  static final tdUnicodeClass = 0x00010000;
  static final tdAutoClass = 0x00020000;
  static final tdCustomFormatClass = 0x00030000;
  static final tdCustomFormatMask = 0x00C00000;
  static final tdBeforeFieldInit = 0x00100000;
  static final tdForwarder = 0x00200000;
  static final tdReservedMask = 0x00040800;
  static final tdRTSpecialName = 0x00000800;
  static final tdHasSecurity = 0x00040000;
}

class CorMethodAttr {
  static final mdMemberAccessMask = 0x0007;
  static final mdPrivateScope = 0x0000;
  static final mdPrivate = 0x0001;
  static final mdFamANDAssem = 0x0002;
  static final mdAssem = 0x0003;
  static final mdFamily = 0x0004;
  static final mdFamORAssem = 0x0005;
  static final mdPublic = 0x0006;
  static final mdStatic = 0x0010;
  static final mdFinal = 0x0020;
  static final mdVirtual = 0x0040;
  static final mdHideBySig = 0x0080;
  static final mdVtableLayoutMask = 0x0100;
  static final mdReuseSlot = 0x0000;
  static final mdNewSlot = 0x0100;
  static final mdCheckAccessOnOverride = 0x0200;
  static final mdAbstract = 0x0400;
  static final mdSpecialName = 0x0800;
  static final mdPinvokeImpl = 0x2000;
  static final mdUnmanagedExport = 0x0008;
  static final mdReservedMask = 0xd000;
  static final mdRTSpecialName = 0x1000;
  static final mdHasSecurity = 0x4000;
  static final mdRequireSecObject = 0x8000;
}

class CorTokenType {
  static final mdtModule = 0x00000000;
  static final mdtTypeRef = 0x01000000;
  static final mdtTypeDef = 0x02000000;
  static final mdtFieldDef = 0x04000000;
  static final mdtMethodDef = 0x06000000;
  static final mdtParamDef = 0x08000000;
  static final mdtInterfaceImpl = 0x09000000;
  static final mdtMemberRef = 0x0a000000;
  static final mdtCustomAttribute = 0x0c000000;
  static final mdtPermission = 0x0e000000;
  static final mdtSignature = 0x11000000;
  static final mdtEvent = 0x14000000;
  static final mdtProperty = 0x17000000;
  static final mdtModuleRef = 0x1a000000;
  static final mdtTypeSpec = 0x1b000000;
  static final mdtAssembly = 0x20000000;
  static final mdtAssemblyRef = 0x23000000;
  static final mdtFile = 0x26000000;
  static final mdtExportedType = 0x27000000;
  static final mdtManifestResource = 0x28000000;
  static final mdtGenericParam = 0x2a000000;
  static final mdtMethodSpec = 0x2b000000;
  static final mdtGenericParamConstraint = 0x2c000000;
  static final mdtString = 0x70000000;
  static final mdtName = 0x71000000;
  static final mdtBaseType = 0x72000000;
}

class CorElementType {
  static final ELEMENT_TYPE_END = 0x0;
  static final ELEMENT_TYPE_VOID = 0x1;
  static final ELEMENT_TYPE_BOOLEAN = 0x2;
  static final ELEMENT_TYPE_CHAR = 0x3;
  static final ELEMENT_TYPE_I1 = 0x4;
  static final ELEMENT_TYPE_U1 = 0x5;
  static final ELEMENT_TYPE_I2 = 0x6;
  static final ELEMENT_TYPE_U2 = 0x7;
  static final ELEMENT_TYPE_I4 = 0x8;
  static final ELEMENT_TYPE_U4 = 0x9;
  static final ELEMENT_TYPE_I8 = 0xa;
  static final ELEMENT_TYPE_U8 = 0xb;
  static final ELEMENT_TYPE_R4 = 0xc;
  static final ELEMENT_TYPE_R8 = 0xd;
  static final ELEMENT_TYPE_STRING = 0xe;
  static final ELEMENT_TYPE_PTR = 0xf;
  static final ELEMENT_TYPE_BYREF = 0x10;
  static final ELEMENT_TYPE_VALUETYPE = 0x11;
  static final ELEMENT_TYPE_CLASS = 0x12;
  static final ELEMENT_TYPE_VAR = 0x13;
  static final ELEMENT_TYPE_ARRAY = 0x14;
  static final ELEMENT_TYPE_GENERICINST = 0x15;
  static final ELEMENT_TYPE_TYPEDBYREF = 0x16;
  static final ELEMENT_TYPE_I = 0x18;
  static final ELEMENT_TYPE_U = 0x19;
  static final ELEMENT_TYPE_FNPTR = 0x1B;
  static final ELEMENT_TYPE_OBJECT = 0x1C;
  static final ELEMENT_TYPE_SZARRAY = 0x1D;
  static final ELEMENT_TYPE_MVAR = 0x1e;
  static final ELEMENT_TYPE_CMOD_REQD = 0x1F;
  static final ELEMENT_TYPE_CMOD_OPT = 0x20;
  static final ELEMENT_TYPE_INTERNAL = 0x21;
  static final ELEMENT_TYPE_MAX = 0x22;
  static final ELEMENT_TYPE_MODIFIER = 0x40;
  static final ELEMENT_TYPE_SENTINEL = 0x01 | ELEMENT_TYPE_MODIFIER;
  static final ELEMENT_TYPE_PINNED = 0x05 | ELEMENT_TYPE_MODIFIER;
}
