import 'dart:convert';

import 'utils.dart';

/// Represents a recorded native memory allocation.
///
/// An [Allocation] instance stores metadata describing a single allocation
/// event, including:
/// - The raw memory [address]
/// - The allocated [size] in bytes
/// - The allocation [type] (e.g., `Uint8`, `GUID`)
/// - The allocation [timestamp]
/// - The captured allocation [stack] trace
final class Allocation {
  /// Creates an immutable allocation record.
  const Allocation({
    required this.address,
    required this.size,
    required this.stack,
    required this.timestamp,
    required this.type,
  });

  /// Constructs an [Allocation] from a JSON string.
  ///
  /// The JSON must decode to an object containing the following fields:
  /// - `address` → `int`
  /// - `size` → `int`
  /// - `type` → `String`
  /// - `stack` → `String`
  /// - `timestamp` → ISO-8601 `String`
  factory Allocation.fromJson(String json) {
    final decoded = _jsonDecoder.convert(json);

    if (decoded is! Map<String, dynamic>) {
      throw FormatException(
        'Allocation JSON must decode to an object, got $decoded.',
        json,
      );
    }

    final map = decoded;

    T expect<T>(String key) {
      if (!map.containsKey(key)) {
        throw FormatException(
          'Missing required field "$key" in Allocation JSON.',
          json,
        );
      }
      final value = map[key];
      if (value is! T) {
        throw FormatException('Field "$key" must be $T but was $value.', json);
      }
      return value;
    }

    final address = expect<int>('address');
    final size = expect<int>('size');
    final type = expect<String>('type');
    final stack = expect<String>('stack');
    final timestampRaw = expect<String>('timestamp');

    final DateTime timestamp;
    try {
      timestamp = DateTime.parse(timestampRaw);
    } catch (_) {
      throw FormatException(
        'Invalid ISO-8601 timestamp: "$timestampRaw".',
        json,
      );
    }

    return Allocation(
      address: address,
      size: size,
      type: type,
      timestamp: timestamp,
      stack: stack,
    );
  }

  /// Memory address of the allocation.
  final int address;

  /// Size of the allocation in bytes.
  final int size;

  /// Stack trace captured at allocation time.
  ///
  /// This is typically formatted and filtered to remove internal frames
  /// before presentation.
  final String stack;

  /// Timestamp indicating when the allocation occurred.
  final DateTime timestamp;

  /// Type of the allocation, such as `Uint8`, `GUID`, etc.
  final String type;

  /// JSON encoder used for serialization.
  static const _jsonEncoder = JsonEncoder.withIndent('  ');

  /// JSON decoder used for deserialization.
  static const _jsonDecoder = JsonDecoder();

  /// Serializes this allocation record into JSON.
  ///
  /// The output is formatted with indentation for readability and is
  /// guaranteed to be compatible with [Allocation.fromJson].
  String toJson() => _jsonEncoder.convert(<String, Object?>{
    'address': address,
    'type': type,
    'size': size,
    'timestamp': timestamp.toIso8601String(),
    'stack': stack,
  });

  @override
  String toString() =>
      '''
━━━━━━━━━━━━ Allocation ━━━━━━━━━━━━
Address   : ${formatAddress(address)}
Type      : $type
Size      : ${formatBytes(size)}
Timestamp : ${timestamp.toIso8601String()}
Stack:
${indent(stack, 2)}''';
}
