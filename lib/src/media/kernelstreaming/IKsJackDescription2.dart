// IKsJackDescription2.dart

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
import '../../media/kernelstreaming/structs.g.dart';

/// @nodoc
const IID_IKsJackDescription2 = '{478F3A9B-E0C9-4827-9228-6F5505FFE76A}';

/// {@category Interface}
/// {@category com}
class IKsJackDescription2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IKsJackDescription2(Pointer<COMObject> ptr) : super(ptr);

  int GetJackCount(
    Pointer<Uint32> pcJacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcJacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcJacks,
          )>()(
        ptr.ref.lpVtbl,
        pcJacks,
      );

  int GetJackDescription2(
    int nJack,
    Pointer<KSJACK_DESCRIPTION2> pDescription2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nJack,
            Pointer<KSJACK_DESCRIPTION2> pDescription2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nJack,
            Pointer<KSJACK_DESCRIPTION2> pDescription2,
          )>()(
        ptr.ref.lpVtbl,
        nJack,
        pDescription2,
      );
}
