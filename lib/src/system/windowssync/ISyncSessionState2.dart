// ISyncSessionState2.dart

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

import '../../system/windowssync/ISyncSessionState.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncSessionState2 = '{9E37CFA3-9E38-4C61-9CA3-FFE810B45CA2}';

/// {@category Interface}
/// {@category com}
class ISyncSessionState2 extends ISyncSessionState {
  // vtable begins at 10, is 2 entries long.
  ISyncSessionState2(Pointer<COMObject> ptr) : super(ptr);

  int SetProviderWithError(
    int fSelf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSelf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSelf,
          )>()(
        ptr.ref.lpVtbl,
        fSelf,
      );

  int GetSessionErrorStatus(
    Pointer<Int32> phrSessionError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrSessionError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrSessionError,
          )>()(
        ptr.ref.lpVtbl,
        phrSessionError,
      );
}
