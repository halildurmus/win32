import 'dart:collection';

import 'package:meta/meta.dart';

import '../../attribute_arg.dart';
import '../../bindings.dart';
import '../../common.dart';
import '../../exception.dart';
import '../../member_ref_signature.dart';
import '../../metadata_type.dart';
import '../../metadata_value.dart';
import '../../type_name.dart';
import '../blob.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `CustomAttribute` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.10`.
///
/// The `CustomAttribute` table has the following columns:
///  - **Parent** (HasCustomAttribute Coded Index)
///  - **Type** (CustomAttributeType Coded Index)
///  - **Value** (Blob Heap Index)
final class CustomAttribute extends Row {
  CustomAttribute(super.metadataIndex, super.readerIndex, super.index) {
    final types = switch (type) {
      CustomAttributeTypeMemberRef(:final value) => switch (value.signature()) {
        FieldSig() => throw const WinmdException(
          'Expected MethodRefSig, got FieldSig.',
        ),
        final MethodRefSig methodRefSig => methodRefSig.types,
      },
      CustomAttributeTypeMethodDef(:final value) => value.signature().types,
    };
    final blob = readBlob(2);
    if (blob.isEmpty) {
      fixedArgs = const [];
      namedArgs = const [];
    } else {
      final prolog = blob.readUint16();
      assert(prolog == 1, 'Expected prolog 1, got $prolog.');

      // Parse fixed args.
      fixedArgs = UnmodifiableListView([
        for (final type in types) FixedArg(_readValue(blob, type)),
      ]);

      // Parse named args.
      final namedArgCount = blob.readUint16();
      if (namedArgCount == 0) {
        namedArgs = const [];
      } else {
        final args = <NamedArg>[];
        for (var i = 0; i < namedArgCount; i++) {
          final id = ElementType(blob.readUint8());
          assert(
            id == ELEMENT_TYPE_FIELD || id == ELEMENT_TYPE_PROPERTY,
            'NamedArg must be either ELEMENT_TYPE_FIELD (0x53) or ELEMENT_TYPE_PROPERTY (0x54)',
          );
          final type = blob.readTypeCode();
          final name = blob.readUtf8();
          if (type is AttributeEnumType) {
            final enumName = blob.readUtf8();
            final enumValue = blob.readInt32();
            final value = AttributeEnumValue(name, enumValue);
            args.add(NamedArg(name: enumName, value: value));
          } else {
            final value = _readValue(blob, type);
            args.add(NamedArg(name: name, value: value));
          }
        }
        namedArgs = UnmodifiableListView(args);
      }

      assert(
        blob.isEmpty,
        'Expected blob to be empty, but got ${blob.length} bytes left.',
      );
    }
  }

  @override
  MetadataTable get table => MetadataTable.customAttribute;

  @override
  int get token => (MetadataTableId.customAttribute << 24) | index;

  /// The fixed arguments passed to the attribute constructor, if any.
  late final List<FixedArg> fixedArgs;

  /// The named arguments passed to the attribute constructor, if any.
  late final List<NamedArg> namedArgs;

  /// The entity to which this attribute is applied.
  late final parent = decode<HasCustomAttribute>(0);

  /// The constructor method used to instantiate the attribute.
  late final type = decode<CustomAttributeType>(1);

  /// The name of the attribute.
  late final name = switch (type.parent) {
    MemberRefParentTypeDef(:final value) => value.name,
    MemberRefParentTypeRef(:final value) => value.name,
    MemberRefParentMethodDef(:final value) => value.name,
    MemberRefParentModuleRef() || MemberRefParentTypeSpec() =>
      throw WinmdException('Unexpected attribute parent: ${type.parent}'),
  };

  @override
  String toString() =>
      'CustomAttribute(name: $name, fixedArgs: $fixedArgs, '
      'namedArgs: $namedArgs)';
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
  NamedType(typeName: TypeName(namespace: 'System', name: 'Type')) =>
    Utf8StringValue(blob.readUtf8()),
  NamedType() => Int32Value(blob.readInt32()),
  _ => throw WinmdException('Unexpected type: $type'),
};

@internal
final class CustomAttributeCompanion extends RowCompanion<CustomAttribute> {
  const CustomAttributeCompanion();

  @override
  CustomAttribute Function(MetadataIndex, int, int) get constructor =>
      CustomAttribute.new;

  @override
  MetadataTable get table => MetadataTable.customAttribute;
}
