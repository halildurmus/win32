// IDirectDrawPalette.dart

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
import '../../graphics/directdraw/IDirectDraw.dart';

/// @nodoc
const IID_IDirectDrawPalette = '{6C14DB84-A733-11CE-A521-0020AF0BE560}';

/// {@category Interface}
/// {@category com}
class IDirectDrawPalette extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDirectDrawPalette(Pointer<COMObject> ptr) : super(ptr);

  int GetCaps(
    Pointer<Uint32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetEntries(
    int param0,
    int param1,
    int param2,
    Pointer<PALETTEENTRY> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Uint32 param2,
            Pointer<PALETTEENTRY> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            int param2,
            Pointer<PALETTEENTRY> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int Initialize(
    Pointer<COMObject> param0,
    int param1,
    Pointer<PALETTEENTRY> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Uint32 param1,
            Pointer<PALETTEENTRY> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            int param1,
            Pointer<PALETTEENTRY> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int SetEntries(
    int param0,
    int param1,
    int param2,
    Pointer<PALETTEENTRY> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Uint32 param2,
            Pointer<PALETTEENTRY> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            int param2,
            Pointer<PALETTEENTRY> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );
}
