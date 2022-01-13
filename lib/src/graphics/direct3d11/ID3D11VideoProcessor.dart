// ID3D11VideoProcessor.dart

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

/// @nodoc
const IID_ID3D11VideoProcessor = '{1D7B0652-185F-41C6-85CE-0C5BE3D4AE6C}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoProcessor extends ID3D11DeviceChild {
  // vtable begins at 7, is 2 entries long.
  ID3D11VideoProcessor(Pointer<COMObject> ptr) : super(ptr);

  void GetContentDesc(
    Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  void GetRateConversionCaps(
    Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        pCaps,
      );
}
