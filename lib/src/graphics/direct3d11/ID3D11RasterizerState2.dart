// ID3D11RasterizerState2.dart

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

import '../../graphics/direct3d11/ID3D11RasterizerState1.dart';
import '../../graphics/direct3d11/structs.g.dart';

/// @nodoc
const IID_ID3D11RasterizerState2 = '{6FBD02FB-209F-46C4-B059-2ED15586A6AC}';

/// {@category Interface}
/// {@category com}
class ID3D11RasterizerState2 extends ID3D11RasterizerState1 {
  // vtable begins at 9, is 1 entries long.
  ID3D11RasterizerState2(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc2(
    Pointer<D3D11_RASTERIZER_DESC2> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC2> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_RASTERIZER_DESC2> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
