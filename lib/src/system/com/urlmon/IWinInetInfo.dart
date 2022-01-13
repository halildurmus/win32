// IWinInetInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IWinInetInfo = '{79EAC9D6-BAFA-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IWinInetInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWinInetInfo(Pointer<COMObject> ptr) : super(ptr);

  int QueryOption(
    int dwOption,
    Pointer pBuffer,
    Pointer<Uint32> pcbBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOption,
            Pointer pBuffer,
            Pointer<Uint32> pcbBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOption,
            Pointer pBuffer,
            Pointer<Uint32> pcbBuf,
          )>()(
        ptr.ref.lpVtbl,
        dwOption,
        pBuffer,
        pcbBuf,
      );
}
