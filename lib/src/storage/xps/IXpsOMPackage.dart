// IXpsOMPackage.dart

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

import '../../system/com/IUnknown.dart';
import '../../storage/xps/IXpsOMDocumentSequence.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMCoreProperties.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsOMImageResource.dart';
import '../../security/structs.g.dart';
import '../../system/com/ISequentialStream.dart';

/// @nodoc
const IID_IXpsOMPackage = '{18C3DF65-81E1-4674-91DC-FC452F5A416F}';

/// {@category Interface}
/// {@category com}
class IXpsOMPackage extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IXpsOMPackage(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentSequence(
    Pointer<Pointer<COMObject>> documentSequence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentSequence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentSequence,
          )>()(
        ptr.ref.lpVtbl,
        documentSequence,
      );

  int SetDocumentSequence(
    Pointer<COMObject> documentSequence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> documentSequence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> documentSequence,
          )>()(
        ptr.ref.lpVtbl,
        documentSequence,
      );

  int GetCoreProperties(
    Pointer<Pointer<COMObject>> coreProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> coreProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> coreProperties,
          )>()(
        ptr.ref.lpVtbl,
        coreProperties,
      );

  int SetCoreProperties(
    Pointer<COMObject> coreProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> coreProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> coreProperties,
          )>()(
        ptr.ref.lpVtbl,
        coreProperties,
      );

  int GetDiscardControlPartName(
    Pointer<Pointer<COMObject>> discardControlPartUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> discardControlPartUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> discardControlPartUri,
          )>()(
        ptr.ref.lpVtbl,
        discardControlPartUri,
      );

  int SetDiscardControlPartName(
    Pointer<COMObject> discardControlPartUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> discardControlPartUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> discardControlPartUri,
          )>()(
        ptr.ref.lpVtbl,
        discardControlPartUri,
      );

  int GetThumbnailResource(
    Pointer<Pointer<COMObject>> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int SetThumbnailResource(
    Pointer<COMObject> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int WriteToFile(
    Pointer<Utf16> fileName,
    Pointer<SECURITY_ATTRIBUTES> securityAttributes,
    int flagsAndAttributes,
    int optimizeMarkupSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            Uint32 flagsAndAttributes,
            Int32 optimizeMarkupSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            int flagsAndAttributes,
            int optimizeMarkupSize,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        securityAttributes,
        flagsAndAttributes,
        optimizeMarkupSize,
      );

  int WriteToStream(
    Pointer<COMObject> stream,
    int optimizeMarkupSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
            Int32 optimizeMarkupSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
            int optimizeMarkupSize,
          )>()(
        ptr.ref.lpVtbl,
        stream,
        optimizeMarkupSize,
      );
}
