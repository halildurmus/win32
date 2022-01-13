// IDxcValidator2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../graphics/direct3d/dxc/IDxcValidator.dart';
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../graphics/direct3d/dxc/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcOperationResult.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDxcValidator2 = '{458E1FD1-B1B2-4750-A6E1-9C10F03BED92}';

/// {@category Interface}
/// {@category com}
class IDxcValidator2 extends IDxcValidator {
  // vtable begins at 4, is 1 entries long.
  IDxcValidator2(Pointer<COMObject> ptr) : super(ptr);

  int ValidateWithDebug(
    Pointer<COMObject> pShader,
    int Flags,
    Pointer<DxcBuffer> pOptDebugBitcode,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShader,
            Uint32 Flags,
            Pointer<DxcBuffer> pOptDebugBitcode,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShader,
            int Flags,
            Pointer<DxcBuffer> pOptDebugBitcode,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
        Flags,
        pOptDebugBitcode,
        ppResult,
      );
}
