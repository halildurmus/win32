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
import '../../system/power/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/power/callbacks.g.dart';
import '../../system/registry/structs.g.dart';
import '../../system/threading/structs.g.dart'; // -----------------------------------------------------------------------

// powrprof.dll
// -----------------------------------------------------------------------
final _powrprof = DynamicLibrary.open('powrprof.dll');

int CallNtPowerInformation(
  int InformationLevel,
  Pointer InputBuffer,
  int InputBufferLength,
  Pointer OutputBuffer,
  int OutputBufferLength,
) =>
    _CallNtPowerInformation(
      InformationLevel,
      InputBuffer,
      InputBufferLength,
      OutputBuffer,
      OutputBufferLength,
    );

late final _CallNtPowerInformation = _powrprof.lookupFunction<
    Int32 Function(
  Int32 InformationLevel,
  Pointer InputBuffer,
  Uint32 InputBufferLength,
  Pointer OutputBuffer,
  Uint32 OutputBufferLength,
),
    int Function(
  int InformationLevel,
  Pointer InputBuffer,
  int InputBufferLength,
  Pointer OutputBuffer,
  int OutputBufferLength,
)>('CallNtPowerInformation');

int CanUserWritePwrScheme() => _CanUserWritePwrScheme();

late final _CanUserWritePwrScheme = _powrprof
    .lookupFunction<Uint8 Function(), int Function()>('CanUserWritePwrScheme');

int DeletePwrScheme(
  int uiID,
) =>
    _DeletePwrScheme(
      uiID,
    );

late final _DeletePwrScheme = _powrprof.lookupFunction<
    Uint8 Function(
  Uint32 uiID,
),
    int Function(
  int uiID,
)>('DeletePwrScheme');

int DevicePowerClose() => _DevicePowerClose();

late final _DevicePowerClose = _powrprof
    .lookupFunction<Uint8 Function(), int Function()>('DevicePowerClose');

int DevicePowerEnumDevices(
  int QueryIndex,
  int QueryInterpretationFlags,
  int QueryFlags,
  Pointer<Uint8> pReturnBuffer,
  Pointer<Uint32> pBufferSize,
) =>
    _DevicePowerEnumDevices(
      QueryIndex,
      QueryInterpretationFlags,
      QueryFlags,
      pReturnBuffer,
      pBufferSize,
    );

late final _DevicePowerEnumDevices = _powrprof.lookupFunction<
    Uint8 Function(
  Uint32 QueryIndex,
  Uint32 QueryInterpretationFlags,
  Uint32 QueryFlags,
  Pointer<Uint8> pReturnBuffer,
  Pointer<Uint32> pBufferSize,
),
    int Function(
  int QueryIndex,
  int QueryInterpretationFlags,
  int QueryFlags,
  Pointer<Uint8> pReturnBuffer,
  Pointer<Uint32> pBufferSize,
)>('DevicePowerEnumDevices');

int DevicePowerOpen(
  int DebugMask,
) =>
    _DevicePowerOpen(
      DebugMask,
    );

late final _DevicePowerOpen = _powrprof.lookupFunction<
    Uint8 Function(
  Uint32 DebugMask,
),
    int Function(
  int DebugMask,
)>('DevicePowerOpen');

int DevicePowerSetDeviceState(
  Pointer<Utf16> DeviceDescription,
  int SetFlags,
  Pointer SetData,
) =>
    _DevicePowerSetDeviceState(
      DeviceDescription,
      SetFlags,
      SetData,
    );

late final _DevicePowerSetDeviceState = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> DeviceDescription,
  Uint32 SetFlags,
  Pointer SetData,
),
    int Function(
  Pointer<Utf16> DeviceDescription,
  int SetFlags,
  Pointer SetData,
)>('DevicePowerSetDeviceState');

int EnumPwrSchemes(
  Pointer<NativeFunction<PWRSCHEMESENUMPROC>> lpfn,
  int lParam,
) =>
    _EnumPwrSchemes(
      lpfn,
      lParam,
    );

late final _EnumPwrSchemes = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<NativeFunction<PWRSCHEMESENUMPROC>> lpfn,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<PWRSCHEMESENUMPROC>> lpfn,
  int lParam,
)>('EnumPwrSchemes');

int GetActivePwrScheme(
  Pointer<Uint32> puiID,
) =>
    _GetActivePwrScheme(
      puiID,
    );

late final _GetActivePwrScheme = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<Uint32> puiID,
),
    int Function(
  Pointer<Uint32> puiID,
)>('GetActivePwrScheme');

int GetCurrentPowerPolicies(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
) =>
    _GetCurrentPowerPolicies(
      pGlobalPowerPolicy,
      pPowerPolicy,
    );

late final _GetCurrentPowerPolicies = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
),
    int Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
)>('GetCurrentPowerPolicies');

int GetPwrCapabilities(
  Pointer<SYSTEM_POWER_CAPABILITIES> lpspc,
) =>
    _GetPwrCapabilities(
      lpspc,
    );

late final _GetPwrCapabilities = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<SYSTEM_POWER_CAPABILITIES> lpspc,
),
    int Function(
  Pointer<SYSTEM_POWER_CAPABILITIES> lpspc,
)>('GetPwrCapabilities');

int GetPwrDiskSpindownRange(
  Pointer<Uint32> puiMax,
  Pointer<Uint32> puiMin,
) =>
    _GetPwrDiskSpindownRange(
      puiMax,
      puiMin,
    );

late final _GetPwrDiskSpindownRange = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<Uint32> puiMax,
  Pointer<Uint32> puiMin,
),
    int Function(
  Pointer<Uint32> puiMax,
  Pointer<Uint32> puiMin,
)>('GetPwrDiskSpindownRange');

int IsAdminOverrideActive(
  Pointer<ADMINISTRATOR_POWER_POLICY> papp,
) =>
    _IsAdminOverrideActive(
      papp,
    );

late final _IsAdminOverrideActive = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<ADMINISTRATOR_POWER_POLICY> papp,
),
    int Function(
  Pointer<ADMINISTRATOR_POWER_POLICY> papp,
)>('IsAdminOverrideActive');

int IsPwrHibernateAllowed() => _IsPwrHibernateAllowed();

late final _IsPwrHibernateAllowed = _powrprof
    .lookupFunction<Uint8 Function(), int Function()>('IsPwrHibernateAllowed');

int IsPwrShutdownAllowed() => _IsPwrShutdownAllowed();

late final _IsPwrShutdownAllowed = _powrprof
    .lookupFunction<Uint8 Function(), int Function()>('IsPwrShutdownAllowed');

int IsPwrSuspendAllowed() => _IsPwrSuspendAllowed();

late final _IsPwrSuspendAllowed = _powrprof
    .lookupFunction<Uint8 Function(), int Function()>('IsPwrSuspendAllowed');

int PowerCanRestoreIndividualDefaultPowerScheme(
  Pointer<GUID> SchemeGuid,
) =>
    _PowerCanRestoreIndividualDefaultPowerScheme(
      SchemeGuid,
    );

late final _PowerCanRestoreIndividualDefaultPowerScheme =
    _powrprof.lookupFunction<
        Uint32 Function(
  Pointer<GUID> SchemeGuid,
),
        int Function(
  Pointer<GUID> SchemeGuid,
)>('PowerCanRestoreIndividualDefaultPowerScheme');

int PowerCreatePossibleSetting(
  int RootSystemPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
) =>
    _PowerCreatePossibleSetting(
      RootSystemPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      PossibleSettingIndex,
    );

late final _PowerCreatePossibleSetting = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootSystemPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 PossibleSettingIndex,
),
    int Function(
  int RootSystemPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
)>('PowerCreatePossibleSetting');

int PowerCreateSetting(
  int RootSystemPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
) =>
    _PowerCreateSetting(
      RootSystemPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
    );

late final _PowerCreateSetting = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootSystemPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
),
    int Function(
  int RootSystemPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
)>('PowerCreateSetting');

int PowerDeleteScheme(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
) =>
    _PowerDeleteScheme(
      RootPowerKey,
      SchemeGuid,
    );

late final _PowerDeleteScheme = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
)>('PowerDeleteScheme');

int PowerDeterminePlatformRole() => _PowerDeterminePlatformRole();

late final _PowerDeterminePlatformRole =
    _powrprof.lookupFunction<Int32 Function(), int Function()>(
        'PowerDeterminePlatformRole');

int PowerDeterminePlatformRoleEx(
  int Version,
) =>
    _PowerDeterminePlatformRoleEx(
      Version,
    );

late final _PowerDeterminePlatformRoleEx = _powrprof.lookupFunction<
    Int32 Function(
  Uint32 Version,
),
    int Function(
  int Version,
)>('PowerDeterminePlatformRoleEx');

int PowerDuplicateScheme(
  int RootPowerKey,
  Pointer<GUID> SourceSchemeGuid,
  Pointer<Pointer<GUID>> DestinationSchemeGuid,
) =>
    _PowerDuplicateScheme(
      RootPowerKey,
      SourceSchemeGuid,
      DestinationSchemeGuid,
    );

late final _PowerDuplicateScheme = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SourceSchemeGuid,
  Pointer<Pointer<GUID>> DestinationSchemeGuid,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SourceSchemeGuid,
  Pointer<Pointer<GUID>> DestinationSchemeGuid,
)>('PowerDuplicateScheme');

int PowerEnumerate(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  int AccessFlags,
  int Index,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerEnumerate(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      AccessFlags,
      Index,
      Buffer,
      BufferSize,
    );

late final _PowerEnumerate = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Int32 AccessFlags,
  Uint32 Index,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  int AccessFlags,
  int Index,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerEnumerate');

int PowerGetActiveScheme(
  int UserRootPowerKey,
  Pointer<Pointer<GUID>> ActivePolicyGuid,
) =>
    _PowerGetActiveScheme(
      UserRootPowerKey,
      ActivePolicyGuid,
    );

late final _PowerGetActiveScheme = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr UserRootPowerKey,
  Pointer<Pointer<GUID>> ActivePolicyGuid,
),
    int Function(
  int UserRootPowerKey,
  Pointer<Pointer<GUID>> ActivePolicyGuid,
)>('PowerGetActiveScheme');

int PowerImportPowerScheme(
  int RootPowerKey,
  Pointer<Utf16> ImportFileNamePath,
  Pointer<Pointer<GUID>> DestinationSchemeGuid,
) =>
    _PowerImportPowerScheme(
      RootPowerKey,
      ImportFileNamePath,
      DestinationSchemeGuid,
    );

late final _PowerImportPowerScheme = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<Utf16> ImportFileNamePath,
  Pointer<Pointer<GUID>> DestinationSchemeGuid,
),
    int Function(
  int RootPowerKey,
  Pointer<Utf16> ImportFileNamePath,
  Pointer<Pointer<GUID>> DestinationSchemeGuid,
)>('PowerImportPowerScheme');

int PowerIsSettingRangeDefined(
  Pointer<GUID> SubKeyGuid,
  Pointer<GUID> SettingGuid,
) =>
    _PowerIsSettingRangeDefined(
      SubKeyGuid,
      SettingGuid,
    );

late final _PowerIsSettingRangeDefined = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<GUID> SubKeyGuid,
  Pointer<GUID> SettingGuid,
),
    int Function(
  Pointer<GUID> SubKeyGuid,
  Pointer<GUID> SettingGuid,
)>('PowerIsSettingRangeDefined');

int PowerOpenSystemPowerKey(
  Pointer<IntPtr> phSystemPowerKey,
  int Access,
  int OpenExisting,
) =>
    _PowerOpenSystemPowerKey(
      phSystemPowerKey,
      Access,
      OpenExisting,
    );

late final _PowerOpenSystemPowerKey = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phSystemPowerKey,
  Uint32 Access,
  Int32 OpenExisting,
),
    int Function(
  Pointer<IntPtr> phSystemPowerKey,
  int Access,
  int OpenExisting,
)>('PowerOpenSystemPowerKey');

int PowerOpenUserPowerKey(
  Pointer<IntPtr> phUserPowerKey,
  int Access,
  int OpenExisting,
) =>
    _PowerOpenUserPowerKey(
      phUserPowerKey,
      Access,
      OpenExisting,
    );

late final _PowerOpenUserPowerKey = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phUserPowerKey,
  Uint32 Access,
  Int32 OpenExisting,
),
    int Function(
  Pointer<IntPtr> phUserPowerKey,
  int Access,
  int OpenExisting,
)>('PowerOpenUserPowerKey');

int PowerReadACDefaultIndex(
  int RootPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> AcDefaultIndex,
) =>
    _PowerReadACDefaultIndex(
      RootPowerKey,
      SchemePersonalityGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      AcDefaultIndex,
    );

late final _PowerReadACDefaultIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> AcDefaultIndex,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> AcDefaultIndex,
)>('PowerReadACDefaultIndex');

int PowerReadACValue(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadACValue(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Type,
      Buffer,
      BufferSize,
    );

late final _PowerReadACValue = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadACValue');

int PowerReadACValueIndex(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> AcValueIndex,
) =>
    _PowerReadACValueIndex(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      AcValueIndex,
    );

late final _PowerReadACValueIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> AcValueIndex,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> AcValueIndex,
)>('PowerReadACValueIndex');

int PowerReadDCDefaultIndex(
  int RootPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> DcDefaultIndex,
) =>
    _PowerReadDCDefaultIndex(
      RootPowerKey,
      SchemePersonalityGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      DcDefaultIndex,
    );

late final _PowerReadDCDefaultIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> DcDefaultIndex,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> DcDefaultIndex,
)>('PowerReadDCDefaultIndex');

int PowerReadDCValue(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadDCValue(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Type,
      Buffer,
      BufferSize,
    );

late final _PowerReadDCValue = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadDCValue');

int PowerReadDCValueIndex(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> DcValueIndex,
) =>
    _PowerReadDCValueIndex(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      DcValueIndex,
    );

late final _PowerReadDCValueIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> DcValueIndex,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> DcValueIndex,
)>('PowerReadDCValueIndex');

int PowerReadDescription(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadDescription(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerReadDescription = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadDescription');

int PowerReadFriendlyName(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadFriendlyName(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerReadFriendlyName = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadFriendlyName');

int PowerReadIconResourceSpecifier(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadIconResourceSpecifier(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerReadIconResourceSpecifier = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadIconResourceSpecifier');

int PowerReadPossibleDescription(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadPossibleDescription(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      PossibleSettingIndex,
      Buffer,
      BufferSize,
    );

late final _PowerReadPossibleDescription = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadPossibleDescription');

int PowerReadPossibleFriendlyName(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadPossibleFriendlyName(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      PossibleSettingIndex,
      Buffer,
      BufferSize,
    );

late final _PowerReadPossibleFriendlyName = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadPossibleFriendlyName');

int PowerReadPossibleValue(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadPossibleValue(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Type,
      PossibleSettingIndex,
      Buffer,
      BufferSize,
    );

late final _PowerReadPossibleValue = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  Uint32 PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> Type,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadPossibleValue');

int PowerReadSettingAttributes(
  Pointer<GUID> SubGroupGuid,
  Pointer<GUID> PowerSettingGuid,
) =>
    _PowerReadSettingAttributes(
      SubGroupGuid,
      PowerSettingGuid,
    );

late final _PowerReadSettingAttributes = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<GUID> SubGroupGuid,
  Pointer<GUID> PowerSettingGuid,
),
    int Function(
  Pointer<GUID> SubGroupGuid,
  Pointer<GUID> PowerSettingGuid,
)>('PowerReadSettingAttributes');

int PowerReadValueIncrement(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueIncrement,
) =>
    _PowerReadValueIncrement(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      ValueIncrement,
    );

late final _PowerReadValueIncrement = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueIncrement,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueIncrement,
)>('PowerReadValueIncrement');

int PowerReadValueMax(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueMaximum,
) =>
    _PowerReadValueMax(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      ValueMaximum,
    );

late final _PowerReadValueMax = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueMaximum,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueMaximum,
)>('PowerReadValueMax');

int PowerReadValueMin(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueMinimum,
) =>
    _PowerReadValueMin(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      ValueMinimum,
    );

late final _PowerReadValueMin = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueMinimum,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint32> ValueMinimum,
)>('PowerReadValueMin');

int PowerReadValueUnitsSpecifier(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _PowerReadValueUnitsSpecifier(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerReadValueUnitsSpecifier = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Pointer<Uint32> BufferSize,
)>('PowerReadValueUnitsSpecifier');

int PowerRegisterForEffectivePowerModeNotifications(
  int Version,
  Pointer<NativeFunction<EFFECTIVE_POWER_MODE_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> RegistrationHandle,
) =>
    _PowerRegisterForEffectivePowerModeNotifications(
      Version,
      Callback,
      Context,
      RegistrationHandle,
    );

late final _PowerRegisterForEffectivePowerModeNotifications =
    _powrprof.lookupFunction<
        Int32 Function(
  Uint32 Version,
  Pointer<NativeFunction<EFFECTIVE_POWER_MODE_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> RegistrationHandle,
),
        int Function(
  int Version,
  Pointer<NativeFunction<EFFECTIVE_POWER_MODE_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> RegistrationHandle,
)>('PowerRegisterForEffectivePowerModeNotifications');

int PowerRegisterSuspendResumeNotification(
  int Flags,
  int Recipient,
  Pointer<Pointer> RegistrationHandle,
) =>
    _PowerRegisterSuspendResumeNotification(
      Flags,
      Recipient,
      RegistrationHandle,
    );

late final _PowerRegisterSuspendResumeNotification = _powrprof.lookupFunction<
    Uint32 Function(
  Uint32 Flags,
  IntPtr Recipient,
  Pointer<Pointer> RegistrationHandle,
),
    int Function(
  int Flags,
  int Recipient,
  Pointer<Pointer> RegistrationHandle,
)>('PowerRegisterSuspendResumeNotification');

int PowerRemovePowerSetting(
  Pointer<GUID> PowerSettingSubKeyGuid,
  Pointer<GUID> PowerSettingGuid,
) =>
    _PowerRemovePowerSetting(
      PowerSettingSubKeyGuid,
      PowerSettingGuid,
    );

late final _PowerRemovePowerSetting = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<GUID> PowerSettingSubKeyGuid,
  Pointer<GUID> PowerSettingGuid,
),
    int Function(
  Pointer<GUID> PowerSettingSubKeyGuid,
  Pointer<GUID> PowerSettingGuid,
)>('PowerRemovePowerSetting');

int PowerReplaceDefaultPowerSchemes() => _PowerReplaceDefaultPowerSchemes();

late final _PowerReplaceDefaultPowerSchemes =
    _powrprof.lookupFunction<Uint32 Function(), int Function()>(
        'PowerReplaceDefaultPowerSchemes');

int PowerReportThermalEvent(
  Pointer<THERMAL_EVENT> Event,
) =>
    _PowerReportThermalEvent(
      Event,
    );

late final _PowerReportThermalEvent = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<THERMAL_EVENT> Event,
),
    int Function(
  Pointer<THERMAL_EVENT> Event,
)>('PowerReportThermalEvent');

int PowerRestoreDefaultPowerSchemes() => _PowerRestoreDefaultPowerSchemes();

late final _PowerRestoreDefaultPowerSchemes =
    _powrprof.lookupFunction<Uint32 Function(), int Function()>(
        'PowerRestoreDefaultPowerSchemes');

int PowerRestoreIndividualDefaultPowerScheme(
  Pointer<GUID> SchemeGuid,
) =>
    _PowerRestoreIndividualDefaultPowerScheme(
      SchemeGuid,
    );

late final _PowerRestoreIndividualDefaultPowerScheme = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<GUID> SchemeGuid,
),
    int Function(
  Pointer<GUID> SchemeGuid,
)>('PowerRestoreIndividualDefaultPowerScheme');

int PowerSetActiveScheme(
  int UserRootPowerKey,
  Pointer<GUID> SchemeGuid,
) =>
    _PowerSetActiveScheme(
      UserRootPowerKey,
      SchemeGuid,
    );

late final _PowerSetActiveScheme = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr UserRootPowerKey,
  Pointer<GUID> SchemeGuid,
),
    int Function(
  int UserRootPowerKey,
  Pointer<GUID> SchemeGuid,
)>('PowerSetActiveScheme');

int PowerSettingAccessCheck(
  int AccessFlags,
  Pointer<GUID> PowerGuid,
) =>
    _PowerSettingAccessCheck(
      AccessFlags,
      PowerGuid,
    );

late final _PowerSettingAccessCheck = _powrprof.lookupFunction<
    Uint32 Function(
  Int32 AccessFlags,
  Pointer<GUID> PowerGuid,
),
    int Function(
  int AccessFlags,
  Pointer<GUID> PowerGuid,
)>('PowerSettingAccessCheck');

int PowerSettingAccessCheckEx(
  int AccessFlags,
  Pointer<GUID> PowerGuid,
  int AccessType,
) =>
    _PowerSettingAccessCheckEx(
      AccessFlags,
      PowerGuid,
      AccessType,
    );

late final _PowerSettingAccessCheckEx = _powrprof.lookupFunction<
    Uint32 Function(
  Int32 AccessFlags,
  Pointer<GUID> PowerGuid,
  Uint32 AccessType,
),
    int Function(
  int AccessFlags,
  Pointer<GUID> PowerGuid,
  int AccessType,
)>('PowerSettingAccessCheckEx');

int PowerSettingRegisterNotification(
  Pointer<GUID> SettingGuid,
  int Flags,
  int Recipient,
  Pointer<Pointer> RegistrationHandle,
) =>
    _PowerSettingRegisterNotification(
      SettingGuid,
      Flags,
      Recipient,
      RegistrationHandle,
    );

late final _PowerSettingRegisterNotification = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<GUID> SettingGuid,
  Uint32 Flags,
  IntPtr Recipient,
  Pointer<Pointer> RegistrationHandle,
),
    int Function(
  Pointer<GUID> SettingGuid,
  int Flags,
  int Recipient,
  Pointer<Pointer> RegistrationHandle,
)>('PowerSettingRegisterNotification');

int PowerSettingUnregisterNotification(
  int RegistrationHandle,
) =>
    _PowerSettingUnregisterNotification(
      RegistrationHandle,
    );

late final _PowerSettingUnregisterNotification = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RegistrationHandle,
),
    int Function(
  int RegistrationHandle,
)>('PowerSettingUnregisterNotification');

int PowerUnregisterFromEffectivePowerModeNotifications(
  Pointer RegistrationHandle,
) =>
    _PowerUnregisterFromEffectivePowerModeNotifications(
      RegistrationHandle,
    );

late final _PowerUnregisterFromEffectivePowerModeNotifications =
    _powrprof.lookupFunction<
        Int32 Function(
  Pointer RegistrationHandle,
),
        int Function(
  Pointer RegistrationHandle,
)>('PowerUnregisterFromEffectivePowerModeNotifications');

int PowerUnregisterSuspendResumeNotification(
  int RegistrationHandle,
) =>
    _PowerUnregisterSuspendResumeNotification(
      RegistrationHandle,
    );

late final _PowerUnregisterSuspendResumeNotification = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RegistrationHandle,
),
    int Function(
  int RegistrationHandle,
)>('PowerUnregisterSuspendResumeNotification');

int PowerWriteACDefaultIndex(
  int RootSystemPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int DefaultAcIndex,
) =>
    _PowerWriteACDefaultIndex(
      RootSystemPowerKey,
      SchemePersonalityGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      DefaultAcIndex,
    );

late final _PowerWriteACDefaultIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootSystemPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 DefaultAcIndex,
),
    int Function(
  int RootSystemPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int DefaultAcIndex,
)>('PowerWriteACDefaultIndex');

int PowerWriteACValueIndex(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int AcValueIndex,
) =>
    _PowerWriteACValueIndex(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      AcValueIndex,
    );

late final _PowerWriteACValueIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 AcValueIndex,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int AcValueIndex,
)>('PowerWriteACValueIndex');

int PowerWriteDCDefaultIndex(
  int RootSystemPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int DefaultDcIndex,
) =>
    _PowerWriteDCDefaultIndex(
      RootSystemPowerKey,
      SchemePersonalityGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      DefaultDcIndex,
    );

late final _PowerWriteDCDefaultIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootSystemPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 DefaultDcIndex,
),
    int Function(
  int RootSystemPowerKey,
  Pointer<GUID> SchemePersonalityGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int DefaultDcIndex,
)>('PowerWriteDCDefaultIndex');

int PowerWriteDCValueIndex(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int DcValueIndex,
) =>
    _PowerWriteDCValueIndex(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      DcValueIndex,
    );

late final _PowerWriteDCValueIndex = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 DcValueIndex,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int DcValueIndex,
)>('PowerWriteDCValueIndex');

int PowerWriteDescription(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
) =>
    _PowerWriteDescription(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerWriteDescription = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
)>('PowerWriteDescription');

int PowerWriteFriendlyName(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
) =>
    _PowerWriteFriendlyName(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerWriteFriendlyName = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
)>('PowerWriteFriendlyName');

int PowerWriteIconResourceSpecifier(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
) =>
    _PowerWriteIconResourceSpecifier(
      RootPowerKey,
      SchemeGuid,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerWriteIconResourceSpecifier = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SchemeGuid,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
)>('PowerWriteIconResourceSpecifier');

int PowerWritePossibleDescription(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  int BufferSize,
) =>
    _PowerWritePossibleDescription(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      PossibleSettingIndex,
      Buffer,
      BufferSize,
    );

late final _PowerWritePossibleDescription = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  int BufferSize,
)>('PowerWritePossibleDescription');

int PowerWritePossibleFriendlyName(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  int BufferSize,
) =>
    _PowerWritePossibleFriendlyName(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      PossibleSettingIndex,
      Buffer,
      BufferSize,
    );

late final _PowerWritePossibleFriendlyName = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  int BufferSize,
)>('PowerWritePossibleFriendlyName');

int PowerWritePossibleValue(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int Type,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  int BufferSize,
) =>
    _PowerWritePossibleValue(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Type,
      PossibleSettingIndex,
      Buffer,
      BufferSize,
    );

late final _PowerWritePossibleValue = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 Type,
  Uint32 PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int Type,
  int PossibleSettingIndex,
  Pointer<Uint8> Buffer,
  int BufferSize,
)>('PowerWritePossibleValue');

int PowerWriteSettingAttributes(
  Pointer<GUID> SubGroupGuid,
  Pointer<GUID> PowerSettingGuid,
  int Attributes,
) =>
    _PowerWriteSettingAttributes(
      SubGroupGuid,
      PowerSettingGuid,
      Attributes,
    );

late final _PowerWriteSettingAttributes = _powrprof.lookupFunction<
    Uint32 Function(
  Pointer<GUID> SubGroupGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 Attributes,
),
    int Function(
  Pointer<GUID> SubGroupGuid,
  Pointer<GUID> PowerSettingGuid,
  int Attributes,
)>('PowerWriteSettingAttributes');

int PowerWriteValueIncrement(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int ValueIncrement,
) =>
    _PowerWriteValueIncrement(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      ValueIncrement,
    );

late final _PowerWriteValueIncrement = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 ValueIncrement,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int ValueIncrement,
)>('PowerWriteValueIncrement');

int PowerWriteValueMax(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int ValueMaximum,
) =>
    _PowerWriteValueMax(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      ValueMaximum,
    );

late final _PowerWriteValueMax = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 ValueMaximum,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int ValueMaximum,
)>('PowerWriteValueMax');

int PowerWriteValueMin(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int ValueMinimum,
) =>
    _PowerWriteValueMin(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      ValueMinimum,
    );

late final _PowerWriteValueMin = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Uint32 ValueMinimum,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  int ValueMinimum,
)>('PowerWriteValueMin');

int PowerWriteValueUnitsSpecifier(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
) =>
    _PowerWriteValueUnitsSpecifier(
      RootPowerKey,
      SubGroupOfPowerSettingsGuid,
      PowerSettingGuid,
      Buffer,
      BufferSize,
    );

late final _PowerWriteValueUnitsSpecifier = _powrprof.lookupFunction<
    Uint32 Function(
  IntPtr RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
),
    int Function(
  int RootPowerKey,
  Pointer<GUID> SubGroupOfPowerSettingsGuid,
  Pointer<GUID> PowerSettingGuid,
  Pointer<Uint8> Buffer,
  int BufferSize,
)>('PowerWriteValueUnitsSpecifier');

int ReadGlobalPwrPolicy(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
) =>
    _ReadGlobalPwrPolicy(
      pGlobalPowerPolicy,
    );

late final _ReadGlobalPwrPolicy = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
),
    int Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
)>('ReadGlobalPwrPolicy');

int ReadProcessorPwrScheme(
  int uiID,
  Pointer<MACHINE_PROCESSOR_POWER_POLICY> pMachineProcessorPowerPolicy,
) =>
    _ReadProcessorPwrScheme(
      uiID,
      pMachineProcessorPowerPolicy,
    );

late final _ReadProcessorPwrScheme = _powrprof.lookupFunction<
    Uint8 Function(
  Uint32 uiID,
  Pointer<MACHINE_PROCESSOR_POWER_POLICY> pMachineProcessorPowerPolicy,
),
    int Function(
  int uiID,
  Pointer<MACHINE_PROCESSOR_POWER_POLICY> pMachineProcessorPowerPolicy,
)>('ReadProcessorPwrScheme');

int ReadPwrScheme(
  int uiID,
  Pointer<POWER_POLICY> pPowerPolicy,
) =>
    _ReadPwrScheme(
      uiID,
      pPowerPolicy,
    );

late final _ReadPwrScheme = _powrprof.lookupFunction<
    Uint8 Function(
  Uint32 uiID,
  Pointer<POWER_POLICY> pPowerPolicy,
),
    int Function(
  int uiID,
  Pointer<POWER_POLICY> pPowerPolicy,
)>('ReadPwrScheme');

int SetActivePwrScheme(
  int uiID,
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
) =>
    _SetActivePwrScheme(
      uiID,
      pGlobalPowerPolicy,
      pPowerPolicy,
    );

late final _SetActivePwrScheme = _powrprof.lookupFunction<
    Uint8 Function(
  Uint32 uiID,
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
),
    int Function(
  int uiID,
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
)>('SetActivePwrScheme');

int SetSuspendState(
  int bHibernate,
  int bForce,
  int bWakeupEventsDisabled,
) =>
    _SetSuspendState(
      bHibernate,
      bForce,
      bWakeupEventsDisabled,
    );

late final _SetSuspendState = _powrprof.lookupFunction<
    Uint8 Function(
  Uint8 bHibernate,
  Uint8 bForce,
  Uint8 bWakeupEventsDisabled,
),
    int Function(
  int bHibernate,
  int bForce,
  int bWakeupEventsDisabled,
)>('SetSuspendState');

int ValidatePowerPolicies(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
) =>
    _ValidatePowerPolicies(
      pGlobalPowerPolicy,
      pPowerPolicy,
    );

late final _ValidatePowerPolicies = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
),
    int Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
  Pointer<POWER_POLICY> pPowerPolicy,
)>('ValidatePowerPolicies');

int WriteGlobalPwrPolicy(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
) =>
    _WriteGlobalPwrPolicy(
      pGlobalPowerPolicy,
    );

late final _WriteGlobalPwrPolicy = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
),
    int Function(
  Pointer<GLOBAL_POWER_POLICY> pGlobalPowerPolicy,
)>('WriteGlobalPwrPolicy');

int WriteProcessorPwrScheme(
  int uiID,
  Pointer<MACHINE_PROCESSOR_POWER_POLICY> pMachineProcessorPowerPolicy,
) =>
    _WriteProcessorPwrScheme(
      uiID,
      pMachineProcessorPowerPolicy,
    );

late final _WriteProcessorPwrScheme = _powrprof.lookupFunction<
    Uint8 Function(
  Uint32 uiID,
  Pointer<MACHINE_PROCESSOR_POWER_POLICY> pMachineProcessorPowerPolicy,
),
    int Function(
  int uiID,
  Pointer<MACHINE_PROCESSOR_POWER_POLICY> pMachineProcessorPowerPolicy,
)>('WriteProcessorPwrScheme');

int WritePwrScheme(
  Pointer<Uint32> puiID,
  Pointer<Utf16> lpszSchemeName,
  Pointer<Utf16> lpszDescription,
  Pointer<POWER_POLICY> lpScheme,
) =>
    _WritePwrScheme(
      puiID,
      lpszSchemeName,
      lpszDescription,
      lpScheme,
    );

late final _WritePwrScheme = _powrprof.lookupFunction<
    Uint8 Function(
  Pointer<Uint32> puiID,
  Pointer<Utf16> lpszSchemeName,
  Pointer<Utf16> lpszDescription,
  Pointer<POWER_POLICY> lpScheme,
),
    int Function(
  Pointer<Uint32> puiID,
  Pointer<Utf16> lpszSchemeName,
  Pointer<Utf16> lpszDescription,
  Pointer<POWER_POLICY> lpScheme,
)>('WritePwrScheme');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int RegisterPowerSettingNotification(
  int hRecipient,
  Pointer<GUID> PowerSettingGuid,
  int Flags,
) =>
    _RegisterPowerSettingNotification(
      hRecipient,
      PowerSettingGuid,
      Flags,
    );

late final _RegisterPowerSettingNotification = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hRecipient,
  Pointer<GUID> PowerSettingGuid,
  Uint32 Flags,
),
    int Function(
  int hRecipient,
  Pointer<GUID> PowerSettingGuid,
  int Flags,
)>('RegisterPowerSettingNotification');

int RegisterSuspendResumeNotification(
  int hRecipient,
  int Flags,
) =>
    _RegisterSuspendResumeNotification(
      hRecipient,
      Flags,
    );

late final _RegisterSuspendResumeNotification = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hRecipient,
  Uint32 Flags,
),
    int Function(
  int hRecipient,
  int Flags,
)>('RegisterSuspendResumeNotification');

int UnregisterPowerSettingNotification(
  int $Handle,
) =>
    _UnregisterPowerSettingNotification(
      $Handle,
    );

late final _UnregisterPowerSettingNotification = _user32.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
),
    int Function(
  int $Handle,
)>('UnregisterPowerSettingNotification');

int UnregisterSuspendResumeNotification(
  int $Handle,
) =>
    _UnregisterSuspendResumeNotification(
      $Handle,
    );

late final _UnregisterSuspendResumeNotification = _user32.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
),
    int Function(
  int $Handle,
)>('UnregisterSuspendResumeNotification');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int GetDevicePowerState(
  int hDevice,
  Pointer<Int32> pfOn,
) =>
    _GetDevicePowerState(
      hDevice,
      pfOn,
    );

late final _GetDevicePowerState = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hDevice,
  Pointer<Int32> pfOn,
),
    int Function(
  int hDevice,
  Pointer<Int32> pfOn,
)>('GetDevicePowerState');

int GetSystemPowerStatus(
  Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus,
) =>
    _GetSystemPowerStatus(
      lpSystemPowerStatus,
    );

late final _GetSystemPowerStatus = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus,
),
    int Function(
  Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus,
)>('GetSystemPowerStatus');

int IsSystemResumeAutomatic() => _IsSystemResumeAutomatic();

late final _IsSystemResumeAutomatic =
    _kernel32.lookupFunction<Int32 Function(), int Function()>(
        'IsSystemResumeAutomatic');

int PowerClearRequest(
  int PowerRequest,
  int RequestType,
) =>
    _PowerClearRequest(
      PowerRequest,
      RequestType,
    );

late final _PowerClearRequest = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr PowerRequest,
  Int32 RequestType,
),
    int Function(
  int PowerRequest,
  int RequestType,
)>('PowerClearRequest');

int PowerCreateRequest(
  Pointer<REASON_CONTEXT> Context,
) =>
    _PowerCreateRequest(
      Context,
    );

late final _PowerCreateRequest = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<REASON_CONTEXT> Context,
),
    int Function(
  Pointer<REASON_CONTEXT> Context,
)>('PowerCreateRequest');

int PowerSetRequest(
  int PowerRequest,
  int RequestType,
) =>
    _PowerSetRequest(
      PowerRequest,
      RequestType,
    );

late final _PowerSetRequest = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr PowerRequest,
  Int32 RequestType,
),
    int Function(
  int PowerRequest,
  int RequestType,
)>('PowerSetRequest');

int RequestWakeupLatency(
  int latency,
) =>
    _RequestWakeupLatency(
      latency,
    );

late final _RequestWakeupLatency = _kernel32.lookupFunction<
    Int32 Function(
  Int32 latency,
),
    int Function(
  int latency,
)>('RequestWakeupLatency');

int SetSystemPowerState(
  int fSuspend,
  int fForce,
) =>
    _SetSystemPowerState(
      fSuspend,
      fForce,
    );

late final _SetSystemPowerState = _kernel32.lookupFunction<
    Int32 Function(
  Int32 fSuspend,
  Int32 fForce,
),
    int Function(
  int fSuspend,
  int fForce,
)>('SetSystemPowerState');

int SetThreadExecutionState(
  int esFlags,
) =>
    _SetThreadExecutionState(
      esFlags,
    );

late final _SetThreadExecutionState = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 esFlags,
),
    int Function(
  int esFlags,
)>('SetThreadExecutionState');
