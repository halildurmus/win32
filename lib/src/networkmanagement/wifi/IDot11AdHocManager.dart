// IDot11AdHocManager.dart

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
import '../../networkmanagement/wifi/IDot11AdHocInterface.dart';
import '../../networkmanagement/wifi/IDot11AdHocSecuritySettings.dart';
import '../../networkmanagement/wifi/IDot11AdHocNetwork.dart';
import '../../networkmanagement/wifi/IEnumDot11AdHocNetworks.dart';
import '../../networkmanagement/wifi/IEnumDot11AdHocInterfaces.dart';

/// @nodoc
const IID_IDot11AdHocManager = '{8F10CC26-CF0D-42A0-ACBE-E2DE7007384D}';

/// {@category Interface}
/// {@category com}
class IDot11AdHocManager extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDot11AdHocManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateNetwork(
    Pointer<Utf16> Name,
    Pointer<Utf16> Password,
    int GeographicalId,
    Pointer<COMObject> pInterface,
    Pointer<COMObject> pSecurity,
    Pointer<GUID> pContextGuid,
    Pointer<Pointer<COMObject>> pIAdHoc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Utf16> Password,
            Int32 GeographicalId,
            Pointer<COMObject> pInterface,
            Pointer<COMObject> pSecurity,
            Pointer<GUID> pContextGuid,
            Pointer<Pointer<COMObject>> pIAdHoc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Utf16> Password,
            int GeographicalId,
            Pointer<COMObject> pInterface,
            Pointer<COMObject> pSecurity,
            Pointer<GUID> pContextGuid,
            Pointer<Pointer<COMObject>> pIAdHoc,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Password,
        GeographicalId,
        pInterface,
        pSecurity,
        pContextGuid,
        pIAdHoc,
      );

  int CommitCreatedNetwork(
    Pointer<COMObject> pIAdHoc,
    int fSaveProfile,
    int fMakeSavedProfileUserSpecific,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIAdHoc,
            Uint8 fSaveProfile,
            Uint8 fMakeSavedProfileUserSpecific,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIAdHoc,
            int fSaveProfile,
            int fMakeSavedProfileUserSpecific,
          )>()(
        ptr.ref.lpVtbl,
        pIAdHoc,
        fSaveProfile,
        fMakeSavedProfileUserSpecific,
      );

  int GetIEnumDot11AdHocNetworks(
    Pointer<GUID> pContextGuid,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pContextGuid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pContextGuid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pContextGuid,
        ppEnum,
      );

  int GetIEnumDot11AdHocInterfaces(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetNetwork(
    Pointer<GUID> NetworkSignature,
    Pointer<Pointer<COMObject>> pNetwork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> NetworkSignature,
            Pointer<Pointer<COMObject>> pNetwork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> NetworkSignature,
            Pointer<Pointer<COMObject>> pNetwork,
          )>()(
        ptr.ref.lpVtbl,
        NetworkSignature,
        pNetwork,
      );
}

/// @nodoc
const CLSID_Dot11AdHocManager = '{DD06A84F-83BD-4D01-8AB9-2389FEA0869E}';

/// {@category com}
class Dot11AdHocManager extends IDot11AdHocManager {
  Dot11AdHocManager(Pointer<COMObject> ptr) : super(ptr);

  factory Dot11AdHocManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Dot11AdHocManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDot11AdHocManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Dot11AdHocManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
