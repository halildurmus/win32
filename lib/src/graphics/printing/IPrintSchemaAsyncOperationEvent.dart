// IPrintSchemaAsyncOperationEvent.dart

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

import '../../system/com/IDispatch.dart';
import '../../graphics/printing/IPrintSchemaTicket.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintSchemaAsyncOperationEvent =
    '{23ADBB16-0133-4906-B29A-1DCE1D026379}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaAsyncOperationEvent extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IPrintSchemaAsyncOperationEvent(Pointer<COMObject> ptr) : super(ptr);

  int Completed(
    Pointer<COMObject> pTicket,
    int hrOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTicket,
            Int32 hrOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTicket,
            int hrOperation,
          )>()(
        ptr.ref.lpVtbl,
        pTicket,
        hrOperation,
      );
}
