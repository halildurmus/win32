// ILanguageExceptionStackBackTrace.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILanguageExceptionStackBackTrace =
    '{CBE53FB5-F967-4258-8D34-42F5E25833DE}';

/// {@category Interface}
/// {@category com}
class ILanguageExceptionStackBackTrace extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ILanguageExceptionStackBackTrace(Pointer<COMObject> ptr) : super(ptr);

  int GetStackBackTrace(
    int maxFramesToCapture,
    Pointer<IntPtr> stackBackTrace,
    Pointer<Uint32> framesCaptured,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 maxFramesToCapture,
            Pointer<IntPtr> stackBackTrace,
            Pointer<Uint32> framesCaptured,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxFramesToCapture,
            Pointer<IntPtr> stackBackTrace,
            Pointer<Uint32> framesCaptured,
          )>()(
        ptr.ref.lpVtbl,
        maxFramesToCapture,
        stackBackTrace,
        framesCaptured,
      );
}
