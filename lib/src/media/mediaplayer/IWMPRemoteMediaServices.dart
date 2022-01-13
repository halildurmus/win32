// IWMPRemoteMediaServices.dart

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
import '../../foundation/structs.g.dart';
import '../../system/com/IDispatch.dart';

/// @nodoc
const IID_IWMPRemoteMediaServices = '{CBB92747-741F-44FE-AB5B-F1A48F3B2A59}';

/// {@category Interface}
/// {@category com}
class IWMPRemoteMediaServices extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMPRemoteMediaServices(Pointer<COMObject> ptr) : super(ptr);

  int GetServiceType(
    Pointer<Pointer<Utf16>> pbstrType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrType,
          )>()(
        ptr.ref.lpVtbl,
        pbstrType,
      );

  int GetApplicationName(
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrName,
      );

  int GetScriptableObject(
    Pointer<Pointer<Utf16>> pbstrName,
    Pointer<Pointer<COMObject>> ppDispatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<COMObject>> ppDispatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
            Pointer<Pointer<COMObject>> ppDispatch,
          )>()(
        ptr.ref.lpVtbl,
        pbstrName,
        ppDispatch,
      );

  int GetCustomUIMode(
    Pointer<Pointer<Utf16>> pbstrFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFile,
          )>()(
        ptr.ref.lpVtbl,
        pbstrFile,
      );
}

/// @nodoc
const CLSID_WMPRemoteMediaServices = '{DF333473-2CF7-4BE2-907F-9AAD5661364F}';

/// {@category com}
class WMPRemoteMediaServices extends IWMPRemoteMediaServices {
  WMPRemoteMediaServices(Pointer<COMObject> ptr) : super(ptr);

  factory WMPRemoteMediaServices.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WMPRemoteMediaServices);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWMPRemoteMediaServices);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WMPRemoteMediaServices(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
