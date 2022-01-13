/// {@category Enum}
class SAFER_COMPUTE_TOKEN_FROM_LEVEL_FLAGS {
  static const SAFER_TOKEN_NULL_IF_EQUAL = 0x00000001;
  static const SAFER_TOKEN_COMPARE_ONLY = 0x00000002;
  static const SAFER_TOKEN_MAKE_INERT = 0x00000004;
  static const SAFER_TOKEN_WANT_FLAGS = 0x00000008;
}

/// {@category Enum}
class SAFER_IDENTIFICATION_TYPES {
  static const SaferIdentityDefault = 0x00000000;
  static const SaferIdentityTypeImageName = 0x00000001;
  static const SaferIdentityTypeImageHash = 0x00000002;
  static const SaferIdentityTypeUrlZone = 0x00000003;
  static const SaferIdentityTypeCertificate = 0x00000004;
}

/// {@category Enum}
class SAFER_OBJECT_INFO_CLASS {
  static const SaferObjectLevelId = 0x00000001;
  static const SaferObjectScopeId = 0x00000002;
  static const SaferObjectFriendlyName = 0x00000003;
  static const SaferObjectDescription = 0x00000004;
  static const SaferObjectBuiltin = 0x00000005;
  static const SaferObjectDisallowed = 0x00000006;
  static const SaferObjectDisableMaxPrivilege = 0x00000007;
  static const SaferObjectInvertDeletedPrivileges = 0x00000008;
  static const SaferObjectDeletedPrivileges = 0x00000009;
  static const SaferObjectDefaultOwner = 0x0000000a;
  static const SaferObjectSidsToDisable = 0x0000000b;
  static const SaferObjectRestrictedSidsInverted = 0x0000000c;
  static const SaferObjectRestrictedSidsAdded = 0x0000000d;
  static const SaferObjectAllIdentificationGuids = 0x0000000e;
  static const SaferObjectSingleIdentification = 0x0000000f;
  static const SaferObjectExtendedError = 0x00000010;
}

/// {@category Enum}
class SAFER_POLICY_INFO_CLASS {
  static const SaferPolicyLevelList = 0x00000001;
  static const SaferPolicyEnableTransparentEnforcement = 0x00000002;
  static const SaferPolicyDefaultLevel = 0x00000003;
  static const SaferPolicyEvaluateUserScope = 0x00000004;
  static const SaferPolicyScopeFlags = 0x00000005;
  static const SaferPolicyDefaultLevelFlags = 0x00000006;
  static const SaferPolicyAuthenticodeEnabled = 0x00000007;
}
