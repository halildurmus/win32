// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../type_aliases.dart';

/// Stores the offset, within a class, of the specified field.
class COR_FIELD_OFFSET extends Struct {
  /// An mdFieldDef metadata token that represents the field.
  @mdFieldDef()
  external int ridOfField;

  /// The field's offset within its class.
  @ULONG32()
  external int ulOffset;
}

/// Contains information about the referenced assembly, including its version
/// and its level of support for locales, processors, and operating systems.
class ASSEMBLYDATA extends Struct {
  /// The major version number of the referenced assembly. This value cannot be
  /// zero. If all the bits are set, the major version is not specified.
  @USHORT()
  external int usMajorVersion;

  /// The minor version number of the referenced assembly. This value cannot be
  /// zero. If all the bits are set, the minor version is not specified.
  @USHORT()
  external int usMinorVersion;

  /// The build number of the referenced assembly. This value cannot be zero. If
  /// all the bits are set, the build number is not specified.
  @USHORT()
  external int usBuildNumber;

  /// The revision number of the referenced assembly. This value cannot be zero.
  /// If all the bits are set, the revision number is not specified.
  @USHORT()
  external int usRevisionNumber;

  /// A list of locale names conforming to the RFC1766 specification, separated
  /// by semicolons, specifying the locales supported by the referenced
  /// assembly. A null value indicates locale independence.
  external Pointer<Utf16> szLocale;

  /// The size in wide characters of [szLocale].
  @ULONG()
  external int cbLocale;

  /// An array of identifiers for the processor types that are supported by the
  /// referenced assembly. A null value indicates processor independence.
  external Pointer<DWORD> rdwProcessor;

  /// The length of the [rdwProcessor] array.
  @ULONG()
  external int ulProcessor;

  /// An array of [OSINFO] instances specifying the operating systems that are
  /// supported by the referenced assembly. A NULL value indicates
  /// operating-system independence.
  external Pointer<OSINFO> rOS;

  /// The length of the [rOS] array.
  @ULONG()
  external int ulOS;
}

/// Contains details about the operating system for an assembly or module.
class OSINFO extends Struct {
  /// One of the identifier values defined by the Microsoft Windows platform
  /// function GetVersionEx.
  @DWORD()
  external int dwOSPlatformId;

  /// The operating system major version, or a null value to indicate any
  /// version.
  @DWORD()
  external int dwOSMajorVersion;

  /// The operating system minor version, or a null value to indicate any
  /// version.
  @DWORD()
  external int dwOSMinorVersion;
}
