// ITrackerOwner.dart

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
import '../../../system/winrt/xaml/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ITrackerOwner = '{EB24C20B-9816-4AC7-8CFF-36F67A118F4E}';

/// {@category Interface}
/// {@category com}
class ITrackerOwner extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITrackerOwner(Pointer<COMObject> ptr) : super(ptr);

  int CreateTrackerHandle(
    Pointer<Pointer<TrackerHandle__>> returnValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<TrackerHandle__>> returnValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<TrackerHandle__>> returnValue,
          )>()(
        ptr.ref.lpVtbl,
        returnValue,
      );

  int DeleteTrackerHandle(
    Pointer<TrackerHandle__> handle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TrackerHandle__> handle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TrackerHandle__> handle,
          )>()(
        ptr.ref.lpVtbl,
        handle,
      );

  int SetTrackerValue(
    Pointer<TrackerHandle__> handle,
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TrackerHandle__> handle,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TrackerHandle__> handle,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        handle,
        value,
      );

  int TryGetSafeTrackerValue(
    Pointer<TrackerHandle__> handle,
    Pointer<Pointer<COMObject>> returnValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint8 Function(
            Pointer,
            Pointer<TrackerHandle__> handle,
            Pointer<Pointer<COMObject>> returnValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TrackerHandle__> handle,
            Pointer<Pointer<COMObject>> returnValue,
          )>()(
        ptr.ref.lpVtbl,
        handle,
        returnValue,
      );
}
