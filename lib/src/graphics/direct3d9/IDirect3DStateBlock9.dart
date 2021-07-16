// IDirect3DStateBlock9.dart

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
const IID_IDirect3DStateBlock9 = '{B07C4FE5-310D-4BA8-A23C-4F0F206F218B}';

typedef _GetDevice_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDevice);
typedef _GetDevice_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDevice);

typedef _Capture_Native = Int32 Function(Pointer obj);
typedef _Capture_Dart = int Function(Pointer obj);

typedef _Apply_Native = Int32 Function(Pointer obj);
typedef _Apply_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IDirect3DStateBlock9 extends IUnknown {
  // vtable begins at 3, ends at 5

  IDirect3DStateBlock9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(Pointer<COMObject> ppDevice) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetDevice_Native>>>()
      .value
      .asFunction<_GetDevice_Dart>()(ptr.ref.lpVtbl, ppDevice);

  int Capture() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_Capture_Native>>>()
      .value
      .asFunction<_Capture_Dart>()(ptr.ref.lpVtbl);

  int Apply() => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_Apply_Native>>>()
      .value
      .asFunction<_Apply_Dart>()(ptr.ref.lpVtbl);
}
