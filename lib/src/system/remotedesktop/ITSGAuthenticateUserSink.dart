// ITSGAuthenticateUserSink.dart

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

/// @nodoc
const IID_ITSGAuthenticateUserSink = '{2C3E2E73-A782-47F9-8DFB-77EE1ED27A03}';

/// {@category Interface}
/// {@category com}
class ITSGAuthenticateUserSink extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITSGAuthenticateUserSink(Pointer<COMObject> ptr) : super(ptr);

  int OnUserAuthenticated(
    Pointer<Utf16> userName,
    Pointer<Utf16> userDomain,
    int context,
    int userToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> userName,
            Pointer<Utf16> userDomain,
            IntPtr context,
            IntPtr userToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> userName,
            Pointer<Utf16> userDomain,
            int context,
            int userToken,
          )>()(
        ptr.ref.lpVtbl,
        userName,
        userDomain,
        context,
        userToken,
      );

  int OnUserAuthenticationFailed(
    int context,
    int genericErrorCode,
    int specificErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr context,
            Int32 genericErrorCode,
            Int32 specificErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int context,
            int genericErrorCode,
            int specificErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        context,
        genericErrorCode,
        specificErrorCode,
      );

  int ReauthenticateUser(
    int context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int context,
          )>()(
        ptr.ref.lpVtbl,
        context,
      );

  int DisconnectUser(
    int context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int context,
          )>()(
        ptr.ref.lpVtbl,
        context,
      );
}
