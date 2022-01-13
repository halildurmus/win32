// IXMLDOMDocument.dart

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
import '../../../data/xml/msxml/IXMLDOMDocumentType.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/IXMLDOMImplementation.dart';
import '../../../data/xml/msxml/IXMLDOMElement.dart';
import '../../../data/xml/msxml/IXMLDOMDocumentFragment.dart';
import '../../../data/xml/msxml/IXMLDOMText.dart';
import '../../../data/xml/msxml/IXMLDOMComment.dart';
import '../../../data/xml/msxml/IXMLDOMCDATASection.dart';
import '../../../data/xml/msxml/IXMLDOMProcessingInstruction.dart';
import '../../../data/xml/msxml/IXMLDOMAttribute.dart';
import '../../../data/xml/msxml/IXMLDOMEntityReference.dart';
import '../../../data/xml/msxml/IXMLDOMNodeList.dart';
import '../../../specialTypes.dart';
import '../../../data/xml/msxml/IXMLDOMParseError.dart';

/// @nodoc
const IID_IXMLDOMDocument = '{2933BF81-7B36-11D2-B20E-00C04F983E60}';

/// {@category Interface}
/// {@category com}
class IXMLDOMDocument extends IXMLDOMNode {
  // vtable begins at 43, is 33 entries long.
  IXMLDOMDocument(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get doctype {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get implementation {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> impl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> impl,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get documentElement {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> DOMElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> DOMElement,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_documentElement(
    Pointer<COMObject> DOMElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DOMElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DOMElement,
          )>()(
        ptr.ref.lpVtbl,
        DOMElement,
      );

  int createElement(
    Pointer<Utf16> tagName,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> tagName,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> tagName,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        tagName,
        element,
      );

  int createDocumentFragment(
    Pointer<Pointer<COMObject>> docFrag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> docFrag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> docFrag,
          )>()(
        ptr.ref.lpVtbl,
        docFrag,
      );

  int createTextNode(
    Pointer<Utf16> data,
    Pointer<Pointer<COMObject>> text,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> text,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> text,
          )>()(
        ptr.ref.lpVtbl,
        data,
        text,
      );

  int createComment(
    Pointer<Utf16> data,
    Pointer<Pointer<COMObject>> comment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> comment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> comment,
          )>()(
        ptr.ref.lpVtbl,
        data,
        comment,
      );

  int createCDATASection(
    Pointer<Utf16> data,
    Pointer<Pointer<COMObject>> cdata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> cdata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> cdata,
          )>()(
        ptr.ref.lpVtbl,
        data,
        cdata,
      );

  int createProcessingInstruction(
    Pointer<Utf16> target,
    Pointer<Utf16> data,
    Pointer<Pointer<COMObject>> pi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> target,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> pi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> target,
            Pointer<Utf16> data,
            Pointer<Pointer<COMObject>> pi,
          )>()(
        ptr.ref.lpVtbl,
        target,
        data,
        pi,
      );

  int createAttribute(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> attribute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> attribute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> attribute,
          )>()(
        ptr.ref.lpVtbl,
        name,
        attribute,
      );

  int createEntityReference(
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> entityRef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> entityRef,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> entityRef,
          )>()(
        ptr.ref.lpVtbl,
        name,
        entityRef,
      );

  int getElementsByTagName(
    Pointer<Utf16> tagName,
    Pointer<Pointer<COMObject>> resultList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
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

  int createNode(
    VARIANT Type,
    Pointer<Utf16> name,
    Pointer<Utf16> namespaceURI,
    Pointer<Pointer<COMObject>> node,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Type,
            Pointer<Utf16> name,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> node,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Type,
            Pointer<Utf16> name,
            Pointer<Utf16> namespaceURI,
            Pointer<Pointer<COMObject>> node,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        name,
        namespaceURI,
        node,
      );

  int nodeFromID(
    Pointer<Utf16> idString,
    Pointer<Pointer<COMObject>> node,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> idString,
            Pointer<Pointer<COMObject>> node,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> idString,
            Pointer<Pointer<COMObject>> node,
          )>()(
        ptr.ref.lpVtbl,
        idString,
        node,
      );

  int load(
    VARIANT xmlSource,
    Pointer<Int16> isSuccessful,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT xmlSource,
            Pointer<Int16> isSuccessful,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT xmlSource,
            Pointer<Int16> isSuccessful,
          )>()(
        ptr.ref.lpVtbl,
        xmlSource,
        isSuccessful,
      );

  int get readyState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get parseError {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> errorObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> errorObj,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get url {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> urlString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> urlString,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get async {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> isAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> isAsync,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set async(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(63)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 isAsync,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int isAsync,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int abort() => ptr.ref.lpVtbl.value
          .elementAt(64)
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

  int loadXML(
    Pointer<Utf16> bstrXML,
    Pointer<Int16> isSuccessful,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXML,
            Pointer<Int16> isSuccessful,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXML,
            Pointer<Int16> isSuccessful,
          )>()(
        ptr.ref.lpVtbl,
        bstrXML,
        isSuccessful,
      );

  int save(
    VARIANT destination,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT destination,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT destination,
          )>()(
        ptr.ref.lpVtbl,
        destination,
      );

  int get validateOnParse {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> isValidating,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> isValidating,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set validateOnParse(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(68)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 isValidating,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int isValidating,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get resolveExternals {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> isResolving,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> isResolving,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set resolveExternals(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(70)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 isResolving,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int isResolving,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get preserveWhiteSpace {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> isPreserving,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> isPreserving,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set preserveWhiteSpace(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(72)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 isPreserving,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int isPreserving,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set onreadystatechange(VARIANT value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(73)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          VARIANT readystatechangeSink,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          VARIANT readystatechangeSink,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set ondataavailable(VARIANT value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(74)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          VARIANT ondataavailableSink,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          VARIANT ondataavailableSink,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set ontransformnode(VARIANT value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(75)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          VARIANT ontransformnodeSink,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          VARIANT ontransformnodeSink,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
