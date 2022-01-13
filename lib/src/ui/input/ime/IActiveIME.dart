// IActiveIME.dart

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
import '../../../ui/input/ime/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../globalization/structs.g.dart';
import '../../../ui/textservices/structs.g.dart';
import '../../../ui/input/ime/IEnumRegisterWord.dart';

/// @nodoc
const IID_IActiveIME = '{6FE20962-D077-11D0-8FE7-00AA006BCC59}';

/// {@category Interface}
/// {@category com}
class IActiveIME extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IActiveIME(Pointer<COMObject> ptr) : super(ptr);

  int Inquire(
    int dwSystemInfoFlags,
    Pointer<IMEINFO> pIMEInfo,
    Pointer<Utf16> szWndClass,
    Pointer<Uint32> pdwPrivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSystemInfoFlags,
            Pointer<IMEINFO> pIMEInfo,
            Pointer<Utf16> szWndClass,
            Pointer<Uint32> pdwPrivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSystemInfoFlags,
            Pointer<IMEINFO> pIMEInfo,
            Pointer<Utf16> szWndClass,
            Pointer<Uint32> pdwPrivate,
          )>()(
        ptr.ref.lpVtbl,
        dwSystemInfoFlags,
        pIMEInfo,
        szWndClass,
        pdwPrivate,
      );

  int ConversionList(
    int hIMC,
    Pointer<Utf16> szSource,
    int uFlag,
    int uBufLen,
    Pointer<CANDIDATELIST> pDest,
    Pointer<Uint32> puCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Pointer<Utf16> szSource,
            Uint32 uFlag,
            Uint32 uBufLen,
            Pointer<CANDIDATELIST> pDest,
            Pointer<Uint32> puCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            Pointer<Utf16> szSource,
            int uFlag,
            int uBufLen,
            Pointer<CANDIDATELIST> pDest,
            Pointer<Uint32> puCopied,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        szSource,
        uFlag,
        uBufLen,
        pDest,
        puCopied,
      );

  int Configure(
    int hKL,
    int hWnd,
    int dwMode,
    Pointer<REGISTERWORD> pRegisterWord,
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
            Pointer<REGISTERWORD> pRegisterWord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hKL,
            int hWnd,
            int dwMode,
            Pointer<REGISTERWORD> pRegisterWord,
          )>()(
        ptr.ref.lpVtbl,
        hKL,
        hWnd,
        dwMode,
        pRegisterWord,
      );

  int Destroy(
    int uReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uReserved,
          )>()(
        ptr.ref.lpVtbl,
        uReserved,
      );

  int Escape(
    int hIMC,
    int uEscape,
    Pointer pData,
    Pointer<IntPtr> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 uEscape,
            Pointer pData,
            Pointer<IntPtr> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int uEscape,
            Pointer pData,
            Pointer<IntPtr> plResult,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        uEscape,
        pData,
        plResult,
      );

  int SetActiveContext(
    int hIMC,
    int fFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Int32 fFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int fFlag,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        fFlag,
      );

  int ProcessKey(
    int hIMC,
    int uVirKey,
    int lParam,
    Pointer<Uint8> pbKeyState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Uint32 uVirKey,
            Uint32 lParam,
            Pointer<Uint8> pbKeyState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int uVirKey,
            int lParam,
            Pointer<Uint8> pbKeyState,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        uVirKey,
        lParam,
        pbKeyState,
      );

  int Notify(
    int hIMC,
    int dwAction,
    int dwIndex,
    int dwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int Select(
    int hIMC,
    int fSelect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hIMC,
            Int32 fSelect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hIMC,
            int fSelect,
          )>()(
        ptr.ref.lpVtbl,
        hIMC,
        fSelect,
      );

  int SetCompositionString(
    int hIMC,
    int dwIndex,
    Pointer pComp,
    int dwCompLen,
    Pointer pRead,
    int dwReadLen,
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

  int ToAsciiEx(
    int uVirKey,
    int uScanCode,
    Pointer<Uint8> pbKeyState,
    int fuState,
    int hIMC,
    Pointer<Uint32> pdwTransBuf,
    Pointer<Uint32> puSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uVirKey,
            Uint32 uScanCode,
            Pointer<Uint8> pbKeyState,
            Uint32 fuState,
            IntPtr hIMC,
            Pointer<Uint32> pdwTransBuf,
            Pointer<Uint32> puSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uVirKey,
            int uScanCode,
            Pointer<Uint8> pbKeyState,
            int fuState,
            int hIMC,
            Pointer<Uint32> pdwTransBuf,
            Pointer<Uint32> puSize,
          )>()(
        ptr.ref.lpVtbl,
        uVirKey,
        uScanCode,
        pbKeyState,
        fuState,
        hIMC,
        pdwTransBuf,
        puSize,
      );

  int RegisterWord(
    Pointer<Utf16> szReading,
    int dwStyle,
    Pointer<Utf16> szString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szReading,
            Uint32 dwStyle,
            Pointer<Utf16> szString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szReading,
            int dwStyle,
            Pointer<Utf16> szString,
          )>()(
        ptr.ref.lpVtbl,
        szReading,
        dwStyle,
        szString,
      );

  int UnregisterWord(
    Pointer<Utf16> szReading,
    int dwStyle,
    Pointer<Utf16> szString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szReading,
            Uint32 dwStyle,
            Pointer<Utf16> szString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szReading,
            int dwStyle,
            Pointer<Utf16> szString,
          )>()(
        ptr.ref.lpVtbl,
        szReading,
        dwStyle,
        szString,
      );

  int GetRegisterWordStyle(
    int nItem,
    Pointer<STYLEBUF> pStyleBuf,
    Pointer<Uint32> puBufSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nItem,
            Pointer<STYLEBUF> pStyleBuf,
            Pointer<Uint32> puBufSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nItem,
            Pointer<STYLEBUF> pStyleBuf,
            Pointer<Uint32> puBufSize,
          )>()(
        ptr.ref.lpVtbl,
        nItem,
        pStyleBuf,
        puBufSize,
      );

  int EnumRegisterWord(
    Pointer<Utf16> szReading,
    int dwStyle,
    Pointer<Utf16> szRegister,
    Pointer pData,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szReading,
            Uint32 dwStyle,
            Pointer<Utf16> szRegister,
            Pointer pData,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szReading,
            int dwStyle,
            Pointer<Utf16> szRegister,
            Pointer pData,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        szReading,
        dwStyle,
        szRegister,
        pData,
        ppEnum,
      );

  int GetCodePageA(
    Pointer<Uint32> uCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> uCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> uCodePage,
          )>()(
        ptr.ref.lpVtbl,
        uCodePage,
      );

  int GetLangId(
    Pointer<Uint16> plid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> plid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> plid,
          )>()(
        ptr.ref.lpVtbl,
        plid,
      );
}
