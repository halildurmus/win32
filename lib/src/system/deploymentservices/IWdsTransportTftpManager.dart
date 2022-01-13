// IWdsTransportTftpManager.dart

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
import '../../system/deploymentservices/IWdsTransportCollection.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWdsTransportTftpManager = '{1327A7C8-AE8A-4FB3-8150-136227C37E9A}';

/// {@category Interface}
/// {@category com}
class IWdsTransportTftpManager extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IWdsTransportTftpManager(Pointer<COMObject> ptr) : super(ptr);

  int RetrieveTftpClients(
    Pointer<Pointer<COMObject>> ppWdsTransportTftpClients,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportTftpClients,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportTftpClients,
          )>()(
        ptr.ref.lpVtbl,
        ppWdsTransportTftpClients,
      );
}

/// @nodoc
const CLSID_WdsTransportTftpManager = '{C8E9DCA2-3241-4E4D-B806-BC74019DFEDA}';

/// {@category com}
class WdsTransportTftpManager extends IWdsTransportTftpManager {
  WdsTransportTftpManager(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportTftpManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WdsTransportTftpManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportTftpManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportTftpManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
