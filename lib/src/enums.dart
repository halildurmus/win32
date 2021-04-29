// Enumerations used for returning or storing data.

import 'com/constants.dart';
import 'utils/exception.dart';

/// Specifies a common language runtime Type, a type modifier, or information
/// about a type in a metadata type signature.
enum BaseType {
  /// A void type.
  Void,

  /// A Boolean type.
  Boolean,

  /// A character type.
  Char,

  /// A signed 1-byte integer.
  Int8,

  /// An unsigned 1-byte integer.
  Uint8,

  /// A signed 2-byte integer.
  Int16,

  /// An unsigned 2-byte integer.
  Uint16,

  /// A signed 4-byte integer.
  Int32,

  /// An unsigned 4-byte integer.
  Uint32,

  /// A signed 8-byte integer.
  Int64,

  /// An unsigned 8-byte integer.
  Uint64,

  /// A 4-byte floating point.
  Float,

  /// An 8-byte floating point.
  Double,

  /// A System.String type.
  String,

  /// A pointer type modifier.
  PointerTypeModifier,

  /// A reference type modifier.
  ReferenceTypeModifier,

  /// A value type modifier.
  ValueTypeModifier,

  /// A class type modifier.
  ClassTypeModifier,

  /// A class variable type modifier.
  ClassVariableTypeModifier,

  /// A multi-dimensional array type modifier.
  ArrayTypeModifier,

  /// A type modifier for generic types.
  GenericTypeModifier,

  /// A typed reference.
  TypedReference,

  /// Size of a native integer.
  IntPtr,

  /// Size of an unsigned native integer.
  UintPtr,

  /// A pointer to a function.
  FunctionPointer,

  /// A System.Object type.
  Object,

  /// A single-dimensional, zero lower-bound array type modifier.
  SimpleArray,

  /// A method variable type modifier.
  MethodVariableTypeModifier,

  /// A C language required modifier.
  CLanguageRequiredModifier,

  /// A C language optional modifier.
  CLanguageOptionalModifier,

  /// A type modifier that is a sentinel for a list of a variable number of
  /// parameters.
  Sentinel,
}

extension CorElementTypeConverter on CorElementType {
  BaseType get baseType {
    switch (this) {
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
        throw WinmdException('Unrecognized internal type ${toString()}');
    }
  }
}

/// The type of object represented by a given token.
enum TokenType {
  /// A compilation unit, an executable, or some other development unit,
  /// deployment unit, or run-time unit.
  ///
  /// It is possible (though not required) to declare attributes on the module
  /// as a whole, including a name, a GUID, custom attributes, and so forth.
  Module,

  /// Reference to either a runtime reference type or a value type.
  ///
  /// In a sense, the collection of type references in a module is the
  /// collection of compile-time import dependencies.
  TypeRef,

  /// Declaration of either a runtime reference type (class or
  /// interface) or a value type.
  TypeDef,

  /// Declaration of a variable as a data member of a class or interface, or
  /// declaration of a global, module-level variable.
  FieldDef,

  /// Definition of a method as a member of a class or interface, or as a global
  /// module-level method.
  MethodDef,

  /// Definition of an optional data structure that stores additional metadata
  /// for the parameter.
  ///
  /// It is not necessary to emit a data structure for each parameter in a
  /// method. However, when there is additional metadata to persist for the
  /// parameter, such as marshaling or type-mapping information, an optional
  /// parameter data structure can be created.
  ParamDef,

  /// A specific class’s implementation of a specific interface.
  ///
  /// This metadata abstraction enables the storing of information that is the
  /// intersection of that which is specific to neither the class nor the
  /// interface.
  InterfaceImpl,

  /// Reference to a method or field.
  ///
  /// A member reference is generated in metadata for every method invocation or
  /// field access that is made by any implementation in the current module, and
  /// a token is persisted in the Microsoft intermediate language (MSIL) stream.
  /// There is no runtime support for property or event references.
  MemberRef,

  /// An arbitrary data structure associated with any metadata object that can
  /// be referenced with an mdToken.
  ///
  /// An exception is that custom attributes themselves cannot have custom
  /// attributes.
  CustomAttribute,

  /// A declarative security permission set associated with mdTypeDef,
  /// mdMethodDef, and mdAssembly.
  Permission,

  /// A local variable signature in the portable executable (PE) file or a
  /// method signature that is passed to an MSIL instruction.
  Signature,

  /// Declaration of a named event as a member of a class or interface.
  Event,

  /// Declaration of a property as a member of a class or interface.
  Property,

  /// A compile-time reference to a module, which records the source for type
  /// and member imports.
  ModuleRef,

  /// A type, such as a boxed value type, that can be used as input to any MSIL
  /// instruction that takes a type.
  TypeSpec,
  Assembly,
  AssemblyRef,
  File,
  ExportedType,
  ManifestResource,
  GenericParam,
  MethodSpec,
  GenericParamConstraint,

  /// A string that is passed to an MSIL instruction.
  String,
  Name,
  BaseType
}
