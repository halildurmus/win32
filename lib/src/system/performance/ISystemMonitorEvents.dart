// ISystemMonitorEvents.dart

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

/// @nodoc
const IID_ISystemMonitorEvents = '{EE660EA0-4ABD-11CF-943A-008029004347}';

/// {@category Interface}
/// {@category com}
class ISystemMonitorEvents extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISystemMonitorEvents(Pointer<COMObject> ptr) : super(ptr);

  void OnCounterSelected(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Index,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  void OnCounterAdded(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Index,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  void OnCounterDeleted(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Index,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  void OnSampleCollected() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void OnDblClick(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Index,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );
}
