// IUPnPService.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IUPnPService = '{A295019C-DC65-47DD-90DC-7FE918A1AB44}';

/// {@category Interface}
/// {@category com}
class IUPnPService extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IUPnPService(Pointer<COMObject> ptr) : super(ptr);

  int QueryStateVariable(
    Pointer<Utf16> bstrVariableName,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrVariableName,
            Pointer<VARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrVariableName,
            Pointer<VARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrVariableName,
        pValue,
      );

  int InvokeAction(
    Pointer<Utf16> bstrActionName,
    VARIANT vInActionArgs,
    Pointer<VARIANT> pvOutActionArgs,
    Pointer<VARIANT> pvRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrActionName,
            VARIANT vInActionArgs,
            Pointer<VARIANT> pvOutActionArgs,
            Pointer<VARIANT> pvRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrActionName,
            VARIANT vInActionArgs,
            Pointer<VARIANT> pvOutActionArgs,
            Pointer<VARIANT> pvRetVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrActionName,
        vInActionArgs,
        pvOutActionArgs,
        pvRetVal,
      );

  Pointer<Utf16> get ServiceTypeIdentifier {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int AddCallback(
    Pointer<COMObject> pUnkCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkCallback,
          )>()(
        ptr.ref.lpVtbl,
        pUnkCallback,
      );

  Pointer<Utf16> get Id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastTransportStatus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plValue,
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
const CLSID_UPnPService = '{C624BA95-FBCB-4409-8C03-8CCEEC533EF1}';

/// {@category com}
class UPnPService extends IUPnPService {
  UPnPService(Pointer<COMObject> ptr) : super(ptr);

  factory UPnPService.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UPnPService);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUPnPService);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UPnPService(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
