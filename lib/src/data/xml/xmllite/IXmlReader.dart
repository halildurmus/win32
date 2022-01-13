// IXmlReader.dart

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
import '../../../data/xml/xmllite/structs.g.dart';

/// @nodoc
const IID_IXmlReader = '{7279FC81-709D-4095-B63D-69FE4B0D9030}';

/// {@category Interface}
/// {@category com}
class IXmlReader extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IXmlReader(Pointer<COMObject> ptr) : super(ptr);

  int SetInput(
    Pointer<COMObject> pInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInput,
          )>()(
        ptr.ref.lpVtbl,
        pInput,
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

  int Read(
    Pointer<Int32> pNodeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pNodeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pNodeType,
          )>()(
        ptr.ref.lpVtbl,
        pNodeType,
      );

  int GetNodeType(
    Pointer<Int32> pNodeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pNodeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pNodeType,
          )>()(
        ptr.ref.lpVtbl,
        pNodeType,
      );

  int MoveToFirstAttribute() => ptr.ref.lpVtbl.value
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

  int MoveToNextAttribute() => ptr.ref.lpVtbl.value
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

  int MoveToAttributeByName(
    Pointer<Utf16> pwszLocalName,
    Pointer<Utf16> pwszNamespaceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int MoveToElement() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetQualifiedName(
    Pointer<Pointer<Utf16>> ppwszQualifiedName,
    Pointer<Uint32> pcwchQualifiedName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszQualifiedName,
            Pointer<Uint32> pcwchQualifiedName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszQualifiedName,
            Pointer<Uint32> pcwchQualifiedName,
          )>()(
        ptr.ref.lpVtbl,
        ppwszQualifiedName,
        pcwchQualifiedName,
      );

  int GetNamespaceUri(
    Pointer<Pointer<Utf16>> ppwszNamespaceUri,
    Pointer<Uint32> pcwchNamespaceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszNamespaceUri,
            Pointer<Uint32> pcwchNamespaceUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszNamespaceUri,
            Pointer<Uint32> pcwchNamespaceUri,
          )>()(
        ptr.ref.lpVtbl,
        ppwszNamespaceUri,
        pcwchNamespaceUri,
      );

  int GetLocalName(
    Pointer<Pointer<Utf16>> ppwszLocalName,
    Pointer<Uint32> pcwchLocalName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszLocalName,
            Pointer<Uint32> pcwchLocalName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszLocalName,
            Pointer<Uint32> pcwchLocalName,
          )>()(
        ptr.ref.lpVtbl,
        ppwszLocalName,
        pcwchLocalName,
      );

  int GetPrefix(
    Pointer<Pointer<Utf16>> ppwszPrefix,
    Pointer<Uint32> pcwchPrefix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszPrefix,
            Pointer<Uint32> pcwchPrefix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszPrefix,
            Pointer<Uint32> pcwchPrefix,
          )>()(
        ptr.ref.lpVtbl,
        ppwszPrefix,
        pcwchPrefix,
      );

  int GetValue(
    Pointer<Pointer<Utf16>> ppwszValue,
    Pointer<Uint32> pcwchValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszValue,
            Pointer<Uint32> pcwchValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszValue,
            Pointer<Uint32> pcwchValue,
          )>()(
        ptr.ref.lpVtbl,
        ppwszValue,
        pcwchValue,
      );

  int ReadValueChunk(
    Pointer<Utf16> pwchBuffer,
    int cwchChunkSize,
    Pointer<Uint32> pcwchRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchBuffer,
            Uint32 cwchChunkSize,
            Pointer<Uint32> pcwchRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchBuffer,
            int cwchChunkSize,
            Pointer<Uint32> pcwchRead,
          )>()(
        ptr.ref.lpVtbl,
        pwchBuffer,
        cwchChunkSize,
        pcwchRead,
      );

  int GetBaseUri(
    Pointer<Pointer<Utf16>> ppwszBaseUri,
    Pointer<Uint32> pcwchBaseUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszBaseUri,
            Pointer<Uint32> pcwchBaseUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszBaseUri,
            Pointer<Uint32> pcwchBaseUri,
          )>()(
        ptr.ref.lpVtbl,
        ppwszBaseUri,
        pcwchBaseUri,
      );

  int IsDefault() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int IsEmptyElement() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int GetLineNumber(
    Pointer<Uint32> pnLineNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnLineNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnLineNumber,
          )>()(
        ptr.ref.lpVtbl,
        pnLineNumber,
      );

  int GetLinePosition(
    Pointer<Uint32> pnLinePosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnLinePosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnLinePosition,
          )>()(
        ptr.ref.lpVtbl,
        pnLinePosition,
      );

  int GetAttributeCount(
    Pointer<Uint32> pnAttributeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnAttributeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnAttributeCount,
          )>()(
        ptr.ref.lpVtbl,
        pnAttributeCount,
      );

  int GetDepth(
    Pointer<Uint32> pnDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnDepth,
          )>()(
        ptr.ref.lpVtbl,
        pnDepth,
      );

  int IsEOF() => ptr.ref.lpVtbl.value
          .elementAt(25)
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
