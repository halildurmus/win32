// IMbnRegistration.dart

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
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnRegistration = '{DCBBBAB6-2009-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnRegistration extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IMbnRegistration(Pointer<COMObject> ptr) : super(ptr);

  int GetRegisterState(
    Pointer<Int32> registerState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> registerState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> registerState,
          )>()(
        ptr.ref.lpVtbl,
        registerState,
      );

  int GetRegisterMode(
    Pointer<Int32> registerMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> registerMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> registerMode,
          )>()(
        ptr.ref.lpVtbl,
        registerMode,
      );

  int GetProviderID(
    Pointer<Pointer<Utf16>> providerID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> providerID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> providerID,
          )>()(
        ptr.ref.lpVtbl,
        providerID,
      );

  int GetProviderName(
    Pointer<Pointer<Utf16>> providerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> providerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> providerName,
          )>()(
        ptr.ref.lpVtbl,
        providerName,
      );

  int GetRoamingText(
    Pointer<Pointer<Utf16>> roamingText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> roamingText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> roamingText,
          )>()(
        ptr.ref.lpVtbl,
        roamingText,
      );

  int GetAvailableDataClasses(
    Pointer<Uint32> availableDataClasses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> availableDataClasses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> availableDataClasses,
          )>()(
        ptr.ref.lpVtbl,
        availableDataClasses,
      );

  int GetCurrentDataClass(
    Pointer<Uint32> currentDataClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> currentDataClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> currentDataClass,
          )>()(
        ptr.ref.lpVtbl,
        currentDataClass,
      );

  int GetRegistrationNetworkError(
    Pointer<Uint32> registrationNetworkError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> registrationNetworkError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> registrationNetworkError,
          )>()(
        ptr.ref.lpVtbl,
        registrationNetworkError,
      );

  int GetPacketAttachNetworkError(
    Pointer<Uint32> packetAttachNetworkError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> packetAttachNetworkError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> packetAttachNetworkError,
          )>()(
        ptr.ref.lpVtbl,
        packetAttachNetworkError,
      );

  int SetRegisterMode(
    int registerMode,
    Pointer<Utf16> providerID,
    int dataClass,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 registerMode,
            Pointer<Utf16> providerID,
            Uint32 dataClass,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int registerMode,
            Pointer<Utf16> providerID,
            int dataClass,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        registerMode,
        providerID,
        dataClass,
        requestID,
      );
}
