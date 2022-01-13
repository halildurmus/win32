// IBDA_IPSinkControl.dart

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
const IID_IBDA_IPSinkControl = '{3F4DC8E2-4050-11D3-8F4B-00C04F7971E2}';

/// {@category Interface}
/// {@category com}
class IBDA_IPSinkControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBDA_IPSinkControl(Pointer<COMObject> ptr) : super(ptr);

  int GetMulticastList(
    Pointer<Uint32> pulcbSize,
    Pointer<Pointer<Uint8>> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcbSize,
            Pointer<Pointer<Uint8>> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcbSize,
            Pointer<Pointer<Uint8>> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pulcbSize,
        pbBuffer,
      );

  int GetAdapterIPAddress(
    Pointer<Uint32> pulcbSize,
    Pointer<Pointer<Uint8>> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcbSize,
            Pointer<Pointer<Uint8>> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcbSize,
            Pointer<Pointer<Uint8>> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pulcbSize,
        pbBuffer,
      );
}
