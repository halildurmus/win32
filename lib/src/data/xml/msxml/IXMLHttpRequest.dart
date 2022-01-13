// IXMLHTTPRequest.dart

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
const IID_IXMLHTTPRequest = '{ED8C108D-4349-11D2-91A4-00C04F7969E8}';

/// {@category Interface}
/// {@category com}
class IXMLHTTPRequest extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  IXMLHTTPRequest(Pointer<COMObject> ptr) : super(ptr);

  int open(
    Pointer<Utf16> bstrMethod,
    Pointer<Utf16> bstrUrl,
    VARIANT varAsync,
    VARIANT bstrUser,
    VARIANT bstrPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMethod,
            Pointer<Utf16> bstrUrl,
            VARIANT varAsync,
            VARIANT bstrUser,
            VARIANT bstrPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMethod,
            Pointer<Utf16> bstrUrl,
            VARIANT varAsync,
            VARIANT bstrUser,
            VARIANT bstrPassword,
          )>()(
        ptr.ref.lpVtbl,
        bstrMethod,
        bstrUrl,
        varAsync,
        bstrUser,
        bstrPassword,
      );

  int setRequestHeader(
    Pointer<Utf16> bstrHeader,
    Pointer<Utf16> bstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrHeader,
            Pointer<Utf16> bstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrHeader,
            Pointer<Utf16> bstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrHeader,
        bstrValue,
      );

  int getResponseHeader(
    Pointer<Utf16> bstrHeader,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrHeader,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrHeader,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrHeader,
        pbstrValue,
      );

  int getAllResponseHeaders(
    Pointer<Pointer<Utf16>> pbstrHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrHeaders,
          )>()(
        ptr.ref.lpVtbl,
        pbstrHeaders,
      );

  int send(
    VARIANT varBody,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varBody,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varBody,
          )>()(
        ptr.ref.lpVtbl,
        varBody,
      );

  int abort() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plStatus,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get statusText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrStatus,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get responseXML {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBody,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBody,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get responseText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBody,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBody,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get responseBody {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarBody,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarBody,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get responseStream {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarBody,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarBody,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get readyState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set onreadystatechange(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> pReadyStateSink,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> pReadyStateSink,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_XMLHTTPRequest = '{ED8C108E-4349-11D2-91A4-00C04F7969E8}';

/// {@category com}
class XMLHTTPRequest extends IXMLHTTPRequest {
  XMLHTTPRequest(Pointer<COMObject> ptr) : super(ptr);

  factory XMLHTTPRequest.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XMLHTTPRequest);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXMLHTTPRequest);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XMLHTTPRequest(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
