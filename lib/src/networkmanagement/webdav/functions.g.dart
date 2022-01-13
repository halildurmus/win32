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
import '../../networkmanagement/webdav/callbacks.g.dart'; // -----------------------------------------------------------------------

// netapi32.dll
// -----------------------------------------------------------------------
final _netapi32 = DynamicLibrary.open('netapi32.dll');

int DavAddConnection(
  Pointer<IntPtr> ConnectionHandle,
  Pointer<Utf16> RemoteName,
  Pointer<Utf16> UserName,
  Pointer<Utf16> Password,
  Pointer<Uint8> ClientCert,
  int CertSize,
) =>
    _DavAddConnection(
      ConnectionHandle,
      RemoteName,
      UserName,
      Password,
      ClientCert,
      CertSize,
    );

late final _DavAddConnection = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> ConnectionHandle,
  Pointer<Utf16> RemoteName,
  Pointer<Utf16> UserName,
  Pointer<Utf16> Password,
  Pointer<Uint8> ClientCert,
  Uint32 CertSize,
),
    int Function(
  Pointer<IntPtr> ConnectionHandle,
  Pointer<Utf16> RemoteName,
  Pointer<Utf16> UserName,
  Pointer<Utf16> Password,
  Pointer<Uint8> ClientCert,
  int CertSize,
)>('DavAddConnection');

int DavDeleteConnection(
  int ConnectionHandle,
) =>
    _DavDeleteConnection(
      ConnectionHandle,
    );

late final _DavDeleteConnection = _netapi32.lookupFunction<
    Uint32 Function(
  IntPtr ConnectionHandle,
),
    int Function(
  int ConnectionHandle,
)>('DavDeleteConnection');

int DavFlushFile(
  int hFile,
) =>
    _DavFlushFile(
      hFile,
    );

late final _DavFlushFile = _netapi32.lookupFunction<
    Uint32 Function(
  IntPtr hFile,
),
    int Function(
  int hFile,
)>('DavFlushFile');

int DavGetExtendedError(
  int hFile,
  Pointer<Uint32> ExtError,
  Pointer<Utf16> ExtErrorString,
  Pointer<Uint32> cChSize,
) =>
    _DavGetExtendedError(
      hFile,
      ExtError,
      ExtErrorString,
      cChSize,
    );

late final _DavGetExtendedError = _netapi32.lookupFunction<
    Uint32 Function(
  IntPtr hFile,
  Pointer<Uint32> ExtError,
  Pointer<Utf16> ExtErrorString,
  Pointer<Uint32> cChSize,
),
    int Function(
  int hFile,
  Pointer<Uint32> ExtError,
  Pointer<Utf16> ExtErrorString,
  Pointer<Uint32> cChSize,
)>('DavGetExtendedError');

int DavGetHTTPFromUNCPath(
  Pointer<Utf16> UncPath,
  Pointer<Utf16> Url,
  Pointer<Uint32> lpSize,
) =>
    _DavGetHTTPFromUNCPath(
      UncPath,
      Url,
      lpSize,
    );

late final _DavGetHTTPFromUNCPath = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UncPath,
  Pointer<Utf16> Url,
  Pointer<Uint32> lpSize,
),
    int Function(
  Pointer<Utf16> UncPath,
  Pointer<Utf16> Url,
  Pointer<Uint32> lpSize,
)>('DavGetHTTPFromUNCPath');

int DavGetUNCFromHTTPPath(
  Pointer<Utf16> Url,
  Pointer<Utf16> UncPath,
  Pointer<Uint32> lpSize,
) =>
    _DavGetUNCFromHTTPPath(
      Url,
      UncPath,
      lpSize,
    );

late final _DavGetUNCFromHTTPPath = _netapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Url,
  Pointer<Utf16> UncPath,
  Pointer<Uint32> lpSize,
),
    int Function(
  Pointer<Utf16> Url,
  Pointer<Utf16> UncPath,
  Pointer<Uint32> lpSize,
)>('DavGetUNCFromHTTPPath');

// -----------------------------------------------------------------------
// davclnt.dll
// -----------------------------------------------------------------------
final _davclnt = DynamicLibrary.open('davclnt.dll');

int DavCancelConnectionsToServer(
  Pointer<Utf16> lpName,
  int fForce,
) =>
    _DavCancelConnectionsToServer(
      lpName,
      fForce,
    );

late final _DavCancelConnectionsToServer = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Int32 fForce,
),
    int Function(
  Pointer<Utf16> lpName,
  int fForce,
)>('DavCancelConnectionsToServer');

int DavGetTheLockOwnerOfTheFile(
  Pointer<Utf16> FileName,
  Pointer<Utf16> LockOwnerName,
  Pointer<Uint32> LockOwnerNameLengthInBytes,
) =>
    _DavGetTheLockOwnerOfTheFile(
      FileName,
      LockOwnerName,
      LockOwnerNameLengthInBytes,
    );

late final _DavGetTheLockOwnerOfTheFile = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> LockOwnerName,
  Pointer<Uint32> LockOwnerNameLengthInBytes,
),
    int Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> LockOwnerName,
  Pointer<Uint32> LockOwnerNameLengthInBytes,
)>('DavGetTheLockOwnerOfTheFile');

int DavInvalidateCache(
  Pointer<Utf16> URLName,
) =>
    _DavInvalidateCache(
      URLName,
    );

late final _DavInvalidateCache = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> URLName,
),
    int Function(
  Pointer<Utf16> URLName,
)>('DavInvalidateCache');

int DavRegisterAuthCallback(
  Pointer<NativeFunction<PFNDAVAUTHCALLBACK>> CallBack,
  int Version,
) =>
    _DavRegisterAuthCallback(
      CallBack,
      Version,
    );

late final _DavRegisterAuthCallback = _davclnt.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<PFNDAVAUTHCALLBACK>> CallBack,
  Uint32 Version,
),
    int Function(
  Pointer<NativeFunction<PFNDAVAUTHCALLBACK>> CallBack,
  int Version,
)>('DavRegisterAuthCallback');

void DavUnregisterAuthCallback(
  int hCallback,
) =>
    _DavUnregisterAuthCallback(
      hCallback,
    );

late final _DavUnregisterAuthCallback = _davclnt.lookupFunction<
    Void Function(
  Uint32 hCallback,
),
    void Function(
  int hCallback,
)>('DavUnregisterAuthCallback');
