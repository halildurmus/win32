// IWorkspace3.dart

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

import '../../system/remotedesktop/IWorkspace2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWorkspace3 = '{1BECBE4A-D654-423B-AFEB-BE8D532C13C6}';

/// {@category Interface}
/// {@category com}
class IWorkspace3 extends IWorkspace2 {
  // vtable begins at 7, is 2 entries long.
  IWorkspace3(Pointer<COMObject> ptr) : super(ptr);

  int GetClaimsToken2(
    Pointer<Utf16> bstrClaimsHint,
    Pointer<Utf16> bstrUserHint,
    int claimCookie,
    int hwndCredUiParent,
    RECT rectCredUiParent,
    Pointer<Pointer<Utf16>> pbstrAccessToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrClaimsHint,
            Pointer<Utf16> bstrUserHint,
            Uint32 claimCookie,
            Uint32 hwndCredUiParent,
            RECT rectCredUiParent,
            Pointer<Pointer<Utf16>> pbstrAccessToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrClaimsHint,
            Pointer<Utf16> bstrUserHint,
            int claimCookie,
            int hwndCredUiParent,
            RECT rectCredUiParent,
            Pointer<Pointer<Utf16>> pbstrAccessToken,
          )>()(
        ptr.ref.lpVtbl,
        bstrClaimsHint,
        bstrUserHint,
        claimCookie,
        hwndCredUiParent,
        rectCredUiParent,
        pbstrAccessToken,
      );

  int SetClaimsToken(
    Pointer<Utf16> bstrAccessToken,
    int ullAccessTokenExpiration,
    Pointer<Utf16> bstrRefreshToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAccessToken,
            Uint64 ullAccessTokenExpiration,
            Pointer<Utf16> bstrRefreshToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAccessToken,
            int ullAccessTokenExpiration,
            Pointer<Utf16> bstrRefreshToken,
          )>()(
        ptr.ref.lpVtbl,
        bstrAccessToken,
        ullAccessTokenExpiration,
        bstrRefreshToken,
      );
}
