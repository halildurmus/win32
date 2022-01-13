// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../devices/enumeration/pnp/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../devices/properties/structs.g.dart';
import '../../../devices/enumeration/pnp/callbacks.g.dart'; // -----------------------------------------------------------------------

// cfgmgr32.dll
// -----------------------------------------------------------------------
final _cfgmgr32 = DynamicLibrary.open('cfgmgr32.dll');

void SwDeviceClose(
  int hSwDevice,
) =>
    _SwDeviceClose(
      hSwDevice,
    );

late final _SwDeviceClose = _cfgmgr32.lookupFunction<
    Void Function(
  IntPtr hSwDevice,
),
    void Function(
  int hSwDevice,
)>('SwDeviceClose');

int SwDeviceCreate(
  Pointer<Utf16> pszEnumeratorName,
  Pointer<Utf16> pszParentDeviceInstance,
  Pointer<SW_DEVICE_CREATE_INFO> pCreateInfo,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
  Pointer<NativeFunction<SW_DEVICE_CREATE_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<IntPtr> phSwDevice,
) =>
    _SwDeviceCreate(
      pszEnumeratorName,
      pszParentDeviceInstance,
      pCreateInfo,
      cPropertyCount,
      pProperties,
      pCallback,
      pContext,
      phSwDevice,
    );

late final _SwDeviceCreate = _cfgmgr32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszEnumeratorName,
  Pointer<Utf16> pszParentDeviceInstance,
  Pointer<SW_DEVICE_CREATE_INFO> pCreateInfo,
  Uint32 cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
  Pointer<NativeFunction<SW_DEVICE_CREATE_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<IntPtr> phSwDevice,
),
    int Function(
  Pointer<Utf16> pszEnumeratorName,
  Pointer<Utf16> pszParentDeviceInstance,
  Pointer<SW_DEVICE_CREATE_INFO> pCreateInfo,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
  Pointer<NativeFunction<SW_DEVICE_CREATE_CALLBACK>> pCallback,
  Pointer pContext,
  Pointer<IntPtr> phSwDevice,
)>('SwDeviceCreate');

int SwDeviceGetLifetime(
  int hSwDevice,
  Pointer<Int32> pLifetime,
) =>
    _SwDeviceGetLifetime(
      hSwDevice,
      pLifetime,
    );

late final _SwDeviceGetLifetime = _cfgmgr32.lookupFunction<
    Int32 Function(
  IntPtr hSwDevice,
  Pointer<Int32> pLifetime,
),
    int Function(
  int hSwDevice,
  Pointer<Int32> pLifetime,
)>('SwDeviceGetLifetime');

int SwDeviceInterfacePropertySet(
  int hSwDevice,
  Pointer<Utf16> pszDeviceInterfaceId,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
) =>
    _SwDeviceInterfacePropertySet(
      hSwDevice,
      pszDeviceInterfaceId,
      cPropertyCount,
      pProperties,
    );

late final _SwDeviceInterfacePropertySet = _cfgmgr32.lookupFunction<
    Int32 Function(
  IntPtr hSwDevice,
  Pointer<Utf16> pszDeviceInterfaceId,
  Uint32 cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
),
    int Function(
  int hSwDevice,
  Pointer<Utf16> pszDeviceInterfaceId,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
)>('SwDeviceInterfacePropertySet');

int SwDeviceInterfaceRegister(
  int hSwDevice,
  Pointer<GUID> pInterfaceClassGuid,
  Pointer<Utf16> pszReferenceString,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
  int fEnabled,
  Pointer<Pointer<Utf16>> ppszDeviceInterfaceId,
) =>
    _SwDeviceInterfaceRegister(
      hSwDevice,
      pInterfaceClassGuid,
      pszReferenceString,
      cPropertyCount,
      pProperties,
      fEnabled,
      ppszDeviceInterfaceId,
    );

late final _SwDeviceInterfaceRegister = _cfgmgr32.lookupFunction<
    Int32 Function(
  IntPtr hSwDevice,
  Pointer<GUID> pInterfaceClassGuid,
  Pointer<Utf16> pszReferenceString,
  Uint32 cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
  Int32 fEnabled,
  Pointer<Pointer<Utf16>> ppszDeviceInterfaceId,
),
    int Function(
  int hSwDevice,
  Pointer<GUID> pInterfaceClassGuid,
  Pointer<Utf16> pszReferenceString,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
  int fEnabled,
  Pointer<Pointer<Utf16>> ppszDeviceInterfaceId,
)>('SwDeviceInterfaceRegister');

int SwDeviceInterfaceSetState(
  int hSwDevice,
  Pointer<Utf16> pszDeviceInterfaceId,
  int fEnabled,
) =>
    _SwDeviceInterfaceSetState(
      hSwDevice,
      pszDeviceInterfaceId,
      fEnabled,
    );

late final _SwDeviceInterfaceSetState = _cfgmgr32.lookupFunction<
    Int32 Function(
  IntPtr hSwDevice,
  Pointer<Utf16> pszDeviceInterfaceId,
  Int32 fEnabled,
),
    int Function(
  int hSwDevice,
  Pointer<Utf16> pszDeviceInterfaceId,
  int fEnabled,
)>('SwDeviceInterfaceSetState');

int SwDevicePropertySet(
  int hSwDevice,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
) =>
    _SwDevicePropertySet(
      hSwDevice,
      cPropertyCount,
      pProperties,
    );

late final _SwDevicePropertySet = _cfgmgr32.lookupFunction<
    Int32 Function(
  IntPtr hSwDevice,
  Uint32 cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
),
    int Function(
  int hSwDevice,
  int cPropertyCount,
  Pointer<DEVPROPERTY> pProperties,
)>('SwDevicePropertySet');

int SwDeviceSetLifetime(
  int hSwDevice,
  int Lifetime,
) =>
    _SwDeviceSetLifetime(
      hSwDevice,
      Lifetime,
    );

late final _SwDeviceSetLifetime = _cfgmgr32.lookupFunction<
    Int32 Function(
  IntPtr hSwDevice,
  Int32 Lifetime,
),
    int Function(
  int hSwDevice,
  int Lifetime,
)>('SwDeviceSetLifetime');

void SwMemFree(
  Pointer pMem,
) =>
    _SwMemFree(
      pMem,
    );

late final _SwMemFree = _cfgmgr32.lookupFunction<
    Void Function(
  Pointer pMem,
),
    void Function(
  Pointer pMem,
)>('SwMemFree');
