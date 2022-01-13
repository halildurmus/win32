// ID3D11VideoProcessorEnumerator1.dart

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

import '../../graphics/direct3d11/ID3D11VideoProcessorEnumerator.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11VideoProcessorEnumerator1 =
    '{465217F2-5568-43CF-B5B9-F61D54531CA1}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoProcessorEnumerator1 extends ID3D11VideoProcessorEnumerator {
  // vtable begins at 13, is 1 entries long.
  ID3D11VideoProcessorEnumerator1(Pointer<COMObject> ptr) : super(ptr);

  int CheckVideoProcessorFormatConversion(
    int InputFormat,
    int InputColorSpace,
    int OutputFormat,
    int OutputColorSpace,
    Pointer<Int32> pSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 InputFormat,
            Int32 InputColorSpace,
            Uint32 OutputFormat,
            Int32 OutputColorSpace,
            Pointer<Int32> pSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InputFormat,
            int InputColorSpace,
            int OutputFormat,
            int OutputColorSpace,
            Pointer<Int32> pSupported,
          )>()(
        ptr.ref.lpVtbl,
        InputFormat,
        InputColorSpace,
        OutputFormat,
        OutputColorSpace,
        pSupported,
      );
}
