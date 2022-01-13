// IAudioClock.dart

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
const IID_IAudioClock = '{CD63314F-3FBA-4A1B-812C-EF96358728E7}';

/// {@category Interface}
/// {@category com}
class IAudioClock extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioClock(Pointer<COMObject> ptr) : super(ptr);

  int GetFrequency(
    Pointer<Uint64> pu64Frequency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pu64Frequency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pu64Frequency,
          )>()(
        ptr.ref.lpVtbl,
        pu64Frequency,
      );

  int GetPosition(
    Pointer<Uint64> pu64Position,
    Pointer<Uint64> pu64QPCPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pu64Position,
            Pointer<Uint64> pu64QPCPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pu64Position,
            Pointer<Uint64> pu64QPCPosition,
          )>()(
        ptr.ref.lpVtbl,
        pu64Position,
        pu64QPCPosition,
      );

  int GetCharacteristics(
    Pointer<Uint32> pdwCharacteristics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>()(
        ptr.ref.lpVtbl,
        pdwCharacteristics,
      );
}
