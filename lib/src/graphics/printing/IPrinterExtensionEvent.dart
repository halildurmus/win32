// IPrinterExtensionEvent.dart

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
import '../../graphics/printing/IPrinterExtensionEventArgs.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/IPrinterExtensionContextCollection.dart';

/// @nodoc
const IID_IPrinterExtensionEvent = '{C093CB63-5EF5-4585-AF8E-4D5637487B57}';

/// {@category Interface}
/// {@category com}
class IPrinterExtensionEvent extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IPrinterExtensionEvent(Pointer<COMObject> ptr) : super(ptr);

  int OnDriverEvent(
    Pointer<COMObject> pEventArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEventArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEventArgs,
          )>()(
        ptr.ref.lpVtbl,
        pEventArgs,
      );

  int OnPrinterQueuesEnumerated(
    Pointer<COMObject> pContextCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContextCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContextCollection,
          )>()(
        ptr.ref.lpVtbl,
        pContextCollection,
      );
}
