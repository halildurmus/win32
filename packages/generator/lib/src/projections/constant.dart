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
  ConstantProjection(this.field, {super.formatCode})
    : assert(field.isStatic, '${field.name} is not a constant.'),
      name = field.name.safeIdentifier,
      originalName = field.name,
      type = .fromField(field);

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
    logger.finest('Generating $debugName...');
    return switch (type) {
      .devPropKey => _generateDevPropKey(),
      .double$ => _generateField(
        assignment: cb.literalNum(field.constant!.valueAsDouble!).code,
      ),
      .guid => _generateGuid(),
      .handle => _generateField(
        assignment: field.type.isWrapperStruct
            ? cb.refer(field.type.publicType).call([
                cb.refer('Pointer').property('fromAddress').call([
                  cb.literalNum(field.constant!.valueAsInt!),
                ]),
              ]).code
            : cb.refer('Pointer').property('fromAddress').call([
                cb.literalNum(field.constant!.valueAsInt!),
              ]).code,
        modifier: .final$,
      ),
      .int$ => _generateField(
        assignment: cb.literalNum(field.constant!.valueAsInt!).code,
      ),
      .srwLock => _generateSrwLock(),
      .pcstr => _generateField(
        assignment: cb.refer('PCSTR').call([
          cb.refer('Pointer').property('fromAddress').call([
            cb.literalNum(field.constant!.valueAsInt!),
          ]),
        ]).code,
        modifier: .final$,
      ),
      .pcwstr => _generateField(
        assignment: cb.refer('PCWSTR').call([
          cb.refer('Pointer').property('fromAddress').call([
            cb.literalNum(field.constant!.valueAsInt!),
          ]),
        ]).code,
        modifier: .final$,
      ),
      .propertyKey => _generatePropertyKey(),
      .sidIdentifierAuthority => _generateSidIdentifierAuthority(),
      .signedInt => _generateSignedInt(),
      .string => _generateField(
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
      modifier: .final$,
      type: cb.refer('DEVPROPKEY'),
      assignment: cb
          .refer('Struct')
          .property('create')
          .call(const [], const {}, [cb.refer('DEVPROPKEY')])
          .cascade('fmtid')
          .assign(
            cb.refer('GUID').property('fromComponents').call([
              ...generateGuidParameters(guidComponents),
            ]),
          )
          .cascade('pid')
          .assign(cb.literalNum(pid))
          .code,
    );
  }

  cb.Field _generateGuid() {
    final guidComponents = field
        .findAttribute(Win32Attribute.guid)
        .fixedArgs
        .map((p) => p.valueAsInt!)
        .toFixedList();
    return _generateField(
      modifier: .final$,
      assignment: cb
          .refer('GUID')
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
      modifier: .final$,
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
      modifier: .final$,
      type: cb.refer('PROPERTYKEY'),
      assignment: cb
          .refer('Struct')
          .property('create')
          .call(const [], const {}, [cb.refer('PROPERTYKEY')])
          .cascade('fmtid')
          .assign(
            cb.refer('GUID').property('fromComponents').call([
              ...generateGuidParameters(guidComponents),
            ]),
          )
          .cascade('pid')
          .assign(cb.literalNum(pid))
          .code,
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
      modifier: .final$,
      type: cb.refer('SID_IDENTIFIER_AUTHORITY'),
      assignment: cb
          .refer('Struct')
          .property('create')
          .call(const [], const {}, [cb.refer('SID_IDENTIFIER_AUTHORITY')])
          .cascade('Value')
          .property('elements')
          .property('buffer')
          .property('asUint8List')
          .call(const [])
          .property('setAll')
          .call([cb.literalNum(0), cb.literalConstList(sidComponents)])
          .code,
    );
  }

  cb.Field _generateSignedInt() {
    final type =
        (field.signature as winmd.NamedType).typeName.name.lastComponent;
    final value = field.constant!.valueAsInt!;
    final hexValue = value.toHexString();
    return _generateField(
      additionalDocs: ['Represents the $type value `$hexValue` (`$value`).'],
      assignment: .new(
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
    cb.FieldModifier modifier = .constant,
  }) => .new(
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
    if (field.hasAttribute(Win32Attribute.guid)) return guid;

    if (field.hasAttribute(Win32Attribute.constant)) {
      final structName =
          (field.signature as winmd.NamedType).typeName.name.lastComponent;
      return switch (structName) {
        'DEVPROPKEY' => devPropKey,
        'CONDITION_VARIABLE' || 'INIT_ONCE' || 'SRWLOCK' => srwLock,
        'PROPERTYKEY' => propertyKey,
        'SID_IDENTIFIER_AUTHORITY' => sidIdentifierAuthority,
        _ => throw UnimplementedError(
          'Unknown type "$structName" for field "$field".',
        ),
      };
    }

    if (field.isLiteral) {
      if (field.type.isVoidPtr) return handle;

      if (field.type case TypeDefType(
        isWrapperStruct: true,
        typeDef: winmd.TypeDef(
          fields: [winmd.Field(type: InteropType(isPointer: true))],
        ),
      )) {
        return handle;
      }

      switch (field.type) {
        case HRESULTType():
        case NTSTATUSType():
        case RPC_STATUSType():
          return signedInt;
        case PSTRType():
          return pcstr;
        case PWSTRType():
          return pcwstr;
        default:
      }

      switch (field.constant!.value!) {
        case winmd.Float32Value():
        case winmd.Float64Value():
          return double$;

        case winmd.Int8Value():
        case winmd.Uint8Value():
        case winmd.Int16Value():
        case winmd.Uint16Value():
        case winmd.Int32Value():
        case winmd.Uint32Value():
        case winmd.Int64Value():
        case winmd.Uint64Value():
          return int$;

        case winmd.Utf8StringValue():
        case winmd.Utf16StringValue():
          return string;

        default:
      }
    }

    throw UnimplementedError('Unknown constant type for field "$field".');
  }
}

extension on int {
  String toHexString([int width = 32]) {
    if (width <= 0 || width % 8 != 0) {
      throw ArgumentError.value(
        width,
        'width',
        'Must be positive and divisible by 8',
      );
    }

    if (this == 0) return '0x0';

    var n = BigInt.from(this);

    // Convert negative values to an unsigned two’s complement representation
    // using a sufficiently wide intermediate bit width.
    if (n.isNegative) {
      final bitWidth = const [
        8,
        16,
        32,
        64,
        128,
      ].firstWhere((w) => n >= BigInt.from(-1) << (w - 1), orElse: () => 128);
      n = n.toUnsigned(bitWidth);
    }

    // Manual hexadecimal conversion avoids locale or formatting dependencies.
    var hex = '';
    final base = BigInt.from(16);

    while (n > BigInt.zero) {
      hex = _hexLookupTable[(n % base).toInt()] + hex;
      n = n ~/ base;
    }

    // Apply sign extension padding for negative values.
    if (isNegative) {
      hex = hex.padLeft(width ~/ 4, 'F');
    }

    return '0x$hex';
  }
}

const _hexLookupTable = '0123456789ABCDEF';
