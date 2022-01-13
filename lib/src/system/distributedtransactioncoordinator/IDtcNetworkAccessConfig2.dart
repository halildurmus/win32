// IDtcNetworkAccessConfig2.dart

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

import '../../system/distributedtransactioncoordinator/IDtcNetworkAccessConfig.dart';
import '../../foundation/structs.g.dart';
import '../../system/distributedtransactioncoordinator/structs.g.dart';

/// @nodoc
const IID_IDtcNetworkAccessConfig2 = '{A7AA013B-EB7D-4F42-B41C-B2DEC09AE034}';

/// {@category Interface}
/// {@category com}
class IDtcNetworkAccessConfig2 extends IDtcNetworkAccessConfig {
  // vtable begins at 16, is 6 entries long.
  IDtcNetworkAccessConfig2(Pointer<COMObject> ptr) : super(ptr);

  int GetNetworkInboundAccess(
    Pointer<Int32> pbInbound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbInbound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbInbound,
          )>()(
        ptr.ref.lpVtbl,
        pbInbound,
      );

  int GetNetworkOutboundAccess(
    Pointer<Int32> pbOutbound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbOutbound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbOutbound,
          )>()(
        ptr.ref.lpVtbl,
        pbOutbound,
      );

  int SetNetworkInboundAccess(
    int bInbound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bInbound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bInbound,
          )>()(
        ptr.ref.lpVtbl,
        bInbound,
      );

  int SetNetworkOutboundAccess(
    int bOutbound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bOutbound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bOutbound,
          )>()(
        ptr.ref.lpVtbl,
        bOutbound,
      );

  int GetAuthenticationLevel(
    Pointer<Int32> pAuthLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pAuthLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pAuthLevel,
          )>()(
        ptr.ref.lpVtbl,
        pAuthLevel,
      );

  int SetAuthenticationLevel(
    int AuthLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AuthLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AuthLevel,
          )>()(
        ptr.ref.lpVtbl,
        AuthLevel,
      );
}
