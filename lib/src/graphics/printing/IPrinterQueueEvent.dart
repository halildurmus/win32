// IPrinterQueueEvent.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrinterQueueEvent = '{214685F6-7B78-4681-87E0-495F739273D1}';

/// {@category Interface}
/// {@category com}
class IPrinterQueueEvent extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IPrinterQueueEvent(Pointer<COMObject> ptr) : super(ptr);

  int OnBidiResponseReceived(
    Pointer<Utf16> bstrResponse,
    int hrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrResponse,
            Int32 hrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrResponse,
            int hrStatus,
          )>()(
        ptr.ref.lpVtbl,
        bstrResponse,
        hrStatus,
      );
}
