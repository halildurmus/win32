// IBDA_WMDRMSession.dart

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
const IID_IBDA_WMDRMSession = '{4BE6FA3D-07CD-4139-8B80-8C18BA3AEC88}';

/// {@category Interface}
/// {@category com}
class IBDA_WMDRMSession extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IBDA_WMDRMSession(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<Uint32> MaxCaptureToken,
    Pointer<Uint32> MaxStreamingPid,
    Pointer<Uint32> MaxLicense,
    Pointer<Uint32> MinSecurityLevel,
    Pointer<Uint32> RevInfoSequenceNumber,
    Pointer<Uint64> RevInfoIssuedTime,
    Pointer<Uint32> RevInfoTTL,
    Pointer<Uint32> RevListVersion,
    Pointer<Uint32> ulState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> MaxCaptureToken,
            Pointer<Uint32> MaxStreamingPid,
            Pointer<Uint32> MaxLicense,
            Pointer<Uint32> MinSecurityLevel,
            Pointer<Uint32> RevInfoSequenceNumber,
            Pointer<Uint64> RevInfoIssuedTime,
            Pointer<Uint32> RevInfoTTL,
            Pointer<Uint32> RevListVersion,
            Pointer<Uint32> ulState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> MaxCaptureToken,
            Pointer<Uint32> MaxStreamingPid,
            Pointer<Uint32> MaxLicense,
            Pointer<Uint32> MinSecurityLevel,
            Pointer<Uint32> RevInfoSequenceNumber,
            Pointer<Uint64> RevInfoIssuedTime,
            Pointer<Uint32> RevInfoTTL,
            Pointer<Uint32> RevListVersion,
            Pointer<Uint32> ulState,
          )>()(
        ptr.ref.lpVtbl,
        MaxCaptureToken,
        MaxStreamingPid,
        MaxLicense,
        MinSecurityLevel,
        RevInfoSequenceNumber,
        RevInfoIssuedTime,
        RevInfoTTL,
        RevListVersion,
        ulState,
      );

  int SetRevInfo(
    int ulRevInfoLen,
    Pointer<Uint8> pbRevInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRevInfoLen,
            Pointer<Uint8> pbRevInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRevInfoLen,
            Pointer<Uint8> pbRevInfo,
          )>()(
        ptr.ref.lpVtbl,
        ulRevInfoLen,
        pbRevInfo,
      );

  int SetCrl(
    int ulCrlLen,
    Pointer<Uint8> pbCrlLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCrlLen,
            Pointer<Uint8> pbCrlLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCrlLen,
            Pointer<Uint8> pbCrlLen,
          )>()(
        ptr.ref.lpVtbl,
        ulCrlLen,
        pbCrlLen,
      );

  int TransactMessage(
    int ulcbRequest,
    Pointer<Uint8> pbRequest,
    Pointer<Uint32> pulcbResponse,
    Pointer<Uint8> pbResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcbRequest,
            Pointer<Uint8> pbRequest,
            Pointer<Uint32> pulcbResponse,
            Pointer<Uint8> pbResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcbRequest,
            Pointer<Uint8> pbRequest,
            Pointer<Uint32> pulcbResponse,
            Pointer<Uint8> pbResponse,
          )>()(
        ptr.ref.lpVtbl,
        ulcbRequest,
        pbRequest,
        pulcbResponse,
        pbResponse,
      );

  int GetLicense(
    Pointer<GUID> uuidKey,
    Pointer<Uint32> pulPackageLen,
    Pointer<Uint8> pbPackage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> uuidKey,
            Pointer<Uint32> pulPackageLen,
            Pointer<Uint8> pbPackage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> uuidKey,
            Pointer<Uint32> pulPackageLen,
            Pointer<Uint8> pbPackage,
          )>()(
        ptr.ref.lpVtbl,
        uuidKey,
        pulPackageLen,
        pbPackage,
      );

  int ReissueLicense(
    Pointer<GUID> uuidKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> uuidKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> uuidKey,
          )>()(
        ptr.ref.lpVtbl,
        uuidKey,
      );

  int RenewLicense(
    int ulInXmrLicenseLen,
    Pointer<Uint8> pbInXmrLicense,
    int ulEntitlementTokenLen,
    Pointer<Uint8> pbEntitlementToken,
    Pointer<Uint32> pulDescrambleStatus,
    Pointer<Uint32> pulOutXmrLicenseLen,
    Pointer<Uint8> pbOutXmrLicense,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulInXmrLicenseLen,
            Pointer<Uint8> pbInXmrLicense,
            Uint32 ulEntitlementTokenLen,
            Pointer<Uint8> pbEntitlementToken,
            Pointer<Uint32> pulDescrambleStatus,
            Pointer<Uint32> pulOutXmrLicenseLen,
            Pointer<Uint8> pbOutXmrLicense,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulInXmrLicenseLen,
            Pointer<Uint8> pbInXmrLicense,
            int ulEntitlementTokenLen,
            Pointer<Uint8> pbEntitlementToken,
            Pointer<Uint32> pulDescrambleStatus,
            Pointer<Uint32> pulOutXmrLicenseLen,
            Pointer<Uint8> pbOutXmrLicense,
          )>()(
        ptr.ref.lpVtbl,
        ulInXmrLicenseLen,
        pbInXmrLicense,
        ulEntitlementTokenLen,
        pbEntitlementToken,
        pulDescrambleStatus,
        pulOutXmrLicenseLen,
        pbOutXmrLicense,
      );

  int GetKeyInfo(
    Pointer<Uint32> pulKeyInfoLen,
    Pointer<Uint8> pbKeyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulKeyInfoLen,
            Pointer<Uint8> pbKeyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulKeyInfoLen,
            Pointer<Uint8> pbKeyInfo,
          )>()(
        ptr.ref.lpVtbl,
        pulKeyInfoLen,
        pbKeyInfo,
      );
}
