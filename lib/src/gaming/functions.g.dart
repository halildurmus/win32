// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../combase.dart';
import '../guid.dart';
import '../foundation/structs.g.dart';
import '../gaming/structs.g.dart';
import '../system/winrt/structs.g.dart';
import '../gaming/callbacks.g.dart';
import '../system/winrt/IInspectable.dart'; // -----------------------------------------------------------------------

// api-ms-win-gaming-expandedresources-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_gaming_expandedresources_l1_1_0 =
    DynamicLibrary.open('api-ms-win-gaming-expandedresources-l1-1-0.dll');

int GetExpandedResourceExclusiveCpuCount(
  Pointer<Uint32> exclusiveCpuCount,
) =>
    _GetExpandedResourceExclusiveCpuCount(
      exclusiveCpuCount,
    );

late final _GetExpandedResourceExclusiveCpuCount =
    _api_ms_win_gaming_expandedresources_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Uint32> exclusiveCpuCount,
),
        int Function(
  Pointer<Uint32> exclusiveCpuCount,
)>('GetExpandedResourceExclusiveCpuCount');

int HasExpandedResources(
  Pointer<Int32> hasExpandedResources,
) =>
    _HasExpandedResources(
      hasExpandedResources,
    );

late final _HasExpandedResources =
    _api_ms_win_gaming_expandedresources_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Int32> hasExpandedResources,
),
        int Function(
  Pointer<Int32> hasExpandedResources,
)>('HasExpandedResources');

int ReleaseExclusiveCpuSets() => _ReleaseExclusiveCpuSets();

late final _ReleaseExclusiveCpuSets =
    _api_ms_win_gaming_expandedresources_l1_1_0.lookupFunction<Int32 Function(),
        int Function()>('ReleaseExclusiveCpuSets');

// -----------------------------------------------------------------------
// api-ms-win-gaming-deviceinformation-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_gaming_deviceinformation_l1_1_0 =
    DynamicLibrary.open('api-ms-win-gaming-deviceinformation-l1-1-0.dll');

int GetGamingDeviceModelInformation(
  Pointer<GAMING_DEVICE_MODEL_INFORMATION> information,
) =>
    _GetGamingDeviceModelInformation(
      information,
    );

late final _GetGamingDeviceModelInformation =
    _api_ms_win_gaming_deviceinformation_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<GAMING_DEVICE_MODEL_INFORMATION> information,
),
        int Function(
  Pointer<GAMING_DEVICE_MODEL_INFORMATION> information,
)>('GetGamingDeviceModelInformation');

// -----------------------------------------------------------------------
// api-ms-win-gaming-tcui-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_gaming_tcui_l1_1_0 =
    DynamicLibrary.open('api-ms-win-gaming-tcui-l1-1-0.dll');

int ProcessPendingGameUI(
  int waitForCompletion,
) =>
    _ProcessPendingGameUI(
      waitForCompletion,
    );

late final _ProcessPendingGameUI =
    _api_ms_win_gaming_tcui_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 waitForCompletion,
),
        int Function(
  int waitForCompletion,
)>('ProcessPendingGameUI');

int ShowChangeFriendRelationshipUI(
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowChangeFriendRelationshipUI(
      targetUserXuid,
      completionRoutine,
      context,
    );

late final _ShowChangeFriendRelationshipUI =
    _api_ms_win_gaming_tcui_l1_1_0.lookupFunction<
        Int32 Function(
  IntPtr targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowChangeFriendRelationshipUI');

int ShowGameInviteUI(
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowGameInviteUI(
      serviceConfigurationId,
      sessionTemplateName,
      sessionId,
      invitationDisplayText,
      completionRoutine,
      context,
    );

late final _ShowGameInviteUI = _api_ms_win_gaming_tcui_l1_1_0.lookupFunction<
    Int32 Function(
  IntPtr serviceConfigurationId,
  IntPtr sessionTemplateName,
  IntPtr sessionId,
  IntPtr invitationDisplayText,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
    int Function(
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowGameInviteUI');

int ShowPlayerPickerUI(
  int promptDisplayText,
  Pointer<IntPtr> xuids,
  int xuidsCount,
  Pointer<IntPtr> preSelectedXuids,
  int preSelectedXuidsCount,
  int minSelectionCount,
  int maxSelectionCount,
  Pointer<NativeFunction<PlayerPickerUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowPlayerPickerUI(
      promptDisplayText,
      xuids,
      xuidsCount,
      preSelectedXuids,
      preSelectedXuidsCount,
      minSelectionCount,
      maxSelectionCount,
      completionRoutine,
      context,
    );

late final _ShowPlayerPickerUI = _api_ms_win_gaming_tcui_l1_1_0.lookupFunction<
    Int32 Function(
  IntPtr promptDisplayText,
  Pointer<IntPtr> xuids,
  IntPtr xuidsCount,
  Pointer<IntPtr> preSelectedXuids,
  IntPtr preSelectedXuidsCount,
  IntPtr minSelectionCount,
  IntPtr maxSelectionCount,
  Pointer<NativeFunction<PlayerPickerUICompletionRoutine>> completionRoutine,
  Pointer context,
),
    int Function(
  int promptDisplayText,
  Pointer<IntPtr> xuids,
  int xuidsCount,
  Pointer<IntPtr> preSelectedXuids,
  int preSelectedXuidsCount,
  int minSelectionCount,
  int maxSelectionCount,
  Pointer<NativeFunction<PlayerPickerUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowPlayerPickerUI');

int ShowProfileCardUI(
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowProfileCardUI(
      targetUserXuid,
      completionRoutine,
      context,
    );

late final _ShowProfileCardUI = _api_ms_win_gaming_tcui_l1_1_0.lookupFunction<
    Int32 Function(
  IntPtr targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
    int Function(
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowProfileCardUI');

int ShowTitleAchievementsUI(
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowTitleAchievementsUI(
      titleId,
      completionRoutine,
      context,
    );

late final _ShowTitleAchievementsUI =
    _api_ms_win_gaming_tcui_l1_1_0.lookupFunction<
        Int32 Function(
  Uint32 titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowTitleAchievementsUI');

int TryCancelPendingGameUI() => _TryCancelPendingGameUI();

late final _TryCancelPendingGameUI = _api_ms_win_gaming_tcui_l1_1_0
    .lookupFunction<Int32 Function(), int Function()>('TryCancelPendingGameUI');

// -----------------------------------------------------------------------
// api-ms-win-gaming-tcui-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_gaming_tcui_l1_1_1 =
    DynamicLibrary.open('api-ms-win-gaming-tcui-l1-1-1.dll');

int CheckGamingPrivilegeSilently(
  int privilegeId,
  int scope,
  int policy,
  Pointer<Int32> hasPrivilege,
) =>
    _CheckGamingPrivilegeSilently(
      privilegeId,
      scope,
      policy,
      hasPrivilege,
    );

late final _CheckGamingPrivilegeSilently =
    _api_ms_win_gaming_tcui_l1_1_1.lookupFunction<
        Int32 Function(
  Uint32 privilegeId,
  IntPtr scope,
  IntPtr policy,
  Pointer<Int32> hasPrivilege,
),
        int Function(
  int privilegeId,
  int scope,
  int policy,
  Pointer<Int32> hasPrivilege,
)>('CheckGamingPrivilegeSilently');

int CheckGamingPrivilegeWithUI(
  int privilegeId,
  int scope,
  int policy,
  int friendlyMessage,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _CheckGamingPrivilegeWithUI(
      privilegeId,
      scope,
      policy,
      friendlyMessage,
      completionRoutine,
      context,
    );

late final _CheckGamingPrivilegeWithUI =
    _api_ms_win_gaming_tcui_l1_1_1.lookupFunction<
        Int32 Function(
  Uint32 privilegeId,
  IntPtr scope,
  IntPtr policy,
  IntPtr friendlyMessage,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  int privilegeId,
  int scope,
  int policy,
  int friendlyMessage,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('CheckGamingPrivilegeWithUI');

// -----------------------------------------------------------------------
// api-ms-win-gaming-tcui-l1-1-2.dll
// -----------------------------------------------------------------------
final _api_ms_win_gaming_tcui_l1_1_2 =
    DynamicLibrary.open('api-ms-win-gaming-tcui-l1-1-2.dll');

int CheckGamingPrivilegeSilentlyForUser(
  Pointer<COMObject> user,
  int privilegeId,
  int scope,
  int policy,
  Pointer<Int32> hasPrivilege,
) =>
    _CheckGamingPrivilegeSilentlyForUser(
      user,
      privilegeId,
      scope,
      policy,
      hasPrivilege,
    );

late final _CheckGamingPrivilegeSilentlyForUser =
    _api_ms_win_gaming_tcui_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  Uint32 privilegeId,
  IntPtr scope,
  IntPtr policy,
  Pointer<Int32> hasPrivilege,
),
        int Function(
  Pointer<COMObject> user,
  int privilegeId,
  int scope,
  int policy,
  Pointer<Int32> hasPrivilege,
)>('CheckGamingPrivilegeSilentlyForUser');

int CheckGamingPrivilegeWithUIForUser(
  Pointer<COMObject> user,
  int privilegeId,
  int scope,
  int policy,
  int friendlyMessage,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _CheckGamingPrivilegeWithUIForUser(
      user,
      privilegeId,
      scope,
      policy,
      friendlyMessage,
      completionRoutine,
      context,
    );

late final _CheckGamingPrivilegeWithUIForUser =
    _api_ms_win_gaming_tcui_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  Uint32 privilegeId,
  IntPtr scope,
  IntPtr policy,
  IntPtr friendlyMessage,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int privilegeId,
  int scope,
  int policy,
  int friendlyMessage,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('CheckGamingPrivilegeWithUIForUser');

int ShowChangeFriendRelationshipUIForUser(
  Pointer<COMObject> user,
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowChangeFriendRelationshipUIForUser(
      user,
      targetUserXuid,
      completionRoutine,
      context,
    );

late final _ShowChangeFriendRelationshipUIForUser =
    _api_ms_win_gaming_tcui_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  IntPtr targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowChangeFriendRelationshipUIForUser');

int ShowGameInviteUIForUser(
  Pointer<COMObject> user,
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowGameInviteUIForUser(
      user,
      serviceConfigurationId,
      sessionTemplateName,
      sessionId,
      invitationDisplayText,
      completionRoutine,
      context,
    );

late final _ShowGameInviteUIForUser =
    _api_ms_win_gaming_tcui_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  IntPtr serviceConfigurationId,
  IntPtr sessionTemplateName,
  IntPtr sessionId,
  IntPtr invitationDisplayText,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowGameInviteUIForUser');

int ShowPlayerPickerUIForUser(
  Pointer<COMObject> user,
  int promptDisplayText,
  Pointer<IntPtr> xuids,
  int xuidsCount,
  Pointer<IntPtr> preSelectedXuids,
  int preSelectedXuidsCount,
  int minSelectionCount,
  int maxSelectionCount,
  Pointer<NativeFunction<PlayerPickerUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowPlayerPickerUIForUser(
      user,
      promptDisplayText,
      xuids,
      xuidsCount,
      preSelectedXuids,
      preSelectedXuidsCount,
      minSelectionCount,
      maxSelectionCount,
      completionRoutine,
      context,
    );

late final _ShowPlayerPickerUIForUser =
    _api_ms_win_gaming_tcui_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  IntPtr promptDisplayText,
  Pointer<IntPtr> xuids,
  IntPtr xuidsCount,
  Pointer<IntPtr> preSelectedXuids,
  IntPtr preSelectedXuidsCount,
  IntPtr minSelectionCount,
  IntPtr maxSelectionCount,
  Pointer<NativeFunction<PlayerPickerUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int promptDisplayText,
  Pointer<IntPtr> xuids,
  int xuidsCount,
  Pointer<IntPtr> preSelectedXuids,
  int preSelectedXuidsCount,
  int minSelectionCount,
  int maxSelectionCount,
  Pointer<NativeFunction<PlayerPickerUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowPlayerPickerUIForUser');

int ShowProfileCardUIForUser(
  Pointer<COMObject> user,
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowProfileCardUIForUser(
      user,
      targetUserXuid,
      completionRoutine,
      context,
    );

late final _ShowProfileCardUIForUser =
    _api_ms_win_gaming_tcui_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  IntPtr targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int targetUserXuid,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowProfileCardUIForUser');

int ShowTitleAchievementsUIForUser(
  Pointer<COMObject> user,
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowTitleAchievementsUIForUser(
      user,
      titleId,
      completionRoutine,
      context,
    );

late final _ShowTitleAchievementsUIForUser =
    _api_ms_win_gaming_tcui_l1_1_2.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  Uint32 titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowTitleAchievementsUIForUser');

// -----------------------------------------------------------------------
// api-ms-win-gaming-tcui-l1-1-3.dll
// -----------------------------------------------------------------------
final _api_ms_win_gaming_tcui_l1_1_3 =
    DynamicLibrary.open('api-ms-win-gaming-tcui-l1-1-3.dll');

int ShowGameInviteUIWithContext(
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  int customActivationContext,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowGameInviteUIWithContext(
      serviceConfigurationId,
      sessionTemplateName,
      sessionId,
      invitationDisplayText,
      customActivationContext,
      completionRoutine,
      context,
    );

late final _ShowGameInviteUIWithContext =
    _api_ms_win_gaming_tcui_l1_1_3.lookupFunction<
        Int32 Function(
  IntPtr serviceConfigurationId,
  IntPtr sessionTemplateName,
  IntPtr sessionId,
  IntPtr invitationDisplayText,
  IntPtr customActivationContext,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  int customActivationContext,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowGameInviteUIWithContext');

int ShowGameInviteUIWithContextForUser(
  Pointer<COMObject> user,
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  int customActivationContext,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowGameInviteUIWithContextForUser(
      user,
      serviceConfigurationId,
      sessionTemplateName,
      sessionId,
      invitationDisplayText,
      customActivationContext,
      completionRoutine,
      context,
    );

late final _ShowGameInviteUIWithContextForUser =
    _api_ms_win_gaming_tcui_l1_1_3.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  IntPtr serviceConfigurationId,
  IntPtr sessionTemplateName,
  IntPtr sessionId,
  IntPtr invitationDisplayText,
  IntPtr customActivationContext,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int serviceConfigurationId,
  int sessionTemplateName,
  int sessionId,
  int invitationDisplayText,
  int customActivationContext,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowGameInviteUIWithContextForUser');

// -----------------------------------------------------------------------
// api-ms-win-gaming-tcui-l1-1-4.dll
// -----------------------------------------------------------------------
final _api_ms_win_gaming_tcui_l1_1_4 =
    DynamicLibrary.open('api-ms-win-gaming-tcui-l1-1-4.dll');

int ShowCustomizeUserProfileUI(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowCustomizeUserProfileUI(
      completionRoutine,
      context,
    );

late final _ShowCustomizeUserProfileUI =
    _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
        Int32 Function(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowCustomizeUserProfileUI');

int ShowCustomizeUserProfileUIForUser(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowCustomizeUserProfileUIForUser(
      user,
      completionRoutine,
      context,
    );

late final _ShowCustomizeUserProfileUIForUser =
    _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowCustomizeUserProfileUIForUser');

int ShowFindFriendsUI(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowFindFriendsUI(
      completionRoutine,
      context,
    );

late final _ShowFindFriendsUI = _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
    int Function(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowFindFriendsUI');

int ShowFindFriendsUIForUser(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowFindFriendsUIForUser(
      user,
      completionRoutine,
      context,
    );

late final _ShowFindFriendsUIForUser =
    _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowFindFriendsUIForUser');

int ShowGameInfoUI(
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowGameInfoUI(
      titleId,
      completionRoutine,
      context,
    );

late final _ShowGameInfoUI = _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
    Int32 Function(
  Uint32 titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
    int Function(
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowGameInfoUI');

int ShowGameInfoUIForUser(
  Pointer<COMObject> user,
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowGameInfoUIForUser(
      user,
      titleId,
      completionRoutine,
      context,
    );

late final _ShowGameInfoUIForUser =
    _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  Uint32 titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  int titleId,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowGameInfoUIForUser');

int ShowUserSettingsUI(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowUserSettingsUI(
      completionRoutine,
      context,
    );

late final _ShowUserSettingsUI = _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
    int Function(
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowUserSettingsUI');

int ShowUserSettingsUIForUser(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
) =>
    _ShowUserSettingsUIForUser(
      user,
      completionRoutine,
      context,
    );

late final _ShowUserSettingsUIForUser =
    _api_ms_win_gaming_tcui_l1_1_4.lookupFunction<
        Int32 Function(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
),
        int Function(
  Pointer<COMObject> user,
  Pointer<NativeFunction<GameUICompletionRoutine>> completionRoutine,
  Pointer context,
)>('ShowUserSettingsUIForUser');
