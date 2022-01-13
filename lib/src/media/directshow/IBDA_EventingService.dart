// IBDA_EventingService.dart

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
const IID_IBDA_EventingService = '{207C413F-00DC-4C61-BAD6-6FEE1FF07064}';

/// {@category Interface}
/// {@category com}
class IBDA_EventingService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBDA_EventingService(Pointer<COMObject> ptr) : super(ptr);

  int CompleteEvent(
    int ulEventID,
    int ulEventResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulEventID,
            Uint32 ulEventResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulEventID,
            int ulEventResult,
          )>()(
        ptr.ref.lpVtbl,
        ulEventID,
        ulEventResult,
      );
}
