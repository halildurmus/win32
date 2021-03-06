/// {@category Enum}
class WcmTargetMode {
  static const OfflineMode = 0x00000001;
  static const OnlineMode = 0x00000002;
}

/// {@category Enum}
class WcmNamespaceEnumerationFlags {
  static const SharedEnumeration = 0x00000001;
  static const UserEnumeration = 0x00000002;
  static const AllEnumeration = 0x00000003;
}

/// {@category Enum}
class WcmDataType {
  static const dataTypeByte = 0x00000001;
  static const dataTypeSByte = 0x00000002;
  static const dataTypeUInt16 = 0x00000003;
  static const dataTypeInt16 = 0x00000004;
  static const dataTypeUInt32 = 0x00000005;
  static const dataTypeInt32 = 0x00000006;
  static const dataTypeUInt64 = 0x00000007;
  static const dataTypeInt64 = 0x00000008;
  static const dataTypeBoolean = 0x0000000b;
  static const dataTypeString = 0x0000000c;
  static const dataTypeFlagArray = 0x00008000;
}

/// {@category Enum}
class WcmSettingType {
  static const settingTypeScalar = 0x00000001;
  static const settingTypeComplex = 0x00000002;
  static const settingTypeList = 0x00000003;
}

/// {@category Enum}
class WcmRestrictionFacets {
  static const restrictionFacetMaxLength = 0x00000001;
  static const restrictionFacetEnumeration = 0x00000002;
  static const restrictionFacetMaxInclusive = 0x00000004;
  static const restrictionFacetMinInclusive = 0x00000008;
}

/// {@category Enum}
class WcmUserStatus {
  static const UnknownStatus = 0x00000000;
  static const UserRegistered = 0x00000001;
  static const UserUnregistered = 0x00000002;
  static const UserLoaded = 0x00000003;
  static const UserUnloaded = 0x00000004;
}

/// {@category Enum}
class WcmNamespaceAccess {
  static const ReadOnlyAccess = 0x00000001;
  static const ReadWriteAccess = 0x00000002;
}
