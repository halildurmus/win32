// IDxcValidator.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../graphics/direct3d/dxc/IDxcOperationResult.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDxcValidator = '{A6E82BD2-1FD7-4826-9811-2857E797F49A}';

/// {@category Interface}
/// {@category com}
class IDxcValidator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDxcValidator(Pointer<COMObject> ptr) : super(ptr);

  int Validate(
    Pointer<COMObject> pShader,
    int Flags,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShader,
            Uint32 Flags,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShader,
            int Flags,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
        Flags,
        ppResult,
      );
}
