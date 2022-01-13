// ISpeechRecoResult2.dart

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

import '../../media/speech/ISpeechRecoResult.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpeechRecoResult2 = '{8E0A246D-D3C8-45DE-8657-04290C458C3C}';

/// {@category Interface}
/// {@category com}
class ISpeechRecoResult2 extends ISpeechRecoResult {
  // vtable begins at 17, is 1 entries long.
  ISpeechRecoResult2(Pointer<COMObject> ptr) : super(ptr);

  int SetTextFeedback(
    Pointer<Utf16> Feedback,
    int WasSuccessful,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Feedback,
            Int16 WasSuccessful,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Feedback,
            int WasSuccessful,
          )>()(
        ptr.ref.lpVtbl,
        Feedback,
        WasSuccessful,
      );
}
