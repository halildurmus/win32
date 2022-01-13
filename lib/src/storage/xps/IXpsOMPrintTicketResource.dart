// IXpsOMPrintTicketResource.dart

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

import '../../storage/xps/IXpsOMResource.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';

/// @nodoc
const IID_IXpsOMPrintTicketResource = '{E7FF32D2-34AA-499B-BBE9-9CD4EE6C59F7}';

/// {@category Interface}
/// {@category com}
class IXpsOMPrintTicketResource extends IXpsOMResource {
  // vtable begins at 5, is 2 entries long.
  IXpsOMPrintTicketResource(Pointer<COMObject> ptr) : super(ptr);

  int GetStream(
    Pointer<Pointer<COMObject>> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> stream,
          )>()(
        ptr.ref.lpVtbl,
        stream,
      );

  int SetContent(
    Pointer<COMObject> sourceStream,
    Pointer<COMObject> partName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sourceStream,
            Pointer<COMObject> partName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sourceStream,
            Pointer<COMObject> partName,
          )>()(
        ptr.ref.lpVtbl,
        sourceStream,
        partName,
      );
}
