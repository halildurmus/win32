// ID3D11Texture3D.dart

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
const IID_ID3D11Texture3D = '{037E866E-F56D-4357-A8AF-9DABBE6E250E}';

/// {@category Interface}
/// {@category com}
class ID3D11Texture3D extends ID3D11Resource {
  // vtable begins at 10, is 1 entries long.
  ID3D11Texture3D(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(
    Pointer<D3D11_TEXTURE3D_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D11_TEXTURE3D_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D11_TEXTURE3D_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
