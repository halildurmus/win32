// IFaxRecipients.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxRecipient.dart';

/// @nodoc
const IID_IFaxRecipients = '{B9C9DE5A-894E-4492-9FA3-08C627C11D5D}';

/// {@category Interface}
/// {@category com}
class IFaxRecipients extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFaxRecipients(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    int lIndex,
    Pointer<Pointer<COMObject>> ppFaxRecipient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<COMObject>> ppFaxRecipient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<COMObject>> ppFaxRecipient,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        ppFaxRecipient,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Add(
    Pointer<Utf16> bstrFaxNumber,
    Pointer<Utf16> bstrRecipientName,
    Pointer<Pointer<COMObject>> ppFaxRecipient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFaxNumber,
            Pointer<Utf16> bstrRecipientName,
            Pointer<Pointer<COMObject>> ppFaxRecipient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFaxNumber,
            Pointer<Utf16> bstrRecipientName,
            Pointer<Pointer<COMObject>> ppFaxRecipient,
          )>()(
        ptr.ref.lpVtbl,
        bstrFaxNumber,
        bstrRecipientName,
        ppFaxRecipient,
      );

  int Remove(
    int lIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
      );
}

/// @nodoc
const CLSID_FaxRecipients = '{EA9BDF53-10A9-4D4F-A067-63C8F84F01B0}';

/// {@category com}
class FaxRecipients extends IFaxRecipients {
  FaxRecipients(Pointer<COMObject> ptr) : super(ptr);

  factory FaxRecipients.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxRecipients);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxRecipients);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxRecipients(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
