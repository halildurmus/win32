// IDirectManipulationViewport2.dart

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

import '../../graphics/directmanipulation/IDirectManipulationViewport.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectManipulationViewport2 =
    '{923CCAAC-61E1-4385-B726-017AF189882A}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationViewport2 extends IDirectManipulationViewport {
  // vtable begins at 31, is 3 entries long.
  IDirectManipulationViewport2(Pointer<COMObject> ptr) : super(ptr);

  int AddBehavior(
    Pointer<COMObject> behavior,
    Pointer<Uint32> cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> behavior,
            Pointer<Uint32> cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> behavior,
            Pointer<Uint32> cookie,
          )>()(
        ptr.ref.lpVtbl,
        behavior,
        cookie,
      );

  int RemoveBehavior(
    int cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cookie,
          )>()(
        ptr.ref.lpVtbl,
        cookie,
      );

  int RemoveAllBehaviors() => ptr.ref.lpVtbl.value
          .elementAt(33)
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
