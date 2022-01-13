// IPrinterQueue.dart

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
import '../../graphics/printing/IPrinterPropertyBag.dart';

/// @nodoc
const IID_IPrinterQueue = '{3580A828-07FE-4B94-AC1A-757D9D2D3056}';

/// {@category Interface}
/// {@category com}
class IPrinterQueue extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IPrinterQueue(Pointer<COMObject> ptr) : super(ptr);

  int get $Handle {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phPrinter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phPrinter,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SendBidiQuery(
    Pointer<Utf16> bstrBidiQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrBidiQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrBidiQuery,
          )>()(
        ptr.ref.lpVtbl,
        bstrBidiQuery,
      );

  int GetProperties(
    Pointer<Pointer<COMObject>> ppPropertyBag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyBag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyBag,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertyBag,
      );
}

/// @nodoc
const CLSID_PrinterQueue = '{EB54C230-798C-4C9E-B461-29FAD04039B1}';

/// {@category com}
class PrinterQueue extends IPrinterQueue {
  PrinterQueue(Pointer<COMObject> ptr) : super(ptr);

  factory PrinterQueue.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PrinterQueue);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPrinterQueue);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PrinterQueue(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
