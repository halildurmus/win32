// IFsrmQuotaTemplateManager.dart

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
import '../../storage/fileserverresourcemanager/IFsrmQuotaTemplate.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCommittableCollection.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IFsrmQuotaTemplateManager = '{4173AC41-172D-4D52-963C-FDC7E415F717}';

/// {@category Interface}
/// {@category com}
class IFsrmQuotaTemplateManager extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFsrmQuotaTemplateManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateTemplate(
    Pointer<Pointer<COMObject>> quotaTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> quotaTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> quotaTemplate,
          )>()(
        ptr.ref.lpVtbl,
        quotaTemplate,
      );

  int GetTemplate(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> quotaTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> quotaTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> quotaTemplate,
          )>()(
        ptr.ref.lpVtbl,
        name,
        quotaTemplate,
      );

  int EnumTemplates(
    int options,
    Pointer<Pointer<COMObject>> quotaTemplates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> quotaTemplates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> quotaTemplates,
          )>()(
        ptr.ref.lpVtbl,
        options,
        quotaTemplates,
      );

  int ExportTemplates(
    Pointer<VARIANT> quotaTemplateNamesArray,
    Pointer<Pointer<Utf16>> serializedQuotaTemplates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> quotaTemplateNamesArray,
            Pointer<Pointer<Utf16>> serializedQuotaTemplates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> quotaTemplateNamesArray,
            Pointer<Pointer<Utf16>> serializedQuotaTemplates,
          )>()(
        ptr.ref.lpVtbl,
        quotaTemplateNamesArray,
        serializedQuotaTemplates,
      );

  int ImportTemplates(
    Pointer<Utf16> serializedQuotaTemplates,
    Pointer<VARIANT> quotaTemplateNamesArray,
    Pointer<Pointer<COMObject>> quotaTemplates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> serializedQuotaTemplates,
            Pointer<VARIANT> quotaTemplateNamesArray,
            Pointer<Pointer<COMObject>> quotaTemplates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> serializedQuotaTemplates,
            Pointer<VARIANT> quotaTemplateNamesArray,
            Pointer<Pointer<COMObject>> quotaTemplates,
          )>()(
        ptr.ref.lpVtbl,
        serializedQuotaTemplates,
        quotaTemplateNamesArray,
        quotaTemplates,
      );
}

/// @nodoc
const CLSID_FsrmQuotaTemplateManager = '{97D3D443-251C-4337-81E7-B32E8F4EE65E}';

/// {@category com}
class FsrmQuotaTemplateManager extends IFsrmQuotaTemplateManager {
  FsrmQuotaTemplateManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmQuotaTemplateManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmQuotaTemplateManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmQuotaTemplateManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmQuotaTemplateManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
