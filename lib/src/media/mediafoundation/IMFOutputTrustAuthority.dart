// IMFOutputTrustAuthority.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFOutputPolicy.dart';

/// @nodoc
const IID_IMFOutputTrustAuthority = '{D19F8E94-B126-4446-890C-5DCB7AD71453}';

/// {@category Interface}
/// {@category com}
class IMFOutputTrustAuthority extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFOutputTrustAuthority(Pointer<COMObject> ptr) : super(ptr);

  int GetAction(
    Pointer<Int32> pAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pAction,
          )>()(
        ptr.ref.lpVtbl,
        pAction,
      );

  int SetPolicy(
    Pointer<Pointer<COMObject>> ppPolicy,
    int nPolicy,
    Pointer<Pointer<Uint8>> ppbTicket,
    Pointer<Uint32> pcbTicket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPolicy,
            Uint32 nPolicy,
            Pointer<Pointer<Uint8>> ppbTicket,
            Pointer<Uint32> pcbTicket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPolicy,
            int nPolicy,
            Pointer<Pointer<Uint8>> ppbTicket,
            Pointer<Uint32> pcbTicket,
          )>()(
        ptr.ref.lpVtbl,
        ppPolicy,
        nPolicy,
        ppbTicket,
        pcbTicket,
      );
}
