// Metadata constants exposed by the Win32 API

// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

/// Specifies a common language runtime Type, a type modifier, or information
/// about a type in a metadata type signature.
class CorElementType {
  /// Used internally.
  @Deprecated('Use ELEMENT_TYPE_END instead')
  static const ELEMENT_TYPE_END = 0x0;

  /// A void type.
  @Deprecated('Use ELEMENT_TYPE_VOID instead')
  static const ELEMENT_TYPE_VOID = 0x1;

  /// A Boolean type.
  @Deprecated('Use ELEMENT_TYPE_BOOLEAN instead')
  static const ELEMENT_TYPE_BOOLEAN = 0x2;

  /// A character type.
  @Deprecated('Use ELEMENT_TYPE_CHAR instead')
  static const ELEMENT_TYPE_CHAR = 0x3;

  /// A signed 1-byte integer.
  @Deprecated('Use ELEMENT_TYPE_I1 instead')
  static const ELEMENT_TYPE_I1 = 0x4;

  /// An unsigned 1-byte integer.
  @Deprecated('Use ELEMENT_TYPE_U1 instead')
  static const ELEMENT_TYPE_U1 = 0x5;

  /// A signed 2-byte integer.
  @Deprecated('Use ELEMENT_TYPE_I2 instead')
  static const ELEMENT_TYPE_I2 = 0x6;

  /// An unsigned 2-byte integer.
  @Deprecated('Use ELEMENT_TYPE_U2 instead')
  static const ELEMENT_TYPE_U2 = 0x7;

  /// A signed 4-byte integer.
  @Deprecated('Use ELEMENT_TYPE_I4 instead')
  static const ELEMENT_TYPE_I4 = 0x8;

  /// An unsigned 4-byte integer.
  @Deprecated('Use ELEMENT_TYPE_U4 instead')
  static const ELEMENT_TYPE_U4 = 0x9;

  /// A signed 8-byte integer.
  @Deprecated('Use ELEMENT_TYPE_I8 instead')
  static const ELEMENT_TYPE_I8 = 0xa;

  /// An unsigned 8-byte integer.
  @Deprecated('Use ELEMENT_TYPE_U8 instead')
  static const ELEMENT_TYPE_U8 = 0xb;

  /// A 4-byte floating point.
  @Deprecated('Use ELEMENT_TYPE_R4 instead')
  static const ELEMENT_TYPE_R4 = 0xc;

  /// An 8-byte floating point.
  @Deprecated('Use ELEMENT_TYPE_R8 instead')
  static const ELEMENT_TYPE_R8 = 0xd;

  /// A System.String type.
  @Deprecated('Use ELEMENT_TYPE_STRING instead')
  static const ELEMENT_TYPE_STRING = 0xe;

  /// A pointer type modifier.
  @Deprecated('Use ELEMENT_TYPE_PTR instead')
  static const ELEMENT_TYPE_PTR = 0xf;

  /// A reference type modifier.
  @Deprecated('Use ELEMENT_TYPE_BYREF instead')
  static const ELEMENT_TYPE_BYREF = 0x10;

  /// A value type modifier.
  @Deprecated('Use ELEMENT_TYPE_VALUETYPE instead')
  static const ELEMENT_TYPE_VALUETYPE = 0x11;

  /// A class type modifier.
  @Deprecated('Use ELEMENT_TYPE_CLASS instead')
  static const ELEMENT_TYPE_CLASS = 0x12;

  /// A class variable type modifier.
  @Deprecated('Use ELEMENT_TYPE_VAR instead')
  static const ELEMENT_TYPE_VAR = 0x13;

  /// A multi-dimensional array type modifier.
  @Deprecated('Use ELEMENT_TYPE_ARRAY instead')
  static const ELEMENT_TYPE_ARRAY = 0x14;

  /// A type modifier for generic types.
  @Deprecated('Use ELEMENT_TYPE_GENERICINST instead')
  static const ELEMENT_TYPE_GENERICINST = 0x15;

  /// A typed reference.
  @Deprecated('Use ELEMENT_TYPE_TYPEDBYREF instead')
  static const ELEMENT_TYPE_TYPEDBYREF = 0x16;

  /// Size of a native integer.
  @Deprecated('Use ELEMENT_TYPE_I instead')
  static const ELEMENT_TYPE_I = 0x18;

  /// Size of an unsigned native integer.
  @Deprecated('Use ELEMENT_TYPE_U instead')
  static const ELEMENT_TYPE_U = 0x19;

  /// A pointer to a function.
  @Deprecated('Use ELEMENT_TYPE_FNPTR instead')
  static const ELEMENT_TYPE_FNPTR = 0x1B;

  /// A System.Object type.
  @Deprecated('Use ELEMENT_TYPE_OBJECT instead')
  static const ELEMENT_TYPE_OBJECT = 0x1C;

  /// A single-dimensional, zero lower-bound array type modifier.
  @Deprecated('Use ELEMENT_TYPE_SZARRAY instead')
  static const ELEMENT_TYPE_SZARRAY = 0x1D;

  /// A method variable type modifier.
  @Deprecated('Use ELEMENT_TYPE_MVAR instead')
  static const ELEMENT_TYPE_MVAR = 0x1e;

  /// A C language required modifier.
  @Deprecated('Use ELEMENT_TYPE_CMOD_REQD instead')
  static const ELEMENT_TYPE_CMOD_REQD = 0x1F;

  /// A C language optional modifier.
  @Deprecated('Use ELEMENT_TYPE_CMOD_OPT instead')
  static const ELEMENT_TYPE_CMOD_OPT = 0x20;

  /// Used internally.
  @Deprecated('Use ELEMENT_TYPE_INTERNAL instead')
  static const ELEMENT_TYPE_INTERNAL = 0x21;

  /// An invalid type.
  @Deprecated('Use ELEMENT_TYPE_MAX instead')
  static const ELEMENT_TYPE_MAX = 0x22;

  /// Used internally.
  @Deprecated('Use ELEMENT_TYPE_MODIFIER instead')
  static const ELEMENT_TYPE_MODIFIER = 0x40;

  /// A type modifier that is a sentinel for a list of a variable number of
  /// parameters.
  @Deprecated('Use ELEMENT_TYPE_SENTINEL instead')
  static const int ELEMENT_TYPE_SENTINEL = 0x01 | ELEMENT_TYPE_MODIFIER;

  /// Used internally.
  @Deprecated('Use ELEMENT_TYPE_PINNED instead')
  static const int ELEMENT_TYPE_PINNED = 0x05 | ELEMENT_TYPE_MODIFIER;
}

/// Contains values that describe the metadata of an event.
class CorEventAttr {
  /// Specifies that the event is special, and that its name describes how.
  @Deprecated('Use evSpecialName instead')
  static const evSpecialName = 0x0200;

  /// Reserved for internal use by the common language runtime.
  @Deprecated('Use evReservedMask instead')
  static const evReservedMask = 0x0400;

  /// Specifies that the common language runtime should check the encoding of
  /// the event name.
  @Deprecated('Use evRTSpecialName instead')
  static const evRTSpecialName = 0x0400;
}

/// Contains values that describe metadata about a field.
class CorFieldAttr {
  /// Specifies accessibility information.
  @Deprecated('Use fdFieldAccessMask instead')
  static const fdFieldAccessMask = 0x0007;

  /// Specifies that the field cannot be referenced.
  @Deprecated('Use fdPrivateScope instead')
  static const fdPrivateScope = 0x0000;

  /// Specifies that the field is accessible only by its parent type.
  @Deprecated('Use fdPrivate instead')
  static const fdPrivate = 0x0001;

  /// Specifies that the field is accessible by derived classes in its assembly.
  @Deprecated('Use fdFamANDAssem instead')
  static const fdFamANDAssem = 0x0002;

  /// Specifies that the field is accessible by all types in its assembly.
  @Deprecated('Use fdAssembly instead')
  static const fdAssembly = 0x0003;

  /// Specifies that the field is accessible only by its type and derived
  /// classes.
  @Deprecated('Use fdFamily instead')
  static const fdFamily = 0x0004;

  /// Specifies that the field is accessible by derived classes and by all types
  /// in its assembly.
  @Deprecated('Use fdFamORAssem instead')
  static const fdFamORAssem = 0x0005;

  /// Specifies that the field is accessible by all types with visibility of
  /// this scope.
  @Deprecated('Use fdPublic instead')
  static const fdPublic = 0x0006;

  /// Specifies that the field is a member of its type rather than an instance
  /// member.
  @Deprecated('Use fdStatic instead')
  static const fdStatic = 0x0010;

  /// Specifies that the field cannot be changed after it is initialized.
  @Deprecated('Use fdInitOnly instead')
  static const fdInitOnly = 0x0020;

  /// Specifies that the field value is a compile-time constant.
  @Deprecated('Use fdLiteral instead')
  static const fdLiteral = 0x0040;

  /// Specifies that the field is not serialized when its type is remoted.
  @Deprecated('Use fdNotSerialized instead')
  static const fdNotSerialized = 0x0080;

  /// Specifies that the field is special, and that its name describes how.
  @Deprecated('Use fdSpecialName instead')
  static const fdSpecialName = 0x0200;

  /// Specifies that the field implementation is forwarded through PInvoke.
  @Deprecated('Use fdPinvokeImpl instead')
  static const fdPinvokeImpl = 0x2000;

  /// Reserved for internal use by the common language runtime.
  @Deprecated('Use fdReservedMask instead')
  static const fdReservedMask = 0x9500;

  /// Specifies that the common language runtime metadata internal APIs should
  /// check the encoding of the name.
  @Deprecated('Use fdRTSpecialName instead')
  static const fdRTSpecialName = 0x0400;

  /// Specifies that the field contains marshaling information.
  @Deprecated('Use fdHasFieldMarshal instead')
  static const fdHasFieldMarshal = 0x1000;

  /// Specifies that the field has a default value.
  @Deprecated('Use fdHasDefault instead')
  static const fdHasDefault = 0x8000;

  /// Specifies that the field has a relative virtual address.
  @Deprecated('Use fdHasFieldRVA instead')
  static const fdHasFieldRVA = 0x0100;
}

/// Contains values that describe the Type parameters for generic types.
class CorGenericParamAttr {
  /// Parameter variance applies only to generic parameters for interfaces and
  /// delegates.
  @Deprecated('Use gpVarianceMask instead')
  static const gpVarianceMask = 0x0003;

  /// Indicates the absence of variance.
  @Deprecated('Use gpNonVariant instead')
  static const gpNonVariant = 0x0000;

  /// Indicates covariance.
  @Deprecated('Use gpCovariant instead')
  static const gpCovariant = 0x0001;

  /// Indicates contravariance.
  @Deprecated('Use gpContravariant instead')
  static const gpContravariant = 0x0002;

  /// Special constraints can apply to any Type parameter.
  @Deprecated('Use gpSpecialConstraintMask instead')
  static const gpSpecialConstraintMask = 0x001C;

  /// Indicates that no constraint applies to the Type parameter.
  @Deprecated('Use gpNoSpecialConstraint instead')
  static const gpNoSpecialConstraint = 0x0000;

  /// Indicates that the Type parameter must be a reference type.
  @Deprecated('Use gpReferenceTypeConstraint instead')
  static const gpReferenceTypeConstraint = 0x0004;

  /// Indicates that the Type parameter must be a value type that cannot be a
  /// null value.
  @Deprecated('Use gpNotNullableValueTypeConstraint instead')
  static const gpNotNullableValueTypeConstraint = 0x0008;

  /// Indicates that the Type parameter must have a default public constructor
  /// that takes no parameters.
  @Deprecated('Use gpDefaultConstructorConstraint instead')
  static const gpDefaultConstructorConstraint = 0x0010;
}

/// Contains values that describe the features of a method.
class CorMethodAttr {
  /// Specifies member access.
  @Deprecated('Use mdMemberAccessMask instead')
  static const mdMemberAccessMask = 0x0007;

  /// Specifies that the member cannot be referenced.
  @Deprecated('Use mdPrivateScope instead')
  static const mdPrivateScope = 0x0000;

  /// Specifies that the member is accessible only by the parent type.
  @Deprecated('Use mdPrivate instead')
  static const mdPrivate = 0x0001;

  /// Specifies that the member is accessible by subtypes only in this assembly.
  @Deprecated('Use mdFamANDAssem instead')
  static const mdFamANDAssem = 0x0002;

  /// Specifies that the member is accessibly by anyone in the assembly.
  @Deprecated('Use mdAssem instead')
  static const mdAssem = 0x0003;

  /// Specifies that the member is accessible only by type and subtypes.
  @Deprecated('Use mdFamily instead')
  static const mdFamily = 0x0004;

  /// Specifies that the member is accessible by derived classes and by other
  /// types in its assembly.
  @Deprecated('Use mdFamORAssem instead')
  static const mdFamORAssem = 0x0005;

  /// Specifies that the member is accessible by all types with access to the
  /// scope.
  @Deprecated('Use mdPublic instead')
  static const mdPublic = 0x0006;

  /// Specifies that the member is defined as part of the type rather than as a
  /// member of an instance.
  @Deprecated('Use mdStatic instead')
  static const mdStatic = 0x0010;

  /// Specifies that the method cannot be overridden.
  @Deprecated('Use mdFinal instead')
  static const mdFinal = 0x0020;

  /// Specifies that the method can be overridden.
  @Deprecated('Use mdVirtual instead')
  static const mdVirtual = 0x0040;

  /// Specifies that the method hides by name and signature, rather than just by
  /// name.
  @Deprecated('Use mdHideBySig instead')
  static const mdHideBySig = 0x0080;

  /// Specifies virtual table layout.
  @Deprecated('Use mdVtableLayoutMask instead')
  static const mdVtableLayoutMask = 0x0100;

  /// Specifies that the slot used for this method in the virtual table be
  /// reused. This is the default.
  @Deprecated('Use mdReuseSlot instead')
  static const mdReuseSlot = 0x0000;

  /// Specifies that the method always gets a new slot in the virtual table.
  @Deprecated('Use mdNewSlot instead')
  static const mdNewSlot = 0x0100;

  /// Specifies that the method can be overridden by the same types to which it
  /// is visible.
  @Deprecated('Use mdCheckAccessOnOverride instead')
  static const mdCheckAccessOnOverride = 0x0200;

  /// Specifies that the method is not implemented.
  @Deprecated('Use mdAbstract instead')
  static const mdAbstract = 0x0400;

  /// Specifies that the method is special, and that its name describes how.
  @Deprecated('Use mdSpecialName instead')
  static const mdSpecialName = 0x0800;

  /// Specifies that the method implementation is forwarded using PInvoke.
  @Deprecated('Use mdPinvokeImpl instead')
  static const mdPinvokeImpl = 0x2000;

  /// Specifies that the method is a managed method exported to unmanaged code.
  @Deprecated('Use mdUnmanagedExport instead')
  static const mdUnmanagedExport = 0x0008;

  /// Reserved for internal use by the common language runtime.
  @Deprecated('Use mdReservedMask instead')
  static const mdReservedMask = 0xd000;

  /// Specifies that the common language runtime should check the encoding of
  /// the method name.
  @Deprecated('Use mdRTSpecialName instead')
  static const mdRTSpecialName = 0x1000;

  /// Specifies that the method has security associated with it.
  @Deprecated('Use mdHasSecurity instead')
  static const mdHasSecurity = 0x4000;

  /// Specifies that the method calls another method containing security code.
  @Deprecated('Use mdRequireSecObject instead')
  static const mdRequireSecObject = 0x8000;
}

/// Contains values that describe method implementation features.
class CorMethodImpl {
  /// Flags that describe code type.
  @Deprecated('Use miCodeTypeMask instead')
  static const miCodeTypeMask = 0x0003;

  /// Specifies that the method implementation is Microsoft intermediate
  /// language (MSIL).
  @Deprecated('Use miIL instead')
  static const miIL = 0x0000;

  /// Specifies that the method implementation is native.
  @Deprecated('Use miNative instead')
  static const miNative = 0x0001;

  /// Specifies that the method implementation is OPTIL.
  @Deprecated('Use miOPTIL instead')
  static const miOPTIL = 0x0002;

  /// Specifies that the method implementation is provided by the common
  /// language runtime.
  @Deprecated('Use miRuntime instead')
  static const miRuntime = 0x0003;

  /// Flags that indicate whether the code is managed or unmanaged.
  @Deprecated('Use miManagedMask instead')
  static const miManagedMask = 0x0004;

  /// Specifies that the method implementation is unmanaged.
  @Deprecated('Use miUnmanaged instead')
  static const miUnmanaged = 0x0004;

  /// Specifies that the method implementation is managed.
  @Deprecated('Use miManaged instead')
  static const miManaged = 0x0000;

  /// Specifies that the method is defined. This flag is used primarily in merge
  /// scenarios.
  @Deprecated('Use miForwardRef instead')
  static const miForwardRef = 0x0010;

  /// Specifies that the method signature cannot be mangled for an HRESULT
  /// conversion.
  @Deprecated('Use miPreserveSig instead')
  static const miPreserveSig = 0x0080;

  /// Reserved for internal use by the common language runtime.
  @Deprecated('Use miInternalCall instead')
  static const miInternalCall = 0x1000;

  /// Specifies that the method is single-threaded through its body.
  @Deprecated('Use miSynchronized instead')
  static const miSynchronized = 0x0020;

  /// Specifies that the method cannot be inlined.
  @Deprecated('Use miNoInlining instead')
  static const miNoInlining = 0x0008;

  /// Specifies that the method should be inlined if possible.
  @Deprecated('Use miAggressiveInlining instead')
  static const miAggressiveInlining = 0x0100;

  /// Specifies that the method should not be optimized.
  @Deprecated('Use miNoOptimization instead')
  static const miNoOptimization = 0x0040;

  /// The maximum valid value for a [CorMethodImpl].
  @Deprecated('Use miMaxMethodImplVal instead')
  static const miMaxMethodImplVal = 0xffff;
}

/// Contains values that describe native unmanaged types.
class CorNativeType {
  @Deprecated('Use NATIVE_TYPE_END instead')
  static const NATIVE_TYPE_END = 0x0;
  @Deprecated('Use NATIVE_TYPE_VOID instead')
  static const NATIVE_TYPE_VOID = 0x1;
  @Deprecated('Use NATIVE_TYPE_BOOLEAN instead')
  static const NATIVE_TYPE_BOOLEAN = 0x2;
  @Deprecated('Use NATIVE_TYPE_I1 instead')
  static const NATIVE_TYPE_I1 = 0x3;
  @Deprecated('Use NATIVE_TYPE_U1 instead')
  static const NATIVE_TYPE_U1 = 0x4;
  @Deprecated('Use NATIVE_TYPE_I2 instead')
  static const NATIVE_TYPE_I2 = 0x5;
  @Deprecated('Use NATIVE_TYPE_U2 instead')
  static const NATIVE_TYPE_U2 = 0x6;
  @Deprecated('Use NATIVE_TYPE_I4 instead')
  static const NATIVE_TYPE_I4 = 0x7;
  @Deprecated('Use NATIVE_TYPE_U4 instead')
  static const NATIVE_TYPE_U4 = 0x8;
  @Deprecated('Use NATIVE_TYPE_I8 instead')
  static const NATIVE_TYPE_I8 = 0x9;
  @Deprecated('Use NATIVE_TYPE_U8 instead')
  static const NATIVE_TYPE_U8 = 0xa;
  @Deprecated('Use NATIVE_TYPE_R4 instead')
  static const NATIVE_TYPE_R4 = 0xb;
  @Deprecated('Use NATIVE_TYPE_R8 instead')
  static const NATIVE_TYPE_R8 = 0xc;
  @Deprecated('Use NATIVE_TYPE_SYSCHAR instead')
  static const NATIVE_TYPE_SYSCHAR = 0xd;
  @Deprecated('Use NATIVE_TYPE_VARIANT instead')
  static const NATIVE_TYPE_VARIANT = 0xe;
  @Deprecated('Use NATIVE_TYPE_CURRENCY instead')
  static const NATIVE_TYPE_CURRENCY = 0xf;
  @Deprecated('Use NATIVE_TYPE_PTR instead')
  static const NATIVE_TYPE_PTR = 0x10;
  @Deprecated('Use NATIVE_TYPE_DECIMAL instead')
  static const NATIVE_TYPE_DECIMAL = 0x11;
  @Deprecated('Use NATIVE_TYPE_DATE instead')
  static const NATIVE_TYPE_DATE = 0x12;
  @Deprecated('Use NATIVE_TYPE_BSTR instead')
  static const NATIVE_TYPE_BSTR = 0x13;
  @Deprecated('Use NATIVE_TYPE_LPSTR instead')
  static const NATIVE_TYPE_LPSTR = 0x14;
  @Deprecated('Use NATIVE_TYPE_LPWSTR instead')
  static const NATIVE_TYPE_LPWSTR = 0x15;
  @Deprecated('Use NATIVE_TYPE_LPTSTR instead')
  static const NATIVE_TYPE_LPTSTR = 0x16;
  @Deprecated('Use NATIVE_TYPE_FIXEDSYSSTRING instead')
  static const NATIVE_TYPE_FIXEDSYSSTRING = 0x17;
  @Deprecated('Use NATIVE_TYPE_OBJECTREF instead')
  static const NATIVE_TYPE_OBJECTREF = 0x18;
  @Deprecated('Use NATIVE_TYPE_IUNKNOWN instead')
  static const NATIVE_TYPE_IUNKNOWN = 0x19;
  @Deprecated('Use NATIVE_TYPE_IDISPATCH instead')
  static const NATIVE_TYPE_IDISPATCH = 0x1a;
  @Deprecated('Use NATIVE_TYPE_STRUCT instead')
  static const NATIVE_TYPE_STRUCT = 0x1b;
  @Deprecated('Use NATIVE_TYPE_INTF instead')
  static const NATIVE_TYPE_INTF = 0x1c;
  @Deprecated('Use NATIVE_TYPE_SAFEARRAY instead')
  static const NATIVE_TYPE_SAFEARRAY = 0x1d;
  @Deprecated('Use NATIVE_TYPE_FIXEDARRAY instead')
  static const NATIVE_TYPE_FIXEDARRAY = 0x1e;
  @Deprecated('Use NATIVE_TYPE_INT instead')
  static const NATIVE_TYPE_INT = 0x1f;
  @Deprecated('Use NATIVE_TYPE_UINT instead')
  static const NATIVE_TYPE_UINT = 0x20;
  @Deprecated('Use NATIVE_TYPE_NESTEDSTRUCT instead')
  static const NATIVE_TYPE_NESTEDSTRUCT = 0x21;
  @Deprecated('Use NATIVE_TYPE_BYVALSTR instead')
  static const NATIVE_TYPE_BYVALSTR = 0x22;
  @Deprecated('Use NATIVE_TYPE_ANSIBSTR instead')
  static const NATIVE_TYPE_ANSIBSTR = 0x23;
  @Deprecated('Use NATIVE_TYPE_TBSTR instead')
  static const NATIVE_TYPE_TBSTR = 0x24;
  @Deprecated('Use NATIVE_TYPE_VARIANTBOOL instead')
  static const NATIVE_TYPE_VARIANTBOOL = 0x25;
  @Deprecated('Use NATIVE_TYPE_FUNC instead')
  static const NATIVE_TYPE_FUNC = 0x26;
  @Deprecated('Use NATIVE_TYPE_ASANY instead')
  static const NATIVE_TYPE_ASANY = 0x28;
  @Deprecated('Use NATIVE_TYPE_ARRAY instead')
  static const NATIVE_TYPE_ARRAY = 0x2a;
  @Deprecated('Use NATIVE_TYPE_LPSTRUCT instead')
  static const NATIVE_TYPE_LPSTRUCT = 0x2b;
  @Deprecated('Use NATIVE_TYPE_CUSTOMMARSHALER instead')
  static const NATIVE_TYPE_CUSTOMMARSHALER = 0x2c;
  @Deprecated('Use NATIVE_TYPE_IINSPECTABLE instead')
  static const NATIVE_TYPE_IINSPECTABLE = 0x2e;
  @Deprecated('Use NATIVE_TYPE_HSTRING instead')
  static const NATIVE_TYPE_HSTRING = 0x2f;
  @Deprecated('Use NATIVE_TYPE_ERROR instead')
  static const NATIVE_TYPE_ERROR = 0x2d;
  @Deprecated('Use NATIVE_TYPE_MAX instead')
  static const NATIVE_TYPE_MAX = 0x50;
}

/// Contains values that describe the metadata of a method parameter.
class CorParamAttr {
  /// Specifies that the parameter is passed into the method call.
  @Deprecated('Use pdIn instead')
  static const pdIn = 0x0001;

  /// Specifies that the parameter is passed from the method return.
  @Deprecated('Use pdOut instead')
  static const pdOut = 0x0002;

  /// Specifies that the parameter is optional.
  @Deprecated('Use pdOptional instead')
  static const pdOptional = 0x0010;

  /// Reserved for internal use by the common language runtime.
  @Deprecated('Use pdReservedMask instead')
  static const pdReservedMask = 0xf000;

  /// Specifies that the parameter has a default value.
  @Deprecated('Use pdHasDefault instead')
  static const pdHasDefault = 0x1000;

  /// Specifies that the parameter has marshaling information.
  @Deprecated('Use pdHasFieldMarshal instead')
  static const pdHasFieldMarshal = 0x2000;

  /// Unused.
  @Deprecated('Use pdUnused instead')
  static const pdUnused = 0xcfe0;
}

/// Contains values that describe a portable executable (PE) file.
class CorPEKind {
  /// Indicates that this is not a PE file.
  @Deprecated('Use peNot instead')
  static const peNot = 0x00000000;

  /// Indicates that this PE file contains only managed code.
  @Deprecated('Use peILonly instead')
  static const peILonly = 0x00000001;

  /// Indicates that this PE file makes Win32 calls.
  @Deprecated('Use pe32BitRequired instead')
  static const pe32BitRequired = 0x00000002;

  /// Indicates that this PE file runs on a 64-bit platform.
  @Deprecated('Use pe32Plus instead')
  static const pe32Plus = 0x00000004;

  /// Indicates that this PE file is native code.
  @Deprecated('Use pe32Unmanaged instead')
  static const pe32Unmanaged = 0x00000008;

  /// Indicates that this PE file is platform-neutral and prefers to be loaded
  /// in a 32-bit environment.
  @Deprecated('Use pe32BitPreferred instead')
  static const pe32BitPreferred = 0x00000010;
}

/// Specifies options for a PInvoke call.
class CorPinvokeMap {
  /// Use each member name as specified.
  @Deprecated('Use pmNoMangle instead')
  static const pmNoMangle = 0x0001;

  /// Reserved.
  @Deprecated('Use pmCharSetMask instead')
  static const pmCharSetMask = 0x0006;

  /// Reserved.
  @Deprecated('Use pmCharSetNotSpec instead')
  static const pmCharSetNotSpec = 0x0000;

  /// Marshal strings as multiple-byte character strings.
  @Deprecated('Use pmCharSetAnsi instead')
  static const pmCharSetAnsi = 0x0002;

  /// Marshal strings as Unicode 2-byte characters.
  @Deprecated('Use pmCharSetUnicode instead')
  static const pmCharSetUnicode = 0x0004;

  /// Automatically marshal strings appropriately for the target operating
  /// system. The default is Unicode on Windows NT, Windows 2000, Windows XP,
  /// and the Windows Server 2003 family; the default is ANSI on Windows 98 and
  /// Windows Me.
  @Deprecated('Use pmCharSetAuto instead')
  static const pmCharSetAuto = 0x0006;

  /// Reserved.
  @Deprecated('Use pmBestFitUseAssem instead')
  static const pmBestFitUseAssem = 0x0000;

  /// Perform best-fit mapping of Unicode characters that lack an exact match in
  /// the ANSI character set.
  @Deprecated('Use pmBestFitEnabled instead')
  static const pmBestFitEnabled = 0x0010;

  /// Do not perform best-fit mapping of Unicode characters. In this case, all
  /// unmappable characters will be replaced by a ‘?’.
  @Deprecated('Use pmBestFitDisabled instead')
  static const pmBestFitDisabled = 0x0020;

  /// Reserved.
  @Deprecated('Use pmBestFitMask instead')
  static const pmBestFitMask = 0x0030;

  /// Reserved.
  @Deprecated('Use pmThrowOnUnmappableCharUseAssem instead')
  static const pmThrowOnUnmappableCharUseAssem = 0x0000;

  /// Throw an exception when the interop marshaler encounters an unmappable
  /// character.
  @Deprecated('Use pmThrowOnUnmappableCharEnabled instead')
  static const pmThrowOnUnmappableCharEnabled = 0x1000;

  /// Do not throw an exception when the interop marshaler encounters an
  /// unmappable character.
  @Deprecated('Use pmThrowOnUnmappableCharDisabled instead')
  static const pmThrowOnUnmappableCharDisabled = 0x2000;

  /// Reserved.
  @Deprecated('Use pmThrowOnUnmappableCharMask instead')
  static const pmThrowOnUnmappableCharMask = 0x3000;

  /// Allow the callee to call the Win32 SetLastError function before returning
  /// from the attributed method.
  @Deprecated('Use pmSupportsLastError instead')
  static const pmSupportsLastError = 0x0040;

  /// Reserved.
  @Deprecated('Use pmCallConvMask instead')
  static const pmCallConvMask = 0x0700;

  /// Use the default platform calling convention. For example, on Windows the
  /// default is StdCall and on Windows CE .NET it is Cdecl.
  @Deprecated('Use pmCallConvWinapi instead')
  static const pmCallConvWinapi = 0x0100;

  /// Use the Cdecl calling convention. In this case, the caller cleans the
  /// stack. This enables calling functions with varargs (that is, functions
  /// that accept a variable number of parameters).
  @Deprecated('Use pmCallConvCdecl instead')
  static const pmCallConvCdecl = 0x0200;

  /// Use the StdCall calling convention. In this case, the callee cleans the
  /// stack. This is the default convention for calling unmanaged functions with
  /// platform invoke.
  @Deprecated('Use pmCallConvStdcall instead')
  static const pmCallConvStdcall = 0x0300;

  /// Use the ThisCall calling convention. In this case, the first parameter is
  /// the this pointer and is stored in register ECX. Other parameters are
  /// pushed on the stack. The ThisCall calling convention is used to call
  /// methods on classes exported from an unmanaged DLL.
  @Deprecated('Use pmCallConvThiscall instead')
  static const pmCallConvThiscall = 0x0400;

  /// Reserved.
  @Deprecated('Use pmCallConvFastcall instead')
  static const pmCallConvFastcall = 0x0500;

  /// Reserved.
  @Deprecated('Use pmMaxValue instead')
  static const pmMaxValue = 0xFFFF;
}

/// Contains values that describe the metadata of a property.
class CorPropertyAttr {
  /// Specifies that the property is special, and that its name describes how.
  @Deprecated('Use prSpecialName instead')
  static const prSpecialName = 0x0200;

  /// Reserved for internal use by the common language runtime.
  @Deprecated('Use prReservedMask instead')
  static const prReservedMask = 0xf400;

  /// Specifies that the common language runtime metadata internal APIs should
  /// check the encoding of the property name.
  @Deprecated('Use prRTSpecialName instead')
  static const prRTSpecialName = 0x0400;

  /// Specifies that the property has a default value.
  @Deprecated('Use prHasDefault instead')
  static const prHasDefault = 0x1000;

  /// Unused.
  @Deprecated('Use prUnused instead')
  static const prUnused = 0xe9ff;
}

/// Indicates the type of a metadata token.
class CorTokenType {
  @Deprecated('Use mdtModule instead')
  static const mdtModule = 0x00000000;
  @Deprecated('Use mdtTypeRef instead')
  static const mdtTypeRef = 0x01000000;
  @Deprecated('Use mdtTypeDef instead')
  static const mdtTypeDef = 0x02000000;
  @Deprecated('Use mdtFieldDef instead')
  static const mdtFieldDef = 0x04000000;
  @Deprecated('Use mdtMethodDef instead')
  static const mdtMethodDef = 0x06000000;
  @Deprecated('Use mdtParamDef instead')
  static const mdtParamDef = 0x08000000;
  @Deprecated('Use mdtInterfaceImpl instead')
  static const mdtInterfaceImpl = 0x09000000;
  @Deprecated('Use mdtMemberRef instead')
  static const mdtMemberRef = 0x0a000000;
  @Deprecated('Use mdtCustomAttribute instead')
  static const mdtCustomAttribute = 0x0c000000;
  @Deprecated('Use mdtPermission instead')
  static const mdtPermission = 0x0e000000;
  @Deprecated('Use mdtSignature instead')
  static const mdtSignature = 0x11000000;
  @Deprecated('Use mdtEvent instead')
  static const mdtEvent = 0x14000000;
  @Deprecated('Use mdtProperty instead')
  static const mdtProperty = 0x17000000;
  @Deprecated('Use mdtModuleRef instead')
  static const mdtModuleRef = 0x1a000000;
  @Deprecated('Use mdtTypeSpec instead')
  static const mdtTypeSpec = 0x1b000000;
  @Deprecated('Use mdtAssembly instead')
  static const mdtAssembly = 0x20000000;
  @Deprecated('Use mdtAssemblyRef instead')
  static const mdtAssemblyRef = 0x23000000;
  @Deprecated('Use mdtFile instead')
  static const mdtFile = 0x26000000;
  @Deprecated('Use mdtExportedType instead')
  static const mdtExportedType = 0x27000000;
  @Deprecated('Use mdtManifestResource instead')
  static const mdtManifestResource = 0x28000000;
  @Deprecated('Use mdtGenericParam instead')
  static const mdtGenericParam = 0x2a000000;
  @Deprecated('Use mdtMethodSpec instead')
  static const mdtMethodSpec = 0x2b000000;
  @Deprecated('Use mdtGenericParamConstraint instead')
  static const mdtGenericParamConstraint = 0x2c000000;
  @Deprecated('Use mdtString instead')
  static const mdtString = 0x70000000;
  @Deprecated('Use mdtName instead')
  static const mdtName = 0x71000000;
  @Deprecated('Use mdtBaseType instead')
  static const mdtBaseType = 0x72000000;
}

/// Contains values that indicate type metadata.
class CorTypeAttr {
  /// Used for type visibility information.
  @Deprecated('Use tdVisibilityMask instead')
  static const tdVisibilityMask = 0x00000007;

  /// Specifies that the type is not in public scope.
  @Deprecated('Use tdNotPublic instead')
  static const tdNotPublic = 0x00000000;

  /// Specifies that the type is in public scope.
  @Deprecated('Use tdPublic instead')
  static const tdPublic = 0x00000001;

  /// Specifies that the type is nested with public visibility.
  @Deprecated('Use tdNestedPublic instead')
  static const tdNestedPublic = 0x00000002;

  /// Specifies that the type is nested with private visibility.
  @Deprecated('Use tdNestedPrivate instead')
  static const tdNestedPrivate = 0x00000003;

  /// Specifies that the type is nested with family visibility.
  @Deprecated('Use tdNestedFamily instead')
  static const tdNestedFamily = 0x00000004;

  /// Specifies that the type is nested with assembly visibility.
  @Deprecated('Use tdNestedAssembly instead')
  static const tdNestedAssembly = 0x00000005;

  /// Specifies that the type is nested with family and assembly visibility.
  @Deprecated('Use tdNestedFamANDAssem instead')
  static const tdNestedFamANDAssem = 0x00000006;

  /// Specifies that the type is nested with family or assembly visibility.
  @Deprecated('Use tdNestedFamORAssem instead')
  static const tdNestedFamORAssem = 0x00000007;

  /// Gets layout information for the type.
  @Deprecated('Use tdLayoutMask instead')
  static const tdLayoutMask = 0x00000018;

  /// Specifies that the fields of this type are laid out automatically.
  @Deprecated('Use tdAutoLayout instead')
  static const tdAutoLayout = 0x00000000;

  /// Specifies that the fields of this type are laid out sequentially.
  @Deprecated('Use tdSequentialLayout instead')
  static const tdSequentialLayout = 0x00000008;

  /// Specifies that field layout is supplied explicitly.
  @Deprecated('Use tdExplicitLayout instead')
  static const tdExplicitLayout = 0x00000010;

  /// Gets semantic information about the type.
  @Deprecated('Use tdClassSemanticsMask instead')
  static const tdClassSemanticsMask = 0x00000020;

  /// Specifies that the type is a class.
  @Deprecated('Use tdClass instead')
  static const tdClass = 0x00000000;

  /// Specifies that the type is an interface.
  @Deprecated('Use tdInterface instead')
  static const tdInterface = 0x00000020;

  /// Specifies that the type is abstract.
  @Deprecated('Use tdAbstract instead')
  static const tdAbstract = 0x00000080;

  /// Specifies that the type cannot be extended.
  @Deprecated('Use tdSealed instead')
  static const tdSealed = 0x00000100;

  /// Specifies that the class name is special. Its name describes how.
  @Deprecated('Use tdSpecialName instead')
  static const tdSpecialName = 0x00000400;

  /// Specifies that the type is imported.
  @Deprecated('Use tdImport instead')
  static const tdImport = 0x00001000;

  /// Specifies that the type is serializable.
  @Deprecated('Use tdSerializable instead')
  static const tdSerializable = 0x00002000;

  /// Specifies that this type is a Windows Runtime type.
  @Deprecated('Use tdWindowsRuntime instead')
  static const tdWindowsRuntime = 0x00004000;

  /// Gets information about how strings are encoded and formatted.
  @Deprecated('Use tdStringFormatMask instead')
  static const tdStringFormatMask = 0x00030000;

  /// Specifies that this type interprets an LPTSTR as ANSI.
  @Deprecated('Use tdAnsiClass instead')
  static const tdAnsiClass = 0x00000000;

  /// Specifies that this type interprets an LPTSTR as Unicode.
  @Deprecated('Use tdUnicodeClass instead')
  static const tdUnicodeClass = 0x00010000;

  /// Specifies that this type interprets an LPTSTR automatically.
  @Deprecated('Use tdAutoClass instead')
  static const tdAutoClass = 0x00020000;

  /// Specifies that the type has a non-standard encoding, as specified by
  /// CustomFormatMask.
  @Deprecated('Use tdCustomFormatClass instead')
  static const tdCustomFormatClass = 0x00030000;

  /// Use this mask to get non-standard encoding information for native interop.
  /// The meaning of the values of these two bits is unspecified.
  @Deprecated('Use tdCustomFormatMask instead')
  static const tdCustomFormatMask = 0x00C00000;

  /// Specifies that the type must be initialized before the first attempt to
  /// access a static field.
  @Deprecated('Use tdBeforeFieldInit instead')
  static const tdBeforeFieldInit = 0x00100000;

  /// Specifies that the type is exported, and a type forwarder.
  @Deprecated('Use tdForwarder instead')
  static const tdForwarder = 0x00200000;

  /// This flag and the flags below are used internally by the common language
  /// runtime.
  @Deprecated('Use tdReservedMask instead')
  static const tdReservedMask = 0x00040800;

  /// Specifies that the common language runtime should check the name encoding.
  @Deprecated('Use tdRTSpecialName instead')
  static const tdRTSpecialName = 0x00000800;

  /// Specifies that the type has security associated with it.
  @Deprecated('Use tdHasSecurity instead')
  static const tdHasSecurity = 0x00040000;
}

/// Used internally.
const ELEMENT_TYPE_END = 0x0;

/// A void type.
const ELEMENT_TYPE_VOID = 0x1;

/// A Boolean type.
const ELEMENT_TYPE_BOOLEAN = 0x2;

/// A character type.
const ELEMENT_TYPE_CHAR = 0x3;

/// A signed 1-byte integer.
const ELEMENT_TYPE_I1 = 0x4;

/// An unsigned 1-byte integer.
const ELEMENT_TYPE_U1 = 0x5;

/// A signed 2-byte integer.
const ELEMENT_TYPE_I2 = 0x6;

/// An unsigned 2-byte integer.
const ELEMENT_TYPE_U2 = 0x7;

/// A signed 4-byte integer.
const ELEMENT_TYPE_I4 = 0x8;

/// An unsigned 4-byte integer.
const ELEMENT_TYPE_U4 = 0x9;

/// A signed 8-byte integer.
const ELEMENT_TYPE_I8 = 0xa;

/// An unsigned 8-byte integer.
const ELEMENT_TYPE_U8 = 0xb;

/// A 4-byte floating point.
const ELEMENT_TYPE_R4 = 0xc;

/// An 8-byte floating point.
const ELEMENT_TYPE_R8 = 0xd;

/// A System.String type.
const ELEMENT_TYPE_STRING = 0xe;

/// A pointer type modifier.
const ELEMENT_TYPE_PTR = 0xf;

/// A reference type modifier.
const ELEMENT_TYPE_BYREF = 0x10;

/// A value type modifier.
const ELEMENT_TYPE_VALUETYPE = 0x11;

/// A class type modifier.
const ELEMENT_TYPE_CLASS = 0x12;

/// A class variable type modifier.
const ELEMENT_TYPE_VAR = 0x13;

/// A multi-dimensional array type modifier.
const ELEMENT_TYPE_ARRAY = 0x14;

/// A type modifier for generic types.
const ELEMENT_TYPE_GENERICINST = 0x15;

/// A typed reference.
const ELEMENT_TYPE_TYPEDBYREF = 0x16;

/// Size of a native integer.
const ELEMENT_TYPE_I = 0x18;

/// Size of an unsigned native integer.
const ELEMENT_TYPE_U = 0x19;

/// A pointer to a function.
const ELEMENT_TYPE_FNPTR = 0x1B;

/// A System.Object type.
const ELEMENT_TYPE_OBJECT = 0x1C;

/// A single-dimensional, zero lower-bound array type modifier.
const ELEMENT_TYPE_SZARRAY = 0x1D;

/// A method variable type modifier.
const ELEMENT_TYPE_MVAR = 0x1e;

/// A C language required modifier.
const ELEMENT_TYPE_CMOD_REQD = 0x1F;

/// A C language optional modifier.
const ELEMENT_TYPE_CMOD_OPT = 0x20;

/// Used internally.
const ELEMENT_TYPE_INTERNAL = 0x21;

/// An invalid type.
const ELEMENT_TYPE_MAX = 0x22;

/// Used internally.
const ELEMENT_TYPE_MODIFIER = 0x40;

/// A type modifier that is a sentinel for a list of a variable number of
/// parameters.
const int ELEMENT_TYPE_SENTINEL = 0x01 | ELEMENT_TYPE_MODIFIER;

/// Used internally.
const int ELEMENT_TYPE_PINNED = 0x05 | ELEMENT_TYPE_MODIFIER;

/// Specifies that the event is special, and that its name describes how.
const evSpecialName = 0x0200;

/// Reserved for internal use by the common language runtime.
const evReservedMask = 0x0400;

/// Specifies that the common language runtime should check the encoding of
/// the event name.
const evRTSpecialName = 0x0400;

/// Specifies accessibility information.
const fdFieldAccessMask = 0x0007;

/// Specifies that the field cannot be referenced.
const fdPrivateScope = 0x0000;

/// Specifies that the field is accessible only by its parent type.
const fdPrivate = 0x0001;

/// Specifies that the field is accessible by derived classes in its assembly.
const fdFamANDAssem = 0x0002;

/// Specifies that the field is accessible by all types in its assembly.
const fdAssembly = 0x0003;

/// Specifies that the field is accessible only by its type and derived
/// classes.
const fdFamily = 0x0004;

/// Specifies that the field is accessible by derived classes and by all types
/// in its assembly.
const fdFamORAssem = 0x0005;

/// Specifies that the field is accessible by all types with visibility of
/// this scope.
const fdPublic = 0x0006;

/// Specifies that the field is a member of its type rather than an instance
/// member.
const fdStatic = 0x0010;

/// Specifies that the field cannot be changed after it is initialized.
const fdInitOnly = 0x0020;

/// Specifies that the field value is a compile-time constant.
const fdLiteral = 0x0040;

/// Specifies that the field is not serialized when its type is remoted.
const fdNotSerialized = 0x0080;

/// Specifies that the field is special, and that its name describes how.
const fdSpecialName = 0x0200;

/// Specifies that the field implementation is forwarded through PInvoke.
const fdPinvokeImpl = 0x2000;

/// Reserved for internal use by the common language runtime.
const fdReservedMask = 0x9500;

/// Specifies that the common language runtime metadata internal APIs should
/// check the encoding of the name.
const fdRTSpecialName = 0x0400;

/// Specifies that the field contains marshaling information.
const fdHasFieldMarshal = 0x1000;

/// Specifies that the field has a default value.
const fdHasDefault = 0x8000;

/// Specifies that the field has a relative virtual address.
const fdHasFieldRVA = 0x0100;

/// Parameter variance applies only to generic parameters for interfaces and
/// delegates.
const gpVarianceMask = 0x0003;

/// Indicates the absence of variance.
const gpNonVariant = 0x0000;

/// Indicates covariance.
const gpCovariant = 0x0001;

/// Indicates contravariance.
const gpContravariant = 0x0002;

/// Special constraints can apply to any Type parameter.
const gpSpecialConstraintMask = 0x001C;

/// Indicates that no constraint applies to the Type parameter.
const gpNoSpecialConstraint = 0x0000;

/// Indicates that the Type parameter must be a reference type.
const gpReferenceTypeConstraint = 0x0004;

/// Indicates that the Type parameter must be a value type that cannot be a
/// null value.
const gpNotNullableValueTypeConstraint = 0x0008;

/// Indicates that the Type parameter must have a default public constructor
/// that takes no parameters.
const gpDefaultConstructorConstraint = 0x0010;

/// Specifies member access.
const mdMemberAccessMask = 0x0007;

/// Specifies that the member cannot be referenced.
const mdPrivateScope = 0x0000;

/// Specifies that the member is accessible only by the parent type.
const mdPrivate = 0x0001;

/// Specifies that the member is accessible by subtypes only in this assembly.
const mdFamANDAssem = 0x0002;

/// Specifies that the member is accessibly by anyone in the assembly.
const mdAssem = 0x0003;

/// Specifies that the member is accessible only by type and subtypes.
const mdFamily = 0x0004;

/// Specifies that the member is accessible by derived classes and by other
/// types in its assembly.
const mdFamORAssem = 0x0005;

/// Specifies that the member is accessible by all types with access to the
/// scope.
const mdPublic = 0x0006;

/// Specifies that the member is defined as part of the type rather than as a
/// member of an instance.
const mdStatic = 0x0010;

/// Specifies that the method cannot be overridden.
const mdFinal = 0x0020;

/// Specifies that the method can be overridden.
const mdVirtual = 0x0040;

/// Specifies that the method hides by name and signature, rather than just by
/// name.
const mdHideBySig = 0x0080;

/// Specifies virtual table layout.
const mdVtableLayoutMask = 0x0100;

/// Specifies that the slot used for this method in the virtual table be
/// reused. This is the default.
const mdReuseSlot = 0x0000;

/// Specifies that the method always gets a new slot in the virtual table.
const mdNewSlot = 0x0100;

/// Specifies that the method can be overridden by the same types to which it
/// is visible.
const mdCheckAccessOnOverride = 0x0200;

/// Specifies that the method is not implemented.
const mdAbstract = 0x0400;

/// Specifies that the method is special, and that its name describes how.
const mdSpecialName = 0x0800;

/// Specifies that the method implementation is forwarded using PInvoke.
const mdPinvokeImpl = 0x2000;

/// Specifies that the method is a managed method exported to unmanaged code.
const mdUnmanagedExport = 0x0008;

/// Reserved for internal use by the common language runtime.
const mdReservedMask = 0xd000;

/// Specifies that the common language runtime should check the encoding of
/// the method name.
const mdRTSpecialName = 0x1000;

/// Specifies that the method has security associated with it.
const mdHasSecurity = 0x4000;

/// Specifies that the method calls another method containing security code.
const mdRequireSecObject = 0x8000;

/// Flags that describe code type.
const miCodeTypeMask = 0x0003;

/// Specifies that the method implementation is Microsoft intermediate
/// language (MSIL).
const miIL = 0x0000;

/// Specifies that the method implementation is native.
const miNative = 0x0001;

/// Specifies that the method implementation is OPTIL.
const miOPTIL = 0x0002;

/// Specifies that the method implementation is provided by the common
/// language runtime.
const miRuntime = 0x0003;

/// Flags that indicate whether the code is managed or unmanaged.
const miManagedMask = 0x0004;

/// Specifies that the method implementation is unmanaged.
const miUnmanaged = 0x0004;

/// Specifies that the method implementation is managed.
const miManaged = 0x0000;

/// Specifies that the method is defined. This flag is used primarily in merge
/// scenarios.
const miForwardRef = 0x0010;

/// Specifies that the method signature cannot be mangled for an HRESULT
/// conversion.
const miPreserveSig = 0x0080;

/// Reserved for internal use by the common language runtime.
const miInternalCall = 0x1000;

/// Specifies that the method is single-threaded through its body.
const miSynchronized = 0x0020;

/// Specifies that the method cannot be inlined.
const miNoInlining = 0x0008;

/// Specifies that the method should be inlined if possible.
const miAggressiveInlining = 0x0100;

/// Specifies that the method should not be optimized.
const miNoOptimization = 0x0040;

/// The maximum valid value for a [CorMethodImpl].
const miMaxMethodImplVal = 0xffff;

const NATIVE_TYPE_END = 0x0;
const NATIVE_TYPE_VOID = 0x1;
const NATIVE_TYPE_BOOLEAN = 0x2;
const NATIVE_TYPE_I1 = 0x3;
const NATIVE_TYPE_U1 = 0x4;
const NATIVE_TYPE_I2 = 0x5;
const NATIVE_TYPE_U2 = 0x6;
const NATIVE_TYPE_I4 = 0x7;
const NATIVE_TYPE_U4 = 0x8;
const NATIVE_TYPE_I8 = 0x9;
const NATIVE_TYPE_U8 = 0xa;
const NATIVE_TYPE_R4 = 0xb;
const NATIVE_TYPE_R8 = 0xc;
const NATIVE_TYPE_SYSCHAR = 0xd;
const NATIVE_TYPE_VARIANT = 0xe;
const NATIVE_TYPE_CURRENCY = 0xf;
const NATIVE_TYPE_PTR = 0x10;
const NATIVE_TYPE_DECIMAL = 0x11;
const NATIVE_TYPE_DATE = 0x12;
const NATIVE_TYPE_BSTR = 0x13;
const NATIVE_TYPE_LPSTR = 0x14;
const NATIVE_TYPE_LPWSTR = 0x15;
const NATIVE_TYPE_LPTSTR = 0x16;
const NATIVE_TYPE_FIXEDSYSSTRING = 0x17;
const NATIVE_TYPE_OBJECTREF = 0x18;
const NATIVE_TYPE_IUNKNOWN = 0x19;
const NATIVE_TYPE_IDISPATCH = 0x1a;
const NATIVE_TYPE_STRUCT = 0x1b;
const NATIVE_TYPE_INTF = 0x1c;
const NATIVE_TYPE_SAFEARRAY = 0x1d;
const NATIVE_TYPE_FIXEDARRAY = 0x1e;
const NATIVE_TYPE_INT = 0x1f;
const NATIVE_TYPE_UINT = 0x20;
const NATIVE_TYPE_NESTEDSTRUCT = 0x21;
const NATIVE_TYPE_BYVALSTR = 0x22;
const NATIVE_TYPE_ANSIBSTR = 0x23;
const NATIVE_TYPE_TBSTR = 0x24;
const NATIVE_TYPE_VARIANTBOOL = 0x25;
const NATIVE_TYPE_FUNC = 0x26;
const NATIVE_TYPE_ASANY = 0x28;
const NATIVE_TYPE_ARRAY = 0x2a;
const NATIVE_TYPE_LPSTRUCT = 0x2b;
const NATIVE_TYPE_CUSTOMMARSHALER = 0x2c;
const NATIVE_TYPE_IINSPECTABLE = 0x2e;
const NATIVE_TYPE_HSTRING = 0x2f;
const NATIVE_TYPE_ERROR = 0x2d;
const NATIVE_TYPE_MAX = 0x50;

/// Specifies that the parameter is passed into the method call.
const pdIn = 0x0001;

/// Specifies that the parameter is passed from the method return.
const pdOut = 0x0002;

/// Specifies that the parameter is optional.
const pdOptional = 0x0010;

/// Reserved for internal use by the common language runtime.
const pdReservedMask = 0xf000;

/// Specifies that the parameter has a default value.
const pdHasDefault = 0x1000;

/// Specifies that the parameter has marshaling information.
const pdHasFieldMarshal = 0x2000;

/// Unused.
const pdUnused = 0xcfe0;

/// Indicates that this is not a PE file.
const peNot = 0x00000000;

/// Indicates that this PE file contains only managed code.
const peILonly = 0x00000001;

/// Indicates that this PE file makes Win32 calls.
const pe32BitRequired = 0x00000002;

/// Indicates that this PE file runs on a 64-bit platform.
const pe32Plus = 0x00000004;

/// Indicates that this PE file is native code.
const pe32Unmanaged = 0x00000008;

/// Indicates that this PE file is platform-neutral and prefers to be loaded
/// in a 32-bit environment.
const pe32BitPreferred = 0x00000010;

/// Use each member name as specified.
const pmNoMangle = 0x0001;

/// Reserved.
const pmCharSetMask = 0x0006;

/// Reserved.
const pmCharSetNotSpec = 0x0000;

/// Marshal strings as multiple-byte character strings.
const pmCharSetAnsi = 0x0002;

/// Marshal strings as Unicode 2-byte characters.
const pmCharSetUnicode = 0x0004;

/// Automatically marshal strings appropriately for the target operating
/// system. The default is Unicode on Windows NT, Windows 2000, Windows XP,
/// and the Windows Server 2003 family; the default is ANSI on Windows 98 and
/// Windows Me.
const pmCharSetAuto = 0x0006;

/// Reserved.
const pmBestFitUseAssem = 0x0000;

/// Perform best-fit mapping of Unicode characters that lack an exact match in
/// the ANSI character set.
const pmBestFitEnabled = 0x0010;

/// Do not perform best-fit mapping of Unicode characters. In this case, all
/// unmappable characters will be replaced by a ‘?’.
const pmBestFitDisabled = 0x0020;

/// Reserved.
const pmBestFitMask = 0x0030;

/// Reserved.
const pmThrowOnUnmappableCharUseAssem = 0x0000;

/// Throw an exception when the interop marshaler encounters an unmappable
/// character.
const pmThrowOnUnmappableCharEnabled = 0x1000;

/// Do not throw an exception when the interop marshaler encounters an
/// unmappable character.
const pmThrowOnUnmappableCharDisabled = 0x2000;

/// Reserved.
const pmThrowOnUnmappableCharMask = 0x3000;

/// Allow the callee to call the Win32 SetLastError function before returning
/// from the attributed method.
const pmSupportsLastError = 0x0040;

/// Reserved.
const pmCallConvMask = 0x0700;

/// Use the default platform calling convention. For example, on Windows the
/// default is StdCall and on Windows CE .NET it is Cdecl.
const pmCallConvWinapi = 0x0100;

/// Use the Cdecl calling convention. In this case, the caller cleans the
/// stack. This enables calling functions with varargs (that is, functions
/// that accept a variable number of parameters).
const pmCallConvCdecl = 0x0200;

/// Use the StdCall calling convention. In this case, the callee cleans the
/// stack. This is the default convention for calling unmanaged functions with
/// platform invoke.
const pmCallConvStdcall = 0x0300;

/// Use the ThisCall calling convention. In this case, the first parameter is
/// the this pointer and is stored in register ECX. Other parameters are
/// pushed on the stack. The ThisCall calling convention is used to call
/// methods on classes exported from an unmanaged DLL.
const pmCallConvThiscall = 0x0400;

/// Reserved.
const pmCallConvFastcall = 0x0500;

/// Reserved.
const pmMaxValue = 0xFFFF;

/// Specifies that the property is special, and that its name describes how.
const prSpecialName = 0x0200;

/// Reserved for internal use by the common language runtime.
const prReservedMask = 0xf400;

/// Specifies that the common language runtime metadata internal APIs should
/// check the encoding of the property name.
const prRTSpecialName = 0x0400;

/// Specifies that the property has a default value.
const prHasDefault = 0x1000;

/// Unused.
const prUnused = 0xe9ff;

const mdtModule = 0x00000000;
const mdtTypeRef = 0x01000000;
const mdtTypeDef = 0x02000000;
const mdtFieldDef = 0x04000000;
const mdtMethodDef = 0x06000000;
const mdtParamDef = 0x08000000;
const mdtInterfaceImpl = 0x09000000;
const mdtMemberRef = 0x0a000000;
const mdtCustomAttribute = 0x0c000000;
const mdtPermission = 0x0e000000;
const mdtSignature = 0x11000000;
const mdtEvent = 0x14000000;
const mdtProperty = 0x17000000;
const mdtModuleRef = 0x1a000000;
const mdtTypeSpec = 0x1b000000;
const mdtAssembly = 0x20000000;
const mdtAssemblyRef = 0x23000000;
const mdtFile = 0x26000000;
const mdtExportedType = 0x27000000;
const mdtManifestResource = 0x28000000;
const mdtGenericParam = 0x2a000000;
const mdtMethodSpec = 0x2b000000;
const mdtGenericParamConstraint = 0x2c000000;
const mdtString = 0x70000000;
const mdtName = 0x71000000;
const mdtBaseType = 0x72000000;

/// Used for type visibility information.
const tdVisibilityMask = 0x00000007;

/// Specifies that the type is not in public scope.
const tdNotPublic = 0x00000000;

/// Specifies that the type is in public scope.
const tdPublic = 0x00000001;

/// Specifies that the type is nested with public visibility.
const tdNestedPublic = 0x00000002;

/// Specifies that the type is nested with private visibility.
const tdNestedPrivate = 0x00000003;

/// Specifies that the type is nested with family visibility.
const tdNestedFamily = 0x00000004;

/// Specifies that the type is nested with assembly visibility.
const tdNestedAssembly = 0x00000005;

/// Specifies that the type is nested with family and assembly visibility.
const tdNestedFamANDAssem = 0x00000006;

/// Specifies that the type is nested with family or assembly visibility.
const tdNestedFamORAssem = 0x00000007;

/// Gets layout information for the type.
const tdLayoutMask = 0x00000018;

/// Specifies that the fields of this type are laid out automatically.
const tdAutoLayout = 0x00000000;

/// Specifies that the fields of this type are laid out sequentially.
const tdSequentialLayout = 0x00000008;

/// Specifies that field layout is supplied explicitly.
const tdExplicitLayout = 0x00000010;

/// Gets semantic information about the type.
const tdClassSemanticsMask = 0x00000020;

/// Specifies that the type is a class.
const tdClass = 0x00000000;

/// Specifies that the type is an interface.
const tdInterface = 0x00000020;

/// Specifies that the type is abstract.
const tdAbstract = 0x00000080;

/// Specifies that the type cannot be extended.
const tdSealed = 0x00000100;

/// Specifies that the class name is special. Its name describes how.
const tdSpecialName = 0x00000400;

/// Specifies that the type is imported.
const tdImport = 0x00001000;

/// Specifies that the type is serializable.
const tdSerializable = 0x00002000;

/// Specifies that this type is a Windows Runtime type.
const tdWindowsRuntime = 0x00004000;

/// Gets information about how strings are encoded and formatted.
const tdStringFormatMask = 0x00030000;

/// Specifies that this type interprets an LPTSTR as ANSI.
const tdAnsiClass = 0x00000000;

/// Specifies that this type interprets an LPTSTR as Unicode.
const tdUnicodeClass = 0x00010000;

/// Specifies that this type interprets an LPTSTR automatically.
const tdAutoClass = 0x00020000;

/// Specifies that the type has a non-standard encoding, as specified by
/// CustomFormatMask.
const tdCustomFormatClass = 0x00030000;

/// Use this mask to get non-standard encoding information for native interop.
/// The meaning of the values of these two bits is unspecified.
const tdCustomFormatMask = 0x00C00000;

/// Specifies that the type must be initialized before the first attempt to
/// access a static field.
const tdBeforeFieldInit = 0x00100000;

/// Specifies that the type is exported, and a type forwarder.
const tdForwarder = 0x00200000;

/// This flag and the flags below are used internally by the common language
/// runtime.
const tdReservedMask = 0x00040800;

/// Specifies that the common language runtime should check the name encoding.
const tdRTSpecialName = 0x00000800;

/// Specifies that the type has security associated with it.
const tdHasSecurity = 0x00040000;
