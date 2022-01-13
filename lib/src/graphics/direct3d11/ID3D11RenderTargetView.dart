// ID3D11RenderTargetView.dart

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
const IID_ID3D11RenderTargetView = '{DFDBA067-0B8D-4865-875B-D7B4516CC164}';

/// {@category Interface}
/// {@category com}
class ID3D11RenderTargetView extends ID3D11View {
  // vtable begins at 8, is 1 entries long.
  ID3D11RenderTargetView(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(
    Pointer<D3D11_RENDER_TARGET_VIEW_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_RENDER_TARGET_VIEW_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_RENDER_TARGET_VIEW_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
