// IXpsSignatureBlock.dart

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
import '../../storage/xps/IXpsSignatureRequestCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsSignatureRequest.dart';

/// @nodoc
const IID_IXpsSignatureBlock = '{151FAC09-0B97-4AC6-A323-5E4297D4322B}';

/// {@category Interface}
/// {@category com}
class IXpsSignatureBlock extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IXpsSignatureBlock(Pointer<COMObject> ptr) : super(ptr);

  int GetRequests(
    Pointer<Pointer<COMObject>> requests,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> requests,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> requests,
          )>()(
        ptr.ref.lpVtbl,
        requests,
      );

  int GetPartName(
    Pointer<Pointer<COMObject>> partName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partName,
          )>()(
        ptr.ref.lpVtbl,
        partName,
      );

  int GetDocumentIndex(
    Pointer<Uint32> fixedDocumentIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> fixedDocumentIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> fixedDocumentIndex,
          )>()(
        ptr.ref.lpVtbl,
        fixedDocumentIndex,
      );

  int GetDocumentName(
    Pointer<Pointer<COMObject>> fixedDocumentName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fixedDocumentName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fixedDocumentName,
          )>()(
        ptr.ref.lpVtbl,
        fixedDocumentName,
      );

  int CreateRequest(
    Pointer<Utf16> requestId,
    Pointer<Pointer<COMObject>> signatureRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> requestId,
            Pointer<Pointer<COMObject>> signatureRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> requestId,
            Pointer<Pointer<COMObject>> signatureRequest,
          )>()(
        ptr.ref.lpVtbl,
        requestId,
        signatureRequest,
      );
}
