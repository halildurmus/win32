// IPrinterBidiSetRequestCallback.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrinterBidiSetRequestCallback =
    '{C52D32DD-F2B4-4052-8502-EC4305ECB71F}';

/// {@category Interface}
/// {@category com}
class IPrinterBidiSetRequestCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPrinterBidiSetRequestCallback(Pointer<COMObject> ptr) : super(ptr);

  int Completed(
    Pointer<Utf16> bstrResponse,
    int hrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
