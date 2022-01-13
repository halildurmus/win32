// IClockVectorElement.dart

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
const IID_IClockVectorElement = '{E71C4250-ADF8-4A07-8FAE-5669596909C1}';

/// {@category Interface}
/// {@category com}
class IClockVectorElement extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IClockVectorElement(Pointer<COMObject> ptr) : super(ptr);

  int GetReplicaKey(
    Pointer<Uint32> pdwReplicaKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwReplicaKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwReplicaKey,
          )>()(
        ptr.ref.lpVtbl,
        pdwReplicaKey,
      );

  int GetTickCount(
    Pointer<Uint64> pullTickCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullTickCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullTickCount,
          )>()(
        ptr.ref.lpVtbl,
        pullTickCount,
      );
}
