// IGetFrame.dart

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

/// @nodoc
const IID_IGetFrame = 'null';

typedef _GetFrame_Native = Pointer Function(Pointer obj, Int32 lPos);
typedef _GetFrame_Dart = Pointer Function(Pointer obj, int lPos);

typedef _Begin_Native = Int32 Function(
    Pointer obj, Int32 lStart, Int32 lEnd, Int32 lRate);
typedef _Begin_Dart = int Function(
    Pointer obj, int lStart, int lEnd, int lRate);

typedef _End_Native = Int32 Function(Pointer obj);
typedef _End_Dart = int Function(Pointer obj);

typedef _SetFormat_Native = Int32 Function(
    Pointer obj,
    Pointer<BITMAPINFOHEADER> lpbi,
    Pointer lpBits,
    Int32 x,
    Int32 y,
    Int32 dx,
    Int32 dy);
typedef _SetFormat_Dart = int Function(
    Pointer obj,
    Pointer<BITMAPINFOHEADER> lpbi,
    Pointer lpBits,
    int x,
    int y,
    int dx,
    int dy);

/// {@category Interface}
/// {@category com}
class IGetFrame extends IUnknown {
  // vtable begins at 3, ends at 6

  IGetFrame(Pointer<COMObject> ptr) : super(ptr);

  Pointer GetFrame(int lPos) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetFrame_Native>>>()
      .value
      .asFunction<_GetFrame_Dart>()(ptr.ref.lpVtbl, lPos);

  int Begin(int lStart, int lEnd, int lRate) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_Begin_Native>>>()
      .value
      .asFunction<_Begin_Dart>()(ptr.ref.lpVtbl, lStart, lEnd, lRate);

  int End() => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_End_Native>>>()
      .value
      .asFunction<_End_Dart>()(ptr.ref.lpVtbl);

  int SetFormat(Pointer<BITMAPINFOHEADER> lpbi, Pointer lpBits, int x, int y,
          int dx, int dy) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_SetFormat_Native>>>()
              .value
              .asFunction<_SetFormat_Dart>()(
          ptr.ref.lpVtbl, lpbi, lpBits, x, y, dx, dy);
}
