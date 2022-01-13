// IBDA_PinControl.dart

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
const IID_IBDA_PinControl = '{0DED49D5-A8B7-4D5D-97A1-12B0C195874D}';

/// {@category Interface}
/// {@category com}
class IBDA_PinControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBDA_PinControl(Pointer<COMObject> ptr) : super(ptr);

  int GetPinID(
    Pointer<Uint32> pulPinID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulPinID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulPinID,
          )>()(
        ptr.ref.lpVtbl,
        pulPinID,
      );

  int GetPinType(
    Pointer<Uint32> pulPinType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulPinType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulPinType,
          )>()(
        ptr.ref.lpVtbl,
        pulPinType,
      );

  int RegistrationContext(
    Pointer<Uint32> pulRegistrationCtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulRegistrationCtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulRegistrationCtx,
          )>()(
        ptr.ref.lpVtbl,
        pulRegistrationCtx,
      );
}
