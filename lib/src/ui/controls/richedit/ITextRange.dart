// ITextRange.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/ITextRange.dart';
import '../../../ui/controls/richedit/ITextFont.dart';
import '../../../ui/controls/richedit/ITextPara.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ITextRange = '{8CC497C2-A1DF-11CE-8098-00AA0047BE5D}';

/// {@category Interface}
/// {@category com}
class ITextRange extends IDispatch {
  // vtable begins at 7, is 51 entries long.
  ITextRange(Pointer<COMObject> ptr) : super(ptr);

  int GetText(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetText(
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstr,
          )>()(
        ptr.ref.lpVtbl,
        bstr,
      );

  int GetChar(
    Pointer<Int32> pChar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pChar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pChar,
          )>()(
        ptr.ref.lpVtbl,
        pChar,
      );

  int SetChar(
    int Char,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Char,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Char,
          )>()(
        ptr.ref.lpVtbl,
        Char,
      );

  int GetDuplicate(
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        ppRange,
      );

  int GetFormattedText(
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        ppRange,
      );

  int SetFormattedText(
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
      );

  int GetStart(
    Pointer<Int32> pcpFirst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcpFirst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcpFirst,
          )>()(
        ptr.ref.lpVtbl,
        pcpFirst,
      );

  int SetStart(
    int cpFirst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cpFirst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpFirst,
          )>()(
        ptr.ref.lpVtbl,
        cpFirst,
      );

  int GetEnd(
    Pointer<Int32> pcpLim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcpLim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcpLim,
          )>()(
        ptr.ref.lpVtbl,
        pcpLim,
      );

  int SetEnd(
    int cpLim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cpLim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpLim,
          )>()(
        ptr.ref.lpVtbl,
        cpLim,
      );

  int GetFont(
    Pointer<Pointer<COMObject>> ppFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int SetFont(
    Pointer<COMObject> pFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int GetPara(
    Pointer<Pointer<COMObject>> ppPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int SetPara(
    Pointer<COMObject> pPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int GetStoryLength(
    Pointer<Int32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetStoryType(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int Collapse(
    int bStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bStart,
          )>()(
        ptr.ref.lpVtbl,
        bStart,
      );

  int Expand(
    int Unit,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        pDelta,
      );

  int GetIndex(
    int Unit,
    Pointer<Int32> pIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Pointer<Int32> pIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            Pointer<Int32> pIndex,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        pIndex,
      );

  int SetIndex(
    int Unit,
    int Index,
    int Extend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Index,
            Int32 Extend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Index,
            int Extend,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Index,
        Extend,
      );

  int SetRange(
    int cpAnchor,
    int cpActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cpAnchor,
            Int32 cpActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpAnchor,
            int cpActive,
          )>()(
        ptr.ref.lpVtbl,
        cpAnchor,
        cpActive,
      );

  int InRange(
    Pointer<COMObject> pRange,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        pValue,
      );

  int InStory(
    Pointer<COMObject> pRange,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        pValue,
      );

  int IsEqual(
    Pointer<COMObject> pRange,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        pValue,
      );

  int Select() => ptr.ref.lpVtbl.value
          .elementAt(32)
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

  int StartOf(
    int Unit,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Extend,
        pDelta,
      );

  int EndOf(
    int Unit,
    int Extend,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Extend,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Extend,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Extend,
        pDelta,
      );

  int Move(
    int Unit,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        pDelta,
      );

  int MoveStart(
    int Unit,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        pDelta,
      );

  int MoveEnd(
    int Unit,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        pDelta,
      );

  int MoveWhile(
    Pointer<VARIANT> Cset,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cset,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cset,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Cset,
        Count,
        pDelta,
      );

  int MoveStartWhile(
    Pointer<VARIANT> Cset,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cset,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cset,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Cset,
        Count,
        pDelta,
      );

  int MoveEndWhile(
    Pointer<VARIANT> Cset,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cset,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cset,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Cset,
        Count,
        pDelta,
      );

  int MoveUntil(
    Pointer<VARIANT> Cset,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cset,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cset,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Cset,
        Count,
        pDelta,
      );

  int MoveStartUntil(
    Pointer<VARIANT> Cset,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cset,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cset,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Cset,
        Count,
        pDelta,
      );

  int MoveEndUntil(
    Pointer<VARIANT> Cset,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cset,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cset,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Cset,
        Count,
        pDelta,
      );

  int FindText(
    Pointer<Utf16> bstr,
    int Count,
    int Flags,
    Pointer<Int32> pLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstr,
            Int32 Count,
            Int32 Flags,
            Pointer<Int32> pLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstr,
            int Count,
            int Flags,
            Pointer<Int32> pLength,
          )>()(
        ptr.ref.lpVtbl,
        bstr,
        Count,
        Flags,
        pLength,
      );

  int FindTextStart(
    Pointer<Utf16> bstr,
    int Count,
    int Flags,
    Pointer<Int32> pLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstr,
            Int32 Count,
            Int32 Flags,
            Pointer<Int32> pLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstr,
            int Count,
            int Flags,
            Pointer<Int32> pLength,
          )>()(
        ptr.ref.lpVtbl,
        bstr,
        Count,
        Flags,
        pLength,
      );

  int FindTextEnd(
    Pointer<Utf16> bstr,
    int Count,
    int Flags,
    Pointer<Int32> pLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstr,
            Int32 Count,
            Int32 Flags,
            Pointer<Int32> pLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstr,
            int Count,
            int Flags,
            Pointer<Int32> pLength,
          )>()(
        ptr.ref.lpVtbl,
        bstr,
        Count,
        Flags,
        pLength,
      );

  int Delete(
    int Unit,
    int Count,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Unit,
            Int32 Count,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Unit,
            int Count,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        Unit,
        Count,
        pDelta,
      );

  int Cut(
    Pointer<VARIANT> pVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>()(
        ptr.ref.lpVtbl,
        pVar,
      );

  int Copy(
    Pointer<VARIANT> pVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVar,
          )>()(
        ptr.ref.lpVtbl,
        pVar,
      );

  int Paste(
    Pointer<VARIANT> pVar,
    int Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVar,
            Int32 Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVar,
            int Format,
          )>()(
        ptr.ref.lpVtbl,
        pVar,
        Format,
      );

  int CanPaste(
    Pointer<VARIANT> pVar,
    int Format,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVar,
            Int32 Format,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVar,
            int Format,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pVar,
        Format,
        pValue,
      );

  int CanEdit(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
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

  int ChangeCase(
    int Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int GetPoint(
    int Type,
    Pointer<Int32> px,
    Pointer<Int32> py,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Int32> px,
            Pointer<Int32> py,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Int32> px,
            Pointer<Int32> py,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        px,
        py,
      );

  int SetPoint(
    int x,
    int y,
    int Type,
    int Extend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
            Int32 Type,
            Int32 Extend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
            int Type,
            int Extend,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        Type,
        Extend,
      );

  int ScrollIntoView(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
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

  int GetEmbeddedObject(
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        ppObject,
      );
}
