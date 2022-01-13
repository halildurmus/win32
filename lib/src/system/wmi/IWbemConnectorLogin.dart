// IWbemConnectorLogin.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/IWbemContext.dart';

/// @nodoc
const IID_IWbemConnectorLogin = '{D8EC9CB1-B135-4F10-8B1B-C7188BB0D186}';

/// {@category Interface}
/// {@category com}
class IWbemConnectorLogin extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemConnectorLogin(Pointer<COMObject> ptr) : super(ptr);

  int ConnectorLogin(
    Pointer<Utf16> wszNetworkResource,
    Pointer<Utf16> wszPreferredLocale,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<GUID> riid,
    Pointer<Pointer> pInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszNetworkResource,
            Pointer<Utf16> wszPreferredLocale,
            Int32 lFlags,
            Pointer<COMObject> pCtx,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszNetworkResource,
            Pointer<Utf16> wszPreferredLocale,
            int lFlags,
            Pointer<COMObject> pCtx,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
          )>()(
        ptr.ref.lpVtbl,
        wszNetworkResource,
        wszPreferredLocale,
        lFlags,
        pCtx,
        riid,
        pInterface,
      );
}
