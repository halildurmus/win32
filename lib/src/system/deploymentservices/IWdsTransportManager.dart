// IWdsTransportManager.dart

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
import '../../system/deploymentservices/IWdsTransportServer.dart';

/// @nodoc
const IID_IWdsTransportManager = '{5B0D35F5-1B13-4AFD-B878-6526DC340B5D}';

/// {@category Interface}
/// {@category com}
class IWdsTransportManager extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IWdsTransportManager(Pointer<COMObject> ptr) : super(ptr);

  int GetWdsTransportServer(
    Pointer<Utf16> bszServerName,
    Pointer<Pointer<COMObject>> ppWdsTransportServer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bszServerName,
            Pointer<Pointer<COMObject>> ppWdsTransportServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bszServerName,
            Pointer<Pointer<COMObject>> ppWdsTransportServer,
          )>()(
        ptr.ref.lpVtbl,
        bszServerName,
        ppWdsTransportServer,
      );
}

/// @nodoc
const CLSID_WdsTransportManager = '{F21523F6-837C-4A58-AF99-8A7E27F8FF59}';

/// {@category com}
class WdsTransportManager extends IWdsTransportManager {
  WdsTransportManager(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WdsTransportManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
