// IBackgroundCopyJob4.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyJob3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJob4 = '{659CDEAE-489E-11D9-A9CD-000D56965251}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJob4 extends IBackgroundCopyJob3 {
  // vtable begins at 47, is 6 entries long.
  IBackgroundCopyJob4(Pointer<COMObject> ptr) : super(ptr);

  int SetPeerCachingFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int GetPeerCachingFlags(
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int GetOwnerIntegrityLevel(
    Pointer<Uint32> pLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLevel,
          )>()(
        ptr.ref.lpVtbl,
        pLevel,
      );

  int GetOwnerElevationState(
    Pointer<Int32> pElevated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pElevated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pElevated,
          )>()(
        ptr.ref.lpVtbl,
        pElevated,
      );

  int SetMaximumDownloadTime(
    int Timeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Timeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Timeout,
          )>()(
        ptr.ref.lpVtbl,
        Timeout,
      );

  int GetMaximumDownloadTime(
    Pointer<Uint32> pTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pTimeout,
          )>()(
        ptr.ref.lpVtbl,
        pTimeout,
      );
}
