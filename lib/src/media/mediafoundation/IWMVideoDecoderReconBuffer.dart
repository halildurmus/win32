// IWMVideoDecoderReconBuffer.dart

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
import '../../media/dxmediaobjects/IMediaBuffer.dart';

/// @nodoc
const IID_IWMVideoDecoderReconBuffer = '{45BDA2AC-88E2-4923-98BA-3949080711A3}';

/// {@category Interface}
/// {@category com}
class IWMVideoDecoderReconBuffer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMVideoDecoderReconBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetReconstructedVideoFrameSize(
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwSize,
      );

  int GetReconstructedVideoFrame(
    Pointer<COMObject> pBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuf,
          )>()(
        ptr.ref.lpVtbl,
        pBuf,
      );

  int SetReconstructedVideoFrame(
    Pointer<COMObject> pBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuf,
          )>()(
        ptr.ref.lpVtbl,
        pBuf,
      );
}
