// IDebugStackFrameSnifferEx32.dart

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
import '../../../system/diagnostics/debug/IEnumDebugStackFrames.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugStackFrameSnifferEx32 =
    '{51973C19-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugStackFrameSnifferEx32 extends IDebugStackFrameSniffer {
  // vtable begins at 4, is 1 entries long.
  IDebugStackFrameSnifferEx32(Pointer<COMObject> ptr) : super(ptr);

  int EnumStackFramesEx32(
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
            Uint32 dwSpMin,
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
