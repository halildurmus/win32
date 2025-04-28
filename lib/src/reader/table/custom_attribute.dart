import '../../attributes.dart';
import '../../bindings.dart';
import '../../custom_attribute_parameter.dart';
import '../../exception.dart';
import '../../metadata_type.dart';
import '../../metadata_value.dart';
import '../blob.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a custom attribute applied to types, methods, fields, or
/// properties.
///
/// This class models a single row in the `CustomAttribute` table. The fields
/// are populated by interpreting the binary metadata as specified in ECMA-335
/// `§II.22.10`.
///
/// The `CustomAttribute` table has the following columns:
///  - **Parent** (HasCustomAttribute Coded Index)
///  - **Type** (CustomAttributeType Coded Index)
///  - **Value** (Blob Heap Index)
final class CustomAttribute extends Row {
  CustomAttribute(super.metadataIndex, super.readerIndex, super.position);

  @override
  MetadataTable get table => MetadataTable.customAttribute;

  /// The entity to which this attribute is applied.
  late final parent = decode<HasCustomAttribute>(0);

  /// The constructor method used to instantiate the attribute.
  late final type = decode<CustomAttributeType>(1);

  /// The parameters passed to the attribute constructor.
  ///
  /// This includes both positional and named parameters.
  late final parameters = () {
    final signature = type.signature();
    assert(
      signature.flags == MethodCallFlags.hasThis,
      'Expected hasThis attribute, got ${signature.flags}.',
    );
    assert(
      signature.returnType is VoidType,
      'Expected void return type, got ${signature.returnType}.',
    );

    final blob = readBlob(2);
    if (blob.isEmpty) return const <CustomAttributeParameter>[];

    final parameters = <CustomAttributeParameter>[];

    final prolog = blob.readUint16();
    assert(prolog == 1, 'Expected prolog 1, got $prolog.');

    for (final type in signature.types) {
      final value = _readValue(blob, type);
      parameters.add(CustomAttributeParameter.positional(value));
    }

    final namedArgCount = blob.readUint16();

    for (var i = 0; i < namedArgCount; i++) {
      final id = CorElementType(blob.readUint8());
      assert(
        id == ELEMENT_TYPE_FIELD || id == ELEMENT_TYPE_PROPERTY,
        'Expected ELEMENT_TYPE_FIELD (0x53) or ELEMENT_TYPE_PROPERTY (0x54), '
        'got $id.',
      );
      final type = blob.readTypeCode();
      final name = blob.readUtf8();
      if (type is AttributeEnumType) {
        final enumName = blob.readUtf8();
        final enumValue = blob.readInt32();
        final value = AttributeEnumValue(name, enumValue);
        parameters.add(
          CustomAttributeParameter.named(name: enumName, value: value),
        );
      } else {
        final value = _readValue(blob, type);
        parameters.add(
          CustomAttributeParameter.named(name: name, value: value),
        );
      }
    }

    assert(
      blob.isEmpty,
      'Expected blob to be empty, but got ${blob.length} bytes left.',
    );
    return parameters;
  }();

  /// The name of the attribute.
  late final name = type.parent.name;

  @override
  String toString() => 'CustomAttribute(name: $name, parameters: $parameters)';
}

/// Decodes a value from the blob according to the specified [type].
MetadataValue _readValue(Blob blob, MetadataType type) => switch (type) {
  BoolType() => BoolValue(blob.readBool()),
  CharType() => CharValue(blob.readUint16()),
  Int8Type() => Int8Value(blob.readInt8()),
  Uint8Type() => Uint8Value(blob.readUint8()),
  Int16Type() => Int16Value(blob.readInt16()),
  Uint16Type() => Uint16Value(blob.readUint16()),
  Int32Type() => Int32Value(blob.readInt32()),
  Uint32Type() => Uint32Value(blob.readUint32()),
  Int64Type() => Int64Value(blob.readInt64()),
  Uint64Type() => Uint64Value(blob.readUint64()),
  Float32Type() => Float32Value(blob.readFloat32()),
  Float64Type() => Float64Value(blob.readFloat64()),
  StringType() => Utf8StringValue(blob.readUtf8()),
  NamedType(:final typeName)
      when typeName.namespace == 'System' && typeName.name == 'Type' =>
    Utf8StringValue(blob.readUtf8()),
  NamedType() => Int32Value(blob.readInt32()),
  _ => throw WinmdException('Unexpected type: $type'),
};

final class CustomAttributeCompanion extends RowCompanion<CustomAttribute> {
  const CustomAttributeCompanion();

  @override
  CustomAttribute Function(MetadataIndex, int, int) get constructor =>
      CustomAttribute.new;

  @override
  MetadataTable get table => MetadataTable.customAttribute;
}
