// IWdsTransportDiagnosticsPolicy.dart

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

import '../../system/deploymentservices/IWdsTransportCacheable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWdsTransportDiagnosticsPolicy =
    '{13B33EFC-7856-4F61-9A59-8DE67B6B87B6}';

/// {@category Interface}
/// {@category com}
class IWdsTransportDiagnosticsPolicy extends IWdsTransportCacheable {
  // vtable begins at 11, is 4 entries long.
  IWdsTransportDiagnosticsPolicy(Pointer<COMObject> ptr) : super(ptr);

  int get Enabled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Enabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bEnabled,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bEnabled,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Components {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulComponents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulComponents,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Components(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulComponents,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulComponents,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_WdsTransportDiagnosticsPolicy =
    '{EB3333E1-A7AD-46F5-80D6-6B740204E509}';

/// {@category com}
class WdsTransportDiagnosticsPolicy extends IWdsTransportDiagnosticsPolicy {
  WdsTransportDiagnosticsPolicy(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportDiagnosticsPolicy.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WdsTransportDiagnosticsPolicy);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportDiagnosticsPolicy);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportDiagnosticsPolicy(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
