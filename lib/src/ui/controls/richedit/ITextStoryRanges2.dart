// ITextStoryRanges2.dart

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

import '../../../ui/controls/richedit/ITextStoryRanges.dart';
import '../../../ui/controls/richedit/ITextRange2.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ITextStoryRanges2 = '{C241F5E5-7206-11D8-A2C7-00A0D1D6C6B3}';

/// {@category Interface}
/// {@category com}
class ITextStoryRanges2 extends ITextStoryRanges {
  // vtable begins at 10, is 1 entries long.
  ITextStoryRanges2(Pointer<COMObject> ptr) : super(ptr);

  int Item2(
    int Index,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
