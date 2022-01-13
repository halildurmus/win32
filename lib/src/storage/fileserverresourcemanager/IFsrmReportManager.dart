// IFsrmReportManager.dart

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
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmReportJob.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IFsrmReportManager = '{27B899FE-6FFA-4481-A184-D3DAADE8A02B}';

/// {@category Interface}
/// {@category com}
class IFsrmReportManager extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  IFsrmReportManager(Pointer<COMObject> ptr) : super(ptr);

  int EnumReportJobs(
    int options,
    Pointer<Pointer<COMObject>> reportJobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> reportJobs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> reportJobs,
          )>()(
        ptr.ref.lpVtbl,
        options,
        reportJobs,
      );

  int CreateReportJob(
    Pointer<Pointer<COMObject>> reportJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> reportJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> reportJob,
          )>()(
        ptr.ref.lpVtbl,
        reportJob,
      );

  int GetReportJob(
    Pointer<Utf16> taskName,
    Pointer<Pointer<COMObject>> reportJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> taskName,
            Pointer<Pointer<COMObject>> reportJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> taskName,
            Pointer<Pointer<COMObject>> reportJob,
          )>()(
        ptr.ref.lpVtbl,
        taskName,
        reportJob,
      );

  int GetOutputDirectory(
    int context,
    Pointer<Pointer<Utf16>> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 context,
            Pointer<Pointer<Utf16>> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int context,
            Pointer<Pointer<Utf16>> path,
          )>()(
        ptr.ref.lpVtbl,
        context,
        path,
      );

  int SetOutputDirectory(
    int context,
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 context,
            Pointer<Utf16> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int context,
            Pointer<Utf16> path,
          )>()(
        ptr.ref.lpVtbl,
        context,
        path,
      );

  int IsFilterValidForReportType(
    int reportType,
    int filter,
    Pointer<Int16> valid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 reportType,
            Int32 filter,
            Pointer<Int16> valid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reportType,
            int filter,
            Pointer<Int16> valid,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        filter,
        valid,
      );

  int GetDefaultFilter(
    int reportType,
    int filter,
    Pointer<VARIANT> filterValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 reportType,
            Int32 filter,
            Pointer<VARIANT> filterValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reportType,
            int filter,
            Pointer<VARIANT> filterValue,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        filter,
        filterValue,
      );

  int SetDefaultFilter(
    int reportType,
    int filter,
    VARIANT filterValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 reportType,
            Int32 filter,
            VARIANT filterValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reportType,
            int filter,
            VARIANT filterValue,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        filter,
        filterValue,
      );

  int GetReportSizeLimit(
    int limit,
    Pointer<VARIANT> limitValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 limit,
            Pointer<VARIANT> limitValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int limit,
            Pointer<VARIANT> limitValue,
          )>()(
        ptr.ref.lpVtbl,
        limit,
        limitValue,
      );

  int SetReportSizeLimit(
    int limit,
    VARIANT limitValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 limit,
            VARIANT limitValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int limit,
            VARIANT limitValue,
          )>()(
        ptr.ref.lpVtbl,
        limit,
        limitValue,
      );
}

/// @nodoc
const CLSID_FsrmReportManager = '{0058EF37-AA66-4C48-BD5B-2FCE432AB0C8}';

/// {@category com}
class FsrmReportManager extends IFsrmReportManager {
  FsrmReportManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmReportManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmReportManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmReportManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmReportManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
