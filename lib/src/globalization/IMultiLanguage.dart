// IMultiLanguage.dart

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

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';
import '../globalization/structs.g.dart';
import '../globalization/IEnumCodePage.dart';
import '../globalization/IEnumRfc1766.dart';
import '../globalization/IMLangConvertCharset.dart';

/// @nodoc
const IID_IMultiLanguage = '{275C23E1-3747-11D0-9FEA-00AA003F8646}';

/// {@category Interface}
/// {@category com}
class IMultiLanguage extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IMultiLanguage(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberOfCodePageInfo(
    Pointer<Uint32> pcCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCodePage,
          )>()(
        ptr.ref.lpVtbl,
        pcCodePage,
      );

  int GetCodePageInfo(
    int uiCodePage,
    Pointer<MIMECPINFO> pCodePageInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
            Pointer<MIMECPINFO> pCodePageInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
            Pointer<MIMECPINFO> pCodePageInfo,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
        pCodePageInfo,
      );

  int GetFamilyCodePage(
    int uiCodePage,
    Pointer<Uint32> puiFamilyCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
            Pointer<Uint32> puiFamilyCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
            Pointer<Uint32> puiFamilyCodePage,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
        puiFamilyCodePage,
      );

  int EnumCodePages(
    int grfFlags,
    Pointer<Pointer<COMObject>> ppEnumCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfFlags,
            Pointer<Pointer<COMObject>> ppEnumCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfFlags,
            Pointer<Pointer<COMObject>> ppEnumCodePage,
          )>()(
        ptr.ref.lpVtbl,
        grfFlags,
        ppEnumCodePage,
      );

  int GetCharsetInfo(
    Pointer<Utf16> Charset,
    Pointer<MIMECSETINFO> pCharsetInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Charset,
            Pointer<MIMECSETINFO> pCharsetInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Charset,
            Pointer<MIMECSETINFO> pCharsetInfo,
          )>()(
        ptr.ref.lpVtbl,
        Charset,
        pCharsetInfo,
      );

  int IsConvertible(
    int dwSrcEncoding,
    int dwDstEncoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSrcEncoding,
            Uint32 dwDstEncoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSrcEncoding,
            int dwDstEncoding,
          )>()(
        ptr.ref.lpVtbl,
        dwSrcEncoding,
        dwDstEncoding,
      );

  int ConvertString(
    Pointer<Uint32> pdwMode,
    int dwSrcEncoding,
    int dwDstEncoding,
    Pointer<Uint8> pSrcStr,
    Pointer<Uint32> pcSrcSize,
    Pointer<Uint8> pDstStr,
    Pointer<Uint32> pcDstSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            Uint32 dwSrcEncoding,
            Uint32 dwDstEncoding,
            Pointer<Uint8> pSrcStr,
            Pointer<Uint32> pcSrcSize,
            Pointer<Uint8> pDstStr,
            Pointer<Uint32> pcDstSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            int dwSrcEncoding,
            int dwDstEncoding,
            Pointer<Uint8> pSrcStr,
            Pointer<Uint32> pcSrcSize,
            Pointer<Uint8> pDstStr,
            Pointer<Uint32> pcDstSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwMode,
        dwSrcEncoding,
        dwDstEncoding,
        pSrcStr,
        pcSrcSize,
        pDstStr,
        pcDstSize,
      );

  int ConvertStringToUnicode(
    Pointer<Uint32> pdwMode,
    int dwEncoding,
    Pointer<Utf8> pSrcStr,
    Pointer<Uint32> pcSrcSize,
    Pointer<Utf16> pDstStr,
    Pointer<Uint32> pcDstSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            Uint32 dwEncoding,
            Pointer<Utf8> pSrcStr,
            Pointer<Uint32> pcSrcSize,
            Pointer<Utf16> pDstStr,
            Pointer<Uint32> pcDstSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            int dwEncoding,
            Pointer<Utf8> pSrcStr,
            Pointer<Uint32> pcSrcSize,
            Pointer<Utf16> pDstStr,
            Pointer<Uint32> pcDstSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwMode,
        dwEncoding,
        pSrcStr,
        pcSrcSize,
        pDstStr,
        pcDstSize,
      );

  int ConvertStringFromUnicode(
    Pointer<Uint32> pdwMode,
    int dwEncoding,
    Pointer<Utf16> pSrcStr,
    Pointer<Uint32> pcSrcSize,
    Pointer<Utf8> pDstStr,
    Pointer<Uint32> pcDstSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            Uint32 dwEncoding,
            Pointer<Utf16> pSrcStr,
            Pointer<Uint32> pcSrcSize,
            Pointer<Utf8> pDstStr,
            Pointer<Uint32> pcDstSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            int dwEncoding,
            Pointer<Utf16> pSrcStr,
            Pointer<Uint32> pcSrcSize,
            Pointer<Utf8> pDstStr,
            Pointer<Uint32> pcDstSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwMode,
        dwEncoding,
        pSrcStr,
        pcSrcSize,
        pDstStr,
        pcDstSize,
      );

  int ConvertStringReset() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetRfc1766FromLcid(
    int Locale,
    Pointer<Pointer<Utf16>> pbstrRfc1766,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Locale,
            Pointer<Pointer<Utf16>> pbstrRfc1766,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Locale,
            Pointer<Pointer<Utf16>> pbstrRfc1766,
          )>()(
        ptr.ref.lpVtbl,
        Locale,
        pbstrRfc1766,
      );

  int GetLcidFromRfc1766(
    Pointer<Uint32> pLocale,
    Pointer<Utf16> bstrRfc1766,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pLocale,
            Pointer<Utf16> bstrRfc1766,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pLocale,
            Pointer<Utf16> bstrRfc1766,
          )>()(
        ptr.ref.lpVtbl,
        pLocale,
        bstrRfc1766,
      );

  int EnumRfc1766(
    Pointer<Pointer<COMObject>> ppEnumRfc1766,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumRfc1766,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumRfc1766,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumRfc1766,
      );

  int GetRfc1766Info(
    int Locale,
    Pointer<RFC1766INFO> pRfc1766Info,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Locale,
            Pointer<RFC1766INFO> pRfc1766Info,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Locale,
            Pointer<RFC1766INFO> pRfc1766Info,
          )>()(
        ptr.ref.lpVtbl,
        Locale,
        pRfc1766Info,
      );

  int CreateConvertCharset(
    int uiSrcCodePage,
    int uiDstCodePage,
    int dwProperty,
    Pointer<Pointer<COMObject>> ppMLangConvertCharset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiSrcCodePage,
            Uint32 uiDstCodePage,
            Uint32 dwProperty,
            Pointer<Pointer<COMObject>> ppMLangConvertCharset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiSrcCodePage,
            int uiDstCodePage,
            int dwProperty,
            Pointer<Pointer<COMObject>> ppMLangConvertCharset,
          )>()(
        ptr.ref.lpVtbl,
        uiSrcCodePage,
        uiDstCodePage,
        dwProperty,
        ppMLangConvertCharset,
      );
}
