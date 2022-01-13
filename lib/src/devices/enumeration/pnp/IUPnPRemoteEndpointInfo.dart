// IUPnPRemoteEndpointInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IUPnPRemoteEndpointInfo = '{C92EB863-0269-4AFF-9C72-75321BBA2952}';

/// {@category Interface}
/// {@category com}
class IUPnPRemoteEndpointInfo extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUPnPRemoteEndpointInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetDwordValue(
    Pointer<Utf16> bstrValueName,
    Pointer<Uint32> pdwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrValueName,
            Pointer<Uint32> pdwValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrValueName,
            Pointer<Uint32> pdwValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrValueName,
        pdwValue,
      );

  int GetStringValue(
    Pointer<Utf16> bstrValueName,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrValueName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrValueName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrValueName,
        pbstrValue,
      );

  int GetGuidValue(
    Pointer<Utf16> bstrValueName,
    Pointer<GUID> pguidValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrValueName,
            Pointer<GUID> pguidValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrValueName,
            Pointer<GUID> pguidValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrValueName,
        pguidValue,
      );
}

/// @nodoc
const CLSID_UPnPRemoteEndpointInfo = '{2E5E84E9-4049-4244-B728-2D24227157C7}';

/// {@category com}
class UPnPRemoteEndpointInfo extends IUPnPRemoteEndpointInfo {
  UPnPRemoteEndpointInfo(Pointer<COMObject> ptr) : super(ptr);

  factory UPnPRemoteEndpointInfo.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UPnPRemoteEndpointInfo);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUPnPRemoteEndpointInfo);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UPnPRemoteEndpointInfo(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
