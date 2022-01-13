// IAuthenticateEx.dart

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

import '../../system/com/IAuthenticate.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IAuthenticateEx = '{2AD1EDAF-D83D-48B5-9ADF-03DBE19F53BD}';

/// {@category Interface}
/// {@category com}
class IAuthenticateEx extends IAuthenticate {
  // vtable begins at 4, is 1 entries long.
  IAuthenticateEx(Pointer<COMObject> ptr) : super(ptr);

  int AuthenticateEx(
    Pointer<IntPtr> phwnd,
    Pointer<Pointer<Utf16>> pszUsername,
    Pointer<Pointer<Utf16>> pszPassword,
    Pointer<AUTHENTICATEINFO> pauthinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwnd,
            Pointer<Pointer<Utf16>> pszUsername,
            Pointer<Pointer<Utf16>> pszPassword,
            Pointer<AUTHENTICATEINFO> pauthinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwnd,
            Pointer<Pointer<Utf16>> pszUsername,
            Pointer<Pointer<Utf16>> pszPassword,
            Pointer<AUTHENTICATEINFO> pauthinfo,
          )>()(
        ptr.ref.lpVtbl,
        phwnd,
        pszUsername,
        pszPassword,
        pauthinfo,
      );
}
