// IDirectManipulationManager2.dart

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

import '../../graphics/directmanipulation/IDirectManipulationManager.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectManipulationManager2 =
    '{FA1005E9-3D16-484C-BFC9-62B61E56EC4E}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationManager2 extends IDirectManipulationManager {
  // vtable begins at 10, is 1 entries long.
  IDirectManipulationManager2(Pointer<COMObject> ptr) : super(ptr);

  int CreateBehavior(
    Pointer<GUID> clsid,
    Pointer<GUID> riid,
    Pointer<Pointer> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<GUID> riid,
            Pointer<Pointer> object,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        riid,
        object,
      );
}
