// IDirectManipulationManager3.dart

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

import '../../graphics/directmanipulation/IDirectManipulationManager2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectManipulationManager3 =
    '{2CB6B33D-FFE8-488C-B750-FBDFE88DCA8C}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationManager3 extends IDirectManipulationManager2 {
  // vtable begins at 11, is 1 entries long.
  IDirectManipulationManager3(Pointer<COMObject> ptr) : super(ptr);

  int GetService(
    Pointer<GUID> clsid,
    Pointer<GUID> riid,
    Pointer<Pointer> object,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
