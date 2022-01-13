// IFrameworkInputPaneHandler.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFrameworkInputPaneHandler = '{226C537B-1E76-4D9E-A760-33DB29922F18}';

/// {@category Interface}
/// {@category com}
class IFrameworkInputPaneHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFrameworkInputPaneHandler(Pointer<COMObject> ptr) : super(ptr);

  int Showing(
    Pointer<RECT> prcInputPaneScreenLocation,
    int fEnsureFocusedElementInView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcInputPaneScreenLocation,
            Int32 fEnsureFocusedElementInView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcInputPaneScreenLocation,
            int fEnsureFocusedElementInView,
          )>()(
        ptr.ref.lpVtbl,
        prcInputPaneScreenLocation,
        fEnsureFocusedElementInView,
      );

  int Hiding(
    int fEnsureFocusedElementInView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnsureFocusedElementInView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnsureFocusedElementInView,
          )>()(
        ptr.ref.lpVtbl,
        fEnsureFocusedElementInView,
      );
}
