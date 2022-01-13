// IWdsTransportNamespaceScheduledCast.dart

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

import '../../system/deploymentservices/IWdsTransportNamespace.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWdsTransportNamespaceScheduledCast =
    '{3840CECF-D76C-416E-A4CC-31C741D2874B}';

/// {@category Interface}
/// {@category com}
class IWdsTransportNamespaceScheduledCast extends IWdsTransportNamespace {
  // vtable begins at 28, is 1 entries long.
  IWdsTransportNamespaceScheduledCast(Pointer<COMObject> ptr) : super(ptr);

  int StartTransmission() => ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

/// @nodoc
const CLSID_WdsTransportNamespaceScheduledCast =
    '{BADC1897-7025-44EB-9108-FB61C4055792}';

/// {@category com}
class WdsTransportNamespaceScheduledCast
    extends IWdsTransportNamespaceScheduledCast {
  WdsTransportNamespaceScheduledCast(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportNamespaceScheduledCast.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WdsTransportNamespaceScheduledCast);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IWdsTransportNamespaceScheduledCast);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportNamespaceScheduledCast(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
