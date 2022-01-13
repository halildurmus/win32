// ID3D11Texture2D.dart

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

import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/structs.g.dart';

/// @nodoc
const IID_ID3D11Texture2D = '{6F15AAF2-D208-4E89-9AB4-489535D34F9C}';

/// {@category Interface}
/// {@category com}
class ID3D11Texture2D extends ID3D11Resource {
  // vtable begins at 10, is 1 entries long.
  ID3D11Texture2D(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(
    Pointer<D3D11_TEXTURE2D_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_TEXTURE2D_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_TEXTURE2D_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
