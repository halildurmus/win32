// IMultiLanguage2.dart

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
import '../system/com/IStream.dart';
import '../globalization/IEnumScript.dart';

/// @nodoc
const IID_IMultiLanguage2 = '{DCCFC164-2B38-11D2-B7EC-00C04F8F5D9A}';

/// {@category Interface}
/// {@category com}
class IMultiLanguage2 extends IUnknown {
  // vtable begins at 3, is 27 entries long.
  IMultiLanguage2(Pointer<COMObject> ptr) : super(ptr);

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
    int LangId,
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
            Uint16 LangId,
            Pointer<MIMECPINFO> pCodePageInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
            int LangId,
            Pointer<MIMECPINFO> pCodePageInfo,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
        LangId,
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
    int LangId,
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
            Uint16 LangId,
            Pointer<Pointer<COMObject>> ppEnumCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfFlags,
            int LangId,
            Pointer<Pointer<COMObject>> ppEnumCodePage,
          )>()(
        ptr.ref.lpVtbl,
        grfFlags,
        LangId,
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
    int LangId,
    Pointer<Pointer<COMObject>> ppEnumRfc1766,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 LangId,
            Pointer<Pointer<COMObject>> ppEnumRfc1766,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LangId,
            Pointer<Pointer<COMObject>> ppEnumRfc1766,
          )>()(
        ptr.ref.lpVtbl,
        LangId,
        ppEnumRfc1766,
      );

  int GetRfc1766Info(
    int Locale,
    int LangId,
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
            Uint16 LangId,
            Pointer<RFC1766INFO> pRfc1766Info,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Locale,
            int LangId,
            Pointer<RFC1766INFO> pRfc1766Info,
          )>()(
        ptr.ref.lpVtbl,
        Locale,
        LangId,
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

  int ConvertStringInIStream(
    Pointer<Uint32> pdwMode,
    int dwFlag,
    Pointer<Utf16> lpFallBack,
    int dwSrcEncoding,
    int dwDstEncoding,
    Pointer<COMObject> pstmIn,
    Pointer<COMObject> pstmOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            Uint32 dwFlag,
            Pointer<Utf16> lpFallBack,
            Uint32 dwSrcEncoding,
            Uint32 dwDstEncoding,
            Pointer<COMObject> pstmIn,
            Pointer<COMObject> pstmOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMode,
            int dwFlag,
            Pointer<Utf16> lpFallBack,
            int dwSrcEncoding,
            int dwDstEncoding,
            Pointer<COMObject> pstmIn,
            Pointer<COMObject> pstmOut,
          )>()(
        ptr.ref.lpVtbl,
        pdwMode,
        dwFlag,
        lpFallBack,
        dwSrcEncoding,
        dwDstEncoding,
        pstmIn,
        pstmOut,
      );

  int ConvertStringToUnicodeEx(
    Pointer<Uint32> pdwMode,
    int dwEncoding,
    Pointer<Utf8> pSrcStr,
    Pointer<Uint32> pcSrcSize,
    Pointer<Utf16> pDstStr,
    Pointer<Uint32> pcDstSize,
    int dwFlag,
    Pointer<Utf16> lpFallBack,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
            Uint32 dwFlag,
            Pointer<Utf16> lpFallBack,
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
            int dwFlag,
            Pointer<Utf16> lpFallBack,
          )>()(
        ptr.ref.lpVtbl,
        pdwMode,
        dwEncoding,
        pSrcStr,
        pcSrcSize,
        pDstStr,
        pcDstSize,
        dwFlag,
        lpFallBack,
      );

  int ConvertStringFromUnicodeEx(
    Pointer<Uint32> pdwMode,
    int dwEncoding,
    Pointer<Utf16> pSrcStr,
    Pointer<Uint32> pcSrcSize,
    Pointer<Utf8> pDstStr,
    Pointer<Uint32> pcDstSize,
    int dwFlag,
    Pointer<Utf16> lpFallBack,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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
            Uint32 dwFlag,
            Pointer<Utf16> lpFallBack,
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
            int dwFlag,
            Pointer<Utf16> lpFallBack,
          )>()(
        ptr.ref.lpVtbl,
        pdwMode,
        dwEncoding,
        pSrcStr,
        pcSrcSize,
        pDstStr,
        pcDstSize,
        dwFlag,
        lpFallBack,
      );

  int DetectCodepageInIStream(
    int dwFlag,
    int dwPrefWinCodePage,
    Pointer<COMObject> pstmIn,
    Pointer<DetectEncodingInfo> lpEncoding,
    Pointer<Int32> pnScores,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlag,
            Uint32 dwPrefWinCodePage,
            Pointer<COMObject> pstmIn,
            Pointer<DetectEncodingInfo> lpEncoding,
            Pointer<Int32> pnScores,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlag,
            int dwPrefWinCodePage,
            Pointer<COMObject> pstmIn,
            Pointer<DetectEncodingInfo> lpEncoding,
            Pointer<Int32> pnScores,
          )>()(
        ptr.ref.lpVtbl,
        dwFlag,
        dwPrefWinCodePage,
        pstmIn,
        lpEncoding,
        pnScores,
      );

  int DetectInputCodepage(
    int dwFlag,
    int dwPrefWinCodePage,
    Pointer<Utf8> pSrcStr,
    Pointer<Int32> pcSrcSize,
    Pointer<DetectEncodingInfo> lpEncoding,
    Pointer<Int32> pnScores,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlag,
            Uint32 dwPrefWinCodePage,
            Pointer<Utf8> pSrcStr,
            Pointer<Int32> pcSrcSize,
            Pointer<DetectEncodingInfo> lpEncoding,
            Pointer<Int32> pnScores,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlag,
            int dwPrefWinCodePage,
            Pointer<Utf8> pSrcStr,
            Pointer<Int32> pcSrcSize,
            Pointer<DetectEncodingInfo> lpEncoding,
            Pointer<Int32> pnScores,
          )>()(
        ptr.ref.lpVtbl,
        dwFlag,
        dwPrefWinCodePage,
        pSrcStr,
        pcSrcSize,
        lpEncoding,
        pnScores,
      );

  int ValidateCodePage(
    int uiCodePage,
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
        hwnd,
      );

  int GetCodePageDescription(
    int uiCodePage,
    int lcid,
    Pointer<Utf16> lpWideCharStr,
    int cchWideChar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
            Uint32 lcid,
            Pointer<Utf16> lpWideCharStr,
            Int32 cchWideChar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
            int lcid,
            Pointer<Utf16> lpWideCharStr,
            int cchWideChar,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
        lcid,
        lpWideCharStr,
        cchWideChar,
      );

  int IsCodePageInstallable(
    int uiCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
      );

  int SetMimeDBSource(
    int dwSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSource,
          )>()(
        ptr.ref.lpVtbl,
        dwSource,
      );

  int GetNumberOfScripts(
    Pointer<Uint32> pnScripts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnScripts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnScripts,
          )>()(
        ptr.ref.lpVtbl,
        pnScripts,
      );

  int EnumScripts(
    int dwFlags,
    int LangId,
    Pointer<Pointer<COMObject>> ppEnumScript,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint16 LangId,
            Pointer<Pointer<COMObject>> ppEnumScript,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int LangId,
            Pointer<Pointer<COMObject>> ppEnumScript,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        LangId,
        ppEnumScript,
      );

  int ValidateCodePageEx(
    int uiCodePage,
    int hwnd,
    int dwfIODControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCodePage,
            IntPtr hwnd,
            Uint32 dwfIODControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCodePage,
            int hwnd,
            int dwfIODControl,
          )>()(
        ptr.ref.lpVtbl,
        uiCodePage,
        hwnd,
        dwfIODControl,
      );
}
