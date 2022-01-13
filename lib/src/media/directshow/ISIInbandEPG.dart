// ISIInbandEPG.dart

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
const IID_ISIInbandEPG = '{F90AD9D0-B854-4B68-9CC1-B2CC96119D85}';

/// {@category Interface}
/// {@category com}
class ISIInbandEPG extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISIInbandEPG(Pointer<COMObject> ptr) : super(ptr);

  int StartSIEPGScan() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int StopSIEPGScan() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int IsSIEPGScanRunning(
    Pointer<Int32> bRunning,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> bRunning,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> bRunning,
          )>()(
        ptr.ref.lpVtbl,
        bRunning,
      );
}
