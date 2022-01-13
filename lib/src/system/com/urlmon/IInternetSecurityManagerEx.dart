// IInternetSecurityManagerEx.dart

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

import '../../../system/com/urlmon/IInternetSecurityManager.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetSecurityManagerEx = '{F164EDF1-CC7C-4F0D-9A94-34222625C393}';

/// {@category Interface}
/// {@category com}
class IInternetSecurityManagerEx extends IInternetSecurityManager {
  // vtable begins at 11, is 1 entries long.
  IInternetSecurityManagerEx(Pointer<COMObject> ptr) : super(ptr);

  int ProcessUrlActionEx(
    Pointer<Utf16> pwszUrl,
    int dwAction,
    Pointer<Uint8> pPolicy,
    int cbPolicy,
    Pointer<Uint8> pContext,
    int cbContext,
    int dwFlags,
    int dwReserved,
    Pointer<Uint32> pdwOutFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            Uint32 dwAction,
            Pointer<Uint8> pPolicy,
            Uint32 cbPolicy,
            Pointer<Uint8> pContext,
            Uint32 cbContext,
            Uint32 dwFlags,
            Uint32 dwReserved,
            Pointer<Uint32> pdwOutFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUrl,
            int dwAction,
            Pointer<Uint8> pPolicy,
            int cbPolicy,
            Pointer<Uint8> pContext,
            int cbContext,
            int dwFlags,
            int dwReserved,
            Pointer<Uint32> pdwOutFlags,
          )>()(
        ptr.ref.lpVtbl,
        pwszUrl,
        dwAction,
        pPolicy,
        cbPolicy,
        pContext,
        cbContext,
        dwFlags,
        dwReserved,
        pdwOutFlags,
      );
}
