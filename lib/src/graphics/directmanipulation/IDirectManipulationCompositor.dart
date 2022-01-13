// IDirectManipulationCompositor.dart

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
import '../../graphics/directmanipulation/IDirectManipulationContent.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directmanipulation/IDirectManipulationUpdateManager.dart';

/// @nodoc
const IID_IDirectManipulationCompositor =
    '{537A0825-0387-4EFA-B62F-71EB1F085A7E}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationCompositor extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDirectManipulationCompositor(Pointer<COMObject> ptr) : super(ptr);

  int AddContent(
    Pointer<COMObject> content,
    Pointer<COMObject> device,
    Pointer<COMObject> parentVisual,
    Pointer<COMObject> childVisual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> content,
            Pointer<COMObject> device,
            Pointer<COMObject> parentVisual,
            Pointer<COMObject> childVisual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> content,
            Pointer<COMObject> device,
            Pointer<COMObject> parentVisual,
            Pointer<COMObject> childVisual,
          )>()(
        ptr.ref.lpVtbl,
        content,
        device,
        parentVisual,
        childVisual,
      );

  int RemoveContent(
    Pointer<COMObject> content,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> content,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> content,
          )>()(
        ptr.ref.lpVtbl,
        content,
      );

  int SetUpdateManager(
    Pointer<COMObject> updateManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> updateManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> updateManager,
          )>()(
        ptr.ref.lpVtbl,
        updateManager,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
