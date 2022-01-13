// ITextFont.dart

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
import '../../../ui/controls/richedit/ITextFont.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/structs.g.dart';

/// @nodoc
const IID_ITextFont = '{8CC497C3-A1DF-11CE-8098-00AA0047BE5D}';

/// {@category Interface}
/// {@category com}
class ITextFont extends IDispatch {
  // vtable begins at 7, is 55 entries long.
  ITextFont(Pointer<COMObject> ptr) : super(ptr);

  int GetDuplicate(
    Pointer<Pointer<COMObject>> ppFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetDuplicate(
    Pointer<COMObject> pFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
    Pointer<COMObject> pFont,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFont,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFont,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pFont,
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

  int GetAllCaps(
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

  int SetAllCaps(
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

  int GetAnimation(
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

  int SetAnimation(
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

  int GetBackColor(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int SetBackColor(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int GetBold(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int SetBold(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int GetEmboss(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int SetEmboss(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int GetForeColor(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int SetForeColor(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int GetHidden(
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

  int SetHidden(
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

  int GetEngrave(
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

  int SetEngrave(
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

  int GetItalic(
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

  int SetItalic(
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

  int GetKerning(
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

  int SetKerning(
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

  int GetLanguageID(
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

  int SetLanguageID(
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

  int GetName(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int SetName(
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
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

  int GetOutline(
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

  int SetOutline(
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

  int GetPosition(
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

  int SetPosition(
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

  int GetProtected(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
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

  int SetProtected(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
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

  int GetShadow(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
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

  int SetShadow(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
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

  int GetSize(
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

  int SetSize(
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

  int GetSmallCaps(
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

  int SetSmallCaps(
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

  int GetSpacing(
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
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

  int SetSpacing(
    double Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
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

  int GetStrikeThrough(
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

  int SetStrikeThrough(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
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

  int GetSubscript(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
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

  int SetSubscript(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
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

  int GetSuperscript(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
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

  int SetSuperscript(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
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

  int GetUnderline(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
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

  int SetUnderline(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
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

  int GetWeight(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
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

  int SetWeight(
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
}
