// IWdsTransportNamespaceAutoCast.dart

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

/// @nodoc
const IID_IWdsTransportNamespaceAutoCast =
    '{AD931A72-C4BD-4C41-8FBC-59C9C748DF9E}';

/// {@category Interface}
/// {@category com}
class IWdsTransportNamespaceAutoCast extends IWdsTransportNamespace {
  // vtable begins at 28, is 0 entries long.
  IWdsTransportNamespaceAutoCast(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_WdsTransportNamespaceAutoCast =
    '{B091F5A8-6A99-478D-B23B-09E8FEE04574}';

/// {@category com}
class WdsTransportNamespaceAutoCast extends IWdsTransportNamespaceAutoCast {
  WdsTransportNamespaceAutoCast(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportNamespaceAutoCast.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WdsTransportNamespaceAutoCast);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportNamespaceAutoCast);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportNamespaceAutoCast(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
