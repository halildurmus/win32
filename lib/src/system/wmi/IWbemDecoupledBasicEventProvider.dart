// IWbemDecoupledBasicEventProvider.dart

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

import '../../system/wmi/IWbemDecoupledRegistrar.dart';
import '../../system/wmi/IWbemContext.dart';
import '../../system/wmi/IWbemObjectSink.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/IWbemServices.dart';

/// @nodoc
const IID_IWbemDecoupledBasicEventProvider =
    '{86336D20-CA11-4786-9EF1-BC8A946B42FC}';

/// {@category Interface}
/// {@category com}
class IWbemDecoupledBasicEventProvider extends IWbemDecoupledRegistrar {
  // vtable begins at 5, is 2 entries long.
  IWbemDecoupledBasicEventProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetSink(
    int a_Flags,
    Pointer<COMObject> a_Context,
    Pointer<Pointer<COMObject>> a_Sink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 a_Flags,
            Pointer<COMObject> a_Context,
            Pointer<Pointer<COMObject>> a_Sink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int a_Flags,
            Pointer<COMObject> a_Context,
            Pointer<Pointer<COMObject>> a_Sink,
          )>()(
        ptr.ref.lpVtbl,
        a_Flags,
        a_Context,
        a_Sink,
      );

  int GetService(
    int a_Flags,
    Pointer<COMObject> a_Context,
    Pointer<Pointer<COMObject>> a_Service,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 a_Flags,
            Pointer<COMObject> a_Context,
            Pointer<Pointer<COMObject>> a_Service,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int a_Flags,
            Pointer<COMObject> a_Context,
            Pointer<Pointer<COMObject>> a_Service,
          )>()(
        ptr.ref.lpVtbl,
        a_Flags,
        a_Context,
        a_Service,
      );
}

/// @nodoc
const CLSID_WbemDecoupledBasicEventProvider =
    '{F5F75737-2843-4F22-933D-C76A97CDA62F}';

/// {@category com}
class WbemDecoupledBasicEventProvider extends IWbemDecoupledBasicEventProvider {
  WbemDecoupledBasicEventProvider(Pointer<COMObject> ptr) : super(ptr);

  factory WbemDecoupledBasicEventProvider.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_WbemDecoupledBasicEventProvider);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IWbemDecoupledBasicEventProvider);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemDecoupledBasicEventProvider(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
