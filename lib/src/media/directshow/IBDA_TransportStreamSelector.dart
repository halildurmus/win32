// IBDA_TransportStreamSelector.dart

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
const IID_IBDA_TransportStreamSelector =
    '{1DCFAFE9-B45E-41B3-BB2A-561EB129AE98}';

/// {@category Interface}
/// {@category com}
class IBDA_TransportStreamSelector extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBDA_TransportStreamSelector(Pointer<COMObject> ptr) : super(ptr);

  int SetTSID(
    int usTSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 usTSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int usTSID,
          )>()(
        ptr.ref.lpVtbl,
        usTSID,
      );

  int GetTSInformation(
    Pointer<Uint32> pulTSInformationBufferLen,
    Pointer<Uint8> pbTSInformationBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulTSInformationBufferLen,
            Pointer<Uint8> pbTSInformationBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulTSInformationBufferLen,
            Pointer<Uint8> pbTSInformationBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pulTSInformationBufferLen,
        pbTSInformationBuffer,
      );
}
