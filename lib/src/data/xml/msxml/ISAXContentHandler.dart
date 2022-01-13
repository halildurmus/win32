// ISAXContentHandler.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../data/xml/msxml/ISAXLocator.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/ISAXAttributes.dart';

/// @nodoc
const IID_ISAXContentHandler = '{1545CDFA-9E4E-4497-A8A4-2BF7D0112C44}';

/// {@category Interface}
/// {@category com}
class ISAXContentHandler extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  ISAXContentHandler(Pointer<COMObject> ptr) : super(ptr);

  int putDocumentLocator(
    Pointer<COMObject> pLocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLocator,
          )>()(
        ptr.ref.lpVtbl,
        pLocator,
      );

  int startDocument() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
          .elementAt(5)
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
    Pointer<Utf16> pwchPrefix,
    int cchPrefix,
    Pointer<Utf16> pwchUri,
    int cchUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchPrefix,
            Int32 cchPrefix,
            Pointer<Utf16> pwchUri,
            Int32 cchUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchPrefix,
            int cchPrefix,
            Pointer<Utf16> pwchUri,
            int cchUri,
          )>()(
        ptr.ref.lpVtbl,
        pwchPrefix,
        cchPrefix,
        pwchUri,
        cchUri,
      );

  int endPrefixMapping(
    Pointer<Utf16> pwchPrefix,
    int cchPrefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchPrefix,
            Int32 cchPrefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchPrefix,
            int cchPrefix,
          )>()(
        ptr.ref.lpVtbl,
        pwchPrefix,
        cchPrefix,
      );

  int startElement(
    Pointer<Utf16> pwchNamespaceUri,
    int cchNamespaceUri,
    Pointer<Utf16> pwchLocalName,
    int cchLocalName,
    Pointer<Utf16> pwchQName,
    int cchQName,
    Pointer<COMObject> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchNamespaceUri,
            Int32 cchNamespaceUri,
            Pointer<Utf16> pwchLocalName,
            Int32 cchLocalName,
            Pointer<Utf16> pwchQName,
            Int32 cchQName,
            Pointer<COMObject> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchNamespaceUri,
            int cchNamespaceUri,
            Pointer<Utf16> pwchLocalName,
            int cchLocalName,
            Pointer<Utf16> pwchQName,
            int cchQName,
            Pointer<COMObject> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pwchNamespaceUri,
        cchNamespaceUri,
        pwchLocalName,
        cchLocalName,
        pwchQName,
        cchQName,
        pAttributes,
      );

  int endElement(
    Pointer<Utf16> pwchNamespaceUri,
    int cchNamespaceUri,
    Pointer<Utf16> pwchLocalName,
    int cchLocalName,
    Pointer<Utf16> pwchQName,
    int cchQName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchNamespaceUri,
            Int32 cchNamespaceUri,
            Pointer<Utf16> pwchLocalName,
            Int32 cchLocalName,
            Pointer<Utf16> pwchQName,
            Int32 cchQName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchNamespaceUri,
            int cchNamespaceUri,
            Pointer<Utf16> pwchLocalName,
            int cchLocalName,
            Pointer<Utf16> pwchQName,
            int cchQName,
          )>()(
        ptr.ref.lpVtbl,
        pwchNamespaceUri,
        cchNamespaceUri,
        pwchLocalName,
        cchLocalName,
        pwchQName,
        cchQName,
      );

  int characters(
    Pointer<Utf16> pwchChars,
    int cchChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchChars,
            Int32 cchChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchChars,
            int cchChars,
          )>()(
        ptr.ref.lpVtbl,
        pwchChars,
        cchChars,
      );

  int ignorableWhitespace(
    Pointer<Utf16> pwchChars,
    int cchChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchChars,
            Int32 cchChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchChars,
            int cchChars,
          )>()(
        ptr.ref.lpVtbl,
        pwchChars,
        cchChars,
      );

  int processingInstruction(
    Pointer<Utf16> pwchTarget,
    int cchTarget,
    Pointer<Utf16> pwchData,
    int cchData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchTarget,
            Int32 cchTarget,
            Pointer<Utf16> pwchData,
            Int32 cchData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchTarget,
            int cchTarget,
            Pointer<Utf16> pwchData,
            int cchData,
          )>()(
        ptr.ref.lpVtbl,
        pwchTarget,
        cchTarget,
        pwchData,
        cchData,
      );

  int skippedEntity(
    Pointer<Utf16> pwchName,
    int cchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Int32 cchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            int cchName,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        cchName,
      );
}
