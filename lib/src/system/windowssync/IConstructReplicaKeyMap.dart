// IConstructReplicaKeyMap.dart

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
const IID_IConstructReplicaKeyMap = '{DED10970-EC85-4115-B52C-4405845642A5}';

/// {@category Interface}
/// {@category com}
class IConstructReplicaKeyMap extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IConstructReplicaKeyMap(Pointer<COMObject> ptr) : super(ptr);

  int FindOrAddReplica(
    Pointer<Uint8> pbReplicaId,
    Pointer<Uint32> pdwReplicaKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbReplicaId,
            Pointer<Uint32> pdwReplicaKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbReplicaId,
            Pointer<Uint32> pdwReplicaKey,
          )>()(
        ptr.ref.lpVtbl,
        pbReplicaId,
        pdwReplicaKey,
      );
}
