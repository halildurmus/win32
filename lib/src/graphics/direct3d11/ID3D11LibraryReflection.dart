// ID3D11LibraryReflection.dart

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

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11FunctionReflection.dart';

/// @nodoc
const IID_ID3D11LibraryReflection = '{54384F1B-5B3E-4BB7-AE01-60BA3097CBB6}';

/// {@category Interface}
/// {@category com}
class ID3D11LibraryReflection extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID3D11LibraryReflection(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc(
    Pointer<D3D11_LIBRARY_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D11_LIBRARY_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D11_LIBRARY_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  Pointer<COMObject> GetFunctionByIndex(
    int FunctionIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Int32 FunctionIndex,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            int FunctionIndex,
          )>()(
        ptr.ref.lpVtbl,
        FunctionIndex,
      );
}
