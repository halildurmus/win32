// IFaxAccountOutgoingArchive.dart

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
import '../../devices/fax/IFaxOutgoingMessageIterator.dart';
import '../../devices/fax/IFaxOutgoingMessage.dart';

/// @nodoc
const IID_IFaxAccountOutgoingArchive = '{5463076D-EC14-491F-926E-B3CEDA5E5662}';

/// {@category Interface}
/// {@category com}
class IFaxAccountOutgoingArchive extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFaxAccountOutgoingArchive(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> pFaxOutgoingMessageIterator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPrefetchSize,
            Pointer<Pointer<COMObject>> pFaxOutgoingMessageIterator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPrefetchSize,
            Pointer<Pointer<COMObject>> pFaxOutgoingMessageIterator,
          )>()(
        ptr.ref.lpVtbl,
        lPrefetchSize,
        pFaxOutgoingMessageIterator,
      );

  int GetMessage(
    Pointer<Utf16> bstrMessageId,
    Pointer<Pointer<COMObject>> pFaxOutgoingMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMessageId,
            Pointer<Pointer<COMObject>> pFaxOutgoingMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMessageId,
            Pointer<Pointer<COMObject>> pFaxOutgoingMessage,
          )>()(
        ptr.ref.lpVtbl,
        bstrMessageId,
        pFaxOutgoingMessage,
      );
}

/// @nodoc
const CLSID_FaxAccountOutgoingArchive =
    '{851E7AF5-433A-4739-A2DF-AD245C2CB98E}';

/// {@category com}
class FaxAccountOutgoingArchive extends IFaxAccountOutgoingArchive {
  FaxAccountOutgoingArchive(Pointer<COMObject> ptr) : super(ptr);

  factory FaxAccountOutgoingArchive.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxAccountOutgoingArchive);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxAccountOutgoingArchive);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxAccountOutgoingArchive(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
