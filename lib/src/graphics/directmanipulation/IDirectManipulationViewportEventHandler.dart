// IDirectManipulationViewportEventHandler.dart

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
import '../../graphics/directmanipulation/IDirectManipulationViewport.dart';
import '../../graphics/directmanipulation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directmanipulation/IDirectManipulationContent.dart';

/// @nodoc
const IID_IDirectManipulationViewportEventHandler =
    '{952121DA-D69F-45F9-B0F9-F23944321A6D}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationViewportEventHandler extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirectManipulationViewportEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int OnViewportStatusChanged(
    Pointer<COMObject> viewport,
    int current,
    int previous,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> viewport,
            Int32 current,
            Int32 previous,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> viewport,
            int current,
            int previous,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
        current,
        previous,
      );

  int OnViewportUpdated(
    Pointer<COMObject> viewport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> viewport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> viewport,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
      );

  int OnContentUpdated(
    Pointer<COMObject> viewport,
    Pointer<COMObject> content,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> viewport,
            Pointer<COMObject> content,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> viewport,
            Pointer<COMObject> content,
          )>()(
        ptr.ref.lpVtbl,
        viewport,
        content,
      );
}
