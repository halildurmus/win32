// IFaxLoggingOptions.dart

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
import '../../devices/fax/IFaxEventLogging.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxActivityLogging.dart';

/// @nodoc
const IID_IFaxLoggingOptions = '{34E64FB9-6B31-4D32-8B27-D286C0C33606}';

/// {@category Interface}
/// {@category com}
class IFaxLoggingOptions extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IFaxLoggingOptions(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get EventLogging {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxEventLogging,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxEventLogging,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ActivityLogging {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxActivityLogging,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxActivityLogging,
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
const CLSID_FaxLoggingOptions = '{1BF9EEA6-ECE0-4785-A18B-DE56E9EEF96A}';

/// {@category com}
class FaxLoggingOptions extends IFaxLoggingOptions {
  FaxLoggingOptions(Pointer<COMObject> ptr) : super(ptr);

  factory FaxLoggingOptions.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxLoggingOptions);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxLoggingOptions);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxLoggingOptions(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
