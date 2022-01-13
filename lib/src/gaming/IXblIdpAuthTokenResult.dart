// IXblIdpAuthTokenResult.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../gaming/structs.g.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IXblIdpAuthTokenResult = '{46CE0225-F267-4D68-B299-B2762552DEC1}';

/// {@category Interface}
/// {@category com}
class IXblIdpAuthTokenResult extends IUnknown {
  // vtable begins at 3, is 20 entries long.
  IXblIdpAuthTokenResult(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<Int32> status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );

  int GetErrorCode(
    Pointer<Int32> errorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> errorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> errorCode,
          )>()(
        ptr.ref.lpVtbl,
        errorCode,
      );

  int GetToken(
    Pointer<Pointer<Utf16>> token,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> token,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> token,
          )>()(
        ptr.ref.lpVtbl,
        token,
      );

  int GetSignature(
    Pointer<Pointer<Utf16>> signature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> signature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> signature,
          )>()(
        ptr.ref.lpVtbl,
        signature,
      );

  int GetSandbox(
    Pointer<Pointer<Utf16>> sandbox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> sandbox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> sandbox,
          )>()(
        ptr.ref.lpVtbl,
        sandbox,
      );

  int GetEnvironment(
    Pointer<Pointer<Utf16>> environment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> environment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> environment,
          )>()(
        ptr.ref.lpVtbl,
        environment,
      );

  int GetMsaAccountId(
    Pointer<Pointer<Utf16>> msaAccountId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaAccountId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaAccountId,
          )>()(
        ptr.ref.lpVtbl,
        msaAccountId,
      );

  int GetXuid(
    Pointer<Pointer<Utf16>> xuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> xuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> xuid,
          )>()(
        ptr.ref.lpVtbl,
        xuid,
      );

  int GetGamertag(
    Pointer<Pointer<Utf16>> gamertag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> gamertag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> gamertag,
          )>()(
        ptr.ref.lpVtbl,
        gamertag,
      );

  int GetAgeGroup(
    Pointer<Pointer<Utf16>> ageGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ageGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ageGroup,
          )>()(
        ptr.ref.lpVtbl,
        ageGroup,
      );

  int GetPrivileges(
    Pointer<Pointer<Utf16>> privileges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> privileges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> privileges,
          )>()(
        ptr.ref.lpVtbl,
        privileges,
      );

  int GetMsaTarget(
    Pointer<Pointer<Utf16>> msaTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaTarget,
          )>()(
        ptr.ref.lpVtbl,
        msaTarget,
      );

  int GetMsaPolicy(
    Pointer<Pointer<Utf16>> msaPolicy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaPolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaPolicy,
          )>()(
        ptr.ref.lpVtbl,
        msaPolicy,
      );

  int GetMsaAppId(
    Pointer<Pointer<Utf16>> msaAppId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaAppId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> msaAppId,
          )>()(
        ptr.ref.lpVtbl,
        msaAppId,
      );

  int GetRedirect(
    Pointer<Pointer<Utf16>> redirect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> redirect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> redirect,
          )>()(
        ptr.ref.lpVtbl,
        redirect,
      );

  int GetMessage(
    Pointer<Pointer<Utf16>> message,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> message,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> message,
          )>()(
        ptr.ref.lpVtbl,
        message,
      );

  int GetHelpId(
    Pointer<Pointer<Utf16>> helpId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> helpId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> helpId,
          )>()(
        ptr.ref.lpVtbl,
        helpId,
      );

  int GetEnforcementBans(
    Pointer<Pointer<Utf16>> enforcementBans,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> enforcementBans,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> enforcementBans,
          )>()(
        ptr.ref.lpVtbl,
        enforcementBans,
      );

  int GetRestrictions(
    Pointer<Pointer<Utf16>> restrictions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> restrictions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> restrictions,
          )>()(
        ptr.ref.lpVtbl,
        restrictions,
      );

  int GetTitleRestrictions(
    Pointer<Pointer<Utf16>> titleRestrictions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> titleRestrictions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> titleRestrictions,
          )>()(
        ptr.ref.lpVtbl,
        titleRestrictions,
      );
}

/// @nodoc
const CLSID_XblIdpAuthTokenResult = '{9F493441-744A-410C-AE2B-9A22F7C7731F}';

/// {@category com}
class XblIdpAuthTokenResult extends IXblIdpAuthTokenResult {
  XblIdpAuthTokenResult(Pointer<COMObject> ptr) : super(ptr);

  factory XblIdpAuthTokenResult.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XblIdpAuthTokenResult);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXblIdpAuthTokenResult);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XblIdpAuthTokenResult(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
