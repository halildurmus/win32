/// {@category Enum}
class APPX_COMPRESSION_OPTION {
  static const APPX_COMPRESSION_OPTION_NONE = 0x00000000;
  static const APPX_COMPRESSION_OPTION_NORMAL = 0x00000001;
  static const APPX_COMPRESSION_OPTION_MAXIMUM = 0x00000002;
  static const APPX_COMPRESSION_OPTION_FAST = 0x00000003;
  static const APPX_COMPRESSION_OPTION_SUPERFAST = 0x00000004;
}

/// {@category Enum}
class APPX_FOOTPRINT_FILE_TYPE {
  static const APPX_FOOTPRINT_FILE_TYPE_MANIFEST = 0x00000000;
  static const APPX_FOOTPRINT_FILE_TYPE_BLOCKMAP = 0x00000001;
  static const APPX_FOOTPRINT_FILE_TYPE_SIGNATURE = 0x00000002;
  static const APPX_FOOTPRINT_FILE_TYPE_CODEINTEGRITY = 0x00000003;
  static const APPX_FOOTPRINT_FILE_TYPE_CONTENTGROUPMAP = 0x00000004;
}

/// {@category Enum}
class APPX_BUNDLE_FOOTPRINT_FILE_TYPE {
  static const APPX_BUNDLE_FOOTPRINT_FILE_TYPE_FIRST = 0x00000000;
  static const APPX_BUNDLE_FOOTPRINT_FILE_TYPE_MANIFEST = 0x00000000;
  static const APPX_BUNDLE_FOOTPRINT_FILE_TYPE_BLOCKMAP = 0x00000001;
  static const APPX_BUNDLE_FOOTPRINT_FILE_TYPE_SIGNATURE = 0x00000002;
  static const APPX_BUNDLE_FOOTPRINT_FILE_TYPE_LAST = 0x00000002;
}

/// {@category Enum}
class APPX_CAPABILITIES {
  static const APPX_CAPABILITY_INTERNET_CLIENT = 0x00000001;
  static const APPX_CAPABILITY_INTERNET_CLIENT_SERVER = 0x00000002;
  static const APPX_CAPABILITY_PRIVATE_NETWORK_CLIENT_SERVER = 0x00000004;
  static const APPX_CAPABILITY_DOCUMENTS_LIBRARY = 0x00000008;
  static const APPX_CAPABILITY_PICTURES_LIBRARY = 0x00000010;
  static const APPX_CAPABILITY_VIDEOS_LIBRARY = 0x00000020;
  static const APPX_CAPABILITY_MUSIC_LIBRARY = 0x00000040;
  static const APPX_CAPABILITY_ENTERPRISE_AUTHENTICATION = 0x00000080;
  static const APPX_CAPABILITY_SHARED_USER_CERTIFICATES = 0x00000100;
  static const APPX_CAPABILITY_REMOVABLE_STORAGE = 0x00000200;
  static const APPX_CAPABILITY_APPOINTMENTS = 0x00000400;
  static const APPX_CAPABILITY_CONTACTS = 0x00000800;
}

/// {@category Enum}
class APPX_PACKAGE_ARCHITECTURE {
  static const APPX_PACKAGE_ARCHITECTURE_X86 = 0x00000000;
  static const APPX_PACKAGE_ARCHITECTURE_ARM = 0x00000005;
  static const APPX_PACKAGE_ARCHITECTURE_X64 = 0x00000009;
  static const APPX_PACKAGE_ARCHITECTURE_NEUTRAL = 0x0000000b;
  static const APPX_PACKAGE_ARCHITECTURE_ARM64 = 0x0000000c;
}

/// {@category Enum}
class APPX_PACKAGE_ARCHITECTURE2 {
  static const APPX_PACKAGE_ARCHITECTURE2_X86 = 0x00000000;
  static const APPX_PACKAGE_ARCHITECTURE2_ARM = 0x00000005;
  static const APPX_PACKAGE_ARCHITECTURE2_X64 = 0x00000009;
  static const APPX_PACKAGE_ARCHITECTURE2_NEUTRAL = 0x0000000b;
  static const APPX_PACKAGE_ARCHITECTURE2_ARM64 = 0x0000000c;
  static const APPX_PACKAGE_ARCHITECTURE2_X86_ON_ARM64 = 0x0000000e;
  static const APPX_PACKAGE_ARCHITECTURE2_UNKNOWN = 0x0000ffff;
}

/// {@category Enum}
class APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE {
  static const APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE_APPLICATION = 0x00000000;
  static const APPX_BUNDLE_PAYLOAD_PACKAGE_TYPE_RESOURCE = 0x00000001;
}

/// {@category Enum}
class DX_FEATURE_LEVEL {
  static const DX_FEATURE_LEVEL_UNSPECIFIED = 0x00000000;
  static const DX_FEATURE_LEVEL_9 = 0x00000001;
  static const DX_FEATURE_LEVEL_10 = 0x00000002;
  static const DX_FEATURE_LEVEL_11 = 0x00000003;
}

/// {@category Enum}
class APPX_CAPABILITY_CLASS_TYPE {
  static const APPX_CAPABILITY_CLASS_DEFAULT = 0x00000000;
  static const APPX_CAPABILITY_CLASS_GENERAL = 0x00000001;
  static const APPX_CAPABILITY_CLASS_RESTRICTED = 0x00000002;
  static const APPX_CAPABILITY_CLASS_WINDOWS = 0x00000004;
  static const APPX_CAPABILITY_CLASS_ALL = 0x00000007;
  static const APPX_CAPABILITY_CLASS_CUSTOM = 0x00000008;
}

/// {@category Enum}
class APPX_PACKAGING_CONTEXT_CHANGE_TYPE {
  static const APPX_PACKAGING_CONTEXT_CHANGE_TYPE_START = 0x00000000;
  static const APPX_PACKAGING_CONTEXT_CHANGE_TYPE_CHANGE = 0x00000001;
  static const APPX_PACKAGING_CONTEXT_CHANGE_TYPE_DETAILS = 0x00000002;
  static const APPX_PACKAGING_CONTEXT_CHANGE_TYPE_END = 0x00000003;
}

/// {@category Enum}
class APPX_ENCRYPTED_PACKAGE_OPTIONS {
  static const APPX_ENCRYPTED_PACKAGE_OPTION_NONE = 0x00000000;
  static const APPX_ENCRYPTED_PACKAGE_OPTION_DIFFUSION = 0x00000001;
  static const APPX_ENCRYPTED_PACKAGE_OPTION_PAGE_HASHING = 0x00000002;
}

/// {@category Enum}
class APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION {
  static const APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_OPTION_APPEND_DELTA =
      0x00000000;
}

/// {@category Enum}
class APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTIONS {
  static const APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTION_NONE =
      0x00000000;
  static const APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTION_SKIP_VALIDATION =
      0x00000001;
  static const APPX_PACKAGE_EDITOR_UPDATE_PACKAGE_MANIFEST_OPTION_LOCALIZED =
      0x00000002;
}

/// {@category Enum}
class PackagePathType {
  static const PackagePathType_Install = 0x00000000;
  static const PackagePathType_Mutable = 0x00000001;
  static const PackagePathType_Effective = 0x00000002;
  static const PackagePathType_MachineExternal = 0x00000003;
  static const PackagePathType_UserExternal = 0x00000004;
  static const PackagePathType_EffectiveExternal = 0x00000005;
}

/// {@category Enum}
class PackageOrigin {
  static const PackageOrigin_Unknown = 0x00000000;
  static const PackageOrigin_Unsigned = 0x00000001;
  static const PackageOrigin_Inbox = 0x00000002;
  static const PackageOrigin_Store = 0x00000003;
  static const PackageOrigin_DeveloperUnsigned = 0x00000004;
  static const PackageOrigin_DeveloperSigned = 0x00000005;
  static const PackageOrigin_LineOfBusiness = 0x00000006;
}

/// {@category Enum}
class AppPolicyLifecycleManagement {
  static const AppPolicyLifecycleManagement_Unmanaged = 0x00000000;
  static const AppPolicyLifecycleManagement_Managed = 0x00000001;
}

/// {@category Enum}
class AppPolicyWindowingModel {
  static const AppPolicyWindowingModel_None = 0x00000000;
  static const AppPolicyWindowingModel_Universal = 0x00000001;
  static const AppPolicyWindowingModel_ClassicDesktop = 0x00000002;
  static const AppPolicyWindowingModel_ClassicPhone = 0x00000003;
}

/// {@category Enum}
class AppPolicyMediaFoundationCodecLoading {
  static const AppPolicyMediaFoundationCodecLoading_All = 0x00000000;
  static const AppPolicyMediaFoundationCodecLoading_InboxOnly = 0x00000001;
}

/// {@category Enum}
class AppPolicyClrCompat {
  static const AppPolicyClrCompat_Other = 0x00000000;
  static const AppPolicyClrCompat_ClassicDesktop = 0x00000001;
  static const AppPolicyClrCompat_Universal = 0x00000002;
  static const AppPolicyClrCompat_PackagedDesktop = 0x00000003;
}

/// {@category Enum}
class AppPolicyThreadInitializationType {
  static const AppPolicyThreadInitializationType_None = 0x00000000;
  static const AppPolicyThreadInitializationType_InitializeWinRT = 0x00000001;
}

/// {@category Enum}
class AppPolicyShowDeveloperDiagnostic {
  static const AppPolicyShowDeveloperDiagnostic_None = 0x00000000;
  static const AppPolicyShowDeveloperDiagnostic_ShowUI = 0x00000001;
}

/// {@category Enum}
class AppPolicyProcessTerminationMethod {
  static const AppPolicyProcessTerminationMethod_ExitProcess = 0x00000000;
  static const AppPolicyProcessTerminationMethod_TerminateProcess = 0x00000001;
}

/// {@category Enum}
class AppPolicyCreateFileAccess {
  static const AppPolicyCreateFileAccess_Full = 0x00000000;
  static const AppPolicyCreateFileAccess_Limited = 0x00000001;
}
