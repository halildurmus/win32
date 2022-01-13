// IFsrmFileManagementJobManager.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';
import '../../storage/fileserverresourcemanager/IFsrmFileManagementJob.dart';

/// @nodoc
const IID_IFsrmFileManagementJobManager =
    '{EE321ECB-D95E-48E9-907C-C7685A013235}';

/// {@category Interface}
/// {@category com}
class IFsrmFileManagementJobManager extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFsrmFileManagementJobManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<SAFEARRAY> get ActionVariables {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> variables,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> variables,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get ActionVariableDescriptions {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> descriptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> descriptions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumFileManagementJobs(
    int options,
    Pointer<Pointer<COMObject>> fileManagementJobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> fileManagementJobs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> fileManagementJobs,
          )>()(
        ptr.ref.lpVtbl,
        options,
        fileManagementJobs,
      );

  int CreateFileManagementJob(
    Pointer<Pointer<COMObject>> fileManagementJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fileManagementJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fileManagementJob,
          )>()(
        ptr.ref.lpVtbl,
        fileManagementJob,
      );

  int GetFileManagementJob(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> fileManagementJob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> fileManagementJob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> fileManagementJob,
          )>()(
        ptr.ref.lpVtbl,
        name,
        fileManagementJob,
      );
}

/// @nodoc
const CLSID_FsrmFileManagementJobManager =
    '{EB18F9B2-4C3A-4321-B203-205120CFF614}';

/// {@category com}
class FsrmFileManagementJobManager extends IFsrmFileManagementJobManager {
  FsrmFileManagementJobManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmFileManagementJobManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_FsrmFileManagementJobManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmFileManagementJobManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmFileManagementJobManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
