// IWinInetCacheHints.dart

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
const IID_IWinInetCacheHints = '{DD1EC3B3-8391-4FDB-A9E6-347C3CAAA7DD}';

/// {@category Interface}
/// {@category com}
class IWinInetCacheHints extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWinInetCacheHints(Pointer<COMObject> ptr) : super(ptr);

  int SetCacheExtension(
    Pointer<Utf16> pwzExt,
    Pointer pszCacheFile,
    Pointer<Uint32> pcbCacheFile,
    Pointer<Uint32> pdwWinInetError,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzExt,
            Pointer pszCacheFile,
            Pointer<Uint32> pcbCacheFile,
            Pointer<Uint32> pdwWinInetError,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzExt,
            Pointer pszCacheFile,
            Pointer<Uint32> pcbCacheFile,
            Pointer<Uint32> pdwWinInetError,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pwzExt,
        pszCacheFile,
        pcbCacheFile,
        pdwWinInetError,
        pdwReserved,
      );
}
