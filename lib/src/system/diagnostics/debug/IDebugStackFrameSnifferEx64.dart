// IDebugStackFrameSnifferEx64.dart

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

import '../../../system/diagnostics/debug/IDebugStackFrameSniffer.dart';
import '../../../system/diagnostics/debug/IEnumDebugStackFrames64.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugStackFrameSnifferEx64 =
    '{8CD12AF4-49C1-4D52-8D8A-C146F47581AA}';

/// {@category Interface}
/// {@category com}
class IDebugStackFrameSnifferEx64 extends IDebugStackFrameSniffer {
  // vtable begins at 4, is 1 entries long.
  IDebugStackFrameSnifferEx64(Pointer<COMObject> ptr) : super(ptr);

  int EnumStackFramesEx64(
    int dwSpMin,
    Pointer<Pointer<COMObject>> ppedsf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dwSpMin,
            Pointer<Pointer<COMObject>> ppedsf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSpMin,
            Pointer<Pointer<COMObject>> ppedsf,
          )>()(
        ptr.ref.lpVtbl,
        dwSpMin,
        ppedsf,
      );
}
