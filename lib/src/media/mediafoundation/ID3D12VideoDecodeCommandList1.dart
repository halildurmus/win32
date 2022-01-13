// ID3D12VideoDecodeCommandList1.dart

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

import '../../media/mediafoundation/ID3D12VideoDecodeCommandList.dart';
import '../../media/mediafoundation/ID3D12VideoDecoder.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoDecodeCommandList1 =
    '{D52F011B-B56E-453C-A05A-A7F311C8F472}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoDecodeCommandList1 extends ID3D12VideoDecodeCommandList {
  // vtable begins at 23, is 1 entries long.
  ID3D12VideoDecodeCommandList1(Pointer<COMObject> ptr) : super(ptr);

  void DecodeFrame1(
    Pointer<COMObject> pDecoder,
    Pointer<D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1> pOutputArguments,
    Pointer<D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS> pInputArguments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1>
                pOutputArguments,
            Pointer<D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS> pInputArguments,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDecoder,
            Pointer<D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1>
                pOutputArguments,
            Pointer<D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS> pInputArguments,
          )>()(
        ptr.ref.lpVtbl,
        pDecoder,
        pOutputArguments,
        pInputArguments,
      );
}
