// ID3D12VideoEncoderHeap.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoEncoderHeap = '{22B35D96-876A-44C0-B25E-FB8C9C7F1C4A}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoEncoderHeap extends ID3D12Pageable {
  // vtable begins at 8, is 7 entries long.
  ID3D12VideoEncoderHeap(Pointer<COMObject> ptr) : super(ptr);

  int GetNodeMask() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetEncoderHeapFlags() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetCodec() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int GetCodecProfile(
    D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D3D12_VIDEO_ENCODER_PROFILE_DESC dstProfile,
          )>()(
        ptr.ref.lpVtbl,
        dstProfile,
      );

  int GetCodecLevel(
    D3D12_VIDEO_ENCODER_LEVEL_SETTING dstLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D3D12_VIDEO_ENCODER_LEVEL_SETTING dstLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D3D12_VIDEO_ENCODER_LEVEL_SETTING dstLevel,
          )>()(
        ptr.ref.lpVtbl,
        dstLevel,
      );

  int GetResolutionListCount() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetResolutionList(
    int ResolutionsListCount,
    Pointer<D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC> pResolutionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ResolutionsListCount,
            Pointer<D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC>
                pResolutionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResolutionsListCount,
            Pointer<D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC>
                pResolutionList,
          )>()(
        ptr.ref.lpVtbl,
        ResolutionsListCount,
        pResolutionList,
      );
}
