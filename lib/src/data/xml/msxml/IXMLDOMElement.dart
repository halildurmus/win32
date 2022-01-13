// IXMLDOMElement.dart

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

import '../../../data/xml/msxml/IXMLDOMNode.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../data/xml/msxml/IXMLDOMAttribute.dart';
import '../../../data/xml/msxml/IXMLDOMNodeList.dart';

/// @nodoc
const IID_IXMLDOMElement = '{2933BF86-7B36-11D2-B20E-00C04F983E60}';

/// {@category Interface}
/// {@category com}
class IXMLDOMElement extends IXMLDOMNode {
  // vtable begins at 43, is 9 entries long.
  IXMLDOMElement(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get tagName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> tagName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> tagName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getAttribute(
    Pointer<Utf16> name,
    Pointer<VARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<VARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<VARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        name,
        value,
      );

  int setAttribute(
    Pointer<Utf16> name,
    VARIANT value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            VARIANT value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            VARIANT value,
          )>()(
        ptr.ref.lpVtbl,
        name,
        value,
      );

  int removeAttribute(
    Pointer<Utf16> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int getAttributeNode(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> attributeNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> attributeNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> attributeNode,
          )>()(
        ptr.ref.lpVtbl,
        name,
        attributeNode,
      );

  int setAttributeNode(
    Pointer<COMObject> DOMAttribute,
    Pointer<Pointer<COMObject>> attributeNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DOMAttribute,
            Pointer<Pointer<COMObject>> attributeNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DOMAttribute,
            Pointer<Pointer<COMObject>> attributeNode,
          )>()(
        ptr.ref.lpVtbl,
        DOMAttribute,
        attributeNode,
      );

  int removeAttributeNode(
    Pointer<COMObject> DOMAttribute,
    Pointer<Pointer<COMObject>> attributeNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DOMAttribute,
            Pointer<Pointer<COMObject>> attributeNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DOMAttribute,
            Pointer<Pointer<COMObject>> attributeNode,
          )>()(
        ptr.ref.lpVtbl,
        DOMAttribute,
        attributeNode,
      );

  int getElementsByTagName(
    Pointer<Utf16> tagName,
    Pointer<Pointer<COMObject>> resultList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> tagName,
            Pointer<Pointer<COMObject>> resultList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> tagName,
            Pointer<Pointer<COMObject>> resultList,
          )>()(
        ptr.ref.lpVtbl,
        tagName,
        resultList,
      );

  int normalize() => ptr.ref.lpVtbl.value
          .elementAt(51)
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
}
