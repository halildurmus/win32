// ITextDocument2Old.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/ITextSelection.dart';
import '../../../ui/controls/richedit/ITextFont.dart';
import '../../../ui/controls/richedit/ITextPara.dart';

/// @nodoc
const IID_ITextDocument2Old = '{01C25500-4268-11D1-883A-3C8B00C10000}';

/// {@category Interface}
/// {@category com}
class ITextDocument2Old extends ITextDocument {
  // vtable begins at 26, is 24 entries long.
  ITextDocument2Old(Pointer<COMObject> ptr) : super(ptr);

  int AttachMsgFilter(
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int SetEffectColor(
    int Index,
    int cr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Uint32 cr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int cr,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        cr,
      );

  int GetEffectColor(
    int Index,
    Pointer<Uint32> pcr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Uint32> pcr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Uint32> pcr,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pcr,
      );

  int GetCaretType(
    Pointer<Int32> pCaretType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCaretType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCaretType,
          )>()(
        ptr.ref.lpVtbl,
        pCaretType,
      );

  int SetCaretType(
    int CaretType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 CaretType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CaretType,
          )>()(
        ptr.ref.lpVtbl,
        CaretType,
      );

  int GetImmContext(
    Pointer<Int64> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
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

  int ReleaseImmContext(
    int Context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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

  int GetPreferredFont(
    int cp,
    int CharRep,
    int Option,
    int CharRepCur,
    int curFontSize,
    Pointer<Pointer<Utf16>> pbstr,
    Pointer<Int32> pPitchAndFamily,
    Pointer<Int32> pNewFontSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cp,
            Int32 CharRep,
            Int32 Option,
            Int32 CharRepCur,
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
            int Option,
            int CharRepCur,
            int curFontSize,
            Pointer<Pointer<Utf16>> pbstr,
            Pointer<Int32> pPitchAndFamily,
            Pointer<Int32> pNewFontSize,
          )>()(
        ptr.ref.lpVtbl,
        cp,
        CharRep,
        Option,
        CharRepCur,
        curFontSize,
        pbstr,
        pPitchAndFamily,
        pNewFontSize,
      );

  int GetNotificationMode(
    Pointer<Int32> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMode,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
      );

  int SetNotificationMode(
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
      );

  int GetClientRect(
    int Type,
    Pointer<Int32> pLeft,
    Pointer<Int32> pTop,
    Pointer<Int32> pRight,
    Pointer<Int32> pBottom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int GetSelection2(
    Pointer<Pointer<COMObject>> ppSel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
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

  int GetWindow(
    Pointer<Int32> phWnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phWnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phWnd,
          )>()(
        ptr.ref.lpVtbl,
        phWnd,
      );

  int GetFEFlags(
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
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

  int UpdateWindow() => ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int CheckTextLimit(
    int cch,
    Pointer<Int32> pcch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
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

  int IMEInProgress(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
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

  int SysBeep() => ptr.ref.lpVtbl.value
          .elementAt(43)
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
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
      );

  int Notify(
    int Notify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
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

  int GetDocumentFont(
    Pointer<Pointer<COMObject>> ppITextFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppITextFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppITextFont,
          )>()(
        ptr.ref.lpVtbl,
        ppITextFont,
      );

  int GetDocumentPara(
    Pointer<Pointer<COMObject>> ppITextPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppITextPara,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppITextPara,
          )>()(
        ptr.ref.lpVtbl,
        ppITextPara,
      );

  int GetCallManager(
    Pointer<Pointer<COMObject>> ppVoid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
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

  int ReleaseCallManager(
    Pointer<COMObject> pVoid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
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
}
