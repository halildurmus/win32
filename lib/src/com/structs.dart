import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class ASSEMBLYDATA extends Struct {
  @USHORT()
  external int usMajorVersion;

  @USHORT()
  external int usMinorVersion;

  @USHORT()
  external int usBuildNumber;

  @USHORT()
  external int usRevisionNumber;

  external Pointer<Utf16> szLocale;

  @ULONG()
  external int cbLocale;

  external Pointer<DWORD> rProcessor;

  @ULONG()
  external int ulProcessor;

  external Pointer<OSINFO> rOS;

  @ULONG()
  external int ulOS;
}

class OSINFO extends Struct {
  @DWORD()
  external int dwOSPlatformId;
  @DWORD()
  external int dwOSMajorVersion;
  @DWORD()
  external int dwOSMinorVersion;
}
