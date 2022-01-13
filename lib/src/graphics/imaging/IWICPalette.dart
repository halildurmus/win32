// IWICPalette.dart

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
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/IWICPalette.dart';

/// @nodoc
const IID_IWICPalette = '{00000040-A8F2-4877-BA0A-FD2B6645FB94}';

/// {@category Interface}
/// {@category com}
class IWICPalette extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IWICPalette(Pointer<COMObject> ptr) : super(ptr);

  int InitializePredefined(
    int ePaletteType,
    int fAddTransparentColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ePaletteType,
            Int32 fAddTransparentColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ePaletteType,
            int fAddTransparentColor,
          )>()(
        ptr.ref.lpVtbl,
        ePaletteType,
        fAddTransparentColor,
      );

  int InitializeCustom(
    Pointer<Uint32> pColors,
    int cCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pColors,
            Uint32 cCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pColors,
            int cCount,
          )>()(
        ptr.ref.lpVtbl,
        pColors,
        cCount,
      );

  int InitializeFromBitmap(
    Pointer<COMObject> pISurface,
    int cCount,
    int fAddTransparentColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pISurface,
            Uint32 cCount,
            Int32 fAddTransparentColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pISurface,
            int cCount,
            int fAddTransparentColor,
          )>()(
        ptr.ref.lpVtbl,
        pISurface,
        cCount,
        fAddTransparentColor,
      );

  int InitializeFromPalette(
    Pointer<COMObject> pIPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIPalette,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIPalette,
          )>()(
        ptr.ref.lpVtbl,
        pIPalette,
      );

  int GetType(
    Pointer<Int32> pePaletteType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pePaletteType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pePaletteType,
          )>()(
        ptr.ref.lpVtbl,
        pePaletteType,
      );

  int GetColorCount(
    Pointer<Uint32> pcCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>()(
        ptr.ref.lpVtbl,
        pcCount,
      );

  int GetColors(
    int cCount,
    Pointer<Uint32> pColors,
    Pointer<Uint32> pcActualColors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCount,
            Pointer<Uint32> pColors,
            Pointer<Uint32> pcActualColors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCount,
            Pointer<Uint32> pColors,
            Pointer<Uint32> pcActualColors,
          )>()(
        ptr.ref.lpVtbl,
        cCount,
        pColors,
        pcActualColors,
      );

  int IsBlackWhite(
    Pointer<Int32> pfIsBlackWhite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsBlackWhite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsBlackWhite,
          )>()(
        ptr.ref.lpVtbl,
        pfIsBlackWhite,
      );

  int IsGrayscale(
    Pointer<Int32> pfIsGrayscale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsGrayscale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsGrayscale,
          )>()(
        ptr.ref.lpVtbl,
        pfIsGrayscale,
      );

  int HasAlpha(
    Pointer<Int32> pfHasAlpha,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfHasAlpha,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfHasAlpha,
          )>()(
        ptr.ref.lpVtbl,
        pfHasAlpha,
      );
}
