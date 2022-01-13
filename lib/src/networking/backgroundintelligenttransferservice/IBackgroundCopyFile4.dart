// IBackgroundCopyFile4.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyFile4 = '{EF7E0655-7888-4960-B0E5-730846E03492}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyFile4 extends IBackgroundCopyFile3 {
  // vtable begins at 12, is 1 entries long.
  IBackgroundCopyFile4(Pointer<COMObject> ptr) : super(ptr);

  int GetPeerDownloadStats(
    Pointer<Uint64> pFromOrigin,
    Pointer<Uint64> pFromPeers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pFromOrigin,
            Pointer<Uint64> pFromPeers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pFromOrigin,
            Pointer<Uint64> pFromPeers,
          )>()(
        ptr.ref.lpVtbl,
        pFromOrigin,
        pFromPeers,
      );
}
