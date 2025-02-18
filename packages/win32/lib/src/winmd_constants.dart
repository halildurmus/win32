// Enums and constants used for Windows Metadata

// ignore_for_file: constant_identifier_names

/// @nodoc
const CLSID_CorMetaDataDispenser = '{E5CB7A31-7512-11D2-89CE-0080C792E5D8}';

/// Contains flag values that control metadata behavior upon opening manifest
/// files.
///
/// {@category enum}
class CorOpenFlags {
  /// Indicates that the file should be opened for reading only.
  @Deprecated('Use ofRead instead')
  static const ofRead = 0x00000000;

  /// Indicates that the file should be opened for writing.
  @Deprecated('Use ofWrite instead')
  static const ofWrite = 0x00000001;

  /// A mask for reading and writing.
  @Deprecated('Use ofReadWriteMask instead')
  static const ofReadWriteMask = 0x00000001;

  /// Indicates that the file should be read into memory. Metadata should
  /// maintain its own copy.
  @Deprecated('Use ofCopyMemory instead')
  static const ofCopyMemory = 0x00000002;

  /// Obsolete. This flag is ignored.
  @Deprecated('Use ofCacheImage instead')
  static const ofCacheImage = 0x00000004;

  /// Obsolete. This flag is ignored.
  @Deprecated('Use ofManifestMetadata instead')
  static const ofManifestMetadata = 0x00000008;

  /// Indicates that the file should be opened for reading, and that a call to
  /// QueryInterface for an IMetaDataEmit cannot be made.
  @Deprecated('Use ofReadOnly instead')
  static const ofReadOnly = 0x00000010;

  /// Indicates that the memory was allocated using a call to CoTaskMemAlloc and
  /// will be freed by the metadata.
  @Deprecated('Use ofTakeOwnership instead')
  static const ofTakeOwnership = 0x00000020;

  /// Obsolete. This flag is ignored.
  @Deprecated('Use ofNoTypeLib instead')
  static const ofNoTypeLib = 0x00000080;

  /// Indicates that automatic transforms of .winmd files should be disabled. In
  /// other words, the projection of a Windows Runtime type to a .NET Framework
  /// type should be disabled.
  @Deprecated('Use ofNoTransform instead')
  static const ofNoTransform = 0x00001000;

  /// Reserved for internal use.
  @Deprecated('Use ofReserved1 instead')
  static const ofReserved1 = 0x00000100;

  /// Reserved for internal use.
  @Deprecated('Use ofReserved2 instead')
  static const ofReserved2 = 0x00000200;

  /// Reserved for internal use.
  @Deprecated('Use ofReserved instead')
  static const ofReserved = 0xffffff40;
}

/// Indicates that the file should be opened for reading only.
const ofRead = 0x00000000;

/// Indicates that the file should be opened for writing.
const ofWrite = 0x00000001;

/// A mask for reading and writing.
const ofReadWriteMask = 0x00000001;

/// Indicates that the file should be read into memory. Metadata should
/// maintain its own copy.
const ofCopyMemory = 0x00000002;

/// Obsolete. This flag is ignored.
const ofCacheImage = 0x00000004;

/// Obsolete. This flag is ignored.
const ofManifestMetadata = 0x00000008;

/// Indicates that the file should be opened for reading, and that a call to
/// QueryInterface for an IMetaDataEmit cannot be made.
const ofReadOnly = 0x00000010;

/// Indicates that the memory was allocated using a call to CoTaskMemAlloc and
/// will be freed by the metadata.
const ofTakeOwnership = 0x00000020;

/// Obsolete. This flag is ignored.
const ofNoTypeLib = 0x00000080;

/// Indicates that automatic transforms of .winmd files should be disabled. In
/// other words, the projection of a Windows Runtime type to a .NET Framework
/// type should be disabled.
const ofNoTransform = 0x00001000;

/// Reserved for internal use.
const ofReserved1 = 0x00000100;

/// Reserved for internal use.
const ofReserved2 = 0x00000200;

/// Reserved for internal use.
const ofReserved = 0xffffff40;
