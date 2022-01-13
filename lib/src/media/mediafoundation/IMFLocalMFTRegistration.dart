// IMFLocalMFTRegistration.dart

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

/// @nodoc
const IID_IMFLocalMFTRegistration = '{149C4D73-B4BE-4F8D-8B87-079E926B6ADD}';

/// {@category Interface}
/// {@category com}
class IMFLocalMFTRegistration extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFLocalMFTRegistration(Pointer<COMObject> ptr) : super(ptr);

  int RegisterMFTs(
    Pointer<MFT_REGISTRATION_INFO> pMFTs,
    int cMFTs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFT_REGISTRATION_INFO> pMFTs,
            Uint32 cMFTs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFT_REGISTRATION_INFO> pMFTs,
            int cMFTs,
          )>()(
        ptr.ref.lpVtbl,
        pMFTs,
        cMFTs,
      );
}
