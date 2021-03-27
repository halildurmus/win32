// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// COM error returned when a Find* method returns no results
final CLDB_E_RECORD_NOTFOUND = 0x80131130.toSigned(32);

/// Contains values that indicate type metadata.
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

/// /// Contains values that describe the features of a method.
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

/// Contains values that describe the metadata of a method parameter.
class CorParamAttr {
  static const pdIn = 0x0001;
  static const pdOut = 0x0002;
  static const pdOptional = 0x0010;
  static const pdReservedMask = 0xf000;
  static const pdHasDefault = 0x1000;
  static const pdHasFieldMarshal = 0x2000;
  static const pdUnused = 0xcfe0;
}

/// Contains values that describe metadata about a field.
class CorFieldAttr {
  static const fdFieldAccessMask = 0x0007;
  static const fdPrivateScope = 0x0000;
  static const fdPrivate = 0x0001;
  static const fdFamANDAssem = 0x0002;
  static const fdAssembly = 0x0003;
  static const fdFamily = 0x0004;
  static const fdFamORAssem = 0x0005;
  static const fdPublic = 0x0006;

  static const fdStatic = 0x0010;
  static const fdInitOnly = 0x0020;
  static const fdLiteral = 0x0040;
  static const fdNotSerialized = 0x0080;

  static const fdSpecialName = 0x0200;

  static const fdPinvokeImpl = 0x2000;

  static const fdReservedMask = 0x9500;
  static const fdRTSpecialName = 0x0400;
  static const fdHasFieldMarshal = 0x1000;
  static const fdHasDefault = 0x8000;
  static const fdHasFieldRVA = 0x0100;
}

/// Indicates the type of a metadata token.
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

/// Specifies a common language runtime Type, a type modifier, or information about a type in a metadata type signature.
enum CorElementType {
  ELEMENT_TYPE_END,
  ELEMENT_TYPE_VOID,
  ELEMENT_TYPE_BOOLEAN,
  ELEMENT_TYPE_CHAR,
  ELEMENT_TYPE_I1,
  ELEMENT_TYPE_U1,
  ELEMENT_TYPE_I2,
  ELEMENT_TYPE_U2,
  ELEMENT_TYPE_I4,
  ELEMENT_TYPE_U4,
  ELEMENT_TYPE_I8,
  ELEMENT_TYPE_U8,
  ELEMENT_TYPE_R4,
  ELEMENT_TYPE_R8,
  ELEMENT_TYPE_STRING,
  ELEMENT_TYPE_PTR,
  ELEMENT_TYPE_BYREF,
  ELEMENT_TYPE_VALUETYPE,
  ELEMENT_TYPE_CLASS,
  ELEMENT_TYPE_VAR,
  ELEMENT_TYPE_ARRAY,
  ELEMENT_TYPE_GENERICINST,
  ELEMENT_TYPE_TYPEDBYREF,
  ELEMENT_TYPE_I,
  ELEMENT_TYPE_U,
  ELEMENT_TYPE_FNPTR,
  ELEMENT_TYPE_OBJECT,
  ELEMENT_TYPE_SZARRAY,
  ELEMENT_TYPE_MVAR,
  ELEMENT_TYPE_CMOD_REQD,
  ELEMENT_TYPE_CMOD_OPT,
  ELEMENT_TYPE_INTERNAL,
  ELEMENT_TYPE_MAX,
  ELEMENT_TYPE_MODIFIER,
  ELEMENT_TYPE_SENTINEL,
  ELEMENT_TYPE_PINNED
}

// Windows Runtime tokens that represent a base interop type outside of the
// Windows Runtime.
final systemTokens = <int, String>{
  // TODO: Is there a way to look these up rather than encode them here?
  0x01000000: 'IInspectable',
  0x01000001: 'System.Object',
  0x01000008: 'System.Enum',
  0x0100000e: 'System.Enum',
  0x0100001d: 'System.ValueType',
  0x01000ad4: 'System.ValueType',
  0x010000af: 'System.Guid',
  0x01000180: 'System.MulticastDelegate',
};
