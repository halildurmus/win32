// ITaskScheduler.dart

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
import '../../system/taskscheduler/IEnumWorkItems.dart';
import '../../specialTypes.dart';
import '../../system/taskscheduler/IScheduledWorkItem.dart';

/// @nodoc
const IID_ITaskScheduler = '{148BD527-A2AB-11CE-B11F-00AA00530503}';

/// {@category Interface}
/// {@category com}
class ITaskScheduler extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ITaskScheduler(Pointer<COMObject> ptr) : super(ptr);

  int SetTargetComputer(
    Pointer<Utf16> pwszComputer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszComputer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszComputer,
          )>()(
        ptr.ref.lpVtbl,
        pwszComputer,
      );

  int GetTargetComputer(
    Pointer<Pointer<Utf16>> ppwszComputer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszComputer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszComputer,
          )>()(
        ptr.ref.lpVtbl,
        ppwszComputer,
      );

  int Enum(
    Pointer<Pointer<COMObject>> ppEnumWorkItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumWorkItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumWorkItems,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumWorkItems,
      );

  int Activate(
    Pointer<Utf16> pwszName,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        riid,
        ppUnk,
      );

  int Delete(
    Pointer<Utf16> pwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
      );

  int NewWorkItem(
    Pointer<Utf16> pwszTaskName,
    Pointer<GUID> rclsid,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszTaskName,
            Pointer<GUID> rclsid,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszTaskName,
            Pointer<GUID> rclsid,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        pwszTaskName,
        rclsid,
        riid,
        ppUnk,
      );

  int AddWorkItem(
    Pointer<Utf16> pwszTaskName,
    Pointer<COMObject> pWorkItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszTaskName,
            Pointer<COMObject> pWorkItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszTaskName,
            Pointer<COMObject> pWorkItem,
          )>()(
        ptr.ref.lpVtbl,
        pwszTaskName,
        pWorkItem,
      );

  int IsOfType(
    Pointer<Utf16> pwszName,
    Pointer<GUID> riid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<GUID> riid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<GUID> riid,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        riid,
      );
}

/// @nodoc
const CLSID_TaskScheduler = '{0F87369F-A4E5-4CFC-BD3E-73E6154572DD}';

/// {@category com}
class TaskScheduler extends ITaskScheduler {
  TaskScheduler(Pointer<COMObject> ptr) : super(ptr);

  factory TaskScheduler.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_TaskScheduler);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITaskScheduler);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TaskScheduler(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
