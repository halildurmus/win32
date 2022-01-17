/// Information about the specified registry key.
class RegistryKeyInfo {
  final String className;
  final int subKeyCount;
  final int subKeyNameMaxLength;
  final int subKeyClassNameMaxLength;
  final int valuesCount;
  final int valueNameMaxLength;
  final int valueDataMaxSizeInBytes;
  final int securityDescriptorLength;
  final DateTime? lastWriteTime;

  const RegistryKeyInfo(
      this.className,
      this.subKeyCount,
      this.subKeyNameMaxLength,
      this.subKeyClassNameMaxLength,
      this.valuesCount,
      this.valueNameMaxLength,
      this.valueDataMaxSizeInBytes,
      this.securityDescriptorLength,
      this.lastWriteTime);
}
