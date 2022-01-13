// IInternetProtocol.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/urlmon/IInternetProtocolRoot.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetProtocol = '{79EAC9E4-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetProtocol extends IInternetProtocolRoot {
  // vtable begins at 9, is 4 entries long.
  IInternetProtocol(Pointer<COMObject> ptr) : super(ptr);

  int Read(
    Pointer pv,
    int cb,
    Pointer<Uint32> pcbRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pv,
            Uint32 cb,
            Pointer<Uint32> pcbRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pv,
            int cb,
            Pointer<Uint32> pcbRead,
          )>()(
        ptr.ref.lpVtbl,
        pv,
        cb,
        pcbRead,
      );

  int Seek(
    int dlibMove,
    int dwOrigin,
    Pointer<Uint64> plibNewPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 dlibMove,
            Uint32 dwOrigin,
            Pointer<Uint64> plibNewPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dlibMove,
            int dwOrigin,
            Pointer<Uint64> plibNewPosition,
          )>()(
        ptr.ref.lpVtbl,
        dlibMove,
        dwOrigin,
        plibNewPosition,
      );

  int LockRequest(
    int dwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOptions,
          )>()(
        ptr.ref.lpVtbl,
        dwOptions,
      );

  int UnlockRequest() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
}
