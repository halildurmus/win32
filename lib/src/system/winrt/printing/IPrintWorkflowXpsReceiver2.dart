// IPrintWorkflowXpsReceiver2.dart

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

import '../../../system/winrt/printing/IPrintWorkflowXpsReceiver.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintWorkflowXpsReceiver2 = '{023BCC0C-DFAB-4A61-B074-490C6995580D}';

/// {@category Interface}
/// {@category com}
class IPrintWorkflowXpsReceiver2 extends IPrintWorkflowXpsReceiver {
  // vtable begins at 8, is 1 entries long.
  IPrintWorkflowXpsReceiver2(Pointer<COMObject> ptr) : super(ptr);

  int Failed(
    int XpsError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 XpsError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int XpsError,
          )>()(
        ptr.ref.lpVtbl,
        XpsError,
      );
}
