// IInkPresenterDesktop.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/input/ink/IInkCommitRequestHandler.dart';

/// @nodoc
const IID_IInkPresenterDesktop = '{73F3C0D9-2E8B-48F3-895E-20CBD27B723B}';

/// {@category Interface}
/// {@category com}
class IInkPresenterDesktop extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IInkPresenterDesktop(Pointer<COMObject> ptr) : super(ptr);

  int SetRootVisual(
    Pointer<COMObject> rootVisual,
    Pointer<COMObject> device,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> rootVisual,
            Pointer<COMObject> device,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> rootVisual,
            Pointer<COMObject> device,
          )>()(
        ptr.ref.lpVtbl,
        rootVisual,
        device,
      );

  int SetCommitRequestHandler(
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        handler,
      );

  int GetSize(
    Pointer<Float> width,
    Pointer<Float> height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> width,
            Pointer<Float> height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> width,
            Pointer<Float> height,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
      );

  int SetSize(
    double width,
    double height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float width,
            Float height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double width,
            double height,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
      );

  int OnHighContrastChanged() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
