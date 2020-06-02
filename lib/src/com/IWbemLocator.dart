import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';
import 'comerrors.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

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
    Pointer pCtx,
    Pointer<IntPtr> ppNamespace);
typedef ConnectServer_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strNetworkResource,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    int lSecurityFlags,
    Pointer<Utf16> strAuthority,
    Pointer pCtx,
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
          Pointer pCtx,
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
        CLSCTX_INPROC_SERVER,
        GUID.fromString(IID_IWbemLocator).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw COMException(hr);
    return WbemLocator(ptr);
  }

  WbemLocator(this.ptr) : super(ptr);
}
