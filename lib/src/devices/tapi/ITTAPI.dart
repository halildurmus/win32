// ITTAPI.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../devices/tapi/IEnumAddress.dart';
import '../../devices/tapi/ITAddress.dart';
import '../../devices/tapi/IEnumCallHub.dart';
import '../../system/com/IEnumUnknown.dart';

/// @nodoc
const IID_ITTAPI = '{B1EFC382-9355-11D0-835C-00AA003CCABD}';

/// {@category Interface}
/// {@category com}
class ITTAPI extends IDispatch {
  // vtable begins at 7, is 16 entries long.
  ITTAPI(Pointer<COMObject> ptr) : super(ptr);

  int Initialize() => ptr.ref.lpVtbl.value
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

  int Shutdown() => ptr.ref.lpVtbl.value
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

  VARIANT get Addresses {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateAddresses(
    Pointer<Pointer<COMObject>> ppEnumAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumAddress,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumAddress,
      );

  int RegisterCallNotifications(
    Pointer<COMObject> pAddress,
    int fMonitor,
    int fOwner,
    int lMediaTypes,
    int lCallbackInstance,
    Pointer<Int32> plRegister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAddress,
            Int16 fMonitor,
            Int16 fOwner,
            Int32 lMediaTypes,
            Int32 lCallbackInstance,
            Pointer<Int32> plRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAddress,
            int fMonitor,
            int fOwner,
            int lMediaTypes,
            int lCallbackInstance,
            Pointer<Int32> plRegister,
          )>()(
        ptr.ref.lpVtbl,
        pAddress,
        fMonitor,
        fOwner,
        lMediaTypes,
        lCallbackInstance,
        plRegister,
      );

  int UnregisterNotifications(
    int lRegister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRegister,
          )>()(
        ptr.ref.lpVtbl,
        lRegister,
      );

  VARIANT get CallHubs {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumerateCallHubs(
    Pointer<Pointer<COMObject>> ppEnumCallHub,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCallHub,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumCallHub,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumCallHub,
      );

  int SetCallHubTracking(
    VARIANT pAddresses,
    int bTracking,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT pAddresses,
            Int16 bTracking,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT pAddresses,
            int bTracking,
          )>()(
        ptr.ref.lpVtbl,
        pAddresses,
        bTracking,
      );

  int EnumeratePrivateTAPIObjects(
    Pointer<Pointer<COMObject>> ppEnumUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumUnknown,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumUnknown,
      );

  VARIANT get PrivateTAPIObjects {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVariant,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int RegisterRequestRecipient(
    int lRegistrationInstance,
    int lRequestMode,
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRegistrationInstance,
            Int32 lRequestMode,
            Int16 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRegistrationInstance,
            int lRequestMode,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        lRegistrationInstance,
        lRequestMode,
        fEnable,
      );

  int SetAssistedTelephonyPriority(
    Pointer<Utf16> pAppFilename,
    int fPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAppFilename,
            Int16 fPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAppFilename,
            int fPriority,
          )>()(
        ptr.ref.lpVtbl,
        pAppFilename,
        fPriority,
      );

  int SetApplicationPriority(
    Pointer<Utf16> pAppFilename,
    int lMediaType,
    int fPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAppFilename,
            Int32 lMediaType,
            Int16 fPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAppFilename,
            int lMediaType,
            int fPriority,
          )>()(
        ptr.ref.lpVtbl,
        pAppFilename,
        lMediaType,
        fPriority,
      );

  set EventFilter(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(21)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lFilterMask,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lFilterMask,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EventFilter {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plFilterMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plFilterMask,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
