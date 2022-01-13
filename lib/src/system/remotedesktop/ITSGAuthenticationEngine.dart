// ITSGAuthenticationEngine.dart

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
import '../../system/remotedesktop/ITSGAuthenticateUserSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITSGAuthenticationEngine = '{9EE3E5BF-04AB-4691-998C-D7F622321A56}';

/// {@category Interface}
/// {@category com}
class ITSGAuthenticationEngine extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITSGAuthenticationEngine(Pointer<COMObject> ptr) : super(ptr);

  int AuthenticateUser(
    GUID mainSessionId,
    Pointer<Uint8> cookieData,
    int numCookieBytes,
    int context,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID mainSessionId,
            Pointer<Uint8> cookieData,
            Uint32 numCookieBytes,
            IntPtr context,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID mainSessionId,
            Pointer<Uint8> cookieData,
            int numCookieBytes,
            int context,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        mainSessionId,
        cookieData,
        numCookieBytes,
        context,
        pSink,
      );

  int CancelAuthentication(
    GUID mainSessionId,
    int context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID mainSessionId,
            IntPtr context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID mainSessionId,
            int context,
          )>()(
        ptr.ref.lpVtbl,
        mainSessionId,
        context,
      );
}
