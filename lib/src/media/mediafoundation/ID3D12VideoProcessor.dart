// ID3D12VideoProcessor.dart

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
const IID_ID3D12VideoProcessor = '{304FDB32-BEDE-410A-8545-943AC6A46138}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoProcessor extends ID3D12Pageable {
  // vtable begins at 8, is 4 entries long.
  ID3D12VideoProcessor(Pointer<COMObject> ptr) : super(ptr);

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

  int GetNumInputStreamDescs() => ptr.ref.lpVtbl.value
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

  int GetInputStreamDescs(
    int NumInputStreamDescs,
    Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumInputStreamDescs,
            Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumInputStreamDescs,
            Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
          )>()(
        ptr.ref.lpVtbl,
        NumInputStreamDescs,
        pInputStreamDescs,
      );

  D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC GetOutputStreamDesc() =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
