// IBDA_DRIWMDRMSession.dart

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
const IID_IBDA_DRIWMDRMSession = '{05C690F8-56DB-4BB2-B053-79C12098BB26}';

/// {@category Interface}
/// {@category com}
class IBDA_DRIWMDRMSession extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IBDA_DRIWMDRMSession(Pointer<COMObject> ptr) : super(ptr);

  int AcknowledgeLicense(
    int hrLicenseAck,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrLicenseAck,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrLicenseAck,
          )>()(
        ptr.ref.lpVtbl,
        hrLicenseAck,
      );

  int ProcessLicenseChallenge(
    int dwcbLicenseMessage,
    Pointer<Uint8> pbLicenseMessage,
    Pointer<Uint32> pdwcbLicenseResponse,
    Pointer<Pointer<Uint8>> ppbLicenseResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwcbLicenseMessage,
            Pointer<Uint8> pbLicenseMessage,
            Pointer<Uint32> pdwcbLicenseResponse,
            Pointer<Pointer<Uint8>> ppbLicenseResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwcbLicenseMessage,
            Pointer<Uint8> pbLicenseMessage,
            Pointer<Uint32> pdwcbLicenseResponse,
            Pointer<Pointer<Uint8>> ppbLicenseResponse,
          )>()(
        ptr.ref.lpVtbl,
        dwcbLicenseMessage,
        pbLicenseMessage,
        pdwcbLicenseResponse,
        ppbLicenseResponse,
      );

  int ProcessRegistrationChallenge(
    int dwcbRegistrationMessage,
    Pointer<Uint8> pbRegistrationMessage,
    Pointer<Uint32> pdwcbRegistrationResponse,
    Pointer<Pointer<Uint8>> ppbRegistrationResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwcbRegistrationMessage,
            Pointer<Uint8> pbRegistrationMessage,
            Pointer<Uint32> pdwcbRegistrationResponse,
            Pointer<Pointer<Uint8>> ppbRegistrationResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwcbRegistrationMessage,
            Pointer<Uint8> pbRegistrationMessage,
            Pointer<Uint32> pdwcbRegistrationResponse,
            Pointer<Pointer<Uint8>> ppbRegistrationResponse,
          )>()(
        ptr.ref.lpVtbl,
        dwcbRegistrationMessage,
        pbRegistrationMessage,
        pdwcbRegistrationResponse,
        ppbRegistrationResponse,
      );

  int SetRevInfo(
    int dwRevInfoLen,
    Pointer<Uint8> pbRevInfo,
    Pointer<Uint32> pdwResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRevInfoLen,
            Pointer<Uint8> pbRevInfo,
            Pointer<Uint32> pdwResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRevInfoLen,
            Pointer<Uint8> pbRevInfo,
            Pointer<Uint32> pdwResponse,
          )>()(
        ptr.ref.lpVtbl,
        dwRevInfoLen,
        pbRevInfo,
        pdwResponse,
      );

  int SetCrl(
    int dwCrlLen,
    Pointer<Uint8> pbCrlLen,
    Pointer<Uint32> pdwResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCrlLen,
            Pointer<Uint8> pbCrlLen,
            Pointer<Uint32> pdwResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCrlLen,
            Pointer<Uint8> pbCrlLen,
            Pointer<Uint32> pdwResponse,
          )>()(
        ptr.ref.lpVtbl,
        dwCrlLen,
        pbCrlLen,
        pdwResponse,
      );

  int GetHMSAssociationData() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetLastCardeaError(
    Pointer<Uint32> pdwError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwError,
          )>()(
        ptr.ref.lpVtbl,
        pdwError,
      );
}
