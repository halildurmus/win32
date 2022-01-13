// ID3DX11FFT.dart

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
import '../../graphics/direct3d11/ID3D11UnorderedAccessView.dart';

/// @nodoc
const IID_ID3DX11FFT = '{B3F7A938-4C93-4310-A675-B30D6DE50553}';

/// {@category Interface}
/// {@category com}
class ID3DX11FFT extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ID3DX11FFT(Pointer<COMObject> ptr) : super(ptr);

  int SetForwardScale(
    double ForwardScale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float ForwardScale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double ForwardScale,
          )>()(
        ptr.ref.lpVtbl,
        ForwardScale,
      );

  double GetForwardScale() => ptr.ref.lpVtbl.value
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

  int SetInverseScale(
    double InverseScale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float InverseScale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double InverseScale,
          )>()(
        ptr.ref.lpVtbl,
        InverseScale,
      );

  double GetInverseScale() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int AttachBuffersAndPrecompute(
    int NumTempBuffers,
    Pointer<Pointer<COMObject>> ppTempBuffers,
    int NumPrecomputeBuffers,
    Pointer<Pointer<COMObject>> ppPrecomputeBufferSizes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumTempBuffers,
            Pointer<Pointer<COMObject>> ppTempBuffers,
            Uint32 NumPrecomputeBuffers,
            Pointer<Pointer<COMObject>> ppPrecomputeBufferSizes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumTempBuffers,
            Pointer<Pointer<COMObject>> ppTempBuffers,
            int NumPrecomputeBuffers,
            Pointer<Pointer<COMObject>> ppPrecomputeBufferSizes,
          )>()(
        ptr.ref.lpVtbl,
        NumTempBuffers,
        ppTempBuffers,
        NumPrecomputeBuffers,
        ppPrecomputeBufferSizes,
      );

  int ForwardTransform(
    Pointer<COMObject> pInputBuffer,
    Pointer<Pointer<COMObject>> ppOutputBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInputBuffer,
            Pointer<Pointer<COMObject>> ppOutputBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInputBuffer,
            Pointer<Pointer<COMObject>> ppOutputBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pInputBuffer,
        ppOutputBuffer,
      );

  int InverseTransform(
    Pointer<COMObject> pInputBuffer,
    Pointer<Pointer<COMObject>> ppOutputBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInputBuffer,
            Pointer<Pointer<COMObject>> ppOutputBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInputBuffer,
            Pointer<Pointer<COMObject>> ppOutputBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pInputBuffer,
        ppOutputBuffer,
      );
}
