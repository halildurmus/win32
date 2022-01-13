// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../globalization/structs.g.dart';
import '../../../ui/textservices/structs.g.dart';
import '../../../ui/input/ime/callbacks.g.dart';
import '../../../ui/input/ime/structs.g.dart';
import '../../../graphics/gdi/structs.g.dart'; // -----------------------------------------------------------------------

// imm32.dll
// -----------------------------------------------------------------------
final _imm32 = DynamicLibrary.open('imm32.dll');

int ImmAssociateContext(
  int param0,
  int param1,
) =>
    _ImmAssociateContext(
      param0,
      param1,
    );

late final _ImmAssociateContext = _imm32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
  IntPtr param1,
),
    int Function(
  int param0,
  int param1,
)>('ImmAssociateContext');

int ImmAssociateContextEx(
  int param0,
  int param1,
  int param2,
) =>
    _ImmAssociateContextEx(
      param0,
      param1,
      param2,
    );

late final _ImmAssociateContextEx = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
),
    int Function(
  int param0,
  int param1,
  int param2,
)>('ImmAssociateContextEx');

int ImmConfigureIME(
  int param0,
  int param1,
  int param2,
  Pointer param3,
) =>
    _ImmConfigureIME(
      param0,
      param1,
      param2,
      param3,
    );

late final _ImmConfigureIME = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  Pointer param3,
),
    int Function(
  int param0,
  int param1,
  int param2,
  Pointer param3,
)>('ImmConfigureIMEW');

int ImmCreateContext() => _ImmCreateContext();

late final _ImmCreateContext = _imm32
    .lookupFunction<IntPtr Function(), int Function()>('ImmCreateContext');

int ImmCreateIMCC(
  int param0,
) =>
    _ImmCreateIMCC(
      param0,
    );

late final _ImmCreateIMCC = _imm32.lookupFunction<
    IntPtr Function(
  Uint32 param0,
),
    int Function(
  int param0,
)>('ImmCreateIMCC');

int ImmCreateSoftKeyboard(
  int param0,
  int param1,
  int param2,
  int param3,
) =>
    _ImmCreateSoftKeyboard(
      param0,
      param1,
      param2,
      param3,
    );

late final _ImmCreateSoftKeyboard = _imm32.lookupFunction<
    IntPtr Function(
  Uint32 param0,
  IntPtr param1,
  Int32 param2,
  Int32 param3,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
)>('ImmCreateSoftKeyboard');

int ImmDestroyContext(
  int param0,
) =>
    _ImmDestroyContext(
      param0,
    );

late final _ImmDestroyContext = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmDestroyContext');

int ImmDestroyIMCC(
  int param0,
) =>
    _ImmDestroyIMCC(
      param0,
    );

late final _ImmDestroyIMCC = _imm32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmDestroyIMCC');

int ImmDestroySoftKeyboard(
  int param0,
) =>
    _ImmDestroySoftKeyboard(
      param0,
    );

late final _ImmDestroySoftKeyboard = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmDestroySoftKeyboard');

int ImmDisableIME(
  int param0,
) =>
    _ImmDisableIME(
      param0,
    );

late final _ImmDisableIME = _imm32.lookupFunction<
    Int32 Function(
  Uint32 param0,
),
    int Function(
  int param0,
)>('ImmDisableIME');

int ImmDisableLegacyIME() => _ImmDisableLegacyIME();

late final _ImmDisableLegacyIME = _imm32
    .lookupFunction<Int32 Function(), int Function()>('ImmDisableLegacyIME');

int ImmDisableTextFrameService(
  int idThread,
) =>
    _ImmDisableTextFrameService(
      idThread,
    );

late final _ImmDisableTextFrameService = _imm32.lookupFunction<
    Int32 Function(
  Uint32 idThread,
),
    int Function(
  int idThread,
)>('ImmDisableTextFrameService');

int ImmEnumInputContext(
  int idThread,
  Pointer<NativeFunction<IMCENUMPROC>> lpfn,
  int lParam,
) =>
    _ImmEnumInputContext(
      idThread,
      lpfn,
      lParam,
    );

late final _ImmEnumInputContext = _imm32.lookupFunction<
    Int32 Function(
  Uint32 idThread,
  Pointer<NativeFunction<IMCENUMPROC>> lpfn,
  IntPtr lParam,
),
    int Function(
  int idThread,
  Pointer<NativeFunction<IMCENUMPROC>> lpfn,
  int lParam,
)>('ImmEnumInputContext');

int ImmEnumRegisterWord(
  int param0,
  Pointer<NativeFunction<REGISTERWORDENUMPROCW>> param1,
  Pointer<Utf16> lpszReading,
  int param3,
  Pointer<Utf16> lpszRegister,
  Pointer param5,
) =>
    _ImmEnumRegisterWord(
      param0,
      param1,
      lpszReading,
      param3,
      lpszRegister,
      param5,
    );

late final _ImmEnumRegisterWord = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Pointer<NativeFunction<REGISTERWORDENUMPROCW>> param1,
  Pointer<Utf16> lpszReading,
  Uint32 param3,
  Pointer<Utf16> lpszRegister,
  Pointer param5,
),
    int Function(
  int param0,
  Pointer<NativeFunction<REGISTERWORDENUMPROCW>> param1,
  Pointer<Utf16> lpszReading,
  int param3,
  Pointer<Utf16> lpszRegister,
  Pointer param5,
)>('ImmEnumRegisterWordW');

int ImmEscape(
  int param0,
  int param1,
  int param2,
  Pointer param3,
) =>
    _ImmEscape(
      param0,
      param1,
      param2,
      param3,
    );

late final _ImmEscape = _imm32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  Pointer param3,
),
    int Function(
  int param0,
  int param1,
  int param2,
  Pointer param3,
)>('ImmEscapeW');

int ImmGenerateMessage(
  int param0,
) =>
    _ImmGenerateMessage(
      param0,
    );

late final _ImmGenerateMessage = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGenerateMessage');

int ImmGetCandidateListCount(
  int param0,
  Pointer<Uint32> lpdwListCount,
) =>
    _ImmGetCandidateListCount(
      param0,
      lpdwListCount,
    );

late final _ImmGetCandidateListCount = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Pointer<Uint32> lpdwListCount,
),
    int Function(
  int param0,
  Pointer<Uint32> lpdwListCount,
)>('ImmGetCandidateListCountW');

int ImmGetCandidateList(
  int param0,
  int deIndex,
  Pointer<CANDIDATELIST> lpCandList,
  int dwBufLen,
) =>
    _ImmGetCandidateList(
      param0,
      deIndex,
      lpCandList,
      dwBufLen,
    );

late final _ImmGetCandidateList = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Uint32 deIndex,
  Pointer<CANDIDATELIST> lpCandList,
  Uint32 dwBufLen,
),
    int Function(
  int param0,
  int deIndex,
  Pointer<CANDIDATELIST> lpCandList,
  int dwBufLen,
)>('ImmGetCandidateListW');

int ImmGetCandidateWindow(
  int param0,
  int param1,
  Pointer<CANDIDATEFORM> lpCandidate,
) =>
    _ImmGetCandidateWindow(
      param0,
      param1,
      lpCandidate,
    );

late final _ImmGetCandidateWindow = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Pointer<CANDIDATEFORM> lpCandidate,
),
    int Function(
  int param0,
  int param1,
  Pointer<CANDIDATEFORM> lpCandidate,
)>('ImmGetCandidateWindow');

int ImmGetCompositionFont(
  int param0,
  Pointer<LOGFONT> lplf,
) =>
    _ImmGetCompositionFont(
      param0,
      lplf,
    );

late final _ImmGetCompositionFont = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<LOGFONT> lplf,
),
    int Function(
  int param0,
  Pointer<LOGFONT> lplf,
)>('ImmGetCompositionFontW');

int ImmGetCompositionString(
  int param0,
  int param1,
  Pointer lpBuf,
  int dwBufLen,
) =>
    _ImmGetCompositionString(
      param0,
      param1,
      lpBuf,
      dwBufLen,
    );

late final _ImmGetCompositionString = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Pointer lpBuf,
  Uint32 dwBufLen,
),
    int Function(
  int param0,
  int param1,
  Pointer lpBuf,
  int dwBufLen,
)>('ImmGetCompositionStringW');

int ImmGetCompositionWindow(
  int param0,
  Pointer<COMPOSITIONFORM> lpCompForm,
) =>
    _ImmGetCompositionWindow(
      param0,
      lpCompForm,
    );

late final _ImmGetCompositionWindow = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<COMPOSITIONFORM> lpCompForm,
),
    int Function(
  int param0,
  Pointer<COMPOSITIONFORM> lpCompForm,
)>('ImmGetCompositionWindow');

int ImmGetContext(
  int param0,
) =>
    _ImmGetContext(
      param0,
    );

late final _ImmGetContext = _imm32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGetContext');

int ImmGetConversionList(
  int param0,
  int param1,
  Pointer<Utf16> lpSrc,
  Pointer<CANDIDATELIST> lpDst,
  int dwBufLen,
  int uFlag,
) =>
    _ImmGetConversionList(
      param0,
      param1,
      lpSrc,
      lpDst,
      dwBufLen,
      uFlag,
    );

late final _ImmGetConversionList = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<Utf16> lpSrc,
  Pointer<CANDIDATELIST> lpDst,
  Uint32 dwBufLen,
  Uint32 uFlag,
),
    int Function(
  int param0,
  int param1,
  Pointer<Utf16> lpSrc,
  Pointer<CANDIDATELIST> lpDst,
  int dwBufLen,
  int uFlag,
)>('ImmGetConversionListW');

int ImmGetConversionStatus(
  int param0,
  Pointer<Uint32> lpfdwConversion,
  Pointer<Uint32> lpfdwSentence,
) =>
    _ImmGetConversionStatus(
      param0,
      lpfdwConversion,
      lpfdwSentence,
    );

late final _ImmGetConversionStatus = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<Uint32> lpfdwConversion,
  Pointer<Uint32> lpfdwSentence,
),
    int Function(
  int param0,
  Pointer<Uint32> lpfdwConversion,
  Pointer<Uint32> lpfdwSentence,
)>('ImmGetConversionStatus');

int ImmGetDefaultIMEWnd(
  int param0,
) =>
    _ImmGetDefaultIMEWnd(
      param0,
    );

late final _ImmGetDefaultIMEWnd = _imm32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGetDefaultIMEWnd');

int ImmGetDescription(
  int param0,
  Pointer<Utf16> lpszDescription,
  int uBufLen,
) =>
    _ImmGetDescription(
      param0,
      lpszDescription,
      uBufLen,
    );

late final _ImmGetDescription = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Pointer<Utf16> lpszDescription,
  Uint32 uBufLen,
),
    int Function(
  int param0,
  Pointer<Utf16> lpszDescription,
  int uBufLen,
)>('ImmGetDescriptionW');

int ImmGetGuideLine(
  int param0,
  int dwIndex,
  Pointer<Utf16> lpBuf,
  int dwBufLen,
) =>
    _ImmGetGuideLine(
      param0,
      dwIndex,
      lpBuf,
      dwBufLen,
    );

late final _ImmGetGuideLine = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Uint32 dwIndex,
  Pointer<Utf16> lpBuf,
  Uint32 dwBufLen,
),
    int Function(
  int param0,
  int dwIndex,
  Pointer<Utf16> lpBuf,
  int dwBufLen,
)>('ImmGetGuideLineW');

int ImmGetHotKey(
  int param0,
  Pointer<Uint32> lpuModifiers,
  Pointer<Uint32> lpuVKey,
  Pointer<IntPtr> phKL,
) =>
    _ImmGetHotKey(
      param0,
      lpuModifiers,
      lpuVKey,
      phKL,
    );

late final _ImmGetHotKey = _imm32.lookupFunction<
    Int32 Function(
  Uint32 param0,
  Pointer<Uint32> lpuModifiers,
  Pointer<Uint32> lpuVKey,
  Pointer<IntPtr> phKL,
),
    int Function(
  int param0,
  Pointer<Uint32> lpuModifiers,
  Pointer<Uint32> lpuVKey,
  Pointer<IntPtr> phKL,
)>('ImmGetHotKey');

int ImmGetIMCCLockCount(
  int param0,
) =>
    _ImmGetIMCCLockCount(
      param0,
    );

late final _ImmGetIMCCLockCount = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGetIMCCLockCount');

int ImmGetIMCCSize(
  int param0,
) =>
    _ImmGetIMCCSize(
      param0,
    );

late final _ImmGetIMCCSize = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGetIMCCSize');

int ImmGetIMCLockCount(
  int param0,
) =>
    _ImmGetIMCLockCount(
      param0,
    );

late final _ImmGetIMCLockCount = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGetIMCLockCount');

int ImmGetIMEFileName(
  int param0,
  Pointer<Utf16> lpszFileName,
  int uBufLen,
) =>
    _ImmGetIMEFileName(
      param0,
      lpszFileName,
      uBufLen,
    );

late final _ImmGetIMEFileName = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Pointer<Utf16> lpszFileName,
  Uint32 uBufLen,
),
    int Function(
  int param0,
  Pointer<Utf16> lpszFileName,
  int uBufLen,
)>('ImmGetIMEFileNameW');

int ImmGetImeMenuItems(
  int param0,
  int param1,
  int param2,
  Pointer<IMEMENUITEMINFO> lpImeParentMenu,
  Pointer<IMEMENUITEMINFO> lpImeMenu,
  int dwSize,
) =>
    _ImmGetImeMenuItems(
      param0,
      param1,
      param2,
      lpImeParentMenu,
      lpImeMenu,
      dwSize,
    );

late final _ImmGetImeMenuItems = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Uint32 param1,
  Uint32 param2,
  Pointer<IMEMENUITEMINFO> lpImeParentMenu,
  Pointer<IMEMENUITEMINFO> lpImeMenu,
  Uint32 dwSize,
),
    int Function(
  int param0,
  int param1,
  int param2,
  Pointer<IMEMENUITEMINFO> lpImeParentMenu,
  Pointer<IMEMENUITEMINFO> lpImeMenu,
  int dwSize,
)>('ImmGetImeMenuItemsW');

int ImmGetOpenStatus(
  int param0,
) =>
    _ImmGetOpenStatus(
      param0,
    );

late final _ImmGetOpenStatus = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGetOpenStatus');

int ImmGetProperty(
  int param0,
  int param1,
) =>
    _ImmGetProperty(
      param0,
      param1,
    );

late final _ImmGetProperty = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Uint32 param1,
),
    int Function(
  int param0,
  int param1,
)>('ImmGetProperty');

int ImmGetRegisterWordStyle(
  int param0,
  int nItem,
  Pointer<STYLEBUF> lpStyleBuf,
) =>
    _ImmGetRegisterWordStyle(
      param0,
      nItem,
      lpStyleBuf,
    );

late final _ImmGetRegisterWordStyle = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
  Uint32 nItem,
  Pointer<STYLEBUF> lpStyleBuf,
),
    int Function(
  int param0,
  int nItem,
  Pointer<STYLEBUF> lpStyleBuf,
)>('ImmGetRegisterWordStyleW');

int ImmGetStatusWindowPos(
  int param0,
  Pointer<POINT> lpptPos,
) =>
    _ImmGetStatusWindowPos(
      param0,
      lpptPos,
    );

late final _ImmGetStatusWindowPos = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<POINT> lpptPos,
),
    int Function(
  int param0,
  Pointer<POINT> lpptPos,
)>('ImmGetStatusWindowPos');

int ImmGetVirtualKey(
  int param0,
) =>
    _ImmGetVirtualKey(
      param0,
    );

late final _ImmGetVirtualKey = _imm32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmGetVirtualKey');

int ImmInstallIME(
  Pointer<Utf16> lpszIMEFileName,
  Pointer<Utf16> lpszLayoutText,
) =>
    _ImmInstallIME(
      lpszIMEFileName,
      lpszLayoutText,
    );

late final _ImmInstallIME = _imm32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszIMEFileName,
  Pointer<Utf16> lpszLayoutText,
),
    int Function(
  Pointer<Utf16> lpszIMEFileName,
  Pointer<Utf16> lpszLayoutText,
)>('ImmInstallIMEW');

int ImmIsIME(
  int param0,
) =>
    _ImmIsIME(
      param0,
    );

late final _ImmIsIME = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmIsIME');

int ImmIsUIMessage(
  int param0,
  int param1,
  int param2,
  int param3,
) =>
    _ImmIsUIMessage(
      param0,
      param1,
      param2,
      param3,
    );

late final _ImmIsUIMessage = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
  IntPtr param2,
  IntPtr param3,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
)>('ImmIsUIMessageW');

Pointer<INPUTCONTEXT> ImmLockIMC(
  int param0,
) =>
    _ImmLockIMC(
      param0,
    );

late final _ImmLockIMC = _imm32.lookupFunction<
    Pointer<INPUTCONTEXT> Function(
  IntPtr param0,
),
    Pointer<INPUTCONTEXT> Function(
  int param0,
)>('ImmLockIMC');

Pointer ImmLockIMCC(
  int param0,
) =>
    _ImmLockIMCC(
      param0,
    );

late final _ImmLockIMCC = _imm32.lookupFunction<
    Pointer Function(
  IntPtr param0,
),
    Pointer Function(
  int param0,
)>('ImmLockIMCC');

int ImmNotifyIME(
  int param0,
  int dwAction,
  int dwIndex,
  int dwValue,
) =>
    _ImmNotifyIME(
      param0,
      dwAction,
      dwIndex,
      dwValue,
    );

late final _ImmNotifyIME = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 dwAction,
  Uint32 dwIndex,
  Uint32 dwValue,
),
    int Function(
  int param0,
  int dwAction,
  int dwIndex,
  int dwValue,
)>('ImmNotifyIME');

int ImmReSizeIMCC(
  int param0,
  int param1,
) =>
    _ImmReSizeIMCC(
      param0,
      param1,
    );

late final _ImmReSizeIMCC = _imm32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
  Uint32 param1,
),
    int Function(
  int param0,
  int param1,
)>('ImmReSizeIMCC');

int ImmRegisterWord(
  int param0,
  Pointer<Utf16> lpszReading,
  int param2,
  Pointer<Utf16> lpszRegister,
) =>
    _ImmRegisterWord(
      param0,
      lpszReading,
      param2,
      lpszRegister,
    );

late final _ImmRegisterWord = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<Utf16> lpszReading,
  Uint32 param2,
  Pointer<Utf16> lpszRegister,
),
    int Function(
  int param0,
  Pointer<Utf16> lpszReading,
  int param2,
  Pointer<Utf16> lpszRegister,
)>('ImmRegisterWordW');

int ImmReleaseContext(
  int param0,
  int param1,
) =>
    _ImmReleaseContext(
      param0,
      param1,
    );

late final _ImmReleaseContext = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  IntPtr param1,
),
    int Function(
  int param0,
  int param1,
)>('ImmReleaseContext');

int ImmRequestMessage(
  int param0,
  int param1,
  int param2,
) =>
    _ImmRequestMessage(
      param0,
      param1,
      param2,
    );

late final _ImmRequestMessage = _imm32.lookupFunction<
    IntPtr Function(
  IntPtr param0,
  IntPtr param1,
  IntPtr param2,
),
    int Function(
  int param0,
  int param1,
  int param2,
)>('ImmRequestMessageW');

int ImmSetCandidateWindow(
  int param0,
  Pointer<CANDIDATEFORM> lpCandidate,
) =>
    _ImmSetCandidateWindow(
      param0,
      lpCandidate,
    );

late final _ImmSetCandidateWindow = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<CANDIDATEFORM> lpCandidate,
),
    int Function(
  int param0,
  Pointer<CANDIDATEFORM> lpCandidate,
)>('ImmSetCandidateWindow');

int ImmSetCompositionFont(
  int param0,
  Pointer<LOGFONT> lplf,
) =>
    _ImmSetCompositionFont(
      param0,
      lplf,
    );

late final _ImmSetCompositionFont = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<LOGFONT> lplf,
),
    int Function(
  int param0,
  Pointer<LOGFONT> lplf,
)>('ImmSetCompositionFontW');

int ImmSetCompositionString(
  int param0,
  int dwIndex,
  Pointer lpComp,
  int dwCompLen,
  Pointer lpRead,
  int dwReadLen,
) =>
    _ImmSetCompositionString(
      param0,
      dwIndex,
      lpComp,
      dwCompLen,
      lpRead,
      dwReadLen,
    );

late final _ImmSetCompositionString = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 dwIndex,
  Pointer lpComp,
  Uint32 dwCompLen,
  Pointer lpRead,
  Uint32 dwReadLen,
),
    int Function(
  int param0,
  int dwIndex,
  Pointer lpComp,
  int dwCompLen,
  Pointer lpRead,
  int dwReadLen,
)>('ImmSetCompositionStringW');

int ImmSetCompositionWindow(
  int param0,
  Pointer<COMPOSITIONFORM> lpCompForm,
) =>
    _ImmSetCompositionWindow(
      param0,
      lpCompForm,
    );

late final _ImmSetCompositionWindow = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<COMPOSITIONFORM> lpCompForm,
),
    int Function(
  int param0,
  Pointer<COMPOSITIONFORM> lpCompForm,
)>('ImmSetCompositionWindow');

int ImmSetConversionStatus(
  int param0,
  int param1,
  int param2,
) =>
    _ImmSetConversionStatus(
      param0,
      param1,
      param2,
    );

late final _ImmSetConversionStatus = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Uint32 param2,
),
    int Function(
  int param0,
  int param1,
  int param2,
)>('ImmSetConversionStatus');

int ImmSetHotKey(
  int param0,
  int param1,
  int param2,
  int param3,
) =>
    _ImmSetHotKey(
      param0,
      param1,
      param2,
      param3,
    );

late final _ImmSetHotKey = _imm32.lookupFunction<
    Int32 Function(
  Uint32 param0,
  Uint32 param1,
  Uint32 param2,
  IntPtr param3,
),
    int Function(
  int param0,
  int param1,
  int param2,
  int param3,
)>('ImmSetHotKey');

int ImmSetOpenStatus(
  int param0,
  int param1,
) =>
    _ImmSetOpenStatus(
      param0,
      param1,
    );

late final _ImmSetOpenStatus = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
),
    int Function(
  int param0,
  int param1,
)>('ImmSetOpenStatus');

int ImmSetStatusWindowPos(
  int param0,
  Pointer<POINT> lpptPos,
) =>
    _ImmSetStatusWindowPos(
      param0,
      lpptPos,
    );

late final _ImmSetStatusWindowPos = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<POINT> lpptPos,
),
    int Function(
  int param0,
  Pointer<POINT> lpptPos,
)>('ImmSetStatusWindowPos');

int ImmShowSoftKeyboard(
  int param0,
  int param1,
) =>
    _ImmShowSoftKeyboard(
      param0,
      param1,
    );

late final _ImmShowSoftKeyboard = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Int32 param1,
),
    int Function(
  int param0,
  int param1,
)>('ImmShowSoftKeyboard');

int ImmSimulateHotKey(
  int param0,
  int param1,
) =>
    _ImmSimulateHotKey(
      param0,
      param1,
    );

late final _ImmSimulateHotKey = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
),
    int Function(
  int param0,
  int param1,
)>('ImmSimulateHotKey');

int ImmUnlockIMC(
  int param0,
) =>
    _ImmUnlockIMC(
      param0,
    );

late final _ImmUnlockIMC = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmUnlockIMC');

int ImmUnlockIMCC(
  int param0,
) =>
    _ImmUnlockIMCC(
      param0,
    );

late final _ImmUnlockIMCC = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('ImmUnlockIMCC');

int ImmUnregisterWord(
  int param0,
  Pointer<Utf16> lpszReading,
  int param2,
  Pointer<Utf16> lpszUnregister,
) =>
    _ImmUnregisterWord(
      param0,
      lpszReading,
      param2,
      lpszUnregister,
    );

late final _ImmUnregisterWord = _imm32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Pointer<Utf16> lpszReading,
  Uint32 param2,
  Pointer<Utf16> lpszUnregister,
),
    int Function(
  int param0,
  Pointer<Utf16> lpszReading,
  int param2,
  Pointer<Utf16> lpszUnregister,
)>('ImmUnregisterWordW');
