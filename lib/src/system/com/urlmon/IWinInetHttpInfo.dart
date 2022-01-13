// IWinInetHttpInfo.dart

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

import '../../../system/com/urlmon/IWinInetInfo.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IWinInetHttpInfo = '{79EAC9D8-BAFA-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IWinInetHttpInfo extends IWinInetInfo {
  // vtable begins at 4, is 1 entries long.
  IWinInetHttpInfo(Pointer<COMObject> ptr) : super(ptr);

  int QueryInfo(
    int dwOption,
    Pointer pBuffer,
    Pointer<Uint32> pcbBuf,
    Pointer<Uint32> pdwFlags,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOption,
            Pointer pBuffer,
            Pointer<Uint32> pcbBuf,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOption,
            Pointer pBuffer,
            Pointer<Uint32> pcbBuf,
            Pointer<Uint32> pdwFlags,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwOption,
        pBuffer,
        pcbBuf,
        pdwFlags,
        pdwReserved,
      );
}
