// IVBSAXContentHandler.dart

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
import '../../../data/xml/msxml/IVBSAXLocator.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/IVBSAXAttributes.dart';

/// @nodoc
const IID_IVBSAXContentHandler = '{2ED7290A-4DD5-4B46-BB26-4E4155E77FAA}';

/// {@category Interface}
/// {@category com}
class IVBSAXContentHandler extends IDispatch {
  // vtable begins at 7, is 11 entries long.
  IVBSAXContentHandler(Pointer<COMObject> ptr) : super(ptr);

  int putref_documentLocator(
    Pointer<COMObject> oLocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> oLocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> oLocator,
          )>()(
        ptr.ref.lpVtbl,
        oLocator,
      );

  int startDocument() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int endDocument() => ptr.ref.lpVtbl.value
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

  int startPrefixMapping(
    Pointer<Pointer<Utf16>> strPrefix,
    Pointer<Pointer<Utf16>> strURI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strPrefix,
            Pointer<Pointer<Utf16>> strURI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strPrefix,
            Pointer<Pointer<Utf16>> strURI,
          )>()(
        ptr.ref.lpVtbl,
        strPrefix,
        strURI,
      );

  int endPrefixMapping(
    Pointer<Pointer<Utf16>> strPrefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strPrefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strPrefix,
          )>()(
        ptr.ref.lpVtbl,
        strPrefix,
      );

  int startElement(
    Pointer<Pointer<Utf16>> strNamespaceURI,
    Pointer<Pointer<Utf16>> strLocalName,
    Pointer<Pointer<Utf16>> strQName,
    Pointer<COMObject> oAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strNamespaceURI,
            Pointer<Pointer<Utf16>> strLocalName,
            Pointer<Pointer<Utf16>> strQName,
            Pointer<COMObject> oAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strNamespaceURI,
            Pointer<Pointer<Utf16>> strLocalName,
            Pointer<Pointer<Utf16>> strQName,
            Pointer<COMObject> oAttributes,
          )>()(
        ptr.ref.lpVtbl,
        strNamespaceURI,
        strLocalName,
        strQName,
        oAttributes,
      );

  int endElement(
    Pointer<Pointer<Utf16>> strNamespaceURI,
    Pointer<Pointer<Utf16>> strLocalName,
    Pointer<Pointer<Utf16>> strQName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strNamespaceURI,
            Pointer<Pointer<Utf16>> strLocalName,
            Pointer<Pointer<Utf16>> strQName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strNamespaceURI,
            Pointer<Pointer<Utf16>> strLocalName,
            Pointer<Pointer<Utf16>> strQName,
          )>()(
        ptr.ref.lpVtbl,
        strNamespaceURI,
        strLocalName,
        strQName,
      );

  int characters(
    Pointer<Pointer<Utf16>> strChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strChars,
          )>()(
        ptr.ref.lpVtbl,
        strChars,
      );

  int ignorableWhitespace(
    Pointer<Pointer<Utf16>> strChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strChars,
          )>()(
        ptr.ref.lpVtbl,
        strChars,
      );

  int processingInstruction(
    Pointer<Pointer<Utf16>> strTarget,
    Pointer<Pointer<Utf16>> strData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strTarget,
            Pointer<Pointer<Utf16>> strData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strTarget,
            Pointer<Pointer<Utf16>> strData,
          )>()(
        ptr.ref.lpVtbl,
        strTarget,
        strData,
      );

  int skippedEntity(
    Pointer<Pointer<Utf16>> strName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>()(
        ptr.ref.lpVtbl,
        strName,
      );
}
