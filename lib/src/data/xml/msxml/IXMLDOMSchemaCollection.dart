// IXMLDOMSchemaCollection.dart

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
import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../data/xml/msxml/IXMLDOMSchemaCollection.dart';

/// @nodoc
const IID_IXMLDOMSchemaCollection = '{373984C8-B845-449B-91E7-45AC83036ADE}';

/// {@category Interface}
/// {@category com}
class IXMLDOMSchemaCollection extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IXMLDOMSchemaCollection(Pointer<COMObject> ptr) : super(ptr);

  int add(
    Pointer<Utf16> namespaceURI,
    VARIANT $var,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            VARIANT $var,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            VARIANT $var,
          )>()(
        ptr.ref.lpVtbl,
        namespaceURI,
        $var,
      );

  int get(
    Pointer<Utf16> namespaceURI,
    Pointer<Pointer<COMObject>> schemaNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> schemaNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> schemaNode,
          )>()(
        ptr.ref.lpVtbl,
        namespaceURI,
        schemaNode,
      );

  int remove(
    Pointer<Utf16> namespaceURI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> namespaceURI,
          )>()(
        ptr.ref.lpVtbl,
        namespaceURI,
      );

  int get length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> length,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_namespaceURI(
    int index,
    Pointer<Pointer<Utf16>> length,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 index,
            Pointer<Pointer<Utf16>> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<Utf16>> length,
          )>()(
        ptr.ref.lpVtbl,
        index,
        length,
      );

  int addCollection(
    Pointer<COMObject> otherCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> otherCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> otherCollection,
          )>()(
        ptr.ref.lpVtbl,
        otherCollection,
      );

  Pointer<COMObject> get newEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
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
}
