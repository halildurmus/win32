// IMLangFontLink2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../globalization/IMLangCodePages.dart';
import '../graphics/gdi/structs.g.dart';
import '../foundation/structs.g.dart';
import '../globalization/structs.g.dart';

/// @nodoc
const IID_IMLangFontLink2 = '{DCCFC162-2B38-11D2-B7EC-00C04F8F5D9A}';

/// {@category Interface}
/// {@category com}
class IMLangFontLink2 extends IMLangCodePages {
  // vtable begins at 7, is 7 entries long.
  IMLangFontLink2(Pointer<COMObject> ptr) : super(ptr);

  int GetFontCodePages(
    int hDC,
    int hFont,
    Pointer<Uint32> pdwCodePages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            IntPtr hFont,
            Pointer<Uint32> pdwCodePages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            int hFont,
            Pointer<Uint32> pdwCodePages,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        hFont,
        pdwCodePages,
      );

  int ReleaseFont(
    int hFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hFont,
          )>()(
        ptr.ref.lpVtbl,
        hFont,
      );

  int ResetFontMapping() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int MapFont(
    int hDC,
    int dwCodePages,
    int chSrc,
    Pointer<IntPtr> pFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Uint32 dwCodePages,
            Uint16 chSrc,
            Pointer<IntPtr> pFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            int dwCodePages,
            int chSrc,
            Pointer<IntPtr> pFont,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        dwCodePages,
        chSrc,
        pFont,
      );

  int GetFontUnicodeRanges(
    int hDC,
    Pointer<Uint32> puiRanges,
    Pointer<UNICODERANGE> pUranges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Pointer<Uint32> puiRanges,
            Pointer<UNICODERANGE> pUranges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            Pointer<Uint32> puiRanges,
            Pointer<UNICODERANGE> pUranges,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        puiRanges,
        pUranges,
      );

  int GetScriptFontInfo(
    int sid,
    int dwFlags,
    Pointer<Uint32> puiFonts,
    Pointer<tagSCRIPFONTINFO> pScriptFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 sid,
            Uint32 dwFlags,
            Pointer<Uint32> puiFonts,
            Pointer<tagSCRIPFONTINFO> pScriptFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sid,
            int dwFlags,
            Pointer<Uint32> puiFonts,
            Pointer<tagSCRIPFONTINFO> pScriptFont,
          )>()(
        ptr.ref.lpVtbl,
        sid,
        dwFlags,
        puiFonts,
        pScriptFont,
      );

  int CodePageToScriptID(
    int uiCodePage,
    Pointer<Uint8> pSid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
            Pointer<Uint8> pSid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
            Pointer<Uint8> pSid,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
        pSid,
      );
}
