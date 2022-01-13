// IEnumJsStackFrames.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnumJsStackFrames = '{5E7DA34B-FB51-4791-ABE7-CB5BDF419755}';

/// {@category Interface}
/// {@category com}
class IEnumJsStackFrames extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEnumJsStackFrames(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cFrameCount,
    Pointer<MIDL___MIDL_itf_jscript9diag_0000_0007_0001> pFrames,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFrameCount,
            Pointer<MIDL___MIDL_itf_jscript9diag_0000_0007_0001> pFrames,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFrameCount,
            Pointer<MIDL___MIDL_itf_jscript9diag_0000_0007_0001> pFrames,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cFrameCount,
        pFrames,
        pcFetched,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
