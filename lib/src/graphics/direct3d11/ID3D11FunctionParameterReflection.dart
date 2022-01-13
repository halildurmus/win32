// ID3D11FunctionParameterReflection.dart

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

import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11FunctionParameterReflection =
    '{42757488-334F-47FE-982E-1A65D08CC462}';

/// {@category Interface}
/// {@category com}
class ID3D11FunctionParameterReflection {
  // vtable begins at 0, is 1 entries long.
  Pointer<COMObject> ptr;

  ID3D11FunctionParameterReflection(this.ptr);

  int GetDesc(
    Pointer<D3D11_PARAMETER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_PARAMETER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_PARAMETER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
