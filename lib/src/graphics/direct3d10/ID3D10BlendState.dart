// ID3D10BlendState.dart

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

import '../../graphics/direct3d10/ID3D10DeviceChild.dart';
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10BlendState = '{EDAD8D19-8A35-4D6D-8566-2EA276CDE161}';

/// {@category Interface}
/// {@category com}
class ID3D10BlendState extends ID3D10DeviceChild {
  // vtable begins at 7, is 1 entries long.
  ID3D10BlendState(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(
    Pointer<D3D10_BLEND_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D10_BLEND_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D10_BLEND_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
