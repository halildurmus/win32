// IWbemLocator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_WbemLocator = '{4590f811-1d3a-11d0-891f-00aa004b2e24}';

/// @nodoc
const IID_IWbemLocator = '{dc12a687-737f-11cf-884d-00aa004b2e24}';

typedef _ConnectServer_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strNetworkResource,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    Int32 lSecurityFlags,
    Pointer<Utf16> strAuthority,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppNamespace);
typedef _ConnectServer_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strNetworkResource,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    int lSecurityFlags,
    Pointer<Utf16> strAuthority,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppNamespace);

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
          Pointer<IntPtr> ppNamespace) =>
      Pointer<NativeFunction<_ConnectServer_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
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
    final ptr = COMObject.allocate().addressOf;

    final hr = CoCreateInstance(GUID.fromString(CLSID_WbemLocator).addressOf,
        nullptr, CLSCTX_ALL, GUID.fromString(IID_IWbemLocator).addressOf, ptr);

    if (FAILED(hr)) throw WindowsException(hr);
    return WbemLocator(ptr);
  }
}
