// IDirectDrawColorControl.dart

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
import '../../graphics/directdraw/structs.g.dart';

/// @nodoc
const IID_IDirectDrawColorControl = '{4B9F0EE0-0D7E-11D0-9B06-00A0C903A3B8}';

typedef _GetColorControls_Native = Int32 Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);
typedef _GetColorControls_Dart = int Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);

typedef _SetColorControls_Native = Int32 Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);
typedef _SetColorControls_Dart = int Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);

/// {@category Interface}
/// {@category com}
class IDirectDrawColorControl extends IUnknown {
  // vtable begins at 3, ends at 4

  IDirectDrawColorControl(Pointer<COMObject> ptr) : super(ptr);

  int GetColorControls(Pointer<DDCOLORCONTROL> param0) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetColorControls_Native>>>()
      .value
      .asFunction<_GetColorControls_Dart>()(ptr.ref.lpVtbl, param0);

  int SetColorControls(Pointer<DDCOLORCONTROL> param0) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_SetColorControls_Native>>>()
      .value
      .asFunction<_SetColorControls_Dart>()(ptr.ref.lpVtbl, param0);
}
