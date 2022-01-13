// IDtcLuRecoveryFactory.dart

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
import '../../system/distributedtransactioncoordinator/IDtcLuRecovery.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDtcLuRecoveryFactory = '{4131E762-1AEA-11D0-944B-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IDtcLuRecoveryFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDtcLuRecoveryFactory(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<Uint8> pucLuPair,
    int cbLuPair,
    Pointer<Pointer<COMObject>> ppRecovery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pucLuPair,
            Uint32 cbLuPair,
            Pointer<Pointer<COMObject>> ppRecovery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pucLuPair,
            int cbLuPair,
            Pointer<Pointer<COMObject>> ppRecovery,
          )>()(
        ptr.ref.lpVtbl,
        pucLuPair,
        cbLuPair,
        ppRecovery,
      );
}
