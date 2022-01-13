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
import '../../security/structs.g.dart';
import '../../system/registry/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int GetAppContainerNamedObjectPath(
  int Token,
  int AppContainerSid,
  int ObjectPathLength,
  Pointer<Utf16> ObjectPath,
  Pointer<Uint32> ReturnLength,
) =>
    _GetAppContainerNamedObjectPath(
      Token,
      AppContainerSid,
      ObjectPathLength,
      ObjectPath,
      ReturnLength,
    );

late final _GetAppContainerNamedObjectPath = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Token,
  IntPtr AppContainerSid,
  Uint32 ObjectPathLength,
  Pointer<Utf16> ObjectPath,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int Token,
  int AppContainerSid,
  int ObjectPathLength,
  Pointer<Utf16> ObjectPath,
  Pointer<Uint32> ReturnLength,
)>('GetAppContainerNamedObjectPath');

// -----------------------------------------------------------------------
// api-ms-win-security-isolatedcontainer-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_security_isolatedcontainer_l1_1_1 =
    DynamicLibrary.open('api-ms-win-security-isolatedcontainer-l1-1-1.dll');

int IsProcessInWDAGContainer(
  Pointer Reserved,
  Pointer<Int32> isProcessInWDAGContainer,
) =>
    _IsProcessInWDAGContainer(
      Reserved,
      isProcessInWDAGContainer,
    );

late final _IsProcessInWDAGContainer =
    _api_ms_win_security_isolatedcontainer_l1_1_1.lookupFunction<
        Int32 Function(
  Pointer Reserved,
  Pointer<Int32> isProcessInWDAGContainer,
),
        int Function(
  Pointer Reserved,
  Pointer<Int32> isProcessInWDAGContainer,
)>('IsProcessInWDAGContainer');

// -----------------------------------------------------------------------
// api-ms-win-security-isolatedcontainer-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_security_isolatedcontainer_l1_1_0 =
    DynamicLibrary.open('api-ms-win-security-isolatedcontainer-l1-1-0.dll');

int IsProcessInIsolatedContainer(
  Pointer<Int32> isProcessInIsolatedContainer,
) =>
    _IsProcessInIsolatedContainer(
      isProcessInIsolatedContainer,
    );

late final _IsProcessInIsolatedContainer =
    _api_ms_win_security_isolatedcontainer_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Int32> isProcessInIsolatedContainer,
),
        int Function(
  Pointer<Int32> isProcessInIsolatedContainer,
)>('IsProcessInIsolatedContainer');

// -----------------------------------------------------------------------
// isolatedwindowsenvironmentutils.dll
// -----------------------------------------------------------------------
final _isolatedwindowsenvironmentutils =
    DynamicLibrary.open('isolatedwindowsenvironmentutils.dll');

int IsProcessInIsolatedWindowsEnvironment(
  Pointer<Int32> isProcessInIsolatedWindowsEnvironment,
) =>
    _IsProcessInIsolatedWindowsEnvironment(
      isProcessInIsolatedWindowsEnvironment,
    );

late final _IsProcessInIsolatedWindowsEnvironment =
    _isolatedwindowsenvironmentutils.lookupFunction<
        Int32 Function(
  Pointer<Int32> isProcessInIsolatedWindowsEnvironment,
),
        int Function(
  Pointer<Int32> isProcessInIsolatedWindowsEnvironment,
)>('IsProcessInIsolatedWindowsEnvironment');

// -----------------------------------------------------------------------
// userenv.dll
// -----------------------------------------------------------------------
final _userenv = DynamicLibrary.open('userenv.dll');

int CreateAppContainerProfile(
  Pointer<Utf16> pszAppContainerName,
  Pointer<Utf16> pszDisplayName,
  Pointer<Utf16> pszDescription,
  Pointer<SID_AND_ATTRIBUTES> pCapabilities,
  int dwCapabilityCount,
  Pointer<IntPtr> ppSidAppContainerSid,
) =>
    _CreateAppContainerProfile(
      pszAppContainerName,
      pszDisplayName,
      pszDescription,
      pCapabilities,
      dwCapabilityCount,
      ppSidAppContainerSid,
    );

late final _CreateAppContainerProfile = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszAppContainerName,
  Pointer<Utf16> pszDisplayName,
  Pointer<Utf16> pszDescription,
  Pointer<SID_AND_ATTRIBUTES> pCapabilities,
  Uint32 dwCapabilityCount,
  Pointer<IntPtr> ppSidAppContainerSid,
),
    int Function(
  Pointer<Utf16> pszAppContainerName,
  Pointer<Utf16> pszDisplayName,
  Pointer<Utf16> pszDescription,
  Pointer<SID_AND_ATTRIBUTES> pCapabilities,
  int dwCapabilityCount,
  Pointer<IntPtr> ppSidAppContainerSid,
)>('CreateAppContainerProfile');

int DeleteAppContainerProfile(
  Pointer<Utf16> pszAppContainerName,
) =>
    _DeleteAppContainerProfile(
      pszAppContainerName,
    );

late final _DeleteAppContainerProfile = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszAppContainerName,
),
    int Function(
  Pointer<Utf16> pszAppContainerName,
)>('DeleteAppContainerProfile');

int DeriveAppContainerSidFromAppContainerName(
  Pointer<Utf16> pszAppContainerName,
  Pointer<IntPtr> ppsidAppContainerSid,
) =>
    _DeriveAppContainerSidFromAppContainerName(
      pszAppContainerName,
      ppsidAppContainerSid,
    );

late final _DeriveAppContainerSidFromAppContainerName = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszAppContainerName,
  Pointer<IntPtr> ppsidAppContainerSid,
),
    int Function(
  Pointer<Utf16> pszAppContainerName,
  Pointer<IntPtr> ppsidAppContainerSid,
)>('DeriveAppContainerSidFromAppContainerName');

int DeriveRestrictedAppContainerSidFromAppContainerSidAndRestrictedName(
  int psidAppContainerSid,
  Pointer<Utf16> pszRestrictedAppContainerName,
  Pointer<IntPtr> ppsidRestrictedAppContainerSid,
) =>
    _DeriveRestrictedAppContainerSidFromAppContainerSidAndRestrictedName(
      psidAppContainerSid,
      pszRestrictedAppContainerName,
      ppsidRestrictedAppContainerSid,
    );

late final _DeriveRestrictedAppContainerSidFromAppContainerSidAndRestrictedName =
    _userenv.lookupFunction<
        Int32 Function(
  IntPtr psidAppContainerSid,
  Pointer<Utf16> pszRestrictedAppContainerName,
  Pointer<IntPtr> ppsidRestrictedAppContainerSid,
),
        int Function(
  int psidAppContainerSid,
  Pointer<Utf16> pszRestrictedAppContainerName,
  Pointer<IntPtr> ppsidRestrictedAppContainerSid,
)>('DeriveRestrictedAppContainerSidFromAppContainerSidAndRestrictedName');

int GetAppContainerFolderPath(
  Pointer<Utf16> pszAppContainerSid,
  Pointer<Pointer<Utf16>> ppszPath,
) =>
    _GetAppContainerFolderPath(
      pszAppContainerSid,
      ppszPath,
    );

late final _GetAppContainerFolderPath = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszAppContainerSid,
  Pointer<Pointer<Utf16>> ppszPath,
),
    int Function(
  Pointer<Utf16> pszAppContainerSid,
  Pointer<Pointer<Utf16>> ppszPath,
)>('GetAppContainerFolderPath');

int GetAppContainerRegistryLocation(
  int desiredAccess,
  Pointer<IntPtr> phAppContainerKey,
) =>
    _GetAppContainerRegistryLocation(
      desiredAccess,
      phAppContainerKey,
    );

late final _GetAppContainerRegistryLocation = _userenv.lookupFunction<
    Int32 Function(
  Uint32 desiredAccess,
  Pointer<IntPtr> phAppContainerKey,
),
    int Function(
  int desiredAccess,
  Pointer<IntPtr> phAppContainerKey,
)>('GetAppContainerRegistryLocation');
