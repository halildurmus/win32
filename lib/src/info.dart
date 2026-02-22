/// Describes metadata about a registry key and its associated attributes.
class RegistryKeyInfo {
  /// Constructs a [RegistryKeyInfo] instance with detailed information about
  /// the specified registry key attributes.
  const RegistryKeyInfo({
    required this.className,
    required this.subKeyCount,
    required this.subKeyNameMaxLength,
    required this.subKeyClassNameMaxLength,
    required this.valuesCount,
    required this.valueNameMaxLength,
    required this.valueDataMaxSizeInBytes,
    required this.securityDescriptorLength,
    required this.lastWriteTime,
  });

  /// The class name associated with the registry key.
  final String className;

  /// The number of subkeys contained within this registry key.
  final int subKeyCount;

  /// The maximum length, in characters, of the subkey names.
  final int subKeyNameMaxLength;

  /// The maximum length, in characters, of the subkey class names.
  final int subKeyClassNameMaxLength;

  /// The number of values directly associated with this registry key.
  final int valuesCount;

  /// The maximum length, in characters, of the value names.
  final int valueNameMaxLength;

  /// The maximum size, in bytes, of the value data entries under this key.
  final int valueDataMaxSizeInBytes;

  /// The size, in bytes, of the security descriptor associated with this key.
  final int securityDescriptorLength;

  /// The date and time of the last modification to this registry key.
  final DateTime? lastWriteTime;
}
