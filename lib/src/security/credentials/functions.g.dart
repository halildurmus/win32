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
import '../../security/credentials/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// keycredmgr.dll
// -----------------------------------------------------------------------
final _keycredmgr = DynamicLibrary.open('keycredmgr.dll');

void KeyCredentialManagerFreeInformation(
  Pointer<KeyCredentialManagerInfo> keyCredentialManagerInfo,
) =>
    _KeyCredentialManagerFreeInformation(
      keyCredentialManagerInfo,
    );

late final _KeyCredentialManagerFreeInformation = _keycredmgr.lookupFunction<
    Void Function(
  Pointer<KeyCredentialManagerInfo> keyCredentialManagerInfo,
),
    void Function(
  Pointer<KeyCredentialManagerInfo> keyCredentialManagerInfo,
)>('KeyCredentialManagerFreeInformation');

int KeyCredentialManagerGetInformation(
  Pointer<Pointer<KeyCredentialManagerInfo>> keyCredentialManagerInfo,
) =>
    _KeyCredentialManagerGetInformation(
      keyCredentialManagerInfo,
    );

late final _KeyCredentialManagerGetInformation = _keycredmgr.lookupFunction<
    Int32 Function(
  Pointer<Pointer<KeyCredentialManagerInfo>> keyCredentialManagerInfo,
),
    int Function(
  Pointer<Pointer<KeyCredentialManagerInfo>> keyCredentialManagerInfo,
)>('KeyCredentialManagerGetInformation');

int KeyCredentialManagerGetOperationErrorStates(
  int keyCredentialManagerOperationType,
  Pointer<Int32> isReady,
  Pointer<Uint32> keyCredentialManagerOperationErrorStates,
) =>
    _KeyCredentialManagerGetOperationErrorStates(
      keyCredentialManagerOperationType,
      isReady,
      keyCredentialManagerOperationErrorStates,
    );

late final _KeyCredentialManagerGetOperationErrorStates =
    _keycredmgr.lookupFunction<
        Int32 Function(
  Int32 keyCredentialManagerOperationType,
  Pointer<Int32> isReady,
  Pointer<Uint32> keyCredentialManagerOperationErrorStates,
),
        int Function(
  int keyCredentialManagerOperationType,
  Pointer<Int32> isReady,
  Pointer<Uint32> keyCredentialManagerOperationErrorStates,
)>('KeyCredentialManagerGetOperationErrorStates');

int KeyCredentialManagerShowUIOperation(
  int hWndOwner,
  int keyCredentialManagerOperationType,
) =>
    _KeyCredentialManagerShowUIOperation(
      hWndOwner,
      keyCredentialManagerOperationType,
    );

late final _KeyCredentialManagerShowUIOperation = _keycredmgr.lookupFunction<
    Int32 Function(
  IntPtr hWndOwner,
  Int32 keyCredentialManagerOperationType,
),
    int Function(
  int hWndOwner,
  int keyCredentialManagerOperationType,
)>('KeyCredentialManagerShowUIOperation');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int CredDelete(
  Pointer<Utf16> TargetName,
  int Type,
  int Flags,
) =>
    _CredDelete(
      TargetName,
      Type,
      Flags,
    );

late final _CredDelete = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> TargetName,
  Uint32 Type,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> TargetName,
  int Type,
  int Flags,
)>('CredDeleteW');

int CredEnumerate(
  Pointer<Utf16> Filter,
  int Flags,
  Pointer<Uint32> Count,
  Pointer<Pointer<Pointer<CREDENTIAL>>> Credential,
) =>
    _CredEnumerate(
      Filter,
      Flags,
      Count,
      Credential,
    );

late final _CredEnumerate = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Filter,
  Uint32 Flags,
  Pointer<Uint32> Count,
  Pointer<Pointer<Pointer<CREDENTIAL>>> Credential,
),
    int Function(
  Pointer<Utf16> Filter,
  int Flags,
  Pointer<Uint32> Count,
  Pointer<Pointer<Pointer<CREDENTIAL>>> Credential,
)>('CredEnumerateW');

int CredFindBestCredential(
  Pointer<Utf16> TargetName,
  int Type,
  int Flags,
  Pointer<Pointer<CREDENTIAL>> Credential,
) =>
    _CredFindBestCredential(
      TargetName,
      Type,
      Flags,
      Credential,
    );

late final _CredFindBestCredential = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> TargetName,
  Uint32 Type,
  Uint32 Flags,
  Pointer<Pointer<CREDENTIAL>> Credential,
),
    int Function(
  Pointer<Utf16> TargetName,
  int Type,
  int Flags,
  Pointer<Pointer<CREDENTIAL>> Credential,
)>('CredFindBestCredentialW');

void CredFree(
  Pointer Buffer,
) =>
    _CredFree(
      Buffer,
    );

late final _CredFree = _advapi32.lookupFunction<
    Void Function(
  Pointer Buffer,
),
    void Function(
  Pointer Buffer,
)>('CredFree');

int CredGetSessionTypes(
  int MaximumPersistCount,
  Pointer<Uint32> MaximumPersist,
) =>
    _CredGetSessionTypes(
      MaximumPersistCount,
      MaximumPersist,
    );

late final _CredGetSessionTypes = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 MaximumPersistCount,
  Pointer<Uint32> MaximumPersist,
),
    int Function(
  int MaximumPersistCount,
  Pointer<Uint32> MaximumPersist,
)>('CredGetSessionTypes');

int CredGetTargetInfo(
  Pointer<Utf16> TargetName,
  int Flags,
  Pointer<Pointer<CREDENTIAL_TARGET_INFORMATION>> TargetInfo,
) =>
    _CredGetTargetInfo(
      TargetName,
      Flags,
      TargetInfo,
    );

late final _CredGetTargetInfo = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> TargetName,
  Uint32 Flags,
  Pointer<Pointer<CREDENTIAL_TARGET_INFORMATION>> TargetInfo,
),
    int Function(
  Pointer<Utf16> TargetName,
  int Flags,
  Pointer<Pointer<CREDENTIAL_TARGET_INFORMATION>> TargetInfo,
)>('CredGetTargetInfoW');

int CredIsMarshaledCredential(
  Pointer<Utf16> MarshaledCredential,
) =>
    _CredIsMarshaledCredential(
      MarshaledCredential,
    );

late final _CredIsMarshaledCredential = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> MarshaledCredential,
),
    int Function(
  Pointer<Utf16> MarshaledCredential,
)>('CredIsMarshaledCredentialW');

int CredIsProtected(
  Pointer<Utf16> pszProtectedCredentials,
  Pointer<Int32> pProtectionType,
) =>
    _CredIsProtected(
      pszProtectedCredentials,
      pProtectionType,
    );

late final _CredIsProtected = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszProtectedCredentials,
  Pointer<Int32> pProtectionType,
),
    int Function(
  Pointer<Utf16> pszProtectedCredentials,
  Pointer<Int32> pProtectionType,
)>('CredIsProtectedW');

int CredMarshalCredential(
  int CredType,
  Pointer Credential,
  Pointer<Pointer<Utf16>> MarshaledCredential,
) =>
    _CredMarshalCredential(
      CredType,
      Credential,
      MarshaledCredential,
    );

late final _CredMarshalCredential = _advapi32.lookupFunction<
    Int32 Function(
  Int32 CredType,
  Pointer Credential,
  Pointer<Pointer<Utf16>> MarshaledCredential,
),
    int Function(
  int CredType,
  Pointer Credential,
  Pointer<Pointer<Utf16>> MarshaledCredential,
)>('CredMarshalCredentialW');

int CredProtect(
  int fAsSelf,
  Pointer<Utf16> pszCredentials,
  int cchCredentials,
  Pointer<Utf16> pszProtectedCredentials,
  Pointer<Uint32> pcchMaxChars,
  Pointer<Int32> ProtectionType,
) =>
    _CredProtect(
      fAsSelf,
      pszCredentials,
      cchCredentials,
      pszProtectedCredentials,
      pcchMaxChars,
      ProtectionType,
    );

late final _CredProtect = _advapi32.lookupFunction<
    Int32 Function(
  Int32 fAsSelf,
  Pointer<Utf16> pszCredentials,
  Uint32 cchCredentials,
  Pointer<Utf16> pszProtectedCredentials,
  Pointer<Uint32> pcchMaxChars,
  Pointer<Int32> ProtectionType,
),
    int Function(
  int fAsSelf,
  Pointer<Utf16> pszCredentials,
  int cchCredentials,
  Pointer<Utf16> pszProtectedCredentials,
  Pointer<Uint32> pcchMaxChars,
  Pointer<Int32> ProtectionType,
)>('CredProtectW');

int CredReadDomainCredentials(
  Pointer<CREDENTIAL_TARGET_INFORMATION> TargetInfo,
  int Flags,
  Pointer<Uint32> Count,
  Pointer<Pointer<Pointer<CREDENTIAL>>> Credential,
) =>
    _CredReadDomainCredentials(
      TargetInfo,
      Flags,
      Count,
      Credential,
    );

late final _CredReadDomainCredentials = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<CREDENTIAL_TARGET_INFORMATION> TargetInfo,
  Uint32 Flags,
  Pointer<Uint32> Count,
  Pointer<Pointer<Pointer<CREDENTIAL>>> Credential,
),
    int Function(
  Pointer<CREDENTIAL_TARGET_INFORMATION> TargetInfo,
  int Flags,
  Pointer<Uint32> Count,
  Pointer<Pointer<Pointer<CREDENTIAL>>> Credential,
)>('CredReadDomainCredentialsW');

int CredRead(
  Pointer<Utf16> TargetName,
  int Type,
  int Flags,
  Pointer<Pointer<CREDENTIAL>> Credential,
) =>
    _CredRead(
      TargetName,
      Type,
      Flags,
      Credential,
    );

late final _CredRead = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> TargetName,
  Uint32 Type,
  Uint32 Flags,
  Pointer<Pointer<CREDENTIAL>> Credential,
),
    int Function(
  Pointer<Utf16> TargetName,
  int Type,
  int Flags,
  Pointer<Pointer<CREDENTIAL>> Credential,
)>('CredReadW');

int CredRename(
  Pointer<Utf16> OldTargetName,
  Pointer<Utf16> NewTargetName,
  int Type,
  int Flags,
) =>
    _CredRename(
      OldTargetName,
      NewTargetName,
      Type,
      Flags,
    );

late final _CredRename = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> OldTargetName,
  Pointer<Utf16> NewTargetName,
  Uint32 Type,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> OldTargetName,
  Pointer<Utf16> NewTargetName,
  int Type,
  int Flags,
)>('CredRenameW');

int CredUnmarshalCredential(
  Pointer<Utf16> MarshaledCredential,
  Pointer<Int32> CredType,
  Pointer<Pointer> Credential,
) =>
    _CredUnmarshalCredential(
      MarshaledCredential,
      CredType,
      Credential,
    );

late final _CredUnmarshalCredential = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> MarshaledCredential,
  Pointer<Int32> CredType,
  Pointer<Pointer> Credential,
),
    int Function(
  Pointer<Utf16> MarshaledCredential,
  Pointer<Int32> CredType,
  Pointer<Pointer> Credential,
)>('CredUnmarshalCredentialW');

int CredUnprotect(
  int fAsSelf,
  Pointer<Utf16> pszProtectedCredentials,
  int cchProtectedCredentials,
  Pointer<Utf16> pszCredentials,
  Pointer<Uint32> pcchMaxChars,
) =>
    _CredUnprotect(
      fAsSelf,
      pszProtectedCredentials,
      cchProtectedCredentials,
      pszCredentials,
      pcchMaxChars,
    );

late final _CredUnprotect = _advapi32.lookupFunction<
    Int32 Function(
  Int32 fAsSelf,
  Pointer<Utf16> pszProtectedCredentials,
  Uint32 cchProtectedCredentials,
  Pointer<Utf16> pszCredentials,
  Pointer<Uint32> pcchMaxChars,
),
    int Function(
  int fAsSelf,
  Pointer<Utf16> pszProtectedCredentials,
  int cchProtectedCredentials,
  Pointer<Utf16> pszCredentials,
  Pointer<Uint32> pcchMaxChars,
)>('CredUnprotectW');

int CredWriteDomainCredentials(
  Pointer<CREDENTIAL_TARGET_INFORMATION> TargetInfo,
  Pointer<CREDENTIAL> Credential,
  int Flags,
) =>
    _CredWriteDomainCredentials(
      TargetInfo,
      Credential,
      Flags,
    );

late final _CredWriteDomainCredentials = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<CREDENTIAL_TARGET_INFORMATION> TargetInfo,
  Pointer<CREDENTIAL> Credential,
  Uint32 Flags,
),
    int Function(
  Pointer<CREDENTIAL_TARGET_INFORMATION> TargetInfo,
  Pointer<CREDENTIAL> Credential,
  int Flags,
)>('CredWriteDomainCredentialsW');

int CredWrite(
  Pointer<CREDENTIAL> Credential,
  int Flags,
) =>
    _CredWrite(
      Credential,
      Flags,
    );

late final _CredWrite = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<CREDENTIAL> Credential,
  Uint32 Flags,
),
    int Function(
  Pointer<CREDENTIAL> Credential,
  int Flags,
)>('CredWriteW');

// -----------------------------------------------------------------------
// credui.dll
// -----------------------------------------------------------------------
final _credui = DynamicLibrary.open('credui.dll');

int CredPackAuthenticationBuffer(
  int dwFlags,
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszPassword,
  Pointer<Uint8> pPackedCredentials,
  Pointer<Uint32> pcbPackedCredentials,
) =>
    _CredPackAuthenticationBuffer(
      dwFlags,
      pszUserName,
      pszPassword,
      pPackedCredentials,
      pcbPackedCredentials,
    );

late final _CredPackAuthenticationBuffer = _credui.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszPassword,
  Pointer<Uint8> pPackedCredentials,
  Pointer<Uint32> pcbPackedCredentials,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszPassword,
  Pointer<Uint8> pPackedCredentials,
  Pointer<Uint32> pcbPackedCredentials,
)>('CredPackAuthenticationBufferW');

int CredUICmdLinePromptForCredentials(
  Pointer<Utf16> pszTargetName,
  Pointer<SecHandle> pContext,
  int dwAuthError,
  Pointer<Utf16> UserName,
  int ulUserBufferSize,
  Pointer<Utf16> pszPassword,
  int ulPasswordBufferSize,
  Pointer<Int32> pfSave,
  int dwFlags,
) =>
    _CredUICmdLinePromptForCredentials(
      pszTargetName,
      pContext,
      dwAuthError,
      UserName,
      ulUserBufferSize,
      pszPassword,
      ulPasswordBufferSize,
      pfSave,
      dwFlags,
    );

late final _CredUICmdLinePromptForCredentials = _credui.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszTargetName,
  Pointer<SecHandle> pContext,
  Uint32 dwAuthError,
  Pointer<Utf16> UserName,
  Uint32 ulUserBufferSize,
  Pointer<Utf16> pszPassword,
  Uint32 ulPasswordBufferSize,
  Pointer<Int32> pfSave,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszTargetName,
  Pointer<SecHandle> pContext,
  int dwAuthError,
  Pointer<Utf16> UserName,
  int ulUserBufferSize,
  Pointer<Utf16> pszPassword,
  int ulPasswordBufferSize,
  Pointer<Int32> pfSave,
  int dwFlags,
)>('CredUICmdLinePromptForCredentialsW');

int CredUIConfirmCredentials(
  Pointer<Utf16> pszTargetName,
  int bConfirm,
) =>
    _CredUIConfirmCredentials(
      pszTargetName,
      bConfirm,
    );

late final _CredUIConfirmCredentials = _credui.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszTargetName,
  Int32 bConfirm,
),
    int Function(
  Pointer<Utf16> pszTargetName,
  int bConfirm,
)>('CredUIConfirmCredentialsW');

int CredUIParseUserName(
  Pointer<Utf16> UserName,
  Pointer<Utf16> user,
  int userBufferSize,
  Pointer<Utf16> domain,
  int domainBufferSize,
) =>
    _CredUIParseUserName(
      UserName,
      user,
      userBufferSize,
      domain,
      domainBufferSize,
    );

late final _CredUIParseUserName = _credui.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UserName,
  Pointer<Utf16> user,
  Uint32 userBufferSize,
  Pointer<Utf16> domain,
  Uint32 domainBufferSize,
),
    int Function(
  Pointer<Utf16> UserName,
  Pointer<Utf16> user,
  int userBufferSize,
  Pointer<Utf16> domain,
  int domainBufferSize,
)>('CredUIParseUserNameW');

int CredUIPromptForCredentials(
  Pointer<CREDUI_INFO> pUiInfo,
  Pointer<Utf16> pszTargetName,
  Pointer<SecHandle> pContext,
  int dwAuthError,
  Pointer<Utf16> pszUserName,
  int ulUserNameBufferSize,
  Pointer<Utf16> pszPassword,
  int ulPasswordBufferSize,
  Pointer<Int32> save,
  int dwFlags,
) =>
    _CredUIPromptForCredentials(
      pUiInfo,
      pszTargetName,
      pContext,
      dwAuthError,
      pszUserName,
      ulUserNameBufferSize,
      pszPassword,
      ulPasswordBufferSize,
      save,
      dwFlags,
    );

late final _CredUIPromptForCredentials = _credui.lookupFunction<
    Uint32 Function(
  Pointer<CREDUI_INFO> pUiInfo,
  Pointer<Utf16> pszTargetName,
  Pointer<SecHandle> pContext,
  Uint32 dwAuthError,
  Pointer<Utf16> pszUserName,
  Uint32 ulUserNameBufferSize,
  Pointer<Utf16> pszPassword,
  Uint32 ulPasswordBufferSize,
  Pointer<Int32> save,
  Uint32 dwFlags,
),
    int Function(
  Pointer<CREDUI_INFO> pUiInfo,
  Pointer<Utf16> pszTargetName,
  Pointer<SecHandle> pContext,
  int dwAuthError,
  Pointer<Utf16> pszUserName,
  int ulUserNameBufferSize,
  Pointer<Utf16> pszPassword,
  int ulPasswordBufferSize,
  Pointer<Int32> save,
  int dwFlags,
)>('CredUIPromptForCredentialsW');

int CredUIPromptForWindowsCredentials(
  Pointer<CREDUI_INFO> pUiInfo,
  int dwAuthError,
  Pointer<Uint32> pulAuthPackage,
  Pointer pvInAuthBuffer,
  int ulInAuthBufferSize,
  Pointer<Pointer> ppvOutAuthBuffer,
  Pointer<Uint32> pulOutAuthBufferSize,
  Pointer<Int32> pfSave,
  int dwFlags,
) =>
    _CredUIPromptForWindowsCredentials(
      pUiInfo,
      dwAuthError,
      pulAuthPackage,
      pvInAuthBuffer,
      ulInAuthBufferSize,
      ppvOutAuthBuffer,
      pulOutAuthBufferSize,
      pfSave,
      dwFlags,
    );

late final _CredUIPromptForWindowsCredentials = _credui.lookupFunction<
    Uint32 Function(
  Pointer<CREDUI_INFO> pUiInfo,
  Uint32 dwAuthError,
  Pointer<Uint32> pulAuthPackage,
  Pointer pvInAuthBuffer,
  Uint32 ulInAuthBufferSize,
  Pointer<Pointer> ppvOutAuthBuffer,
  Pointer<Uint32> pulOutAuthBufferSize,
  Pointer<Int32> pfSave,
  Uint32 dwFlags,
),
    int Function(
  Pointer<CREDUI_INFO> pUiInfo,
  int dwAuthError,
  Pointer<Uint32> pulAuthPackage,
  Pointer pvInAuthBuffer,
  int ulInAuthBufferSize,
  Pointer<Pointer> ppvOutAuthBuffer,
  Pointer<Uint32> pulOutAuthBufferSize,
  Pointer<Int32> pfSave,
  int dwFlags,
)>('CredUIPromptForWindowsCredentialsW');

int CredUIReadSSOCred(
  Pointer<Utf16> pszRealm,
  Pointer<Pointer<Utf16>> ppszUsername,
) =>
    _CredUIReadSSOCred(
      pszRealm,
      ppszUsername,
    );

late final _CredUIReadSSOCred = _credui.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszRealm,
  Pointer<Pointer<Utf16>> ppszUsername,
),
    int Function(
  Pointer<Utf16> pszRealm,
  Pointer<Pointer<Utf16>> ppszUsername,
)>('CredUIReadSSOCredW');

int CredUIStoreSSOCred(
  Pointer<Utf16> pszRealm,
  Pointer<Utf16> pszUsername,
  Pointer<Utf16> pszPassword,
  int bPersist,
) =>
    _CredUIStoreSSOCred(
      pszRealm,
      pszUsername,
      pszPassword,
      bPersist,
    );

late final _CredUIStoreSSOCred = _credui.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszRealm,
  Pointer<Utf16> pszUsername,
  Pointer<Utf16> pszPassword,
  Int32 bPersist,
),
    int Function(
  Pointer<Utf16> pszRealm,
  Pointer<Utf16> pszUsername,
  Pointer<Utf16> pszPassword,
  int bPersist,
)>('CredUIStoreSSOCredW');

int CredUnPackAuthenticationBuffer(
  int dwFlags,
  Pointer pAuthBuffer,
  int cbAuthBuffer,
  Pointer<Utf16> pszUserName,
  Pointer<Uint32> pcchMaxUserName,
  Pointer<Utf16> pszDomainName,
  Pointer<Uint32> pcchMaxDomainName,
  Pointer<Utf16> pszPassword,
  Pointer<Uint32> pcchMaxPassword,
) =>
    _CredUnPackAuthenticationBuffer(
      dwFlags,
      pAuthBuffer,
      cbAuthBuffer,
      pszUserName,
      pcchMaxUserName,
      pszDomainName,
      pcchMaxDomainName,
      pszPassword,
      pcchMaxPassword,
    );

late final _CredUnPackAuthenticationBuffer = _credui.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer pAuthBuffer,
  Uint32 cbAuthBuffer,
  Pointer<Utf16> pszUserName,
  Pointer<Uint32> pcchMaxUserName,
  Pointer<Utf16> pszDomainName,
  Pointer<Uint32> pcchMaxDomainName,
  Pointer<Utf16> pszPassword,
  Pointer<Uint32> pcchMaxPassword,
),
    int Function(
  int dwFlags,
  Pointer pAuthBuffer,
  int cbAuthBuffer,
  Pointer<Utf16> pszUserName,
  Pointer<Uint32> pcchMaxUserName,
  Pointer<Utf16> pszDomainName,
  Pointer<Uint32> pcchMaxDomainName,
  Pointer<Utf16> pszPassword,
  Pointer<Uint32> pcchMaxPassword,
)>('CredUnPackAuthenticationBufferW');

// -----------------------------------------------------------------------
// winscard.dll
// -----------------------------------------------------------------------
final _winscard = DynamicLibrary.open('winscard.dll');

int SCardAccessStartedEvent() => _SCardAccessStartedEvent();

late final _SCardAccessStartedEvent =
    _winscard.lookupFunction<IntPtr Function(), int Function()>(
        'SCardAccessStartedEvent');

int SCardAddReaderToGroup(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szGroupName,
) =>
    _SCardAddReaderToGroup(
      hContext,
      szReaderName,
      szGroupName,
    );

late final _SCardAddReaderToGroup = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szGroupName,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szGroupName,
)>('SCardAddReaderToGroupW');

int SCardAudit(
  int hContext,
  int dwEvent,
) =>
    _SCardAudit(
      hContext,
      dwEvent,
    );

late final _SCardAudit = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Uint32 dwEvent,
),
    int Function(
  int hContext,
  int dwEvent,
)>('SCardAudit');

int SCardBeginTransaction(
  int hCard,
) =>
    _SCardBeginTransaction(
      hCard,
    );

late final _SCardBeginTransaction = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
),
    int Function(
  int hCard,
)>('SCardBeginTransaction');

int SCardCancel(
  int hContext,
) =>
    _SCardCancel(
      hContext,
    );

late final _SCardCancel = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
),
    int Function(
  int hContext,
)>('SCardCancel');

int SCardConnect(
  int hContext,
  Pointer<Utf16> szReader,
  int dwShareMode,
  int dwPreferredProtocols,
  Pointer<IntPtr> phCard,
  Pointer<Uint32> pdwActiveProtocol,
) =>
    _SCardConnect(
      hContext,
      szReader,
      dwShareMode,
      dwPreferredProtocols,
      phCard,
      pdwActiveProtocol,
    );

late final _SCardConnect = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReader,
  Uint32 dwShareMode,
  Uint32 dwPreferredProtocols,
  Pointer<IntPtr> phCard,
  Pointer<Uint32> pdwActiveProtocol,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReader,
  int dwShareMode,
  int dwPreferredProtocols,
  Pointer<IntPtr> phCard,
  Pointer<Uint32> pdwActiveProtocol,
)>('SCardConnectW');

int SCardControl(
  int hCard,
  int dwControlCode,
  Pointer lpInBuffer,
  int cbInBufferSize,
  Pointer lpOutBuffer,
  int cbOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
) =>
    _SCardControl(
      hCard,
      dwControlCode,
      lpInBuffer,
      cbInBufferSize,
      lpOutBuffer,
      cbOutBufferSize,
      lpBytesReturned,
    );

late final _SCardControl = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Uint32 dwControlCode,
  Pointer lpInBuffer,
  Uint32 cbInBufferSize,
  Pointer lpOutBuffer,
  Uint32 cbOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
),
    int Function(
  int hCard,
  int dwControlCode,
  Pointer lpInBuffer,
  int cbInBufferSize,
  Pointer lpOutBuffer,
  int cbOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
)>('SCardControl');

int SCardDisconnect(
  int hCard,
  int dwDisposition,
) =>
    _SCardDisconnect(
      hCard,
      dwDisposition,
    );

late final _SCardDisconnect = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Uint32 dwDisposition,
),
    int Function(
  int hCard,
  int dwDisposition,
)>('SCardDisconnect');

int SCardEndTransaction(
  int hCard,
  int dwDisposition,
) =>
    _SCardEndTransaction(
      hCard,
      dwDisposition,
    );

late final _SCardEndTransaction = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Uint32 dwDisposition,
),
    int Function(
  int hCard,
  int dwDisposition,
)>('SCardEndTransaction');

int SCardEstablishContext(
  int dwScope,
  Pointer pvReserved1,
  Pointer pvReserved2,
  Pointer<IntPtr> phContext,
) =>
    _SCardEstablishContext(
      dwScope,
      pvReserved1,
      pvReserved2,
      phContext,
    );

late final _SCardEstablishContext = _winscard.lookupFunction<
    Int32 Function(
  Uint32 dwScope,
  Pointer pvReserved1,
  Pointer pvReserved2,
  Pointer<IntPtr> phContext,
),
    int Function(
  int dwScope,
  Pointer pvReserved1,
  Pointer pvReserved2,
  Pointer<IntPtr> phContext,
)>('SCardEstablishContext');

int SCardForgetCardType(
  int hContext,
  Pointer<Utf16> szCardName,
) =>
    _SCardForgetCardType(
      hContext,
      szCardName,
    );

late final _SCardForgetCardType = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szCardName,
),
    int Function(
  int hContext,
  Pointer<Utf16> szCardName,
)>('SCardForgetCardTypeW');

int SCardForgetReaderGroup(
  int hContext,
  Pointer<Utf16> szGroupName,
) =>
    _SCardForgetReaderGroup(
      hContext,
      szGroupName,
    );

late final _SCardForgetReaderGroup = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szGroupName,
),
    int Function(
  int hContext,
  Pointer<Utf16> szGroupName,
)>('SCardForgetReaderGroupW');

int SCardForgetReader(
  int hContext,
  Pointer<Utf16> szReaderName,
) =>
    _SCardForgetReader(
      hContext,
      szReaderName,
    );

late final _SCardForgetReader = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReaderName,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReaderName,
)>('SCardForgetReaderW');

int SCardFreeMemory(
  int hContext,
  Pointer pvMem,
) =>
    _SCardFreeMemory(
      hContext,
      pvMem,
    );

late final _SCardFreeMemory = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer pvMem,
),
    int Function(
  int hContext,
  Pointer pvMem,
)>('SCardFreeMemory');

int SCardGetAttrib(
  int hCard,
  int dwAttrId,
  Pointer<Uint8> pbAttr,
  Pointer<Uint32> pcbAttrLen,
) =>
    _SCardGetAttrib(
      hCard,
      dwAttrId,
      pbAttr,
      pcbAttrLen,
    );

late final _SCardGetAttrib = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Uint32 dwAttrId,
  Pointer<Uint8> pbAttr,
  Pointer<Uint32> pcbAttrLen,
),
    int Function(
  int hCard,
  int dwAttrId,
  Pointer<Uint8> pbAttr,
  Pointer<Uint32> pcbAttrLen,
)>('SCardGetAttrib');

int SCardGetCardTypeProviderName(
  int hContext,
  Pointer<Utf16> szCardName,
  int dwProviderId,
  Pointer<Utf16> szProvider,
  Pointer<Uint32> pcchProvider,
) =>
    _SCardGetCardTypeProviderName(
      hContext,
      szCardName,
      dwProviderId,
      szProvider,
      pcchProvider,
    );

late final _SCardGetCardTypeProviderName = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szCardName,
  Uint32 dwProviderId,
  Pointer<Utf16> szProvider,
  Pointer<Uint32> pcchProvider,
),
    int Function(
  int hContext,
  Pointer<Utf16> szCardName,
  int dwProviderId,
  Pointer<Utf16> szProvider,
  Pointer<Uint32> pcchProvider,
)>('SCardGetCardTypeProviderNameW');

int SCardGetDeviceTypeId(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Uint32> pdwDeviceTypeId,
) =>
    _SCardGetDeviceTypeId(
      hContext,
      szReaderName,
      pdwDeviceTypeId,
    );

late final _SCardGetDeviceTypeId = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Uint32> pdwDeviceTypeId,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Uint32> pdwDeviceTypeId,
)>('SCardGetDeviceTypeIdW');

int SCardGetProviderId(
  int hContext,
  Pointer<Utf16> szCard,
  Pointer<GUID> pguidProviderId,
) =>
    _SCardGetProviderId(
      hContext,
      szCard,
      pguidProviderId,
    );

late final _SCardGetProviderId = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szCard,
  Pointer<GUID> pguidProviderId,
),
    int Function(
  int hContext,
  Pointer<Utf16> szCard,
  Pointer<GUID> pguidProviderId,
)>('SCardGetProviderIdW');

int SCardGetReaderDeviceInstanceId(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szDeviceInstanceId,
  Pointer<Uint32> pcchDeviceInstanceId,
) =>
    _SCardGetReaderDeviceInstanceId(
      hContext,
      szReaderName,
      szDeviceInstanceId,
      pcchDeviceInstanceId,
    );

late final _SCardGetReaderDeviceInstanceId = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szDeviceInstanceId,
  Pointer<Uint32> pcchDeviceInstanceId,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szDeviceInstanceId,
  Pointer<Uint32> pcchDeviceInstanceId,
)>('SCardGetReaderDeviceInstanceIdW');

int SCardGetReaderIcon(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Uint8> pbIcon,
  Pointer<Uint32> pcbIcon,
) =>
    _SCardGetReaderIcon(
      hContext,
      szReaderName,
      pbIcon,
      pcbIcon,
    );

late final _SCardGetReaderIcon = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Uint8> pbIcon,
  Pointer<Uint32> pcbIcon,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Uint8> pbIcon,
  Pointer<Uint32> pcbIcon,
)>('SCardGetReaderIconW');

int SCardGetStatusChange(
  int hContext,
  int dwTimeout,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
) =>
    _SCardGetStatusChange(
      hContext,
      dwTimeout,
      rgReaderStates,
      cReaders,
    );

late final _SCardGetStatusChange = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Uint32 dwTimeout,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  Uint32 cReaders,
),
    int Function(
  int hContext,
  int dwTimeout,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
)>('SCardGetStatusChangeW');

int SCardGetTransmitCount(
  int hCard,
  Pointer<Uint32> pcTransmitCount,
) =>
    _SCardGetTransmitCount(
      hCard,
      pcTransmitCount,
    );

late final _SCardGetTransmitCount = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Pointer<Uint32> pcTransmitCount,
),
    int Function(
  int hCard,
  Pointer<Uint32> pcTransmitCount,
)>('SCardGetTransmitCount');

int SCardIntroduceCardType(
  int hContext,
  Pointer<Utf16> szCardName,
  Pointer<GUID> pguidPrimaryProvider,
  Pointer<GUID> rgguidInterfaces,
  int dwInterfaceCount,
  Pointer<Uint8> pbAtr,
  Pointer<Uint8> pbAtrMask,
  int cbAtrLen,
) =>
    _SCardIntroduceCardType(
      hContext,
      szCardName,
      pguidPrimaryProvider,
      rgguidInterfaces,
      dwInterfaceCount,
      pbAtr,
      pbAtrMask,
      cbAtrLen,
    );

late final _SCardIntroduceCardType = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szCardName,
  Pointer<GUID> pguidPrimaryProvider,
  Pointer<GUID> rgguidInterfaces,
  Uint32 dwInterfaceCount,
  Pointer<Uint8> pbAtr,
  Pointer<Uint8> pbAtrMask,
  Uint32 cbAtrLen,
),
    int Function(
  int hContext,
  Pointer<Utf16> szCardName,
  Pointer<GUID> pguidPrimaryProvider,
  Pointer<GUID> rgguidInterfaces,
  int dwInterfaceCount,
  Pointer<Uint8> pbAtr,
  Pointer<Uint8> pbAtrMask,
  int cbAtrLen,
)>('SCardIntroduceCardTypeW');

int SCardIntroduceReaderGroup(
  int hContext,
  Pointer<Utf16> szGroupName,
) =>
    _SCardIntroduceReaderGroup(
      hContext,
      szGroupName,
    );

late final _SCardIntroduceReaderGroup = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szGroupName,
),
    int Function(
  int hContext,
  Pointer<Utf16> szGroupName,
)>('SCardIntroduceReaderGroupW');

int SCardIntroduceReader(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szDeviceName,
) =>
    _SCardIntroduceReader(
      hContext,
      szReaderName,
      szDeviceName,
    );

late final _SCardIntroduceReader = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szDeviceName,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szDeviceName,
)>('SCardIntroduceReaderW');

int SCardIsValidContext(
  int hContext,
) =>
    _SCardIsValidContext(
      hContext,
    );

late final _SCardIsValidContext = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
),
    int Function(
  int hContext,
)>('SCardIsValidContext');

int SCardListCards(
  int hContext,
  Pointer<Uint8> pbAtr,
  Pointer<GUID> rgquidInterfaces,
  int cguidInterfaceCount,
  Pointer<Utf16> mszCards,
  Pointer<Uint32> pcchCards,
) =>
    _SCardListCards(
      hContext,
      pbAtr,
      rgquidInterfaces,
      cguidInterfaceCount,
      mszCards,
      pcchCards,
    );

late final _SCardListCards = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Uint8> pbAtr,
  Pointer<GUID> rgquidInterfaces,
  Uint32 cguidInterfaceCount,
  Pointer<Utf16> mszCards,
  Pointer<Uint32> pcchCards,
),
    int Function(
  int hContext,
  Pointer<Uint8> pbAtr,
  Pointer<GUID> rgquidInterfaces,
  int cguidInterfaceCount,
  Pointer<Utf16> mszCards,
  Pointer<Uint32> pcchCards,
)>('SCardListCardsW');

int SCardListInterfaces(
  int hContext,
  Pointer<Utf16> szCard,
  Pointer<GUID> pguidInterfaces,
  Pointer<Uint32> pcguidInterfaces,
) =>
    _SCardListInterfaces(
      hContext,
      szCard,
      pguidInterfaces,
      pcguidInterfaces,
    );

late final _SCardListInterfaces = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szCard,
  Pointer<GUID> pguidInterfaces,
  Pointer<Uint32> pcguidInterfaces,
),
    int Function(
  int hContext,
  Pointer<Utf16> szCard,
  Pointer<GUID> pguidInterfaces,
  Pointer<Uint32> pcguidInterfaces,
)>('SCardListInterfacesW');

int SCardListReaderGroups(
  int hContext,
  Pointer<Utf16> mszGroups,
  Pointer<Uint32> pcchGroups,
) =>
    _SCardListReaderGroups(
      hContext,
      mszGroups,
      pcchGroups,
    );

late final _SCardListReaderGroups = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> mszGroups,
  Pointer<Uint32> pcchGroups,
),
    int Function(
  int hContext,
  Pointer<Utf16> mszGroups,
  Pointer<Uint32> pcchGroups,
)>('SCardListReaderGroupsW');

int SCardListReaders(
  int hContext,
  Pointer<Utf16> mszGroups,
  Pointer<Utf16> mszReaders,
  Pointer<Uint32> pcchReaders,
) =>
    _SCardListReaders(
      hContext,
      mszGroups,
      mszReaders,
      pcchReaders,
    );

late final _SCardListReaders = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> mszGroups,
  Pointer<Utf16> mszReaders,
  Pointer<Uint32> pcchReaders,
),
    int Function(
  int hContext,
  Pointer<Utf16> mszGroups,
  Pointer<Utf16> mszReaders,
  Pointer<Uint32> pcchReaders,
)>('SCardListReadersW');

int SCardListReadersWithDeviceInstanceId(
  int hContext,
  Pointer<Utf16> szDeviceInstanceId,
  Pointer<Utf16> mszReaders,
  Pointer<Uint32> pcchReaders,
) =>
    _SCardListReadersWithDeviceInstanceId(
      hContext,
      szDeviceInstanceId,
      mszReaders,
      pcchReaders,
    );

late final _SCardListReadersWithDeviceInstanceId = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szDeviceInstanceId,
  Pointer<Utf16> mszReaders,
  Pointer<Uint32> pcchReaders,
),
    int Function(
  int hContext,
  Pointer<Utf16> szDeviceInstanceId,
  Pointer<Utf16> mszReaders,
  Pointer<Uint32> pcchReaders,
)>('SCardListReadersWithDeviceInstanceIdW');

int SCardLocateCardsByATR(
  int hContext,
  Pointer<SCARD_ATRMASK> rgAtrMasks,
  int cAtrs,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
) =>
    _SCardLocateCardsByATR(
      hContext,
      rgAtrMasks,
      cAtrs,
      rgReaderStates,
      cReaders,
    );

late final _SCardLocateCardsByATR = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<SCARD_ATRMASK> rgAtrMasks,
  Uint32 cAtrs,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  Uint32 cReaders,
),
    int Function(
  int hContext,
  Pointer<SCARD_ATRMASK> rgAtrMasks,
  int cAtrs,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
)>('SCardLocateCardsByATRW');

int SCardLocateCards(
  int hContext,
  Pointer<Utf16> mszCards,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
) =>
    _SCardLocateCards(
      hContext,
      mszCards,
      rgReaderStates,
      cReaders,
    );

late final _SCardLocateCards = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> mszCards,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  Uint32 cReaders,
),
    int Function(
  int hContext,
  Pointer<Utf16> mszCards,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
)>('SCardLocateCardsW');

int SCardReadCache(
  int hContext,
  Pointer<GUID> CardIdentifier,
  int FreshnessCounter,
  Pointer<Utf16> LookupName,
  Pointer<Uint8> Data,
  Pointer<Uint32> DataLen,
) =>
    _SCardReadCache(
      hContext,
      CardIdentifier,
      FreshnessCounter,
      LookupName,
      Data,
      DataLen,
    );

late final _SCardReadCache = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<GUID> CardIdentifier,
  Uint32 FreshnessCounter,
  Pointer<Utf16> LookupName,
  Pointer<Uint8> Data,
  Pointer<Uint32> DataLen,
),
    int Function(
  int hContext,
  Pointer<GUID> CardIdentifier,
  int FreshnessCounter,
  Pointer<Utf16> LookupName,
  Pointer<Uint8> Data,
  Pointer<Uint32> DataLen,
)>('SCardReadCacheW');

int SCardReconnect(
  int hCard,
  int dwShareMode,
  int dwPreferredProtocols,
  int dwInitialization,
  Pointer<Uint32> pdwActiveProtocol,
) =>
    _SCardReconnect(
      hCard,
      dwShareMode,
      dwPreferredProtocols,
      dwInitialization,
      pdwActiveProtocol,
    );

late final _SCardReconnect = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Uint32 dwShareMode,
  Uint32 dwPreferredProtocols,
  Uint32 dwInitialization,
  Pointer<Uint32> pdwActiveProtocol,
),
    int Function(
  int hCard,
  int dwShareMode,
  int dwPreferredProtocols,
  int dwInitialization,
  Pointer<Uint32> pdwActiveProtocol,
)>('SCardReconnect');

int SCardReleaseContext(
  int hContext,
) =>
    _SCardReleaseContext(
      hContext,
    );

late final _SCardReleaseContext = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
),
    int Function(
  int hContext,
)>('SCardReleaseContext');

void SCardReleaseStartedEvent() => _SCardReleaseStartedEvent();

late final _SCardReleaseStartedEvent =
    _winscard.lookupFunction<Void Function(), void Function()>(
        'SCardReleaseStartedEvent');

int SCardRemoveReaderFromGroup(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szGroupName,
) =>
    _SCardRemoveReaderFromGroup(
      hContext,
      szReaderName,
      szGroupName,
    );

late final _SCardRemoveReaderFromGroup = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szGroupName,
),
    int Function(
  int hContext,
  Pointer<Utf16> szReaderName,
  Pointer<Utf16> szGroupName,
)>('SCardRemoveReaderFromGroupW');

int SCardSetAttrib(
  int hCard,
  int dwAttrId,
  Pointer<Uint8> pbAttr,
  int cbAttrLen,
) =>
    _SCardSetAttrib(
      hCard,
      dwAttrId,
      pbAttr,
      cbAttrLen,
    );

late final _SCardSetAttrib = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Uint32 dwAttrId,
  Pointer<Uint8> pbAttr,
  Uint32 cbAttrLen,
),
    int Function(
  int hCard,
  int dwAttrId,
  Pointer<Uint8> pbAttr,
  int cbAttrLen,
)>('SCardSetAttrib');

int SCardSetCardTypeProviderName(
  int hContext,
  Pointer<Utf16> szCardName,
  int dwProviderId,
  Pointer<Utf16> szProvider,
) =>
    _SCardSetCardTypeProviderName(
      hContext,
      szCardName,
      dwProviderId,
      szProvider,
    );

late final _SCardSetCardTypeProviderName = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<Utf16> szCardName,
  Uint32 dwProviderId,
  Pointer<Utf16> szProvider,
),
    int Function(
  int hContext,
  Pointer<Utf16> szCardName,
  int dwProviderId,
  Pointer<Utf16> szProvider,
)>('SCardSetCardTypeProviderNameW');

int SCardState(
  int hCard,
  Pointer<Uint32> pdwState,
  Pointer<Uint32> pdwProtocol,
  Pointer<Uint8> pbAtr,
  Pointer<Uint32> pcbAtrLen,
) =>
    _SCardState(
      hCard,
      pdwState,
      pdwProtocol,
      pbAtr,
      pcbAtrLen,
    );

late final _SCardState = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Pointer<Uint32> pdwState,
  Pointer<Uint32> pdwProtocol,
  Pointer<Uint8> pbAtr,
  Pointer<Uint32> pcbAtrLen,
),
    int Function(
  int hCard,
  Pointer<Uint32> pdwState,
  Pointer<Uint32> pdwProtocol,
  Pointer<Uint8> pbAtr,
  Pointer<Uint32> pcbAtrLen,
)>('SCardState');

int SCardStatus(
  int hCard,
  Pointer<Utf16> mszReaderNames,
  Pointer<Uint32> pcchReaderLen,
  Pointer<Uint32> pdwState,
  Pointer<Uint32> pdwProtocol,
  Pointer<Uint8> pbAtr,
  Pointer<Uint32> pcbAtrLen,
) =>
    _SCardStatus(
      hCard,
      mszReaderNames,
      pcchReaderLen,
      pdwState,
      pdwProtocol,
      pbAtr,
      pcbAtrLen,
    );

late final _SCardStatus = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Pointer<Utf16> mszReaderNames,
  Pointer<Uint32> pcchReaderLen,
  Pointer<Uint32> pdwState,
  Pointer<Uint32> pdwProtocol,
  Pointer<Uint8> pbAtr,
  Pointer<Uint32> pcbAtrLen,
),
    int Function(
  int hCard,
  Pointer<Utf16> mszReaderNames,
  Pointer<Uint32> pcchReaderLen,
  Pointer<Uint32> pdwState,
  Pointer<Uint32> pdwProtocol,
  Pointer<Uint8> pbAtr,
  Pointer<Uint32> pcbAtrLen,
)>('SCardStatusW');

int SCardTransmit(
  int hCard,
  Pointer<SCARD_IO_REQUEST> pioSendPci,
  Pointer<Uint8> pbSendBuffer,
  int cbSendLength,
  Pointer<SCARD_IO_REQUEST> pioRecvPci,
  Pointer<Uint8> pbRecvBuffer,
  Pointer<Uint32> pcbRecvLength,
) =>
    _SCardTransmit(
      hCard,
      pioSendPci,
      pbSendBuffer,
      cbSendLength,
      pioRecvPci,
      pbRecvBuffer,
      pcbRecvLength,
    );

late final _SCardTransmit = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hCard,
  Pointer<SCARD_IO_REQUEST> pioSendPci,
  Pointer<Uint8> pbSendBuffer,
  Uint32 cbSendLength,
  Pointer<SCARD_IO_REQUEST> pioRecvPci,
  Pointer<Uint8> pbRecvBuffer,
  Pointer<Uint32> pcbRecvLength,
),
    int Function(
  int hCard,
  Pointer<SCARD_IO_REQUEST> pioSendPci,
  Pointer<Uint8> pbSendBuffer,
  int cbSendLength,
  Pointer<SCARD_IO_REQUEST> pioRecvPci,
  Pointer<Uint8> pbRecvBuffer,
  Pointer<Uint32> pcbRecvLength,
)>('SCardTransmit');

int SCardWriteCache(
  int hContext,
  Pointer<GUID> CardIdentifier,
  int FreshnessCounter,
  Pointer<Utf16> LookupName,
  Pointer<Uint8> Data,
  int DataLen,
) =>
    _SCardWriteCache(
      hContext,
      CardIdentifier,
      FreshnessCounter,
      LookupName,
      Data,
      DataLen,
    );

late final _SCardWriteCache = _winscard.lookupFunction<
    Int32 Function(
  IntPtr hContext,
  Pointer<GUID> CardIdentifier,
  Uint32 FreshnessCounter,
  Pointer<Utf16> LookupName,
  Pointer<Uint8> Data,
  Uint32 DataLen,
),
    int Function(
  int hContext,
  Pointer<GUID> CardIdentifier,
  int FreshnessCounter,
  Pointer<Utf16> LookupName,
  Pointer<Uint8> Data,
  int DataLen,
)>('SCardWriteCacheW');

// -----------------------------------------------------------------------
// scarddlg.dll
// -----------------------------------------------------------------------
final _scarddlg = DynamicLibrary.open('scarddlg.dll');

int GetOpenCardName(
  Pointer<OPENCARDNAME> param0,
) =>
    _GetOpenCardName(
      param0,
    );

late final _GetOpenCardName = _scarddlg.lookupFunction<
    Int32 Function(
  Pointer<OPENCARDNAME> param0,
),
    int Function(
  Pointer<OPENCARDNAME> param0,
)>('GetOpenCardNameW');

int SCardDlgExtendedError() => _SCardDlgExtendedError();

late final _SCardDlgExtendedError = _scarddlg
    .lookupFunction<Int32 Function(), int Function()>('SCardDlgExtendedError');

int SCardUIDlgSelectCard(
  Pointer<OPENCARDNAME_EX> param0,
) =>
    _SCardUIDlgSelectCard(
      param0,
    );

late final _SCardUIDlgSelectCard = _scarddlg.lookupFunction<
    Int32 Function(
  Pointer<OPENCARDNAME_EX> param0,
),
    int Function(
  Pointer<OPENCARDNAME_EX> param0,
)>('SCardUIDlgSelectCardW');
