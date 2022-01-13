// IActiveIMMApp.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../globalization/structs.g.dart';
import '../../../ui/textservices/structs.g.dart';
import '../../../ui/input/ime/structs.g.dart';
import '../../../ui/input/ime/IEnumRegisterWord.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../ui/input/ime/IEnumInputContext.dart';

/// @nodoc
const IID_IActiveIMMApp = '{08C0E040-62D1-11D1-9326-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class IActiveIMMApp extends IUnknown {
  // vtable begins at 3, is 68 entries long.
  IActiveIMMApp(Pointer<COMObject> ptr) : super(ptr);

  int AssociateContext(
    int hWnd,
    int hIME,
    Pointer<IntPtr> phPrev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            IntPtr hIME,
            Pointer<IntPtr> phPrev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int hIME,
            Pointer<IntPtr> phPrev,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        hIME,
        phPrev,
      );

  int ConfigureIMEA(
    int hKL,
    int hWnd,
    int dwMode,
    Pointer<REGISTERWORD> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            IntPtr hWnd,
            Uint32 dwMode,
            Pointer<REGISTERWORD> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int hWnd,
            int dwMode,
            Pointer<REGISTERWORD> pData,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        hWnd,
        dwMode,
        pData,
      );

  int ConfigureIMEW(
    int hKL,
    int hWnd,
    int dwMode,
    Pointer<REGISTERWORD> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            IntPtr hWnd,
            Uint32 dwMode,
            Pointer<REGISTERWORD> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int hWnd,
            int dwMode,
            Pointer<REGISTERWORD> pData,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        hWnd,
        dwMode,
        pData,
      );

  int CreateContext(
    Pointer<IntPtr> phIMC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phIMC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phIMC,
          )>()(
        ptr.ref.lpVtbl,
        phIMC,
      );

  int DestroyContext(
    int hIME,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIME,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIME,
          )>()(
        ptr.ref.lpVtbl,
        hIME,
      );

  int EnumRegisterWordA(
    int hKL,
    Pointer<Utf8> szReading,
    int dwStyle,
    Pointer<Utf8> szRegister,
    Pointer pData,
    Pointer<Pointer<COMObject>> pEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Utf8> szReading,
            Uint32 dwStyle,
            Pointer<Utf8> szRegister,
            Pointer pData,
            Pointer<Pointer<COMObject>> pEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Utf8> szReading,
            int dwStyle,
            Pointer<Utf8> szRegister,
            Pointer pData,
            Pointer<Pointer<COMObject>> pEnum,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        szReading,
        dwStyle,
        szRegister,
        pData,
        pEnum,
      );

  int EnumRegisterWordW(
    int hKL,
    Pointer<Utf16> szReading,
    int dwStyle,
    Pointer<Utf16> szRegister,
    Pointer pData,
    Pointer<Pointer<COMObject>> pEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Utf16> szReading,
            Uint32 dwStyle,
            Pointer<Utf16> szRegister,
            Pointer pData,
            Pointer<Pointer<COMObject>> pEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Utf16> szReading,
            int dwStyle,
            Pointer<Utf16> szRegister,
            Pointer pData,
            Pointer<Pointer<COMObject>> pEnum,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        szReading,
        dwStyle,
        szRegister,
        pData,
        pEnum,
      );

  int EscapeA(
    int hKL,
    int hIMC,
    int uEscape,
    Pointer pData,
    Pointer<IntPtr> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            IntPtr hIMC,
            Uint32 uEscape,
            Pointer pData,
            Pointer<IntPtr> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int hIMC,
            int uEscape,
            Pointer pData,
            Pointer<IntPtr> plResult,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        hIMC,
        uEscape,
        pData,
        plResult,
      );

  int EscapeW(
    int hKL,
    int hIMC,
    int uEscape,
    Pointer pData,
    Pointer<IntPtr> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            IntPtr hIMC,
            Uint32 uEscape,
            Pointer pData,
            Pointer<IntPtr> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int hIMC,
            int uEscape,
            Pointer pData,
            Pointer<IntPtr> plResult,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        hIMC,
        uEscape,
        pData,
        plResult,
      );

  int GetCandidateListA(
    int hIMC,
    int dwIndex,
    int uBufLen,
    Pointer<CANDIDATELIST> pCandList,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Uint32 uBufLen,
            Pointer<CANDIDATELIST> pCandList,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            int uBufLen,
            Pointer<CANDIDATELIST> pCandList,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        uBufLen,
        pCandList,
        puCopied,
      );

  int GetCandidateListW(
    int hIMC,
    int dwIndex,
    int uBufLen,
    Pointer<CANDIDATELIST> pCandList,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Uint32 uBufLen,
            Pointer<CANDIDATELIST> pCandList,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            int uBufLen,
            Pointer<CANDIDATELIST> pCandList,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        uBufLen,
        pCandList,
        puCopied,
      );

  int GetCandidateListCountA(
    int hIMC,
    Pointer<Uint32> pdwListSize,
    Pointer<Uint32> pdwBufLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<Uint32> pdwListSize,
            Pointer<Uint32> pdwBufLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<Uint32> pdwListSize,
            Pointer<Uint32> pdwBufLen,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pdwListSize,
        pdwBufLen,
      );

  int GetCandidateListCountW(
    int hIMC,
    Pointer<Uint32> pdwListSize,
    Pointer<Uint32> pdwBufLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<Uint32> pdwListSize,
            Pointer<Uint32> pdwBufLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<Uint32> pdwListSize,
            Pointer<Uint32> pdwBufLen,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pdwListSize,
        pdwBufLen,
      );

  int GetCandidateWindow(
    int hIMC,
    int dwIndex,
    Pointer<CANDIDATEFORM> pCandidate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Pointer<CANDIDATEFORM> pCandidate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            Pointer<CANDIDATEFORM> pCandidate,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        pCandidate,
      );

  int GetCompositionFontA(
    int hIMC,
    Pointer<LOGFONT> plf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<LOGFONT> plf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<LOGFONT> plf,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        plf,
      );

  int GetCompositionFontW(
    int hIMC,
    Pointer<LOGFONT> plf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<LOGFONT> plf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<LOGFONT> plf,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        plf,
      );

  int GetCompositionStringA(
    int hIMC,
    int dwIndex,
    int dwBufLen,
    Pointer<Int32> plCopied,
    Pointer pBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Uint32 dwBufLen,
            Pointer<Int32> plCopied,
            Pointer pBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            int dwBufLen,
            Pointer<Int32> plCopied,
            Pointer pBuf,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        dwBufLen,
        plCopied,
        pBuf,
      );

  int GetCompositionStringW(
    int hIMC,
    int dwIndex,
    int dwBufLen,
    Pointer<Int32> plCopied,
    Pointer pBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Uint32 dwBufLen,
            Pointer<Int32> plCopied,
            Pointer pBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            int dwBufLen,
            Pointer<Int32> plCopied,
            Pointer pBuf,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        dwBufLen,
        plCopied,
        pBuf,
      );

  int GetCompositionWindow(
    int hIMC,
    Pointer<COMPOSITIONFORM> pCompForm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<COMPOSITIONFORM> pCompForm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<COMPOSITIONFORM> pCompForm,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pCompForm,
      );

  int GetContext(
    int hWnd,
    Pointer<IntPtr> phIMC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Pointer<IntPtr> phIMC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            Pointer<IntPtr> phIMC,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        phIMC,
      );

  int GetConversionListA(
    int hKL,
    int hIMC,
    Pointer<Utf8> pSrc,
    int uBufLen,
    int uFlag,
    Pointer<CANDIDATELIST> pDst,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            IntPtr hIMC,
            Pointer<Utf8> pSrc,
            Uint32 uBufLen,
            Uint32 uFlag,
            Pointer<CANDIDATELIST> pDst,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int hIMC,
            Pointer<Utf8> pSrc,
            int uBufLen,
            int uFlag,
            Pointer<CANDIDATELIST> pDst,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        hIMC,
        pSrc,
        uBufLen,
        uFlag,
        pDst,
        puCopied,
      );

  int GetConversionListW(
    int hKL,
    int hIMC,
    Pointer<Utf16> pSrc,
    int uBufLen,
    int uFlag,
    Pointer<CANDIDATELIST> pDst,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            IntPtr hIMC,
            Pointer<Utf16> pSrc,
            Uint32 uBufLen,
            Uint32 uFlag,
            Pointer<CANDIDATELIST> pDst,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int hIMC,
            Pointer<Utf16> pSrc,
            int uBufLen,
            int uFlag,
            Pointer<CANDIDATELIST> pDst,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        hIMC,
        pSrc,
        uBufLen,
        uFlag,
        pDst,
        puCopied,
      );

  int GetConversionStatus(
    int hIMC,
    Pointer<Uint32> pfdwConversion,
    Pointer<Uint32> pfdwSentence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<Uint32> pfdwConversion,
            Pointer<Uint32> pfdwSentence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<Uint32> pfdwConversion,
            Pointer<Uint32> pfdwSentence,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pfdwConversion,
        pfdwSentence,
      );

  int GetDefaultIMEWnd(
    int hWnd,
    Pointer<IntPtr> phDefWnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Pointer<IntPtr> phDefWnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            Pointer<IntPtr> phDefWnd,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        phDefWnd,
      );

  int GetDescriptionA(
    int hKL,
    int uBufLen,
    Pointer<Utf8> szDescription,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Uint32 uBufLen,
            Pointer<Utf8> szDescription,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int uBufLen,
            Pointer<Utf8> szDescription,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        uBufLen,
        szDescription,
        puCopied,
      );

  int GetDescriptionW(
    int hKL,
    int uBufLen,
    Pointer<Utf16> szDescription,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Uint32 uBufLen,
            Pointer<Utf16> szDescription,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int uBufLen,
            Pointer<Utf16> szDescription,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        uBufLen,
        szDescription,
        puCopied,
      );

  int GetGuideLineA(
    int hIMC,
    int dwIndex,
    int dwBufLen,
    Pointer<Utf8> pBuf,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Uint32 dwBufLen,
            Pointer<Utf8> pBuf,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            int dwBufLen,
            Pointer<Utf8> pBuf,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        dwBufLen,
        pBuf,
        pdwResult,
      );

  int GetGuideLineW(
    int hIMC,
    int dwIndex,
    int dwBufLen,
    Pointer<Utf16> pBuf,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Uint32 dwBufLen,
            Pointer<Utf16> pBuf,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            int dwBufLen,
            Pointer<Utf16> pBuf,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        dwBufLen,
        pBuf,
        pdwResult,
      );

  int GetIMEFileNameA(
    int hKL,
    int uBufLen,
    Pointer<Utf8> szFileName,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Uint32 uBufLen,
            Pointer<Utf8> szFileName,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int uBufLen,
            Pointer<Utf8> szFileName,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        uBufLen,
        szFileName,
        puCopied,
      );

  int GetIMEFileNameW(
    int hKL,
    int uBufLen,
    Pointer<Utf16> szFileName,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Uint32 uBufLen,
            Pointer<Utf16> szFileName,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int uBufLen,
            Pointer<Utf16> szFileName,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        uBufLen,
        szFileName,
        puCopied,
      );

  int GetOpenStatus(
    int hIMC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
      );

  int GetProperty(
    int hKL,
    int fdwIndex,
    Pointer<Uint32> pdwProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Uint32 fdwIndex,
            Pointer<Uint32> pdwProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int fdwIndex,
            Pointer<Uint32> pdwProperty,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        fdwIndex,
        pdwProperty,
      );

  int GetRegisterWordStyleA(
    int hKL,
    int nItem,
    Pointer<STYLEBUF> pStyleBuf,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Uint32 nItem,
            Pointer<STYLEBUF> pStyleBuf,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int nItem,
            Pointer<STYLEBUF> pStyleBuf,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        nItem,
        pStyleBuf,
        puCopied,
      );

  int GetRegisterWordStyleW(
    int hKL,
    int nItem,
    Pointer<STYLEBUF> pStyleBuf,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Uint32 nItem,
            Pointer<STYLEBUF> pStyleBuf,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int nItem,
            Pointer<STYLEBUF> pStyleBuf,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        nItem,
        pStyleBuf,
        puCopied,
      );

  int GetStatusWindowPos(
    int hIMC,
    Pointer<POINT> pptPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<POINT> pptPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<POINT> pptPos,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pptPos,
      );

  int GetVirtualKey(
    int hWnd,
    Pointer<Uint32> puVirtualKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Pointer<Uint32> puVirtualKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            Pointer<Uint32> puVirtualKey,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        puVirtualKey,
      );

  int InstallIMEA(
    Pointer<Utf8> szIMEFileName,
    Pointer<Utf8> szLayoutText,
    Pointer<IntPtr> phKL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> szIMEFileName,
            Pointer<Utf8> szLayoutText,
            Pointer<IntPtr> phKL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> szIMEFileName,
            Pointer<Utf8> szLayoutText,
            Pointer<IntPtr> phKL,
          )>()(
        ptr.ref.lpVtbl,
        szIMEFileName,
        szLayoutText,
        phKL,
      );

  int InstallIMEW(
    Pointer<Utf16> szIMEFileName,
    Pointer<Utf16> szLayoutText,
    Pointer<IntPtr> phKL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szIMEFileName,
            Pointer<Utf16> szLayoutText,
            Pointer<IntPtr> phKL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szIMEFileName,
            Pointer<Utf16> szLayoutText,
            Pointer<IntPtr> phKL,
          )>()(
        ptr.ref.lpVtbl,
        szIMEFileName,
        szLayoutText,
        phKL,
      );

  int IsIME(
    int hKL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
      );

  int IsUIMessageA(
    int hWndIME,
    int msg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndIME,
            Uint32 msg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndIME,
            int msg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        hWndIME,
        msg,
        wParam,
        lParam,
      );

  int IsUIMessageW(
    int hWndIME,
    int msg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndIME,
            Uint32 msg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndIME,
            int msg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        hWndIME,
        msg,
        wParam,
        lParam,
      );

  int NotifyIME(
    int hIMC,
    int dwAction,
    int dwIndex,
    int dwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwAction,
            Uint32 dwIndex,
            Uint32 dwValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwAction,
            int dwIndex,
            int dwValue,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwAction,
        dwIndex,
        dwValue,
      );

  int RegisterWordA(
    int hKL,
    Pointer<Utf8> szReading,
    int dwStyle,
    Pointer<Utf8> szRegister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Utf8> szReading,
            Uint32 dwStyle,
            Pointer<Utf8> szRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Utf8> szReading,
            int dwStyle,
            Pointer<Utf8> szRegister,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        szReading,
        dwStyle,
        szRegister,
      );

  int RegisterWordW(
    int hKL,
    Pointer<Utf16> szReading,
    int dwStyle,
    Pointer<Utf16> szRegister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Utf16> szReading,
            Uint32 dwStyle,
            Pointer<Utf16> szRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Utf16> szReading,
            int dwStyle,
            Pointer<Utf16> szRegister,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        szReading,
        dwStyle,
        szRegister,
      );

  int ReleaseContext(
    int hWnd,
    int hIMC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            IntPtr hIMC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int hIMC,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        hIMC,
      );

  int SetCandidateWindow(
    int hIMC,
    Pointer<CANDIDATEFORM> pCandidate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<CANDIDATEFORM> pCandidate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<CANDIDATEFORM> pCandidate,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pCandidate,
      );

  int SetCompositionFontA(
    int hIMC,
    Pointer<LOGFONT> plf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<LOGFONT> plf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<LOGFONT> plf,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        plf,
      );

  int SetCompositionFontW(
    int hIMC,
    Pointer<LOGFONT> plf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<LOGFONT> plf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<LOGFONT> plf,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        plf,
      );

  int SetCompositionStringA(
    int hIMC,
    int dwIndex,
    Pointer pComp,
    int dwCompLen,
    Pointer pRead,
    int dwReadLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Pointer pComp,
            Uint32 dwCompLen,
            Pointer pRead,
            Uint32 dwReadLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            Pointer pComp,
            int dwCompLen,
            Pointer pRead,
            int dwReadLen,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        pComp,
        dwCompLen,
        pRead,
        dwReadLen,
      );

  int SetCompositionStringW(
    int hIMC,
    int dwIndex,
    Pointer pComp,
    int dwCompLen,
    Pointer pRead,
    int dwReadLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwIndex,
            Pointer pComp,
            Uint32 dwCompLen,
            Pointer pRead,
            Uint32 dwReadLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwIndex,
            Pointer pComp,
            int dwCompLen,
            Pointer pRead,
            int dwReadLen,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwIndex,
        pComp,
        dwCompLen,
        pRead,
        dwReadLen,
      );

  int SetCompositionWindow(
    int hIMC,
    Pointer<COMPOSITIONFORM> pCompForm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<COMPOSITIONFORM> pCompForm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<COMPOSITIONFORM> pCompForm,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pCompForm,
      );

  int SetConversionStatus(
    int hIMC,
    int fdwConversion,
    int fdwSentence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 fdwConversion,
            Uint32 fdwSentence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int fdwConversion,
            int fdwSentence,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        fdwConversion,
        fdwSentence,
      );

  int SetOpenStatus(
    int hIMC,
    int fOpen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Int32 fOpen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int fOpen,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        fOpen,
      );

  int SetStatusWindowPos(
    int hIMC,
    Pointer<POINT> pptPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<POINT> pptPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<POINT> pptPos,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        pptPos,
      );

  int SimulateHotKey(
    int hWnd,
    int dwHotKeyID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Uint32 dwHotKeyID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int dwHotKeyID,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        dwHotKeyID,
      );

  int UnregisterWordA(
    int hKL,
    Pointer<Utf8> szReading,
    int dwStyle,
    Pointer<Utf8> szUnregister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Utf8> szReading,
            Uint32 dwStyle,
            Pointer<Utf8> szUnregister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Utf8> szReading,
            int dwStyle,
            Pointer<Utf8> szUnregister,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        szReading,
        dwStyle,
        szUnregister,
      );

  int UnregisterWordW(
    int hKL,
    Pointer<Utf16> szReading,
    int dwStyle,
    Pointer<Utf16> szUnregister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Utf16> szReading,
            Uint32 dwStyle,
            Pointer<Utf16> szUnregister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Utf16> szReading,
            int dwStyle,
            Pointer<Utf16> szUnregister,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        szReading,
        dwStyle,
        szUnregister,
      );

  int Activate(
    int fRestoreLayout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRestoreLayout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRestoreLayout,
          )>()(
        ptr.ref.lpVtbl,
        fRestoreLayout,
      );

  int Deactivate() => ptr.ref.lpVtbl.value
          .elementAt(61)
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

  int OnDefWindowProc(
    int hWnd,
    int Msg,
    int wParam,
    int lParam,
    Pointer<IntPtr> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            Uint32 Msg,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<IntPtr> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int Msg,
            int wParam,
            int lParam,
            Pointer<IntPtr> plResult,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        Msg,
        wParam,
        lParam,
        plResult,
      );

  int FilterClientWindows(
    Pointer<Uint16> aaClassList,
    int uSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> aaClassList,
            Uint32 uSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> aaClassList,
            int uSize,
          )>()(
        ptr.ref.lpVtbl,
        aaClassList,
        uSize,
      );

  int GetCodePageA(
    int hKL,
    Pointer<Uint32> uCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Uint32> uCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Uint32> uCodePage,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        uCodePage,
      );

  int GetLangId(
    int hKL,
    Pointer<Uint16> plid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hKL,
            Pointer<Uint16> plid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            Pointer<Uint16> plid,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        plid,
      );

  int AssociateContextEx(
    int hWnd,
    int hIMC,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWnd,
            IntPtr hIMC,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int hIMC,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        hIMC,
        dwFlags,
      );

  int DisableIME(
    int idThread,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idThread,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idThread,
          )>()(
        ptr.ref.lpVtbl,
        idThread,
      );

  int GetImeMenuItemsA(
    int hIMC,
    int dwFlags,
    int dwType,
    Pointer<IMEMENUITEMINFO> pImeParentMenu,
    Pointer<IMEMENUITEMINFO> pImeMenu,
    int dwSize,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwFlags,
            Uint32 dwType,
            Pointer<IMEMENUITEMINFO> pImeParentMenu,
            Pointer<IMEMENUITEMINFO> pImeMenu,
            Uint32 dwSize,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwFlags,
            int dwType,
            Pointer<IMEMENUITEMINFO> pImeParentMenu,
            Pointer<IMEMENUITEMINFO> pImeMenu,
            int dwSize,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwFlags,
        dwType,
        pImeParentMenu,
        pImeMenu,
        dwSize,
        pdwResult,
      );

  int GetImeMenuItemsW(
    int hIMC,
    int dwFlags,
    int dwType,
    Pointer<IMEMENUITEMINFO> pImeParentMenu,
    Pointer<IMEMENUITEMINFO> pImeMenu,
    int dwSize,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 dwFlags,
            Uint32 dwType,
            Pointer<IMEMENUITEMINFO> pImeParentMenu,
            Pointer<IMEMENUITEMINFO> pImeMenu,
            Uint32 dwSize,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int dwFlags,
            int dwType,
            Pointer<IMEMENUITEMINFO> pImeParentMenu,
            Pointer<IMEMENUITEMINFO> pImeMenu,
            int dwSize,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        dwFlags,
        dwType,
        pImeParentMenu,
        pImeMenu,
        dwSize,
        pdwResult,
      );

  int EnumInputContext(
    int idThread,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idThread,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idThread,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        idThread,
        ppEnum,
      );
}
