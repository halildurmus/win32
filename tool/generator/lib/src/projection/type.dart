import 'package:winmd/winmd.dart';

import '../shared/win32_typemap.dart';
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

  const TypeTuple(this.nativeType, this.dartType,
      {this.attribute, this.methodParamType});
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
  'Windows.Win32.Foundation.BSTR':
      TypeTuple('Pointer<Utf16>', 'Pointer<Utf16>'),
  'Windows.Win32.Foundation.PWSTR':
      TypeTuple('Pointer<Utf16>', 'Pointer<Utf16>'),
  'Windows.Win32.Foundation.PSTR': TypeTuple('Pointer<Utf8>', 'Pointer<Utf8>'),
  'Windows.Win32.Foundation.LARGE_INTEGER':
      TypeTuple('Int64', 'int', attribute: '@Int64()'),
  'Windows.Win32.Foundation.ULARGE_INTEGER':
      TypeTuple('Uint64', 'int', attribute: '@Uint64()'),
  'System.Guid': TypeTuple('GUID', 'GUID'),
  'Windows.Foundation.IAsyncOperation`1':
      TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>'),
  'Windows.Foundation.Collections.IVector`1':
      TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>'),
  'Windows.Foundation.Collections.IVectorView`1':
      TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>'),
  'Windows.Foundation.DateTime': TypeTuple('Uint64', 'int',
      attribute: '@Uint64()', methodParamType: 'DateTime'),
  'Windows.Foundation.HResult':
      TypeTuple('Int32', 'int', attribute: '@Int32()'),
  'Windows.Foundation.TimeSpan': TypeTuple('Uint64', 'int',
      attribute: '@Uint64()', methodParamType: 'Duration'),
  'Windows.Foundation.EventRegistrationToken':
      TypeTuple('IntPtr', 'int', attribute: '@IntPtr()'),
};

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

  bool get isReferenceType =>
      typeIdentifier.baseType == BaseType.referenceTypeModifier;

  bool get isWrappedValueType =>
      typeIdentifier.baseType == BaseType.valueTypeModifier;

  bool get isPointerType =>
      typeIdentifier.baseType == BaseType.pointerTypeModifier;

  bool get isArrayType => typeIdentifier.baseType == BaseType.arrayTypeModifier;

  bool get isSimpleArrayType =>
      typeIdentifier.baseType == BaseType.simpleArrayType;

  bool get isWin32Delegate =>
      typeIdentifier.baseType == BaseType.classTypeModifier &&
      typeIdentifier.name.startsWith('Windows.Win32') &&
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  bool get isWinRTDelegate =>
      (typeIdentifier.type?.isWindowsRuntime ?? false) &&
      typeIdentifier.type?.parent?.name == 'System.MulticastDelegate';

  bool get isInterface => typeIdentifier.type?.isInterface ?? false;

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
          'Wrapped type TypeIdentifier missing for $typeIdentifier.');
    }

    // A type like HWND
    if (wrappedType
        .existsAttribute('Windows.Win32.Interop.NativeTypedefAttribute')) {
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

  /// Takes a type such as `PointerTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>.
  TypeTuple unwrapPointerType() {
    if (typeIdentifier.typeArg == null) {
      throw Exception('Pointer type missing for $typeIdentifier.');
    }
    final typeArg = TypeProjection(typeIdentifier.typeArg!);

    // Strip leading underscores (unless the type is nested, in which
    // case leave one behind).
    final typeArgNativeType = typeIdentifier.typeArg?.type?.isNested ?? false
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
    final typeArgNativeType = typeIdentifier.typeArg?.type?.isNested ?? false
        ? typeArg.nativeType
        : stripLeadingUnderscores(typeArg.nativeType);

    final nativeType = 'Array<$typeArgNativeType>';
    final dartType = 'Array<$typeArgNativeType>';
    final upperBound = typeIdentifier.arrayDimensions?.first;

    return TypeTuple(nativeType, dartType, attribute: '@Array($upperBound)');
  }

  /// Takes a type such as `SimpleArrayTypeModifier` -> `BaseType.Uint32` and
  /// converts it to `Pointer<Uint32>.
  TypeTuple unwrapSimpleArrayType(TypeIdentifier type) {
    if (type.typeArg == null) {
      throw Exception('Pointer type missing for $type.');
    }
    final typeArg = TypeProjection(type.typeArg!);

    // Strip leading underscores (unless the type is nested, in which
    // case leave one behind).
    final typeArgNativeType = type.typeArg?.type?.isNested ?? false
        ? '_${stripLeadingUnderscores(typeArg.projection.nativeType)}'
        : stripLeadingUnderscores(typeArg.projection.nativeType);

    // Since this is already wrapped with 'Pointer', we can return it as is
    if (typeArgNativeType.endsWith('Pointer<COMObject>')) {
      return TypeTuple(typeArgNativeType, typeArgNativeType);
    }

    final nativeType = 'Pointer<$typeArgNativeType>';
    final dartType = 'Pointer<$typeArgNativeType>';

    return TypeTuple(nativeType, dartType);
  }

  TypeTuple unwrapCallbackType() {
    const voidCallbackTypes = <String, String>{
      'FARPROC': 'Pointer',
      'PROC': 'Pointer',
      'NEARPROC': 'Pointer',
    };

    final callbackType =
        stripLeadingUnderscores(lastComponent(typeIdentifier.name));

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

    // This is used by WinRT for an HSTRING
    if (isString) {
      return const TypeTuple('IntPtr', 'int', methodParamType: 'String');
    }

    // Could be an enum like FOLDERFLAGS
    if (isEnumType) return unwrapEnumType();

    // Could be a wrapped type (e.g. a HWND)
    if (isWrappedValueType) return unwrapValueType();

    if (isPointerType) return unwrapPointerType();
    if (isArrayType) return unwrapArrayType();
    if (isSimpleArrayType) return unwrapSimpleArrayType(typeIdentifier);
    if (isWin32Delegate) return unwrapCallbackType();

    if (isWinRTDelegate) {
      final delegateName = stripGenerics(
          stripLeadingUnderscores(lastComponent(typeIdentifier.name)));

      return TypeTuple('Pointer<NativeFunction<$delegateName>>',
          'Pointer<NativeFunction<$delegateName>>');
    }

    if (isReferenceType) {
      if ((typeIdentifier.typeArg?.type?.isInterface ?? false) ||
          typeIdentifier.typeArg?.baseType == BaseType.classTypeModifier) {
        return const TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>');
      }

      if (typeIdentifier.typeArg?.baseType == BaseType.simpleArrayType) {
        return unwrapSimpleArrayType(typeIdentifier.typeArg!);
      }

      throw Exception(
          'Could not unwrap reference type: ${typeIdentifier.typeArg}');
    }

    if (isInterface ||
        typeIdentifier.baseType == BaseType.classTypeModifier ||
        typeIdentifier.baseType == BaseType.objectType) {
      return const TypeTuple('Pointer<COMObject>', 'Pointer<COMObject>');
    }

    // default: return the name as returned by metadata
    throw Exception('Type information missing for $typeIdentifier.');
  }
}
