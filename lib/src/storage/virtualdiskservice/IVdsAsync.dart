// IVdsAsync.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';

/// @nodoc
const IID_IVdsAsync = '{D5D23B6D-5A55-4492-9889-397A3C2D2DBC}';

/// {@category Interface}
/// {@category com}
class IVdsAsync extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVdsAsync(Pointer<COMObject> ptr) : super(ptr);

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Wait(
    Pointer<Int32> pHrResult,
    Pointer<VDS_ASYNC_OUTPUT> pAsyncOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pHrResult,
            Pointer<VDS_ASYNC_OUTPUT> pAsyncOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pHrResult,
            Pointer<VDS_ASYNC_OUTPUT> pAsyncOut,
          )>()(
        ptr.ref.lpVtbl,
        pHrResult,
        pAsyncOut,
      );

  int QueryStatus(
    Pointer<Int32> pHrResult,
    Pointer<Uint32> pulPercentCompleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pHrResult,
            Pointer<Uint32> pulPercentCompleted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pHrResult,
            Pointer<Uint32> pulPercentCompleted,
          )>()(
        ptr.ref.lpVtbl,
        pHrResult,
        pulPercentCompleted,
      );
}
