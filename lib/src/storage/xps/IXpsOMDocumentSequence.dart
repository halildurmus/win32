// IXpsOMDocumentSequence.dart

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

import '../../storage/xps/IXpsOMPart.dart';
import '../../storage/xps/IXpsOMPackage.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMDocumentCollection.dart';
import '../../storage/xps/IXpsOMPrintTicketResource.dart';

/// @nodoc
const IID_IXpsOMDocumentSequence = '{56492EB4-D8D5-425E-8256-4C2B64AD0264}';

/// {@category Interface}
/// {@category com}
class IXpsOMDocumentSequence extends IXpsOMPart {
  // vtable begins at 5, is 4 entries long.
  IXpsOMDocumentSequence(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>()(
        ptr.ref.lpVtbl,
        package,
      );

  int GetDocuments(
    Pointer<Pointer<COMObject>> documents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> documents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> documents,
          )>()(
        ptr.ref.lpVtbl,
        documents,
      );

  int GetPrintTicketResource(
    Pointer<Pointer<COMObject>> printTicketResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>()(
        ptr.ref.lpVtbl,
        printTicketResource,
      );

  int SetPrintTicketResource(
    Pointer<COMObject> printTicketResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> printTicketResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> printTicketResource,
          )>()(
        ptr.ref.lpVtbl,
        printTicketResource,
      );
}
