// IRDPSRAPIPerfCounterLoggingManager.dart

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
import '../../system/desktopsharing/IRDPSRAPIPerfCounterLogger.dart';

/// @nodoc
const IID_IRDPSRAPIPerfCounterLoggingManager =
    '{9A512C86-AC6E-4A8E-B1A4-FCEF363F6E64}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIPerfCounterLoggingManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRDPSRAPIPerfCounterLoggingManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateLogger(
    Pointer<Utf16> bstrCounterName,
    Pointer<Pointer<COMObject>> ppLogger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCounterName,
            Pointer<Pointer<COMObject>> ppLogger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCounterName,
            Pointer<Pointer<COMObject>> ppLogger,
          )>()(
        ptr.ref.lpVtbl,
        bstrCounterName,
        ppLogger,
      );
}
