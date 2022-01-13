/// {@category Enum}
class CREDSPP_SUBMIT_TYPE {
  static const CredsspPasswordCreds = 0x00000002;
  static const CredsspSchannelCreds = 0x00000004;
  static const CredsspCertificateCreds = 0x0000000d;
  static const CredsspSubmitBufferBoth = 0x00000032;
  static const CredsspSubmitBufferBothOld = 0x00000033;
  static const CredsspCredEx = 0x00000064;
}

/// {@category Enum}
class CREDUIWIN_FLAGS {
  static const CREDUIWIN_GENERIC = 0x00000001;
  static const CREDUIWIN_CHECKBOX = 0x00000002;
  static const CREDUIWIN_AUTHPACKAGE_ONLY = 0x00000010;
  static const CREDUIWIN_IN_CRED_ONLY = 0x00000020;
  static const CREDUIWIN_ENUMERATE_ADMINS = 0x00000100;
  static const CREDUIWIN_ENUMERATE_CURRENT_USER = 0x00000200;
  static const CREDUIWIN_SECURE_PROMPT = 0x00001000;
  static const CREDUIWIN_PREPROMPTING = 0x00002000;
  static const CREDUIWIN_PACK_32_WOW = 0x10000000;
}

/// {@category Enum}
class CREDUI_FLAGS {
  static const CREDUI_FLAGS_ALWAYS_SHOW_UI = 0x00000080;
  static const CREDUI_FLAGS_COMPLETE_USERNAME = 0x00000800;
  static const CREDUI_FLAGS_DO_NOT_PERSIST = 0x00000002;
  static const CREDUI_FLAGS_EXCLUDE_CERTIFICATES = 0x00000008;
  static const CREDUI_FLAGS_EXPECT_CONFIRMATION = 0x00020000;
  static const CREDUI_FLAGS_GENERIC_CREDENTIALS = 0x00040000;
  static const CREDUI_FLAGS_INCORRECT_PASSWORD = 0x00000001;
  static const CREDUI_FLAGS_KEEP_USERNAME = 0x00100000;
  static const CREDUI_FLAGS_PASSWORD_ONLY_OK = 0x00000200;
  static const CREDUI_FLAGS_PERSIST = 0x00001000;
  static const CREDUI_FLAGS_REQUEST_ADMINISTRATOR = 0x00000004;
  static const CREDUI_FLAGS_REQUIRE_CERTIFICATE = 0x00000010;
  static const CREDUI_FLAGS_REQUIRE_SMARTCARD = 0x00000100;
  static const CREDUI_FLAGS_SERVER_CREDENTIAL = 0x00004000;
  static const CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX = 0x00000040;
  static const CREDUI_FLAGS_USERNAME_TARGET_CREDENTIALS = 0x00080000;
  static const CREDUI_FLAGS_VALIDATE_USERNAME = 0x00000400;
}

/// {@category Enum}
class CRED_ENUMERATE_FLAGS {
  static const CRED_ENUMERATE_ALL_CREDENTIALS = 0x00000001;
}

/// {@category Enum}
class CRED_FLAGS {
  static const CRED_FLAGS_PASSWORD_FOR_CERT = 0x00000001;
  static const CRED_FLAGS_PROMPT_NOW = 0x00000002;
  static const CRED_FLAGS_USERNAME_TARGET = 0x00000004;
  static const CRED_FLAGS_OWF_CRED_BLOB = 0x00000008;
  static const CRED_FLAGS_REQUIRE_CONFIRMATION = 0x00000010;
  static const CRED_FLAGS_WILDCARD_MATCH = 0x00000020;
  static const CRED_FLAGS_VSM_PROTECTED = 0x00000040;
  static const CRED_FLAGS_NGC_CERT = 0x00000080;
  static const CRED_FLAGS_VALID_FLAGS = 0x0000f0ff;
  static const CRED_FLAGS_VALID_INPUT_FLAGS = 0x0000f09f;
}

/// {@category Enum}
class CRED_MARSHAL_TYPE {
  static const CertCredential = 0x00000001;
  static const UsernameTargetCredential = 0x00000002;
  static const BinaryBlobCredential = 0x00000003;
  static const UsernameForPackedCredentials = 0x00000004;
  static const BinaryBlobForSystem = 0x00000005;
}

/// {@category Enum}
class CRED_PACK_FLAGS {
  static const CRED_PACK_PROTECTED_CREDENTIALS = 0x00000001;
  static const CRED_PACK_WOW_BUFFER = 0x00000002;
  static const CRED_PACK_GENERIC_CREDENTIALS = 0x00000004;
  static const CRED_PACK_ID_PROVIDER_CREDENTIALS = 0x00000008;
}

/// {@category Enum}
class CRED_PERSIST {
  static const CRED_PERSIST_NONE = 0x00000000;
  static const CRED_PERSIST_SESSION = 0x00000001;
  static const CRED_PERSIST_LOCAL_MACHINE = 0x00000002;
  static const CRED_PERSIST_ENTERPRISE = 0x00000003;
}

/// {@category Enum}
class CRED_PROTECTION_TYPE {
  static const CredUnprotected = 0x00000000;
  static const CredUserProtection = 0x00000001;
  static const CredTrustedProtection = 0x00000002;
  static const CredForSystemProtection = 0x00000003;
}

/// {@category Enum}
class CRED_TYPE {
  static const CRED_TYPE_GENERIC = 0x00000001;
  static const CRED_TYPE_DOMAIN_PASSWORD = 0x00000002;
  static const CRED_TYPE_DOMAIN_CERTIFICATE = 0x00000003;
  static const CRED_TYPE_DOMAIN_VISIBLE_PASSWORD = 0x00000004;
  static const CRED_TYPE_GENERIC_CERTIFICATE = 0x00000005;
  static const CRED_TYPE_DOMAIN_EXTENDED = 0x00000006;
  static const CRED_TYPE_MAXIMUM = 0x00000007;
  static const CRED_TYPE_MAXIMUM_EX = 0x000003ef;
}

/// {@category Enum}
class KeyCredentialManagerOperationErrorStates {
  static const KeyCredentialManagerOperationErrorStateNone = 0x00000000;
  static const KeyCredentialManagerOperationErrorStateDeviceJoinFailure =
      0x00000001;
  static const KeyCredentialManagerOperationErrorStateTokenFailure = 0x00000002;
  static const KeyCredentialManagerOperationErrorStateCertificateFailure =
      0x00000004;
  static const KeyCredentialManagerOperationErrorStateRemoteSessionFailure =
      0x00000008;
  static const KeyCredentialManagerOperationErrorStatePolicyFailure =
      0x00000010;
  static const KeyCredentialManagerOperationErrorStateHardwareFailure =
      0x00000020;
  static const KeyCredentialManagerOperationErrorStatePinExistsFailure =
      0x00000040;
}

/// {@category Enum}
class KeyCredentialManagerOperationType {
  static const KeyCredentialManagerProvisioning = 0x00000000;
  static const KeyCredentialManagerPinChange = 0x00000001;
  static const KeyCredentialManagerPinReset = 0x00000002;
}

/// {@category Enum}
class READER_SEL_REQUEST_MATCH_TYPE {
  static const RSR_MATCH_TYPE_READER_AND_CONTAINER = 0x00000001;
  static const RSR_MATCH_TYPE_SERIAL_NUMBER = 0x00000002;
  static const RSR_MATCH_TYPE_ALL_CARDS = 0x00000003;
}

/// {@category Enum}
class SCARD_SCOPE {
  static const SCARD_SCOPE_USER = 0x00000000;
  static const SCARD_SCOPE_SYSTEM = 0x00000002;
}

/// {@category Enum}
class SCARD_STATE {
  static const SCARD_STATE_UNAWARE = 0x00000000;
  static const SCARD_STATE_IGNORE = 0x00000001;
  static const SCARD_STATE_UNAVAILABLE = 0x00000008;
  static const SCARD_STATE_EMPTY = 0x00000010;
  static const SCARD_STATE_PRESENT = 0x00000020;
  static const SCARD_STATE_ATRMATCH = 0x00000040;
  static const SCARD_STATE_EXCLUSIVE = 0x00000080;
  static const SCARD_STATE_INUSE = 0x00000100;
  static const SCARD_STATE_MUTE = 0x00000200;
  static const SCARD_STATE_CHANGED = 0x00000002;
  static const SCARD_STATE_UNKNOWN = 0x00000004;
}
