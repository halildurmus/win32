// IMFQualityAdviseLimits.dart

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
const IID_IMFQualityAdviseLimits = '{DFCD8E4D-30B5-4567-ACAA-8EB5B7853DC9}';

/// {@category Interface}
/// {@category com}
class IMFQualityAdviseLimits extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFQualityAdviseLimits(Pointer<COMObject> ptr) : super(ptr);

  int GetMaximumDropMode(
    Pointer<Int32> peDropMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetMinimumQualityLevel(
    Pointer<Int32> peQualityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
