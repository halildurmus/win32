// ID3D10BlendState1.dart

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

import '../../graphics/direct3d10/ID3D10BlendState.dart';
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10BlendState1 = '{EDAD8D99-8A35-4D6D-8566-2EA276CDE161}';

/// {@category Interface}
/// {@category com}
class ID3D10BlendState1 extends ID3D10BlendState {
  // vtable begins at 8, is 1 entries long.
  ID3D10BlendState1(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc1(
    Pointer<D3D10_BLEND_DESC1> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D10_BLEND_DESC1> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D10_BLEND_DESC1> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
