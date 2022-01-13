// IXpsOMPackageTarget.dart

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
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsOMPrintTicketResource.dart';
import '../../storage/xps/IXpsOMPackageWriter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsOMPackageTarget = '{219A9DB0-4959-47D0-8034-B1CE84F41A4D}';

/// {@category Interface}
/// {@category com}
class IXpsOMPackageTarget extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXpsOMPackageTarget(Pointer<COMObject> ptr) : super(ptr);

  int CreateXpsOMPackageWriter(
    Pointer<COMObject> documentSequencePartName,
    Pointer<COMObject> documentSequencePrintTicket,
    Pointer<COMObject> discardControlPartName,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> documentSequencePrintTicket,
            Pointer<COMObject> discardControlPartName,
            Pointer<Pointer<COMObject>> packageWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> documentSequencePrintTicket,
            Pointer<COMObject> discardControlPartName,
            Pointer<Pointer<COMObject>> packageWriter,
          )>()(
        ptr.ref.lpVtbl,
        documentSequencePartName,
        documentSequencePrintTicket,
        discardControlPartName,
        packageWriter,
      );
}
