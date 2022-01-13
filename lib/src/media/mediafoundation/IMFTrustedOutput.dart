// IMFTrustedOutput.dart

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
import '../../media/mediafoundation/IMFOutputTrustAuthority.dart';

/// @nodoc
const IID_IMFTrustedOutput = '{D19F8E95-B126-4446-890C-5DCB7AD71453}';

/// {@category Interface}
/// {@category com}
class IMFTrustedOutput extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFTrustedOutput(Pointer<COMObject> ptr) : super(ptr);

  int GetOutputTrustAuthorityCount(
    Pointer<Uint32> pcOutputTrustAuthorities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcOutputTrustAuthorities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcOutputTrustAuthorities,
          )>()(
        ptr.ref.lpVtbl,
        pcOutputTrustAuthorities,
      );

  int GetOutputTrustAuthorityByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppauthority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppauthority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppauthority,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppauthority,
      );

  int IsFinal(
    Pointer<Int32> pfIsFinal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsFinal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsFinal,
          )>()(
        ptr.ref.lpVtbl,
        pfIsFinal,
      );
}
