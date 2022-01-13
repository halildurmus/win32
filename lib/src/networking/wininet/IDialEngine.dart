// IDialEngine.dart

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
import '../../networking/wininet/IDialEventSink.dart';

/// @nodoc
const IID_IDialEngine = '{39FD782B-7905-40D5-9148-3C9B190423D5}';

/// {@category Interface}
/// {@category com}
class IDialEngine extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDialEngine(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pwzConnectoid,
    Pointer<COMObject> pIDES,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzConnectoid,
            Pointer<COMObject> pIDES,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzConnectoid,
            Pointer<COMObject> pIDES,
          )>()(
        ptr.ref.lpVtbl,
        pwzConnectoid,
        pIDES,
      );

  int GetProperty(
    Pointer<Utf16> pwzProperty,
    Pointer<Utf16> pwzValue,
    int dwBufSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzProperty,
            Pointer<Utf16> pwzValue,
            Uint32 dwBufSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzProperty,
            Pointer<Utf16> pwzValue,
            int dwBufSize,
          )>()(
        ptr.ref.lpVtbl,
        pwzProperty,
        pwzValue,
        dwBufSize,
      );

  int SetProperty(
    Pointer<Utf16> pwzProperty,
    Pointer<Utf16> pwzValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzProperty,
            Pointer<Utf16> pwzValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzProperty,
            Pointer<Utf16> pwzValue,
          )>()(
        ptr.ref.lpVtbl,
        pwzProperty,
        pwzValue,
      );

  int Dial() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int HangUp() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetConnectedState(
    Pointer<Uint32> pdwState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwState,
          )>()(
        ptr.ref.lpVtbl,
        pdwState,
      );

  int GetConnectHandle(
    Pointer<IntPtr> pdwHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pdwHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pdwHandle,
          )>()(
        ptr.ref.lpVtbl,
        pdwHandle,
      );
}
