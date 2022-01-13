// IMFSecureChannel.dart

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
const IID_IMFSecureChannel = '{D0AE555D-3B12-4D97-B060-0990BC5AEB67}';

/// {@category Interface}
/// {@category com}
class IMFSecureChannel extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFSecureChannel(Pointer<COMObject> ptr) : super(ptr);

  int GetCertificate(
    Pointer<Pointer<Uint8>> ppCert,
    Pointer<Uint32> pcbCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppCert,
            Pointer<Uint32> pcbCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppCert,
            Pointer<Uint32> pcbCert,
          )>()(
        ptr.ref.lpVtbl,
        ppCert,
        pcbCert,
      );

  int SetupSession(
    Pointer<Uint8> pbEncryptedSessionKey,
    int cbSessionKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbEncryptedSessionKey,
            Uint32 cbSessionKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbEncryptedSessionKey,
            int cbSessionKey,
          )>()(
        ptr.ref.lpVtbl,
        pbEncryptedSessionKey,
        cbSessionKey,
      );
}
