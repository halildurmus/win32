// IDWriteRenderingParams.dart

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
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteRenderingParams = '{2F0DA53A-2ADD-47CD-82EE-D9EC34688E75}';

/// {@category Interface}
/// {@category com}
class IDWriteRenderingParams extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDWriteRenderingParams(Pointer<COMObject> ptr) : super(ptr);

  double GetGamma() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  double GetEnhancedContrast() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  double GetClearTypeLevel() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetPixelGeometry() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetRenderingMode() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
