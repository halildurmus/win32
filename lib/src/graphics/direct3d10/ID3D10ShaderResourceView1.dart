// ID3D10ShaderResourceView1.dart

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

import '../../graphics/direct3d10/ID3D10ShaderResourceView.dart';
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10ShaderResourceView1 = '{9B7E4C87-342C-4106-A19F-4F2704F689F0}';

/// {@category Interface}
/// {@category com}
class ID3D10ShaderResourceView1 extends ID3D10ShaderResourceView {
  // vtable begins at 9, is 1 entries long.
  ID3D10ShaderResourceView1(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc1(
    Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC1> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC1> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D10_SHADER_RESOURCE_VIEW_DESC1> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
