// IServicePool.dart

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

import '../../system/com/IUnknown.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServicePool = '{B302DF81-EA45-451E-99A2-09F9FD1B1E13}';

/// {@category Interface}
/// {@category com}
class IServicePool extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IServicePool(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pPoolConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPoolConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPoolConfig,
          )>()(
        ptr.ref.lpVtbl,
        pPoolConfig,
      );

  int GetObject(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
const CLSID_ServicePool = '{ECABB0C9-7F19-11D2-978E-0000F8757E2A}';

/// {@category com}
class ServicePool extends IServicePool {
  ServicePool(Pointer<COMObject> ptr) : super(ptr);

  factory ServicePool.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ServicePool);
    final iid = calloc<GUID>()..ref.setGUID(IID_IServicePool);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ServicePool(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
