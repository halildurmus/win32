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
import '../../foundation/structs.g.dart';
import '../../system/securitycenter/structs.g.dart';
import '../../system/threading/callbacks.g.dart'; // -----------------------------------------------------------------------

// wscapi.dll
// -----------------------------------------------------------------------
final _wscapi = DynamicLibrary.open('wscapi.dll');

int WscGetAntiMalwareUri(
  Pointer<Pointer<Utf16>> ppszUri,
) =>
    _WscGetAntiMalwareUri(
      ppszUri,
    );

late final _WscGetAntiMalwareUri = _wscapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> ppszUri,
),
    int Function(
  Pointer<Pointer<Utf16>> ppszUri,
)>('WscGetAntiMalwareUri');

int WscGetSecurityProviderHealth(
  int Providers,
  Pointer<Int32> pHealth,
) =>
    _WscGetSecurityProviderHealth(
      Providers,
      pHealth,
    );

late final _WscGetSecurityProviderHealth = _wscapi.lookupFunction<
    Int32 Function(
  Uint32 Providers,
  Pointer<Int32> pHealth,
),
    int Function(
  int Providers,
  Pointer<Int32> pHealth,
)>('WscGetSecurityProviderHealth');

int WscQueryAntiMalwareUri() => _WscQueryAntiMalwareUri();

late final _WscQueryAntiMalwareUri = _wscapi
    .lookupFunction<Int32 Function(), int Function()>('WscQueryAntiMalwareUri');

int WscRegisterForChanges(
  Pointer Reserved,
  Pointer<IntPtr> phCallbackRegistration,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpCallbackAddress,
  Pointer pContext,
) =>
    _WscRegisterForChanges(
      Reserved,
      phCallbackRegistration,
      lpCallbackAddress,
      pContext,
    );

late final _WscRegisterForChanges = _wscapi.lookupFunction<
    Int32 Function(
  Pointer Reserved,
  Pointer<IntPtr> phCallbackRegistration,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpCallbackAddress,
  Pointer pContext,
),
    int Function(
  Pointer Reserved,
  Pointer<IntPtr> phCallbackRegistration,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpCallbackAddress,
  Pointer pContext,
)>('WscRegisterForChanges');

int WscRegisterForUserNotifications() => _WscRegisterForUserNotifications();

late final _WscRegisterForUserNotifications =
    _wscapi.lookupFunction<Int32 Function(), int Function()>(
        'WscRegisterForUserNotifications');

int WscUnRegisterChanges(
  int hRegistrationHandle,
) =>
    _WscUnRegisterChanges(
      hRegistrationHandle,
    );

late final _WscUnRegisterChanges = _wscapi.lookupFunction<
    Int32 Function(
  IntPtr hRegistrationHandle,
),
    int Function(
  int hRegistrationHandle,
)>('WscUnRegisterChanges');
