// IVdsMaintenance.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVdsMaintenance = '{DAEBEEF3-8523-47ED-A2B9-05CECCE2A1AE}';

/// {@category Interface}
/// {@category com}
class IVdsMaintenance extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVdsMaintenance(Pointer<COMObject> ptr) : super(ptr);

  int StartMaintenance(
    int operation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 operation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int operation,
          )>()(
        ptr.ref.lpVtbl,
        operation,
      );

  int StopMaintenance(
    int operation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 operation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int operation,
          )>()(
        ptr.ref.lpVtbl,
        operation,
      );

  int PulseMaintenance(
    int operation,
    int ulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 operation,
            Uint32 ulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int operation,
            int ulCount,
          )>()(
        ptr.ref.lpVtbl,
        operation,
        ulCount,
      );
}
