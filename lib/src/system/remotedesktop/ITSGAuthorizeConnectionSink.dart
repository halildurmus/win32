// ITSGAuthorizeConnectionSink.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ITSGAuthorizeConnectionSink =
    '{C27ECE33-7781-4318-98EF-1CF2DA7B7005}';

/// {@category Interface}
/// {@category com}
class ITSGAuthorizeConnectionSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITSGAuthorizeConnectionSink(Pointer<COMObject> ptr) : super(ptr);

  int OnConnectionAuthorized(
    int hrIn,
    GUID mainSessionId,
    int cbSoHResponse,
    Pointer<Uint8> pbSoHResponse,
    int idleTimeout,
    int sessionTimeout,
    int sessionTimeoutAction,
    int trustClass,
    Pointer<Uint32> policyAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrIn,
            GUID mainSessionId,
            Uint32 cbSoHResponse,
            Pointer<Uint8> pbSoHResponse,
            Uint32 idleTimeout,
            Uint32 sessionTimeout,
            Int32 sessionTimeoutAction,
            Int32 trustClass,
            Pointer<Uint32> policyAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrIn,
            GUID mainSessionId,
            int cbSoHResponse,
            Pointer<Uint8> pbSoHResponse,
            int idleTimeout,
            int sessionTimeout,
            int sessionTimeoutAction,
            int trustClass,
            Pointer<Uint32> policyAttributes,
          )>()(
        ptr.ref.lpVtbl,
        hrIn,
        mainSessionId,
        cbSoHResponse,
        pbSoHResponse,
        idleTimeout,
        sessionTimeout,
        sessionTimeoutAction,
        trustClass,
        policyAttributes,
      );
}
