// ID3D11VideoProcessorEnumerator.dart

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

import '../../graphics/direct3d11/ID3D11DeviceChild.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';

/// @nodoc
const IID_ID3D11VideoProcessorEnumerator =
    '{31627037-53AB-4200-9061-05FAA9AB45F9}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoProcessorEnumerator extends ID3D11DeviceChild {
  // vtable begins at 7, is 6 entries long.
  ID3D11VideoProcessorEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int GetVideoProcessorContentDesc(
    Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pContentDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pContentDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pContentDesc,
          )>()(
        ptr.ref.lpVtbl,
        pContentDesc,
      );

  int CheckVideoProcessorFormat(
    int Format,
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Format,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Format,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        pFlags,
      );

  int GetVideoProcessorCaps(
    Pointer<D3D11_VIDEO_PROCESSOR_CAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );

  int GetVideoProcessorRateConversionCaps(
    int TypeIndex,
    Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 TypeIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TypeIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        TypeIndex,
        pCaps,
      );

  int GetVideoProcessorCustomRate(
    int TypeIndex,
    int CustomRateIndex,
    Pointer<D3D11_VIDEO_PROCESSOR_CUSTOM_RATE> pRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 TypeIndex,
            Uint32 CustomRateIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_CUSTOM_RATE> pRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TypeIndex,
            int CustomRateIndex,
            Pointer<D3D11_VIDEO_PROCESSOR_CUSTOM_RATE> pRate,
          )>()(
        ptr.ref.lpVtbl,
        TypeIndex,
        CustomRateIndex,
        pRate,
      );

  int GetVideoProcessorFilterRange(
    int Filter,
    Pointer<D3D11_VIDEO_PROCESSOR_FILTER_RANGE> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Filter,
            Pointer<D3D11_VIDEO_PROCESSOR_FILTER_RANGE> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Filter,
            Pointer<D3D11_VIDEO_PROCESSOR_FILTER_RANGE> pRange,
          )>()(
        ptr.ref.lpVtbl,
        Filter,
        pRange,
      );
}
