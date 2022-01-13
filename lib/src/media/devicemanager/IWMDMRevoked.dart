// IWMDMRevoked.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMRevoked = '{EBECCEDB-88EE-4E55-B6A4-8D9F07D696AA}';

/// {@category Interface}
/// {@category com}
class IWMDMRevoked extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMDMRevoked(Pointer<COMObject> ptr) : super(ptr);

  int GetRevocationURL(
    Pointer<Pointer<Utf16>> ppwszRevocationURL,
    Pointer<Uint32> pdwBufferLen,
    Pointer<Uint32> pdwRevokedBitFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszRevocationURL,
            Pointer<Uint32> pdwBufferLen,
            Pointer<Uint32> pdwRevokedBitFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszRevocationURL,
            Pointer<Uint32> pdwBufferLen,
            Pointer<Uint32> pdwRevokedBitFlag,
          )>()(
        ptr.ref.lpVtbl,
        ppwszRevocationURL,
        pdwBufferLen,
        pdwRevokedBitFlag,
      );
}
