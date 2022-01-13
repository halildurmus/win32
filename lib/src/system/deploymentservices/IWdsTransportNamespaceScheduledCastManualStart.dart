// IWdsTransportNamespaceScheduledCastManualStart.dart

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

import '../../system/deploymentservices/IWdsTransportNamespaceScheduledCast.dart';

/// @nodoc
const IID_IWdsTransportNamespaceScheduledCastManualStart =
    '{013E6E4C-E6A7-4FB5-B7FF-D9F5DA805C31}';

/// {@category Interface}
/// {@category com}
class IWdsTransportNamespaceScheduledCastManualStart
    extends IWdsTransportNamespaceScheduledCast {
  // vtable begins at 29, is 0 entries long.
  IWdsTransportNamespaceScheduledCastManualStart(Pointer<COMObject> ptr)
      : super(ptr);
}

/// @nodoc
const CLSID_WdsTransportNamespaceScheduledCastManualStart =
    '{D3E1A2AA-CAAC-460E-B98A-47F9F318A1FA}';

/// {@category com}
class WdsTransportNamespaceScheduledCastManualStart
    extends IWdsTransportNamespaceScheduledCastManualStart {
  WdsTransportNamespaceScheduledCastManualStart(Pointer<COMObject> ptr)
      : super(ptr);

  factory WdsTransportNamespaceScheduledCastManualStart.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WdsTransportNamespaceScheduledCastManualStart);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IWdsTransportNamespaceScheduledCastManualStart);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportNamespaceScheduledCastManualStart(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
