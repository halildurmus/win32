// IGetFrame.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IGetFrame = '{00020023-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IGetFrame extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IGetFrame(Pointer<COMObject> ptr) : super(ptr);

  Pointer GetFrame(
    int lPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Int32 lPos,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            int lPos,
          )>()(
        ptr.ref.lpVtbl,
        lPos,
      );

  int Begin(
    int lStart,
    int lEnd,
    int lRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStart,
            Int32 lEnd,
            Int32 lRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStart,
            int lEnd,
            int lRate,
          )>()(
        ptr.ref.lpVtbl,
        lStart,
        lEnd,
        lRate,
      );

  int End() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetFormat(
    Pointer<BITMAPINFOHEADER> lpbi,
    Pointer lpBits,
    int x,
    int y,
    int dx,
    int dy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BITMAPINFOHEADER> lpbi,
            Pointer lpBits,
            Int32 x,
            Int32 y,
            Int32 dx,
            Int32 dy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BITMAPINFOHEADER> lpbi,
            Pointer lpBits,
            int x,
            int y,
            int dx,
            int dy,
          )>()(
        ptr.ref.lpVtbl,
        lpbi,
        lpBits,
        x,
        y,
        dx,
        dy,
      );
}
