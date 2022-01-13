// ITPhone.dart

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
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../devices/tapi/IEnumAddress.dart';
import '../../devices/tapi/ITAddress.dart';
import '../../devices/tapi/IEnumTerminal.dart';

/// @nodoc
const IID_ITPhone = '{09D48DB4-10CC-4388-9DE7-A8465618975A}';

/// {@category Interface}
/// {@category com}
class ITPhone extends IDispatch {
  // vtable begins at 7, is 33 entries long.
  ITPhone(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    int Privilege,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Privilege,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Privilege,
          )>()(
        ptr.ref.lpVtbl,
        Privilege,
      );

  int Close() => ptr.ref.lpVtbl.value
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
            Pointer<VARIANT> pAddresses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pAddresses,
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

  int get_PhoneCapsLong(
    int pclCap,
    Pointer<Int32> plCapability,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pclCap,
            Pointer<Int32> plCapability,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pclCap,
            Pointer<Int32> plCapability,
          )>()(
        ptr.ref.lpVtbl,
        pclCap,
        plCapability,
      );

  int get_PhoneCapsString(
    int pcsCap,
    Pointer<Pointer<Utf16>> ppCapability,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pcsCap,
            Pointer<Pointer<Utf16>> ppCapability,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pcsCap,
            Pointer<Pointer<Utf16>> ppCapability,
          )>()(
        ptr.ref.lpVtbl,
        pcsCap,
        ppCapability,
      );

  int get_Terminals(
    Pointer<COMObject> pAddress,
    Pointer<VARIANT> pTerminals,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAddress,
            Pointer<VARIANT> pTerminals,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAddress,
            Pointer<VARIANT> pTerminals,
          )>()(
        ptr.ref.lpVtbl,
        pAddress,
        pTerminals,
      );

  int EnumerateTerminals(
    Pointer<COMObject> pAddress,
    Pointer<Pointer<COMObject>> ppEnumTerminal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAddress,
            Pointer<Pointer<COMObject>> ppEnumTerminal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAddress,
            Pointer<Pointer<COMObject>> ppEnumTerminal,
          )>()(
        ptr.ref.lpVtbl,
        pAddress,
        ppEnumTerminal,
      );

  int get_ButtonMode(
    int lButtonID,
    Pointer<Int32> pButtonMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButtonID,
            Pointer<Int32> pButtonMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButtonID,
            Pointer<Int32> pButtonMode,
          )>()(
        ptr.ref.lpVtbl,
        lButtonID,
        pButtonMode,
      );

  int put_ButtonMode(
    int lButtonID,
    int ButtonMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButtonID,
            Int32 ButtonMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButtonID,
            int ButtonMode,
          )>()(
        ptr.ref.lpVtbl,
        lButtonID,
        ButtonMode,
      );

  int get_ButtonFunction(
    int lButtonID,
    Pointer<Int32> pButtonFunction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButtonID,
            Pointer<Int32> pButtonFunction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButtonID,
            Pointer<Int32> pButtonFunction,
          )>()(
        ptr.ref.lpVtbl,
        lButtonID,
        pButtonFunction,
      );

  int put_ButtonFunction(
    int lButtonID,
    int ButtonFunction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButtonID,
            Int32 ButtonFunction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButtonID,
            int ButtonFunction,
          )>()(
        ptr.ref.lpVtbl,
        lButtonID,
        ButtonFunction,
      );

  int get_ButtonText(
    int lButtonID,
    Pointer<Pointer<Utf16>> ppButtonText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButtonID,
            Pointer<Pointer<Utf16>> ppButtonText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButtonID,
            Pointer<Pointer<Utf16>> ppButtonText,
          )>()(
        ptr.ref.lpVtbl,
        lButtonID,
        ppButtonText,
      );

  int put_ButtonText(
    int lButtonID,
    Pointer<Utf16> bstrButtonText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButtonID,
            Pointer<Utf16> bstrButtonText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButtonID,
            Pointer<Utf16> bstrButtonText,
          )>()(
        ptr.ref.lpVtbl,
        lButtonID,
        bstrButtonText,
      );

  int get_ButtonState(
    int lButtonID,
    Pointer<Int32> pButtonState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lButtonID,
            Pointer<Int32> pButtonState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lButtonID,
            Pointer<Int32> pButtonState,
          )>()(
        ptr.ref.lpVtbl,
        lButtonID,
        pButtonState,
      );

  int get_HookSwitchState(
    int HookSwitchDevice,
    Pointer<Int32> pHookSwitchState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HookSwitchDevice,
            Pointer<Int32> pHookSwitchState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HookSwitchDevice,
            Pointer<Int32> pHookSwitchState,
          )>()(
        ptr.ref.lpVtbl,
        HookSwitchDevice,
        pHookSwitchState,
      );

  int put_HookSwitchState(
    int HookSwitchDevice,
    int HookSwitchState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 HookSwitchDevice,
            Int32 HookSwitchState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int HookSwitchDevice,
            int HookSwitchState,
          )>()(
        ptr.ref.lpVtbl,
        HookSwitchDevice,
        HookSwitchState,
      );

  set RingMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lRingMode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lRingMode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get RingMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plRingMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plRingMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set RingVolume(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(26)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lRingVolume,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lRingVolume,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get RingVolume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plRingVolume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plRingVolume,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Privilege {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPrivilege,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPrivilege,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetPhoneCapsBuffer(
    int pcbCaps,
    Pointer<Uint32> pdwSize,
    Pointer<Pointer<Uint8>> ppPhoneCapsBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pcbCaps,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppPhoneCapsBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pcbCaps,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppPhoneCapsBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pcbCaps,
        pdwSize,
        ppPhoneCapsBuffer,
      );

  int get_PhoneCapsBuffer(
    int pcbCaps,
    Pointer<VARIANT> pVarBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pcbCaps,
            Pointer<VARIANT> pVarBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pcbCaps,
            Pointer<VARIANT> pVarBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pcbCaps,
        pVarBuffer,
      );

  int get_LampMode(
    int lLampID,
    Pointer<Int32> pLampMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLampID,
            Pointer<Int32> pLampMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLampID,
            Pointer<Int32> pLampMode,
          )>()(
        ptr.ref.lpVtbl,
        lLampID,
        pLampMode,
      );

  int put_LampMode(
    int lLampID,
    int LampMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLampID,
            Int32 LampMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLampID,
            int LampMode,
          )>()(
        ptr.ref.lpVtbl,
        lLampID,
        LampMode,
      );

  Pointer<Utf16> get Display {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDisplay,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetDisplay(
    int lRow,
    int lColumn,
    Pointer<Utf16> bstrDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRow,
            Int32 lColumn,
            Pointer<Utf16> bstrDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRow,
            int lColumn,
            Pointer<Utf16> bstrDisplay,
          )>()(
        ptr.ref.lpVtbl,
        lRow,
        lColumn,
        bstrDisplay,
      );

  VARIANT get PreferredAddresses {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pAddresses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pAddresses,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumeratePreferredAddresses(
    Pointer<Pointer<COMObject>> ppEnumAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int DeviceSpecific(
    Pointer<Uint8> pParams,
    int dwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pParams,
            Uint32 dwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pParams,
            int dwSize,
          )>()(
        ptr.ref.lpVtbl,
        pParams,
        dwSize,
      );

  int DeviceSpecificVariant(
    VARIANT varDevSpecificByteArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varDevSpecificByteArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varDevSpecificByteArray,
          )>()(
        ptr.ref.lpVtbl,
        varDevSpecificByteArray,
      );

  int NegotiateExtVersion(
    int lLowVersion,
    int lHighVersion,
    Pointer<Int32> plExtVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLowVersion,
            Int32 lHighVersion,
            Pointer<Int32> plExtVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLowVersion,
            int lHighVersion,
            Pointer<Int32> plExtVersion,
          )>()(
        ptr.ref.lpVtbl,
        lLowVersion,
        lHighVersion,
        plExtVersion,
      );
}
