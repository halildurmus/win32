// IDWriteGdiInterop.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directwrite/IDWriteFont.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';
import '../../graphics/directwrite/IDWriteBitmapRenderTarget.dart';

/// @nodoc
const IID_IDWriteGdiInterop = '{1EDD9491-9853-4299-898F-6432983B6F3A}';

/// {@category Interface}
/// {@category com}
class IDWriteGdiInterop extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDWriteGdiInterop(Pointer<COMObject> ptr) : super(ptr);

  int CreateFontFromLOGFONT(
    Pointer<LOGFONT> logFont,
    Pointer<Pointer<COMObject>> font,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<LOGFONT> logFont,
            Pointer<Pointer<COMObject>> font,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<LOGFONT> logFont,
            Pointer<Pointer<COMObject>> font,
          )>()(
        ptr.ref.lpVtbl,
        logFont,
        font,
      );

  int ConvertFontToLOGFONT(
    Pointer<COMObject> font,
    Pointer<LOGFONT> logFont,
    Pointer<Int32> isSystemFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> font,
            Pointer<LOGFONT> logFont,
            Pointer<Int32> isSystemFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> font,
            Pointer<LOGFONT> logFont,
            Pointer<Int32> isSystemFont,
          )>()(
        ptr.ref.lpVtbl,
        font,
        logFont,
        isSystemFont,
      );

  int ConvertFontFaceToLOGFONT(
    Pointer<COMObject> font,
    Pointer<LOGFONT> logFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> font,
            Pointer<LOGFONT> logFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> font,
            Pointer<LOGFONT> logFont,
          )>()(
        ptr.ref.lpVtbl,
        font,
        logFont,
      );

  int CreateFontFaceFromHdc(
    int hdc,
    Pointer<Pointer<COMObject>> fontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Pointer<Pointer<COMObject>> fontFace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            Pointer<Pointer<COMObject>> fontFace,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        fontFace,
      );

  int CreateBitmapRenderTarget(
    int hdc,
    int width,
    int height,
    Pointer<Pointer<COMObject>> renderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Uint32 width,
            Uint32 height,
            Pointer<Pointer<COMObject>> renderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            int width,
            int height,
            Pointer<Pointer<COMObject>> renderTarget,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        width,
        height,
        renderTarget,
      );
}
