// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../ui/input/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int DefRawInputProc(
  Pointer<Pointer<RAWINPUT>> paRawInput,
  int nInput,
  int cbSizeHeader,
) =>
    _DefRawInputProc(
      paRawInput,
      nInput,
      cbSizeHeader,
    );

late final _DefRawInputProc = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Pointer<RAWINPUT>> paRawInput,
  Int32 nInput,
  Uint32 cbSizeHeader,
),
    int Function(
  Pointer<Pointer<RAWINPUT>> paRawInput,
  int nInput,
  int cbSizeHeader,
)>('DefRawInputProc');

int GetCIMSSM(
  Pointer<INPUT_MESSAGE_SOURCE> inputMessageSource,
) =>
    _GetCIMSSM(
      inputMessageSource,
    );

late final _GetCIMSSM = _user32.lookupFunction<
    Int32 Function(
  Pointer<INPUT_MESSAGE_SOURCE> inputMessageSource,
),
    int Function(
  Pointer<INPUT_MESSAGE_SOURCE> inputMessageSource,
)>('GetCIMSSM');

int GetCurrentInputMessageSource(
  Pointer<INPUT_MESSAGE_SOURCE> inputMessageSource,
) =>
    _GetCurrentInputMessageSource(
      inputMessageSource,
    );

late final _GetCurrentInputMessageSource = _user32.lookupFunction<
    Int32 Function(
  Pointer<INPUT_MESSAGE_SOURCE> inputMessageSource,
),
    int Function(
  Pointer<INPUT_MESSAGE_SOURCE> inputMessageSource,
)>('GetCurrentInputMessageSource');

int GetRawInputBuffer(
  Pointer<RAWINPUT> pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
) =>
    _GetRawInputBuffer(
      pData,
      pcbSize,
      cbSizeHeader,
    );

late final _GetRawInputBuffer = _user32.lookupFunction<
    Uint32 Function(
  Pointer<RAWINPUT> pData,
  Pointer<Uint32> pcbSize,
  Uint32 cbSizeHeader,
),
    int Function(
  Pointer<RAWINPUT> pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
)>('GetRawInputBuffer');

int GetRawInputData(
  int hRawInput,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
) =>
    _GetRawInputData(
      hRawInput,
      uiCommand,
      pData,
      pcbSize,
      cbSizeHeader,
    );

late final _GetRawInputData = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hRawInput,
  Uint32 uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
  Uint32 cbSizeHeader,
),
    int Function(
  int hRawInput,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
)>('GetRawInputData');

int GetRawInputDeviceInfo(
  int hDevice,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
) =>
    _GetRawInputDeviceInfo(
      hDevice,
      uiCommand,
      pData,
      pcbSize,
    );

late final _GetRawInputDeviceInfo = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hDevice,
  Uint32 uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
),
    int Function(
  int hDevice,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
)>('GetRawInputDeviceInfoW');

int GetRawInputDeviceList(
  Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
) =>
    _GetRawInputDeviceList(
      pRawInputDeviceList,
      puiNumDevices,
      cbSize,
    );

late final _GetRawInputDeviceList = _user32.lookupFunction<
    Uint32 Function(
  Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
  Pointer<Uint32> puiNumDevices,
  Uint32 cbSize,
),
    int Function(
  Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
)>('GetRawInputDeviceList');

int GetRegisteredRawInputDevices(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
) =>
    _GetRegisteredRawInputDevices(
      pRawInputDevices,
      puiNumDevices,
      cbSize,
    );

late final _GetRegisteredRawInputDevices = _user32.lookupFunction<
    Uint32 Function(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  Pointer<Uint32> puiNumDevices,
  Uint32 cbSize,
),
    int Function(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
)>('GetRegisteredRawInputDevices');

int RegisterRawInputDevices(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  int uiNumDevices,
  int cbSize,
) =>
    _RegisterRawInputDevices(
      pRawInputDevices,
      uiNumDevices,
      cbSize,
    );

late final _RegisterRawInputDevices = _user32.lookupFunction<
    Int32 Function(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  Uint32 uiNumDevices,
  Uint32 cbSize,
),
    int Function(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  int uiNumDevices,
  int cbSize,
)>('RegisterRawInputDevices');
