// ID3D11VideoProcessorInputView.dart

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

import '../../graphics/direct3d11/ID3D11View.dart';
import '../../graphics/direct3d11/structs.g.dart';

/// @nodoc
const IID_ID3D11VideoProcessorInputView =
    '{11EC5A5F-51DC-4945-AB34-6E8C21300EA5}';

/// {@category Interface}
/// {@category com}
class ID3D11VideoProcessorInputView extends ID3D11View {
  // vtable begins at 8, is 1 entries long.
  ID3D11VideoProcessorInputView(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(
    Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
