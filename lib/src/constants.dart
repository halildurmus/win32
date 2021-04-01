// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// COM error returned when a Find* method returns no results
final CLDB_E_RECORD_NOTFOUND = 0x80131130.toSigned(32);

/// Contains values that indicate type metadata.
class CorTypeAttr {
  /// Used for type visibility information.
  static const tdVisibilityMask = 0x00000007;

  /// Specifies that the type is not in public scope.
  static const tdNotPublic = 0x00000000;

  /// Specifies that the type is in public scope.
  static const tdPublic = 0x00000001;

  /// Specifies that the type is nested with public visibility.
  static const tdNestedPublic = 0x00000002;

  /// Specifies that the type is nested with private visibility.
  static const tdNestedPrivate = 0x00000003;

  /// Specifies that the type is nested with family visibility.
  static const tdNestedFamily = 0x00000004;

  /// Specifies that the type is nested with assembly visibility.
  static const tdNestedAssembly = 0x00000005;

  /// Specifies that the type is nested with family and assembly visibility.
  static const tdNestedFamANDAssem = 0x00000006;

  /// Specifies that the type is nested with family or assembly visibility.
  static const tdNestedFamORAssem = 0x00000007;

  /// Gets layout information for the type.
  static const tdLayoutMask = 0x00000018;

  /// Specifies that the fields of this type are laid out automatically.
  static const tdAutoLayout = 0x00000000;

  /// Specifies that the fields of this type are laid out sequentially.
  static const tdSequentialLayout = 0x00000008;

  /// Specifies that field layout is supplied explicitly.
  static const tdExplicitLayout = 0x00000010;

  /// Gets semantic information about the type.
  static const tdClassSemanticsMask = 0x00000020;

  /// Specifies that the type is a class.
  static const tdClass = 0x00000000;

  /// Specifies that the type is an interface.
  static const tdInterface = 0x00000020;

  /// Specifies that the type is abstract.
  static const tdAbstract = 0x00000080;

  /// Specifies that the type cannot be extended.
  static const tdSealed = 0x00000100;

  /// Specifies that the class name is special. Its name describes how.
  static const tdSpecialName = 0x00000400;

  /// Specifies that the type is imported.
  static const tdImport = 0x00001000;

  /// Specifies that the type is serializable.
  static const tdSerializable = 0x00002000;

  /// Specifies that this type is a Windows Runtime type.
  static const tdWindowsRuntime = 0x00004000;

  /// Gets information about how strings are encoded and formatted.
  static const tdStringFormatMask = 0x00030000;

  /// Specifies that this type interprets an LPTSTR as ANSI.
  static const tdAnsiClass = 0x00000000;

  /// Specifies that this type interprets an LPTSTR as Unicode.
  static const tdUnicodeClass = 0x00010000;

  /// Specifies that this type interprets an LPTSTR automatically.
  static const tdAutoClass = 0x00020000;

  /// Specifies that the type has a non-standard encoding, as specified by
  /// CustomFormatMask.
  static const tdCustomFormatClass = 0x00030000;

  /// Use this mask to get non-standard encoding information for native interop.
  /// The meaning of the values of these two bits is unspecified.
  static const tdCustomFormatMask = 0x00C00000;

  /// Specifies that the type must be initialized before the first attempt to
  /// access a static field.
  static const tdBeforeFieldInit = 0x00100000;

  /// Specifies that the type is exported, and a type forwarder.
  static const tdForwarder = 0x00200000;

  /// This flag and the flags below are used internally by the common language
  /// runtime.
  static const tdReservedMask = 0x00040800;

  /// Specifies that the common language runtime should check the name encoding.
  static const tdRTSpecialName = 0x00000800;

  /// Specifies that the type has security associated with it.
  static const tdHasSecurity = 0x00040000;
}

/// Contains values that describe the features of a method.
class CorMethodAttr {
  /// Specifies member access.
  static const mdMemberAccessMask = 0x0007;

  /// Specifies that the member cannot be referenced.
  static const mdPrivateScope = 0x0000;

  /// Specifies that the member is accessible only by the parent type.
  static const mdPrivate = 0x0001;

  /// Specifies that the member is accessible by subtypes only in this assembly.
  static const mdFamANDAssem = 0x0002;

  /// Specifies that the member is accessibly by anyone in the assembly.
  static const mdAssem = 0x0003;

  /// Specifies that the member is accessible only by type and subtypes.
  static const mdFamily = 0x0004;

  /// Specifies that the member is accessible by derived classes and by other
  /// types in its assembly.
  static const mdFamORAssem = 0x0005;

  /// Specifies that the member is accessible by all types with access to the
  /// scope.
  static const mdPublic = 0x0006;

  /// Specifies that the member is defined as part of the type rather than as a
  /// member of an instance.
  static const mdStatic = 0x0010;

  /// Specifies that the method cannot be overridden.
  static const mdFinal = 0x0020;

  /// Specifies that the method can be overridden.
  static const mdVirtual = 0x0040;

  /// Specifies that the method hides by name and signature, rather than just by
  /// name.
  static const mdHideBySig = 0x0080;

  /// Specifies virtual table layout.
  static const mdVtableLayoutMask = 0x0100;

  /// Specifies that the slot used for this method in the virtual table be
  /// reused. This is the default.
  static const mdReuseSlot = 0x0000;

  /// Specifies that the method always gets a new slot in the virtual table.
  static const mdNewSlot = 0x0100;

  /// Specifies that the method can be overridden by the same types to which it
  /// is visible.
  static const mdCheckAccessOnOverride = 0x0200;

  /// Specifies that the method is not implemented.
  static const mdAbstract = 0x0400;

  /// Specifies that the method is special, and that its name describes how.
  static const mdSpecialName = 0x0800;

  /// Specifies that the method implementation is forwarded using PInvoke.
  static const mdPinvokeImpl = 0x2000;

  /// Specifies that the method is a managed method exported to unmanaged code.
  static const mdUnmanagedExport = 0x0008;

  /// Reserved for internal use by the common language runtime.
  static const mdReservedMask = 0xd000;

  /// Specifies that the common language runtime should check the encoding of
  /// the method name.
  static const mdRTSpecialName = 0x1000;

  /// Specifies that the method has security associated with it.
  static const mdHasSecurity = 0x4000;

  /// Specifies that the method calls another method containing security code.
  static const mdRequireSecObject = 0x8000;
}

/// Contains values that describe method implementation features.
class CorMethodImpl {
  /// Flags that describe code type.
  static const miCodeTypeMask = 0x0003;

  /// Specifies that the method implementation is Microsoft intermediate
  /// language (MSIL).
  static const miIL = 0x0000;

  /// Specifies that the method implementation is native.
  static const miNative = 0x0001;

  /// Specifies that the method implementation is OPTIL.
  static const miOPTIL = 0x0002;

  /// Specifies that the method implementation is provided by the common
  /// language runtime.
  static const miRuntime = 0x0003;

  /// Flags that indicate whether the code is managed or unmanaged.
  static const miManagedMask = 0x0004;

  /// Specifies that the method implementation is unmanaged.
  static const miUnmanaged = 0x0004;

  /// Specifies that the method implementation is managed.
  static const miManaged = 0x0000;

  /// Specifies that the method is defined. This flag is used primarily in merge
  /// scenarios.
  static const miForwardRef = 0x0010;

  /// Specifies that the method signature cannot be mangled for an HRESULT
  /// conversion.
  static const miPreserveSig = 0x0080;

  /// Reserved for internal use by the common language runtime.
  static const miInternalCall = 0x1000;

  /// Specifies that the method is single-threaded through its body.
  static const miSynchronized = 0x0020;

  /// Specifies that the method cannot be inlined.
  static const miNoInlining = 0x0008;

  /// Specifies that the method should be inlined if possible.
  static const miAggressiveInlining = 0x0100;

  /// Specifies that the method should not be optimized.
  static const miNoOptimization = 0x0040;

  /// The maximum valid value for a [CorMethodImpl].
  static const miMaxMethodImplVal = 0xffff;
}

/// Contains values that describe the metadata of a method parameter.
class CorParamAttr {
  /// Specifies that the parameter is passed into the method call.
  static const pdIn = 0x0001;

  /// Specifies that the parameter is passed from the method return.
  static const pdOut = 0x0002;

  /// Specifies that the parameter is optional.
  static const pdOptional = 0x0010;

  /// Reserved for internal use by the common language runtime.
  static const pdReservedMask = 0xf000;

  /// Specifies that the parameter has a default value.
  static const pdHasDefault = 0x1000;

  /// Specifies that the parameter has marshaling information.
  static const pdHasFieldMarshal = 0x2000;

  /// Unused.
  static const pdUnused = 0xcfe0;
}

/// Contains values that describe metadata about a field.
class CorFieldAttr {
  /// Specifies accessibility information.
  static const fdFieldAccessMask = 0x0007;

  /// Specifies that the field cannot be referenced.
  static const fdPrivateScope = 0x0000;

  /// Specifies that the field is accessible only by its parent type.
  static const fdPrivate = 0x0001;

  /// Specifies that the field is accessible by derived classes in its assembly.
  static const fdFamANDAssem = 0x0002;

  /// Specifies that the field is accessible by all types in its assembly.
  static const fdAssembly = 0x0003;

  /// Specifies that the field is accessible only by its type and derived
  /// classes.
  static const fdFamily = 0x0004;

  /// Specifies that the field is accessible by derived classes and by all types
  /// in its assembly.
  static const fdFamORAssem = 0x0005;

  /// Specifies that the field is accessible by all types with visibility of
  /// this scope.
  static const fdPublic = 0x0006;

  /// Specifies that the field is a member of its type rather than an instance
  /// member.
  static const fdStatic = 0x0010;

  /// Specifies that the field cannot be changed after it is initialized.
  static const fdInitOnly = 0x0020;

  /// Specifies that the field value is a compile-time constant.
  static const fdLiteral = 0x0040;

  /// Specifies that the field is not serialized when its type is remoted.
  static const fdNotSerialized = 0x0080;

  /// Specifies that the field is special, and that its name describes how.
  static const fdSpecialName = 0x0200;

  /// Specifies that the field implementation is forwarded through PInvoke.
  static const fdPinvokeImpl = 0x2000;

  /// Reserved for internal use by the common language runtime.
  static const fdReservedMask = 0x9500;

  /// Specifies that the common language runtime metadata internal APIs should
  /// check the encoding of the name.
  static const fdRTSpecialName = 0x0400;

  /// Specifies that the field contains marshaling information.
  static const fdHasFieldMarshal = 0x1000;

  /// Specifies that the field has a default value.
  static const fdHasDefault = 0x8000;

  /// Specifies that the field has a relative virtual address.
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

/// Specifies options for a PInvoke call.
class CorPinvokeMap {
  /// Use each member name as specified.
  static const pmNoMangle = 0x0001;

  /// Reserved.
  static const pmCharSetMask = 0x0006;

  /// Reserved.
  static const pmCharSetNotSpec = 0x0000;

  /// Marshal strings as multiple-byte character strings.
  static const pmCharSetAnsi = 0x0002;

  /// Marshal strings as Unicode 2-byte characters.
  static const pmCharSetUnicode = 0x0004;

  /// Automatically marshal strings appropriately for the target operating
  /// system. The default is Unicode on Windows NT, Windows 2000, Windows XP,
  /// and the Windows Server 2003 family; the default is ANSI on Windows 98 and
  /// Windows Me.
  static const pmCharSetAuto = 0x0006;

  /// Reserved.
  static const pmBestFitUseAssem = 0x0000;

  /// Perform best-fit mapping of Unicode characters that lack an exact match in
  /// the ANSI character set.
  static const pmBestFitEnabled = 0x0010;

  /// Do not perform best-fit mapping of Unicode characters. In this case, all
  /// unmappable characters will be replaced by a ‘?’.
  static const pmBestFitDisabled = 0x0020;

  /// Reserved.
  static const pmBestFitMask = 0x0030;

  /// Reserved.
  static const pmThrowOnUnmappableCharUseAssem = 0x0000;

  /// Throw an exception when the interop marshaler encounters an unmappable
  /// character.
  static const pmThrowOnUnmappableCharEnabled = 0x1000;

  /// Do not throw an exception when the interop marshaler encounters an
  /// unmappable character.
  static const pmThrowOnUnmappableCharDisabled = 0x2000;

  /// Reserved.
  static const pmThrowOnUnmappableCharMask = 0x3000;

  /// Allow the callee to call the Win32 SetLastError function before returning
  /// from the attributed method.
  static const pmSupportsLastError = 0x0040;

  /// Reserved.
  static const pmCallConvMask = 0x0700;

  /// Use the default platform calling convention. For example, on Windows the
  /// default is StdCall and on Windows CE .NET it is Cdecl.
  static const pmCallConvWinapi = 0x0100;

  /// Use the Cdecl calling convention. In this case, the caller cleans the
  /// stack. This enables calling functions with varargs (that is, functions
  /// that accept a variable number of parameters).
  static const pmCallConvCdecl = 0x0200;

  /// Use the StdCall calling convention. In this case, the callee cleans the
  /// stack. This is the default convention for calling unmanaged functions with
  /// platform invoke.
  static const pmCallConvStdcall = 0x0300;

  /// Use the ThisCall calling convention. In this case, the first parameter is
  /// the this pointer and is stored in register ECX. Other parameters are
  /// pushed on the stack. The ThisCall calling convention is used to call
  /// methods on classes exported from an unmanaged DLL.
  static const pmCallConvThiscall = 0x0400;

  /// Reserved.
  static const pmCallConvFastcall = 0x0500;

  /// Reserved.
  static const pmMaxValue = 0xFFFF;
}

/// Specifies a common language runtime Type, a type modifier, or information
/// about a type in a metadata type signature.
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
