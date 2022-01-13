// IFsrmReportScheduler.dart

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

import '../../system/com/IDispatch.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmReportScheduler = '{6879CAF9-6617-4484-8719-71C3D8645F94}';

/// {@category Interface}
/// {@category com}
class IFsrmReportScheduler extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IFsrmReportScheduler(Pointer<COMObject> ptr) : super(ptr);

  int VerifyNamespaces(
    Pointer<VARIANT> namespacesSafeArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> namespacesSafeArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> namespacesSafeArray,
          )>()(
        ptr.ref.lpVtbl,
        namespacesSafeArray,
      );

  int CreateScheduleTask(
    Pointer<Utf16> taskName,
    Pointer<VARIANT> namespacesSafeArray,
    Pointer<Utf16> serializedTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> taskName,
            Pointer<VARIANT> namespacesSafeArray,
            Pointer<Utf16> serializedTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> taskName,
            Pointer<VARIANT> namespacesSafeArray,
            Pointer<Utf16> serializedTask,
          )>()(
        ptr.ref.lpVtbl,
        taskName,
        namespacesSafeArray,
        serializedTask,
      );

  int ModifyScheduleTask(
    Pointer<Utf16> taskName,
    Pointer<VARIANT> namespacesSafeArray,
    Pointer<Utf16> serializedTask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> taskName,
            Pointer<VARIANT> namespacesSafeArray,
            Pointer<Utf16> serializedTask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> taskName,
            Pointer<VARIANT> namespacesSafeArray,
            Pointer<Utf16> serializedTask,
          )>()(
        ptr.ref.lpVtbl,
        taskName,
        namespacesSafeArray,
        serializedTask,
      );

  int DeleteScheduleTask(
    Pointer<Utf16> taskName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> taskName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> taskName,
          )>()(
        ptr.ref.lpVtbl,
        taskName,
      );
}

/// @nodoc
const CLSID_FsrmReportScheduler = '{EA25F1B8-1B8D-4290-8EE8-E17C12C2FE20}';

/// {@category com}
class FsrmReportScheduler extends IFsrmReportScheduler {
  FsrmReportScheduler(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmReportScheduler.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmReportScheduler);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmReportScheduler);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmReportScheduler(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
