// IUserNotificationCallback.dart

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
const IID_IUserNotificationCallback = '{19108294-0441-4AFF-8013-FA0A730B0BEA}';

/// {@category Interface}
/// {@category com}
class IUserNotificationCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUserNotificationCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnBalloonUserClick(
    Pointer<POINT> pt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> pt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> pt,
          )>()(
        ptr.ref.lpVtbl,
        pt,
      );

  int OnLeftClick(
    Pointer<POINT> pt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> pt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> pt,
          )>()(
        ptr.ref.lpVtbl,
        pt,
      );

  int OnContextMenu(
    Pointer<POINT> pt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> pt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> pt,
          )>()(
        ptr.ref.lpVtbl,
        pt,
      );
}
