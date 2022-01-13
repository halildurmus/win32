// ITextDocument2.dart

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

import '../../../ui/controls/richedit/ITextDocument.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/ITextDisplays.dart';
import '../../../ui/controls/richedit/ITextFont2.dart';
import '../../../ui/controls/richedit/ITextPara2.dart';
import '../../../ui/controls/richedit/structs.g.dart';
import '../../../ui/controls/richedit/ITextSelection2.dart';
import '../../../ui/controls/richedit/ITextStoryRanges2.dart';
import '../../../specialTypes.dart';
import '../../../ui/controls/richedit/ITextStrings.dart';
import '../../../ui/controls/richedit/ITextRange2.dart';
import '../../../ui/controls/richedit/ITextStory.dart';

/// @nodoc
const IID_ITextDocument2 = '{C241F5E0-7206-11D8-A2C7-00A0D1D6C6B3}';

/// {@category Interface}
/// {@category com}
class ITextDocument2 extends ITextDocument {
  // vtable begins at 26, is 44 entries long.
  ITextDocument2(Pointer<COMObject> ptr) : super(ptr);

  int GetCaretType(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetCaretType(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetDisplays(
    Pointer<Pointer<COMObject>> ppDisplays,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDisplays,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDisplays,
          )>()(
        ptr.ref.lpVtbl,
        ppDisplays,
      );

  int GetDocumentFont(
    Pointer<Pointer<COMObject>> ppFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFont,
          )>()(
        ptr.ref.lpVtbl,
        ppFont,
      );

  int SetDocumentFont(
    Pointer<COMObject> pFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFont,
          )>()(
        ptr.ref.lpVtbl,
        pFont,
      );

  int GetDocumentPara(
    Pointer<Pointer<COMObject>> ppPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPara,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPara,
          )>()(
        ptr.ref.lpVtbl,
        ppPara,
      );

  int SetDocumentPara(
    Pointer<COMObject> pPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPara,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPara,
          )>()(
        ptr.ref.lpVtbl,
        pPara,
      );

  int GetEastAsianFlags(
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int GetGenerator(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        pbstr,
      );

  int SetIMEInProgress(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetNotificationMode(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetNotificationMode(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetSelection2(
    Pointer<Pointer<COMObject>> ppSel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSel,
          )>()(
        ptr.ref.lpVtbl,
        ppSel,
      );

  int GetStoryRanges2(
    Pointer<Pointer<COMObject>> ppStories,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStories,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStories,
          )>()(
        ptr.ref.lpVtbl,
        ppStories,
      );

  int GetTypographyOptions(
    Pointer<Int32> pOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pOptions,
          )>()(
        ptr.ref.lpVtbl,
        pOptions,
      );

  int GetVersion(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetWindow(
    Pointer<Int64> pHwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pHwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pHwnd,
          )>()(
        ptr.ref.lpVtbl,
        pHwnd,
      );

  int AttachMsgFilter(
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
      );

  int CheckTextLimit(
    int cch,
    Pointer<Int32> pcch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cch,
            Pointer<Int32> pcch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cch,
            Pointer<Int32> pcch,
          )>()(
        ptr.ref.lpVtbl,
        cch,
        pcch,
      );

  int GetCallManager(
    Pointer<Pointer<COMObject>> ppVoid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVoid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVoid,
          )>()(
        ptr.ref.lpVtbl,
        ppVoid,
      );

  int GetClientRect(
    int Type,
    Pointer<Int32> pLeft,
    Pointer<Int32> pTop,
    Pointer<Int32> pRight,
    Pointer<Int32> pBottom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Int32> pLeft,
            Pointer<Int32> pTop,
            Pointer<Int32> pRight,
            Pointer<Int32> pBottom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Int32> pLeft,
            Pointer<Int32> pTop,
            Pointer<Int32> pRight,
            Pointer<Int32> pBottom,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        pLeft,
        pTop,
        pRight,
        pBottom,
      );

  int GetEffectColor(
    int Index,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pValue,
      );

  int GetImmContext(
    Pointer<Int64> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
      );

  int GetPreferredFont(
    int cp,
    int CharRep,
    int Options,
    int curCharRep,
    int curFontSize,
    Pointer<Pointer<Utf16>> pbstr,
    Pointer<Int32> pPitchAndFamily,
    Pointer<Int32> pNewFontSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cp,
            Int32 CharRep,
            Int32 Options,
            Int32 curCharRep,
            Int32 curFontSize,
            Pointer<Pointer<Utf16>> pbstr,
            Pointer<Int32> pPitchAndFamily,
            Pointer<Int32> pNewFontSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cp,
            int CharRep,
            int Options,
            int curCharRep,
            int curFontSize,
            Pointer<Pointer<Utf16>> pbstr,
            Pointer<Int32> pPitchAndFamily,
            Pointer<Int32> pNewFontSize,
          )>()(
        ptr.ref.lpVtbl,
        cp,
        CharRep,
        Options,
        curCharRep,
        curFontSize,
        pbstr,
        pPitchAndFamily,
        pNewFontSize,
      );

  int GetProperty(
    int Type,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        pValue,
      );

  int GetStrings(
    Pointer<Pointer<COMObject>> ppStrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStrs,
          )>()(
        ptr.ref.lpVtbl,
        ppStrs,
      );

  int Notify(
    int Notify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Notify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Notify,
          )>()(
        ptr.ref.lpVtbl,
        Notify,
      );

  int Range2(
    int cpActive,
    int cpAnchor,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cpActive,
            Int32 cpAnchor,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpActive,
            int cpAnchor,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        cpActive,
        cpAnchor,
        ppRange,
      );

  int RangeFromPoint2(
    int x,
    int y,
    int Type,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
            Int32 Type,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
            int Type,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        Type,
        ppRange,
      );

  int ReleaseCallManager(
    Pointer<COMObject> pVoid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVoid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVoid,
          )>()(
        ptr.ref.lpVtbl,
        pVoid,
      );

  int ReleaseImmContext(
    int Context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 Context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Context,
          )>()(
        ptr.ref.lpVtbl,
        Context,
      );

  int SetEffectColor(
    int Index,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Value,
      );

  int SetProperty(
    int Type,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        Value,
      );

  int SetTypographyOptions(
    int Options,
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Options,
            Int32 Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            int Mask,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        Mask,
      );

  int SysBeep() => ptr.ref.lpVtbl.value
          .elementAt(60)
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

  int Update(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int UpdateWindow() => ptr.ref.lpVtbl.value
          .elementAt(62)
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

  int GetMathProperties(
    Pointer<Int32> pOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pOptions,
          )>()(
        ptr.ref.lpVtbl,
        pOptions,
      );

  int SetMathProperties(
    int Options,
    int Mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Options,
            Int32 Mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            int Mask,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        Mask,
      );

  int GetActiveStory(
    Pointer<Pointer<COMObject>> ppStory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStory,
          )>()(
        ptr.ref.lpVtbl,
        ppStory,
      );

  int SetActiveStory(
    Pointer<COMObject> pStory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStory,
          )>()(
        ptr.ref.lpVtbl,
        pStory,
      );

  int GetMainStory(
    Pointer<Pointer<COMObject>> ppStory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStory,
          )>()(
        ptr.ref.lpVtbl,
        ppStory,
      );

  int GetNewStory(
    Pointer<Pointer<COMObject>> ppStory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStory,
          )>()(
        ptr.ref.lpVtbl,
        ppStory,
      );

  int GetStory(
    int Index,
    Pointer<Pointer<COMObject>> ppStory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> ppStory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppStory,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppStory,
      );
}
