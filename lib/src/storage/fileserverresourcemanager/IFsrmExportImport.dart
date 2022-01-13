// IFsrmExportImport.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../storage/fileserverresourcemanager/IFsrmCommittableCollection.dart';

/// @nodoc
const IID_IFsrmExportImport = '{EFCB0AB1-16C4-4A79-812C-725614C3306B}';

/// {@category Interface}
/// {@category com}
class IFsrmExportImport extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IFsrmExportImport(Pointer<COMObject> ptr) : super(ptr);

  int ExportFileGroups(
    Pointer<Utf16> filePath,
    Pointer<VARIANT> fileGroupNamesSafeArray,
    Pointer<Utf16> remoteHost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> fileGroupNamesSafeArray,
            Pointer<Utf16> remoteHost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> fileGroupNamesSafeArray,
            Pointer<Utf16> remoteHost,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        fileGroupNamesSafeArray,
        remoteHost,
      );

  int ImportFileGroups(
    Pointer<Utf16> filePath,
    Pointer<VARIANT> fileGroupNamesSafeArray,
    Pointer<Utf16> remoteHost,
    Pointer<Pointer<COMObject>> fileGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> fileGroupNamesSafeArray,
            Pointer<Utf16> remoteHost,
            Pointer<Pointer<COMObject>> fileGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> fileGroupNamesSafeArray,
            Pointer<Utf16> remoteHost,
            Pointer<Pointer<COMObject>> fileGroups,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        fileGroupNamesSafeArray,
        remoteHost,
        fileGroups,
      );

  int ExportFileScreenTemplates(
    Pointer<Utf16> filePath,
    Pointer<VARIANT> templateNamesSafeArray,
    Pointer<Utf16> remoteHost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        templateNamesSafeArray,
        remoteHost,
      );

  int ImportFileScreenTemplates(
    Pointer<Utf16> filePath,
    Pointer<VARIANT> templateNamesSafeArray,
    Pointer<Utf16> remoteHost,
    Pointer<Pointer<COMObject>> templates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
            Pointer<Pointer<COMObject>> templates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
            Pointer<Pointer<COMObject>> templates,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        templateNamesSafeArray,
        remoteHost,
        templates,
      );

  int ExportQuotaTemplates(
    Pointer<Utf16> filePath,
    Pointer<VARIANT> templateNamesSafeArray,
    Pointer<Utf16> remoteHost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        templateNamesSafeArray,
        remoteHost,
      );

  int ImportQuotaTemplates(
    Pointer<Utf16> filePath,
    Pointer<VARIANT> templateNamesSafeArray,
    Pointer<Utf16> remoteHost,
    Pointer<Pointer<COMObject>> templates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
            Pointer<Pointer<COMObject>> templates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<VARIANT> templateNamesSafeArray,
            Pointer<Utf16> remoteHost,
            Pointer<Pointer<COMObject>> templates,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        templateNamesSafeArray,
        remoteHost,
        templates,
      );
}

/// @nodoc
const CLSID_FsrmExportImport = '{1482DC37-FAE9-4787-9025-8CE4E024AB56}';

/// {@category com}
class FsrmExportImport extends IFsrmExportImport {
  FsrmExportImport(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmExportImport.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmExportImport);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmExportImport);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmExportImport(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
