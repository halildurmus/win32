// IDirectDrawPalette.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';

/// @nodoc
const IID_IDirectDrawPalette = '{6C14DB84-A733-11CE-A521-0020AF0BE560}';

typedef _GetCaps_Native = Int32 Function(Pointer obj, Pointer<Uint32> param0);
typedef _GetCaps_Dart = int Function(Pointer obj, Pointer<Uint32> param0);

typedef _GetEntries_Native = Int32 Function(Pointer obj, Uint32 param0,
    Uint32 param1, Uint32 param2, Pointer<PALETTEENTRY> param3);
typedef _GetEntries_Dart = int Function(Pointer obj, int param0, int param1,
    int param2, Pointer<PALETTEENTRY> param3);

typedef _Initialize_Native = Int32 Function(
    Pointer obj, COMObject param0, Uint32 param1, Pointer<PALETTEENTRY> param2);
typedef _Initialize_Dart = int Function(
    Pointer obj, COMObject param0, int param1, Pointer<PALETTEENTRY> param2);

typedef _SetEntries_Native = Int32 Function(Pointer obj, Uint32 param0,
    Uint32 param1, Uint32 param2, Pointer<PALETTEENTRY> param3);
typedef _SetEntries_Dart = int Function(Pointer obj, int param0, int param1,
    int param2, Pointer<PALETTEENTRY> param3);

/// {@category Interface}
/// {@category com}
class IDirectDrawPalette extends IUnknown {
  // vtable begins at 3, ends at 6

  IDirectDrawPalette(Pointer<COMObject> ptr) : super(ptr);

  int GetCaps(Pointer<Uint32> param0) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetCaps_Native>>>()
      .value
      .asFunction<_GetCaps_Dart>()(ptr.ref.lpVtbl, param0);

  int GetEntries(
          int param0, int param1, int param2, Pointer<PALETTEENTRY> param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_GetEntries_Native>>>()
              .value
              .asFunction<_GetEntries_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);

  int Initialize(COMObject param0, int param1, Pointer<PALETTEENTRY> param2) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_Initialize_Native>>>()
              .value
              .asFunction<_Initialize_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2);

  int SetEntries(
          int param0, int param1, int param2, Pointer<PALETTEENTRY> param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_SetEntries_Native>>>()
              .value
              .asFunction<_SetEntries_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);
}
