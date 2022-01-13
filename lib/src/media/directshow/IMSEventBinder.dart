// IMSEventBinder.dart

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

/// @nodoc
const IID_IMSEventBinder = '{C3A9F406-2222-436D-86D5-BA3229279EFB}';

/// {@category Interface}
/// {@category com}
class IMSEventBinder extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IMSEventBinder(Pointer<COMObject> ptr) : super(ptr);

  int Bind(
    Pointer<COMObject> pEventObject,
    Pointer<Utf16> EventName,
    Pointer<Utf16> EventHandler,
    Pointer<Int32> CancelID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEventObject,
            Pointer<Utf16> EventName,
            Pointer<Utf16> EventHandler,
            Pointer<Int32> CancelID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEventObject,
            Pointer<Utf16> EventName,
            Pointer<Utf16> EventHandler,
            Pointer<Int32> CancelID,
          )>()(
        ptr.ref.lpVtbl,
        pEventObject,
        EventName,
        EventHandler,
        CancelID,
      );

  int Unbind(
    int CancelCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 CancelCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CancelCookie,
          )>()(
        ptr.ref.lpVtbl,
        CancelCookie,
      );
}

/// @nodoc
const CLSID_MSEventBinder = '{577FAA18-4518-445E-8F70-1473F8CF4BA4}';

/// {@category com}
class MSEventBinder extends IMSEventBinder {
  MSEventBinder(Pointer<COMObject> ptr) : super(ptr);

  factory MSEventBinder.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSEventBinder);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSEventBinder);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSEventBinder(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
