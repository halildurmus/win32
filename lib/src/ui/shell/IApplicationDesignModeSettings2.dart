// IApplicationDesignModeSettings2.dart

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

import '../../ui/shell/IApplicationDesignModeSettings.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IApplicationDesignModeSettings2 =
    '{490514E1-675A-4D6E-A58D-E54901B4CA2F}';

/// {@category Interface}
/// {@category com}
class IApplicationDesignModeSettings2 extends IApplicationDesignModeSettings {
  // vtable begins at 9, is 7 entries long.
  IApplicationDesignModeSettings2(Pointer<COMObject> ptr) : super(ptr);

  int SetNativeDisplayOrientation(
    int nativeDisplayOrientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nativeDisplayOrientation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nativeDisplayOrientation,
          )>()(
        ptr.ref.lpVtbl,
        nativeDisplayOrientation,
      );

  int SetApplicationViewOrientation(
    int viewOrientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 viewOrientation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewOrientation,
          )>()(
        ptr.ref.lpVtbl,
        viewOrientation,
      );

  int SetAdjacentDisplayEdges(
    int adjacentDisplayEdges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 adjacentDisplayEdges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int adjacentDisplayEdges,
          )>()(
        ptr.ref.lpVtbl,
        adjacentDisplayEdges,
      );

  int SetIsOnLockScreen(
    int isOnLockScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isOnLockScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isOnLockScreen,
          )>()(
        ptr.ref.lpVtbl,
        isOnLockScreen,
      );

  int SetApplicationViewMinWidth(
    int viewMinWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 viewMinWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewMinWidth,
          )>()(
        ptr.ref.lpVtbl,
        viewMinWidth,
      );

  int GetApplicationSizeBounds(
    Pointer<SIZE> minApplicationSizePixels,
    Pointer<SIZE> maxApplicationSizePixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> minApplicationSizePixels,
            Pointer<SIZE> maxApplicationSizePixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> minApplicationSizePixels,
            Pointer<SIZE> maxApplicationSizePixels,
          )>()(
        ptr.ref.lpVtbl,
        minApplicationSizePixels,
        maxApplicationSizePixels,
      );

  int GetApplicationViewOrientation(
    SIZE applicationSizePixels,
    Pointer<Int32> viewOrientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            SIZE applicationSizePixels,
            Pointer<Int32> viewOrientation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            SIZE applicationSizePixels,
            Pointer<Int32> viewOrientation,
          )>()(
        ptr.ref.lpVtbl,
        applicationSizePixels,
        viewOrientation,
      );
}
