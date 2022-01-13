// IInkWordList2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInkWordList2 = '{14542586-11BF-4F5F-B6E7-49D0744AAB6E}';

/// {@category Interface}
/// {@category com}
class IInkWordList2 extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IInkWordList2(Pointer<COMObject> ptr) : super(ptr);

  int AddWords(
    Pointer<Utf16> NewWords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> NewWords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> NewWords,
          )>()(
        ptr.ref.lpVtbl,
        NewWords,
      );
}
