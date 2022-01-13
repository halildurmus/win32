// IPrintWorkflowXpsReceiver.dart

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
import '../../../system/com/IStream.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/xps/IXpsOMPageReference.dart';

/// @nodoc
const IID_IPrintWorkflowXpsReceiver = '{04097374-77B8-47F6-8167-AAE29D4CF84B}';

/// {@category Interface}
/// {@category com}
class IPrintWorkflowXpsReceiver extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPrintWorkflowXpsReceiver(Pointer<COMObject> ptr) : super(ptr);

  int SetDocumentSequencePrintTicket(
    Pointer<COMObject> documentSequencePrintTicket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> documentSequencePrintTicket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> documentSequencePrintTicket,
          )>()(
        ptr.ref.lpVtbl,
        documentSequencePrintTicket,
      );

  int SetDocumentSequenceUri(
    Pointer<Utf16> documentSequenceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> documentSequenceUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> documentSequenceUri,
          )>()(
        ptr.ref.lpVtbl,
        documentSequenceUri,
      );

  int AddDocumentData(
    int documentId,
    Pointer<COMObject> documentPrintTicket,
    Pointer<Utf16> documentUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 documentId,
            Pointer<COMObject> documentPrintTicket,
            Pointer<Utf16> documentUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int documentId,
            Pointer<COMObject> documentPrintTicket,
            Pointer<Utf16> documentUri,
          )>()(
        ptr.ref.lpVtbl,
        documentId,
        documentPrintTicket,
        documentUri,
      );

  int AddPage(
    int documentId,
    int pageId,
    Pointer<COMObject> pageReference,
    Pointer<Utf16> pageUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 documentId,
            Uint32 pageId,
            Pointer<COMObject> pageReference,
            Pointer<Utf16> pageUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int documentId,
            int pageId,
            Pointer<COMObject> pageReference,
            Pointer<Utf16> pageUri,
          )>()(
        ptr.ref.lpVtbl,
        documentId,
        pageId,
        pageReference,
        pageUri,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
