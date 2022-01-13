// IFaxAccountIncomingArchive.dart

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
import '../../devices/fax/IFaxIncomingMessageIterator.dart';
import '../../devices/fax/IFaxIncomingMessage.dart';

/// @nodoc
const IID_IFaxAccountIncomingArchive = '{A8A5B6EF-E0D6-4AEE-955C-91625BEC9DB4}';

/// {@category Interface}
/// {@category com}
class IFaxAccountIncomingArchive extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFaxAccountIncomingArchive(Pointer<COMObject> ptr) : super(ptr);

  int get SizeLow {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plSizeLow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plSizeLow,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get SizeHigh {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plSizeHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plSizeHigh,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Refresh() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetMessages(
    int lPrefetchSize,
    Pointer<Pointer<COMObject>> pFaxIncomingMessageIterator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPrefetchSize,
            Pointer<Pointer<COMObject>> pFaxIncomingMessageIterator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPrefetchSize,
            Pointer<Pointer<COMObject>> pFaxIncomingMessageIterator,
          )>()(
        ptr.ref.lpVtbl,
        lPrefetchSize,
        pFaxIncomingMessageIterator,
      );

  int GetMessage(
    Pointer<Utf16> bstrMessageId,
    Pointer<Pointer<COMObject>> pFaxIncomingMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMessageId,
            Pointer<Pointer<COMObject>> pFaxIncomingMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMessageId,
            Pointer<Pointer<COMObject>> pFaxIncomingMessage,
          )>()(
        ptr.ref.lpVtbl,
        bstrMessageId,
        pFaxIncomingMessage,
      );
}

/// @nodoc
const CLSID_FaxAccountIncomingArchive =
    '{14B33DB5-4C40-4ECF-9EF8-A360CBE809ED}';

/// {@category com}
class FaxAccountIncomingArchive extends IFaxAccountIncomingArchive {
  FaxAccountIncomingArchive(Pointer<COMObject> ptr) : super(ptr);

  factory FaxAccountIncomingArchive.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxAccountIncomingArchive);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxAccountIncomingArchive);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxAccountIncomingArchive(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
