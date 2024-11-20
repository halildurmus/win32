// ignore_for_file: camel_case_types, constant_identifier_names

import 'package:winmd/winmd.dart';

import 'extensions/field.dart';
import 'extensions/typedef.dart';
import 'type_name.dart';

/// Represents a type in the Win32 metadata, providing information about how it
/// should be marshaled to/from native code.
sealed class Type {
  const Type();

  // Factory constructors for various type representations.
  const factory Type.array(Type type, int length) = ArrayType;
  const factory Type.constPtr(Type type, int pointers) = ConstPtrType;
  const factory Type.mutPtr(Type type, int pointers) = MutPtrType;
  const factory Type.primitiveOrEnum(Type primitive, TypeDefType enum$) =
      PrimitiveOrEnumType;
  const factory Type.typeDef(TypeDef typeDef) = TypeDefType;

  /// Creates a [Type] based on a [TypeIdentifier].
  factory Type.fromTypeIdentifier(TypeIdentifier typeIdentifier) {
    if (typeIdentifier.baseType == BaseType.voidType) return Type.void$;

    var pointers = 0;
    TypeIdentifier? currentType = typeIdentifier;
    while (currentType?.baseType == BaseType.pointerTypeModifier) {
      pointers++;
      currentType = currentType?.typeArg;
    }

    if (pointers > 0) {
      return Type.mutPtr(
        _typeFromTypeIdentifier(typeIdentifier.typeArg!),
        pointers,
      );
    }

    return _typeFromTypeIdentifier(typeIdentifier);
  }

  // Predefined types for common base types.
  static const bool$ = BoolType();
  static const char = CharType();
  static const float = FloatType();
  static const double$ = DoubleType();
  static const int8 = Int8Type();
  static const uint8 = Uint8Type();
  static const int16 = Int16Type();
  static const uint16 = Uint16Type();
  static const int32 = Int32Type();
  static const uint32 = Uint32Type();
  static const int64 = Int64Type();
  static const uint64 = Uint64Type();
  static const intPtr = IntPtrType();
  static const uintPtr = UintPtrType();
  static const object = ObjectType();
  static const string = StringType();
  static const void$ = VoidType();

  // Predefined types for common types.
  static const BOOL = BOOLType();
  static const BOOLEAN = BOOLEANType();
  static const BSTR = BSTRType();
  static const DEVPROPKEY = DEVPROPKEYType();
  static const GUID = GUIDType();
  static const HRESULT = HRESULTType();
  static const IUnknown = IUnknownType();
  static const NTSTATUS = NTSTATUSType();
  static const PROPERTYKEY = PROPERTYKEYType();
  static const PSTR = PSTRType();
  static const PCSTR = PCSTRType();
  static const PWSTR = PWSTRType();
  static const PCWSTR = PCWSTRType();
  static const PROPVARIANT = PROPVARIANTType();
  static const SID_IDENTIFIER_AUTHORITY = SID_IDENTIFIER_AUTHORITYType();
  static const VARIANT = VARIANTType();
  static const VARIANT_BOOL = VARIANT_BOOLType();

  /// Maps a [TypeIdentifier] to the corresponding [Type].
  static Type _typeFromTypeIdentifier(TypeIdentifier typeIdentifier) {
    final baseType = typeIdentifier.baseType;
    if (Type.fromBaseType(baseType) case final Type type) return type;

    return switch (typeIdentifier) {
      TypeIdentifier(
        baseType: BaseType.arrayTypeModifier,
        arrayDimensions: [final length],
        :final typeArg?,
      ) =>
        Type.array(Type.fromTypeIdentifier(typeArg), length),

      TypeIdentifier(:final baseType, :final type?)
          when baseType == BaseType.classTypeModifier ||
              baseType == BaseType.valueTypeModifier =>
        switch (remap(type.typeName)) {
          final Type type => type,
          _ => Type.typeDef(type),
        },

      TypeIdentifier(baseType: BaseType.pointerTypeModifier, :final typeArg?) =>
        Type.fromTypeIdentifier(typeArg),

      _ => throw StateError('Unsupported type identifier: $typeIdentifier'),
    };
  }

  /// Maps a [BaseType] to a corresponding [Type], or returns `null`
  /// if unsupported.
  static Type? fromBaseType(BaseType baseType) => switch (baseType) {
    BaseType.booleanType => bool$,
    BaseType.charType => char,
    BaseType.floatType => float,
    BaseType.doubleType => double$,
    BaseType.int8Type => int8,
    BaseType.uint8Type => uint8,
    BaseType.int16Type => int16,
    BaseType.uint16Type => uint16,
    BaseType.int32Type => int32,
    BaseType.uint32Type => uint32,
    BaseType.int64Type => int64,
    BaseType.uint64Type => uint64,
    BaseType.intPtrType => intPtr,
    BaseType.uintPtrType => uintPtr,
    BaseType.objectType => object,
    BaseType.stringType => string,
    BaseType.voidType => void$,
    _ => null,
  };

  /// Maps a [TypeName] to a corresponding [Type], or returns `null` if
  /// unsupported.
  static Type? remap(TypeName typeName) => switch (typeName) {
    TypeName.BOOL => BOOL,
    TypeName.BOOLEAN => BOOLEAN,
    TypeName.BSTR => BSTR,
    TypeName.DEVPROPKEY => DEVPROPKEY,
    TypeName.GUID => GUID,
    TypeName.HRESULT => HRESULT,
    TypeName.HSTRING => string,
    TypeName.IInspectable => object,
    TypeName.IUnknown => IUnknown,
    TypeName.NTSTATUS => NTSTATUS,
    TypeName.PROPERTYKEY => PROPERTYKEY,
    TypeName.PSTR => PSTR,
    TypeName.PWSTR => PWSTR,
    TypeName.PROPVARIANT => PROPVARIANT,
    TypeName.SID_IDENTIFIER_AUTHORITY => SID_IDENTIFIER_AUTHORITY,
    TypeName.VARIANT => VARIANT,
    TypeName.VARIANT_BOOL => VARIANT_BOOL,
    _ => null,
  };

  /// The memory alignment of the [Type] in bytes.
  int get alignment => switch (this) {
    ArrayType(:final type) => type.alignment,
    BoolType() || BOOLEANType() => 1,
    BOOLType() => 4,
    BSTRType() => 8,
    CharType() => 2,
    ConstPtrType() || MutPtrType() => 8,
    DEVPROPKEYType() => 4,
    GUIDType() => 4,
    HRESULTType() || NTSTATUSType() => 4,
    Int8Type() || Uint8Type() => 1,
    Int16Type() || Uint16Type() => 2,
    FloatType() || Int32Type() || Uint32Type() => 4,
    DoubleType() ||
    Int64Type() ||
    Uint64Type() ||
    IntPtrType() ||
    UintPtrType() => 8,
    IUnknownType() || ObjectType() => 8,
    PROPERTYKEYType() => 4,
    PROPVARIANTType() || VARIANTType() => 8,
    PSTRType() || PCSTRType() || PWSTRType() || PCWSTRType() => 8,
    PrimitiveOrEnumType(:final primitive) => primitive.alignment,
    SID_IDENTIFIER_AUTHORITYType() => 4,
    StringType() => 8,
    TypeDefType(:final typeDef) => typeDef.alignment,
    VARIANT_BOOLType() => 2,
    VoidType() => 0,
  };

  /// The memory size of the [Type] in bytes.
  int get size => switch (this) {
    ArrayType(:final type, :final length) => type.size * length,
    BoolType() || BOOLEANType() => 1,
    BOOLType() => 4,
    BSTRType() => 8,
    CharType() => 2,
    ConstPtrType() || MutPtrType() => 8,
    DEVPROPKEYType() => 20,
    GUIDType() => 16,
    HRESULTType() || NTSTATUSType() => 4,
    Int8Type() || Uint8Type() => 1,
    Int16Type() || Uint16Type() => 2,
    FloatType() || Int32Type() || Uint32Type() => 4,
    DoubleType() ||
    Int64Type() ||
    Uint64Type() ||
    IntPtrType() ||
    UintPtrType() => 8,
    IUnknownType() || ObjectType() => 8,
    PROPERTYKEYType() => 20,
    PROPVARIANTType() || VARIANTType() => 24,
    PSTRType() || PCSTRType() || PWSTRType() || PCWSTRType() => 8,
    PrimitiveOrEnumType(:final primitive) => primitive.size,
    SID_IDENTIFIER_AUTHORITYType() => 6,
    StringType() => 8,
    TypeDefType(:final typeDef) => typeDef.size,
    VARIANT_BOOLType() => 2,
    VoidType() => 0,
  };

  /// The C type representation for this [Type].
  ///
  /// This returns the equivalent C language type as a string.
  /// For example:
  /// - A [BOOLType] returns `BOOL`.
  /// - A [DoubleType] returns `double`.
  /// - Pointer types (e.g., [ConstPtrType] and [MutPtrType]) return the C type
  ///   with the appropriate number of `*` for indirection.
  String get cType => switch (this) {
    ArrayType(:final type, :final length) => '${type.cType} arr[$length]',
    BOOLType() => 'BOOL',
    BOOLEANType() => 'BOOLEAN',
    VARIANT_BOOLType() => 'VARIANT_BOOL',
    CharType() => 'char',
    FloatType() => 'float',
    DoubleType() => 'double',
    Int8Type() => 'signed char',
    Uint8Type() => 'unsigned char',
    Int16Type() => 'short',
    Uint16Type() => 'unsigned short',
    Int32Type() => 'int',
    Uint32Type() => 'unsigned long',
    Int64Type() => 'long long',
    Uint64Type() => 'unsigned long long',
    IntPtrType() => 'long long',
    UintPtrType() => 'unsigned long long',
    ConstPtrType(:final type, :final pointers) ||
    MutPtrType(
      :final type,
      :final pointers,
    ) => '${type.cType}${'*' * pointers}',
    PrimitiveOrEnumType(:final primitive) => primitive.cType,
    StringType() => 'HSTRING',
    TypeDefType(:final typeDef) =>
      typeDef.isEnum
          ? switch (typeDef.fields[0].type) {
              int8 => 'CHAR',
              int16 => 'SHORT',
              int32 => 'LONG',
              int64 => 'LONG64',
              uint8 => 'UCHAR',
              uint16 => 'USHORT',
              uint32 => 'DWORD',
              uint64 => 'DWORD64',
              _ => throw StateError(
                'Unsupported enum type: ${typeDef.fields[0].type}',
              ),
            }
          : typeDef.simpleName,
    _ => publicType,
  };

  /// The public Dart type representation for this [Type].
  ///
  /// This is the type that users will interact with when using the generated
  /// API. For example, the [BOOLType]'s public type is `bool`.
  String get publicType => switch (this) {
    BOOLType() || BOOLEANType() || VARIANT_BOOLType() => 'bool',
    HRESULTType() => 'HRESULT',
    IUnknownType() => 'IUnknown',
    NTSTATUSType() => 'NTSTATUS',
    ObjectType() => 'IInspectable',
    PrimitiveOrEnumType(:final enum$) => enum$.typeDef.safeTypeName,
    TypeDefType(:final typeDef) => switch (typeDef) {
      TypeDef(kind: TypeKind.class$) ||
      TypeDef(kind: TypeKind.interface) => typeDef.safeTypeName,
      TypeDef(kind: TypeKind.enum$) => typeDef.safeTypeName,
      TypeDef(
        kind: TypeKind.struct,
        :final isVoidPtrHandle,
        isWrapperStruct: true,
      ) =>
        isVoidPtrHandle ? 'int' : dartType,
      _ => dartType,
    },
    _ => dartType,
  };

  /// The Dart type representation for this [Type].
  ///
  /// This is the internal Dart type that corresponds to the FFI layer. For
  /// example, the [BOOLType] is represented as `int` (as it maps to `Int32` in
  /// FFI).
  String get dartType => switch (this) {
    BoolType() => 'bool',
    BOOLType() || BOOLEANType() || VARIANT_BOOLType() => 'int',
    FloatType() || DoubleType() => 'double',
    CharType() ||
    Int8Type() ||
    Uint8Type() ||
    Int16Type() ||
    Uint16Type() ||
    Int32Type() ||
    Uint32Type() ||
    Int64Type() ||
    Uint64Type() ||
    IntPtrType() ||
    UintPtrType() => 'int',
    HRESULTType() || NTSTATUSType() => 'int',
    PrimitiveOrEnumType(:final enum$) => enum$.dartType,
    StringType() => 'int',
    TypeDefType(:final typeDef) => switch (typeDef) {
      TypeDef(
        kind: TypeKind.enum$,
        fields: [Field(type: Type(:final dartType)), ...],
      ) =>
        dartType,
      TypeDef(
        kind: TypeKind.struct,
        fields: [Field(type: Type(:final dartType, :final isPointer))],
        :final isVoidPtrHandle,
        isWrapperStruct: true,
      ) =>
        isVoidPtrHandle
            ? 'int'
            : isPointer
            ? typeDef.safeTypeName
            : dartType,
      TypeDef(kind: TypeKind.struct, isWrapperStruct: false) =>
        typeDef.safeTypeName,
      _ => ffiType,
    },
    VoidType() => 'void',
    _ => ffiType,
  };

  /// The FFI type representation for this [Type].
  ///
  /// This represents the native type used in FFI bindings. For example, the
  /// [BOOLType] returns `Int32`.
  String get ffiType => switch (this) {
    ArrayType(:final type) => 'Array<${type.ffiType}>',
    BoolType() => 'Bool',
    BOOLType() => 'BOOL',
    BOOLEANType() => 'BOOLEAN',
    VARIANT_BOOLType() => 'VARIANT_BOOL',
    CharType() => 'Uint16',
    FloatType() => 'Float',
    DoubleType() => 'Double',
    Int8Type() => 'Int8',
    Uint8Type() => 'Uint8',
    Int16Type() => 'Int16',
    Uint16Type() => 'Uint16',
    Int32Type() => 'Int32',
    Uint32Type() => 'Uint32',
    Int64Type() => 'Int64',
    Uint64Type() => 'Uint64',
    IntPtrType() || UintPtrType() => 'IntPtr',
    ConstPtrType(:final type, :final pointers) ||
    MutPtrType(
      :final type,
      :final pointers,
    ) => _pointerType(pointers, type.ffiType),
    BSTRType() => 'BSTR',
    DEVPROPKEYType() => 'DEVPROPKEY',
    GUIDType() => 'GUID',
    HRESULTType() || NTSTATUSType() => 'Int32',
    IUnknownType() || ObjectType() => 'VTablePointer',
    PSTRType() => 'PSTR',
    PCSTRType() => 'PCSTR',
    PWSTRType() => 'PWSTR',
    PCWSTRType() => 'PCWSTR',
    PROPERTYKEYType() => 'PROPERTYKEY',
    PrimitiveOrEnumType(:final primitive) => primitive.ffiType,
    PROPVARIANTType() => 'PROPVARIANT',
    SID_IDENTIFIER_AUTHORITYType() => 'SID_IDENTIFIER_AUTHORITY',
    StringType() => 'HSTRING',
    VARIANTType() => 'VARIANT',
    TypeDefType(:final typeDef) => switch (typeDef) {
      TypeDef(kind: TypeKind.class$) ||
      TypeDef(kind: TypeKind.interface) => 'VTablePointer',
      TypeDef(
        kind: TypeKind.delegate,
        methods: [_, Method(name: 'Invoke', parameters: [])],
      ) =>
        typeDef.safeTypeName,
      TypeDef(kind: TypeKind.delegate, methods: [_, Method(name: 'Invoke')]) =>
        'Pointer<NativeFunction<${typeDef.safeTypeName}>>',
      TypeDef(
        kind: TypeKind.enum$,
        fields: [Field(type: Type(:final ffiType)), ...],
      ) =>
        ffiType,
      TypeDef(kind: TypeKind.struct) => typeDef.safeTypeName,
      _ => throw StateError('Unsupported typeDef: $typeDef'),
    },
    VoidType() => 'Void',
  };

  /// Removes one level of indirection (i.e., `*void` -> `void`), typically used
  /// when transforming a return parameter from its underlying type signature.
  ///
  /// This method is only applicable to pointer types; calling it on a non-
  /// pointer type will result in a [StateError].
  Type deref() => switch (this) {
    ConstPtrType(:final type, pointers: 1) ||
    MutPtrType(:final type, pointers: 1) => type is VoidType ? uint8 : type,
    ConstPtrType(:final type, :final pointers) => ConstPtrType(
      type,
      pointers - 1,
    ),
    MutPtrType(:final type, :final pointers) => MutPtrType(type, pointers - 1),
    PSTR || PCSTR => uint8,
    PWSTR || PCWSTR => uint16,
    _ => throw StateError('`deref` can only be called on pointer types'),
  };

  /// Attempts to remove one level of indirection (i.e., `*void` -> `void`).
  ///
  /// Returns `null` if the operation fails.
  Type? tryDeref() {
    try {
      return deref();
    } catch (_) {
      return null;
    }
  }

  /// Whether the [Type] is an _array_ type.
  bool get isArray => this is ArrayType;

  /// Whether the [Type] is a can be directly copied to/from type.
  bool get isCopyable => switch (this) {
    ArrayType(:final type) => type.isCopyable,
    BSTRType() || IUnknownType() || ObjectType() || StringType() => false,
    TypeDefType(:final typeDef) => typeDef.isCopyable,
    _ => true,
  };

  /// Whether the [Type] is a _boolean_ type.
  bool get isBool => switch (this) {
    BoolType() || BOOLType() || BOOLEANType() || VARIANT_BOOLType() => true,
    _ => false,
  };

  /// Whether the [Type] has a _byte-sized_ address.
  bool get isByteSize => switch (this) {
    ConstPtrType(:final type) || MutPtrType(:final type) => type.isByteSize,
    Int8Type() || Uint8Type() || PSTRType() || PCSTRType() => true,
    _ => false,
  };

  /// Whether the [Type] is _convertible_ to another type.
  bool get isConvertible => switch (this) {
    BOOLType() ||
    BOOLEANType() ||
    PCSTRType() ||
    PCWSTRType() ||
    IUnknownType() ||
    ObjectType() ||
    TypeDefType(
      typeDef: TypeDef(kind: TypeKind.struct, isWrapperStruct: true),
    ) => true,
    _ => false,
  };

  /// Whether the [Type] is a _delegate_ type.
  bool get isDelegate => switch (this) {
    TypeDefType(typeDef: TypeDef(kind: TypeKind.delegate)) => true,
    _ => false,
  };

  /// Whether the [Type] is a `DEVPROPKEY` type.
  bool get isDevPropKey => this is DEVPROPKEYType;

  /// Whether the [Type] is a `DEVPROPKEY*` type.
  bool get isDevPropKeyPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isDevPropKey,
    _ => false,
  };

  /// Whether the [Type] is an _enum_ type.
  bool get isEnum => switch (this) {
    PrimitiveOrEnumType(:final enum$) => enum$.typeDef.isEnum,
    TypeDefType(typeDef: TypeDef(kind: TypeKind.enum$)) => true,
    _ => false,
  };

  /// Whether the [Type] is a `GUID` type.
  bool get isGuid => this is GUIDType;

  /// Whether the [Type] is a `GUID*` type.
  bool get isGuidPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isGuid,
    _ => false,
  };

  /// Whether the [Type] is an _interface_ type.
  bool get isInterface => switch (this) {
    IUnknownType() ||
    ObjectType() ||
    TypeDefType(typeDef: TypeDef(kind: TypeKind.interface)) => true,
    _ => false,
  };

  /// Whether the [Type] is an _intrinsic_ type.
  ///
  /// Intrinsic types are the basic building blocks of data representation
  /// (e.g., `bool`, `char`, `int`, `void`) and are not derived from
  /// user-defined or complex types.
  bool get isIntrinsic => switch (this) {
    BoolType() ||
    CharType() ||
    FloatType() ||
    DoubleType() ||
    Int8Type() ||
    Uint8Type() ||
    Int16Type() ||
    Uint16Type() ||
    Int32Type() ||
    Uint32Type() ||
    Int64Type() ||
    Uint64Type() ||
    IntPtrType() ||
    UintPtrType() ||
    VoidType() => true,
    _ => false,
  };

  /// Whether the [Type] is a _pointer_ type.
  ///
  /// A type is considered a pointer if it meets any of the following
  /// conditions:
  /// - It is a delegate type (e.g., `WNDPROC`).
  /// - It is an interface type (e.g., `IUnknown`).
  /// - It is a pointer type (e.g., `Pointer`, `Pointer<Int32>`).
  /// - It is a wrapper struct and the projected FFI type of its field starts
  ///   with `Pointer` (e.g., `BSTR`, `PWSTR`).
  bool get isPointer => switch (this) {
    BSTRType() ||
    PCSTRType() ||
    PCWSTRType() ||
    PSTRType() ||
    PWSTRType() => true,
    ConstPtrType() || MutPtrType() => true,
    IUnknownType() ||
    ObjectType() ||
    TypeDefType(isDelegate: true) ||
    TypeDefType(isInterface: true) => true,
    TypeDefType(
      isWrapperStruct: true,
      typeDef: TypeDef(
        isVoidPtrHandle: false,
        fields: [Field(type: Type(isPointer: true))],
      ),
    ) =>
      true,
    _ => false,
  };

  /// Whether the [Type] is a _primitive_ type.
  bool get isPrimitive => switch (this) {
    Type(isBool: true) ||
    Type(isIntrinsic: true) ||
    HRESULTType() ||
    NTSTATUSType() ||
    ConstPtrType() ||
    MutPtrType() => true,
    TypeDefType(typeDef: TypeDef(:final kind)) => switch (kind) {
      TypeKind.delegate || TypeKind.enum$ => true,
      TypeKind.struct => isWrapperStruct,
      _ => false,
    },
    _ => false,
  };

  /// Whether the [Type] is a `PROPERTYKEY` type.
  bool get isPropertyKey => this is PROPERTYKEYType;

  /// Whether the [Type] is a `PROPERTYKEY*` type.
  bool get isPropertyKeyPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isPropertyKey,
    _ => false,
  };

  /// Whether the [Type] is a `PROPVARIANT` type.
  bool get isPropVariant => this is PROPVARIANTType;

  /// Whether the [Type] is a `PROPVARIANT*` type.
  bool get isPropVariantPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isPropVariant,
    _ => false,
  };

  /// Whether the [Type] is a `SID_IDENTIFIER_AUTHORITY` type.
  bool get isSidIdentifierAuthority => this is SID_IDENTIFIER_AUTHORITYType;

  /// Whether the [Type] is a `SID_IDENTIFIER_AUTHORITY*` type.
  bool get isSidIdentifierAuthorityPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isSidIdentifierAuthority,
    _ => false,
  };

  /// Whether the [Type] is a _string_ type.
  bool get isString => switch (this) {
    BSTRType() ||
    PCSTRType() ||
    PCWSTRType() ||
    PSTRType() ||
    PWSTRType() ||
    StringType() => true,
    _ => false,
  };

  /// Whether the [Type] is a string pointer type (e.g., `PSTR*`, `PWSTR*`).
  bool get isStringPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isString,
    _ => false,
  };

  /// Whether the [Type] is a _struct_ type (including `System.Guid` and
  /// _wrapper_ structs).
  bool get isStruct => switch (this) {
    BOOLType() ||
    BOOLEANType() ||
    BSTRType() ||
    DEVPROPKEYType() ||
    GUIDType() ||
    HRESULTType() ||
    NTSTATUSType() ||
    PROPERTYKEYType() ||
    PROPVARIANTType() ||
    PSTRType() ||
    PWSTRType() ||
    SID_IDENTIFIER_AUTHORITYType() ||
    StringType() ||
    VARIANTType() ||
    VARIANT_BOOLType() => true,
    TypeDefType(typeDef: TypeDef(kind: TypeKind.struct)) => true,
    _ => false,
  };

  /// Whether the [Type] is _unsigned_.
  bool get isUnsigned => switch (this) {
    Uint8Type() ||
    Uint16Type() ||
    Uint32Type() ||
    Uint64Type() ||
    UintPtrType() => true,
    _ => false,
  };

  /// Whether the [Type] is a `VARIANT` type.
  bool get isVariant => this is VARIANTType;

  /// Whether the [Type] is a `VARIANT*` type.
  bool get isVariantPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isVariant,
    _ => false,
  };

  /// Whether the [Type] is a _void_ type (e.g., `void`, `void*`, `void**`).
  bool get isVoid => switch (this) {
    ConstPtrType(:final type) || MutPtrType(:final type) => type.isVoid,
    void$ => true,
    _ => false,
  };

  /// Whether the [Type] is a `void*` type.
  bool get isVoidPtr => switch (this) {
    ConstPtrType(pointers: 1, :final type) ||
    MutPtrType(pointers: 1, :final type) => type.isVoid,
    _ => false,
  };

  /// Whether the [Type] is a _wrapper_ struct type.
  bool get isWrapperStruct => switch (this) {
    BOOLType() ||
    BOOLEANType() ||
    BSTRType() ||
    HRESULTType() ||
    NTSTATUSType() ||
    PSTRType() ||
    PWSTRType() ||
    StringType() ||
    VARIANT_BOOLType() => true,
    TypeDefType(
      typeDef: TypeDef(kind: TypeKind.struct, isWrapperStruct: true),
    ) =>
      true,
    _ => false,
  };

  /// Converts a mutable pointer type, if appropriate, to a const pointer type.
  Type toConstPtr() => switch (this) {
    MutPtrType(:final type, :final pointers) => ConstPtrType(type, pointers),
    _ => this,
  };

  /// Converts the [Type] to an equivalent _const_ variant if appropriate.
  Type toConstType() => switch (this) {
    ConstPtrType(:final type, :final pointers) => ConstPtrType(
      type.toConstType(),
      pointers,
    ),
    MutPtrType(:final type, :final pointers) => MutPtrType(
      type.toConstType(),
      pointers,
    ),
    PSTRType() => PCSTR,
    PWSTRType() => PCWSTR,
    _ => this,
  };
}

final class ArrayType extends Type {
  const ArrayType(this.type, this.length);

  final Type type;
  final int length;

  @override
  bool operator ==(Object other) =>
      other is ArrayType && type == other.type && length == other.length;

  @override
  int get hashCode => Object.hash(type, length);

  @override
  String toString() => 'ArrayType(type: $type, length: $length)';
}

final class BoolType extends Type {
  const BoolType();

  @override
  String toString() => 'BoolType()';
}

final class CharType extends Type {
  const CharType();

  @override
  String toString() => 'CharType()';
}

final class FloatType extends Type {
  const FloatType();

  @override
  String toString() => 'FloatType()';
}

final class DoubleType extends Type {
  const DoubleType();

  @override
  String toString() => 'DoubleType()';
}

final class Int8Type extends Type {
  const Int8Type();

  @override
  String toString() => 'Int8Type()';
}

final class Uint8Type extends Type {
  const Uint8Type();

  @override
  String toString() => 'Uint8Type()';
}

final class Int16Type extends Type {
  const Int16Type();

  @override
  String toString() => 'Int16Type()';
}

final class Uint16Type extends Type {
  const Uint16Type();

  @override
  String toString() => 'Uint16Type()';
}

final class Int32Type extends Type {
  const Int32Type();

  @override
  String toString() => 'Int32Type()';
}

final class Uint32Type extends Type {
  const Uint32Type();

  @override
  String toString() => 'Uint32Type()';
}

final class Int64Type extends Type {
  const Int64Type();

  @override
  String toString() => 'Int64Type()';
}

final class Uint64Type extends Type {
  const Uint64Type();

  @override
  String toString() => 'Uint64Type()';
}

final class IntPtrType extends Type {
  const IntPtrType();

  @override
  String toString() => 'IntPtrType()';
}

final class UintPtrType extends Type {
  const UintPtrType();

  @override
  String toString() => 'UintPtrType()';
}

final class ConstPtrType extends Type {
  const ConstPtrType(this.type, this.pointers);

  final Type type;
  final int pointers;

  @override
  bool operator ==(Object other) =>
      other is ConstPtrType && type == other.type && pointers == other.pointers;

  @override
  int get hashCode => Object.hash(type, pointers);

  @override
  String toString() => 'ConstPtrType(type: $type, pointers: $pointers)';
}

final class MutPtrType extends Type {
  const MutPtrType(this.type, this.pointers);

  final Type type;
  final int pointers;

  @override
  bool operator ==(Object other) =>
      other is MutPtrType && type == other.type && pointers == other.pointers;

  @override
  int get hashCode => Object.hash(type, pointers);

  @override
  String toString() => 'MutPtrType(type: $type, pointers: $pointers)';
}

final class ObjectType extends Type {
  const ObjectType();

  @override
  String toString() => 'ObjectType()';
}

final class PrimitiveOrEnumType extends Type {
  const PrimitiveOrEnumType(this.primitive, this.enum$);

  final Type primitive;
  final TypeDefType enum$;

  @override
  bool operator ==(Object other) =>
      other is PrimitiveOrEnumType &&
      primitive == other.primitive &&
      enum$ == other.enum$;

  @override
  int get hashCode => Object.hash(primitive, enum$);

  @override
  String toString() =>
      'PrimitiveOrEnumType(primitive: $primitive, enum\$: ${enum$})';
}

final class StringType extends Type {
  const StringType();

  @override
  String toString() => 'StringType()';
}

final class TypeDefType extends Type {
  const TypeDefType(this.typeDef);

  final TypeDef typeDef;

  @override
  bool operator ==(Object other) =>
      other is TypeDefType && typeDef == other.typeDef;

  @override
  int get hashCode => typeDef.hashCode;

  @override
  String toString() => 'TypeDefType(typeDef: ${typeDef.typeName})';
}

final class VoidType extends Type {
  const VoidType();

  @override
  String toString() => 'VoidType()';
}

final class BOOLType extends Type {
  const BOOLType();

  @override
  String toString() => 'BOOLType()';
}

final class BOOLEANType extends Type {
  const BOOLEANType();

  @override
  String toString() => 'BOOLEANType()';
}

final class BSTRType extends Type {
  const BSTRType();

  @override
  String toString() => 'BSTRType()';
}

final class DEVPROPKEYType extends Type {
  const DEVPROPKEYType();

  @override
  String toString() => 'DEVPROPKEYType()';
}

final class GUIDType extends Type {
  const GUIDType();

  @override
  String toString() => 'GUIDType()';
}

final class HRESULTType extends Type {
  const HRESULTType();

  @override
  String toString() => 'HRESULTType()';
}

final class IUnknownType extends Type {
  const IUnknownType();

  @override
  String toString() => 'IUnknownType()';
}

final class NTSTATUSType extends Type {
  const NTSTATUSType();

  @override
  String toString() => 'NTSTATUSType()';
}

final class PROPERTYKEYType extends Type {
  const PROPERTYKEYType();

  @override
  String toString() => 'PROPERTYKEYType()';
}

final class PSTRType extends Type {
  const PSTRType();

  @override
  String toString() => 'PSTRType()';
}

final class PCSTRType extends Type {
  const PCSTRType();

  @override
  String toString() => 'PCSTRType()';
}

final class PWSTRType extends Type {
  const PWSTRType();

  @override
  String toString() => 'PWSTRType()';
}

final class PCWSTRType extends Type {
  const PCWSTRType();

  @override
  String toString() => 'PCWSTRType()';
}

final class PROPVARIANTType extends Type {
  const PROPVARIANTType();

  @override
  String toString() => 'PROPVARIANTType()';
}

final class SID_IDENTIFIER_AUTHORITYType extends Type {
  const SID_IDENTIFIER_AUTHORITYType();

  @override
  String toString() => 'SID_IDENTIFIER_AUTHORITYType()';
}

final class VARIANTType extends Type {
  const VARIANTType();

  @override
  String toString() => 'VARIANTType()';
}

final class VARIANT_BOOLType extends Type {
  const VARIANT_BOOLType();

  @override
  String toString() => 'VARIANT_BOOLType()';
}

/// Generates a Dart `Pointer` type with the specified number of [levels].
///
/// If the [type] is `Void`, the function returns a generic `Pointer` type as
/// Dart's `Pointer<Void>` is unnecessarily restrictive compared to the Win32
/// counterpart, which is more like "undefined type".
///
/// Example:
/// ```dart
/// _pointerType(1, 'Void'); // Returns: 'Pointer' (instead of 'Pointer<Void>')
/// _pointerType(2, 'Uint16'); // Returns: 'Pointer<Pointer<Uint16>>'
/// ```
String _pointerType(int levels, String type) {
  if (type == 'Void') {
    // 'Pointer<Void>' in Dart is unnecessarily restrictive, versus the Win32
    // meaning, which is more like "undefined type". We can model that with a
    // generic 'Pointer' in Dart.
    return '${'Pointer<' * (levels - 1)}Pointer${'>' * (levels - 1)}';
  }

  // Constructs the pointer type for other types (e.g., Pointer<Int32>,
  // Pointer<Pointer<Uint16>>).
  return 'Pointer<' * levels + type + '>' * levels;
}
