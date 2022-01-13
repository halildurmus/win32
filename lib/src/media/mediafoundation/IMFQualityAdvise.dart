// IMFQualityAdvise.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFQualityAdvise = '{EC15E2E9-E36B-4F7C-8758-77D452EF4CE7}';

/// {@category Interface}
/// {@category com}
class IMFQualityAdvise extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFQualityAdvise(Pointer<COMObject> ptr) : super(ptr);

  int SetDropMode(
    int eDropMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eDropMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eDropMode,
          )>()(
        ptr.ref.lpVtbl,
        eDropMode,
      );

  int SetQualityLevel(
    int eQualityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eQualityLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eQualityLevel,
          )>()(
        ptr.ref.lpVtbl,
        eQualityLevel,
      );

  int GetDropMode(
    Pointer<Int32> peDropMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> peDropMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> peDropMode,
          )>()(
        ptr.ref.lpVtbl,
        peDropMode,
      );

  int GetQualityLevel(
    Pointer<Int32> peQualityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> peQualityLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> peQualityLevel,
          )>()(
        ptr.ref.lpVtbl,
        peQualityLevel,
      );

  int DropTime(
    int hnsAmountToDrop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsAmountToDrop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsAmountToDrop,
          )>()(
        ptr.ref.lpVtbl,
        hnsAmountToDrop,
      );
}
