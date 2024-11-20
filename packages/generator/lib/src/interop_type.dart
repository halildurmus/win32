import 'package:winmd/winmd.dart' as winmd;

import 'exception.dart';
import 'extensions/field.dart';
import 'extensions/type_def.dart';
import 'windows_metadata.dart';

/// Represents a type in the Win32 metadata, providing information about how it
/// should be marshaled to/from native code.
sealed class InteropType {
  const InteropType();

  const factory InteropType.array(InteropType element, int length) = ArrayType;

  const factory InteropType.constPointer(InteropType pointee, int depth) =
      ConstPointerType;

  const factory InteropType.mutablePointer(InteropType pointee, int depth) =
      MutablePointerType;

  const factory InteropType.primitiveOrEnum(
    InteropType primitive,
    TypeDefType enum$,
  ) = PrimitiveOrEnumType;

  const factory InteropType.typeDef(winmd.TypeDef typeDef) = TypeDefType;

  /// Creates a [InteropType] based on a [winmd.MetadataType].
  factory InteropType.fromMetadataType(winmd.MetadataType type) {
    if (type case winmd.NamedType(:final typeName)) {
      return InteropType.remap(typeName) ??
          InteropType.typeDef(
            WindowsMetadata.findTypeDef(typeName.namespace, typeName.name),
          );
    }

    return _resolvedTypes.putIfAbsent(type, () {
      if (fromPrimitiveType(type) case final primitive?) return primitive;

      return switch (type) {
        winmd.FixedArrayType(:final element, :final length) =>
          InteropType.array(InteropType.fromMetadataType(element), length),

        winmd.ConstPointerType(:final pointee, :final depth) =>
          InteropType.constPointer(
            InteropType.fromMetadataType(pointee),
            depth,
          ),

        winmd.MutablePointerType(:final pointee, :final depth) =>
          InteropType.mutablePointer(
            InteropType.fromMetadataType(pointee),
            depth,
          ),

        _ => throw GeneratorException('Unsupported type: $type'),
      };
    });
  }

  static const _primitiveTypes = <winmd.MetadataType, InteropType>{
    winmd.BoolType(): BoolType(),
    winmd.CharType(): CharType(),
    winmd.Int8Type(): Int8Type(),
    winmd.Uint8Type(): Uint8Type(),
    winmd.Int16Type(): Int16Type(),
    winmd.Uint16Type(): Uint16Type(),
    winmd.Int32Type(): Int32Type(),
    winmd.Uint32Type(): Uint32Type(),
    winmd.Int64Type(): Int64Type(),
    winmd.Uint64Type(): Uint64Type(),
    winmd.IntPtrType(): IntPtrType(),
    winmd.UintPtrType(): UintPtrType(),
    winmd.Float32Type(): Float32Type(),
    winmd.Float64Type(): Float64Type(),
    winmd.ObjectType(): ObjectType(),
    winmd.StringType(): StringType(),
    winmd.VoidType(): VoidType(),
  };

  /// Attempts to map a [winmd.MetadataType] to a known primitive [InteropType].
  static InteropType? fromPrimitiveType(winmd.MetadataType type) =>
      _primitiveTypes[type];

  static const _remappedTypes = <String, InteropType>{
    'Windows.Win32.Foundation.BOOL': BOOLType(),
    'Windows.Win32.Foundation.BOOLEAN': BOOLEANType(),
    'Windows.Win32.Foundation.BSTR': BSTRType(),
    'Windows.Win32.Foundation.DEVPROPKEY': DEVPROPKEYType(),
    'System.Guid': GUIDType(),
    'Windows.Win32.Foundation.HRESULT': HRESULTType(),
    'Windows.Win32.System.WinRT.HSTRING': StringType(),
    'Windows.Win32.System.WinRT.IInspectable': ObjectType(),
    'Windows.Win32.System.Com.IUnknown': IUnknownType(),
    'Windows.Win32.Foundation.NTSTATUS': NTSTATUSType(),
    'Windows.Win32.Foundation.PROPERTYKEY': PROPERTYKEYType(),
    'Windows.Win32.System.Com.StructuredStorage.PROPVARIANT': PROPVARIANTType(),
    'Windows.Win32.Foundation.PSTR': PSTRType(),
    'Windows.Win32.Foundation.PWSTR': PWSTRType(),
    'Windows.Win32.Security.SID_IDENTIFIER_AUTHORITY':
        SID_IDENTIFIER_AUTHORITYType(),
    'Windows.Win32.System.Variant.VARIANT': VARIANTType(),
    'Windows.Win32.Foundation.VARIANT_BOOL': VARIANT_BOOLType(),
  };

  /// Maps a [winmd.TypeName] to a known [InteropType] alias, or returns `null`
  /// if unsupported.
  static InteropType? remap(winmd.TypeName typeName) =>
      _remappedTypes['${typeName.namespace}.${typeName.name}'];

  static final _resolvedTypes = <winmd.MetadataType, InteropType>{};

  /// The memory alignment of the [InteropType] in bytes.
  int get alignment => switch (this) {
    ArrayType(:final element) => element.alignment,
    BoolType() || BOOLEANType() => 1,
    BOOLType() => 4,
    BSTRType() => 8,
    CharType() => 2,
    ConstPointerType() || MutablePointerType() => 8,
    DEVPROPKEYType() => 4,
    GUIDType() => 4,
    HRESULTType() || NTSTATUSType() => 4,
    Int8Type() || Uint8Type() => 1,
    Int16Type() || Uint16Type() => 2,
    Float32Type() || Int32Type() || Uint32Type() => 4,
    Float64Type() ||
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

  /// The memory size of the [InteropType] in bytes.
  int get size => switch (this) {
    ArrayType(:final element, :final length) => element.size * length,
    BoolType() || BOOLEANType() => 1,
    BOOLType() => 4,
    BSTRType() => 8,
    CharType() => 2,
    ConstPointerType() || MutablePointerType() => 8,
    DEVPROPKEYType() => 20,
    GUIDType() => 16,
    HRESULTType() || NTSTATUSType() => 4,
    Int8Type() || Uint8Type() => 1,
    Int16Type() || Uint16Type() => 2,
    Float32Type() || Int32Type() || Uint32Type() => 4,
    Float64Type() ||
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

  /// The C type representation for this [InteropType].
  ///
  /// This returns the equivalent C language type as a string.
  /// For example:
  /// - A [BOOLType] returns `BOOL`.
  /// - A [Float64Type] returns `double`.
  /// - Pointer types (e.g., [ConstPointerType] and [MutablePointerType]) return
  ///   the C type with the appropriate number of `*` for indirection.
  String get cType => switch (this) {
    ArrayType(:final element, :final length) => '${element.cType} arr[$length]',
    BOOLType() => 'BOOL',
    BOOLEANType() => 'BOOLEAN',
    VARIANT_BOOLType() => 'VARIANT_BOOL',
    CharType() => 'char',
    Float32Type() => 'float',
    Float64Type() => 'double',
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
    ConstPointerType(:final pointee, :final depth) ||
    MutablePointerType(
      :final pointee,
      :final depth,
    ) => '${pointee.cType}${'*' * depth}',
    PrimitiveOrEnumType(:final primitive) => primitive.cType,
    StringType() => 'HSTRING',
    TypeDefType(:final typeDef) =>
      typeDef.isEnum
          ? switch (typeDef.fields[0].type) {
              Int8Type() => 'CHAR',
              Int16Type() => 'SHORT',
              Int32Type() => 'LONG',
              Int64Type() => 'LONG64',
              Uint8Type() => 'UCHAR',
              Uint16Type() => 'USHORT',
              Uint32Type() => 'DWORD',
              Uint64Type() => 'DWORD64',
              _ => throw StateError(
                'Unsupported enum type: ${typeDef.fields[0].type}',
              ),
            }
          : typeDef.name,
    _ => publicType,
  };

  /// The public Dart type representation for this [InteropType].
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
      winmd.TypeDef(category: winmd.TypeCategory.class$) ||
      winmd.TypeDef(category: winmd.TypeCategory.enum$) ||
      winmd.TypeDef(
        category: winmd.TypeCategory.interface,
      ) => typeDef.safeTypeName,
      winmd.TypeDef(
        category: winmd.TypeCategory.struct,
        :final isVoidPtrHandle,
        isWrapperStruct: true,
      ) =>
        isVoidPtrHandle ? 'int' : dartType,
      _ => dartType,
    },
    _ => dartType,
  };

  /// The Dart type representation for this [InteropType].
  ///
  /// This is the internal Dart type that corresponds to the FFI layer. For
  /// example, the [BOOLType] is represented as `int` (as it maps to `Int32` in
  /// FFI).
  String get dartType => switch (this) {
    BoolType() => 'bool',
    BOOLType() || BOOLEANType() || VARIANT_BOOLType() => 'int',
    Float32Type() || Float64Type() => 'double',
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
      winmd.TypeDef(
        category: winmd.TypeCategory.enum$,
        fields: [winmd.Field(type: InteropType(:final dartType)), ...],
      ) =>
        dartType,
      winmd.TypeDef(
        category: winmd.TypeCategory.struct,
        fields: [
          winmd.Field(type: InteropType(:final dartType, :final isPointer)),
        ],
        :final isVoidPtrHandle,
        isWrapperStruct: true,
      ) =>
        isVoidPtrHandle
            ? 'int'
            : isPointer
            ? typeDef.safeTypeName
            : dartType,
      winmd.TypeDef(
        category: winmd.TypeCategory.struct,
        isWrapperStruct: false,
      ) =>
        typeDef.safeTypeName,
      _ => ffiType,
    },
    VoidType() => 'void',
    _ => ffiType,
  };

  /// The FFI type representation for this [InteropType].
  ///
  /// This represents the native type used in FFI bindings. For example, the
  /// [BOOLType] returns `Int32`.
  String get ffiType => switch (this) {
    ArrayType(:final element) => 'Array<${element.ffiType}>',
    BoolType() => 'Bool',
    BOOLType() => 'BOOL',
    BOOLEANType() => 'BOOLEAN',
    VARIANT_BOOLType() => 'VARIANT_BOOL',
    CharType() => 'Uint16',
    Float32Type() => 'Float',
    Float64Type() => 'Double',
    Int8Type() => 'Int8',
    Uint8Type() => 'Uint8',
    Int16Type() => 'Int16',
    Uint16Type() => 'Uint16',
    Int32Type() => 'Int32',
    Uint32Type() => 'Uint32',
    Int64Type() => 'Int64',
    Uint64Type() => 'Uint64',
    IntPtrType() || UintPtrType() => 'IntPtr',
    ConstPointerType(:final pointee, :final depth) ||
    MutablePointerType(
      :final pointee,
      :final depth,
    ) => _pointerType(pointee.ffiType, depth),
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
    SID_IDENTIFIER_AUTHORITYType() =>
      'Windows.Win32.Security.SID_IDENTIFIER_AUTHORITY',
    StringType() => 'HSTRING',
    VARIANTType() => 'VARIANT',
    TypeDefType(:final typeDef) => switch (typeDef) {
      winmd.TypeDef(category: winmd.TypeCategory.class$) ||
      winmd.TypeDef(category: winmd.TypeCategory.interface) => 'VTablePointer',
      winmd.TypeDef(
        category: winmd.TypeCategory.delegate,
        methods: [
          _,
          winmd.MethodDef(name: 'Invoke', params: [winmd.Param(sequence: 0)]),
        ],
      ) =>
        typeDef.safeTypeName,
      winmd.TypeDef(
        category: winmd.TypeCategory.delegate,
        methods: [_, winmd.MethodDef(name: 'Invoke')],
      ) =>
        'Pointer<NativeFunction<${typeDef.safeTypeName}>>',
      winmd.TypeDef(
        category: winmd.TypeCategory.enum$,
        fields: [winmd.Field(type: InteropType(:final ffiType)), ...],
      ) =>
        ffiType,
      winmd.TypeDef(category: winmd.TypeCategory.struct) =>
        typeDef.safeTypeName,
      _ => throw StateError('Unsupported typeDef: $typeDef'),
    },
    VoidType() => 'Void',
  };

  /// Removes one level of indirection (i.e., `*void` -> `void`), typically used
  /// when transforming a return parameter from its underlying type signature.
  ///
  /// This method is only applicable to pointer types; calling it on a non-
  /// pointer type will result in a [StateError].
  InteropType deref() => switch (this) {
    ConstPointerType(:final pointee, depth: 1) ||
    MutablePointerType(
      :final pointee,
      depth: 1,
    ) => pointee is VoidType ? const Uint8Type() : pointee,
    ConstPointerType(:final pointee, :final depth) => ConstPointerType(
      pointee,
      depth - 1,
    ),
    MutablePointerType(:final pointee, :final depth) => MutablePointerType(
      pointee,
      depth - 1,
    ),
    PSTRType() || PCSTRType() => const Uint8Type(),
    PWSTRType() || PCWSTRType() => const Uint16Type(),
    _ => throw StateError('`deref` can only be called on pointer types'),
  };

  /// Attempts to remove one level of indirection (i.e., `*void` -> `void`).
  ///
  /// Returns `null` if the operation fails.
  InteropType? tryDeref() {
    try {
      return deref();
    } catch (_) {
      return null;
    }
  }

  /// Whether the [InteropType] is a can be directly copied to/from type.
  bool get isCopyable => switch (this) {
    ArrayType(:final element) => element.isCopyable,
    BSTRType() || IUnknownType() || ObjectType() || StringType() => false,
    TypeDefType(:final typeDef) => typeDef.isCopyable,
    _ => true,
  };

  /// Whether the [InteropType] is a _boolean_ type.
  bool get isBool => switch (this) {
    BoolType() || BOOLType() || BOOLEANType() || VARIANT_BOOLType() => true,
    _ => false,
  };

  /// Whether the [InteropType] has a _byte-sized_ address.
  bool get isByteSize => switch (this) {
    ConstPointerType(:final pointee) ||
    MutablePointerType(:final pointee) => pointee.isByteSize,
    Int8Type() || Uint8Type() || PSTRType() || PCSTRType() => true,
    _ => false,
  };

  /// Whether the [InteropType] is _convertible_ to another type.
  bool get isConvertible => switch (this) {
    BOOLType() ||
    BOOLEANType() ||
    PCSTRType() ||
    PCWSTRType() ||
    IUnknownType() ||
    ObjectType() ||
    TypeDefType(
      typeDef: winmd.TypeDef(
        category: winmd.TypeCategory.struct,
        isWrapperStruct: true,
      ),
    ) => true,
    _ => false,
  };

  /// Whether the [InteropType] is a _delegate_ type.
  bool get isDelegate => switch (this) {
    TypeDefType(
      typeDef: winmd.TypeDef(category: winmd.TypeCategory.delegate),
    ) =>
      true,
    _ => false,
  };

  /// Whether the [InteropType] is a `DEVPROPKEY*` type.
  bool get isDevPropKeyPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(depth: 1, :final pointee) => pointee is DEVPROPKEYType,
    _ => false,
  };

  /// Whether the [InteropType] is an _enum_ type.
  bool get isEnum => switch (this) {
    PrimitiveOrEnumType(:final enum$) => enum$.typeDef.isEnum,
    TypeDefType(typeDef: winmd.TypeDef(category: winmd.TypeCategory.enum$)) =>
      true,
    _ => false,
  };

  /// Whether the [InteropType] is a `GUID*` type.
  bool get isGuidPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(depth: 1, :final pointee) => pointee is GUIDType,
    _ => false,
  };

  /// Whether the [InteropType] is an _interface_ type.
  bool get isInterface => switch (this) {
    IUnknownType() ||
    ObjectType() ||
    TypeDefType(
      typeDef: winmd.TypeDef(category: winmd.TypeCategory.interface),
    ) => true,
    _ => false,
  };

  /// Whether the [InteropType] is an _intrinsic_ type.
  ///
  /// Intrinsic types are the basic building blocks of data representation
  /// (e.g., `bool`, `char`, `int`, `void`) and are not derived from
  /// user-defined or complex types.
  bool get isIntrinsic => switch (this) {
    BoolType() ||
    CharType() ||
    Float32Type() ||
    Float64Type() ||
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

  /// Whether the [InteropType] is a _pointer_ type.
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
    ConstPointerType() || MutablePointerType() => true,
    IUnknownType() ||
    ObjectType() ||
    TypeDefType(isDelegate: true) ||
    TypeDefType(isInterface: true) => true,
    TypeDefType(
      isWrapperStruct: true,
      typeDef: winmd.TypeDef(
        isVoidPtrHandle: false,
        fields: [winmd.Field(type: InteropType(isPointer: true))],
      ),
    ) =>
      true,
    _ => false,
  };

  /// Whether the [InteropType] is a _primitive_ type.
  bool get isPrimitive => switch (this) {
    InteropType(isBool: true) ||
    InteropType(isIntrinsic: true) ||
    HRESULTType() ||
    NTSTATUSType() ||
    ConstPointerType() ||
    MutablePointerType() => true,
    TypeDefType(typeDef: winmd.TypeDef(:final category)) => switch (category) {
      winmd.TypeCategory.delegate || winmd.TypeCategory.enum$ => true,
      winmd.TypeCategory.struct => isWrapperStruct,
      _ => false,
    },
    _ => false,
  };

  /// Whether the [InteropType] is a `PROPERTYKEY*` type.
  bool get isPropertyKeyPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(depth: 1, :final pointee) => pointee is PROPERTYKEYType,
    _ => false,
  };

  /// Whether the [InteropType] is a `PROPVARIANT*` type.
  bool get isPropVariantPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(depth: 1, :final pointee) => pointee is PROPVARIANTType,
    _ => false,
  };

  /// Whether the [InteropType] is a `SID_IDENTIFIER_AUTHORITY*` type.
  bool get isSidIdentifierAuthorityPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(
      depth: 1,
      :final pointee,
    ) => pointee is SID_IDENTIFIER_AUTHORITYType,
    _ => false,
  };

  /// Whether the [InteropType] is a _string_ type.
  bool get isString => switch (this) {
    BSTRType() ||
    PCSTRType() ||
    PCWSTRType() ||
    PSTRType() ||
    PWSTRType() ||
    StringType() => true,
    _ => false,
  };

  /// Whether the [InteropType] is a string pointer type (e.g., `PSTR*`,
  /// `PWSTR*`).
  bool get isStringPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(depth: 1, :final pointee) => pointee.isString,
    _ => false,
  };

  /// Whether the [InteropType] is a _struct_ type (including `System.Guid` and
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
    TypeDefType(typeDef: winmd.TypeDef(category: winmd.TypeCategory.struct)) =>
      true,
    _ => false,
  };

  /// Whether the [InteropType] is _unsigned_.
  bool get isUnsigned => switch (this) {
    Uint8Type() ||
    Uint16Type() ||
    Uint32Type() ||
    Uint64Type() ||
    UintPtrType() => true,
    _ => false,
  };

  /// Whether the [InteropType] is a `VARIANT*` type.
  bool get isVariantPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(depth: 1, :final pointee) => pointee is VARIANTType,
    _ => false,
  };

  /// Whether the [InteropType] is a _void_ type (e.g., `void`, `void*`,
  /// `void**`).
  bool get isVoid => switch (this) {
    ConstPointerType(:final pointee) ||
    MutablePointerType(:final pointee) => pointee is VoidType,
    VoidType() => true,
    _ => false,
  };

  /// Whether the [InteropType] is a `void*` type.
  bool get isVoidPtr => switch (this) {
    ConstPointerType(depth: 1, :final pointee) ||
    MutablePointerType(depth: 1, :final pointee) => pointee is VoidType,
    _ => false,
  };

  /// Whether the [InteropType] is a _wrapper_ struct type.
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
      typeDef: winmd.TypeDef(
        category: winmd.TypeCategory.struct,
        isWrapperStruct: true,
      ),
    ) =>
      true,
    _ => false,
  };

  /// Converts a mutable pointer type, if appropriate, to a const pointer type.
  InteropType toConstPointer() => switch (this) {
    MutablePointerType(:final pointee, :final depth) => ConstPointerType(
      pointee,
      depth,
    ),
    _ => this,
  };

  /// Converts the [InteropType] to an equivalent _const_ variant if
  /// appropriate.
  InteropType toConstType() => switch (this) {
    ConstPointerType(:final pointee, :final depth) => ConstPointerType(
      pointee.toConstType(),
      depth,
    ),
    MutablePointerType(:final pointee, :final depth) => MutablePointerType(
      pointee.toConstType(),
      depth,
    ),
    PSTRType() => const PCSTRType(),
    PWSTRType() => const PCWSTRType(),
    _ => this,
  };

  @override
  // ignore: no_runtimetype_tostring
  String toString() => runtimeType.toString();
}

final class ArrayType extends InteropType {
  const ArrayType(this.element, this.length);

  /// The type of the elements stored in the array.
  final InteropType element;

  /// The exact number of elements in the array.
  final int length;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArrayType && element == other.element && length == other.length;

  @override
  int get hashCode => Object.hash(element, length);

  @override
  String toString() => 'ArrayType(element: $element, length: $length)';
}

final class BoolType extends InteropType {
  const BoolType();
}

final class CharType extends InteropType {
  const CharType();
}

final class Float32Type extends InteropType {
  const Float32Type();
}

final class Float64Type extends InteropType {
  const Float64Type();
}

final class Int8Type extends InteropType {
  const Int8Type();
}

final class Uint8Type extends InteropType {
  const Uint8Type();
}

final class Int16Type extends InteropType {
  const Int16Type();
}

final class Uint16Type extends InteropType {
  const Uint16Type();
}

final class Int32Type extends InteropType {
  const Int32Type();
}

final class Uint32Type extends InteropType {
  const Uint32Type();
}

final class Int64Type extends InteropType {
  const Int64Type();
}

final class Uint64Type extends InteropType {
  const Uint64Type();
}

final class IntPtrType extends InteropType {
  const IntPtrType();
}

final class UintPtrType extends InteropType {
  const UintPtrType();
}

final class ConstPointerType extends InteropType {
  const ConstPointerType(this.pointee, this.depth);

  /// The type the pointer points to.
  final InteropType pointee;

  /// The number of pointer indirections (e.g., `T**` has depth `2`).
  final int depth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstPointerType &&
          pointee == other.pointee &&
          depth == other.depth;

  @override
  int get hashCode => Object.hash(pointee, depth);

  @override
  String toString() => 'ConstPointerType(pointee: $pointee, depth: $depth)';
}

final class MutablePointerType extends InteropType {
  const MutablePointerType(this.pointee, this.depth);

  /// The type the pointer points to.
  final InteropType pointee;

  /// The number of pointer indirections (e.g., `T**` has depth `2`).
  final int depth;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MutablePointerType &&
          pointee == other.pointee &&
          depth == other.depth;

  @override
  int get hashCode => Object.hash(pointee, depth);

  @override
  String toString() => 'MutablePointerType(pointee: $pointee, depth: $depth)';
}

final class ObjectType extends InteropType {
  const ObjectType();
}

final class PrimitiveOrEnumType extends InteropType {
  const PrimitiveOrEnumType(this.primitive, this.enum$);

  final InteropType primitive;
  final TypeDefType enum$;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrimitiveOrEnumType &&
          primitive == other.primitive &&
          enum$ == other.enum$;

  @override
  int get hashCode => Object.hash(primitive, enum$);

  @override
  String toString() =>
      'PrimitiveOrEnumType(primitive: $primitive, enum\$: ${enum$})';
}

final class StringType extends InteropType {
  const StringType();
}

final class TypeDefType extends InteropType {
  const TypeDefType(this.typeDef);

  final winmd.TypeDef typeDef;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefType &&
          typeDef.namespace == other.typeDef.namespace &&
          typeDef.name == other.typeDef.name;

  @override
  int get hashCode => Object.hash(typeDef.namespace, typeDef.name);

  @override
  String toString() => 'TypeDefType($typeDef)';
}

final class VoidType extends InteropType {
  const VoidType();
}

final class BOOLType extends InteropType {
  const BOOLType();
}

final class BOOLEANType extends InteropType {
  const BOOLEANType();
}

final class BSTRType extends InteropType {
  const BSTRType();
}

final class DEVPROPKEYType extends InteropType {
  const DEVPROPKEYType();
}

final class GUIDType extends InteropType {
  const GUIDType();
}

final class HRESULTType extends InteropType {
  const HRESULTType();
}

final class IUnknownType extends InteropType {
  const IUnknownType();
}

final class NTSTATUSType extends InteropType {
  const NTSTATUSType();
}

final class PROPERTYKEYType extends InteropType {
  const PROPERTYKEYType();
}

final class PSTRType extends InteropType {
  const PSTRType();
}

final class PCSTRType extends InteropType {
  const PCSTRType();
}

final class PWSTRType extends InteropType {
  const PWSTRType();
}

final class PCWSTRType extends InteropType {
  const PCWSTRType();
}

final class PROPVARIANTType extends InteropType {
  const PROPVARIANTType();
}

// ignore: camel_case_types
final class SID_IDENTIFIER_AUTHORITYType extends InteropType {
  const SID_IDENTIFIER_AUTHORITYType();
}

final class VARIANTType extends InteropType {
  const VARIANTType();
}

// ignore: camel_case_types
final class VARIANT_BOOLType extends InteropType {
  const VARIANT_BOOLType();
}

/// Generates a Dart `Pointer` type with the specified number of [depth].
///
/// If the [type] is `Void`, the function returns a generic `Pointer` type as
/// Dart's `Pointer<Void>` is unnecessarily restrictive compared to the Win32
/// counterpart, which is more like "undefined type".
///
/// Example:
/// ```dart
/// _pointerType('Void', 1); // Returns: 'Pointer' (instead of 'Pointer<Void>')
/// _pointerType('Uint16', 2); // Returns: 'Pointer<Pointer<Uint16>>'
/// ```
String _pointerType(String type, int depth) {
  if (type == 'Void') {
    // 'Pointer<Void>' in Dart is unnecessarily restrictive, versus the Win32
    // meaning, which is more like "undefined type". We can model that with a
    // generic 'Pointer' in Dart.
    return '${'Pointer<' * (depth - 1)}Pointer${'>' * (depth - 1)}';
  }

  // Constructs the pointer type for other types (e.g., Pointer<Int32>,
  // Pointer<Pointer<Uint16>>).
  return 'Pointer<' * depth + type + '>' * depth;
}
