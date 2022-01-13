// IFsrmFileScreenTemplateManager.dart

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
import '../../storage/fileserverresourcemanager/IFsrmFileScreenTemplate.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCommittableCollection.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IFsrmFileScreenTemplateManager =
    '{CFE36CBA-1949-4E74-A14F-F1D580CEAF13}';

/// {@category Interface}
/// {@category com}
class IFsrmFileScreenTemplateManager extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFsrmFileScreenTemplateManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateTemplate(
    Pointer<Pointer<COMObject>> fileScreenTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fileScreenTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fileScreenTemplate,
          )>()(
        ptr.ref.lpVtbl,
        fileScreenTemplate,
      );

  int GetTemplate(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> fileScreenTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> fileScreenTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> fileScreenTemplate,
          )>()(
        ptr.ref.lpVtbl,
        name,
        fileScreenTemplate,
      );

  int EnumTemplates(
    int options,
    Pointer<Pointer<COMObject>> fileScreenTemplates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> fileScreenTemplates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> fileScreenTemplates,
          )>()(
        ptr.ref.lpVtbl,
        options,
        fileScreenTemplates,
      );

  int ExportTemplates(
    Pointer<VARIANT> fileScreenTemplateNamesArray,
    Pointer<Pointer<Utf16>> serializedFileScreenTemplates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> fileScreenTemplateNamesArray,
            Pointer<Pointer<Utf16>> serializedFileScreenTemplates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> fileScreenTemplateNamesArray,
            Pointer<Pointer<Utf16>> serializedFileScreenTemplates,
          )>()(
        ptr.ref.lpVtbl,
        fileScreenTemplateNamesArray,
        serializedFileScreenTemplates,
      );

  int ImportTemplates(
    Pointer<Utf16> serializedFileScreenTemplates,
    Pointer<VARIANT> fileScreenTemplateNamesArray,
    Pointer<Pointer<COMObject>> fileScreenTemplates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serializedFileScreenTemplates,
            Pointer<VARIANT> fileScreenTemplateNamesArray,
            Pointer<Pointer<COMObject>> fileScreenTemplates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serializedFileScreenTemplates,
            Pointer<VARIANT> fileScreenTemplateNamesArray,
            Pointer<Pointer<COMObject>> fileScreenTemplates,
          )>()(
        ptr.ref.lpVtbl,
        serializedFileScreenTemplates,
        fileScreenTemplateNamesArray,
        fileScreenTemplates,
      );
}

/// @nodoc
const CLSID_FsrmFileScreenTemplateManager =
    '{243111DF-E474-46AA-A054-EAA33EDC292A}';

/// {@category com}
class FsrmFileScreenTemplateManager extends IFsrmFileScreenTemplateManager {
  FsrmFileScreenTemplateManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmFileScreenTemplateManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_FsrmFileScreenTemplateManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmFileScreenTemplateManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmFileScreenTemplateManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
