// IUIAnimationStoryboardEventHandler2.dart

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
import '../../ui/animation/IUIAnimationStoryboard2.dart';
import '../../ui/animation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAnimationStoryboardEventHandler2 =
    '{BAC5F55A-BA7C-414C-B599-FBF850F553C6}';

/// {@category Interface}
/// {@category com}
class IUIAnimationStoryboardEventHandler2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAnimationStoryboardEventHandler2(Pointer<COMObject> ptr) : super(ptr);

  int OnStoryboardStatusChanged(
    Pointer<COMObject> storyboard,
    int newStatus,
    int previousStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> storyboard,
            Int32 newStatus,
            Int32 previousStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> storyboard,
            int newStatus,
            int previousStatus,
          )>()(
        ptr.ref.lpVtbl,
        storyboard,
        newStatus,
        previousStatus,
      );

  int OnStoryboardUpdated(
    Pointer<COMObject> storyboard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> storyboard,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> storyboard,
          )>()(
        ptr.ref.lpVtbl,
        storyboard,
      );
}
