// IWMVideoDecoderHurryup.dart

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
const IID_IWMVideoDecoderHurryup = '{352BB3BD-2D4D-4323-9E71-DCDCFBD53CA6}';

/// {@category Interface}
/// {@category com}
class IWMVideoDecoderHurryup extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMVideoDecoderHurryup(Pointer<COMObject> ptr) : super(ptr);

  int SetHurryup(
    int lHurryup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lHurryup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lHurryup,
          )>()(
        ptr.ref.lpVtbl,
        lHurryup,
      );

  int GetHurryup(
    Pointer<Int32> plHurryup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plHurryup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plHurryup,
          )>()(
        ptr.ref.lpVtbl,
        plHurryup,
      );
}
