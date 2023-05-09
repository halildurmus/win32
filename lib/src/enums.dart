// Enumerations used for returning or storing data.

import 'package:win32/win32.dart';

import 'utils/exception.dart';

/// Specifies a common language runtime Type, a type modifier, or information
/// about a type in a metadata type signature.
enum BaseType {
  /// A void type.
  voidType,

  /// A Boolean type.
  booleanType,

  /// A character type.
  charType,

  /// A signed 1-byte integer.
  int8Type,

  /// An unsigned 1-byte integer.
  uint8Type,

  /// A signed 2-byte integer.
  int16Type,

  /// An unsigned 2-byte integer.
  uint16Type,

  /// A signed 4-byte integer.
  int32Type,

  /// An unsigned 4-byte integer.
  uint32Type,

  /// A signed 8-byte integer.
  int64Type,

  /// An unsigned 8-byte integer.
  uint64Type,

  /// A 4-byte floating point.
  floatType,

  /// An 8-byte floating point.
  doubleType,

  /// A System.String type.
  stringType,

  /// A pointer type modifier.
  pointerTypeModifier,

  /// A reference type modifier.
  referenceTypeModifier,

  /// A value type modifier.
  valueTypeModifier,

  /// A class type modifier.
  classTypeModifier,

  /// A class variable type modifier.
  classVariableTypeModifier,

  /// A multi-dimensional array type modifier.
  arrayTypeModifier,

  /// A type modifier for generic types.
  genericTypeModifier,

  /// A typed reference.
  typedReference,

  /// Size of a native integer.
  intPtrType,

  /// Size of an unsigned native integer.
  uintPtrType,

  /// A pointer to a function.
  functionPointerType,

  /// A System.Object type.
  objectType,

  /// A single-dimensional, zero lower-bound array type modifier.
  simpleArrayType,

  /// A method variable type modifier.
  methodVariableTypeModifier,

  /// A C language required modifier.
  cLanguageRequiredModifier,

  /// A C language optional modifier.
  cLanguageOptionalModifier,

  /// A type modifier that is a sentinel for a list of a variable number of
  /// parameters.
  sentinelTypeModifier;

  static BaseType fromCorElementType(int corElementTypeValue) {
    switch (corElementTypeValue) {
      case CorElementType.ELEMENT_TYPE_VOID:
        return BaseType.voidType;
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
        return BaseType.booleanType;
      case CorElementType.ELEMENT_TYPE_CHAR:
        return BaseType.charType;
      case CorElementType.ELEMENT_TYPE_I1:
        return BaseType.int8Type;
      case CorElementType.ELEMENT_TYPE_U1:
        return BaseType.uint8Type;
      case CorElementType.ELEMENT_TYPE_I2:
        return BaseType.int16Type;
      case CorElementType.ELEMENT_TYPE_U2:
        return BaseType.uint16Type;
      case CorElementType.ELEMENT_TYPE_I4:
        return BaseType.int32Type;
      case CorElementType.ELEMENT_TYPE_U4:
        return BaseType.uint32Type;
      case CorElementType.ELEMENT_TYPE_I8:
        return BaseType.int64Type;
      case CorElementType.ELEMENT_TYPE_U8:
        return BaseType.uint64Type;
      case CorElementType.ELEMENT_TYPE_R4:
        return BaseType.floatType;
      case CorElementType.ELEMENT_TYPE_R8:
        return BaseType.doubleType;
      case CorElementType.ELEMENT_TYPE_STRING:
        return BaseType.stringType;
      case CorElementType.ELEMENT_TYPE_PTR:
        return BaseType.pointerTypeModifier;
      case CorElementType.ELEMENT_TYPE_BYREF:
        return BaseType.referenceTypeModifier;
      case CorElementType.ELEMENT_TYPE_VALUETYPE:
        return BaseType.valueTypeModifier;
      case CorElementType.ELEMENT_TYPE_CLASS:
        return BaseType.classTypeModifier;
      case CorElementType.ELEMENT_TYPE_VAR:
        return BaseType.classVariableTypeModifier;
      case CorElementType.ELEMENT_TYPE_ARRAY:
        return BaseType.arrayTypeModifier;
      case CorElementType.ELEMENT_TYPE_GENERICINST:
        return BaseType.genericTypeModifier;
      case CorElementType.ELEMENT_TYPE_TYPEDBYREF:
        return BaseType.typedReference;
      case CorElementType.ELEMENT_TYPE_I:
        return BaseType.intPtrType;
      case CorElementType.ELEMENT_TYPE_U:
        return BaseType.uintPtrType;
      case CorElementType.ELEMENT_TYPE_FNPTR:
        return BaseType.functionPointerType;
      case CorElementType.ELEMENT_TYPE_OBJECT:
        return BaseType.objectType;
      case CorElementType.ELEMENT_TYPE_SZARRAY:
        return BaseType.simpleArrayType;
      case CorElementType.ELEMENT_TYPE_MVAR:
        return BaseType.methodVariableTypeModifier;
      case CorElementType.ELEMENT_TYPE_CMOD_REQD:
        return BaseType.cLanguageRequiredModifier;
      case CorElementType.ELEMENT_TYPE_CMOD_OPT:
        return BaseType.cLanguageOptionalModifier;
      case CorElementType.ELEMENT_TYPE_SENTINEL:
        return BaseType.sentinelTypeModifier;
      default:
        throw WinmdException(
            'Unrecognized or internal type $corElementTypeValue');
    }
  }
}

/// Convention for mapping Unicode characters in P/Invoke calls.
enum BestFit {
  /// Reserved.
  useAssem,

  /// Perform best-fit mapping of Unicode characters that lack an exact match in
  /// the ANSI character set.
  enabled,

  /// Do not perform best-fit mapping of Unicode characters. In this case, all
  /// unmappable characters will be replaced by a ‘?’.
  disabled
}

/// Platform calling convention.
enum CallingConvention {
  /// Use the default platform calling convention. For example, on Windows the
  /// default is StdCall and on Windows CE .NET it is Cdecl.
  winApi,

  /// Use the Cdecl calling convention. In this case, the caller cleans the
  /// stack. This enables calling functions with varargs (that is, functions
  /// that accept a variable number of parameters).
  cdecl,

  /// Use the StdCall calling convention. In this case, the callee cleans the
  /// stack. This is the default convention for calling unmanaged functions with
  /// platform invoke.
  stdcall,

  /// Use the ThisCall calling convention. In this case, the first parameter is
  /// the this pointer and is stored in register ECX. Other parameters are
  /// pushed on the stack. The ThisCall calling convention is used to call
  /// methods on classes exported from an unmanaged DLL.
  thiscall,

  /// Reserved.
  fastcall
}

/// Code type of contained code.
enum CodeType {
  /// Specifies that the method implementation is Microsoft intermediate
  /// language (MSIL).
  msil,

  /// Specifies that the method implementation is native.
  native,

  /// Specifies that the method implementation is OPTIL.
  optIL,

  /// Specifies that the method implementation is provided by the common
  /// language runtime.
  runtime
}

/// Field accessibility information.
enum FieldAccess {
  /// Specifies that the field cannot be referenced.
  privateScope,

  /// Specifies that the field is accessible only by its parent type.
  private,

  /// Specifies that the field is accessible by derived classes in its assembly.
  familyAndAssembly,

  /// Specifies that the field is accessible by all types in its assembly.
  assembly,

  /// Specifies that the field is accessible only by its type and derived
  /// classes.
  family,

  /// Specifies that the field is accessible by derived classes and by all types
  /// in its assembly.
  familyOrAssembly,

  /// Specifies that the field is accessible by all types with visibility of
  /// this scope.
  public
}

/// The platform architecture targeted by an executable.
enum ImageType {
  /// x86
  i386,

  /// Intel Itanium
  ia64,

  /// x64
  amd64
}

/// Specifies member access.
enum MemberAccess {
  /// Specifies that the member cannot be referenced.
  privateScope,

  /// Specifies that the member is accessible only by the parent type.
  private,

  /// Specifies that the member is accessible by subtypes only in this assembly.
  familyAndAssembly,

  /// Specifies that the member is accessibly by anyone in the assembly.
  assembly,

  /// Specifies that the member is accessible only by type and subtypes.
  family,

  /// Specifies that the member is accessible by derived classes and by other
  /// types in its assembly.
  familyOrAssembly,

  /// Specifies that the member is accessible by all types with access to the
  /// scope.
  public
}

/// Indicates the preferred architecture for a requested `typeDef`.
enum PreferredArchitecture {
  /// Prefer Intel 32-bit architecture.
  x86,

  /// Prefer Intel 64-bit architecture.
  x64,

  // Prefer ARM 64-bit architecture.
  arm64
}

/// Specifies how string types are interpreted.
enum StringFormat {
  /// Specifies that this type interprets an LPTSTR as ANSI.
  ansi,

  /// Specifies that this type interprets an LPTSTR as Unicode.
  unicode,

  /// Specifies that this type interprets an LPTSTR automatically.
  auto,

  /// Specifies that the type has a non-standard encoding, as specified by
  /// CustomFormatMask.
  custom
}

/// Convention for marshalling P/Invoke function strings.
enum StringMarshalConvention {
  /// Reserved.
  notSpecified,

  /// Marshal strings as multiple-byte character strings.
  ansi,

  /// Marshal strings as Unicode 2-byte characters.
  unicode,

  /// Automatically marshal strings appropriately for the target operating
  /// system. The default is Unicode on Windows NT, Windows 2000, Windows XP,
  /// and the Windows Server 2003 family; the default is ANSI on Windows 98 and
  /// Windows Me.
  auto
}

/// Convention for how the interop marshaler should respond to an unmappable
/// character.
enum ThrowOnUnmappableChar {
  /// Reserved.
  useAssem,

  /// Throw an exception when the interop marshaler encounters an unmappable
  /// character.
  enabled,

  /// Do not throw an exception when the interop marshaler encounters an
  /// unmappable character.
  disabled
}

/// The type of object represented by a given token.
enum TokenType {
  /// A compilation unit, an executable, or some other development unit,
  /// deployment unit, or run-time unit.
  ///
  /// It is possible (though not required) to declare attributes on the module
  /// as a whole, including a name, a GUID, custom attributes, and so forth.
  module,

  /// Reference to either a runtime reference type or a value type.
  ///
  /// In a sense, the collection of type references in a module is the
  /// collection of compile-time import dependencies.
  typeRef,

  /// Declaration of either a runtime reference type (class or
  /// interface) or a value type.
  typeDef,

  /// Declaration of a variable as a data member of a class or interface, or
  /// declaration of a global, module-level variable.
  fieldDef,

  /// Definition of a method as a member of a class or interface, or as a global
  /// module-level method.
  methodDef,

  /// Definition of an optional data structure that stores additional metadata
  /// for the parameter.
  ///
  /// It is not necessary to emit a data structure for each parameter in a
  /// method. However, when there is additional metadata to persist for the
  /// parameter, such as marshaling or type-mapping information, an optional
  /// parameter data structure can be created.
  paramDef,

  /// A specific class’s implementation of a specific interface.
  ///
  /// This metadata abstraction enables the storing of information that is the
  /// intersection of that which is specific to neither the class nor the
  /// interface.
  interfaceImpl,

  /// Reference to a method or field.
  ///
  /// A member reference is generated in metadata for every method invocation or
  /// field access that is made by any implementation in the current module, and
  /// a token is persisted in the Microsoft intermediate language (MSIL) stream.
  /// There is no runtime support for property or event references.
  memberRef,

  /// An arbitrary data structure associated with any metadata object that can
  /// be referenced with an mdToken.
  ///
  /// An exception is that custom attributes themselves cannot have custom
  /// attributes.
  customAttribute,

  /// A declarative security permission set associated with mdTypeDef,
  /// mdMethodDef, and mdAssembly.
  permission,

  /// A local variable signature in the portable executable (PE) file or a
  /// method signature that is passed to an MSIL instruction.
  signature,

  /// Declaration of a named event as a member of a class or interface.
  event,

  /// Declaration of a property as a member of a class or interface.
  property,

  /// A compile-time reference to a module, which records the source for type
  /// and member imports.
  moduleRef,

  /// A type, such as a boxed value type, that can be used as input to any MSIL
  /// instruction that takes a type.
  typeSpec,

  /// An assembly.
  assembly,

  /// A reference to an assembly.
  assemblyRef,

  /// A file.
  file,

  // An exported type.
  exportedType,

  // A manifest resource.
  manifestResource,

  // A generic parameter.
  genericParam,

  /// A signature of an instantiated generic method.
  methodSpec,

  // A constraint for a generic parameter.
  genericParamConstraint,

  /// A string that is passed to an MSIL instruction.
  string,

  /// A name.
  name,

  /// A base type.
  baseType;

  factory TokenType.fromToken(int token) {
    /// Returns the type of the token.
    switch (token & 0xFF000000) {
      case CorTokenType.mdtModule:
        return TokenType.module;
      case CorTokenType.mdtTypeRef:
        return TokenType.typeRef;
      case CorTokenType.mdtTypeDef:
        return TokenType.typeDef;
      case CorTokenType.mdtFieldDef:
        return TokenType.fieldDef;
      case CorTokenType.mdtMethodDef:
        return TokenType.methodDef;
      case CorTokenType.mdtParamDef:
        return TokenType.paramDef;
      case CorTokenType.mdtInterfaceImpl:
        return TokenType.interfaceImpl;
      case CorTokenType.mdtMemberRef:
        return TokenType.memberRef;
      case CorTokenType.mdtCustomAttribute:
        return TokenType.customAttribute;
      case CorTokenType.mdtPermission:
        return TokenType.permission;
      case CorTokenType.mdtSignature:
        return TokenType.signature;
      case CorTokenType.mdtEvent:
        return TokenType.event;
      case CorTokenType.mdtProperty:
        return TokenType.property;
      case CorTokenType.mdtModuleRef:
        return TokenType.moduleRef;
      case CorTokenType.mdtTypeSpec:
        return TokenType.typeSpec;
      case CorTokenType.mdtAssembly:
        return TokenType.assembly;
      case CorTokenType.mdtAssemblyRef:
        return TokenType.assemblyRef;
      case CorTokenType.mdtFile:
        return TokenType.file;
      case CorTokenType.mdtExportedType:
        return TokenType.exportedType;
      case CorTokenType.mdtManifestResource:
        return TokenType.manifestResource;
      case CorTokenType.mdtGenericParam:
        return TokenType.genericParam;
      case CorTokenType.mdtMethodSpec:
        return TokenType.methodSpec;
      case CorTokenType.mdtGenericParamConstraint:
        return TokenType.genericParamConstraint;
      case CorTokenType.mdtString:
        return TokenType.string;
      case CorTokenType.mdtName:
        return TokenType.name;
      case CorTokenType.mdtBaseType:
        return TokenType.baseType;
      default:
        throw WinmdException(
            'Unrecognized token type ${((token & 0xFF000000) >> 24).toHexString(8)}');
    }
  }
}

/// Specifies how fields are laid out in the type.
enum TypeLayout {
  /// Specifies that the fields of this type are laid out automatically.
  auto,

  /// Specifies that the fields of this type are laid out sequentially.
  sequential,

  /// Specifies that field layout is supplied explicitly.
  explicit
}

/// Specifies visibility of a type to other types.
enum TypeVisibility {
  /// Specifies that the type is not in public scope.
  notPublic,

  /// Specifies that the type is in public scope.
  public,

  /// Specifies that the type is nested with public visibility.
  nestedPublic,

  /// Specifies that the type is nested with private visibility.
  nestedPrivate,

  /// Specifies that the type is nested with family visibility.
  nestedFamily,

  /// Specifies that the type is nested with assembly visibility.
  nestedAssembly,

  /// Specifies that the type is nested with family and assembly visibility.
  nestedFamilyAndAssembly,

  /// Specifies that the type is nested with family or assembly visibility.
  nestedFamilyOrAssembly
}

/// Indicates the kind of variance for a delegate / interface generic parameter.
enum Variance {
  /// Indicates the absence of variance.
  nonvariant,

  /// Indicates covariance.
  covariant,

  /// Indicates contravariance.
  contravariant
}

/// Specifies virtual table layout.
enum VtableLayout {
  /// Specifies that the slot used for this method in the virtual table be
  /// reused. This is the default.
  reuseSlot,

  /// Specifies that the method always gets a new slot in the virtual table.
  newSlot
}
