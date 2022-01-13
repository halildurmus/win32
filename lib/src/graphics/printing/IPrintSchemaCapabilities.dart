// IPrintSchemaCapabilities.dart

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
import '../../graphics/printing/IPrintSchemaPageImageableSize.dart';
import '../../graphics/printing/IPrintSchemaOption.dart';
import '../../graphics/printing/IPrintSchemaOptionCollection.dart';

/// @nodoc
const IID_IPrintSchemaCapabilities = '{5A577640-501D-4927-BCD0-5EF57A7ED175}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaCapabilities extends IPrintSchemaElement {
  // vtable begins at 10, is 7 entries long.
  IPrintSchemaCapabilities(Pointer<COMObject> ptr) : super(ptr);

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

  Pointer<COMObject> get PageImageableSize {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPageImageableSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPageImageableSize,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get JobCopiesAllDocumentsMinValue {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulJobCopiesAllDocumentsMinValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulJobCopiesAllDocumentsMinValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get JobCopiesAllDocumentsMaxValue {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulJobCopiesAllDocumentsMaxValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulJobCopiesAllDocumentsMaxValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetSelectedOptionInPrintTicket(
    Pointer<COMObject> pFeature,
    Pointer<Pointer<COMObject>> ppOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFeature,
            Pointer<Pointer<COMObject>> ppOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFeature,
            Pointer<Pointer<COMObject>> ppOption,
          )>()(
        ptr.ref.lpVtbl,
        pFeature,
        ppOption,
      );

  int GetOptions(
    Pointer<COMObject> pFeature,
    Pointer<Pointer<COMObject>> ppOptionCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFeature,
            Pointer<Pointer<COMObject>> ppOptionCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFeature,
            Pointer<Pointer<COMObject>> ppOptionCollection,
          )>()(
        ptr.ref.lpVtbl,
        pFeature,
        ppOptionCollection,
      );
}
