// IWdsTransportNamespaceManager.dart

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
import '../../system/deploymentservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/deploymentservices/IWdsTransportNamespace.dart';
import '../../system/deploymentservices/IWdsTransportCollection.dart';

/// @nodoc
const IID_IWdsTransportNamespaceManager =
    '{3E22D9F6-3777-4D98-83E1-F98696717BA3}';

/// {@category Interface}
/// {@category com}
class IWdsTransportNamespaceManager extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IWdsTransportNamespaceManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateNamespace(
    int NamespaceType,
    Pointer<Utf16> bszNamespaceName,
    Pointer<Utf16> bszContentProvider,
    Pointer<Utf16> bszConfiguration,
    Pointer<Pointer<COMObject>> ppWdsTransportNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NamespaceType,
            Pointer<Utf16> bszNamespaceName,
            Pointer<Utf16> bszContentProvider,
            Pointer<Utf16> bszConfiguration,
            Pointer<Pointer<COMObject>> ppWdsTransportNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NamespaceType,
            Pointer<Utf16> bszNamespaceName,
            Pointer<Utf16> bszContentProvider,
            Pointer<Utf16> bszConfiguration,
            Pointer<Pointer<COMObject>> ppWdsTransportNamespace,
          )>()(
        ptr.ref.lpVtbl,
        NamespaceType,
        bszNamespaceName,
        bszContentProvider,
        bszConfiguration,
        ppWdsTransportNamespace,
      );

  int RetrieveNamespace(
    Pointer<Utf16> bszNamespaceName,
    Pointer<Pointer<COMObject>> ppWdsTransportNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bszNamespaceName,
            Pointer<Pointer<COMObject>> ppWdsTransportNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bszNamespaceName,
            Pointer<Pointer<COMObject>> ppWdsTransportNamespace,
          )>()(
        ptr.ref.lpVtbl,
        bszNamespaceName,
        ppWdsTransportNamespace,
      );

  int RetrieveNamespaces(
    Pointer<Utf16> bszContentProvider,
    Pointer<Utf16> bszNamespaceName,
    int bIncludeTombstones,
    Pointer<Pointer<COMObject>> ppWdsTransportNamespaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bszContentProvider,
            Pointer<Utf16> bszNamespaceName,
            Int16 bIncludeTombstones,
            Pointer<Pointer<COMObject>> ppWdsTransportNamespaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bszContentProvider,
            Pointer<Utf16> bszNamespaceName,
            int bIncludeTombstones,
            Pointer<Pointer<COMObject>> ppWdsTransportNamespaces,
          )>()(
        ptr.ref.lpVtbl,
        bszContentProvider,
        bszNamespaceName,
        bIncludeTombstones,
        ppWdsTransportNamespaces,
      );
}

/// @nodoc
const CLSID_WdsTransportNamespaceManager =
    '{F08CDB63-85DE-4A28-A1A9-5CA3E7EFDA73}';

/// {@category com}
class WdsTransportNamespaceManager extends IWdsTransportNamespaceManager {
  WdsTransportNamespaceManager(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportNamespaceManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WdsTransportNamespaceManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportNamespaceManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportNamespaceManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
