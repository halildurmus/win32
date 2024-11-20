import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart' as winmd;

import '../attributes.dart';
import '../docs/api_details.dart';
import '../extensions/collection.dart';
import '../extensions/field.dart';
import '../extensions/string.dart';
import '../interop_type.dart';
import '../logger.dart';
import '../projection.dart';
import '../windows_metadata.dart';

/// Represents a Dart projection for a Win32 constant defined by a
/// [winmd.Field].
///
/// This class generates a Dart `const` variable or getter that mirrors the
/// Win32 constant's signature. It also generates the associated documentation,
/// providing context and references to the original Windows API documentation.
final class ConstantProjection extends Projection with ProjectionMixin {
  /// Creates an instance of this class for the given Win32 constant [field].
  ///
  /// Throws an [AssertionError] if the provided [field] is not a constant.
  ConstantProjection(this.field, {super.formatCode})
    : assert(field.isStatic, '${field.name} is not a constant.'),
      name = field.name.safeIdentifier,
      originalName = field.name,
      type = ConstantType.fromField(field);

  /// The name of the constant converted to safe Dart identifier.
  final String name;

  /// The original name of the constant.
  final String originalName;

  /// The metadata associated with the constant.
  final winmd.Field field;

  /// The type of the constant.
  final ConstantType type;

  /// The API documentation for the constant, if available.
  ApiDetails? get apiDetails => WindowsMetadata.docs.documentation(field);

  @override
  cb.Spec generate() {
    generatorLogger.finest('Generating $debugName...');
    return switch (type) {
      ConstantType.devPropKey => _generateDevPropKey(),
      ConstantType.double$ => _generateField(
        assignment: cb.literalNum(field.constant!.valueAsDouble!).code,
      ),
      ConstantType.guid => _generateGuid(),
      ConstantType.handle => _generateField(
        assignment: cb.refer('Pointer').property('fromAddress').call([
          cb.literalNum(field.constant!.valueAsInt!),
        ]).code,
        modifier: cb.FieldModifier.final$,
      ),
      ConstantType.int$ => _generateField(
        assignment: cb.literalNum(field.constant!.valueAsInt!).code,
      ),
      ConstantType.srwLock => _generateSrwLock(),
      ConstantType.pcstr => _generateField(
        assignment: cb.refer('Pointer<Utf8>').property('fromAddress').call([
          cb.literalNum(field.constant!.valueAsInt!),
        ]).code,
        modifier: cb.FieldModifier.final$,
      ),
      ConstantType.pcwstr => _generateField(
        assignment: cb.refer('Pointer<Utf16>').property('fromAddress').call([
          cb.literalNum(field.constant!.valueAsInt!),
        ]).code,
        modifier: cb.FieldModifier.final$,
      ),
      ConstantType.propertyKey => _generatePropertyKey(),
      ConstantType.sidIdentifierAuthority => _generateSidIdentifierAuthority(),
      ConstantType.signedInt => _generateSignedInt(),
      ConstantType.string => _generateField(
        assignment: cb
            .literalString(
              (field.constant!.valueAsString!).escapeSpecialChars(),
            )
            .code,
      ),
    };
  }

  cb.Field _generateDevPropKey() {
    final attrValue = field
        .findAttribute(Win32Attribute.constant)
        .fixedArgs[0]
        .valueAsString!;
    final guidComponents = attrValue
        .substring(1, attrValue.indexOf('}'))
        .split(', ')
        .map(int.parse)
        .toFixedList();
    final pid = int.parse(attrValue.substring(attrValue.indexOf('}, ') + 3));
    return _generateField(
      modifier: cb.FieldModifier.final$,
      assignment: cb.refer('DevPropKey').property('fromComponents').call([
        ...generateGuidParameters(guidComponents),
        cb.literalNum(pid),
      ]).code,
    );
  }

  cb.Field _generateGuid() {
    final guidComponents = field
        .findAttribute(Win32Attribute.guid)
        .fixedArgs
        .map((p) => p.valueAsInt!)
        .toFixedList();
    return _generateField(
      modifier: cb.FieldModifier.final$,
      assignment: cb
          .refer('Guid')
          .property('fromComponents')
          .call(generateGuidParameters(guidComponents))
          .code,
    );
  }

  cb.Field _generateSrwLock() {
    final attrValue = field
        .findAttribute(Win32Attribute.constant)
        .fixedArgs[0]
        .valueAsString!;
    final address = int.parse(attrValue);
    return _generateField(
      modifier: cb.FieldModifier.final$,
      type: cb.refer('Pointer'),
      assignment: cb.refer('Pointer').property('fromAddress').call([
        cb.literalNum(address),
      ]).code,
    );
  }

  cb.Field _generatePropertyKey() {
    final attrValue = field
        .findAttribute(Win32Attribute.constant)
        .fixedArgs[0]
        .valueAsString!;
    final guidComponents = attrValue
        .substring(1, attrValue.indexOf('}'))
        .split(', ')
        .map(int.parse)
        .toFixedList();
    final pid = int.parse(attrValue.substring(attrValue.indexOf('}, ') + 3));
    return _generateField(
      modifier: cb.FieldModifier.final$,
      assignment: cb.refer('PropertyKey').property('fromComponents').call([
        ...generateGuidParameters(guidComponents),
        cb.literalNum(pid),
      ]).code,
    );
  }

  cb.Field _generateSidIdentifierAuthority() {
    final attrValue = field
        .findAttribute(Win32Attribute.constant)
        .fixedArgs[0]
        .valueAsString!;
    final sidComponents = attrValue
        .substring(1, attrValue.indexOf('}'))
        .split(', ')
        .map(int.parse)
        .toFixedList();
    return _generateField(
      modifier: cb.FieldModifier.final$,
      assignment: cb.refer('SidIdentifierAuthority').newInstance([
        cb.refer('Uint8List').property('fromList').call([
          cb.literalConstList(sidComponents),
        ]),
      ]).code,
    );
  }

  cb.Field _generateSignedInt() {
    final type =
        (field.signature as winmd.NamedType).typeName.name.lastComponent;
    final value = field.constant!.valueAsInt!;
    final hexValue = value.toHexString();
    return _generateField(
      additionalDocs: ['Represents the $type value `$hexValue` (`$value`).'],
      assignment: cb.Code(
        value.isNegative
            ? '$type($hexValue - 0x100000000)'
            : '$type($hexValue)',
      ),
    );
  }

  cb.Field _generateField({
    required cb.Code assignment,
    cb.Reference? type,
    List<String> additionalDocs = const [],
    cb.FieldModifier modifier = cb.FieldModifier.constant,
  }) => cb.Field(
    (b) => b
      ..docs.addAll(
        generateApiDocs(apiDetails, row: field, additionalDocs: additionalDocs),
      )
      ..modifier = modifier
      ..type = type
      ..name = name
      ..assignment = assignment,
  );

  @override
  String get debugName => 'ConstantProjection(name: $name, type: $type)';
}

/// Represents the possible types of a constant in a Win32 projection.
enum ConstantType {
  devPropKey,
  double$,
  guid,
  handle,
  int$,
  srwLock,
  propertyKey,
  pcstr,
  pcwstr,
  sidIdentifierAuthority,
  signedInt,
  string;

  /// Determines the constant type from the given [field].
  factory ConstantType.fromField(winmd.Field field) {
    if (field.hasAttribute(Win32Attribute.guid)) return ConstantType.guid;

    if (field.hasAttribute(Win32Attribute.constant)) {
      final structName =
          (field.signature as winmd.NamedType).typeName.name.lastComponent;
      return switch (structName) {
        'DEVPROPKEY' => ConstantType.devPropKey,
        'CONDITION_VARIABLE' ||
        'INIT_ONCE' ||
        'SRWLOCK' => ConstantType.srwLock,
        'PROPERTYKEY' => ConstantType.propertyKey,
        'SID_IDENTIFIER_AUTHORITY' => ConstantType.sidIdentifierAuthority,
        _ => throw UnimplementedError(
          'Unknown type "$structName" for field "$field".',
        ),
      };
    }

    if (field.isLiteral) {
      switch (field.type) {
        case HRESULTType():
        case NTSTATUSType():
          return ConstantType.signedInt;
        case PSTRType():
          return ConstantType.pcstr;
        case PWSTRType():
          return ConstantType.pcwstr;
        default:
      }

      switch (field.constant!.value!) {
        case winmd.Float32Value():
        case winmd.Float64Value():
          return ConstantType.double$;

        case winmd.Int8Value():
        case winmd.Uint8Value():
        case winmd.Int16Value():
        case winmd.Uint16Value():
        case winmd.Int32Value():
        case winmd.Uint32Value():
        case winmd.Int64Value():
        case winmd.Uint64Value():
          return ConstantType.int$;

        case winmd.Utf8StringValue():
        case winmd.Utf16StringValue():
          return ConstantType.string;

        default:
      }
    }

    throw UnimplementedError('Unknown constant type for field "$field".');
  }
}

// TODO(halildurmus): Remove this extension and use the one in package:win32
// when win32 v6 is released.
extension on int {
  String toHexString([int width = 32]) {
    if (width <= 0 || width % 8 != 0) {
      throw ArgumentError.value(
        width,
        'width',
        'Must be positive and divisible by 8',
      );
    }

    var n = BigInt.from(this);

    // Handle negative numbers by converting them to unsigned with the
    // appropriate bit width.
    if (n.isNegative) {
      final bitWidth = const [8, 16, 32, 64, 128].firstWhere(
        (w) => n >= BigInt.from(-1) << (w - 1),
        orElse: () => 128, // Default to 128 bits if out of bounds.
      );
      n = n.toUnsigned(bitWidth);
    }

    // Convert to hexadecimal string.
    var hex = '';
    if (n == BigInt.zero) {
      hex = '0';
    } else {
      final bigInt16 = BigInt.from(16);
      while (n > BigInt.zero) {
        hex = _hexLookupTable[(n % bigInt16).toInt()] + hex;
        n = n ~/ bigInt16;
      }
    }

    // Apply padding for signed representation.
    if (isNegative) {
      hex = hex.padLeft(width ~/ 4, 'F');
    }

    return '0x$hex';
  }
}

const _hexLookupTable = '0123456789ABCDEF';
