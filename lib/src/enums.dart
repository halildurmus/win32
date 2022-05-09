// Enumerations used for returning or storing data.

import 'package:win32/win32.dart';

import '../winmd.dart';
import 'com/constants.dart';

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

  /// An assembly.
  Assembly,

  /// A reference to an assembly.
  AssemblyRef,

  /// A file.
  File,
  ExportedType,
  ManifestResource,
  GenericParam,
  MethodSpec,
  GenericParamConstraint,

  /// A string that is passed to an MSIL instruction.
  String,
  Name,
  BaseType;

  factory TokenType.fromToken(int token) {
    /// Returns the type of the token.
    switch (token & 0xFF000000) {
      case CorTokenType.mdtModule:
        return TokenType.Module;
      case CorTokenType.mdtTypeRef:
        return TokenType.TypeRef;
      case CorTokenType.mdtTypeDef:
        return TokenType.TypeDef;
      case CorTokenType.mdtFieldDef:
        return TokenType.FieldDef;
      case CorTokenType.mdtMethodDef:
        return TokenType.MethodDef;
      case CorTokenType.mdtParamDef:
        return TokenType.ParamDef;
      case CorTokenType.mdtInterfaceImpl:
        return TokenType.InterfaceImpl;
      case CorTokenType.mdtMemberRef:
        return TokenType.MemberRef;
      case CorTokenType.mdtCustomAttribute:
        return TokenType.CustomAttribute;
      case CorTokenType.mdtPermission:
        return TokenType.Permission;
      case CorTokenType.mdtSignature:
        return TokenType.Signature;
      case CorTokenType.mdtEvent:
        return TokenType.Event;
      case CorTokenType.mdtProperty:
        return TokenType.Property;
      case CorTokenType.mdtModuleRef:
        return TokenType.ModuleRef;
      case CorTokenType.mdtTypeSpec:
        return TokenType.TypeSpec;
      case CorTokenType.mdtAssembly:
        return TokenType.Assembly;
      case CorTokenType.mdtAssemblyRef:
        return TokenType.AssemblyRef;
      case CorTokenType.mdtFile:
        return TokenType.File;
      case CorTokenType.mdtExportedType:
        return TokenType.ExportedType;
      case CorTokenType.mdtManifestResource:
        return TokenType.ManifestResource;
      case CorTokenType.mdtGenericParam:
        return TokenType.GenericParam;
      case CorTokenType.mdtMethodSpec:
        return TokenType.MethodSpec;
      case CorTokenType.mdtGenericParamConstraint:
        return TokenType.GenericParamConstraint;
      case CorTokenType.mdtString:
        return TokenType.String;
      case CorTokenType.mdtName:
        return TokenType.Name;
      case CorTokenType.mdtBaseType:
        return TokenType.BaseType;
      default:
        throw WinmdException(
            'Unrecognized token type ${(token & 0xFF000000).toHexString(32)}');
    }
  }
}
