// IDot11AdHocInterface.dart

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
import '../../networkmanagement/wifi/IDot11AdHocNetwork.dart';
import '../../networkmanagement/wifi/IEnumDot11AdHocSecuritySettings.dart';
import '../../networkmanagement/wifi/IEnumDot11AdHocNetworks.dart';
import '../../networkmanagement/wifi/structs.g.dart';

/// @nodoc
const IID_IDot11AdHocInterface = '{8F10CC2B-CF0D-42A0-ACBE-E2DE7007384D}';

/// {@category Interface}
/// {@category com}
class IDot11AdHocInterface extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDot11AdHocInterface(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceSignature(
    Pointer<GUID> pSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetFriendlyName(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>()(
        ptr.ref.lpVtbl,
        ppszName,
      );

  int IsDot11d(
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

  int IsAdHocCapable(
    Pointer<Uint8> pfAdHocCapable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pfAdHocCapable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pfAdHocCapable,
          )>()(
        ptr.ref.lpVtbl,
        pfAdHocCapable,
      );

  int IsRadioOn(
    Pointer<Uint8> pfIsRadioOn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pfIsRadioOn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pfIsRadioOn,
          )>()(
        ptr.ref.lpVtbl,
        pfIsRadioOn,
      );

  int GetActiveNetwork(
    Pointer<Pointer<COMObject>> ppNetwork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNetwork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNetwork,
          )>()(
        ptr.ref.lpVtbl,
        ppNetwork,
      );

  int GetIEnumSecuritySettings(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetIEnumDot11AdHocNetworks(
    Pointer<GUID> pFilterGuid,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFilterGuid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFilterGuid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pFilterGuid,
        ppEnum,
      );

  int GetStatus(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );
}
