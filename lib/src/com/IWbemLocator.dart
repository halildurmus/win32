// IWbemLocator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';

import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_WbemLocator = '{4590F811-1D3A-11D0-891F-00AA004B2E24}';

/// @nodoc
const IID_IWbemLocator = '{DC12A687-737F-11CF-884D-00AA004B2E24}';

typedef _ConnectServer_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strNetworkResource,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    Int32 lSecurityFlags,
    Pointer<Utf16> strAuthority,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppNamespace);
typedef _ConnectServer_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strNetworkResource,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    int lSecurityFlags,
    Pointer<Utf16> strAuthority,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppNamespace);

/// {@category Interface}
/// {@category com}
class IWbemLocator extends IUnknown {
  // vtable begins at 3, ends at 3

  IWbemLocator(Pointer<COMObject> ptr) : super(ptr);

  int ConnectServer(
          Pointer<Utf16> strNetworkResource,
          Pointer<Utf16> strUser,
          Pointer<Utf16> strPassword,
          Pointer<Utf16> strLocale,
          int lSecurityFlags,
          Pointer<Utf16> strAuthority,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppNamespace) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_ConnectServer_Native>>>()
              .value
              .asFunction<_ConnectServer_Dart>()(
          ptr.ref.lpVtbl,
          strNetworkResource,
          strUser,
          strPassword,
          strLocale,
          lSecurityFlags,
          strAuthority,
          pCtx,
          ppNamespace);
}

/// {@category com}
class WbemLocator extends IWbemLocator {
  WbemLocator(Pointer<COMObject> ptr) : super(ptr);

  factory WbemLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
