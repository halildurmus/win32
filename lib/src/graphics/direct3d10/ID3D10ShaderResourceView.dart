// ID3D10ShaderResourceView.dart

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

import '../../graphics/direct3d10/ID3D10View.dart';
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10ShaderResourceView = '{9B7E4C07-342C-4106-A19F-4F2704F689F0}';

/// {@category Interface}
/// {@category com}
class ID3D10ShaderResourceView extends ID3D10View {
  // vtable begins at 8, is 1 entries long.
  ID3D10ShaderResourceView(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(
    Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
