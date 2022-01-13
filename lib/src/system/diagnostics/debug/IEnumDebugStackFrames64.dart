// IEnumDebugStackFrames64.dart

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

import '../../../system/diagnostics/debug/IEnumDebugStackFrames.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnumDebugStackFrames64 = '{0DC38853-C1B0-4176-A984-B298361027AF}';

/// {@category Interface}
/// {@category com}
class IEnumDebugStackFrames64 extends IEnumDebugStackFrames {
  // vtable begins at 7, is 1 entries long.
  IEnumDebugStackFrames64(Pointer<COMObject> ptr) : super(ptr);

  int Next64(
    int celt,
    Pointer<DebugStackFrameDescriptor64> prgdsfd,
    Pointer<Uint32> pceltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<DebugStackFrameDescriptor64> prgdsfd,
            Pointer<Uint32> pceltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<DebugStackFrameDescriptor64> prgdsfd,
            Pointer<Uint32> pceltFetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        prgdsfd,
        pceltFetched,
      );
}
