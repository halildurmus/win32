// IXmlWriter.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/xmllite/IXmlReader.dart';
import '../../../data/xml/xmllite/structs.g.dart';

/// @nodoc
const IID_IXmlWriter = '{7279FC88-709D-4095-B63D-69FE4B0D9030}';

/// {@category Interface}
/// {@category com}
class IXmlWriter extends IUnknown {
  // vtable begins at 3, is 29 entries long.
  IXmlWriter(Pointer<COMObject> ptr) : super(ptr);

  int SetOutput(
    Pointer<COMObject> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        pOutput,
      );

  int GetProperty(
    int nProperty,
    Pointer<IntPtr> ppValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nProperty,
            Pointer<IntPtr> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nProperty,
            Pointer<IntPtr> ppValue,
          )>()(
        ptr.ref.lpVtbl,
        nProperty,
        ppValue,
      );

  int SetProperty(
    int nProperty,
    int pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nProperty,
            IntPtr pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nProperty,
            int pValue,
          )>()(
        ptr.ref.lpVtbl,
        nProperty,
        pValue,
      );

  int WriteAttributes(
    Pointer<COMObject> pReader,
    int fWriteDefaultAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pReader,
            Int32 fWriteDefaultAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pReader,
            int fWriteDefaultAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pReader,
        fWriteDefaultAttributes,
      );

  int WriteAttributeString(
    Pointer<Utf16> pwszPrefix,
    Pointer<Utf16> pwszLocalName,
    Pointer<Utf16> pwszNamespaceUri,
    Pointer<Utf16> pwszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPrefix,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
            Pointer<Utf16> pwszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPrefix,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
            Pointer<Utf16> pwszValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszPrefix,
        pwszLocalName,
        pwszNamespaceUri,
        pwszValue,
      );

  int WriteCData(
    Pointer<Utf16> pwszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszText,
          )>()(
        ptr.ref.lpVtbl,
        pwszText,
      );

  int WriteCharEntity(
    int wch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wch,
          )>()(
        ptr.ref.lpVtbl,
        wch,
      );

  int WriteChars(
    Pointer<Utf16> pwch,
    int cwch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwch,
            Uint32 cwch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwch,
            int cwch,
          )>()(
        ptr.ref.lpVtbl,
        pwch,
        cwch,
      );

  int WriteComment(
    Pointer<Utf16> pwszComment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszComment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszComment,
          )>()(
        ptr.ref.lpVtbl,
        pwszComment,
      );

  int WriteDocType(
    Pointer<Utf16> pwszName,
    Pointer<Utf16> pwszPublicId,
    Pointer<Utf16> pwszSystemId,
    Pointer<Utf16> pwszSubset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszPublicId,
            Pointer<Utf16> pwszSystemId,
            Pointer<Utf16> pwszSubset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszPublicId,
            Pointer<Utf16> pwszSystemId,
            Pointer<Utf16> pwszSubset,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pwszPublicId,
        pwszSystemId,
        pwszSubset,
      );

  int WriteElementString(
    Pointer<Utf16> pwszPrefix,
    Pointer<Utf16> pwszLocalName,
    Pointer<Utf16> pwszNamespaceUri,
    Pointer<Utf16> pwszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPrefix,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
            Pointer<Utf16> pwszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPrefix,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
            Pointer<Utf16> pwszValue,
          )>()(
        ptr.ref.lpVtbl,
        pwszPrefix,
        pwszLocalName,
        pwszNamespaceUri,
        pwszValue,
      );

  int WriteEndDocument() => ptr.ref.lpVtbl.value
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

  int WriteEndElement() => ptr.ref.lpVtbl.value
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

  int WriteEntityRef(
    Pointer<Utf16> pwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
      );

  int WriteFullEndElement() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int WriteName(
    Pointer<Utf16> pwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
      );

  int WriteNmToken(
    Pointer<Utf16> pwszNmToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszNmToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszNmToken,
          )>()(
        ptr.ref.lpVtbl,
        pwszNmToken,
      );

  int WriteNode(
    Pointer<COMObject> pReader,
    int fWriteDefaultAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pReader,
            Int32 fWriteDefaultAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pReader,
            int fWriteDefaultAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pReader,
        fWriteDefaultAttributes,
      );

  int WriteNodeShallow(
    Pointer<COMObject> pReader,
    int fWriteDefaultAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pReader,
            Int32 fWriteDefaultAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pReader,
            int fWriteDefaultAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pReader,
        fWriteDefaultAttributes,
      );

  int WriteProcessingInstruction(
    Pointer<Utf16> pwszName,
    Pointer<Utf16> pwszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszText,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pwszText,
      );

  int WriteQualifiedName(
    Pointer<Utf16> pwszLocalName,
    Pointer<Utf16> pwszNamespaceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
          )>()(
        ptr.ref.lpVtbl,
        pwszLocalName,
        pwszNamespaceUri,
      );

  int WriteRaw(
    Pointer<Utf16> pwszData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszData,
          )>()(
        ptr.ref.lpVtbl,
        pwszData,
      );

  int WriteRawChars(
    Pointer<Utf16> pwch,
    int cwch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwch,
            Uint32 cwch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwch,
            int cwch,
          )>()(
        ptr.ref.lpVtbl,
        pwch,
        cwch,
      );

  int WriteStartDocument(
    int standalone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 standalone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int standalone,
          )>()(
        ptr.ref.lpVtbl,
        standalone,
      );

  int WriteStartElement(
    Pointer<Utf16> pwszPrefix,
    Pointer<Utf16> pwszLocalName,
    Pointer<Utf16> pwszNamespaceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPrefix,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPrefix,
            Pointer<Utf16> pwszLocalName,
            Pointer<Utf16> pwszNamespaceUri,
          )>()(
        ptr.ref.lpVtbl,
        pwszPrefix,
        pwszLocalName,
        pwszNamespaceUri,
      );

  int WriteString(
    Pointer<Utf16> pwszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszText,
          )>()(
        ptr.ref.lpVtbl,
        pwszText,
      );

  int WriteSurrogateCharEntity(
    int wchLow,
    int wchHigh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wchLow,
            Uint16 wchHigh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wchLow,
            int wchHigh,
          )>()(
        ptr.ref.lpVtbl,
        wchLow,
        wchHigh,
      );

  int WriteWhitespace(
    Pointer<Utf16> pwszWhitespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszWhitespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszWhitespace,
          )>()(
        ptr.ref.lpVtbl,
        pwszWhitespace,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(31)
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
