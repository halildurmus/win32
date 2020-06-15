// IWbemLocator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IUnknown.dart';

const CLSID_WbemLocator = '{4590f811-1d3a-11d0-891f-00aa004b2e24}';
const IID_IWbemLocator = '{dc12a687-737f-11cf-884d-00aa004b2e24}';

typedef ConnectServer_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strNetworkResource,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    Int32 lSecurityFlags,
    Pointer<Utf16> strAuthority,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppNamespace);
typedef ConnectServer_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strNetworkResource,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    int lSecurityFlags,
    Pointer<Utf16> strAuthority,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppNamespace);

class IWbemLocator extends IUnknown {
  // vtable begins at 3, ends at 3

  @override
  Pointer<COMObject> ptr;

  IWbemLocator(this.ptr) : super(ptr);

  int ConnectServer(
          Pointer<Utf16> strNetworkResource,
          Pointer<Utf16> strUser,
          Pointer<Utf16> strPassword,
          Pointer<Utf16> strLocale,
          int lSecurityFlags,
          Pointer<Utf16> strAuthority,
          Pointer<COMObject> pCtx,
          Pointer<IntPtr> ppNamespace) =>
      Pointer<NativeFunction<ConnectServer_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<ConnectServer_Dart>()(
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

class WbemLocator extends IWbemLocator {
  @override
  Pointer<COMObject> ptr;

  factory WbemLocator.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_WbemLocator).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_IWbemLocator).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw WindowsException(hr);
    return WbemLocator(ptr);
  }

  WbemLocator(this.ptr) : super(ptr);
}
