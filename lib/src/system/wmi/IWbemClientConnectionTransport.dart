// IWbemClientConnectionTransport.dart

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
import '../../system/wmi/IWbemCallResult.dart';
import '../../system/wmi/IWbemObjectSink.dart';

/// @nodoc
const IID_IWbemClientConnectionTransport =
    '{A889C72A-FCC1-4A9E-AF61-ED071333FB5B}';

/// {@category Interface}
/// {@category com}
class IWbemClientConnectionTransport extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWbemClientConnectionTransport(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> strAddressType,
    int dwBinaryAddressLength,
    Pointer<Uint8> abBinaryAddress,
    Pointer<Utf16> strObject,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<GUID> riid,
    Pointer<Pointer> pInterface,
    Pointer<Pointer<COMObject>> pCallRes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strAddressType,
            Uint32 dwBinaryAddressLength,
            Pointer<Uint8> abBinaryAddress,
            Pointer<Utf16> strObject,
            Pointer<Utf16> strUser,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strLocale,
            Int32 lFlags,
            Pointer<COMObject> pCtx,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
            Pointer<Pointer<COMObject>> pCallRes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strAddressType,
            int dwBinaryAddressLength,
            Pointer<Uint8> abBinaryAddress,
            Pointer<Utf16> strObject,
            Pointer<Utf16> strUser,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strLocale,
            int lFlags,
            Pointer<COMObject> pCtx,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
            Pointer<Pointer<COMObject>> pCallRes,
          )>()(
        ptr.ref.lpVtbl,
        strAddressType,
        dwBinaryAddressLength,
        abBinaryAddress,
        strObject,
        strUser,
        strPassword,
        strLocale,
        lFlags,
        pCtx,
        riid,
        pInterface,
        pCallRes,
      );

  int OpenAsync(
    Pointer<Utf16> strAddressType,
    int dwBinaryAddressLength,
    Pointer<Uint8> abBinaryAddress,
    Pointer<Utf16> strObject,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<GUID> riid,
    Pointer<COMObject> pResponseHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strAddressType,
            Uint32 dwBinaryAddressLength,
            Pointer<Uint8> abBinaryAddress,
            Pointer<Utf16> strObject,
            Pointer<Utf16> strUser,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strLocale,
            Int32 lFlags,
            Pointer<COMObject> pCtx,
            Pointer<GUID> riid,
            Pointer<COMObject> pResponseHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strAddressType,
            int dwBinaryAddressLength,
            Pointer<Uint8> abBinaryAddress,
            Pointer<Utf16> strObject,
            Pointer<Utf16> strUser,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strLocale,
            int lFlags,
            Pointer<COMObject> pCtx,
            Pointer<GUID> riid,
            Pointer<COMObject> pResponseHandler,
          )>()(
        ptr.ref.lpVtbl,
        strAddressType,
        dwBinaryAddressLength,
        abBinaryAddress,
        strObject,
        strUser,
        strPassword,
        strLocale,
        lFlags,
        pCtx,
        riid,
        pResponseHandler,
      );

  int Cancel(
    int lFlags,
    Pointer<COMObject> pHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pHandler,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pHandler,
      );
}
