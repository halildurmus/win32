// ITextRange2.dart

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

import '../../../ui/controls/richedit/ITextSelection.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../ui/controls/richedit/ITextRange2.dart';
import '../../../ui/controls/richedit/ITextFont2.dart';
import '../../../ui/controls/richedit/ITextPara2.dart';
import '../../../ui/controls/richedit/ITextRow.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_ITextRange2 = '{C241F5E2-7206-11D8-A2C7-00A0D1D6C6B3}';

/// {@category Interface}
/// {@category com}
class ITextRange2 extends ITextSelection {
  // vtable begins at 68, is 40 entries long.
  ITextRange2(Pointer<COMObject> ptr) : super(ptr);

  int GetCch(
    Pointer<Int32> pcch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcch,
          )>()(
        ptr.ref.lpVtbl,
        pcch,
      );

  int GetCells(
    Pointer<Pointer<COMObject>> ppCells,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCells,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCells,
          )>()(
        ptr.ref.lpVtbl,
        ppCells,
      );

  int GetColumn(
    Pointer<Pointer<COMObject>> ppColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppColumn,
          )>()(
        ptr.ref.lpVtbl,
        ppColumn,
      );

  int GetCount(
    Pointer<Int32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
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

  int GetDuplicate2(
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
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

  int GetFont2(
    Pointer<Pointer<COMObject>> ppFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
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

  int SetFont2(
    Pointer<COMObject> pFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
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

  int GetFormattedText2(
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
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

  int SetFormattedText2(
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
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

  int GetGravity(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
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

  int SetGravity(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
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

  int GetPara2(
    Pointer<Pointer<COMObject>> ppPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
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

  int SetPara2(
    Pointer<COMObject> pPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
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

  int GetRow(
    Pointer<Pointer<COMObject>> ppRow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRow,
          )>()(
        ptr.ref.lpVtbl,
        ppRow,
      );

  int GetStartPara(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
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

  int GetTable(
    Pointer<Pointer<COMObject>> ppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTable,
          )>()(
        ptr.ref.lpVtbl,
        ppTable,
      );

  int GetURL(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
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

  int SetURL(
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
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

  int AddSubrange(
    int cp1,
    int cp2,
    int Activate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cp1,
            Int32 cp2,
            Int32 Activate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cp1,
            int cp2,
            int Activate,
          )>()(
        ptr.ref.lpVtbl,
        cp1,
        cp2,
        Activate,
      );

  int BuildUpMath(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int DeleteSubrange(
    int cpFirst,
    int cpLim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cpFirst,
            Int32 cpLim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpFirst,
            int cpLim,
          )>()(
        ptr.ref.lpVtbl,
        cpFirst,
        cpLim,
      );

  int Find(
    Pointer<COMObject> pRange,
    int Count,
    int Flags,
    Pointer<Int32> pDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Int32 Count,
            Int32 Flags,
            Pointer<Int32> pDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            int Count,
            int Flags,
            Pointer<Int32> pDelta,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        Count,
        Flags,
        pDelta,
      );

  int GetChar2(
    Pointer<Int32> pChar,
    int Offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pChar,
            Int32 Offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pChar,
            int Offset,
          )>()(
        ptr.ref.lpVtbl,
        pChar,
        Offset,
      );

  int GetDropCap(
    Pointer<Int32> pcLine,
    Pointer<Int32> pPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcLine,
            Pointer<Int32> pPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcLine,
            Pointer<Int32> pPosition,
          )>()(
        ptr.ref.lpVtbl,
        pcLine,
        pPosition,
      );

  int GetInlineObject(
    Pointer<Int32> pType,
    Pointer<Int32> pAlign,
    Pointer<Int32> pChar,
    Pointer<Int32> pChar1,
    Pointer<Int32> pChar2,
    Pointer<Int32> pCount,
    Pointer<Int32> pTeXStyle,
    Pointer<Int32> pcCol,
    Pointer<Int32> pLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
            Pointer<Int32> pAlign,
            Pointer<Int32> pChar,
            Pointer<Int32> pChar1,
            Pointer<Int32> pChar2,
            Pointer<Int32> pCount,
            Pointer<Int32> pTeXStyle,
            Pointer<Int32> pcCol,
            Pointer<Int32> pLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
            Pointer<Int32> pAlign,
            Pointer<Int32> pChar,
            Pointer<Int32> pChar1,
            Pointer<Int32> pChar2,
            Pointer<Int32> pCount,
            Pointer<Int32> pTeXStyle,
            Pointer<Int32> pcCol,
            Pointer<Int32> pLevel,
          )>()(
        ptr.ref.lpVtbl,
        pType,
        pAlign,
        pChar,
        pChar1,
        pChar2,
        pCount,
        pTeXStyle,
        pcCol,
        pLevel,
      );

  int GetProperty(
    int Type,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
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

  int GetRect(
    int Type,
    Pointer<Int32> pLeft,
    Pointer<Int32> pTop,
    Pointer<Int32> pRight,
    Pointer<Int32> pBottom,
    Pointer<Int32> pHit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
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
            Pointer<Int32> pHit,
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
            Pointer<Int32> pHit,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        pLeft,
        pTop,
        pRight,
        pBottom,
        pHit,
      );

  int GetSubrange(
    int iSubrange,
    Pointer<Int32> pcpFirst,
    Pointer<Int32> pcpLim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iSubrange,
            Pointer<Int32> pcpFirst,
            Pointer<Int32> pcpLim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iSubrange,
            Pointer<Int32> pcpFirst,
            Pointer<Int32> pcpLim,
          )>()(
        ptr.ref.lpVtbl,
        iSubrange,
        pcpFirst,
        pcpLim,
      );

  int GetText2(
    int Flags,
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pbstr,
      );

  int HexToUnicode() => ptr.ref.lpVtbl.value
          .elementAt(97)
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

  int InsertTable(
    int cCol,
    int cRow,
    int AutoFit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cCol,
            Int32 cRow,
            Int32 AutoFit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCol,
            int cRow,
            int AutoFit,
          )>()(
        ptr.ref.lpVtbl,
        cCol,
        cRow,
        AutoFit,
      );

  int Linearize(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int SetActiveSubrange(
    int cpAnchor,
    int cpActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
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

  int SetDropCap(
    int cLine,
    int Position,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cLine,
            Int32 Position,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cLine,
            int Position,
          )>()(
        ptr.ref.lpVtbl,
        cLine,
        Position,
      );

  int SetProperty(
    int Type,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(102)
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

  int SetText2(
    int Flags,
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> bstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> bstr,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        bstr,
      );

  int UnicodeToHex() => ptr.ref.lpVtbl.value
          .elementAt(104)
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

  int SetInlineObject(
    int Type,
    int Align,
    int Char,
    int Char1,
    int Char2,
    int Count,
    int TeXStyle,
    int cCol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Int32 Align,
            Int32 Char,
            Int32 Char1,
            Int32 Char2,
            Int32 Count,
            Int32 TeXStyle,
            Int32 cCol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int Align,
            int Char,
            int Char1,
            int Char2,
            int Count,
            int TeXStyle,
            int cCol,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        Align,
        Char,
        Char1,
        Char2,
        Count,
        TeXStyle,
        cCol,
      );

  int GetMathFunctionType(
    Pointer<Utf16> bstr,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstr,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstr,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        bstr,
        pValue,
      );

  int InsertImage(
    int width,
    int height,
    int ascent,
    int Type,
    Pointer<Utf16> bstrAltText,
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 width,
            Int32 height,
            Int32 ascent,
            Uint32 Type,
            Pointer<Utf16> bstrAltText,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int width,
            int height,
            int ascent,
            int Type,
            Pointer<Utf16> bstrAltText,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
        ascent,
        Type,
        bstrAltText,
        pStream,
      );
}
