// ID3D11VideoDecoder.dart

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

/// @nodoc
const IID_ID3D11VideoDecoder = '{3C9C5B51-995D-48D1-9B8D-FA5CAEDED65C}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoDecoder extends ID3D11DeviceChild {
  // vtable begins at 7, is 2 entries long.
  ID3D11VideoDecoder(Pointer<COMObject> ptr) : super(ptr);

  int GetCreationParameters(
    Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
    Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
            Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
            Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
          )>()(
        ptr.ref.lpVtbl,
        pVideoDesc,
        pConfig,
      );

  int GetDriverHandle(
    Pointer<IntPtr> pDriverHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pDriverHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pDriverHandle,
          )>()(
        ptr.ref.lpVtbl,
        pDriverHandle,
      );
}
