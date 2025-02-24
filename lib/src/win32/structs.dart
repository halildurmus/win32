// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

base class ASSEMBLYMETADATA extends Struct {
  @Uint16()
  external int usMajorVersion;

  @Uint16()
  external int usMinorVersion;

  @Uint16()
  external int usBuildNumber;

  @Uint16()
  external int usRevisionNumber;

  external PWSTR szLocale;

  @Uint32()
  external int cbLocale;

  external Pointer<Uint32> rProcessor;

  @Uint32()
  external int ulProcessor;

  external Pointer<OSINFO> rOS;

  @Uint32()
  external int ulOS;
}

typedef BOOL = Int32;

base class COR_FIELD_OFFSET extends Struct {
  @Uint32()
  external int ridOfField;

  @Uint32()
  external int ulOffset;
}

typedef HANDLE = IntPtr;
typedef HKEY = IntPtr;

extension type const HRESULT(int code) implements int {}

base class OSINFO extends Struct {
  @Uint32()
  external int dwOSPlatformId;

  @Uint32()
  external int dwOSMajorVersion;

  @Uint32()
  external int dwOSMinorVersion;
}

typedef PCWSTR = Pointer<Utf16>;
typedef PWSTR = Pointer<Utf16>;
