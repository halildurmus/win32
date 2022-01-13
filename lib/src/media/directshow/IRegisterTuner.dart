// IRegisterTuner.dart

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
import '../../media/directshow/ITuner.dart';
import '../../media/directshow/IGraphBuilder.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRegisterTuner = '{359B3901-572C-4854-BB49-CDEF66606A25}';

/// {@category Interface}
/// {@category com}
class IRegisterTuner extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRegisterTuner(Pointer<COMObject> ptr) : super(ptr);

  int Register(
    Pointer<COMObject> pTuner,
    Pointer<COMObject> pGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTuner,
            Pointer<COMObject> pGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTuner,
            Pointer<COMObject> pGraph,
          )>()(
        ptr.ref.lpVtbl,
        pTuner,
        pGraph,
      );

  int Unregister() => ptr.ref.lpVtbl.value
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
