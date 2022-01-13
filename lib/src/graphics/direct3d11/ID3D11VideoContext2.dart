// ID3D11VideoContext2.dart

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

import '../../graphics/direct3d11/ID3D11VideoContext1.dart';
import '../../graphics/direct3d11/ID3D11VideoProcessor.dart';
import '../../graphics/dxgi/structs.g.dart';

/// @nodoc
const IID_ID3D11VideoContext2 = '{C4E7374C-6243-4D1B-AE87-52B4F740E261}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoContext2 extends ID3D11VideoContext1 {
  // vtable begins at 79, is 4 entries long.
  ID3D11VideoContext2(Pointer<COMObject> ptr) : super(ptr);

  void VideoProcessorSetOutputHDRMetaData(
    Pointer<COMObject> pVideoProcessor,
    int Type,
    int Size,
    Pointer pHDRMetaData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Int32 Type,
            Uint32 Size,
            Pointer pHDRMetaData,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int Type,
            int Size,
            Pointer pHDRMetaData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        Type,
        Size,
        pHDRMetaData,
      );

  void VideoProcessorGetOutputHDRMetaData(
    Pointer<COMObject> pVideoProcessor,
    Pointer<Int32> pType,
    int Size,
    Pointer pMetaData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pType,
            Uint32 Size,
            Pointer pMetaData,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Pointer<Int32> pType,
            int Size,
            Pointer pMetaData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        pType,
        Size,
        pMetaData,
      );

  void VideoProcessorSetStreamHDRMetaData(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    int Type,
    int Size,
    Pointer pHDRMetaData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Int32 Type,
            Uint32 Size,
            Pointer pHDRMetaData,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            int Type,
            int Size,
            Pointer pHDRMetaData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        Type,
        Size,
        pHDRMetaData,
      );

  void VideoProcessorGetStreamHDRMetaData(
    Pointer<COMObject> pVideoProcessor,
    int StreamIndex,
    Pointer<Int32> pType,
    int Size,
    Pointer pMetaData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            Uint32 StreamIndex,
            Pointer<Int32> pType,
            Uint32 Size,
            Pointer pMetaData,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pVideoProcessor,
            int StreamIndex,
            Pointer<Int32> pType,
            int Size,
            Pointer pMetaData,
          )>()(
        ptr.ref.lpVtbl,
        pVideoProcessor,
        StreamIndex,
        pType,
        Size,
        pMetaData,
      );
}
