// IPrintSchemaOption.dart

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

import '../../graphics/printing/IPrintSchemaDisplayableElement.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IPrintSchemaOption = '{66BB2F51-5844-4997-8D70-4B7CC221CF92}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaOption extends IPrintSchemaDisplayableElement {
  // vtable begins at 11, is 3 entries long.
  IPrintSchemaOption(Pointer<COMObject> ptr) : super(ptr);

  int get Selected {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsSelected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsSelected,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Constrained {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSetting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSetting,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetPropertyValue(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrNamespaceUri,
    Pointer<Pointer<COMObject>> ppXmlValueNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppXmlValueNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrNamespaceUri,
            Pointer<Pointer<COMObject>> ppXmlValueNode,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrNamespaceUri,
        ppXmlValueNode,
      );
}
