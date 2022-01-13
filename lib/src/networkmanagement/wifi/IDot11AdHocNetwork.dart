// IDot11AdHocNetwork.dart

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
import '../../networkmanagement/wifi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/wifi/IDot11AdHocSecuritySettings.dart';
import '../../networkmanagement/wifi/IDot11AdHocInterface.dart';

/// @nodoc
const IID_IDot11AdHocNetwork = '{8F10CC29-CF0D-42A0-ACBE-E2DE7007384D}';

/// {@category Interface}
/// {@category com}
class IDot11AdHocNetwork extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IDot11AdHocNetwork(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<Int32> eStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> eStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> eStatus,
          )>()(
        ptr.ref.lpVtbl,
        eStatus,
      );

  int GetSSID(
    Pointer<Pointer<Utf16>> ppszwSSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwSSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwSSID,
          )>()(
        ptr.ref.lpVtbl,
        ppszwSSID,
      );

  int HasProfile(
    Pointer<Uint8> pf11d,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pf11d,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pf11d,
          )>()(
        ptr.ref.lpVtbl,
        pf11d,
      );

  int GetProfileName(
    Pointer<Pointer<Utf16>> ppszwProfileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwProfileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszwProfileName,
          )>()(
        ptr.ref.lpVtbl,
        ppszwProfileName,
      );

  int DeleteProfile() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetSignalQuality(
    Pointer<Uint32> puStrengthValue,
    Pointer<Uint32> puStrengthMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puStrengthValue,
            Pointer<Uint32> puStrengthMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puStrengthValue,
            Pointer<Uint32> puStrengthMax,
          )>()(
        ptr.ref.lpVtbl,
        puStrengthValue,
        puStrengthMax,
      );

  int GetSecuritySetting(
    Pointer<Pointer<COMObject>> pAdHocSecuritySetting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAdHocSecuritySetting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAdHocSecuritySetting,
          )>()(
        ptr.ref.lpVtbl,
        pAdHocSecuritySetting,
      );

  int GetContextGuid(
    Pointer<GUID> pContextGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pContextGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pContextGuid,
          )>()(
        ptr.ref.lpVtbl,
        pContextGuid,
      );

  int GetSignature(
    Pointer<GUID> pSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pSignature,
          )>()(
        ptr.ref.lpVtbl,
        pSignature,
      );

  int GetInterface(
    Pointer<Pointer<COMObject>> pAdHocInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAdHocInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pAdHocInterface,
          )>()(
        ptr.ref.lpVtbl,
        pAdHocInterface,
      );

  int Connect(
    Pointer<Utf16> Passphrase,
    int GeographicalId,
    int fSaveProfile,
    int fMakeSavedProfileUserSpecific,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Passphrase,
            Int32 GeographicalId,
            Uint8 fSaveProfile,
            Uint8 fMakeSavedProfileUserSpecific,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Passphrase,
            int GeographicalId,
            int fSaveProfile,
            int fMakeSavedProfileUserSpecific,
          )>()(
        ptr.ref.lpVtbl,
        Passphrase,
        GeographicalId,
        fSaveProfile,
        fMakeSavedProfileUserSpecific,
      );

  int Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
}
