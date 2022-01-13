// ID3D11ShaderResourceView1.dart

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

import '../../graphics/direct3d11/ID3D11ShaderResourceView.dart';
import '../../graphics/direct3d11/structs.g.dart';

/// @nodoc
const IID_ID3D11ShaderResourceView1 = '{91308B87-9040-411D-8C67-C39253CE3802}';

/// {@category Interface}
/// {@category com}
class ID3D11ShaderResourceView1 extends ID3D11ShaderResourceView {
  // vtable begins at 9, is 1 entries long.
  ID3D11ShaderResourceView1(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc1(
    Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1> pDesc1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1> pDesc1,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_SHADER_RESOURCE_VIEW_DESC1> pDesc1,
          )>()(
        ptr.ref.lpVtbl,
        pDesc1,
      );
}
