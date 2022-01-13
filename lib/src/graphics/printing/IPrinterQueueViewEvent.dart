// IPrinterQueueViewEvent.dart

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
import '../../graphics/printing/IPrintJobCollection.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrinterQueueViewEvent = '{C5B6042B-FD21-404A-A0EF-E2FBB52B9080}';

/// {@category Interface}
/// {@category com}
class IPrinterQueueViewEvent extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IPrinterQueueViewEvent(Pointer<COMObject> ptr) : super(ptr);

  int OnChanged(
    Pointer<COMObject> pCollection,
    int ulViewOffset,
    int ulViewSize,
    int ulCountJobsInPrintQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCollection,
            Uint32 ulViewOffset,
            Uint32 ulViewSize,
            Uint32 ulCountJobsInPrintQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCollection,
            int ulViewOffset,
            int ulViewSize,
            int ulCountJobsInPrintQueue,
          )>()(
        ptr.ref.lpVtbl,
        pCollection,
        ulViewOffset,
        ulViewSize,
        ulCountJobsInPrintQueue,
      );
}
