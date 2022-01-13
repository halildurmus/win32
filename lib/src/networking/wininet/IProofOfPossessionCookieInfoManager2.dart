// IProofOfPossessionCookieInfoManager2.dart

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
import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';
import '../../networking/wininet/structs.g.dart';

/// @nodoc
const IID_IProofOfPossessionCookieInfoManager2 =
    '{15E41407-B42F-4AE7-9966-34A087B2D713}';

/// {@category Interface}
/// {@category com}
class IProofOfPossessionCookieInfoManager2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProofOfPossessionCookieInfoManager2(Pointer<COMObject> ptr) : super(ptr);

  int GetCookieInfoWithUriForAccount(
    Pointer<COMObject> webAccount,
    Pointer<Utf16> uri,
    Pointer<Uint32> cookieInfoCount,
    Pointer<Pointer<ProofOfPossessionCookieInfo>> cookieInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> webAccount,
            Pointer<Utf16> uri,
            Pointer<Uint32> cookieInfoCount,
            Pointer<Pointer<ProofOfPossessionCookieInfo>> cookieInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> webAccount,
            Pointer<Utf16> uri,
            Pointer<Uint32> cookieInfoCount,
            Pointer<Pointer<ProofOfPossessionCookieInfo>> cookieInfo,
          )>()(
        ptr.ref.lpVtbl,
        webAccount,
        uri,
        cookieInfoCount,
        cookieInfo,
      );
}
