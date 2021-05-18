// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Constant values that go with the underlying COM definitions. These should not
// need to be exported to external package consumers, since they should be
// converted to a more friendly equivalent, either as a property or enum on the
// object.

import '../enums.dart';
import '../utils/exception.dart';

class CorMetaDataDispenser {
  static const CLSID = '{E5CB7A31-7512-11D2-89CE-0080C792E5D8}';
}

/// COM error returned when a Find* method returns no results
final CLDB_E_RECORD_NOTFOUND = 0x80131130.toSigned(32);

/// Specifies a common language runtime Type, a type modifier, or information
/// about a type in a metadata type signature.
class CorElementType {
  /// Used internally.
  static const ELEMENT_TYPE_END = 0x0;

  /// A void type.
  static const ELEMENT_TYPE_VOID = 0x1;

  /// A Boolean type.
  static const ELEMENT_TYPE_BOOLEAN = 0x2;

  /// A character type.
  static const ELEMENT_TYPE_CHAR = 0x3;

  /// A signed 1-byte integer.
  static const ELEMENT_TYPE_I1 = 0x4;

  /// An unsigned 1-byte integer.
  static const ELEMENT_TYPE_U1 = 0x5;

  /// A signed 2-byte integer.
  static const ELEMENT_TYPE_I2 = 0x6;

  /// An unsigned 2-byte integer.
  static const ELEMENT_TYPE_U2 = 0x7;

  /// A signed 4-byte integer.
  static const ELEMENT_TYPE_I4 = 0x8;

  /// An unsigned 4-byte integer.
  static const ELEMENT_TYPE_U4 = 0x9;

  /// A signed 8-byte integer.
  static const ELEMENT_TYPE_I8 = 0xa;

  /// An unsigned 8-byte integer.
  static const ELEMENT_TYPE_U8 = 0xb;

  /// A 4-byte floating point.
  static const ELEMENT_TYPE_R4 = 0xc;

  /// An 8-byte floating point.
  static const ELEMENT_TYPE_R8 = 0xd;

  /// A System.String type.
  static const ELEMENT_TYPE_STRING = 0xe;

  /// A pointer type modifier.
  static const ELEMENT_TYPE_PTR = 0xf;

  /// A reference type modifier.
  static const ELEMENT_TYPE_BYREF = 0x10;

  /// A value type modifier.
  static const ELEMENT_TYPE_VALUETYPE = 0x11;

  /// A class type modifier.
  static const ELEMENT_TYPE_CLASS = 0x12;

  /// A class variable type modifier.
  static const ELEMENT_TYPE_VAR = 0x13;

  /// A multi-dimensional array type modifier.
  static const ELEMENT_TYPE_ARRAY = 0x14;

  /// A type modifier for generic types.
  static const ELEMENT_TYPE_GENERICINST = 0x15;

  /// A typed reference.
  static const ELEMENT_TYPE_TYPEDBYREF = 0x16;

  /// Size of a native integer.
  static const ELEMENT_TYPE_I = 0x18;

  /// Size of an unsigned native integer.
  static const ELEMENT_TYPE_U = 0x19;

  /// A pointer to a function.
  static const ELEMENT_TYPE_FNPTR = 0x1B;

  /// A System.Object type.
  static const ELEMENT_TYPE_OBJECT = 0x1C;

  /// A single-dimensional, zero lower-bound array type modifier.
  static const ELEMENT_TYPE_SZARRAY = 0x1D;

  /// A method variable type modifier.
  static const ELEMENT_TYPE_MVAR = 0x1e;

  /// A C language required modifier.
  static const ELEMENT_TYPE_CMOD_REQD = 0x1F;

  /// A C language optional modifier.
  static const ELEMENT_TYPE_CMOD_OPT = 0x20;

  /// Used internally.
  static const ELEMENT_TYPE_INTERNAL = 0x21;

  /// An invalid type.
  static const ELEMENT_TYPE_MAX = 0x22;

  /// Used internally.
  static const ELEMENT_TYPE_MODIFIER = 0x40;

  /// A type modifier that is a sentinel for a list of a variable number of
  /// parameters.
  static const ELEMENT_TYPE_SENTINEL = 0x01 | ELEMENT_TYPE_MODIFIER;

  /// Used internally.
  static const ELEMENT_TYPE_PINNED = 0x05 | ELEMENT_TYPE_MODIFIER;
}

BaseType parseCorElementType(int corElementTypeValue) {
  switch (corElementTypeValue) {
    case CorElementType.ELEMENT_TYPE_VOID:
      return BaseType.Void;
    case CorElementType.ELEMENT_TYPE_BOOLEAN:
      return BaseType.Boolean;
    case CorElementType.ELEMENT_TYPE_CHAR:
      return BaseType.Char;
    case CorElementType.ELEMENT_TYPE_I1:
      return BaseType.Int8;
    case CorElementType.ELEMENT_TYPE_U1:
      return BaseType.Uint8;
    case CorElementType.ELEMENT_TYPE_I2:
      return BaseType.Int16;
    case CorElementType.ELEMENT_TYPE_U2:
      return BaseType.Uint16;
    case CorElementType.ELEMENT_TYPE_I4:
      return BaseType.Int32;
    case CorElementType.ELEMENT_TYPE_U4:
      return BaseType.Uint32;
    case CorElementType.ELEMENT_TYPE_I8:
      return BaseType.Int64;
    case CorElementType.ELEMENT_TYPE_U8:
      return BaseType.Uint64;
    case CorElementType.ELEMENT_TYPE_R4:
      return BaseType.Float;
    case CorElementType.ELEMENT_TYPE_R8:
      return BaseType.Double;
    case CorElementType.ELEMENT_TYPE_STRING:
      return BaseType.String;
    case CorElementType.ELEMENT_TYPE_PTR:
      return BaseType.PointerTypeModifier;
    case CorElementType.ELEMENT_TYPE_BYREF:
      return BaseType.ReferenceTypeModifier;
    case CorElementType.ELEMENT_TYPE_VALUETYPE:
      return BaseType.ValueTypeModifier;
    case CorElementType.ELEMENT_TYPE_CLASS:
      return BaseType.ClassTypeModifier;
    case CorElementType.ELEMENT_TYPE_VAR:
      return BaseType.ClassVariableTypeModifier;
    case CorElementType.ELEMENT_TYPE_ARRAY:
      return BaseType.ArrayTypeModifier;
    case CorElementType.ELEMENT_TYPE_GENERICINST:
      return BaseType.GenericTypeModifier;
    case CorElementType.ELEMENT_TYPE_TYPEDBYREF:
      return BaseType.TypedReference;
    case CorElementType.ELEMENT_TYPE_I:
      return BaseType.IntPtr;
    case CorElementType.ELEMENT_TYPE_U:
      return BaseType.UintPtr;
    case CorElementType.ELEMENT_TYPE_FNPTR:
      return BaseType.FunctionPointer;
    case CorElementType.ELEMENT_TYPE_OBJECT:
      return BaseType.Object;
    case CorElementType.ELEMENT_TYPE_SZARRAY:
      return BaseType.SimpleArray;
    case CorElementType.ELEMENT_TYPE_MVAR:
      return BaseType.MethodVariableTypeModifier;
    case CorElementType.ELEMENT_TYPE_CMOD_REQD:
      return BaseType.CLanguageRequiredModifier;
    case CorElementType.ELEMENT_TYPE_CMOD_OPT:
      return BaseType.CLanguageOptionalModifier;
    case CorElementType.ELEMENT_TYPE_SENTINEL:
      return BaseType.Sentinel;
    default:
      throw WinmdException(
          'Unrecognized or internal type $corElementTypeValue');
  }
}

/// Contains values that describe the metadata of an event.
class CorEventAttr {
  /// Specifies that the event is special, and that its name describes how.
  static const evSpecialName = 0x0200;

  /// Reserved for internal use by the common language runtime.
  static const evReservedMask = 0x0400;

  /// Specifies that the common language runtime should check the encoding of
  /// the event name.
  static const evRTSpecialName = 0x0400;
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

/// Contains values that describe the Type parameters for generic types.
class CorGenericParamAttr {
  /// Parameter variance applies only to generic parameters for interfaces and
  /// delegates.
  static const gpVarianceMask = 0x0003;

  /// Indicates the absence of variance.
  static const gpNonVariant = 0x0000;

  /// Indicates covariance.
  static const gpCovariant = 0x0001;

  /// Indicates contravariance.
  static const gpContravariant = 0x0002;

  /// Special constraints can apply to any Type parameter.
  static const gpSpecialConstraintMask = 0x001C;

  /// Indicates that no constraint applies to the Type parameter.
  static const gpNoSpecialConstraint = 0x0000;

  /// Indicates that the Type parameter must be a reference type.
  static const gpReferenceTypeConstraint = 0x0004;

  /// Indicates that the Type parameter must be a value type that cannot be a
  /// null value.
  static const gpNotNullableValueTypeConstraint = 0x0008;

  /// Indicates that the Type parameter must have a default public constructor
  /// that takes no parameters.
  static const gpDefaultConstructorConstraint = 0x0010;
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

/// Contains values that describe native unmanaged types.
class CorNativeType {
  static const NATIVE_TYPE_END = 0x0;
  static const NATIVE_TYPE_VOID = 0x1;
  static const NATIVE_TYPE_BOOLEAN = 0x2;
  static const NATIVE_TYPE_I1 = 0x3;
  static const NATIVE_TYPE_U1 = 0x4;
  static const NATIVE_TYPE_I2 = 0x5;
  static const NATIVE_TYPE_U2 = 0x6;
  static const NATIVE_TYPE_I4 = 0x7;
  static const NATIVE_TYPE_U4 = 0x8;
  static const NATIVE_TYPE_I8 = 0x9;
  static const NATIVE_TYPE_U8 = 0xa;
  static const NATIVE_TYPE_R4 = 0xb;
  static const NATIVE_TYPE_R8 = 0xc;
  static const NATIVE_TYPE_SYSCHAR = 0xd;
  static const NATIVE_TYPE_VARIANT = 0xe;
  static const NATIVE_TYPE_CURRENCY = 0xf;
  static const NATIVE_TYPE_PTR = 0x10;
  static const NATIVE_TYPE_DECIMAL = 0x11;
  static const NATIVE_TYPE_DATE = 0x12;
  static const NATIVE_TYPE_BSTR = 0x13;
  static const NATIVE_TYPE_LPSTR = 0x14;
  static const NATIVE_TYPE_LPWSTR = 0x15;
  static const NATIVE_TYPE_LPTSTR = 0x16;
  static const NATIVE_TYPE_FIXEDSYSSTRING = 0x17;
  static const NATIVE_TYPE_OBJECTREF = 0x18;
  static const NATIVE_TYPE_IUNKNOWN = 0x19;
  static const NATIVE_TYPE_IDISPATCH = 0x1a;
  static const NATIVE_TYPE_STRUCT = 0x1b;
  static const NATIVE_TYPE_INTF = 0x1c;
  static const NATIVE_TYPE_SAFEARRAY = 0x1d;
  static const NATIVE_TYPE_FIXEDARRAY = 0x1e;
  static const NATIVE_TYPE_INT = 0x1f;
  static const NATIVE_TYPE_UINT = 0x20;
  static const NATIVE_TYPE_NESTEDSTRUCT = 0x21;
  static const NATIVE_TYPE_BYVALSTR = 0x22;
  static const NATIVE_TYPE_ANSIBSTR = 0x23;
  static const NATIVE_TYPE_TBSTR = 0x24;
  static const NATIVE_TYPE_VARIANTBOOL = 0x25;
  static const NATIVE_TYPE_FUNC = 0x26;
  static const NATIVE_TYPE_ASANY = 0x28;
  static const NATIVE_TYPE_ARRAY = 0x2a;
  static const NATIVE_TYPE_LPSTRUCT = 0x2b;
  static const NATIVE_TYPE_CUSTOMMARSHALER = 0x2c;
  static const NATIVE_TYPE_IINSPECTABLE = 0x2e;
  static const NATIVE_TYPE_HSTRING = 0x2f;
  static const NATIVE_TYPE_ERROR = 0x2d;
  static const NATIVE_TYPE_MAX = 0x50;
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

/// Contains values that describe a portable executable (PE) file.
class CorPEKind {
  /// Indicates that this is not a PE file.
  static const peNot = 0x00000000;

  /// Indicates that this PE file contains only managed code.
  static const peILonly = 0x00000001;

  /// Indicates that this PE file makes Win32 calls.
  static const pe32BitRequired = 0x00000002;

  /// Indicates that this PE file runs on a 64-bit platform.
  static const pe32Plus = 0x00000004;

  /// Indicates that this PE file is native code.
  static const pe32Unmanaged = 0x00000008;

  /// Indicates that this PE file is platform-neutral and prefers to be loaded
  /// in a 32-bit environment.
  static const pe32BitPreferred = 0x00000010;
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

/// Contains values that describe the metadata of a property.
class CorPropertyAttr {
  /// Specifies that the property is special, and that its name describes how.
  static const prSpecialName = 0x0200;

  /// Reserved for internal use by the common language runtime.
  static const prReservedMask = 0xf400;

  /// Specifies that the common language runtime metadata internal APIs should
  /// check the encoding of the property name.
  static const prRTSpecialName = 0x0400;

  /// Specifies that the property has a default value.
  static const prHasDefault = 0x1000;

  /// Unused.
  static const prUnused = 0xe9ff;
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
