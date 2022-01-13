// ISWbemEventSource.dart

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
import '../../system/wmi/ISWbemObject.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/ISWbemSecurity.dart';

/// @nodoc
const IID_ISWbemEventSource = '{27D54D92-0EBE-11D2-8B22-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemEventSource extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  ISWbemEventSource(Pointer<COMObject> ptr) : super(ptr);

  int NextEvent(
    int iTimeoutMs,
    Pointer<Pointer<COMObject>> objWbemObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iTimeoutMs,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iTimeoutMs,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>()(
        ptr.ref.lpVtbl,
        iTimeoutMs,
        objWbemObject,
      );

  Pointer<COMObject> get Security_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemSecurity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemSecurity,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_SWbemEventSource = '{04B83D58-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemEventSource extends ISWbemEventSource {
  SWbemEventSource(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemEventSource.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemEventSource);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemEventSource);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemEventSource(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
