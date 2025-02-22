import 'package:winmd/winmd.dart';

import '../model/load_json.dart';
import 'utils.dart';

class TypeTuple {
  /// The type, as represented in the native function (e.g. `Uint64`)
  final String nativeType;

  /// The type, as represented in the Dart function (e.g. `int`)
  final String dartType;

  /// The type, as represented as a struct attribute (e.g. `@Uint64()`)
  final String? attribute;

  /// The type, as represented in a method declaration prior to conversion (e.g. `DateTime`)
  final String? methodParamType;

  const TypeTuple(
    this.nativeType,
    this.dartType, {
    this.attribute,
    this.methodParamType,
  });
}

const Map<BaseType, TypeTuple> baseNativeMapping = {
  BaseType.voidType: TypeTuple('Void', 'void'),
  BaseType.booleanType: TypeTuple('Bool', 'bool', attribute: '@Bool()'),
  BaseType.int8Type: TypeTuple('Int8', 'int', attribute: '@Int8()'),
  BaseType.uint8Type: TypeTuple('Uint8', 'int', attribute: '@Uint8()'),
  BaseType.int16Type: TypeTuple('Int16', 'int', attribute: '@Int16()'),
  BaseType.uint16Type: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
  BaseType.int32Type: TypeTuple('Int32', 'int', attribute: '@Int32()'),
  BaseType.uint32Type: TypeTuple('Uint32', 'int', attribute: '@Uint32()'),
  BaseType.int64Type: TypeTuple('Int64', 'int', attribute: '@Int64()'),
  BaseType.uint64Type: TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  BaseType.intPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.uintPtrType: TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
  BaseType.floatType: TypeTuple('Float', 'double', attribute: '@Float()'),
  BaseType.doubleType: TypeTuple('Double', 'double', attribute: '@Double()'),
  BaseType.charType: TypeTuple('Uint16', 'int', attribute: '@Uint16()'),
};

const Map<String, TypeTuple> specialTypes = {
  'Windows.Win32.Foundation.BSTR': TypeTuple(
    'Pointer<Utf16>',
    'Pointer<Utf16>',
  ),
  'Windows.Win32.Foundation.PWSTR': TypeTuple(
    'Pointer<Utf16>',
    'Pointer<Utf16>',
  ),
  'Windows.Win32.Foundation.PSTR': TypeTuple('Pointer<Utf8>', 'Pointer<Utf8>'),
  'System.Guid': TypeTuple('GUID', 'GUID'),
};

final callbackTypeMapping = loadMap('win32_callbacks.json');

class TypeProjection {
  final TypeIdentifier typeIdentifier;
  TypeTuple? _projection;

  TypeTuple get projection {
    _projection ??= projectType();

    return _projection!;
  }

  TypeProjection(this.typeIdentifier);

  String get attribute => projection.attribute ?? '';
  String get nativeType => projection.nativeType;
  String get dartType => projection.dartType;
  String get methodParamType =>
      projection.methodParamType ?? projection.dartType;
  int? get arrayUpperBound => typeIdentifier.arrayDimensions?.first;

  /// Is the resultant Dart type atomic?
  bool get isDartPrimitive =>
      ['void', 'bool', 'int', 'double'].contains(dartType) ||
      dartType.startsWith('Pointer') ||
      dartType.startsWith('Array');

  bool get isBaseType =>
      baseNativeMapping.keys.contains(typeIdentifier.baseType);

  bool get isWin32SpecialType =>
      specialTypes.keys.contains(typeIdentifier.name);

  bool get isString => typeIdentifier.baseType == BaseType.stringType;

  bool get isEnumType => typeIdentifier.type?.parent?.name == 'System.Enum';

  bool get isGenericType =>
      typeIdentifier.baseType == BaseType.genericTypeModifier;

  bool get isReferenceType =>
      typeIdentifier.baseType == BaseType.referenceTypeModifier;

  bool get isWrappedValueType =>
      typeIdentifier.baseType == BaseType.valueTypeModifier;

  bool get isPointerType =>
      typeIdentifier.baseType == BaseType.pointerTypeModifier;

  bool get isArrayType => typeIdentifier.baseType == BaseType.arrayTypeModifier;

  bool get isSimpleArrayType =>
      typeIdentifier.baseType == BaseType.simpleArrayType;

  bool get _isDelegate =>
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  bool get isWin32Delegate =>
      typeIdentifier.baseType == BaseType.classTypeModifier &&
      typeIdentifier.name.startsWith('Windows.Win32') &&
      _isDelegate;

  bool get isClass => typeIdentifier.type?.isClass ?? false;

  bool get isInterface => typeIdentifier.type?.isInterface ?? false;

  bool get isObject => typeIdentifier.baseType == BaseType.objectType;

  bool get isWinRT => typeIdentifier.type?.isWindowsRuntime ?? false;

  bool get isWinRTDelegate => isWinRT && _isDelegate;

  bool get isWinRTEnum => isWinRT && isEnumType;

  bool get isWinRTStruct => isWinRT && (typeIdentifier.type?.isStruct ?? false);

  TypeTuple unwrapEnumType() {
    final fieldType = typeIdentifier.type?.findField('value__')?.typeIdentifier;
    if (fieldType == null) {
      throw Exception('Enum $typeIdentifier is missing value__');
    }
    return TypeProjection(fieldType).projection;
  }

  TypeTuple unwrapValueType() {
    final wrappedType = typeIdentifier.type;
    if (wrappedType == null) {
      throw Exception(
        'Wrapped type TypeIdentifier missing for $typeIdentifier.',
      );
    }

    // A type like HWND
    if (wrappedType.hasAttribute(
          'Windows.Win32.Foundation.Metadata.NativeTypedefAttribute',
        ) ||
        wrappedType.hasAttribute(
          'Windows.Win32.Foundation.Metadata.MetadataTypedefAttribute',
        )) {
      final typeIdentifier = wrappedType.fields.first.typeIdentifier;
      return TypeProjection(typeIdentifier).projection;
    }

    if (wrappedType.isNested) {
      final typeClass = mangleName(wrappedType);
      return TypeTuple(typeClass, typeClass);
    }

    final typeClass = stripAnsiUnicodeSuffix(lastComponent(wrappedType.name));
    return TypeTuple(typeClass, typeClass);
  }

  /// Takes a type such as `pointerTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>`.
  TypeTuple unwrapPointerType() {
    if (typeIdentifier.typeArg == null) {
      throw Exception('Pointer type missing for $typeIdentifier.');
    }
    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Strip leading underscores (unless the type is nested, in which
    // case leave one behind).
    final typeArgNativeType =
        typeIdentifier.typeArg?.type?.isNested ?? false
            ? '_${stripLeadingUnderscores(typeArg.projection.nativeType)}'
            : stripLeadingUnderscores(typeArg.projection.nativeType);

    // Pointer<Void> in Dart is unnecessarily restrictive, versus the
    // Win32 meaning, which is more like "undefined type". We can
    // model that with a generic Pointer in Dart.
    final projection = typeArg.projection;
    if (projection.nativeType == 'Void') {
      return const TypeTuple('Pointer', 'Pointer');
    }

    final nativeType = 'Pointer<$typeArgNativeType>';
    final dartType = 'Pointer<$typeArgNativeType>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple unwrapArrayType() {
    if (typeIdentifier.typeArg == null ||
        typeIdentifier.arrayDimensions == null) {
      throw Exception('Array information missing for $typeIdentifier.');
    }

    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Arrays of nested types have a private _ prefix. This is not a very
    // expensive operation.
    final typeArgNativeType =
        typeIdentifier.typeArg?.type?.isNested ?? false
            ? typeArg.nativeType
            : stripLeadingUnderscores(typeArg.nativeType);

    final nativeType = 'Array<$typeArgNativeType>';
    final dartType = 'Array<$typeArgNativeType>';
    final upperBound = typeIdentifier.arrayDimensions?.first;

    return TypeTuple(nativeType, dartType, attribute: '@Array($upperBound)');
  }

  TypeTuple unwrapCallbackType() {
    const voidCallbackTypes = <String, String>{
      'FARPROC': 'Pointer',
      'PROC': 'Pointer',
      'NEARPROC': 'Pointer',
    };

    final callbackType = stripLeadingUnderscores(
      lastComponent(typeIdentifier.name),
    );

    if (voidCallbackTypes.keys.contains(callbackType)) {
      final mappedType = voidCallbackTypes[callbackType]!;
      return TypeTuple(mappedType, mappedType);
    } else if (callbackTypeMapping.keys.contains(callbackType)) {
      final mappedType = callbackTypeMapping[callbackType]!;
      return TypeTuple(mappedType, mappedType);
    }

    final nativeType = 'Pointer<NativeFunction<$callbackType>>';
    final dartType = 'Pointer<NativeFunction<$callbackType>>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple projectType() {
    // Could be an intrinsic base type (e.g. Int32)
    if (isBaseType) return baseNativeMapping[typeIdentifier.baseType]!;

    // Could be a string or other special type that we want to custom-map
    if (isWin32SpecialType) return specialTypes[typeIdentifier.name]!;

    // Could be an enum like FOLDERFLAGS
    if (isEnumType) return unwrapEnumType();

    // Could be a wrapped type (e.g. a HWND)
    if (isWrappedValueType) return unwrapValueType();

    if (isPointerType) return unwrapPointerType();
    if (isArrayType) return unwrapArrayType();
    if (isWin32Delegate) return unwrapCallbackType();

    if (isInterface) {
      return const TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>');
    }

    // default: return the name as returned by metadata
    throw Exception('Type information missing for $typeIdentifier.');
  }
}
