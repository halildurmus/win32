// IMFVideoPositionMapper.dart

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
const IID_IMFVideoPositionMapper = '{1F6A9F17-E70B-4E24-8AE4-0B2C3BA7A4AE}';

/// {@category Interface}
/// {@category com}
class IMFVideoPositionMapper extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFVideoPositionMapper(Pointer<COMObject> ptr) : super(ptr);

  int MapOutputCoordinateToInputStream(
    double xOut,
    double yOut,
    int dwOutputStreamIndex,
    int dwInputStreamIndex,
    Pointer<Float> pxIn,
    Pointer<Float> pyIn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float xOut,
            Float yOut,
            Uint32 dwOutputStreamIndex,
            Uint32 dwInputStreamIndex,
            Pointer<Float> pxIn,
            Pointer<Float> pyIn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double xOut,
            double yOut,
            int dwOutputStreamIndex,
            int dwInputStreamIndex,
            Pointer<Float> pxIn,
            Pointer<Float> pyIn,
          )>()(
        ptr.ref.lpVtbl,
        xOut,
        yOut,
        dwOutputStreamIndex,
        dwInputStreamIndex,
        pxIn,
        pyIn,
      );
}
