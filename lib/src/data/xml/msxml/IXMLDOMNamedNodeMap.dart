// IXMLDOMNamedNodeMap.dart

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
import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IXMLDOMNamedNodeMap = '{2933BF83-7B36-11D2-B20E-00C04F983E60}';

/// {@category Interface}
/// {@category com}
class IXMLDOMNamedNodeMap extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  IXMLDOMNamedNodeMap(Pointer<COMObject> ptr) : super(ptr);

  int getNamedItem(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> namedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> namedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> namedItem,
          )>()(
        ptr.ref.lpVtbl,
        name,
        namedItem,
      );

  int setNamedItem(
    Pointer<COMObject> newItem,
    Pointer<Pointer<COMObject>> nameItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newItem,
            Pointer<Pointer<COMObject>> nameItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newItem,
            Pointer<Pointer<COMObject>> nameItem,
          )>()(
        ptr.ref.lpVtbl,
        newItem,
        nameItem,
      );

  int removeNamedItem(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> namedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> namedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> namedItem,
          )>()(
        ptr.ref.lpVtbl,
        name,
        namedItem,
      );

  int get_item(
    int index,
    Pointer<Pointer<COMObject>> listItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 index,
            Pointer<Pointer<COMObject>> listItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> listItem,
          )>()(
        ptr.ref.lpVtbl,
        index,
        listItem,
      );

  int get length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> listLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> listLength,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getQualifiedItem(
    Pointer<Utf16> baseName,
    Pointer<Utf16> namespaceURI,
    Pointer<Pointer<COMObject>> qualifiedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> baseName,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> qualifiedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> baseName,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> qualifiedItem,
          )>()(
        ptr.ref.lpVtbl,
        baseName,
        namespaceURI,
        qualifiedItem,
      );

  int removeQualifiedItem(
    Pointer<Utf16> baseName,
    Pointer<Utf16> namespaceURI,
    Pointer<Pointer<COMObject>> qualifiedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> baseName,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> qualifiedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> baseName,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> qualifiedItem,
          )>()(
        ptr.ref.lpVtbl,
        baseName,
        namespaceURI,
        qualifiedItem,
      );

  int nextNode(
    Pointer<Pointer<COMObject>> nextItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> nextItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> nextItem,
          )>()(
        ptr.ref.lpVtbl,
        nextItem,
      );

  int reset() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  Pointer<COMObject> get newEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
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
