// IPublishingWizard.dart

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

import '../../ui/shell/IWizardExtension.dart';
import '../../system/com/IDataObject.dart';
import '../../foundation/structs.g.dart';
import '../../data/xml/msxml/IXMLDOMDocument.dart';

/// @nodoc
const IID_IPublishingWizard = '{AA9198BB-CCEC-472D-BEED-19A4F6733F7A}';

/// {@category Interface}
/// {@category com}
class IPublishingWizard extends IWizardExtension {
  // vtable begins at 6, is 2 entries long.
  IPublishingWizard(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pdo,
    int dwOptions,
    Pointer<Utf16> pszServiceScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdo,
            Uint32 dwOptions,
            Pointer<Utf16> pszServiceScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdo,
            int dwOptions,
            Pointer<Utf16> pszServiceScope,
          )>()(
        ptr.ref.lpVtbl,
        pdo,
        dwOptions,
        pszServiceScope,
      );

  int GetTransferManifest(
    Pointer<Int32> phrFromTransfer,
    Pointer<Pointer<COMObject>> pdocManifest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrFromTransfer,
            Pointer<Pointer<COMObject>> pdocManifest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrFromTransfer,
            Pointer<Pointer<COMObject>> pdocManifest,
          )>()(
        ptr.ref.lpVtbl,
        phrFromTransfer,
        pdocManifest,
      );
}

/// @nodoc
const CLSID_PublishingWizard = '{6B33163C-76A5-4B6C-BF21-45DE9CD503A1}';

/// {@category com}
class PublishingWizard extends IPublishingWizard {
  PublishingWizard(Pointer<COMObject> ptr) : super(ptr);

  factory PublishingWizard.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PublishingWizard);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPublishingWizard);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PublishingWizard(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
