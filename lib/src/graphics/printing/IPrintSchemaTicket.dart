// IPrintSchemaTicket.dart

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

import '../../graphics/printing/IPrintSchemaElement.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/IPrintSchemaFeature.dart';
import '../../graphics/printing/IPrintSchemaAsyncOperation.dart';
import '../../graphics/printing/IPrintSchemaTicket.dart';
import '../../graphics/printing/IPrintSchemaCapabilities.dart';

/// @nodoc
const IID_IPrintSchemaTicket = '{E480B861-4708-4E6D-A5B4-A2B4EEB9BAA4}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaTicket extends IPrintSchemaElement {
  // vtable begins at 10, is 8 entries long.
  IPrintSchemaTicket(Pointer<COMObject> ptr) : super(ptr);

  int GetFeatureByKeyName(
    Pointer<Utf16> bstrKeyName,
    Pointer<Pointer<COMObject>> ppFeature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrKeyName,
            Pointer<Pointer<COMObject>> ppFeature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrKeyName,
            Pointer<Pointer<COMObject>> ppFeature,
          )>()(
        ptr.ref.lpVtbl,
        bstrKeyName,
        ppFeature,
      );

  int GetFeature(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrNamespaceUri,
    Pointer<Pointer<COMObject>> ppFeature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppFeature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppFeature,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrNamespaceUri,
        ppFeature,
      );

  int ValidateAsync(
    Pointer<Pointer<COMObject>> ppAsyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        ppAsyncOperation,
      );

  int CommitAsync(
    Pointer<COMObject> pPrintTicketCommit,
    Pointer<Pointer<COMObject>> ppAsyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPrintTicketCommit,
            Pointer<Pointer<COMObject>> ppAsyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPrintTicketCommit,
            Pointer<Pointer<COMObject>> ppAsyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        pPrintTicketCommit,
        ppAsyncOperation,
      );

  int NotifyXmlChanged() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetCapabilities(
    Pointer<Pointer<COMObject>> ppCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        ppCapabilities,
      );

  int get JobCopiesAllDocuments {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulJobCopiesAllDocuments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulJobCopiesAllDocuments,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set JobCopiesAllDocuments(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulJobCopiesAllDocuments,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulJobCopiesAllDocuments,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
