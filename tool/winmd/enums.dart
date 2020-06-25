// Defined here:
// https://docs.microsoft.com/en-us/dotnet/framework/unmanaged-api/metadata/cormethodattr-enumeration
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
