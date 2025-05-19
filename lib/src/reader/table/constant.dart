import 'package:meta/meta.dart';

import '../../bindings.dart';
import '../../common.dart';
import '../../exception.dart';
import '../../metadata_type.dart';
import '../../metadata_value.dart';
import '../codes.dart';
import '../metadata_index.dart';
import '../metadata_table.dart';
import '../row.dart';

/// Represents a row in the `Constant` metadata table.
///
/// The fields are populated by interpreting the binary metadata as specified in
/// ECMA-335 `§II.22.9`.
///
/// The `Constant` table has the following columns:
///  - **Type** (1-byte, 1-byte padding zero)
///  - **Parent** (HasConstant Coded Index)
///  - **Value** (Blob Heap Index)
final class Constant extends Row {
  Constant(super.metadataIndex, super.readerIndex, super.index);

  @override
  MetadataTable get table => MetadataTable.constant;

  @override
  int get token => (MetadataTableId.constant << 24) | index;

  /// The metadata type that describes how to interpret the constant value.
  late final type = () {
    final type = readUint8(0);
    return switch (type) {
      ELEMENT_TYPE_BOOLEAN => const BoolType(),
      ELEMENT_TYPE_CHAR => const CharType(),
      ELEMENT_TYPE_I1 => const Int8Type(),
      ELEMENT_TYPE_U1 => const Uint8Type(),
      ELEMENT_TYPE_I2 => const Int16Type(),
      ELEMENT_TYPE_U2 => const Uint16Type(),
      ELEMENT_TYPE_I4 => const Int32Type(),
      ELEMENT_TYPE_U4 => const Uint32Type(),
      ELEMENT_TYPE_I8 => const Int64Type(),
      ELEMENT_TYPE_U8 => const Uint64Type(),
      ELEMENT_TYPE_R4 => const Float32Type(),
      ELEMENT_TYPE_R8 => const Float64Type(),
      ELEMENT_TYPE_STRING => const StringType(),
      ELEMENT_TYPE_CLASS => const NullReferenceType(),
      _ => throw WinmdException('Unknown type: $type'),
    };
  }();

  /// The entity that this constant value belongs to.
  late final parent = decode<HasConstant>(1);

  /// The constant value, interpreted according to [type].
  late final value = () {
    final blob = readBlob(2);
    return switch (type) {
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
      StringType() => Utf16StringValue(blob.readUtf16()),
      NullReferenceType() => null,
      final MetadataType type => throw WinmdException(
        'Unknown value type: $type',
      ),
    };
  }();

  @override
  String toString() => 'Constant(value: $value)';
}

@internal
final class ConstantCompanion extends RowCompanion<Constant> {
  const ConstantCompanion();

  @override
  Constant Function(MetadataIndex, int, int) get constructor => Constant.new;

  @override
  MetadataTable get table => MetadataTable.constant;
}

/// Extension methods for strongly-typed access to the underlying value of a
/// [Constant].
extension ConstantExtension on Constant {
  /// Returns the value as a [bool] if possible, otherwise `null`.
  bool? get valueAsBool => switch (value) {
    BoolValue(:final value) => value,
    _ => null,
  };

  /// Returns the value as a [double] if possible, otherwise `null`.
  double? get valueAsDouble => switch (value) {
    Float32Value(:final value) || Float64Value(:final value) => value,
    _ => null,
  };

  /// Returns the value as an [int] if possible, otherwise `null`.
  int? get valueAsInt => switch (value) {
    Int8Value(:final value) ||
    Uint8Value(:final value) ||
    Int16Value(:final value) ||
    Uint16Value(:final value) ||
    Int32Value(:final value) ||
    Uint32Value(:final value) ||
    Int64Value(:final value) ||
    Uint64Value(:final value) => value,
    _ => null,
  };

  /// Returns the value as a [String] if possible, otherwise `null`.
  String? get valueAsString => switch (value) {
    Utf8StringValue(:final value) || Utf16StringValue(:final value) => value,
    _ => null,
  };
}
