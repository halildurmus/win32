// IISDB_SDT.dart

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

import '../../media/directshow/IDVB_SDT.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IISDB_SDT = '{3F3DC9A2-BB32-4FB9-AE9E-D856848927A3}';

/// {@category Interface}
/// {@category com}
class IISDB_SDT extends IDVB_SDT {
  // vtable begins at 21, is 1 entries long.
  IISDB_SDT(Pointer<COMObject> ptr) : super(ptr);

  int GetRecordEITUserDefinedFlags(
    int dwRecordIndex,
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordIndex,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordIndex,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordIndex,
        pbVal,
      );
}
