// IWMCredentialCallback.dart

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
const IID_IWMCredentialCallback = '{342E0EB7-E651-450C-975B-2ACE2C90C48E}';

/// {@category Interface}
/// {@category com}
class IWMCredentialCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMCredentialCallback(Pointer<COMObject> ptr) : super(ptr);

  int AcquireCredentials(
    Pointer<Utf16> pwszRealm,
    Pointer<Utf16> pwszSite,
    Pointer<Utf16> pwszUser,
    int cchUser,
    Pointer<Utf16> pwszPassword,
    int cchPassword,
    int hrStatus,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszRealm,
            Pointer<Utf16> pwszSite,
            Pointer<Utf16> pwszUser,
            Uint32 cchUser,
            Pointer<Utf16> pwszPassword,
            Uint32 cchPassword,
            Int32 hrStatus,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszRealm,
            Pointer<Utf16> pwszSite,
            Pointer<Utf16> pwszUser,
            int cchUser,
            Pointer<Utf16> pwszPassword,
            int cchPassword,
            int hrStatus,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwszRealm,
        pwszSite,
        pwszUser,
        cchUser,
        pwszPassword,
        cchPassword,
        hrStatus,
        pdwFlags,
      );
}
