// IPrinterExtensionRequest.dart

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
const IID_IPrinterExtensionRequest = '{39843BF3-C4D2-41FD-B4B2-AEDBEE5E1900}';

/// {@category Interface}
/// {@category com}
class IPrinterExtensionRequest extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IPrinterExtensionRequest(Pointer<COMObject> ptr) : super(ptr);

  int Cancel(
    int hrStatus,
    Pointer<Utf16> bstrLogMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrStatus,
            Pointer<Utf16> bstrLogMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrStatus,
            Pointer<Utf16> bstrLogMessage,
          )>()(
        ptr.ref.lpVtbl,
        hrStatus,
        bstrLogMessage,
      );

  int Complete() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
