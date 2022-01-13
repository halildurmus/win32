// ISWbemServicesEx.dart

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

import '../../system/wmi/ISWbemServices.dart';
import '../../system/wmi/ISWbemObjectEx.dart';
import '../../system/com/IDispatch.dart';
import '../../system/wmi/ISWbemObjectPath.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/ISWbemSink.dart';

/// @nodoc
const IID_ISWbemServicesEx = '{D2F68443-85DC-427E-91D8-366554CC754C}';

/// {@category Interface}
/// {@category com}
class ISWbemServicesEx extends ISWbemServices {
  // vtable begins at 26, is 2 entries long.
  ISWbemServicesEx(Pointer<COMObject> ptr) : super(ptr);

  int Put(
    Pointer<COMObject> objWbemObject,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObjectPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemObject,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemObject,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectPath,
          )>()(
        ptr.ref.lpVtbl,
        objWbemObject,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectPath,
      );

  int PutAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<COMObject> objWbemObject,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<COMObject> objWbemObject,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<COMObject> objWbemObject,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        objWbemObject,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );
}

/// @nodoc
const CLSID_SWbemServicesEx = '{62E522DC-8CF3-40A8-8B2E-37D595651E40}';

/// {@category com}
class SWbemServicesEx extends ISWbemServicesEx {
  SWbemServicesEx(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemServicesEx.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemServicesEx);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemServicesEx);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemServicesEx(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
