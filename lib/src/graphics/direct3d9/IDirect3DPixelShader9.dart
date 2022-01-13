// IDirect3DPixelShader9.dart

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
import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirect3DPixelShader9 = '{6D3BDBDC-5B02-4415-B852-CE5E8BCCB289}';

/// {@category Interface}
/// {@category com}
class IDirect3DPixelShader9 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirect3DPixelShader9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppDevice,
      );

  int GetFunction(
    Pointer param0,
    Pointer<Uint32> pSizeOfData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer param0,
            Pointer<Uint32> pSizeOfData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer param0,
            Pointer<Uint32> pSizeOfData,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        pSizeOfData,
      );
}
