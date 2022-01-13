// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/ui/ISecurityInformation.dart';
import '../../security/directoryservices/callbacks.g.dart';
import '../../ui/controls/structs.g.dart'; // -----------------------------------------------------------------------

// dssec.dll
// -----------------------------------------------------------------------
final _dssec = DynamicLibrary.open('dssec.dll');

int DSCreateISecurityInfoObject(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppSI,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
) =>
    _DSCreateISecurityInfoObject(
      pwszObjectPath,
      pwszObjectClass,
      dwFlags,
      ppSI,
      pfnReadSD,
      pfnWriteSD,
      lpContext,
    );

late final _DSCreateISecurityInfoObject = _dssec.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  Uint32 dwFlags,
  Pointer<Pointer<COMObject>> ppSI,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  IntPtr lpContext,
),
    int Function(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppSI,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
)>('DSCreateISecurityInfoObject');

int DSCreateISecurityInfoObjectEx(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  Pointer<Utf16> pwszServer,
  Pointer<Utf16> pwszUserName,
  Pointer<Utf16> pwszPassword,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppSI,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
) =>
    _DSCreateISecurityInfoObjectEx(
      pwszObjectPath,
      pwszObjectClass,
      pwszServer,
      pwszUserName,
      pwszPassword,
      dwFlags,
      ppSI,
      pfnReadSD,
      pfnWriteSD,
      lpContext,
    );

late final _DSCreateISecurityInfoObjectEx = _dssec.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  Pointer<Utf16> pwszServer,
  Pointer<Utf16> pwszUserName,
  Pointer<Utf16> pwszPassword,
  Uint32 dwFlags,
  Pointer<Pointer<COMObject>> ppSI,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  IntPtr lpContext,
),
    int Function(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  Pointer<Utf16> pwszServer,
  Pointer<Utf16> pwszUserName,
  Pointer<Utf16> pwszPassword,
  int dwFlags,
  Pointer<Pointer<COMObject>> ppSI,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
)>('DSCreateISecurityInfoObjectEx');

int DSCreateSecurityPage(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  int dwFlags,
  Pointer<IntPtr> phPage,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
) =>
    _DSCreateSecurityPage(
      pwszObjectPath,
      pwszObjectClass,
      dwFlags,
      phPage,
      pfnReadSD,
      pfnWriteSD,
      lpContext,
    );

late final _DSCreateSecurityPage = _dssec.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  Uint32 dwFlags,
  Pointer<IntPtr> phPage,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  IntPtr lpContext,
),
    int Function(
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  int dwFlags,
  Pointer<IntPtr> phPage,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
)>('DSCreateSecurityPage');

int DSEditSecurity(
  int hwndOwner,
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  int dwFlags,
  Pointer<Utf16> pwszCaption,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
) =>
    _DSEditSecurity(
      hwndOwner,
      pwszObjectPath,
      pwszObjectClass,
      dwFlags,
      pwszCaption,
      pfnReadSD,
      pfnWriteSD,
      lpContext,
    );

late final _DSEditSecurity = _dssec.lookupFunction<
    Int32 Function(
  IntPtr hwndOwner,
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  Uint32 dwFlags,
  Pointer<Utf16> pwszCaption,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  IntPtr lpContext,
),
    int Function(
  int hwndOwner,
  Pointer<Utf16> pwszObjectPath,
  Pointer<Utf16> pwszObjectClass,
  int dwFlags,
  Pointer<Utf16> pwszCaption,
  Pointer<NativeFunction<PFNREADOBJECTSECURITY>> pfnReadSD,
  Pointer<NativeFunction<PFNWRITEOBJECTSECURITY>> pfnWriteSD,
  int lpContext,
)>('DSEditSecurity');
