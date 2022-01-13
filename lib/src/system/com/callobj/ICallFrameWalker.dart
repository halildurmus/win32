// ICallFrameWalker.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICallFrameWalker = '{08B23919-392D-11D2-B8A4-00C04FB9618A}';

/// {@category Interface}
/// {@category com}
class ICallFrameWalker extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICallFrameWalker(Pointer<COMObject> ptr) : super(ptr);

  int OnWalkInterface(
    Pointer<GUID> iid,
    Pointer<Pointer> ppvInterface,
    int fIn,
    int fOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvInterface,
            Int32 fIn,
            Int32 fOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvInterface,
            int fIn,
            int fOut,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        ppvInterface,
        fIn,
        fOut,
      );
}
