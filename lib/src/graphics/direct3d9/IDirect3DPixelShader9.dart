// IDirect3DPixelShader9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DPixelShader9 = '{6D3BDBDC-5B02-4415-B852-CE5E8BCCB289}';

typedef _GetDevice_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDevice);
typedef _GetDevice_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDevice);

typedef _GetFunction_Native = Int32 Function(
    Pointer obj, Pointer param0, Pointer<Uint32> pSizeOfData);
typedef _GetFunction_Dart = int Function(
    Pointer obj, Pointer param0, Pointer<Uint32> pSizeOfData);

/// {@category Interface}
/// {@category com}
class IDirect3DPixelShader9 extends IUnknown {
  // vtable begins at 3, ends at 4

  IDirect3DPixelShader9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(Pointer<COMObject> ppDevice) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetDevice_Native>>>()
      .value
      .asFunction<_GetDevice_Dart>()(ptr.ref.lpVtbl, ppDevice);

  int GetFunction(Pointer param0, Pointer<Uint32> pSizeOfData) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<Pointer<NativeFunction<_GetFunction_Native>>>()
          .value
          .asFunction<_GetFunction_Dart>()(ptr.ref.lpVtbl, param0, pSizeOfData);
}
