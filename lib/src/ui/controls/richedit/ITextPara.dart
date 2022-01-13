// ITextPara.dart

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
import '../../../ui/controls/richedit/ITextPara.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/structs.g.dart';

/// @nodoc
const IID_ITextPara = '{8CC497C4-A1DF-11CE-8098-00AA0047BE5D}';

/// {@category Interface}
/// {@category com}
class ITextPara extends IDispatch {
  // vtable begins at 7, is 48 entries long.
  ITextPara(Pointer<COMObject> ptr) : super(ptr);

  int GetDuplicate(
    Pointer<Pointer<COMObject>> ppPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetDuplicate(
    Pointer<COMObject> pPara,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int CanChange(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int IsEqual(
    Pointer<COMObject> pPara,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPara,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPara,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pPara,
        pValue,
      );

  int Reset(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetStyle(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int SetStyle(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetAlignment(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int SetAlignment(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int GetHyphenation(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int SetHyphenation(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int GetFirstLineIndent(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetKeepTogether(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int SetKeepTogether(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int GetKeepWithNext(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int SetKeepWithNext(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int GetLeftIndent(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetLineSpacing(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetLineSpacingRule(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int GetListAlignment(
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

  int SetListAlignment(
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

  int GetListLevelIndex(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int SetListLevelIndex(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
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

  int GetListStart(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
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

  int SetListStart(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
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

  int GetListTab(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetListTab(
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetListType(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
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

  int SetListType(
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

  int GetNoLineNumber(
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

  int SetNoLineNumber(
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

  int GetPageBreakBefore(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
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

  int SetPageBreakBefore(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
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

  int GetRightIndent(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetRightIndent(
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int SetIndents(
    double First,
    double Left,
    double Right,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float First,
            Float Left,
            Float Right,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double First,
            double Left,
            double Right,
          )>()(
        ptr.ref.lpVtbl,
        First,
        Left,
        Right,
      );

  int SetLineSpacing(
    int Rule,
    double Spacing,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Rule,
            Float Spacing,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Rule,
            double Spacing,
          )>()(
        ptr.ref.lpVtbl,
        Rule,
        Spacing,
      );

  int GetSpaceAfter(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetSpaceAfter(
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetSpaceBefore(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetSpaceBefore(
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetWidowControl(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
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

  int SetWidowControl(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
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

  int GetTabCount(
    Pointer<Int32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
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

  int AddTab(
    double tbPos,
    int tbAlign,
    int tbLeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float tbPos,
            Int32 tbAlign,
            Int32 tbLeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double tbPos,
            int tbAlign,
            int tbLeader,
          )>()(
        ptr.ref.lpVtbl,
        tbPos,
        tbAlign,
        tbLeader,
      );

  int ClearAllTabs() => ptr.ref.lpVtbl.value
          .elementAt(52)
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

  int DeleteTab(
    double tbPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float tbPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double tbPos,
          )>()(
        ptr.ref.lpVtbl,
        tbPos,
      );

  int GetTab(
    int iTab,
    Pointer<Float> ptbPos,
    Pointer<Int32> ptbAlign,
    Pointer<Int32> ptbLeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iTab,
            Pointer<Float> ptbPos,
            Pointer<Int32> ptbAlign,
            Pointer<Int32> ptbLeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iTab,
            Pointer<Float> ptbPos,
            Pointer<Int32> ptbAlign,
            Pointer<Int32> ptbLeader,
          )>()(
        ptr.ref.lpVtbl,
        iTab,
        ptbPos,
        ptbAlign,
        ptbLeader,
      );
}
