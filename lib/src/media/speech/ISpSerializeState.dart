// ISpSerializeState.dart

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
const IID_ISpSerializeState = '{21B501A0-0EC7-46C9-92C3-A2BC784C54B9}';

/// {@category Interface}
/// {@category com}
class ISpSerializeState extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpSerializeState(Pointer<COMObject> ptr) : super(ptr);

  int GetSerializedState(
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pulSize,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pulSize,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pulSize,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        ppbData,
        pulSize,
        dwReserved,
      );

  int SetSerializedState(
    Pointer<Uint8> pbData,
    int ulSize,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Uint32 ulSize,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            int ulSize,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        ulSize,
        dwReserved,
      );
}
