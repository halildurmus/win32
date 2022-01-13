// IBDA_MUX.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_MUX = '{942AAFEC-4C05-4C74-B8EB-8706C2A4943F}';

/// {@category Interface}
/// {@category com}
class IBDA_MUX extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBDA_MUX(Pointer<COMObject> ptr) : super(ptr);

  int SetPidList(
    int ulPidListCount,
    Pointer<BDA_MUX_PIDLISTITEM> pbPidListBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulPidListCount,
            Pointer<BDA_MUX_PIDLISTITEM> pbPidListBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulPidListCount,
            Pointer<BDA_MUX_PIDLISTITEM> pbPidListBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ulPidListCount,
        pbPidListBuffer,
      );

  int GetPidList(
    Pointer<Uint32> pulPidListCount,
    Pointer<BDA_MUX_PIDLISTITEM> pbPidListBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulPidListCount,
            Pointer<BDA_MUX_PIDLISTITEM> pbPidListBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulPidListCount,
            Pointer<BDA_MUX_PIDLISTITEM> pbPidListBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pulPidListCount,
        pbPidListBuffer,
      );
}
