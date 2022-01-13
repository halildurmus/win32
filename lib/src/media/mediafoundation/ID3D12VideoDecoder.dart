// ID3D12VideoDecoder.dart

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

/// @nodoc
const IID_ID3D12VideoDecoder = '{C59B6BDC-7720-4074-A136-17A156037470}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoDecoder extends ID3D12Pageable {
  // vtable begins at 8, is 1 entries long.
  ID3D12VideoDecoder(Pointer<COMObject> ptr) : super(ptr);

  D3D12_VIDEO_DECODER_DESC GetDesc() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_VIDEO_DECODER_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_VIDEO_DECODER_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
