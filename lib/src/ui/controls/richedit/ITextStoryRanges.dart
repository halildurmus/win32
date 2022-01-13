// ITextStoryRanges.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/controls/richedit/ITextRange.dart';

/// @nodoc
const IID_ITextStoryRanges = '{8CC497C5-A1DF-11CE-8098-00AA0047BE5D}';

/// {@category Interface}
/// {@category com}
class ITextStoryRanges extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ITextStoryRanges(Pointer<COMObject> ptr) : super(ptr);

  int NewEnum(
    Pointer<Pointer<COMObject>> ppunkEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppunkEnum,
      );

  int Item(
    int Index,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
          .elementAt(9)
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
}
