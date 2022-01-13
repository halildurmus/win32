// ITextStrings.dart

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
import '../../../ui/controls/richedit/ITextRange2.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ITextStrings = '{C241F5E7-7206-11D8-A2C7-00A0D1D6C6B3}';

/// {@category Interface}
/// {@category com}
class ITextStrings extends IDispatch {
  // vtable begins at 7, is 17 entries long.
  ITextStrings(Pointer<COMObject> ptr) : super(ptr);

  int Item(
    int Index,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppRange,
      );

  int GetCount(
    Pointer<Int32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Add(
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Append(
    Pointer<COMObject> pRange,
    int iString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Int32 iString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            int iString,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        iString,
      );

  int Cat2(
    int iString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iString,
          )>()(
        ptr.ref.lpVtbl,
        iString,
      );

  int CatTop2(
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int DeleteRange(
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

  int EncodeFunction(
    int Type,
    int Align,
    int Char,
    int Char1,
    int Char2,
    int Count,
    int TeXStyle,
    int cCol,
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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
            Pointer<COMObject> pRange,
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
            Pointer<COMObject> pRange,
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
        pRange,
      );

  int GetCch(
    int iString,
    Pointer<Int32> pcch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iString,
            Pointer<Int32> pcch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iString,
            Pointer<Int32> pcch,
          )>()(
        ptr.ref.lpVtbl,
        iString,
        pcch,
      );

  int InsertNullStr(
    int iString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iString,
          )>()(
        ptr.ref.lpVtbl,
        iString,
      );

  int MoveBoundary(
    int iString,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iString,
            Int32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iString,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        iString,
        cch,
      );

  int PrefixTop(
    Pointer<Utf16> bstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int Remove(
    int iString,
    int cString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iString,
            Int32 cString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iString,
            int cString,
          )>()(
        ptr.ref.lpVtbl,
        iString,
        cString,
      );

  int SetFormattedText(
    Pointer<COMObject> pRangeD,
    Pointer<COMObject> pRangeS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRangeD,
            Pointer<COMObject> pRangeS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRangeD,
            Pointer<COMObject> pRangeS,
          )>()(
        ptr.ref.lpVtbl,
        pRangeD,
        pRangeS,
      );

  int SetOpCp(
    int iString,
    int cp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iString,
            Int32 cp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iString,
            int cp,
          )>()(
        ptr.ref.lpVtbl,
        iString,
        cp,
      );

  int SuffixTop(
    Pointer<Utf16> bstr,
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstr,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstr,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        bstr,
        pRange,
      );

  int Swap() => ptr.ref.lpVtbl.value
          .elementAt(23)
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
}
