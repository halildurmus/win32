// Dart representations of common enums used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_types, constant_identifier_names

/// {@category enum}
extension type const ACCEL_VIRT_FLAGS(int _) implements int {
  @Deprecated('Use FVIRTKEY instead')
  static const FVIRTKEY = 1;
  @Deprecated('Use FNOINVERT instead')
  static const FNOINVERT = 2;
  @Deprecated('Use FSHIFT instead')
  static const FSHIFT = 4;
  @Deprecated('Use FCONTROL instead')
  static const FCONTROL = 8;
  @Deprecated('Use FALT instead')
  static const FALT = 16;
}

/// {@category enum}
extension type const ACTIVATE_KEYBOARD_LAYOUT_FLAGS(int _) implements int {
  @Deprecated('Use KLF_REORDER instead')
  static const KLF_REORDER = 8;
  @Deprecated('Use KLF_RESET instead')
  static const KLF_RESET = 1073741824;
  @Deprecated('Use KLF_SETFORPROCESS instead')
  static const KLF_SETFORPROCESS = 256;
  @Deprecated('Use KLF_SHIFTLOCK instead')
  static const KLF_SHIFTLOCK = 65536;
  @Deprecated('Use KLF_ACTIVATE instead')
  static const KLF_ACTIVATE = 1;
  @Deprecated('Use KLF_NOTELLSHELL instead')
  static const KLF_NOTELLSHELL = 128;
  @Deprecated('Use KLF_REPLACELANG instead')
  static const KLF_REPLACELANG = 16;
  @Deprecated('Use KLF_SUBSTITUTE_OK instead')
  static const KLF_SUBSTITUTE_OK = 2;
}

/// {@category enum}
extension type const ADDRESS_FAMILY(int _) implements int {
  @Deprecated('Use AF_INET instead')
  static const AF_INET = 2;
  @Deprecated('Use AF_INET6 instead')
  static const AF_INET6 = 23;
  @Deprecated('Use AF_UNSPEC instead')
  static const AF_UNSPEC = 0;
}

/// {@category enum}
extension type const ADVANCED_FEATURE_FLAGS(int _) implements int {
  @Deprecated('Use FADF_AUTO instead')
  static const FADF_AUTO = 1;
  @Deprecated('Use FADF_STATIC instead')
  static const FADF_STATIC = 2;
  @Deprecated('Use FADF_EMBEDDED instead')
  static const FADF_EMBEDDED = 4;
  @Deprecated('Use FADF_FIXEDSIZE instead')
  static const FADF_FIXEDSIZE = 16;
  @Deprecated('Use FADF_RECORD instead')
  static const FADF_RECORD = 32;
  @Deprecated('Use FADF_HAVEIID instead')
  static const FADF_HAVEIID = 64;
  @Deprecated('Use FADF_HAVEVARTYPE instead')
  static const FADF_HAVEVARTYPE = 128;
  @Deprecated('Use FADF_BSTR instead')
  static const FADF_BSTR = 256;
  @Deprecated('Use FADF_UNKNOWN instead')
  static const FADF_UNKNOWN = 512;
  @Deprecated('Use FADF_DISPATCH instead')
  static const FADF_DISPATCH = 1024;
  @Deprecated('Use FADF_VARIANT instead')
  static const FADF_VARIANT = 2048;
  @Deprecated('Use FADF_RESERVED instead')
  static const FADF_RESERVED = 61448;
}

/// {@category enum}
extension type const ANIMATE_WINDOW_FLAGS(int _) implements int {
  @Deprecated('Use AW_ACTIVATE instead')
  static const AW_ACTIVATE = 131072;
  @Deprecated('Use AW_BLEND instead')
  static const AW_BLEND = 524288;
  @Deprecated('Use AW_CENTER instead')
  static const AW_CENTER = 16;
  @Deprecated('Use AW_HIDE instead')
  static const AW_HIDE = 65536;
  @Deprecated('Use AW_HOR_POSITIVE instead')
  static const AW_HOR_POSITIVE = 1;
  @Deprecated('Use AW_HOR_NEGATIVE instead')
  static const AW_HOR_NEGATIVE = 2;
  @Deprecated('Use AW_SLIDE instead')
  static const AW_SLIDE = 262144;
  @Deprecated('Use AW_VER_POSITIVE instead')
  static const AW_VER_POSITIVE = 4;
  @Deprecated('Use AW_VER_NEGATIVE instead')
  static const AW_VER_NEGATIVE = 8;
}

/// Specifies the capabilities or privileges requested by a package.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_capabilities>.
///
/// {@category enum}
extension type const APPX_CAPABILITIES(int _) implements int {
  /// Your Internet connection for outgoing connections to the Internet.
  @Deprecated('Use APPX_CAPABILITY_INTERNET_CLIENT instead')
  static const APPX_CAPABILITY_INTERNET_CLIENT = 1;

  /// Your Internet connection, including incoming unsolicited connections from
  /// the Internet – the app can send information to or from your computer
  /// through a firewall.
  @Deprecated('Use APPX_CAPABILITY_INTERNET_CLIENT_SERVER instead')
  static const APPX_CAPABILITY_INTERNET_CLIENT_SERVER = 2;

  /// A home or work network – the app can send information to or from your
  /// computer and other computers on the same network.
  @Deprecated('Use APPX_CAPABILITY_PRIVATE_NETWORK_CLIENT_SERVER instead')
  static const APPX_CAPABILITY_PRIVATE_NETWORK_CLIENT_SERVER =
      APPX_CAPABILITIES(4);

  /// Your documents library, including the capability to add, change, or delete
  /// files.
  @Deprecated('Use APPX_CAPABILITY_DOCUMENTS_LIBRARY instead')
  static const APPX_CAPABILITY_DOCUMENTS_LIBRARY = 8;

  /// Your pictures library, including the capability to add, change, or delete
  /// files.
  @Deprecated('Use APPX_CAPABILITY_PICTURES_LIBRARY instead')
  static const APPX_CAPABILITY_PICTURES_LIBRARY = 16;

  /// Your videos library, including the capability to add, change, or delete
  /// files.
  @Deprecated('Use APPX_CAPABILITY_VIDEOS_LIBRARY instead')
  static const APPX_CAPABILITY_VIDEOS_LIBRARY = 32;

  /// Your music library and playlists, including the capability to add, change,
  /// or delete files.
  @Deprecated('Use APPX_CAPABILITY_MUSIC_LIBRARY instead')
  static const APPX_CAPABILITY_MUSIC_LIBRARY = 64;

  /// Your Windows credentials, for access to a corporate intranet.
  @Deprecated('Use APPX_CAPABILITY_ENTERPRISE_AUTHENTICATION instead')
  static const APPX_CAPABILITY_ENTERPRISE_AUTHENTICATION = APPX_CAPABILITIES(
    128,
  );

  /// Software and hardware certificates or a smart card – used to identify you
  /// in the app.
  @Deprecated('Use APPX_CAPABILITY_SHARED_USER_CERTIFICATES instead')
  static const APPX_CAPABILITY_SHARED_USER_CERTIFICATES = APPX_CAPABILITIES(
    256,
  );

  /// Removable storage, such as an external hard drive or USB flash drive, or
  /// MTP portable device, including the capability to add, change, or delete
  /// specific files.
  @Deprecated('Use APPX_CAPABILITY_REMOVABLE_STORAGE instead')
  static const APPX_CAPABILITY_REMOVABLE_STORAGE = 512;
  @Deprecated('Use APPX_CAPABILITY_APPOINTMENTS instead')
  static const APPX_CAPABILITY_APPOINTMENTS = 1024;
  @Deprecated('Use APPX_CAPABILITY_CONTACTS instead')
  static const APPX_CAPABILITY_CONTACTS = 2048;
}

/// {@category enum}
extension type const APPX_CAPABILITY_CLASS_TYPE(int _) implements int {
  @Deprecated('Use APPX_CAPABILITY_CLASS_DEFAULT instead')
  static const APPX_CAPABILITY_CLASS_DEFAULT = 0;
  @Deprecated('Use APPX_CAPABILITY_CLASS_GENERAL instead')
  static const APPX_CAPABILITY_CLASS_GENERAL = 1;
  @Deprecated('Use APPX_CAPABILITY_CLASS_RESTRICTED instead')
  static const APPX_CAPABILITY_CLASS_RESTRICTED = 2;
  @Deprecated('Use APPX_CAPABILITY_CLASS_WINDOWS instead')
  static const APPX_CAPABILITY_CLASS_WINDOWS = 4;
  @Deprecated('Use APPX_CAPABILITY_CLASS_ALL instead')
  static const APPX_CAPABILITY_CLASS_ALL = 7;
  @Deprecated('Use APPX_CAPABILITY_CLASS_CUSTOM instead')
  static const APPX_CAPABILITY_CLASS_CUSTOM = 8;
}

/// Specifies the degree of compression used to store the file in the package.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_compression_option>.
///
/// {@category enum}
extension type const APPX_COMPRESSION_OPTION(int _) implements int {
  /// No compression.
  @Deprecated('Use APPX_COMPRESSION_OPTION_NONE instead')
  static const APPX_COMPRESSION_OPTION_NONE = 0;

  /// Normal compression.
  @Deprecated('Use APPX_COMPRESSION_OPTION_NORMAL instead')
  static const APPX_COMPRESSION_OPTION_NORMAL = 1;

  /// Maximum compression.
  @Deprecated('Use APPX_COMPRESSION_OPTION_MAXIMUM instead')
  static const APPX_COMPRESSION_OPTION_MAXIMUM = 2;

  /// Fast compression.
  @Deprecated('Use APPX_COMPRESSION_OPTION_FAST instead')
  static const APPX_COMPRESSION_OPTION_FAST = 3;

  /// Super-fast compression.
  @Deprecated('Use APPX_COMPRESSION_OPTION_SUPERFAST instead')
  static const APPX_COMPRESSION_OPTION_SUPERFAST = 4;
}

/// Specifies the type of footprint file in a package.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_footprint_file_type>.
///
/// {@category enum}
extension type const APPX_FOOTPRINT_FILE_TYPE(int _) implements int {
  /// The package manifest.
  @Deprecated('Use APPX_FOOTPRINT_FILE_TYPE_MANIFEST instead')
  static const APPX_FOOTPRINT_FILE_TYPE_MANIFEST = 0;

  /// The package block map.
  @Deprecated('Use APPX_FOOTPRINT_FILE_TYPE_BLOCKMAP instead')
  static const APPX_FOOTPRINT_FILE_TYPE_BLOCKMAP = 1;

  /// The package signature.
  @Deprecated('Use APPX_FOOTPRINT_FILE_TYPE_SIGNATURE instead')
  static const APPX_FOOTPRINT_FILE_TYPE_SIGNATURE = 2;

  /// The code signing catalog file used for code integrity checks.
  @Deprecated('Use APPX_FOOTPRINT_FILE_TYPE_CODEINTEGRITY instead')
  static const APPX_FOOTPRINT_FILE_TYPE_CODEINTEGRITY =
      APPX_FOOTPRINT_FILE_TYPE(3);

  /// The content group map used for streaming install.
  @Deprecated('Use APPX_FOOTPRINT_FILE_TYPE_CONTENTGROUPMAP instead')
  static const APPX_FOOTPRINT_FILE_TYPE_CONTENTGROUPMAP =
      APPX_FOOTPRINT_FILE_TYPE(4);
}

/// Specifies the processor architectures supported by a package.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_package_architecture>.
///
/// {@category enum}
extension type const APPX_PACKAGE_ARCHITECTURE(int _) implements int {
  /// The x86 processor architecture.
  @Deprecated('Use APPX_PACKAGE_ARCHITECTURE_X86 instead')
  static const APPX_PACKAGE_ARCHITECTURE_X86 = 0;

  /// The ARM processor architecture.
  @Deprecated('Use APPX_PACKAGE_ARCHITECTURE_ARM instead')
  static const APPX_PACKAGE_ARCHITECTURE_ARM = 5;

  /// The x64 processor architecture.
  @Deprecated('Use APPX_PACKAGE_ARCHITECTURE_X64 instead')
  static const APPX_PACKAGE_ARCHITECTURE_X64 = 9;

  /// Any processor architecture.
  @Deprecated('Use APPX_PACKAGE_ARCHITECTURE_NEUTRAL instead')
  static const APPX_PACKAGE_ARCHITECTURE_NEUTRAL = APPX_PACKAGE_ARCHITECTURE(
    11,
  );

  /// The 64-bit ARM processor architecture.
  @Deprecated('Use APPX_PACKAGE_ARCHITECTURE_ARM64 instead')
  static const APPX_PACKAGE_ARCHITECTURE_ARM64 = 12;
}

/// Specifies audio ducking options.
///
/// Use values from this enumeration when calling
/// IAudioClientDuckingControl::SetDuckingOptionsForCurrentStream.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/ne-audioclient-audio_ducking_options>.
///
/// {@category enum}
extension type const AUDIO_DUCKING_OPTIONS(int _) implements int {
  /// The associated audio stream should use the default audio ducking behavior.
  @Deprecated('Use AUDIO_DUCKING_OPTIONS_DEFAULT instead')
  static const AUDIO_DUCKING_OPTIONS_DEFAULT = 0;

  /// The associated audio stream should not cause other streams to be ducked.
  @Deprecated('Use AUDIO_DUCKING_OPTIONS_DO_NOT_DUCK_OTHER_STREAMS instead')
  static const AUDIO_DUCKING_OPTIONS_DO_NOT_DUCK_OTHER_STREAMS =
      AUDIO_DUCKING_OPTIONS(1);
}

/// Specifies the category of an audio stream.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/audiosessiontypes/ne-audiosessiontypes-audio_stream_category>.
///
/// {@category enum}
extension type const AUDIO_STREAM_CATEGORY(int _) implements int {
  /// Other audio stream.
  @Deprecated('Use AudioCategory_Other instead')
  static const AudioCategory_Other = 0;

  /// Media that will only stream when the app is in the foreground.
  @Deprecated('Use AudioCategory_ForegroundOnlyMedia instead')
  static const AudioCategory_ForegroundOnlyMedia = 1;

  /// Real-time communications, such as VOIP or chat.
  @Deprecated('Use AudioCategory_Communications instead')
  static const AudioCategory_Communications = 3;

  /// Alert sounds.
  @Deprecated('Use AudioCategory_Alerts instead')
  static const AudioCategory_Alerts = 4;

  /// Sound effects.
  @Deprecated('Use AudioCategory_SoundEffects instead')
  static const AudioCategory_SoundEffects = 5;

  /// Game sound effects.
  @Deprecated('Use AudioCategory_GameEffects instead')
  static const AudioCategory_GameEffects = 6;

  /// Background audio for games.
  @Deprecated('Use AudioCategory_GameMedia instead')
  static const AudioCategory_GameMedia = 7;

  /// Game chat audio.
  @Deprecated('Use AudioCategory_GameChat instead')
  static const AudioCategory_GameChat = 8;

  /// Speech.
  @Deprecated('Use AudioCategory_Speech instead')
  static const AudioCategory_Speech = 9;

  /// Stream that includes audio with dialog.
  @Deprecated('Use AudioCategory_Movie instead')
  static const AudioCategory_Movie = 10;

  /// Stream that includes audio without dialog.
  @Deprecated('Use AudioCategory_Media instead')
  static const AudioCategory_Media = 11;

  /// Media is audio captured with the intent of capturing voice sources located
  /// in the ‘far field’.
  @Deprecated('Use AudioCategory_FarFieldSpeech instead')
  static const AudioCategory_FarFieldSpeech = 12;

  /// Media is captured audio that requires consistent speech processing for the
  /// captured audio stream across all Windows devices.
  @Deprecated('Use AudioCategory_UniformSpeech instead')
  static const AudioCategory_UniformSpeech = 13;

  /// Media is audio captured with the intent of enabling dictation or typing by
  /// voice.
  @Deprecated('Use AudioCategory_VoiceTyping instead')
  static const AudioCategory_VoiceTyping = 14;
}

/// {@category enum}
extension type const AUTHENTICATION_REQUIREMENTS(int _) implements int {
  @Deprecated('Use MITMProtectionNotRequired instead')
  static const MITMProtectionNotRequired = 0;
  @Deprecated('Use MITMProtectionRequired instead')
  static const MITMProtectionRequired = 1;
  @Deprecated('Use MITMProtectionNotRequiredBonding instead')
  static const MITMProtectionNotRequiredBonding = AUTHENTICATION_REQUIREMENTS(
    2,
  );
  @Deprecated('Use MITMProtectionRequiredBonding instead')
  static const MITMProtectionRequiredBonding = 3;
  @Deprecated('Use MITMProtectionNotRequiredGeneralBonding instead')
  static const MITMProtectionNotRequiredGeneralBonding =
      AUTHENTICATION_REQUIREMENTS(4);
  @Deprecated('Use MITMProtectionRequiredGeneralBonding instead')
  static const MITMProtectionRequiredGeneralBonding =
      AUTHENTICATION_REQUIREMENTS(5);
  @Deprecated('Use MITMProtectionNotDefined instead')
  static const MITMProtectionNotDefined = 255;
}

/// Defines constants that indicate the current state of an audio session.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/audiosessiontypes/ne-audiosessiontypes-audiosessionstate>.
///
/// {@category enum}
extension type const AudioSessionState(int _) implements int {
  /// The audio session is inactive.
  @Deprecated('Use AudioSessionStateInactive instead')
  static const AudioSessionStateInactive = 0;

  /// The audio session is active.
  @Deprecated('Use AudioSessionStateActive instead')
  static const AudioSessionStateActive = 1;

  /// The audio session has expired.
  @Deprecated('Use AudioSessionStateExpired instead')
  static const AudioSessionStateExpired = 2;
}

/// {@category enum}
extension type const BACKGROUND_MODE(int _) implements int {
  @Deprecated('Use OPAQUE instead')
  static const OPAQUE = 2;
  @Deprecated('Use TRANSPARENT instead')
  static const TRANSPARENT = 1;
}

/// {@category enum}
extension type const BATTERY_DEVTYPE(int _) implements int {
  @Deprecated('Use BATTERY_DEVTYPE_GAMEPAD instead')
  static const BATTERY_DEVTYPE_GAMEPAD = 0;
  @Deprecated('Use BATTERY_DEVTYPE_HEADSET instead')
  static const BATTERY_DEVTYPE_HEADSET = 1;
}

/// {@category enum}
extension type const BATTERY_LEVEL(int _) implements int {
  @Deprecated('Use BATTERY_LEVEL_EMPTY instead')
  static const BATTERY_LEVEL_EMPTY = 0;
  @Deprecated('Use BATTERY_LEVEL_LOW instead')
  static const BATTERY_LEVEL_LOW = 1;
  @Deprecated('Use BATTERY_LEVEL_MEDIUM instead')
  static const BATTERY_LEVEL_MEDIUM = 2;
  @Deprecated('Use BATTERY_LEVEL_FULL instead')
  static const BATTERY_LEVEL_FULL = 3;
}

/// {@category enum}
extension type const BATTERY_TYPE(int _) implements int {
  @Deprecated('Use BATTERY_TYPE_DISCONNECTED instead')
  static const BATTERY_TYPE_DISCONNECTED = 0;
  @Deprecated('Use BATTERY_TYPE_WIRED instead')
  static const BATTERY_TYPE_WIRED = 1;
  @Deprecated('Use BATTERY_TYPE_ALKALINE instead')
  static const BATTERY_TYPE_ALKALINE = 2;
  @Deprecated('Use BATTERY_TYPE_NIMH instead')
  static const BATTERY_TYPE_NIMH = 3;
  @Deprecated('Use BATTERY_TYPE_UNKNOWN instead')
  static const BATTERY_TYPE_UNKNOWN = 255;
}

/// {@category enum}
extension type const BI_COMPRESSION(int _) implements int {
  @Deprecated('Use BI_RGB instead')
  static const BI_RGB = 0;
  @Deprecated('Use BI_RLE8 instead')
  static const BI_RLE8 = 1;
  @Deprecated('Use BI_RLE4 instead')
  static const BI_RLE4 = 2;
  @Deprecated('Use BI_BITFIELDS instead')
  static const BI_BITFIELDS = 3;
  @Deprecated('Use BI_JPEG instead')
  static const BI_JPEG = 4;
  @Deprecated('Use BI_PNG instead')
  static const BI_PNG = 5;
}

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_FLAGS(int _) implements int {
  @Deprecated('Use BSF_ALLOWSFW instead')
  static const BSF_ALLOWSFW = 128;
  @Deprecated('Use BSF_FLUSHDISK instead')
  static const BSF_FLUSHDISK = 4;
  @Deprecated('Use BSF_FORCEIFHUNG instead')
  static const BSF_FORCEIFHUNG = 32;
  @Deprecated('Use BSF_IGNORECURRENTTASK instead')
  static const BSF_IGNORECURRENTTASK = 2;
  @Deprecated('Use BSF_NOHANG instead')
  static const BSF_NOHANG = 8;
  @Deprecated('Use BSF_NOTIMEOUTIFNOTHUNG instead')
  static const BSF_NOTIMEOUTIFNOTHUNG = 64;
  @Deprecated('Use BSF_POSTMESSAGE instead')
  static const BSF_POSTMESSAGE = 16;
  @Deprecated('Use BSF_QUERY instead')
  static const BSF_QUERY = 1;
  @Deprecated('Use BSF_SENDNOTIFYMESSAGE instead')
  static const BSF_SENDNOTIFYMESSAGE = 256;
  @Deprecated('Use BSF_LUID instead')
  static const BSF_LUID = 1024;
  @Deprecated('Use BSF_RETURNHDESK instead')
  static const BSF_RETURNHDESK = 512;
}

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_INFO(int _) implements int {
  @Deprecated('Use BSM_ALLCOMPONENTS instead')
  static const BSM_ALLCOMPONENTS = 0;
  @Deprecated('Use BSM_ALLDESKTOPS instead')
  static const BSM_ALLDESKTOPS = 16;
  @Deprecated('Use BSM_APPLICATIONS instead')
  static const BSM_APPLICATIONS = 8;
}

/// {@category enum}
extension type const BRUSH_STYLE(int _) implements int {
  @Deprecated('Use BS_SOLID instead')
  static const BS_SOLID = 0;
  @Deprecated('Use BS_NULL instead')
  static const BS_NULL = 1;
  @Deprecated('Use BS_HOLLOW instead')
  static const BS_HOLLOW = 1;
  @Deprecated('Use BS_HATCHED instead')
  static const BS_HATCHED = 2;
  @Deprecated('Use BS_PATTERN instead')
  static const BS_PATTERN = 3;
  @Deprecated('Use BS_INDEXED instead')
  static const BS_INDEXED = 4;
  @Deprecated('Use BS_DIBPATTERN instead')
  static const BS_DIBPATTERN = 5;
  @Deprecated('Use BS_DIBPATTERNPT instead')
  static const BS_DIBPATTERNPT = 6;
  @Deprecated('Use BS_PATTERN8X8 instead')
  static const BS_PATTERN8X8 = 7;
  @Deprecated('Use BS_DIBPATTERN8X8 instead')
  static const BS_DIBPATTERN8X8 = 8;
  @Deprecated('Use BS_MONOPATTERN instead')
  static const BS_MONOPATTERN = 9;
}

/// Describes the different types of Bluetooth LE generic attributes (GATT).
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ne-bthledef-bth_le_gatt_descriptor_type>.
///
/// {@category enum}
extension type const BTH_LE_GATT_DESCRIPTOR_TYPE(int _) implements int {
  /// The characteristic value has additional properties that describe how it
  /// can be used, or how it can be accessed.
  @Deprecated('Use CharacteristicExtendedProperties instead')
  static const CharacteristicExtendedProperties = BTH_LE_GATT_DESCRIPTOR_TYPE(
    0,
  );

  /// The characteristic value contains a UTF-8 string of variable size that is
  /// a user textual description.
  @Deprecated('Use CharacteristicUserDescription instead')
  static const CharacteristicUserDescription = 1;

  /// The characteristic value may be configured by the client.
  @Deprecated('Use ClientCharacteristicConfiguration instead')
  static const ClientCharacteristicConfiguration = BTH_LE_GATT_DESCRIPTOR_TYPE(
    2,
  );

  /// The characteristic value may be configured for the server.
  @Deprecated('Use ServerCharacteristicConfiguration instead')
  static const ServerCharacteristicConfiguration = BTH_LE_GATT_DESCRIPTOR_TYPE(
    3,
  );

  /// The format of the characteristic value.
  @Deprecated('Use CharacteristicFormat instead')
  static const CharacteristicFormat = 4;

  /// The format of an aggregated characteristic value.
  @Deprecated('Use CharacteristicAggregateFormat instead')
  static const CharacteristicAggregateFormat = 5;

  /// The characteristic value is customized.
  @Deprecated('Use CustomDescriptor instead')
  static const CustomDescriptor = 6;
}

/// Describes the different types of Bluetooth Low Energy (LE) generic attribute
/// (GATT) profile events.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ne-bthledef-bth_le_gatt_event_type>.
///
/// {@category enum}
extension type const BTH_LE_GATT_EVENT_TYPE(int _) implements int {
  /// The characteristic value has changed.
  @Deprecated('Use CharacteristicValueChangedEvent instead')
  static const CharacteristicValueChangedEvent = 0;
}

/// Identifies the calling convention used by a member function described in the
/// METHODDATA structure.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-callconv>.
///
/// {@category enum}
extension type const CALLCONV(int _) implements int {
  @Deprecated('Use CC_FASTCALL instead')
  static const CC_FASTCALL = 0;
  @Deprecated('Use CC_CDECL instead')
  static const CC_CDECL = 1;
  @Deprecated('Use CC_MSCPASCAL instead')
  static const CC_MSCPASCAL = 2;
  @Deprecated('Use CC_PASCAL instead')
  static const CC_PASCAL = 2;
  @Deprecated('Use CC_MACPASCAL instead')
  static const CC_MACPASCAL = 3;
  @Deprecated('Use CC_STDCALL instead')
  static const CC_STDCALL = 4;
  @Deprecated('Use CC_FPFASTCALL instead')
  static const CC_FPFASTCALL = 5;
  @Deprecated('Use CC_SYSCALL instead')
  static const CC_SYSCALL = 6;
  @Deprecated('Use CC_MPWCDECL instead')
  static const CC_MPWCDECL = 7;
  @Deprecated('Use CC_MPWPASCAL instead')
  static const CC_MPWPASCAL = 8;
  @Deprecated('Use CC_MAX instead')
  static const CC_MAX = 9;
}

/// {@category enum}
extension type const CASCADE_WINDOWS_HOW(int _) implements int {
  @Deprecated('Use MDITILE_SKIPDISABLED instead')
  static const MDITILE_SKIPDISABLED = 2;
  @Deprecated('Use MDITILE_ZORDER instead')
  static const MDITILE_ZORDER = 4;
}

/// {@category enum}
extension type const CDCONTROLSTATEF(int _) implements int {
  @Deprecated('Use CDCS_INACTIVE instead')
  static const CDCS_INACTIVE = 0;
  @Deprecated('Use CDCS_ENABLED instead')
  static const CDCS_ENABLED = 1;
  @Deprecated('Use CDCS_VISIBLE instead')
  static const CDCS_VISIBLE = 2;
  @Deprecated('Use CDCS_ENABLEDVISIBLE instead')
  static const CDCS_ENABLEDVISIBLE = 3;
}

/// {@category enum}
extension type const CDS_TYPE(int _) implements int {
  @Deprecated('Use CDS_FULLSCREEN instead')
  static const CDS_FULLSCREEN = 4;
  @Deprecated('Use CDS_GLOBAL instead')
  static const CDS_GLOBAL = 8;
  @Deprecated('Use CDS_NORESET instead')
  static const CDS_NORESET = 268435456;
  @Deprecated('Use CDS_RESET instead')
  static const CDS_RESET = 1073741824;
  @Deprecated('Use CDS_SET_PRIMARY instead')
  static const CDS_SET_PRIMARY = 16;
  @Deprecated('Use CDS_TEST instead')
  static const CDS_TEST = 2;
  @Deprecated('Use CDS_UPDATEREGISTRY instead')
  static const CDS_UPDATEREGISTRY = 1;
  @Deprecated('Use CDS_VIDEOPARAMETERS instead')
  static const CDS_VIDEOPARAMETERS = 32;
  @Deprecated('Use CDS_ENABLE_UNSAFE_MODES instead')
  static const CDS_ENABLE_UNSAFE_MODES = 256;
  @Deprecated('Use CDS_DISABLE_UNSAFE_MODES instead')
  static const CDS_DISABLE_UNSAFE_MODES = 512;
  @Deprecated('Use CDS_RESET_EX instead')
  static const CDS_RESET_EX = 536870912;
}

/// {@category enum}
extension type const CERT_QUERY_ENCODING_TYPE(int _) implements int {
  @Deprecated('Use X509_ASN_ENCODING instead')
  static const X509_ASN_ENCODING = 1;
  @Deprecated('Use PKCS_7_ASN_ENCODING instead')
  static const PKCS_7_ASN_ENCODING = 65536;
}

/// {@category enum}
extension type const CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(int _) implements int {
  @Deprecated('Use MSGFLT_ADD instead')
  static const MSGFLT_ADD = 1;
  @Deprecated('Use MSGFLT_REMOVE instead')
  static const MSGFLT_REMOVE = 2;
}

/// {@category enum}
extension type const CHOOSECOLOR_FLAGS(int _) implements int {
  @Deprecated('Use CC_RGBINIT instead')
  static const CC_RGBINIT = 1;
  @Deprecated('Use CC_FULLOPEN instead')
  static const CC_FULLOPEN = 2;
  @Deprecated('Use CC_PREVENTFULLOPEN instead')
  static const CC_PREVENTFULLOPEN = 4;
  @Deprecated('Use CC_SHOWHELP instead')
  static const CC_SHOWHELP = 8;
  @Deprecated('Use CC_ENABLEHOOK instead')
  static const CC_ENABLEHOOK = 16;
  @Deprecated('Use CC_ENABLETEMPLATE instead')
  static const CC_ENABLETEMPLATE = 32;
  @Deprecated('Use CC_ENABLETEMPLATEHANDLE instead')
  static const CC_ENABLETEMPLATEHANDLE = 64;
  @Deprecated('Use CC_SOLIDCOLOR instead')
  static const CC_SOLIDCOLOR = 128;
  @Deprecated('Use CC_ANYCOLOR instead')
  static const CC_ANYCOLOR = 256;
}

/// {@category enum}
extension type const CHOOSEFONT_FLAGS(int _) implements int {
  @Deprecated('Use CF_APPLY instead')
  static const CF_APPLY = 512;
  @Deprecated('Use CF_ANSIONLY instead')
  static const CF_ANSIONLY = 1024;
  @Deprecated('Use CF_BOTH instead')
  static const CF_BOTH = 3;
  @Deprecated('Use CF_EFFECTS instead')
  static const CF_EFFECTS = 256;
  @Deprecated('Use CF_ENABLEHOOK instead')
  static const CF_ENABLEHOOK = 8;
  @Deprecated('Use CF_ENABLETEMPLATE instead')
  static const CF_ENABLETEMPLATE = 16;
  @Deprecated('Use CF_ENABLETEMPLATEHANDLE instead')
  static const CF_ENABLETEMPLATEHANDLE = 32;
  @Deprecated('Use CF_FIXEDPITCHONLY instead')
  static const CF_FIXEDPITCHONLY = 16384;
  @Deprecated('Use CF_FORCEFONTEXIST instead')
  static const CF_FORCEFONTEXIST = 65536;
  @Deprecated('Use CF_INACTIVEFONTS instead')
  static const CF_INACTIVEFONTS = 33554432;
  @Deprecated('Use CF_INITTOLOGFONTSTRUCT instead')
  static const CF_INITTOLOGFONTSTRUCT = 64;
  @Deprecated('Use CF_LIMITSIZE instead')
  static const CF_LIMITSIZE = 8192;
  @Deprecated('Use CF_NOOEMFONTS instead')
  static const CF_NOOEMFONTS = 2048;
  @Deprecated('Use CF_NOFACESEL instead')
  static const CF_NOFACESEL = 524288;
  @Deprecated('Use CF_NOSCRIPTSEL instead')
  static const CF_NOSCRIPTSEL = 8388608;
  @Deprecated('Use CF_NOSIMULATIONS instead')
  static const CF_NOSIMULATIONS = 4096;
  @Deprecated('Use CF_NOSIZESEL instead')
  static const CF_NOSIZESEL = 2097152;
  @Deprecated('Use CF_NOSTYLESEL instead')
  static const CF_NOSTYLESEL = 1048576;
  @Deprecated('Use CF_NOVECTORFONTS instead')
  static const CF_NOVECTORFONTS = 2048;
  @Deprecated('Use CF_NOVERTFONTS instead')
  static const CF_NOVERTFONTS = 16777216;
  @Deprecated('Use CF_PRINTERFONTS instead')
  static const CF_PRINTERFONTS = 2;
  @Deprecated('Use CF_SCALABLEONLY instead')
  static const CF_SCALABLEONLY = 131072;
  @Deprecated('Use CF_SCREENFONTS instead')
  static const CF_SCREENFONTS = 1;
  @Deprecated('Use CF_SCRIPTSONLY instead')
  static const CF_SCRIPTSONLY = 1024;
  @Deprecated('Use CF_SELECTSCRIPT instead')
  static const CF_SELECTSCRIPT = 4194304;
  @Deprecated('Use CF_SHOWHELP instead')
  static const CF_SHOWHELP = 4;
  @Deprecated('Use CF_TTONLY instead')
  static const CF_TTONLY = 262144;
  @Deprecated('Use CF_USESTYLE instead')
  static const CF_USESTYLE = 128;
  @Deprecated('Use CF_WYSIWYG instead')
  static const CF_WYSIWYG = 32768;
}

/// {@category enum}
extension type const CHOOSEFONT_FONT_TYPE(int _) implements int {
  @Deprecated('Use BOLD_FONTTYPE instead')
  static const BOLD_FONTTYPE = 256;
  @Deprecated('Use ITALIC_FONTTYPE instead')
  static const ITALIC_FONTTYPE = 512;
  @Deprecated('Use PRINTER_FONTTYPE instead')
  static const PRINTER_FONTTYPE = 16384;
  @Deprecated('Use REGULAR_FONTTYPE instead')
  static const REGULAR_FONTTYPE = 1024;
  @Deprecated('Use SCREEN_FONTTYPE instead')
  static const SCREEN_FONTTYPE = 8192;
  @Deprecated('Use SIMULATED_FONTTYPE instead')
  static const SIMULATED_FONTTYPE = 32768;
}

/// {@category enum}
extension type const CLEAR_COMM_ERROR_FLAGS(int _) implements int {
  @Deprecated('Use CE_BREAK instead')
  static const CE_BREAK = 16;
  @Deprecated('Use CE_FRAME instead')
  static const CE_FRAME = 8;
  @Deprecated('Use CE_OVERRUN instead')
  static const CE_OVERRUN = 2;
  @Deprecated('Use CE_RXOVER instead')
  static const CE_RXOVER = 1;
  @Deprecated('Use CE_RXPARITY instead')
  static const CE_RXPARITY = 4;
}

/// {@category enum}
extension type const CLIPBOARD_FORMAT(int _) implements int {
  @Deprecated('Use CF_TEXT instead')
  static const CF_TEXT = 1;
  @Deprecated('Use CF_BITMAP instead')
  static const CF_BITMAP = 2;
  @Deprecated('Use CF_METAFILEPICT instead')
  static const CF_METAFILEPICT = 3;
  @Deprecated('Use CF_SYLK instead')
  static const CF_SYLK = 4;
  @Deprecated('Use CF_DIF instead')
  static const CF_DIF = 5;
  @Deprecated('Use CF_TIFF instead')
  static const CF_TIFF = 6;
  @Deprecated('Use CF_OEMTEXT instead')
  static const CF_OEMTEXT = 7;
  @Deprecated('Use CF_DIB instead')
  static const CF_DIB = 8;
  @Deprecated('Use CF_PALETTE instead')
  static const CF_PALETTE = 9;
  @Deprecated('Use CF_PENDATA instead')
  static const CF_PENDATA = 10;
  @Deprecated('Use CF_RIFF instead')
  static const CF_RIFF = 11;
  @Deprecated('Use CF_WAVE instead')
  static const CF_WAVE = 12;
  @Deprecated('Use CF_UNICODETEXT instead')
  static const CF_UNICODETEXT = 13;
  @Deprecated('Use CF_ENHMETAFILE instead')
  static const CF_ENHMETAFILE = 14;
  @Deprecated('Use CF_HDROP instead')
  static const CF_HDROP = 15;
  @Deprecated('Use CF_LOCALE instead')
  static const CF_LOCALE = 16;
  @Deprecated('Use CF_DIBV5 instead')
  static const CF_DIBV5 = 17;
  @Deprecated('Use CF_MAX instead')
  static const CF_MAX = 18;
  @Deprecated('Use CF_OWNERDISPLAY instead')
  static const CF_OWNERDISPLAY = 128;
  @Deprecated('Use CF_DSPTEXT instead')
  static const CF_DSPTEXT = 129;
  @Deprecated('Use CF_DSPBITMAP instead')
  static const CF_DSPBITMAP = 130;
  @Deprecated('Use CF_DSPMETAFILEPICT instead')
  static const CF_DSPMETAFILEPICT = 131;
  @Deprecated('Use CF_DSPENHMETAFILE instead')
  static const CF_DSPENHMETAFILE = 142;
  @Deprecated('Use CF_PRIVATEFIRST instead')
  static const CF_PRIVATEFIRST = 512;
  @Deprecated('Use CF_PRIVATELAST instead')
  static const CF_PRIVATELAST = 767;
  @Deprecated('Use CF_GDIOBJFIRST instead')
  static const CF_GDIOBJFIRST = 768;
  @Deprecated('Use CF_GDIOBJLAST instead')
  static const CF_GDIOBJLAST = 1023;
}

/// Values that are used in activation calls to indicate the execution contexts
/// in which an object is to be run.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wtypesbase/ne-wtypesbase-clsctx>.
///
/// {@category enum}
extension type const CLSCTX(int _) implements int {
  /// The code that creates and manages objects of this class is a DLL that runs
  /// in the same process as the caller of the function specifying the class
  /// context.
  @Deprecated('Use CLSCTX_INPROC_SERVER instead')
  static const CLSCTX_INPROC_SERVER = 1;

  /// The code that manages objects of this class is an in-process handler.
  @Deprecated('Use CLSCTX_INPROC_HANDLER instead')
  static const CLSCTX_INPROC_HANDLER = 2;

  /// The EXE code that creates and manages objects of this class runs on same
  /// machine but is loaded in a separate process space.
  @Deprecated('Use CLSCTX_LOCAL_SERVER instead')
  static const CLSCTX_LOCAL_SERVER = 4;

  /// Obsolete.
  @Deprecated('Use CLSCTX_INPROC_SERVER16 instead')
  static const CLSCTX_INPROC_SERVER16 = 8;

  /// A remote context.
  @Deprecated('Use CLSCTX_REMOTE_SERVER instead')
  static const CLSCTX_REMOTE_SERVER = 16;

  /// Obsolete.
  @Deprecated('Use CLSCTX_INPROC_HANDLER16 instead')
  static const CLSCTX_INPROC_HANDLER16 = 32;

  /// Reserved.
  @Deprecated('Use CLSCTX_RESERVED1 instead')
  static const CLSCTX_RESERVED1 = 64;

  /// Reserved.
  @Deprecated('Use CLSCTX_RESERVED2 instead')
  static const CLSCTX_RESERVED2 = 128;

  /// Reserved.
  @Deprecated('Use CLSCTX_RESERVED3 instead')
  static const CLSCTX_RESERVED3 = 256;

  /// Reserved.
  @Deprecated('Use CLSCTX_RESERVED4 instead')
  static const CLSCTX_RESERVED4 = 512;

  /// Disables the downloading of code from the directory service or the
  /// Internet.
  @Deprecated('Use CLSCTX_NO_CODE_DOWNLOAD instead')
  static const CLSCTX_NO_CODE_DOWNLOAD = 1024;

  /// Reserved.
  @Deprecated('Use CLSCTX_RESERVED5 instead')
  static const CLSCTX_RESERVED5 = 2048;

  /// Specify if you want the activation to fail if it uses custom marshalling.
  @Deprecated('Use CLSCTX_NO_CUSTOM_MARSHAL instead')
  static const CLSCTX_NO_CUSTOM_MARSHAL = 4096;

  /// Enables the downloading of code from the directory service or the
  /// Internet.
  @Deprecated('Use CLSCTX_ENABLE_CODE_DOWNLOAD instead')
  static const CLSCTX_ENABLE_CODE_DOWNLOAD = 8192;

  /// The CLSCTX_NO_FAILURE_LOG can be used to override the logging of failures
  /// in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cocreateinstanceex">CoCreateInstanceEx</a>.
  @Deprecated('Use CLSCTX_NO_FAILURE_LOG instead')
  static const CLSCTX_NO_FAILURE_LOG = 16384;

  /// Disables activate-as-activator (AAA) activations for this activation only.
  @Deprecated('Use CLSCTX_DISABLE_AAA instead')
  static const CLSCTX_DISABLE_AAA = 32768;

  /// Enables activate-as-activator (AAA) activations for this activation only.
  @Deprecated('Use CLSCTX_ENABLE_AAA instead')
  static const CLSCTX_ENABLE_AAA = 65536;

  /// Begin this activation from the default context of the current apartment.
  @Deprecated('Use CLSCTX_FROM_DEFAULT_CONTEXT instead')
  static const CLSCTX_FROM_DEFAULT_CONTEXT = 131072;
  @Deprecated('Use CLSCTX_ACTIVATE_X86_SERVER instead')
  static const CLSCTX_ACTIVATE_X86_SERVER = 262144;

  /// Activate or connect to a 32-bit version of the server; fail if one is not
  /// registered.
  @Deprecated('Use CLSCTX_ACTIVATE_32_BIT_SERVER instead')
  static const CLSCTX_ACTIVATE_32_BIT_SERVER = 262144;

  /// Activate or connect to a 64 bit version of the server; fail if one is not
  /// registered.
  @Deprecated('Use CLSCTX_ACTIVATE_64_BIT_SERVER instead')
  static const CLSCTX_ACTIVATE_64_BIT_SERVER = 524288;

  /// When this flag is specified, COM uses the impersonation token of the
  /// thread, if one is present, for the activation request made by the thread.
  @Deprecated('Use CLSCTX_ENABLE_CLOAKING instead')
  static const CLSCTX_ENABLE_CLOAKING = 1048576;

  /// Indicates activation is for an app container.
  @Deprecated('Use CLSCTX_APPCONTAINER instead')
  static const CLSCTX_APPCONTAINER = 4194304;

  /// Specify this flag for Interactive User activation behavior for
  /// As-Activator servers.
  @Deprecated('Use CLSCTX_ACTIVATE_AAA_AS_IU instead')
  static const CLSCTX_ACTIVATE_AAA_AS_IU = 8388608;
  @Deprecated('Use CLSCTX_RESERVED6 instead')
  static const CLSCTX_RESERVED6 = 16777216;
  @Deprecated('Use CLSCTX_ACTIVATE_ARM32_SERVER instead')
  static const CLSCTX_ACTIVATE_ARM32_SERVER = 33554432;
  @Deprecated('Use CLSCTX_ALLOW_LOWER_TRUST_REGISTRATION instead')
  static const CLSCTX_ALLOW_LOWER_TRUST_REGISTRATION = 67108864;

  /// Used for loading Proxy/Stub DLLs.
  @Deprecated('Use CLSCTX_PS_DLL instead')
  static const CLSCTX_PS_DLL = 2147483648;
  @Deprecated('Use CLSCTX_ALL instead')
  static const CLSCTX_ALL = 23;
  @Deprecated('Use CLSCTX_SERVER instead')
  static const CLSCTX_SERVER = 21;
}

/// Determines the concurrency model used for incoming calls to objects created
/// by this thread.
///
/// This concurrency model can be either apartment-threaded or multithreaded.
///
/// {@category enum}
extension type const COINIT(int _) implements int {
  /// Initializes the thread for apartment-threaded object concurrency.
  @Deprecated('Use COINIT_APARTMENTTHREADED instead')
  static const COINIT_APARTMENTTHREADED = 2;

  /// Initializes the thread for multithreaded object concurrency.
  @Deprecated('Use COINIT_MULTITHREADED instead')
  static const COINIT_MULTITHREADED = 0;

  /// Disables DDE for OLE1 support.
  @Deprecated('Use COINIT_DISABLE_OLE1DDE instead')
  static const COINIT_DISABLE_OLE1DDE = 4;

  /// Increase memory usage in an attempt to increase performance.
  @Deprecated('Use COINIT_SPEED_OVER_MEMORY instead')
  static const COINIT_SPEED_OVER_MEMORY = 8;
}

/// {@category enum}
extension type const COINITBASE(int _) implements int {
  /// Initializes the thread for multithreaded object concurrency.
  @Deprecated('Use COINITBASE_MULTITHREADED instead')
  static const COINITBASE_MULTITHREADED = 0;
}

/// {@category enum}
extension type const COMMPROP_STOP_PARITY(int _) implements int {
  @Deprecated('Use STOPBITS_10 instead')
  static const STOPBITS_10 = 1;
  @Deprecated('Use STOPBITS_15 instead')
  static const STOPBITS_15 = 2;
  @Deprecated('Use STOPBITS_20 instead')
  static const STOPBITS_20 = 4;
  @Deprecated('Use PARITY_NONE instead')
  static const PARITY_NONE = 256;
  @Deprecated('Use PARITY_ODD instead')
  static const PARITY_ODD = 512;
  @Deprecated('Use PARITY_EVEN instead')
  static const PARITY_EVEN = 1024;
  @Deprecated('Use PARITY_MARK instead')
  static const PARITY_MARK = 2048;
  @Deprecated('Use PARITY_SPACE instead')
  static const PARITY_SPACE = 4096;
}

/// {@category enum}
extension type const COMM_EVENT_MASK(int _) implements int {
  @Deprecated('Use EV_BREAK instead')
  static const EV_BREAK = 64;
  @Deprecated('Use EV_CTS instead')
  static const EV_CTS = 8;
  @Deprecated('Use EV_DSR instead')
  static const EV_DSR = 16;
  @Deprecated('Use EV_ERR instead')
  static const EV_ERR = 128;
  @Deprecated('Use EV_EVENT1 instead')
  static const EV_EVENT1 = 2048;
  @Deprecated('Use EV_EVENT2 instead')
  static const EV_EVENT2 = 4096;
  @Deprecated('Use EV_PERR instead')
  static const EV_PERR = 512;
  @Deprecated('Use EV_RING instead')
  static const EV_RING = 256;
  @Deprecated('Use EV_RLSD instead')
  static const EV_RLSD = 32;
  @Deprecated('Use EV_RX80FULL instead')
  static const EV_RX80FULL = 1024;
  @Deprecated('Use EV_RXCHAR instead')
  static const EV_RXCHAR = 1;
  @Deprecated('Use EV_RXFLAG instead')
  static const EV_RXFLAG = 2;
  @Deprecated('Use EV_TXEMPTY instead')
  static const EV_TXEMPTY = 4;
}

/// {@category enum}
extension type const CONSOLE_CHARACTER_ATTRIBUTES(int _) implements int {
  @Deprecated('Use FOREGROUND_BLUE instead')
  static const FOREGROUND_BLUE = 1;
  @Deprecated('Use FOREGROUND_GREEN instead')
  static const FOREGROUND_GREEN = 2;
  @Deprecated('Use FOREGROUND_RED instead')
  static const FOREGROUND_RED = 4;
  @Deprecated('Use FOREGROUND_INTENSITY instead')
  static const FOREGROUND_INTENSITY = 8;
  @Deprecated('Use BACKGROUND_BLUE instead')
  static const BACKGROUND_BLUE = 16;
  @Deprecated('Use BACKGROUND_GREEN instead')
  static const BACKGROUND_GREEN = 32;
  @Deprecated('Use BACKGROUND_RED instead')
  static const BACKGROUND_RED = 64;
  @Deprecated('Use BACKGROUND_INTENSITY instead')
  static const BACKGROUND_INTENSITY = 128;
  @Deprecated('Use COMMON_LVB_LEADING_BYTE instead')
  static const COMMON_LVB_LEADING_BYTE = 256;
  @Deprecated('Use COMMON_LVB_TRAILING_BYTE instead')
  static const COMMON_LVB_TRAILING_BYTE = 512;
  @Deprecated('Use COMMON_LVB_GRID_HORIZONTAL instead')
  static const COMMON_LVB_GRID_HORIZONTAL = 1024;
  @Deprecated('Use COMMON_LVB_GRID_LVERTICAL instead')
  static const COMMON_LVB_GRID_LVERTICAL = 2048;
  @Deprecated('Use COMMON_LVB_GRID_RVERTICAL instead')
  static const COMMON_LVB_GRID_RVERTICAL = 4096;
  @Deprecated('Use COMMON_LVB_REVERSE_VIDEO instead')
  static const COMMON_LVB_REVERSE_VIDEO = 16384;
  @Deprecated('Use COMMON_LVB_UNDERSCORE instead')
  static const COMMON_LVB_UNDERSCORE = 32768;
  @Deprecated('Use COMMON_LVB_SBCSDBCS instead')
  static const COMMON_LVB_SBCSDBCS = 768;
}

/// {@category enum}
extension type const CONSOLE_MODE(int _) implements int {
  @Deprecated('Use ENABLE_PROCESSED_INPUT instead')
  static const ENABLE_PROCESSED_INPUT = 1;
  @Deprecated('Use ENABLE_LINE_INPUT instead')
  static const ENABLE_LINE_INPUT = 2;
  @Deprecated('Use ENABLE_ECHO_INPUT instead')
  static const ENABLE_ECHO_INPUT = 4;
  @Deprecated('Use ENABLE_WINDOW_INPUT instead')
  static const ENABLE_WINDOW_INPUT = 8;
  @Deprecated('Use ENABLE_MOUSE_INPUT instead')
  static const ENABLE_MOUSE_INPUT = 16;
  @Deprecated('Use ENABLE_INSERT_MODE instead')
  static const ENABLE_INSERT_MODE = 32;
  @Deprecated('Use ENABLE_QUICK_EDIT_MODE instead')
  static const ENABLE_QUICK_EDIT_MODE = 64;
  @Deprecated('Use ENABLE_EXTENDED_FLAGS instead')
  static const ENABLE_EXTENDED_FLAGS = 128;
  @Deprecated('Use ENABLE_AUTO_POSITION instead')
  static const ENABLE_AUTO_POSITION = 256;
  @Deprecated('Use ENABLE_VIRTUAL_TERMINAL_INPUT instead')
  static const ENABLE_VIRTUAL_TERMINAL_INPUT = 512;
  @Deprecated('Use ENABLE_PROCESSED_OUTPUT instead')
  static const ENABLE_PROCESSED_OUTPUT = 1;
  @Deprecated('Use ENABLE_WRAP_AT_EOL_OUTPUT instead')
  static const ENABLE_WRAP_AT_EOL_OUTPUT = 2;
  @Deprecated('Use ENABLE_VIRTUAL_TERMINAL_PROCESSING instead')
  static const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 4;
  @Deprecated('Use DISABLE_NEWLINE_AUTO_RETURN instead')
  static const DISABLE_NEWLINE_AUTO_RETURN = 8;
  @Deprecated('Use ENABLE_LVB_GRID_WORLDWIDE instead')
  static const ENABLE_LVB_GRID_WORLDWIDE = 16;
}

/// {@category enum}
extension type const CREATE_EVENT(int _) implements int {
  @Deprecated('Use CREATE_EVENT_INITIAL_SET instead')
  static const CREATE_EVENT_INITIAL_SET = 2;
  @Deprecated('Use CREATE_EVENT_MANUAL_RESET instead')
  static const CREATE_EVENT_MANUAL_RESET = 1;
}

/// {@category enum}
extension type const CRED_FLAGS(int _) implements int {
  @Deprecated('Use CRED_FLAGS_PASSWORD_FOR_CERT instead')
  static const CRED_FLAGS_PASSWORD_FOR_CERT = 1;
  @Deprecated('Use CRED_FLAGS_PROMPT_NOW instead')
  static const CRED_FLAGS_PROMPT_NOW = 2;
  @Deprecated('Use CRED_FLAGS_USERNAME_TARGET instead')
  static const CRED_FLAGS_USERNAME_TARGET = 4;
  @Deprecated('Use CRED_FLAGS_OWF_CRED_BLOB instead')
  static const CRED_FLAGS_OWF_CRED_BLOB = 8;
  @Deprecated('Use CRED_FLAGS_REQUIRE_CONFIRMATION instead')
  static const CRED_FLAGS_REQUIRE_CONFIRMATION = 16;
  @Deprecated('Use CRED_FLAGS_WILDCARD_MATCH instead')
  static const CRED_FLAGS_WILDCARD_MATCH = 32;
  @Deprecated('Use CRED_FLAGS_VSM_PROTECTED instead')
  static const CRED_FLAGS_VSM_PROTECTED = 64;
  @Deprecated('Use CRED_FLAGS_NGC_CERT instead')
  static const CRED_FLAGS_NGC_CERT = 128;
  @Deprecated('Use CRED_FLAGS_VALID_FLAGS instead')
  static const CRED_FLAGS_VALID_FLAGS = 61695;
  @Deprecated('Use CRED_FLAGS_VALID_INPUT_FLAGS instead')
  static const CRED_FLAGS_VALID_INPUT_FLAGS = 61599;
}

/// {@category enum}
extension type const CRED_PERSIST(int _) implements int {
  @Deprecated('Use CRED_PERSIST_NONE instead')
  static const CRED_PERSIST_NONE = 0;
  @Deprecated('Use CRED_PERSIST_SESSION instead')
  static const CRED_PERSIST_SESSION = 1;
  @Deprecated('Use CRED_PERSIST_LOCAL_MACHINE instead')
  static const CRED_PERSIST_LOCAL_MACHINE = 2;
  @Deprecated('Use CRED_PERSIST_ENTERPRISE instead')
  static const CRED_PERSIST_ENTERPRISE = 3;
}

/// {@category enum}
extension type const CRED_TYPE(int _) implements int {
  @Deprecated('Use CRED_TYPE_GENERIC instead')
  static const CRED_TYPE_GENERIC = 1;
  @Deprecated('Use CRED_TYPE_DOMAIN_PASSWORD instead')
  static const CRED_TYPE_DOMAIN_PASSWORD = 2;
  @Deprecated('Use CRED_TYPE_DOMAIN_CERTIFICATE instead')
  static const CRED_TYPE_DOMAIN_CERTIFICATE = 3;
  @Deprecated('Use CRED_TYPE_DOMAIN_VISIBLE_PASSWORD instead')
  static const CRED_TYPE_DOMAIN_VISIBLE_PASSWORD = 4;
  @Deprecated('Use CRED_TYPE_GENERIC_CERTIFICATE instead')
  static const CRED_TYPE_GENERIC_CERTIFICATE = 5;
  @Deprecated('Use CRED_TYPE_DOMAIN_EXTENDED instead')
  static const CRED_TYPE_DOMAIN_EXTENDED = 6;
  @Deprecated('Use CRED_TYPE_MAXIMUM instead')
  static const CRED_TYPE_MAXIMUM = 7;
  @Deprecated('Use CRED_TYPE_MAXIMUM_EX instead')
  static const CRED_TYPE_MAXIMUM_EX = 1007;
}

/// {@category enum}
extension type const CURSORINFO_FLAGS(int _) implements int {
  @Deprecated('Use CURSOR_SHOWING instead')
  static const CURSOR_SHOWING = 1;
  @Deprecated('Use CURSOR_SUPPRESSED instead')
  static const CURSOR_SUPPRESSED = 2;
}

/// {@category enum}
extension type const CWP_FLAGS(int _) implements int {
  @Deprecated('Use CWP_ALL instead')
  static const CWP_ALL = 0;
  @Deprecated('Use CWP_SKIPINVISIBLE instead')
  static const CWP_SKIPINVISIBLE = 1;
  @Deprecated('Use CWP_SKIPDISABLED instead')
  static const CWP_SKIPDISABLED = 2;
  @Deprecated('Use CWP_SKIPTRANSPARENT instead')
  static const CWP_SKIPTRANSPARENT = 4;
}

/// {@category enum}
extension type const DCB_PARITY(int _) implements int {
  @Deprecated('Use EVENPARITY instead')
  static const EVENPARITY = 2;
  @Deprecated('Use MARKPARITY instead')
  static const MARKPARITY = 3;
  @Deprecated('Use NOPARITY instead')
  static const NOPARITY = 0;
  @Deprecated('Use ODDPARITY instead')
  static const ODDPARITY = 1;
  @Deprecated('Use SPACEPARITY instead')
  static const SPACEPARITY = 4;
}

/// {@category enum}
extension type const DCB_STOP_BITS(int _) implements int {
  @Deprecated('Use ONESTOPBIT instead')
  static const ONESTOPBIT = 0;
  @Deprecated('Use ONE5STOPBITS instead')
  static const ONE5STOPBITS = 1;
  @Deprecated('Use TWOSTOPBITS instead')
  static const TWOSTOPBITS = 2;
}

/// {@category enum}
extension type const DEFINE_DOS_DEVICE_FLAGS(int _) implements int {
  @Deprecated('Use DDD_RAW_TARGET_PATH instead')
  static const DDD_RAW_TARGET_PATH = 1;
  @Deprecated('Use DDD_REMOVE_DEFINITION instead')
  static const DDD_REMOVE_DEFINITION = 2;
  @Deprecated('Use DDD_EXACT_MATCH_ON_REMOVE instead')
  static const DDD_EXACT_MATCH_ON_REMOVE = 4;
  @Deprecated('Use DDD_NO_BROADCAST_SYSTEM instead')
  static const DDD_NO_BROADCAST_SYSTEM = 8;
  @Deprecated('Use DDD_LUID_BROADCAST_DRIVE instead')
  static const DDD_LUID_BROADCAST_DRIVE = 16;
}

/// {@category enum}
extension type const DESKTOP_ACCESS_FLAGS(int _) implements int {
  @Deprecated('Use DESKTOP_DELETE instead')
  static const DESKTOP_DELETE = 65536;
  @Deprecated('Use DESKTOP_READ_CONTROL instead')
  static const DESKTOP_READ_CONTROL = 131072;
  @Deprecated('Use DESKTOP_WRITE_DAC instead')
  static const DESKTOP_WRITE_DAC = 262144;
  @Deprecated('Use DESKTOP_WRITE_OWNER instead')
  static const DESKTOP_WRITE_OWNER = 524288;
  @Deprecated('Use DESKTOP_SYNCHRONIZE instead')
  static const DESKTOP_SYNCHRONIZE = 1048576;
  @Deprecated('Use DESKTOP_READOBJECTS instead')
  static const DESKTOP_READOBJECTS = 1;
  @Deprecated('Use DESKTOP_CREATEWINDOW instead')
  static const DESKTOP_CREATEWINDOW = 2;
  @Deprecated('Use DESKTOP_CREATEMENU instead')
  static const DESKTOP_CREATEMENU = 4;
  @Deprecated('Use DESKTOP_HOOKCONTROL instead')
  static const DESKTOP_HOOKCONTROL = 8;
  @Deprecated('Use DESKTOP_JOURNALRECORD instead')
  static const DESKTOP_JOURNALRECORD = 16;
  @Deprecated('Use DESKTOP_JOURNALPLAYBACK instead')
  static const DESKTOP_JOURNALPLAYBACK = 32;
  @Deprecated('Use DESKTOP_ENUMERATE instead')
  static const DESKTOP_ENUMERATE = 64;
  @Deprecated('Use DESKTOP_WRITEOBJECTS instead')
  static const DESKTOP_WRITEOBJECTS = 128;
  @Deprecated('Use DESKTOP_SWITCHDESKTOP instead')
  static const DESKTOP_SWITCHDESKTOP = 256;
}

/// {@category enum}
extension type const DESKTOP_CONTROL_FLAGS(int _) implements int {
  @Deprecated('Use DF_ALLOWOTHERACCOUNTHOOK instead')
  static const DF_ALLOWOTHERACCOUNTHOOK = 1;
}

/// {@category enum}
extension type const DEV_BROADCAST_HDR_DEVICE_TYPE(int _) implements int {
  @Deprecated('Use DBT_DEVTYP_DEVICEINTERFACE instead')
  static const DBT_DEVTYP_DEVICEINTERFACE = 5;
  @Deprecated('Use DBT_DEVTYP_HANDLE instead')
  static const DBT_DEVTYP_HANDLE = 6;
  @Deprecated('Use DBT_DEVTYP_OEM instead')
  static const DBT_DEVTYP_OEM = 0;
  @Deprecated('Use DBT_DEVTYP_PORT instead')
  static const DBT_DEVTYP_PORT = 3;
  @Deprecated('Use DBT_DEVTYP_VOLUME instead')
  static const DBT_DEVTYP_VOLUME = 2;
}

/// Indicates a spoofed device scale factor, as a percent.
///
/// Used by IApplicationDesignModeSettings::SetApplicationViewState and
/// IApplicationDesignModeSettings::IsApplicationViewStateSupported.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ne-shtypes-device_scale_factor>.
///
/// {@category enum}
extension type const DEVICE_SCALE_FACTOR(int _) implements int {
  @Deprecated('Use DEVICE_SCALE_FACTOR_INVALID instead')
  static const DEVICE_SCALE_FACTOR_INVALID = 0;

  /// 100%.
  @Deprecated('Use SCALE_100_PERCENT instead')
  static const SCALE_100_PERCENT = 100;

  /// 120%.
  @Deprecated('Use SCALE_120_PERCENT instead')
  static const SCALE_120_PERCENT = 120;
  @Deprecated('Use SCALE_125_PERCENT instead')
  static const SCALE_125_PERCENT = 125;

  /// 140%.
  @Deprecated('Use SCALE_140_PERCENT instead')
  static const SCALE_140_PERCENT = 140;

  /// 150%.
  @Deprecated('Use SCALE_150_PERCENT instead')
  static const SCALE_150_PERCENT = 150;

  /// 160%.
  @Deprecated('Use SCALE_160_PERCENT instead')
  static const SCALE_160_PERCENT = 160;
  @Deprecated('Use SCALE_175_PERCENT instead')
  static const SCALE_175_PERCENT = 175;

  /// 180%.
  @Deprecated('Use SCALE_180_PERCENT instead')
  static const SCALE_180_PERCENT = 180;
  @Deprecated('Use SCALE_200_PERCENT instead')
  static const SCALE_200_PERCENT = 200;

  /// 225%.
  @Deprecated('Use SCALE_225_PERCENT instead')
  static const SCALE_225_PERCENT = 225;
  @Deprecated('Use SCALE_250_PERCENT instead')
  static const SCALE_250_PERCENT = 250;
  @Deprecated('Use SCALE_300_PERCENT instead')
  static const SCALE_300_PERCENT = 300;
  @Deprecated('Use SCALE_350_PERCENT instead')
  static const SCALE_350_PERCENT = 350;
  @Deprecated('Use SCALE_400_PERCENT instead')
  static const SCALE_400_PERCENT = 400;
  @Deprecated('Use SCALE_450_PERCENT instead')
  static const SCALE_450_PERCENT = 450;
  @Deprecated('Use SCALE_500_PERCENT instead')
  static const SCALE_500_PERCENT = 500;
}

/// {@category enum}
extension type const DEVICE_STATE(int _) implements int {
  @Deprecated('Use DEVICE_STATE_ACTIVE instead')
  static const DEVICE_STATE_ACTIVE = 1;
  @Deprecated('Use DEVICE_STATE_DISABLED instead')
  static const DEVICE_STATE_DISABLED = 2;
  @Deprecated('Use DEVICE_STATE_NOTPRESENT instead')
  static const DEVICE_STATE_NOTPRESENT = 4;
  @Deprecated('Use DEVICE_STATE_UNPLUGGED instead')
  static const DEVICE_STATE_UNPLUGGED = 8;
}

/// {@category enum}
extension type const DEVMODE_COLLATE(int _) implements int {
  @Deprecated('Use DMCOLLATE_FALSE instead')
  static const DMCOLLATE_FALSE = 0;
  @Deprecated('Use DMCOLLATE_TRUE instead')
  static const DMCOLLATE_TRUE = 1;
}

/// {@category enum}
extension type const DEVMODE_COLOR(int _) implements int {
  @Deprecated('Use DMCOLOR_MONOCHROME instead')
  static const DMCOLOR_MONOCHROME = 1;
  @Deprecated('Use DMCOLOR_COLOR instead')
  static const DMCOLOR_COLOR = 2;
}

/// {@category enum}
extension type const DEVMODE_DISPLAY_FIXED_OUTPUT(int _) implements int {
  @Deprecated('Use DMDFO_DEFAULT instead')
  static const DMDFO_DEFAULT = 0;
  @Deprecated('Use DMDFO_STRETCH instead')
  static const DMDFO_STRETCH = 1;
  @Deprecated('Use DMDFO_CENTER instead')
  static const DMDFO_CENTER = 2;
}

/// {@category enum}
extension type const DEVMODE_DISPLAY_ORIENTATION(int _) implements int {
  @Deprecated('Use DMDO_DEFAULT instead')
  static const DMDO_DEFAULT = 0;
  @Deprecated('Use DMDO_90 instead')
  static const DMDO_90 = 1;
  @Deprecated('Use DMDO_180 instead')
  static const DMDO_180 = 2;
  @Deprecated('Use DMDO_270 instead')
  static const DMDO_270 = 3;
}

/// {@category enum}
extension type const DEVMODE_DUPLEX(int _) implements int {
  @Deprecated('Use DMDUP_SIMPLEX instead')
  static const DMDUP_SIMPLEX = 1;
  @Deprecated('Use DMDUP_VERTICAL instead')
  static const DMDUP_VERTICAL = 2;
  @Deprecated('Use DMDUP_HORIZONTAL instead')
  static const DMDUP_HORIZONTAL = 3;
}

/// {@category enum}
extension type const DEVMODE_FIELD_FLAGS(int _) implements int {
  @Deprecated('Use DM_SPECVERSION instead')
  static const DM_SPECVERSION = 1025;
  @Deprecated('Use DM_ORIENTATION instead')
  static const DM_ORIENTATION = 1;
  @Deprecated('Use DM_PAPERSIZE instead')
  static const DM_PAPERSIZE = 2;
  @Deprecated('Use DM_PAPERLENGTH instead')
  static const DM_PAPERLENGTH = 4;
  @Deprecated('Use DM_PAPERWIDTH instead')
  static const DM_PAPERWIDTH = 8;
  @Deprecated('Use DM_SCALE instead')
  static const DM_SCALE = 16;
  @Deprecated('Use DM_POSITION instead')
  static const DM_POSITION = 32;
  @Deprecated('Use DM_NUP instead')
  static const DM_NUP = 64;
  @Deprecated('Use DM_DISPLAYORIENTATION instead')
  static const DM_DISPLAYORIENTATION = 128;
  @Deprecated('Use DM_COPIES instead')
  static const DM_COPIES = 256;
  @Deprecated('Use DM_DEFAULTSOURCE instead')
  static const DM_DEFAULTSOURCE = 512;
  @Deprecated('Use DM_PRINTQUALITY instead')
  static const DM_PRINTQUALITY = 1024;
  @Deprecated('Use DM_COLOR instead')
  static const DM_COLOR = 2048;
  @Deprecated('Use DM_DUPLEX instead')
  static const DM_DUPLEX = 4096;
  @Deprecated('Use DM_YRESOLUTION instead')
  static const DM_YRESOLUTION = 8192;
  @Deprecated('Use DM_TTOPTION instead')
  static const DM_TTOPTION = 16384;
  @Deprecated('Use DM_COLLATE instead')
  static const DM_COLLATE = 32768;
  @Deprecated('Use DM_FORMNAME instead')
  static const DM_FORMNAME = 65536;
  @Deprecated('Use DM_LOGPIXELS instead')
  static const DM_LOGPIXELS = 131072;
  @Deprecated('Use DM_BITSPERPEL instead')
  static const DM_BITSPERPEL = 262144;
  @Deprecated('Use DM_PELSWIDTH instead')
  static const DM_PELSWIDTH = 524288;
  @Deprecated('Use DM_PELSHEIGHT instead')
  static const DM_PELSHEIGHT = 1048576;
  @Deprecated('Use DM_DISPLAYFLAGS instead')
  static const DM_DISPLAYFLAGS = 2097152;
  @Deprecated('Use DM_DISPLAYFREQUENCY instead')
  static const DM_DISPLAYFREQUENCY = 4194304;
  @Deprecated('Use DM_ICMMETHOD instead')
  static const DM_ICMMETHOD = 8388608;
  @Deprecated('Use DM_ICMINTENT instead')
  static const DM_ICMINTENT = 16777216;
  @Deprecated('Use DM_MEDIATYPE instead')
  static const DM_MEDIATYPE = 33554432;
  @Deprecated('Use DM_DITHERTYPE instead')
  static const DM_DITHERTYPE = 67108864;
  @Deprecated('Use DM_PANNINGWIDTH instead')
  static const DM_PANNINGWIDTH = 134217728;
  @Deprecated('Use DM_PANNINGHEIGHT instead')
  static const DM_PANNINGHEIGHT = 268435456;
  @Deprecated('Use DM_DISPLAYFIXEDOUTPUT instead')
  static const DM_DISPLAYFIXEDOUTPUT = 536870912;
  @Deprecated('Use DM_INTERLACED instead')
  static const DM_INTERLACED = 2;
  @Deprecated('Use DM_UPDATE instead')
  static const DM_UPDATE = 1;
  @Deprecated('Use DM_COPY instead')
  static const DM_COPY = 2;
  @Deprecated('Use DM_PROMPT instead')
  static const DM_PROMPT = 4;
  @Deprecated('Use DM_MODIFY instead')
  static const DM_MODIFY = 8;
  @Deprecated('Use DM_IN_BUFFER instead')
  static const DM_IN_BUFFER = 8;
  @Deprecated('Use DM_IN_PROMPT instead')
  static const DM_IN_PROMPT = 4;
  @Deprecated('Use DM_OUT_BUFFER instead')
  static const DM_OUT_BUFFER = 2;
  @Deprecated('Use DM_OUT_DEFAULT instead')
  static const DM_OUT_DEFAULT = 1;
}

/// {@category enum}
extension type const DEVMODE_TRUETYPE_OPTION(int _) implements int {
  @Deprecated('Use DMTT_BITMAP instead')
  static const DMTT_BITMAP = 1;
  @Deprecated('Use DMTT_DOWNLOAD instead')
  static const DMTT_DOWNLOAD = 2;
  @Deprecated('Use DMTT_SUBDEV instead')
  static const DMTT_SUBDEV = 3;
  @Deprecated('Use DMTT_DOWNLOAD_OUTLINE instead')
  static const DMTT_DOWNLOAD_OUTLINE = 4;
}

/// {@category enum}
extension type const DFCS_STATE(int _) implements int {
  @Deprecated('Use DFCS_CAPTIONCLOSE instead')
  static const DFCS_CAPTIONCLOSE = 0;
  @Deprecated('Use DFCS_CAPTIONMIN instead')
  static const DFCS_CAPTIONMIN = 1;
  @Deprecated('Use DFCS_CAPTIONMAX instead')
  static const DFCS_CAPTIONMAX = 2;
  @Deprecated('Use DFCS_CAPTIONRESTORE instead')
  static const DFCS_CAPTIONRESTORE = 3;
  @Deprecated('Use DFCS_CAPTIONHELP instead')
  static const DFCS_CAPTIONHELP = 4;
  @Deprecated('Use DFCS_MENUARROW instead')
  static const DFCS_MENUARROW = 0;
  @Deprecated('Use DFCS_MENUCHECK instead')
  static const DFCS_MENUCHECK = 1;
  @Deprecated('Use DFCS_MENUBULLET instead')
  static const DFCS_MENUBULLET = 2;
  @Deprecated('Use DFCS_MENUARROWRIGHT instead')
  static const DFCS_MENUARROWRIGHT = 4;
  @Deprecated('Use DFCS_SCROLLUP instead')
  static const DFCS_SCROLLUP = 0;
  @Deprecated('Use DFCS_SCROLLDOWN instead')
  static const DFCS_SCROLLDOWN = 1;
  @Deprecated('Use DFCS_SCROLLLEFT instead')
  static const DFCS_SCROLLLEFT = 2;
  @Deprecated('Use DFCS_SCROLLRIGHT instead')
  static const DFCS_SCROLLRIGHT = 3;
  @Deprecated('Use DFCS_SCROLLCOMBOBOX instead')
  static const DFCS_SCROLLCOMBOBOX = 5;
  @Deprecated('Use DFCS_SCROLLSIZEGRIP instead')
  static const DFCS_SCROLLSIZEGRIP = 8;
  @Deprecated('Use DFCS_SCROLLSIZEGRIPRIGHT instead')
  static const DFCS_SCROLLSIZEGRIPRIGHT = 16;
  @Deprecated('Use DFCS_BUTTONCHECK instead')
  static const DFCS_BUTTONCHECK = 0;
  @Deprecated('Use DFCS_BUTTONRADIOIMAGE instead')
  static const DFCS_BUTTONRADIOIMAGE = 1;
  @Deprecated('Use DFCS_BUTTONRADIOMASK instead')
  static const DFCS_BUTTONRADIOMASK = 2;
  @Deprecated('Use DFCS_BUTTONRADIO instead')
  static const DFCS_BUTTONRADIO = 4;
  @Deprecated('Use DFCS_BUTTON3STATE instead')
  static const DFCS_BUTTON3STATE = 8;
  @Deprecated('Use DFCS_BUTTONPUSH instead')
  static const DFCS_BUTTONPUSH = 16;
  @Deprecated('Use DFCS_INACTIVE instead')
  static const DFCS_INACTIVE = 256;
  @Deprecated('Use DFCS_PUSHED instead')
  static const DFCS_PUSHED = 512;
  @Deprecated('Use DFCS_CHECKED instead')
  static const DFCS_CHECKED = 1024;
  @Deprecated('Use DFCS_TRANSPARENT instead')
  static const DFCS_TRANSPARENT = 2048;
  @Deprecated('Use DFCS_HOT instead')
  static const DFCS_HOT = 4096;
  @Deprecated('Use DFCS_ADJUSTRECT instead')
  static const DFCS_ADJUSTRECT = 8192;
  @Deprecated('Use DFCS_FLAT instead')
  static const DFCS_FLAT = 16384;
  @Deprecated('Use DFCS_MONO instead')
  static const DFCS_MONO = 32768;
}

/// {@category enum}
extension type const DFC_TYPE(int _) implements int {
  @Deprecated('Use DFC_CAPTION instead')
  static const DFC_CAPTION = 1;
  @Deprecated('Use DFC_MENU instead')
  static const DFC_MENU = 2;
  @Deprecated('Use DFC_SCROLL instead')
  static const DFC_SCROLL = 3;
  @Deprecated('Use DFC_BUTTON instead')
  static const DFC_BUTTON = 4;
  @Deprecated('Use DFC_POPUPMENU instead')
  static const DFC_POPUPMENU = 5;
}

/// {@category enum}
extension type const DIB_USAGE(int _) implements int {
  @Deprecated('Use DIB_RGB_COLORS instead')
  static const DIB_RGB_COLORS = 0;
  @Deprecated('Use DIB_PAL_COLORS instead')
  static const DIB_PAL_COLORS = 1;
}

/// {@category enum}
extension type const DISPATCH_FLAGS(int _) implements int {
  @Deprecated('Use DISPATCH_METHOD instead')
  static const DISPATCH_METHOD = 1;
  @Deprecated('Use DISPATCH_PROPERTYGET instead')
  static const DISPATCH_PROPERTYGET = 2;
  @Deprecated('Use DISPATCH_PROPERTYPUT instead')
  static const DISPATCH_PROPERTYPUT = 4;
  @Deprecated('Use DISPATCH_PROPERTYPUTREF instead')
  static const DISPATCH_PROPERTYPUTREF = 8;
}

/// Specifies the type of display device info to configure or obtain through the
/// DisplayConfigSetDeviceInfo or DisplayConfigGetDeviceInfo function.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_device_info_type>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_DEVICE_INFO_TYPE(int _) implements int {
  /// Specifies the source name of the display device.
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_GET_SOURCE_NAME instead')
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SOURCE_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(1);

  /// Specifies information about the monitor.
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_NAME instead')
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(2);

  /// Specifies information about the preferred mode of a monitor.
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_PREFERRED_MODE instead')
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_PREFERRED_MODE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(3);

  /// Specifies the graphics adapter name.
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_GET_ADAPTER_NAME instead')
  static const DISPLAYCONFIG_DEVICE_INFO_GET_ADAPTER_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(4);

  /// Specifies how to set the monitor.
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_SET_TARGET_PERSISTENCE instead')
  static const DISPLAYCONFIG_DEVICE_INFO_SET_TARGET_PERSISTENCE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(5);

  /// Specifies how to set the base output technology for a given target ID.
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_BASE_TYPE instead')
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_BASE_TYPE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(6);

  /// Specifies the state of virtual mode support.
  @Deprecated(
    'Use DISPLAYCONFIG_DEVICE_INFO_GET_SUPPORT_VIRTUAL_RESOLUTION instead',
  )
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SUPPORT_VIRTUAL_RESOLUTION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(7);

  /// Specifies how to set the state of virtual mode support.
  @Deprecated(
    'Use DISPLAYCONFIG_DEVICE_INFO_SET_SUPPORT_VIRTUAL_RESOLUTION instead',
  )
  static const DISPLAYCONFIG_DEVICE_INFO_SET_SUPPORT_VIRTUAL_RESOLUTION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(8);
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO instead')
  static const DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(9);
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_SET_ADVANCED_COLOR_STATE instead')
  static const DISPLAYCONFIG_DEVICE_INFO_SET_ADVANCED_COLOR_STATE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(10);

  /// Specifies the current SDR white level for an HDR monitor.
  @Deprecated('Use DISPLAYCONFIG_DEVICE_INFO_GET_SDR_WHITE_LEVEL instead')
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SDR_WHITE_LEVEL =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(11);
  @Deprecated(
    'Use DISPLAYCONFIG_DEVICE_INFO_GET_MONITOR_SPECIALIZATION instead',
  )
  static const DISPLAYCONFIG_DEVICE_INFO_GET_MONITOR_SPECIALIZATION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(12);
  @Deprecated(
    'Use DISPLAYCONFIG_DEVICE_INFO_SET_MONITOR_SPECIALIZATION instead',
  )
  static const DISPLAYCONFIG_DEVICE_INFO_SET_MONITOR_SPECIALIZATION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(13);
}

/// Specifies that the information that is contained within the
/// DISPLAYCONFIG_MODE_INFO structure is either source or target mode.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_mode_info_type>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_MODE_INFO_TYPE(int _) implements int {
  /// Indicates that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
  /// structure contains source mode information.
  @Deprecated('Use DISPLAYCONFIG_MODE_INFO_TYPE_SOURCE instead')
  static const DISPLAYCONFIG_MODE_INFO_TYPE_SOURCE =
      DISPLAYCONFIG_MODE_INFO_TYPE(1);

  /// Indicates that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
  /// structure contains target mode information.
  @Deprecated('Use DISPLAYCONFIG_MODE_INFO_TYPE_TARGET instead')
  static const DISPLAYCONFIG_MODE_INFO_TYPE_TARGET =
      DISPLAYCONFIG_MODE_INFO_TYPE(2);

  /// Indicates that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
  /// structure contains a valid <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_desktop_image_info">DISPLAYCONFIG_DESKTOP_IMAGE_INFO</a>
  /// structure.
  @Deprecated('Use DISPLAYCONFIG_MODE_INFO_TYPE_DESKTOP_IMAGE instead')
  static const DISPLAYCONFIG_MODE_INFO_TYPE_DESKTOP_IMAGE =
      DISPLAYCONFIG_MODE_INFO_TYPE(3);
}

/// Specifies pixel format in various bits per pixel (BPP) values.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_pixelformat>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_PIXELFORMAT(int _) implements int {
  /// Indicates 8 BPP format.
  @Deprecated('Use DISPLAYCONFIG_PIXELFORMAT_8BPP instead')
  static const DISPLAYCONFIG_PIXELFORMAT_8BPP = 1;

  /// Indicates 16 BPP format.
  @Deprecated('Use DISPLAYCONFIG_PIXELFORMAT_16BPP instead')
  static const DISPLAYCONFIG_PIXELFORMAT_16BPP = 2;

  /// Indicates 24 BPP format.
  @Deprecated('Use DISPLAYCONFIG_PIXELFORMAT_24BPP instead')
  static const DISPLAYCONFIG_PIXELFORMAT_24BPP = 3;

  /// Indicates 32 BPP format.
  @Deprecated('Use DISPLAYCONFIG_PIXELFORMAT_32BPP instead')
  static const DISPLAYCONFIG_PIXELFORMAT_32BPP = 4;

  /// Indicates that the current display is not an 8, 16, 24, or 32 BPP GDI
  /// desktop mode.
  @Deprecated('Use DISPLAYCONFIG_PIXELFORMAT_NONGDI instead')
  static const DISPLAYCONFIG_PIXELFORMAT_NONGDI = 5;
}

/// Specifies the clockwise rotation of the display.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_rotation>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_ROTATION(int _) implements int {
  /// Indicates that rotation is 0 degrees—landscape mode.
  @Deprecated('Use DISPLAYCONFIG_ROTATION_IDENTITY instead')
  static const DISPLAYCONFIG_ROTATION_IDENTITY = 1;

  /// Indicates that rotation is 90 degrees clockwise—portrait mode.
  @Deprecated('Use DISPLAYCONFIG_ROTATION_ROTATE90 instead')
  static const DISPLAYCONFIG_ROTATION_ROTATE90 = 2;

  /// Indicates that rotation is 180 degrees clockwise—inverted landscape mode.
  @Deprecated('Use DISPLAYCONFIG_ROTATION_ROTATE180 instead')
  static const DISPLAYCONFIG_ROTATION_ROTATE180 = 3;

  /// Indicates that rotation is 270 degrees clockwise—inverted portrait mode.
  @Deprecated('Use DISPLAYCONFIG_ROTATION_ROTATE270 instead')
  static const DISPLAYCONFIG_ROTATION_ROTATE270 = 4;
}

/// Specifies the scaling transformation applied to content displayed on a video
/// present network (VidPN) present path.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_scaling>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_SCALING(int _) implements int {
  /// Indicates the identity transformation; the source content is presented
  /// with no change.
  @Deprecated('Use DISPLAYCONFIG_SCALING_IDENTITY instead')
  static const DISPLAYCONFIG_SCALING_IDENTITY = 1;

  /// Indicates the centering transformation; the source content is presented
  /// unscaled, centered with respect to the spatial resolution of the target
  /// mode.
  @Deprecated('Use DISPLAYCONFIG_SCALING_CENTERED instead')
  static const DISPLAYCONFIG_SCALING_CENTERED = 2;

  /// Indicates the content is scaled to fit the path's target.
  @Deprecated('Use DISPLAYCONFIG_SCALING_STRETCHED instead')
  static const DISPLAYCONFIG_SCALING_STRETCHED = 3;

  /// Indicates the aspect-ratio centering transformation.
  @Deprecated('Use DISPLAYCONFIG_SCALING_ASPECTRATIOCENTEREDMAX instead')
  static const DISPLAYCONFIG_SCALING_ASPECTRATIOCENTEREDMAX =
      DISPLAYCONFIG_SCALING(4);

  /// Indicates that the caller requests a custom scaling that the caller cannot
  /// describe with any of the other DISPLAYCONFIG_SCALING_XXX values.
  @Deprecated('Use DISPLAYCONFIG_SCALING_CUSTOM instead')
  static const DISPLAYCONFIG_SCALING_CUSTOM = 5;

  /// Indicates that the caller does not have any preference for the scaling.
  @Deprecated('Use DISPLAYCONFIG_SCALING_PREFERRED instead')
  static const DISPLAYCONFIG_SCALING_PREFERRED = 128;
}

/// Specifies the method that the display uses to create an image on a screen.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_scanline_ordering>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_SCANLINE_ORDERING(int _) implements int {
  /// Indicates that scan-line ordering of the output is unspecified.
  @Deprecated('Use DISPLAYCONFIG_SCANLINE_ORDERING_UNSPECIFIED instead')
  static const DISPLAYCONFIG_SCANLINE_ORDERING_UNSPECIFIED =
      DISPLAYCONFIG_SCANLINE_ORDERING(0);

  /// Indicates that the output is a progressive image.
  @Deprecated('Use DISPLAYCONFIG_SCANLINE_ORDERING_PROGRESSIVE instead')
  static const DISPLAYCONFIG_SCANLINE_ORDERING_PROGRESSIVE =
      DISPLAYCONFIG_SCANLINE_ORDERING(1);

  /// Indicates that the output is an interlaced image that is created beginning
  /// with the upper field.
  @Deprecated('Use DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED instead')
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED =
      DISPLAYCONFIG_SCANLINE_ORDERING(2);

  /// Indicates that the output is an interlaced image that is created beginning
  /// with the upper field.
  @Deprecated(
    'Use DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_UPPERFIELDFIRST instead',
  )
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_UPPERFIELDFIRST =
      DISPLAYCONFIG_SCANLINE_ORDERING(2);

  /// Indicates that the output is an interlaced image that is created beginning
  /// with the lower field.
  @Deprecated(
    'Use DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_LOWERFIELDFIRST instead',
  )
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_LOWERFIELDFIRST =
      DISPLAYCONFIG_SCANLINE_ORDERING(3);
}

/// Specifies the target's connector type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_video_output_technology>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(int _)
    implements int {
  /// Indicates a connector that is not one of the types that is indicated by
  /// the following enumerators in this enumeration.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_OTHER instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_OTHER =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(-1);

  /// Indicates an HD15 (VGA) connector.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HD15 instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HD15 =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0);

  /// Indicates an S-video connector.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SVIDEO instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SVIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(1);

  /// Indicates a composite video connector group.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPOSITE_VIDEO instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPOSITE_VIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(2);

  /// Indicates a component video connector group.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPONENT_VIDEO instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPONENT_VIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(3);

  /// Indicates a Digital Video Interface (DVI) connector.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DVI instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DVI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(4);

  /// Indicates a High-Definition Multimedia Interface (HDMI) connector.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HDMI instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HDMI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(5);

  /// Indicates a Low Voltage Differential Swing (LVDS) connector.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_LVDS instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_LVDS =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(6);

  /// Indicates a Japanese D connector.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_D_JPN instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_D_JPN =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(8);

  /// Indicates an SDI connector.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDI instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(9);

  /// Indicates an external display port, which is a display port that connects
  /// externally to a display device.
  @Deprecated(
    'Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EXTERNAL instead',
  )
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EXTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(10);

  /// Indicates an embedded display port that connects internally to a display
  /// device.
  @Deprecated(
    'Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EMBEDDED instead',
  )
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EMBEDDED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(11);

  /// Indicates an external Unified Display Interface (UDI), which is a UDI that
  /// connects externally to a display device.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EXTERNAL instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EXTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(12);

  /// Indicates an embedded UDI that connects internally to a display device.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EMBEDDED instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EMBEDDED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(13);

  /// Indicates a dongle cable that supports standard definition television
  /// (SDTV).
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDTVDONGLE instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDTVDONGLE =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(14);

  /// Indicates that the VidPN target is a Miracast wireless display device.
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_MIRACAST instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_MIRACAST =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(15);
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_WIRED instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_WIRED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(16);
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_VIRTUAL instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_VIRTUAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(17);
  @Deprecated(
    'Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_USB_TUNNEL instead',
  )
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_USB_TUNNEL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(18);

  /// Indicates that the video output device connects internally to a display
  /// device (for example, the internal connection in a laptop computer).
  @Deprecated('Use DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INTERNAL instead')
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(-2147483648);
}

/// {@category enum}
extension type const DISPLAY_DEVICE_STATE_FLAGS(int _) implements int {
  @Deprecated('Use DISPLAY_DEVICE_ATTACHED_TO_DESKTOP instead')
  static const DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 1;
  @Deprecated('Use DISPLAY_DEVICE_MULTI_DRIVER instead')
  static const DISPLAY_DEVICE_MULTI_DRIVER = 2;
  @Deprecated('Use DISPLAY_DEVICE_PRIMARY_DEVICE instead')
  static const DISPLAY_DEVICE_PRIMARY_DEVICE = 4;
  @Deprecated('Use DISPLAY_DEVICE_MIRRORING_DRIVER instead')
  static const DISPLAY_DEVICE_MIRRORING_DRIVER = 8;
  @Deprecated('Use DISPLAY_DEVICE_VGA_COMPATIBLE instead')
  static const DISPLAY_DEVICE_VGA_COMPATIBLE = 16;
  @Deprecated('Use DISPLAY_DEVICE_REMOVABLE instead')
  static const DISPLAY_DEVICE_REMOVABLE = 32;
  @Deprecated('Use DISPLAY_DEVICE_ACC_DRIVER instead')
  static const DISPLAY_DEVICE_ACC_DRIVER = 64;
  @Deprecated('Use DISPLAY_DEVICE_MODESPRUNED instead')
  static const DISPLAY_DEVICE_MODESPRUNED = 134217728;
  @Deprecated('Use DISPLAY_DEVICE_RDPUDD instead')
  static const DISPLAY_DEVICE_RDPUDD = 16777216;
  @Deprecated('Use DISPLAY_DEVICE_REMOTE instead')
  static const DISPLAY_DEVICE_REMOTE = 67108864;
  @Deprecated('Use DISPLAY_DEVICE_DISCONNECT instead')
  static const DISPLAY_DEVICE_DISCONNECT = 33554432;
  @Deprecated('Use DISPLAY_DEVICE_TS_COMPATIBLE instead')
  static const DISPLAY_DEVICE_TS_COMPATIBLE = 2097152;
  @Deprecated('Use DISPLAY_DEVICE_UNSAFE_MODES_ON instead')
  static const DISPLAY_DEVICE_UNSAFE_MODES_ON = 524288;
  @Deprecated('Use DISPLAY_DEVICE_ACTIVE instead')
  static const DISPLAY_DEVICE_ACTIVE = 1;
  @Deprecated('Use DISPLAY_DEVICE_ATTACHED instead')
  static const DISPLAY_DEVICE_ATTACHED = 2;
}

/// {@category enum}
extension type const DISP_CHANGE(int _) implements int {
  @Deprecated('Use DISP_CHANGE_SUCCESSFUL instead')
  static const DISP_CHANGE_SUCCESSFUL = 0;
  @Deprecated('Use DISP_CHANGE_RESTART instead')
  static const DISP_CHANGE_RESTART = 1;
  @Deprecated('Use DISP_CHANGE_FAILED instead')
  static const DISP_CHANGE_FAILED = DISP_CHANGE(-1);
  @Deprecated('Use DISP_CHANGE_BADMODE instead')
  static const DISP_CHANGE_BADMODE = DISP_CHANGE(-2);
  @Deprecated('Use DISP_CHANGE_NOTUPDATED instead')
  static const DISP_CHANGE_NOTUPDATED = DISP_CHANGE(-3);
  @Deprecated('Use DISP_CHANGE_BADFLAGS instead')
  static const DISP_CHANGE_BADFLAGS = DISP_CHANGE(-4);
  @Deprecated('Use DISP_CHANGE_BADPARAM instead')
  static const DISP_CHANGE_BADPARAM = DISP_CHANGE(-5);
  @Deprecated('Use DISP_CHANGE_BADDUALVIEW instead')
  static const DISP_CHANGE_BADDUALVIEW = DISP_CHANGE(-6);
}

/// {@category enum}
extension type const DLG_BUTTON_CHECK_STATE(int _) implements int {
  @Deprecated('Use BST_CHECKED instead')
  static const BST_CHECKED = 1;
  @Deprecated('Use BST_INDETERMINATE instead')
  static const BST_INDETERMINATE = 2;
  @Deprecated('Use BST_UNCHECKED instead')
  static const BST_UNCHECKED = 0;
}

/// Defines a wireless LAN authentication algorithm.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-auth-algorithm>.
///
/// {@category enum}
extension type const DOT11_AUTH_ALGORITHM(int _) implements int {
  @Deprecated('Use DOT11_AUTH_ALGO_80211_OPEN instead')
  static const DOT11_AUTH_ALGO_80211_OPEN = 1;
  @Deprecated('Use DOT11_AUTH_ALGO_80211_SHARED_KEY instead')
  static const DOT11_AUTH_ALGO_80211_SHARED_KEY = 2;
  @Deprecated('Use DOT11_AUTH_ALGO_WPA instead')
  static const DOT11_AUTH_ALGO_WPA = 3;
  @Deprecated('Use DOT11_AUTH_ALGO_WPA_PSK instead')
  static const DOT11_AUTH_ALGO_WPA_PSK = 4;
  @Deprecated('Use DOT11_AUTH_ALGO_WPA_NONE instead')
  static const DOT11_AUTH_ALGO_WPA_NONE = 5;
  @Deprecated('Use DOT11_AUTH_ALGO_RSNA instead')
  static const DOT11_AUTH_ALGO_RSNA = 6;
  @Deprecated('Use DOT11_AUTH_ALGO_RSNA_PSK instead')
  static const DOT11_AUTH_ALGO_RSNA_PSK = 7;
  @Deprecated('Use DOT11_AUTH_ALGO_WPA3 instead')
  static const DOT11_AUTH_ALGO_WPA3 = 8;
  @Deprecated('Use DOT11_AUTH_ALGO_WPA3_ENT_192 instead')
  static const DOT11_AUTH_ALGO_WPA3_ENT_192 = 8;
  @Deprecated('Use DOT11_AUTH_ALGO_WPA3_SAE instead')
  static const DOT11_AUTH_ALGO_WPA3_SAE = 9;
  @Deprecated('Use DOT11_AUTH_ALGO_OWE instead')
  static const DOT11_AUTH_ALGO_OWE = 10;
  @Deprecated('Use DOT11_AUTH_ALGO_WPA3_ENT instead')
  static const DOT11_AUTH_ALGO_WPA3_ENT = 11;
  @Deprecated('Use DOT11_AUTH_ALGO_IHV_START instead')
  static const DOT11_AUTH_ALGO_IHV_START = DOT11_AUTH_ALGORITHM(-2147483648);
  @Deprecated('Use DOT11_AUTH_ALGO_IHV_END instead')
  static const DOT11_AUTH_ALGO_IHV_END = DOT11_AUTH_ALGORITHM(-1);
}

/// Defines a basic service set (BSS) network type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-bss-type>.
///
/// {@category enum}
extension type const DOT11_BSS_TYPE(int _) implements int {
  @Deprecated('Use dot11_BSS_type_infrastructure instead')
  static const dot11_BSS_type_infrastructure = 1;
  @Deprecated('Use dot11_BSS_type_independent instead')
  static const dot11_BSS_type_independent = 2;
  @Deprecated('Use dot11_BSS_type_any instead')
  static const dot11_BSS_type_any = 3;
}

/// Defines a cipher algorithm for data encryption and decryption.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-cipher-algorithm>.
///
/// {@category enum}
extension type const DOT11_CIPHER_ALGORITHM(int _) implements int {
  @Deprecated('Use DOT11_CIPHER_ALGO_NONE instead')
  static const DOT11_CIPHER_ALGO_NONE = 0;
  @Deprecated('Use DOT11_CIPHER_ALGO_WEP40 instead')
  static const DOT11_CIPHER_ALGO_WEP40 = 1;
  @Deprecated('Use DOT11_CIPHER_ALGO_TKIP instead')
  static const DOT11_CIPHER_ALGO_TKIP = 2;
  @Deprecated('Use DOT11_CIPHER_ALGO_CCMP instead')
  static const DOT11_CIPHER_ALGO_CCMP = 4;
  @Deprecated('Use DOT11_CIPHER_ALGO_WEP104 instead')
  static const DOT11_CIPHER_ALGO_WEP104 = 5;
  @Deprecated('Use DOT11_CIPHER_ALGO_BIP instead')
  static const DOT11_CIPHER_ALGO_BIP = 6;
  @Deprecated('Use DOT11_CIPHER_ALGO_GCMP instead')
  static const DOT11_CIPHER_ALGO_GCMP = 8;
  @Deprecated('Use DOT11_CIPHER_ALGO_GCMP_256 instead')
  static const DOT11_CIPHER_ALGO_GCMP_256 = 9;
  @Deprecated('Use DOT11_CIPHER_ALGO_CCMP_256 instead')
  static const DOT11_CIPHER_ALGO_CCMP_256 = 10;
  @Deprecated('Use DOT11_CIPHER_ALGO_BIP_GMAC_128 instead')
  static const DOT11_CIPHER_ALGO_BIP_GMAC_128 = 11;
  @Deprecated('Use DOT11_CIPHER_ALGO_BIP_GMAC_256 instead')
  static const DOT11_CIPHER_ALGO_BIP_GMAC_256 = 12;
  @Deprecated('Use DOT11_CIPHER_ALGO_BIP_CMAC_256 instead')
  static const DOT11_CIPHER_ALGO_BIP_CMAC_256 = 13;
  @Deprecated('Use DOT11_CIPHER_ALGO_WPA_USE_GROUP instead')
  static const DOT11_CIPHER_ALGO_WPA_USE_GROUP = 256;
  @Deprecated('Use DOT11_CIPHER_ALGO_RSN_USE_GROUP instead')
  static const DOT11_CIPHER_ALGO_RSN_USE_GROUP = 256;
  @Deprecated('Use DOT11_CIPHER_ALGO_WEP instead')
  static const DOT11_CIPHER_ALGO_WEP = 257;
  @Deprecated('Use DOT11_CIPHER_ALGO_IHV_START instead')
  static const DOT11_CIPHER_ALGO_IHV_START = DOT11_CIPHER_ALGORITHM(
    -2147483648,
  );
  @Deprecated('Use DOT11_CIPHER_ALGO_IHV_END instead')
  static const DOT11_CIPHER_ALGO_IHV_END = DOT11_CIPHER_ALGORITHM(-1);
}

/// Defines an 802.11 PHY and media type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-phy-type>.
///
/// {@category enum}
extension type const DOT11_PHY_TYPE(int _) implements int {
  @Deprecated('Use dot11_phy_type_unknown instead')
  static const dot11_phy_type_unknown = 0;
  @Deprecated('Use dot11_phy_type_any instead')
  static const dot11_phy_type_any = 0;
  @Deprecated('Use dot11_phy_type_fhss instead')
  static const dot11_phy_type_fhss = 1;
  @Deprecated('Use dot11_phy_type_dsss instead')
  static const dot11_phy_type_dsss = 2;
  @Deprecated('Use dot11_phy_type_irbaseband instead')
  static const dot11_phy_type_irbaseband = 3;
  @Deprecated('Use dot11_phy_type_ofdm instead')
  static const dot11_phy_type_ofdm = 4;
  @Deprecated('Use dot11_phy_type_hrdsss instead')
  static const dot11_phy_type_hrdsss = 5;
  @Deprecated('Use dot11_phy_type_erp instead')
  static const dot11_phy_type_erp = 6;
  @Deprecated('Use dot11_phy_type_ht instead')
  static const dot11_phy_type_ht = 7;
  @Deprecated('Use dot11_phy_type_vht instead')
  static const dot11_phy_type_vht = 8;
  @Deprecated('Use dot11_phy_type_dmg instead')
  static const dot11_phy_type_dmg = 9;
  @Deprecated('Use dot11_phy_type_he instead')
  static const dot11_phy_type_he = 10;
  @Deprecated('Use dot11_phy_type_eht instead')
  static const dot11_phy_type_eht = 11;
  @Deprecated('Use dot11_phy_type_IHV_start instead')
  static const dot11_phy_type_IHV_start = DOT11_PHY_TYPE(-2147483648);
  @Deprecated('Use dot11_phy_type_IHV_end instead')
  static const dot11_phy_type_IHV_end = DOT11_PHY_TYPE(-1);
}

/// Specifies an 802.11 radio state.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-dot11_radio_state~r1>.
///
/// {@category enum}
extension type const DOT11_RADIO_STATE(int _) implements int {
  /// The radio state is unknown.
  @Deprecated('Use dot11_radio_state_unknown instead')
  static const dot11_radio_state_unknown = 0;

  /// The radio is on.
  @Deprecated('Use dot11_radio_state_on instead')
  static const dot11_radio_state_on = 1;

  /// The radio is off.
  @Deprecated('Use dot11_radio_state_off instead')
  static const dot11_radio_state_off = 2;
}

/// {@category enum}
extension type const DRAWEDGE_FLAGS(int _) implements int {
  @Deprecated('Use BDR_RAISEDOUTER instead')
  static const BDR_RAISEDOUTER = 1;
  @Deprecated('Use BDR_SUNKENOUTER instead')
  static const BDR_SUNKENOUTER = 2;
  @Deprecated('Use BDR_RAISEDINNER instead')
  static const BDR_RAISEDINNER = 4;
  @Deprecated('Use BDR_SUNKENINNER instead')
  static const BDR_SUNKENINNER = 8;
  @Deprecated('Use BDR_OUTER instead')
  static const BDR_OUTER = 3;
  @Deprecated('Use BDR_INNER instead')
  static const BDR_INNER = 12;
  @Deprecated('Use BDR_RAISED instead')
  static const BDR_RAISED = 5;
  @Deprecated('Use BDR_SUNKEN instead')
  static const BDR_SUNKEN = 10;
  @Deprecated('Use EDGE_RAISED instead')
  static const EDGE_RAISED = 5;
  @Deprecated('Use EDGE_SUNKEN instead')
  static const EDGE_SUNKEN = 10;
  @Deprecated('Use EDGE_ETCHED instead')
  static const EDGE_ETCHED = 6;
  @Deprecated('Use EDGE_BUMP instead')
  static const EDGE_BUMP = 9;
}

/// {@category enum}
extension type const DRAWSTATE_FLAGS(int _) implements int {
  @Deprecated('Use DST_COMPLEX instead')
  static const DST_COMPLEX = 0;
  @Deprecated('Use DST_TEXT instead')
  static const DST_TEXT = 1;
  @Deprecated('Use DST_PREFIXTEXT instead')
  static const DST_PREFIXTEXT = 2;
  @Deprecated('Use DST_ICON instead')
  static const DST_ICON = 3;
  @Deprecated('Use DST_BITMAP instead')
  static const DST_BITMAP = 4;
  @Deprecated('Use DSS_NORMAL instead')
  static const DSS_NORMAL = 0;
  @Deprecated('Use DSS_UNION instead')
  static const DSS_UNION = 16;
  @Deprecated('Use DSS_DISABLED instead')
  static const DSS_DISABLED = 32;
  @Deprecated('Use DSS_MONO instead')
  static const DSS_MONO = 128;
  @Deprecated('Use DSS_HIDEPREFIX instead')
  static const DSS_HIDEPREFIX = 512;
  @Deprecated('Use DSS_PREFIXONLY instead')
  static const DSS_PREFIXONLY = 1024;
  @Deprecated('Use DSS_RIGHT instead')
  static const DSS_RIGHT = 32768;
}

/// {@category enum}
extension type const DRAW_CAPTION_FLAGS(int _) implements int {
  @Deprecated('Use DC_ACTIVE instead')
  static const DC_ACTIVE = 1;
  @Deprecated('Use DC_BUTTONS instead')
  static const DC_BUTTONS = 4096;
  @Deprecated('Use DC_GRADIENT instead')
  static const DC_GRADIENT = 32;
  @Deprecated('Use DC_ICON instead')
  static const DC_ICON = 4;
  @Deprecated('Use DC_INBUTTON instead')
  static const DC_INBUTTON = 16;
  @Deprecated('Use DC_SMALLCAP instead')
  static const DC_SMALLCAP = 2;
  @Deprecated('Use DC_TEXT instead')
  static const DC_TEXT = 8;
}

/// {@category enum}
extension type const DRAW_EDGE_FLAGS(int _) implements int {
  @Deprecated('Use BF_ADJUST instead')
  static const BF_ADJUST = 8192;
  @Deprecated('Use BF_BOTTOM instead')
  static const BF_BOTTOM = 8;
  @Deprecated('Use BF_BOTTOMLEFT instead')
  static const BF_BOTTOMLEFT = 9;
  @Deprecated('Use BF_BOTTOMRIGHT instead')
  static const BF_BOTTOMRIGHT = 12;
  @Deprecated('Use BF_DIAGONAL instead')
  static const BF_DIAGONAL = 16;
  @Deprecated('Use BF_DIAGONAL_ENDBOTTOMLEFT instead')
  static const BF_DIAGONAL_ENDBOTTOMLEFT = 25;
  @Deprecated('Use BF_DIAGONAL_ENDBOTTOMRIGHT instead')
  static const BF_DIAGONAL_ENDBOTTOMRIGHT = 28;
  @Deprecated('Use BF_DIAGONAL_ENDTOPLEFT instead')
  static const BF_DIAGONAL_ENDTOPLEFT = 19;
  @Deprecated('Use BF_DIAGONAL_ENDTOPRIGHT instead')
  static const BF_DIAGONAL_ENDTOPRIGHT = 22;
  @Deprecated('Use BF_FLAT instead')
  static const BF_FLAT = 16384;
  @Deprecated('Use BF_LEFT instead')
  static const BF_LEFT = 1;
  @Deprecated('Use BF_MIDDLE instead')
  static const BF_MIDDLE = 2048;
  @Deprecated('Use BF_MONO instead')
  static const BF_MONO = 32768;
  @Deprecated('Use BF_RECT instead')
  static const BF_RECT = 15;
  @Deprecated('Use BF_RIGHT instead')
  static const BF_RIGHT = 4;
  @Deprecated('Use BF_SOFT instead')
  static const BF_SOFT = 4096;
  @Deprecated('Use BF_TOP instead')
  static const BF_TOP = 2;
  @Deprecated('Use BF_TOPLEFT instead')
  static const BF_TOPLEFT = 3;
  @Deprecated('Use BF_TOPRIGHT instead')
  static const BF_TOPRIGHT = 6;
}

/// {@category enum}
extension type const DRAW_TEXT_FORMAT(int _) implements int {
  @Deprecated('Use DT_BOTTOM instead')
  static const DT_BOTTOM = 8;
  @Deprecated('Use DT_CALCRECT instead')
  static const DT_CALCRECT = 1024;
  @Deprecated('Use DT_CENTER instead')
  static const DT_CENTER = 1;
  @Deprecated('Use DT_EDITCONTROL instead')
  static const DT_EDITCONTROL = 8192;
  @Deprecated('Use DT_END_ELLIPSIS instead')
  static const DT_END_ELLIPSIS = 32768;
  @Deprecated('Use DT_EXPANDTABS instead')
  static const DT_EXPANDTABS = 64;
  @Deprecated('Use DT_EXTERNALLEADING instead')
  static const DT_EXTERNALLEADING = 512;
  @Deprecated('Use DT_HIDEPREFIX instead')
  static const DT_HIDEPREFIX = 1048576;
  @Deprecated('Use DT_INTERNAL instead')
  static const DT_INTERNAL = 4096;
  @Deprecated('Use DT_LEFT instead')
  static const DT_LEFT = 0;
  @Deprecated('Use DT_MODIFYSTRING instead')
  static const DT_MODIFYSTRING = 65536;
  @Deprecated('Use DT_NOCLIP instead')
  static const DT_NOCLIP = 256;
  @Deprecated('Use DT_NOFULLWIDTHCHARBREAK instead')
  static const DT_NOFULLWIDTHCHARBREAK = 524288;
  @Deprecated('Use DT_NOPREFIX instead')
  static const DT_NOPREFIX = 2048;
  @Deprecated('Use DT_PATH_ELLIPSIS instead')
  static const DT_PATH_ELLIPSIS = 16384;
  @Deprecated('Use DT_PREFIXONLY instead')
  static const DT_PREFIXONLY = 2097152;
  @Deprecated('Use DT_RIGHT instead')
  static const DT_RIGHT = 2;
  @Deprecated('Use DT_RTLREADING instead')
  static const DT_RTLREADING = 131072;
  @Deprecated('Use DT_SINGLELINE instead')
  static const DT_SINGLELINE = 32;
  @Deprecated('Use DT_TABSTOP instead')
  static const DT_TABSTOP = 128;
  @Deprecated('Use DT_TOP instead')
  static const DT_TOP = 0;
  @Deprecated('Use DT_VCENTER instead')
  static const DT_VCENTER = 4;
  @Deprecated('Use DT_WORDBREAK instead')
  static const DT_WORDBREAK = 16;
  @Deprecated('Use DT_WORD_ELLIPSIS instead')
  static const DT_WORD_ELLIPSIS = 262144;
}

/// {@category enum}
extension type const DRAW_THEME_PARENT_BACKGROUND_FLAGS(int _) implements int {
  @Deprecated('Use DTPB_WINDOWDC instead')
  static const DTPB_WINDOWDC = 1;
  @Deprecated('Use DTPB_USECTLCOLORSTATIC instead')
  static const DTPB_USECTLCOLORSTATIC = 2;
  @Deprecated('Use DTPB_USEERASEBKGND instead')
  static const DTPB_USEERASEBKGND = 4;
}

/// Specifies the possible ways that a device can be joined to Microsoft Azure
/// Active Directory.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/ne-lmjoin-dsreg_join_type>.
///
/// {@category enum}
extension type const DSREG_JOIN_TYPE(int _) implements int {
  /// The type of join is not known.
  @Deprecated('Use DSREG_UNKNOWN_JOIN instead')
  static const DSREG_UNKNOWN_JOIN = 0;

  /// The device is joined to Azure Active Directory (Azure AD).
  @Deprecated('Use DSREG_DEVICE_JOIN instead')
  static const DSREG_DEVICE_JOIN = 1;

  /// The device is registered to Azure Active Directory (Azure AD), meaning an
  /// Azure AD work account is added on the device.
  @Deprecated('Use DSREG_WORKPLACE_JOIN instead')
  static const DSREG_WORKPLACE_JOIN = 2;
}

/// {@category enum}
extension type const DTTOPTS_FLAGS(int _) implements int {
  @Deprecated('Use DTT_TEXTCOLOR instead')
  static const DTT_TEXTCOLOR = 1;
  @Deprecated('Use DTT_BORDERCOLOR instead')
  static const DTT_BORDERCOLOR = 2;
  @Deprecated('Use DTT_SHADOWCOLOR instead')
  static const DTT_SHADOWCOLOR = 4;
  @Deprecated('Use DTT_SHADOWTYPE instead')
  static const DTT_SHADOWTYPE = 8;
  @Deprecated('Use DTT_SHADOWOFFSET instead')
  static const DTT_SHADOWOFFSET = 16;
  @Deprecated('Use DTT_BORDERSIZE instead')
  static const DTT_BORDERSIZE = 32;
  @Deprecated('Use DTT_FONTPROP instead')
  static const DTT_FONTPROP = 64;
  @Deprecated('Use DTT_COLORPROP instead')
  static const DTT_COLORPROP = 128;
  @Deprecated('Use DTT_STATEID instead')
  static const DTT_STATEID = 256;
  @Deprecated('Use DTT_CALCRECT instead')
  static const DTT_CALCRECT = 512;
  @Deprecated('Use DTT_APPLYOVERLAY instead')
  static const DTT_APPLYOVERLAY = 1024;
  @Deprecated('Use DTT_GLOWSIZE instead')
  static const DTT_GLOWSIZE = 2048;
  @Deprecated('Use DTT_CALLBACK instead')
  static const DTT_CALLBACK = 4096;
  @Deprecated('Use DTT_COMPOSITED instead')
  static const DTT_COMPOSITED = 8192;
  @Deprecated('Use DTT_VALIDBITS instead')
  static const DTT_VALIDBITS = 12287;
}

/// {@category enum}
extension type const DUPLICATE_HANDLE_OPTIONS(int _) implements int {
  @Deprecated('Use DUPLICATE_CLOSE_SOURCE instead')
  static const DUPLICATE_CLOSE_SOURCE = 1;
  @Deprecated('Use DUPLICATE_SAME_ACCESS instead')
  static const DUPLICATE_SAME_ACCESS = 2;
}

/// Specifies the input operations for which visual feedback should be provided.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ne-dwmapi-dwm_showcontact>.
///
/// {@category enum}
extension type const DWM_SHOWCONTACT(int _) implements int {
  /// Down.
  @Deprecated('Use DWMSC_DOWN instead')
  static const DWMSC_DOWN = 1;

  /// Up.
  @Deprecated('Use DWMSC_UP instead')
  static const DWMSC_UP = 2;

  /// Drag.
  @Deprecated('Use DWMSC_DRAG instead')
  static const DWMSC_DRAG = 4;

  /// Hold.
  @Deprecated('Use DWMSC_HOLD instead')
  static const DWMSC_HOLD = 8;

  /// Pen barrel.
  @Deprecated('Use DWMSC_PENBARREL instead')
  static const DWMSC_PENBARREL = 16;

  /// None.
  @Deprecated('Use DWMSC_NONE instead')
  static const DWMSC_NONE = 0;

  /// All.
  @Deprecated('Use DWMSC_ALL instead')
  static const DWMSC_ALL = 4294967295;
}

/// Contains values that specify the location of a docking window represented by
/// the Dock control pattern.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-dockposition>.
///
/// {@category enum}
extension type const DockPosition(int _) implements int {
  /// The window is docked at the top.
  @Deprecated('Use DockPosition_Top instead')
  static const DockPosition_Top = 0;

  /// The window is docked at the left.
  @Deprecated('Use DockPosition_Left instead')
  static const DockPosition_Left = 1;

  /// The window is docked at the bottom.
  @Deprecated('Use DockPosition_Bottom instead')
  static const DockPosition_Bottom = 2;

  /// The window is docked at the right.
  @Deprecated('Use DockPosition_Right instead')
  static const DockPosition_Right = 3;

  /// The window is docked on all four sides.
  @Deprecated('Use DockPosition_Fill instead')
  static const DockPosition_Fill = 4;

  /// The window is not docked.
  @Deprecated('Use DockPosition_None instead')
  static const DockPosition_None = 5;
}

/// Defines constants that indicate the direction in which audio data flows
/// between an audio endpoint device and an application.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-edataflow>.
///
/// {@category enum}
extension type const EDataFlow(int _) implements int {
  /// Audio rendering stream.
  @Deprecated('Use eRender instead')
  static const eRender = 0;

  /// Audio capture stream.
  @Deprecated('Use eCapture instead')
  static const eCapture = 1;

  /// Audio rendering or capture stream.
  @Deprecated('Use eAll instead')
  static const eAll = 2;

  /// The number of members in the <a
  /// href="https://docs.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-edataflow">EDataFlow</a>
  /// enumeration (not counting the EDataFlow_enum_count member).
  @Deprecated('Use EDataFlow_enum_count instead')
  static const EDataFlow_enum_count = 3;
}

/// {@category enum}
extension type const ENABLE_SCROLL_BAR_ARROWS(int _) implements int {
  @Deprecated('Use ESB_DISABLE_BOTH instead')
  static const ESB_DISABLE_BOTH = 3;
  @Deprecated('Use ESB_DISABLE_DOWN instead')
  static const ESB_DISABLE_DOWN = 2;
  @Deprecated('Use ESB_DISABLE_LEFT instead')
  static const ESB_DISABLE_LEFT = 1;
  @Deprecated('Use ESB_DISABLE_LTUP instead')
  static const ESB_DISABLE_LTUP = 1;
  @Deprecated('Use ESB_DISABLE_RIGHT instead')
  static const ESB_DISABLE_RIGHT = 2;
  @Deprecated('Use ESB_DISABLE_RTDN instead')
  static const ESB_DISABLE_RTDN = 2;
  @Deprecated('Use ESB_DISABLE_UP instead')
  static const ESB_DISABLE_UP = 1;
  @Deprecated('Use ESB_ENABLE_BOTH instead')
  static const ESB_ENABLE_BOTH = 0;
}

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_FLAGS(int _) implements int {
  @Deprecated('Use EDS_RAWMODE instead')
  static const EDS_RAWMODE = 2;
  @Deprecated('Use EDS_ROTATEDMODE instead')
  static const EDS_ROTATEDMODE = 4;
}

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_MODE(int _) implements int {
  @Deprecated('Use ENUM_CURRENT_SETTINGS instead')
  static const ENUM_CURRENT_SETTINGS = 4294967295;
  @Deprecated('Use ENUM_REGISTRY_SETTINGS instead')
  static const ENUM_REGISTRY_SETTINGS = 4294967294;
}

/// {@category enum}
extension type const ENUM_PROCESS_MODULES_EX_FLAGS(int _) implements int {
  @Deprecated('Use LIST_MODULES_ALL instead')
  static const LIST_MODULES_ALL = 3;
  @Deprecated('Use LIST_MODULES_DEFAULT instead')
  static const LIST_MODULES_DEFAULT = 0;
  @Deprecated('Use LIST_MODULES_32BIT instead')
  static const LIST_MODULES_32BIT = 1;
  @Deprecated('Use LIST_MODULES_64BIT instead')
  static const LIST_MODULES_64BIT = 2;
}

/// {@category enum}
extension type const ENUM_SERVICE_STATE(int _) implements int {
  @Deprecated('Use SERVICE_ACTIVE instead')
  static const SERVICE_ACTIVE = 1;
  @Deprecated('Use SERVICE_INACTIVE instead')
  static const SERVICE_INACTIVE = 2;
  @Deprecated('Use SERVICE_STATE_ALL instead')
  static const SERVICE_STATE_ALL = 3;
}

/// {@category enum}
extension type const ENUM_SERVICE_TYPE(int _) implements int {
  @Deprecated('Use SERVICE_DRIVER instead')
  static const SERVICE_DRIVER = 11;
  @Deprecated('Use SERVICE_KERNEL_DRIVER instead')
  static const SERVICE_KERNEL_DRIVER = 1;
  @Deprecated('Use SERVICE_WIN32 instead')
  static const SERVICE_WIN32 = 48;
  @Deprecated('Use SERVICE_WIN32_SHARE_PROCESS instead')
  static const SERVICE_WIN32_SHARE_PROCESS = 32;
  @Deprecated('Use SERVICE_ADAPTER instead')
  static const SERVICE_ADAPTER = 4;
  @Deprecated('Use SERVICE_FILE_SYSTEM_DRIVER instead')
  static const SERVICE_FILE_SYSTEM_DRIVER = 2;
  @Deprecated('Use SERVICE_RECOGNIZER_DRIVER instead')
  static const SERVICE_RECOGNIZER_DRIVER = 8;
  @Deprecated('Use SERVICE_WIN32_OWN_PROCESS instead')
  static const SERVICE_WIN32_OWN_PROCESS = 16;
  @Deprecated('Use SERVICE_USER_OWN_PROCESS instead')
  static const SERVICE_USER_OWN_PROCESS = 80;
  @Deprecated('Use SERVICE_USER_SHARE_PROCESS instead')
  static const SERVICE_USER_SHARE_PROCESS = 96;
}

/// Specifies whether an XPS print job is in the spooling or the rendering
/// phase.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/printdocs/eprintxpsjoboperation>.
///
/// {@category enum}
extension type const EPrintXPSJobOperation(int _) implements int {
  @Deprecated('Use kJobProduction instead')
  static const kJobProduction = 1;
  @Deprecated('Use kJobConsumption instead')
  static const kJobConsumption = 2;
}

/// Specifies what the spooler is currently doing as it processes an XPS print
/// job.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/printdocs/eprintxpsjobprogress>.
///
/// {@category enum}
extension type const EPrintXPSJobProgress(int _) implements int {
  @Deprecated('Use kAddingDocumentSequence instead')
  static const kAddingDocumentSequence = 0;
  @Deprecated('Use kDocumentSequenceAdded instead')
  static const kDocumentSequenceAdded = 1;
  @Deprecated('Use kAddingFixedDocument instead')
  static const kAddingFixedDocument = 2;
  @Deprecated('Use kFixedDocumentAdded instead')
  static const kFixedDocumentAdded = 3;
  @Deprecated('Use kAddingFixedPage instead')
  static const kAddingFixedPage = 4;
  @Deprecated('Use kFixedPageAdded instead')
  static const kFixedPageAdded = 5;
  @Deprecated('Use kResourceAdded instead')
  static const kResourceAdded = 6;
  @Deprecated('Use kFontAdded instead')
  static const kFontAdded = 7;
  @Deprecated('Use kImageAdded instead')
  static const kImageAdded = 8;
  @Deprecated('Use kXpsDocumentCommitted instead')
  static const kXpsDocumentCommitted = 9;
}

/// Defines constants that indicate the role that the system has assigned to an
/// audio endpoint device.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-erole>.
///
/// {@category enum}
extension type const ERole(int _) implements int {
  /// Games, system notification sounds, and voice commands.
  @Deprecated('Use eConsole instead')
  static const eConsole = 0;

  /// Music, movies, narration, and live music recording.
  @Deprecated('Use eMultimedia instead')
  static const eMultimedia = 1;

  /// Voice communications (talking to another person).
  @Deprecated('Use eCommunications instead')
  static const eCommunications = 2;

  /// The number of members in the <a
  /// href="https://docs.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-erole">ERole</a>
  /// enumeration (not counting the ERole_enum_count member).
  @Deprecated('Use ERole_enum_count instead')
  static const ERole_enum_count = 3;
}

/// {@category enum}
extension type const ESCAPE_COMM_FUNCTION(int _) implements int {
  @Deprecated('Use CLRBREAK instead')
  static const CLRBREAK = 9;
  @Deprecated('Use CLRDTR instead')
  static const CLRDTR = 6;
  @Deprecated('Use CLRRTS instead')
  static const CLRRTS = 4;
  @Deprecated('Use SETBREAK instead')
  static const SETBREAK = 8;
  @Deprecated('Use SETDTR instead')
  static const SETDTR = 5;
  @Deprecated('Use SETRTS instead')
  static const SETRTS = 3;
  @Deprecated('Use SETXOFF instead')
  static const SETXOFF = 1;
  @Deprecated('Use SETXON instead')
  static const SETXON = 2;
}

/// {@category enum}
extension type const ETO_OPTIONS(int _) implements int {
  @Deprecated('Use ETO_OPAQUE instead')
  static const ETO_OPAQUE = 2;
  @Deprecated('Use ETO_CLIPPED instead')
  static const ETO_CLIPPED = 4;
  @Deprecated('Use ETO_GLYPH_INDEX instead')
  static const ETO_GLYPH_INDEX = 16;
  @Deprecated('Use ETO_RTLREADING instead')
  static const ETO_RTLREADING = 128;
  @Deprecated('Use ETO_NUMERICSLOCAL instead')
  static const ETO_NUMERICSLOCAL = 1024;
  @Deprecated('Use ETO_NUMERICSLATIN instead')
  static const ETO_NUMERICSLATIN = 2048;
  @Deprecated('Use ETO_IGNORELANGUAGE instead')
  static const ETO_IGNORELANGUAGE = 4096;
  @Deprecated('Use ETO_PDY instead')
  static const ETO_PDY = 8192;
  @Deprecated('Use ETO_REVERSE_INDEX_MAP instead')
  static const ETO_REVERSE_INDEX_MAP = 65536;
}

/// {@category enum}
extension type const EXECUTION_STATE(int _) implements int {
  @Deprecated('Use ES_AWAYMODE_REQUIRED instead')
  static const ES_AWAYMODE_REQUIRED = 64;
  @Deprecated('Use ES_CONTINUOUS instead')
  static const ES_CONTINUOUS = 2147483648;
  @Deprecated('Use ES_DISPLAY_REQUIRED instead')
  static const ES_DISPLAY_REQUIRED = 2;
  @Deprecated('Use ES_SYSTEM_REQUIRED instead')
  static const ES_SYSTEM_REQUIRED = 1;
  @Deprecated('Use ES_USER_PRESENT instead')
  static const ES_USER_PRESENT = 4;
}

/// Contains values that specify the state of a UI element that can be expanded
/// and collapsed.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-expandcollapsestate>.
///
/// {@category enum}
extension type const ExpandCollapseState(int _) implements int {
  /// No children are visible.
  @Deprecated('Use ExpandCollapseState_Collapsed instead')
  static const ExpandCollapseState_Collapsed = 0;

  /// All children are visible.
  @Deprecated('Use ExpandCollapseState_Expanded instead')
  static const ExpandCollapseState_Expanded = 1;

  /// Some, but not all, children are visible.
  @Deprecated('Use ExpandCollapseState_PartiallyExpanded instead')
  static const ExpandCollapseState_PartiallyExpanded = 2;

  /// The element does not expand or collapse.
  @Deprecated('Use ExpandCollapseState_LeafNode instead')
  static const ExpandCollapseState_LeafNode = 3;
}

/// {@category enum}
extension type const FACILITY_CODE(int _) implements int {
  @Deprecated('Use FACILITY_NULL instead')
  static const FACILITY_NULL = 0;
  @Deprecated('Use FACILITY_RPC instead')
  static const FACILITY_RPC = 1;
  @Deprecated('Use FACILITY_DISPATCH instead')
  static const FACILITY_DISPATCH = 2;
  @Deprecated('Use FACILITY_STORAGE instead')
  static const FACILITY_STORAGE = 3;
  @Deprecated('Use FACILITY_ITF instead')
  static const FACILITY_ITF = 4;
  @Deprecated('Use FACILITY_WIN32 instead')
  static const FACILITY_WIN32 = 7;
  @Deprecated('Use FACILITY_WINDOWS instead')
  static const FACILITY_WINDOWS = 8;
  @Deprecated('Use FACILITY_SSPI instead')
  static const FACILITY_SSPI = 9;
  @Deprecated('Use FACILITY_SECURITY instead')
  static const FACILITY_SECURITY = 9;
  @Deprecated('Use FACILITY_CONTROL instead')
  static const FACILITY_CONTROL = 10;
  @Deprecated('Use FACILITY_CERT instead')
  static const FACILITY_CERT = 11;
  @Deprecated('Use FACILITY_INTERNET instead')
  static const FACILITY_INTERNET = 12;
  @Deprecated('Use FACILITY_MEDIASERVER instead')
  static const FACILITY_MEDIASERVER = 13;
  @Deprecated('Use FACILITY_MSMQ instead')
  static const FACILITY_MSMQ = 14;
  @Deprecated('Use FACILITY_SETUPAPI instead')
  static const FACILITY_SETUPAPI = 15;
  @Deprecated('Use FACILITY_SCARD instead')
  static const FACILITY_SCARD = 16;
  @Deprecated('Use FACILITY_COMPLUS instead')
  static const FACILITY_COMPLUS = 17;
  @Deprecated('Use FACILITY_AAF instead')
  static const FACILITY_AAF = 18;
  @Deprecated('Use FACILITY_URT instead')
  static const FACILITY_URT = 19;
  @Deprecated('Use FACILITY_ACS instead')
  static const FACILITY_ACS = 20;
  @Deprecated('Use FACILITY_DPLAY instead')
  static const FACILITY_DPLAY = 21;
  @Deprecated('Use FACILITY_UMI instead')
  static const FACILITY_UMI = 22;
  @Deprecated('Use FACILITY_SXS instead')
  static const FACILITY_SXS = 23;
  @Deprecated('Use FACILITY_WINDOWS_CE instead')
  static const FACILITY_WINDOWS_CE = 24;
  @Deprecated('Use FACILITY_HTTP instead')
  static const FACILITY_HTTP = 25;
  @Deprecated('Use FACILITY_USERMODE_COMMONLOG instead')
  static const FACILITY_USERMODE_COMMONLOG = 26;
  @Deprecated('Use FACILITY_WER instead')
  static const FACILITY_WER = 27;
  @Deprecated('Use FACILITY_USERMODE_FILTER_MANAGER instead')
  static const FACILITY_USERMODE_FILTER_MANAGER = 31;
  @Deprecated('Use FACILITY_BACKGROUNDCOPY instead')
  static const FACILITY_BACKGROUNDCOPY = 32;
  @Deprecated('Use FACILITY_CONFIGURATION instead')
  static const FACILITY_CONFIGURATION = 33;
  @Deprecated('Use FACILITY_WIA instead')
  static const FACILITY_WIA = 33;
  @Deprecated('Use FACILITY_STATE_MANAGEMENT instead')
  static const FACILITY_STATE_MANAGEMENT = 34;
  @Deprecated('Use FACILITY_METADIRECTORY instead')
  static const FACILITY_METADIRECTORY = 35;
  @Deprecated('Use FACILITY_WINDOWSUPDATE instead')
  static const FACILITY_WINDOWSUPDATE = 36;
  @Deprecated('Use FACILITY_DIRECTORYSERVICE instead')
  static const FACILITY_DIRECTORYSERVICE = 37;
  @Deprecated('Use FACILITY_GRAPHICS instead')
  static const FACILITY_GRAPHICS = 38;
  @Deprecated('Use FACILITY_SHELL instead')
  static const FACILITY_SHELL = 39;
  @Deprecated('Use FACILITY_NAP instead')
  static const FACILITY_NAP = 39;
  @Deprecated('Use FACILITY_TPM_SERVICES instead')
  static const FACILITY_TPM_SERVICES = 40;
  @Deprecated('Use FACILITY_TPM_SOFTWARE instead')
  static const FACILITY_TPM_SOFTWARE = 41;
  @Deprecated('Use FACILITY_UI instead')
  static const FACILITY_UI = 42;
  @Deprecated('Use FACILITY_XAML instead')
  static const FACILITY_XAML = 43;
  @Deprecated('Use FACILITY_ACTION_QUEUE instead')
  static const FACILITY_ACTION_QUEUE = 44;
  @Deprecated('Use FACILITY_PLA instead')
  static const FACILITY_PLA = 48;
  @Deprecated('Use FACILITY_WINDOWS_SETUP instead')
  static const FACILITY_WINDOWS_SETUP = 48;
  @Deprecated('Use FACILITY_FVE instead')
  static const FACILITY_FVE = 49;
  @Deprecated('Use FACILITY_FWP instead')
  static const FACILITY_FWP = 50;
  @Deprecated('Use FACILITY_WINRM instead')
  static const FACILITY_WINRM = 51;
  @Deprecated('Use FACILITY_NDIS instead')
  static const FACILITY_NDIS = 52;
  @Deprecated('Use FACILITY_USERMODE_HYPERVISOR instead')
  static const FACILITY_USERMODE_HYPERVISOR = 53;
  @Deprecated('Use FACILITY_CMI instead')
  static const FACILITY_CMI = 54;
  @Deprecated('Use FACILITY_USERMODE_VIRTUALIZATION instead')
  static const FACILITY_USERMODE_VIRTUALIZATION = 55;
  @Deprecated('Use FACILITY_USERMODE_VOLMGR instead')
  static const FACILITY_USERMODE_VOLMGR = 56;
  @Deprecated('Use FACILITY_BCD instead')
  static const FACILITY_BCD = 57;
  @Deprecated('Use FACILITY_USERMODE_VHD instead')
  static const FACILITY_USERMODE_VHD = 58;
  @Deprecated('Use FACILITY_USERMODE_HNS instead')
  static const FACILITY_USERMODE_HNS = 59;
  @Deprecated('Use FACILITY_SDIAG instead')
  static const FACILITY_SDIAG = 60;
  @Deprecated('Use FACILITY_WEBSERVICES instead')
  static const FACILITY_WEBSERVICES = 61;
  @Deprecated('Use FACILITY_WINPE instead')
  static const FACILITY_WINPE = 61;
  @Deprecated('Use FACILITY_WPN instead')
  static const FACILITY_WPN = 62;
  @Deprecated('Use FACILITY_WINDOWS_STORE instead')
  static const FACILITY_WINDOWS_STORE = 63;
  @Deprecated('Use FACILITY_INPUT instead')
  static const FACILITY_INPUT = 64;
  @Deprecated('Use FACILITY_QUIC instead')
  static const FACILITY_QUIC = 65;
  @Deprecated('Use FACILITY_EAP instead')
  static const FACILITY_EAP = 66;
  @Deprecated('Use FACILITY_IORING instead')
  static const FACILITY_IORING = 70;
  @Deprecated('Use FACILITY_WINDOWS_DEFENDER instead')
  static const FACILITY_WINDOWS_DEFENDER = 80;
  @Deprecated('Use FACILITY_OPC instead')
  static const FACILITY_OPC = 81;
  @Deprecated('Use FACILITY_XPS instead')
  static const FACILITY_XPS = 82;
  @Deprecated('Use FACILITY_MBN instead')
  static const FACILITY_MBN = 84;
  @Deprecated('Use FACILITY_POWERSHELL instead')
  static const FACILITY_POWERSHELL = 84;
  @Deprecated('Use FACILITY_RAS instead')
  static const FACILITY_RAS = 83;
  @Deprecated('Use FACILITY_P2P_INT instead')
  static const FACILITY_P2P_INT = 98;
  @Deprecated('Use FACILITY_P2P instead')
  static const FACILITY_P2P = 99;
  @Deprecated('Use FACILITY_DAF instead')
  static const FACILITY_DAF = 100;
  @Deprecated('Use FACILITY_BLUETOOTH_ATT instead')
  static const FACILITY_BLUETOOTH_ATT = 101;
  @Deprecated('Use FACILITY_AUDIO instead')
  static const FACILITY_AUDIO = 102;
  @Deprecated('Use FACILITY_STATEREPOSITORY instead')
  static const FACILITY_STATEREPOSITORY = 103;
  @Deprecated('Use FACILITY_VISUALCPP instead')
  static const FACILITY_VISUALCPP = 109;
  @Deprecated('Use FACILITY_SCRIPT instead')
  static const FACILITY_SCRIPT = 112;
  @Deprecated('Use FACILITY_PARSE instead')
  static const FACILITY_PARSE = 113;
  @Deprecated('Use FACILITY_BLB instead')
  static const FACILITY_BLB = 120;
  @Deprecated('Use FACILITY_BLB_CLI instead')
  static const FACILITY_BLB_CLI = 121;
  @Deprecated('Use FACILITY_WSBAPP instead')
  static const FACILITY_WSBAPP = 122;
  @Deprecated('Use FACILITY_BLBUI instead')
  static const FACILITY_BLBUI = 128;
  @Deprecated('Use FACILITY_USN instead')
  static const FACILITY_USN = 129;
  @Deprecated('Use FACILITY_USERMODE_VOLSNAP instead')
  static const FACILITY_USERMODE_VOLSNAP = 130;
  @Deprecated('Use FACILITY_TIERING instead')
  static const FACILITY_TIERING = 131;
  @Deprecated('Use FACILITY_WSB_ONLINE instead')
  static const FACILITY_WSB_ONLINE = 133;
  @Deprecated('Use FACILITY_ONLINE_ID instead')
  static const FACILITY_ONLINE_ID = 134;
  @Deprecated('Use FACILITY_DEVICE_UPDATE_AGENT instead')
  static const FACILITY_DEVICE_UPDATE_AGENT = 135;
  @Deprecated('Use FACILITY_DRVSERVICING instead')
  static const FACILITY_DRVSERVICING = 136;
  @Deprecated('Use FACILITY_DLS instead')
  static const FACILITY_DLS = 153;
  @Deprecated('Use FACILITY_DELIVERY_OPTIMIZATION instead')
  static const FACILITY_DELIVERY_OPTIMIZATION = 208;
  @Deprecated('Use FACILITY_USERMODE_SPACES instead')
  static const FACILITY_USERMODE_SPACES = 231;
  @Deprecated('Use FACILITY_USER_MODE_SECURITY_CORE instead')
  static const FACILITY_USER_MODE_SECURITY_CORE = 232;
  @Deprecated('Use FACILITY_USERMODE_LICENSING instead')
  static const FACILITY_USERMODE_LICENSING = 234;
  @Deprecated('Use FACILITY_SOS instead')
  static const FACILITY_SOS = 160;
  @Deprecated('Use FACILITY_OCP_UPDATE_AGENT instead')
  static const FACILITY_OCP_UPDATE_AGENT = 173;
  @Deprecated('Use FACILITY_DEBUGGERS instead')
  static const FACILITY_DEBUGGERS = 176;
  @Deprecated('Use FACILITY_SPP instead')
  static const FACILITY_SPP = 256;
  @Deprecated('Use FACILITY_RESTORE instead')
  static const FACILITY_RESTORE = 256;
  @Deprecated('Use FACILITY_DMSERVER instead')
  static const FACILITY_DMSERVER = 256;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_SERVER instead')
  static const FACILITY_DEPLOYMENT_SERVICES_SERVER = 257;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_IMAGING instead')
  static const FACILITY_DEPLOYMENT_SERVICES_IMAGING = 258;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_MANAGEMENT instead')
  static const FACILITY_DEPLOYMENT_SERVICES_MANAGEMENT = 259;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_UTIL instead')
  static const FACILITY_DEPLOYMENT_SERVICES_UTIL = 260;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_BINLSVC instead')
  static const FACILITY_DEPLOYMENT_SERVICES_BINLSVC = 261;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_PXE instead')
  static const FACILITY_DEPLOYMENT_SERVICES_PXE = 263;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_TFTP instead')
  static const FACILITY_DEPLOYMENT_SERVICES_TFTP = 264;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_TRANSPORT_MANAGEMENT instead')
  static const FACILITY_DEPLOYMENT_SERVICES_TRANSPORT_MANAGEMENT = 272;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_DRIVER_PROVISIONING instead')
  static const FACILITY_DEPLOYMENT_SERVICES_DRIVER_PROVISIONING = 278;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_MULTICAST_SERVER instead')
  static const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_SERVER = 289;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_MULTICAST_CLIENT instead')
  static const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_CLIENT = 290;
  @Deprecated('Use FACILITY_DEPLOYMENT_SERVICES_CONTENT_PROVIDER instead')
  static const FACILITY_DEPLOYMENT_SERVICES_CONTENT_PROVIDER = 293;
  @Deprecated('Use FACILITY_HSP_SERVICES instead')
  static const FACILITY_HSP_SERVICES = 296;
  @Deprecated('Use FACILITY_HSP_SOFTWARE instead')
  static const FACILITY_HSP_SOFTWARE = 297;
  @Deprecated('Use FACILITY_LINGUISTIC_SERVICES instead')
  static const FACILITY_LINGUISTIC_SERVICES = 305;
  @Deprecated('Use FACILITY_AUDIOSTREAMING instead')
  static const FACILITY_AUDIOSTREAMING = 1094;
  @Deprecated('Use FACILITY_TTD instead')
  static const FACILITY_TTD = 1490;
  @Deprecated('Use FACILITY_ACCELERATOR instead')
  static const FACILITY_ACCELERATOR = 1536;
  @Deprecated('Use FACILITY_WMAAECMA instead')
  static const FACILITY_WMAAECMA = 1996;
  @Deprecated('Use FACILITY_DIRECTMUSIC instead')
  static const FACILITY_DIRECTMUSIC = 2168;
  @Deprecated('Use FACILITY_DIRECT3D10 instead')
  static const FACILITY_DIRECT3D10 = 2169;
  @Deprecated('Use FACILITY_DXGI instead')
  static const FACILITY_DXGI = 2170;
  @Deprecated('Use FACILITY_DXGI_DDI instead')
  static const FACILITY_DXGI_DDI = 2171;
  @Deprecated('Use FACILITY_DIRECT3D11 instead')
  static const FACILITY_DIRECT3D11 = 2172;
  @Deprecated('Use FACILITY_DIRECT3D11_DEBUG instead')
  static const FACILITY_DIRECT3D11_DEBUG = 2173;
  @Deprecated('Use FACILITY_DIRECT3D12 instead')
  static const FACILITY_DIRECT3D12 = 2174;
  @Deprecated('Use FACILITY_DIRECT3D12_DEBUG instead')
  static const FACILITY_DIRECT3D12_DEBUG = 2175;
  @Deprecated('Use FACILITY_DXCORE instead')
  static const FACILITY_DXCORE = 2176;
  @Deprecated('Use FACILITY_PRESENTATION instead')
  static const FACILITY_PRESENTATION = 2177;
  @Deprecated('Use FACILITY_LEAP instead')
  static const FACILITY_LEAP = 2184;
  @Deprecated('Use FACILITY_AUDCLNT instead')
  static const FACILITY_AUDCLNT = 2185;
  @Deprecated('Use FACILITY_WINCODEC_DWRITE_DWM instead')
  static const FACILITY_WINCODEC_DWRITE_DWM = 2200;
  @Deprecated('Use FACILITY_WINML instead')
  static const FACILITY_WINML = 2192;
  @Deprecated('Use FACILITY_DIRECT2D instead')
  static const FACILITY_DIRECT2D = 2201;
  @Deprecated('Use FACILITY_DEFRAG instead')
  static const FACILITY_DEFRAG = 2304;
  @Deprecated('Use FACILITY_USERMODE_SDBUS instead')
  static const FACILITY_USERMODE_SDBUS = 2305;
  @Deprecated('Use FACILITY_JSCRIPT instead')
  static const FACILITY_JSCRIPT = 2306;
  @Deprecated('Use FACILITY_PIDGENX instead')
  static const FACILITY_PIDGENX = 2561;
  @Deprecated('Use FACILITY_EAS instead')
  static const FACILITY_EAS = 85;
  @Deprecated('Use FACILITY_WEB instead')
  static const FACILITY_WEB = 885;
  @Deprecated('Use FACILITY_WEB_SOCKET instead')
  static const FACILITY_WEB_SOCKET = 886;
  @Deprecated('Use FACILITY_MOBILE instead')
  static const FACILITY_MOBILE = 1793;
  @Deprecated('Use FACILITY_SQLITE instead')
  static const FACILITY_SQLITE = 1967;
  @Deprecated('Use FACILITY_SERVICE_FABRIC instead')
  static const FACILITY_SERVICE_FABRIC = 1968;
  @Deprecated('Use FACILITY_UTC instead')
  static const FACILITY_UTC = 1989;
  @Deprecated('Use FACILITY_WEP instead')
  static const FACILITY_WEP = 2049;
  @Deprecated('Use FACILITY_SYNCENGINE instead')
  static const FACILITY_SYNCENGINE = 2050;
  @Deprecated('Use FACILITY_XBOX instead')
  static const FACILITY_XBOX = 2339;
  @Deprecated('Use FACILITY_GAME instead')
  static const FACILITY_GAME = 2340;
  @Deprecated('Use FACILITY_PIX instead')
  static const FACILITY_PIX = 2748;
  @Deprecated('Use FACILITY_NT_BIT instead')
  static const FACILITY_NT_BIT = 268435456;
}

/// {@category enum}
extension type const FILEOPERATION_FLAGS(int _) implements int {
  @Deprecated('Use FOFX_NOSKIPJUNCTIONS instead')
  static const FOFX_NOSKIPJUNCTIONS = 65536;
  @Deprecated('Use FOFX_PREFERHARDLINK instead')
  static const FOFX_PREFERHARDLINK = 131072;
  @Deprecated('Use FOFX_SHOWELEVATIONPROMPT instead')
  static const FOFX_SHOWELEVATIONPROMPT = 262144;
  @Deprecated('Use FOFX_RECYCLEONDELETE instead')
  static const FOFX_RECYCLEONDELETE = 524288;
  @Deprecated('Use FOFX_EARLYFAILURE instead')
  static const FOFX_EARLYFAILURE = 1048576;
  @Deprecated('Use FOFX_PRESERVEFILEEXTENSIONS instead')
  static const FOFX_PRESERVEFILEEXTENSIONS = 2097152;
  @Deprecated('Use FOFX_KEEPNEWERFILE instead')
  static const FOFX_KEEPNEWERFILE = 4194304;
  @Deprecated('Use FOFX_NOCOPYHOOKS instead')
  static const FOFX_NOCOPYHOOKS = 8388608;
  @Deprecated('Use FOFX_NOMINIMIZEBOX instead')
  static const FOFX_NOMINIMIZEBOX = 16777216;
  @Deprecated('Use FOFX_MOVEACLSACROSSVOLUMES instead')
  static const FOFX_MOVEACLSACROSSVOLUMES = 33554432;
  @Deprecated('Use FOFX_DONTDISPLAYSOURCEPATH instead')
  static const FOFX_DONTDISPLAYSOURCEPATH = 67108864;
  @Deprecated('Use FOFX_DONTDISPLAYDESTPATH instead')
  static const FOFX_DONTDISPLAYDESTPATH = 134217728;
  @Deprecated('Use FOFX_REQUIREELEVATION instead')
  static const FOFX_REQUIREELEVATION = 268435456;
  @Deprecated('Use FOFX_ADDUNDORECORD instead')
  static const FOFX_ADDUNDORECORD = 536870912;
  @Deprecated('Use FOFX_COPYASDOWNLOAD instead')
  static const FOFX_COPYASDOWNLOAD = 1073741824;
  @Deprecated('Use FOFX_DONTDISPLAYLOCATIONS instead')
  static const FOFX_DONTDISPLAYLOCATIONS = 2147483648;
  @Deprecated('Use FOF_MULTIDESTFILES instead')
  static const FOF_MULTIDESTFILES = 1;
  @Deprecated('Use FOF_CONFIRMMOUSE instead')
  static const FOF_CONFIRMMOUSE = 2;
  @Deprecated('Use FOF_SILENT instead')
  static const FOF_SILENT = 4;
  @Deprecated('Use FOF_RENAMEONCOLLISION instead')
  static const FOF_RENAMEONCOLLISION = 8;
  @Deprecated('Use FOF_NOCONFIRMATION instead')
  static const FOF_NOCONFIRMATION = 16;
  @Deprecated('Use FOF_WANTMAPPINGHANDLE instead')
  static const FOF_WANTMAPPINGHANDLE = 32;
  @Deprecated('Use FOF_ALLOWUNDO instead')
  static const FOF_ALLOWUNDO = 64;
  @Deprecated('Use FOF_FILESONLY instead')
  static const FOF_FILESONLY = 128;
  @Deprecated('Use FOF_SIMPLEPROGRESS instead')
  static const FOF_SIMPLEPROGRESS = 256;
  @Deprecated('Use FOF_NOCONFIRMMKDIR instead')
  static const FOF_NOCONFIRMMKDIR = 512;
  @Deprecated('Use FOF_NOERRORUI instead')
  static const FOF_NOERRORUI = 1024;
  @Deprecated('Use FOF_NOCOPYSECURITYATTRIBS instead')
  static const FOF_NOCOPYSECURITYATTRIBS = 2048;
  @Deprecated('Use FOF_NORECURSION instead')
  static const FOF_NORECURSION = 4096;
  @Deprecated('Use FOF_NO_CONNECTED_ELEMENTS instead')
  static const FOF_NO_CONNECTED_ELEMENTS = 8192;
  @Deprecated('Use FOF_WANTNUKEWARNING instead')
  static const FOF_WANTNUKEWARNING = 16384;
  @Deprecated('Use FOF_NORECURSEREPARSE instead')
  static const FOF_NORECURSEREPARSE = 32768;
  @Deprecated('Use FOF_NO_UI instead')
  static const FOF_NO_UI = 1556;
}

/// {@category enum}
extension type const FILE_ACCESS_RIGHTS(int _) implements int {
  @Deprecated('Use FILE_READ_DATA instead')
  static const FILE_READ_DATA = 1;
  @Deprecated('Use FILE_LIST_DIRECTORY instead')
  static const FILE_LIST_DIRECTORY = 1;
  @Deprecated('Use FILE_WRITE_DATA instead')
  static const FILE_WRITE_DATA = 2;
  @Deprecated('Use FILE_ADD_FILE instead')
  static const FILE_ADD_FILE = 2;
  @Deprecated('Use FILE_APPEND_DATA instead')
  static const FILE_APPEND_DATA = 4;
  @Deprecated('Use FILE_ADD_SUBDIRECTORY instead')
  static const FILE_ADD_SUBDIRECTORY = 4;
  @Deprecated('Use FILE_CREATE_PIPE_INSTANCE instead')
  static const FILE_CREATE_PIPE_INSTANCE = 4;
  @Deprecated('Use FILE_READ_EA instead')
  static const FILE_READ_EA = 8;
  @Deprecated('Use FILE_WRITE_EA instead')
  static const FILE_WRITE_EA = 16;
  @Deprecated('Use FILE_EXECUTE instead')
  static const FILE_EXECUTE = 32;
  @Deprecated('Use FILE_TRAVERSE instead')
  static const FILE_TRAVERSE = 32;
  @Deprecated('Use FILE_DELETE_CHILD instead')
  static const FILE_DELETE_CHILD = 64;
  @Deprecated('Use FILE_READ_ATTRIBUTES instead')
  static const FILE_READ_ATTRIBUTES = 128;
  @Deprecated('Use FILE_WRITE_ATTRIBUTES instead')
  static const FILE_WRITE_ATTRIBUTES = 256;
  @Deprecated('Use DELETE instead')
  static const DELETE = 65536;
  @Deprecated('Use READ_CONTROL instead')
  static const READ_CONTROL = 131072;
  @Deprecated('Use WRITE_DAC instead')
  static const WRITE_DAC = 262144;
  @Deprecated('Use WRITE_OWNER instead')
  static const WRITE_OWNER = 524288;
  @Deprecated('Use SYNCHRONIZE instead')
  static const SYNCHRONIZE = 1048576;
  @Deprecated('Use STANDARD_RIGHTS_REQUIRED instead')
  static const STANDARD_RIGHTS_REQUIRED = 983040;
  @Deprecated('Use STANDARD_RIGHTS_READ instead')
  static const STANDARD_RIGHTS_READ = 131072;
  @Deprecated('Use STANDARD_RIGHTS_WRITE instead')
  static const STANDARD_RIGHTS_WRITE = 131072;
  @Deprecated('Use STANDARD_RIGHTS_EXECUTE instead')
  static const STANDARD_RIGHTS_EXECUTE = 131072;
  @Deprecated('Use STANDARD_RIGHTS_ALL instead')
  static const STANDARD_RIGHTS_ALL = 2031616;
  @Deprecated('Use SPECIFIC_RIGHTS_ALL instead')
  static const SPECIFIC_RIGHTS_ALL = 65535;
  @Deprecated('Use FILE_ALL_ACCESS instead')
  static const FILE_ALL_ACCESS = 2032127;
  @Deprecated('Use FILE_GENERIC_READ instead')
  static const FILE_GENERIC_READ = 1179785;
  @Deprecated('Use FILE_GENERIC_WRITE instead')
  static const FILE_GENERIC_WRITE = 1179926;
  @Deprecated('Use FILE_GENERIC_EXECUTE instead')
  static const FILE_GENERIC_EXECUTE = 1179808;
}

/// {@category enum}
extension type const FILE_ACTION(int _) implements int {
  @Deprecated('Use FILE_ACTION_ADDED instead')
  static const FILE_ACTION_ADDED = 1;
  @Deprecated('Use FILE_ACTION_REMOVED instead')
  static const FILE_ACTION_REMOVED = 2;
  @Deprecated('Use FILE_ACTION_MODIFIED instead')
  static const FILE_ACTION_MODIFIED = 3;
  @Deprecated('Use FILE_ACTION_RENAMED_OLD_NAME instead')
  static const FILE_ACTION_RENAMED_OLD_NAME = 4;
  @Deprecated('Use FILE_ACTION_RENAMED_NEW_NAME instead')
  static const FILE_ACTION_RENAMED_NEW_NAME = 5;
}

/// {@category enum}
extension type const FILE_CREATION_DISPOSITION(int _) implements int {
  @Deprecated('Use CREATE_NEW instead')
  static const CREATE_NEW = 1;
  @Deprecated('Use CREATE_ALWAYS instead')
  static const CREATE_ALWAYS = 2;
  @Deprecated('Use OPEN_EXISTING instead')
  static const OPEN_EXISTING = 3;
  @Deprecated('Use OPEN_ALWAYS instead')
  static const OPEN_ALWAYS = 4;
  @Deprecated('Use TRUNCATE_EXISTING instead')
  static const TRUNCATE_EXISTING = 5;
}

/// {@category enum}
extension type const FILE_DEVICE_TYPE(int _) implements int {
  @Deprecated('Use FILE_DEVICE_CD_ROM instead')
  static const FILE_DEVICE_CD_ROM = 2;
  @Deprecated('Use FILE_DEVICE_DISK instead')
  static const FILE_DEVICE_DISK = 7;
  @Deprecated('Use FILE_DEVICE_TAPE instead')
  static const FILE_DEVICE_TAPE = 31;
  @Deprecated('Use FILE_DEVICE_DVD instead')
  static const FILE_DEVICE_DVD = 51;
}

/// {@category enum}
extension type const FILE_FLAGS_AND_ATTRIBUTES(int _) implements int {
  @Deprecated('Use FILE_ATTRIBUTE_READONLY instead')
  static const FILE_ATTRIBUTE_READONLY = 1;
  @Deprecated('Use FILE_ATTRIBUTE_HIDDEN instead')
  static const FILE_ATTRIBUTE_HIDDEN = 2;
  @Deprecated('Use FILE_ATTRIBUTE_SYSTEM instead')
  static const FILE_ATTRIBUTE_SYSTEM = 4;
  @Deprecated('Use FILE_ATTRIBUTE_DIRECTORY instead')
  static const FILE_ATTRIBUTE_DIRECTORY = 16;
  @Deprecated('Use FILE_ATTRIBUTE_ARCHIVE instead')
  static const FILE_ATTRIBUTE_ARCHIVE = 32;
  @Deprecated('Use FILE_ATTRIBUTE_DEVICE instead')
  static const FILE_ATTRIBUTE_DEVICE = 64;
  @Deprecated('Use FILE_ATTRIBUTE_NORMAL instead')
  static const FILE_ATTRIBUTE_NORMAL = 128;
  @Deprecated('Use FILE_ATTRIBUTE_TEMPORARY instead')
  static const FILE_ATTRIBUTE_TEMPORARY = 256;
  @Deprecated('Use FILE_ATTRIBUTE_SPARSE_FILE instead')
  static const FILE_ATTRIBUTE_SPARSE_FILE = 512;
  @Deprecated('Use FILE_ATTRIBUTE_REPARSE_POINT instead')
  static const FILE_ATTRIBUTE_REPARSE_POINT = 1024;
  @Deprecated('Use FILE_ATTRIBUTE_COMPRESSED instead')
  static const FILE_ATTRIBUTE_COMPRESSED = 2048;
  @Deprecated('Use FILE_ATTRIBUTE_OFFLINE instead')
  static const FILE_ATTRIBUTE_OFFLINE = 4096;
  @Deprecated('Use FILE_ATTRIBUTE_NOT_CONTENT_INDEXED instead')
  static const FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = FILE_FLAGS_AND_ATTRIBUTES(
    8192,
  );
  @Deprecated('Use FILE_ATTRIBUTE_ENCRYPTED instead')
  static const FILE_ATTRIBUTE_ENCRYPTED = 16384;
  @Deprecated('Use FILE_ATTRIBUTE_INTEGRITY_STREAM instead')
  static const FILE_ATTRIBUTE_INTEGRITY_STREAM = FILE_FLAGS_AND_ATTRIBUTES(
    32768,
  );
  @Deprecated('Use FILE_ATTRIBUTE_VIRTUAL instead')
  static const FILE_ATTRIBUTE_VIRTUAL = 65536;
  @Deprecated('Use FILE_ATTRIBUTE_NO_SCRUB_DATA instead')
  static const FILE_ATTRIBUTE_NO_SCRUB_DATA = 131072;
  @Deprecated('Use FILE_ATTRIBUTE_EA instead')
  static const FILE_ATTRIBUTE_EA = 262144;
  @Deprecated('Use FILE_ATTRIBUTE_PINNED instead')
  static const FILE_ATTRIBUTE_PINNED = 524288;
  @Deprecated('Use FILE_ATTRIBUTE_UNPINNED instead')
  static const FILE_ATTRIBUTE_UNPINNED = 1048576;
  @Deprecated('Use FILE_ATTRIBUTE_RECALL_ON_OPEN instead')
  static const FILE_ATTRIBUTE_RECALL_ON_OPEN = FILE_FLAGS_AND_ATTRIBUTES(
    262144,
  );
  @Deprecated('Use FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS instead')
  static const FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS = FILE_FLAGS_AND_ATTRIBUTES(
    4194304,
  );
  @Deprecated('Use FILE_FLAG_WRITE_THROUGH instead')
  static const FILE_FLAG_WRITE_THROUGH = 2147483648;
  @Deprecated('Use FILE_FLAG_OVERLAPPED instead')
  static const FILE_FLAG_OVERLAPPED = 1073741824;
  @Deprecated('Use FILE_FLAG_NO_BUFFERING instead')
  static const FILE_FLAG_NO_BUFFERING = 536870912;
  @Deprecated('Use FILE_FLAG_RANDOM_ACCESS instead')
  static const FILE_FLAG_RANDOM_ACCESS = 268435456;
  @Deprecated('Use FILE_FLAG_SEQUENTIAL_SCAN instead')
  static const FILE_FLAG_SEQUENTIAL_SCAN = 134217728;
  @Deprecated('Use FILE_FLAG_DELETE_ON_CLOSE instead')
  static const FILE_FLAG_DELETE_ON_CLOSE = 67108864;
  @Deprecated('Use FILE_FLAG_BACKUP_SEMANTICS instead')
  static const FILE_FLAG_BACKUP_SEMANTICS = 33554432;
  @Deprecated('Use FILE_FLAG_POSIX_SEMANTICS instead')
  static const FILE_FLAG_POSIX_SEMANTICS = 16777216;
  @Deprecated('Use FILE_FLAG_SESSION_AWARE instead')
  static const FILE_FLAG_SESSION_AWARE = 8388608;
  @Deprecated('Use FILE_FLAG_OPEN_REPARSE_POINT instead')
  static const FILE_FLAG_OPEN_REPARSE_POINT = FILE_FLAGS_AND_ATTRIBUTES(
    2097152,
  );
  @Deprecated('Use FILE_FLAG_OPEN_NO_RECALL instead')
  static const FILE_FLAG_OPEN_NO_RECALL = 1048576;
  @Deprecated('Use FILE_FLAG_FIRST_PIPE_INSTANCE instead')
  static const FILE_FLAG_FIRST_PIPE_INSTANCE = FILE_FLAGS_AND_ATTRIBUTES(
    524288,
  );
  @Deprecated('Use PIPE_ACCESS_DUPLEX instead')
  static const PIPE_ACCESS_DUPLEX = 3;
  @Deprecated('Use PIPE_ACCESS_INBOUND instead')
  static const PIPE_ACCESS_INBOUND = 1;
  @Deprecated('Use PIPE_ACCESS_OUTBOUND instead')
  static const PIPE_ACCESS_OUTBOUND = 2;
  @Deprecated('Use SECURITY_ANONYMOUS instead')
  static const SECURITY_ANONYMOUS = 0;
  @Deprecated('Use SECURITY_IDENTIFICATION instead')
  static const SECURITY_IDENTIFICATION = 65536;
  @Deprecated('Use SECURITY_IMPERSONATION instead')
  static const SECURITY_IMPERSONATION = 131072;
  @Deprecated('Use SECURITY_DELEGATION instead')
  static const SECURITY_DELEGATION = 196608;
  @Deprecated('Use SECURITY_CONTEXT_TRACKING instead')
  static const SECURITY_CONTEXT_TRACKING = 262144;
  @Deprecated('Use SECURITY_EFFECTIVE_ONLY instead')
  static const SECURITY_EFFECTIVE_ONLY = 524288;
  @Deprecated('Use SECURITY_SQOS_PRESENT instead')
  static const SECURITY_SQOS_PRESENT = 1048576;
  @Deprecated('Use SECURITY_VALID_SQOS_FLAGS instead')
  static const SECURITY_VALID_SQOS_FLAGS = 2031616;
}

/// Identifies the type of file information that GetFileInformationByHandleEx
/// should retrieve or SetFileInformationByHandle should set.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-file_info_by_handle_class>.
///
/// {@category enum}
extension type const FILE_INFO_BY_HANDLE_CLASS(int _) implements int {
  /// Minimal information for the file should be retrieved or set.
  @Deprecated('Use FileBasicInfo instead')
  static const FileBasicInfo = 0;

  /// Extended information for the file should be retrieved.
  @Deprecated('Use FileStandardInfo instead')
  static const FileStandardInfo = 1;

  /// The file name should be retrieved.
  @Deprecated('Use FileNameInfo instead')
  static const FileNameInfo = 2;

  /// The file name should be changed.
  @Deprecated('Use FileRenameInfo instead')
  static const FileRenameInfo = 3;

  /// The file should be deleted.
  @Deprecated('Use FileDispositionInfo instead')
  static const FileDispositionInfo = 4;

  /// The file allocation information should be changed.
  @Deprecated('Use FileAllocationInfo instead')
  static const FileAllocationInfo = 5;

  /// The end of the file should be set.
  @Deprecated('Use FileEndOfFileInfo instead')
  static const FileEndOfFileInfo = 6;

  /// File stream information for the specified file should be retrieved.
  @Deprecated('Use FileStreamInfo instead')
  static const FileStreamInfo = 7;

  /// File compression information should be retrieved.
  @Deprecated('Use FileCompressionInfo instead')
  static const FileCompressionInfo = 8;

  /// File attribute information should be retrieved.
  @Deprecated('Use FileAttributeTagInfo instead')
  static const FileAttributeTagInfo = 9;

  /// Files in the specified directory should be retrieved.
  @Deprecated('Use FileIdBothDirectoryInfo instead')
  static const FileIdBothDirectoryInfo = 10;

  /// Identical to <b>FileIdBothDirectoryInfo</b>, but forces the enumeration
  /// operation to start again from the beginning.
  @Deprecated('Use FileIdBothDirectoryRestartInfo instead')
  static const FileIdBothDirectoryRestartInfo = 11;

  /// Priority hint information should be set.
  @Deprecated('Use FileIoPriorityHintInfo instead')
  static const FileIoPriorityHintInfo = 12;

  /// File remote protocol information should be retrieved.
  @Deprecated('Use FileRemoteProtocolInfo instead')
  static const FileRemoteProtocolInfo = 13;

  /// Files in the specified directory should be retrieved.
  @Deprecated('Use FileFullDirectoryInfo instead')
  static const FileFullDirectoryInfo = 14;

  /// Identical to <b>FileFullDirectoryInfo</b>, but forces the enumeration
  /// operation to start again from the beginning.
  @Deprecated('Use FileFullDirectoryRestartInfo instead')
  static const FileFullDirectoryRestartInfo = 15;

  /// File storage information should be retrieved.
  @Deprecated('Use FileStorageInfo instead')
  static const FileStorageInfo = 16;

  /// File alignment information should be retrieved.
  @Deprecated('Use FileAlignmentInfo instead')
  static const FileAlignmentInfo = 17;

  /// File information should be retrieved.
  @Deprecated('Use FileIdInfo instead')
  static const FileIdInfo = 18;

  /// Files in the specified directory should be retrieved.
  @Deprecated('Use FileIdExtdDirectoryInfo instead')
  static const FileIdExtdDirectoryInfo = 19;

  /// Identical to <b>FileIdExtdDirectoryInfo</b>, but forces the enumeration
  /// operation to start again from the beginning.
  @Deprecated('Use FileIdExtdDirectoryRestartInfo instead')
  static const FileIdExtdDirectoryRestartInfo = 20;
  @Deprecated('Use FileDispositionInfoEx instead')
  static const FileDispositionInfoEx = 21;
  @Deprecated('Use FileRenameInfoEx instead')
  static const FileRenameInfoEx = 22;
  @Deprecated('Use FileCaseSensitiveInfo instead')
  static const FileCaseSensitiveInfo = 23;
  @Deprecated('Use FileNormalizedNameInfo instead')
  static const FileNormalizedNameInfo = 24;

  /// This value is used for validation.
  @Deprecated('Use MaximumFileInfoByHandleClass instead')
  static const MaximumFileInfoByHandleClass = 25;
}

/// {@category enum}
extension type const FILE_NOTIFY_CHANGE(int _) implements int {
  @Deprecated('Use FILE_NOTIFY_CHANGE_FILE_NAME instead')
  static const FILE_NOTIFY_CHANGE_FILE_NAME = 1;
  @Deprecated('Use FILE_NOTIFY_CHANGE_DIR_NAME instead')
  static const FILE_NOTIFY_CHANGE_DIR_NAME = 2;
  @Deprecated('Use FILE_NOTIFY_CHANGE_ATTRIBUTES instead')
  static const FILE_NOTIFY_CHANGE_ATTRIBUTES = 4;
  @Deprecated('Use FILE_NOTIFY_CHANGE_SIZE instead')
  static const FILE_NOTIFY_CHANGE_SIZE = 8;
  @Deprecated('Use FILE_NOTIFY_CHANGE_LAST_WRITE instead')
  static const FILE_NOTIFY_CHANGE_LAST_WRITE = 16;
  @Deprecated('Use FILE_NOTIFY_CHANGE_LAST_ACCESS instead')
  static const FILE_NOTIFY_CHANGE_LAST_ACCESS = 32;
  @Deprecated('Use FILE_NOTIFY_CHANGE_CREATION instead')
  static const FILE_NOTIFY_CHANGE_CREATION = 64;
  @Deprecated('Use FILE_NOTIFY_CHANGE_SECURITY instead')
  static const FILE_NOTIFY_CHANGE_SECURITY = 256;
}

/// {@category enum}
extension type const FILE_SHARE_MODE(int _) implements int {
  @Deprecated('Use FILE_SHARE_NONE instead')
  static const FILE_SHARE_NONE = 0;
  @Deprecated('Use FILE_SHARE_DELETE instead')
  static const FILE_SHARE_DELETE = 4;
  @Deprecated('Use FILE_SHARE_READ instead')
  static const FILE_SHARE_READ = 1;
  @Deprecated('Use FILE_SHARE_WRITE instead')
  static const FILE_SHARE_WRITE = 2;
}

/// {@category enum}
extension type const FILE_TYPE(int _) implements int {
  @Deprecated('Use FILE_TYPE_UNKNOWN instead')
  static const FILE_TYPE_UNKNOWN = 0;
  @Deprecated('Use FILE_TYPE_DISK instead')
  static const FILE_TYPE_DISK = 1;
  @Deprecated('Use FILE_TYPE_CHAR instead')
  static const FILE_TYPE_CHAR = 2;
  @Deprecated('Use FILE_TYPE_PIPE instead')
  static const FILE_TYPE_PIPE = 3;
  @Deprecated('Use FILE_TYPE_REMOTE instead')
  static const FILE_TYPE_REMOTE = 32768;
}

/// Constants used by IFileIsInUse::GetUsage to indicate how a file in use is
/// being used.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-file_usage_type>.
///
/// {@category enum}
extension type const FILE_USAGE_TYPE(int _) implements int {
  /// The file is being played by the process that has it open.
  @Deprecated('Use FUT_PLAYING instead')
  static const FUT_PLAYING = 0;

  /// The file is being edited by the process that has it open.
  @Deprecated('Use FUT_EDITING instead')
  static const FUT_EDITING = 1;

  /// The file is open in the process for an unspecified action or an action
  /// that does not readily fit into the other two categories.
  @Deprecated('Use FUT_GENERIC instead')
  static const FUT_GENERIC = 2;
}

/// Defines values that are used with the FindFirstFileEx function to specify
/// the information level of the returned data.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-findex_info_levels>.
///
/// {@category enum}
extension type const FINDEX_INFO_LEVELS(int _) implements int {
  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-findfirstfileexa">FindFirstFileEx</a>
  /// function retrieves a standard set of attribute information.
  @Deprecated('Use FindExInfoStandard instead')
  static const FindExInfoStandard = 0;

  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-findfirstfileexa">FindFirstFileEx</a>
  /// function does not query the short file name, improving overall enumeration
  /// speed.
  @Deprecated('Use FindExInfoBasic instead')
  static const FindExInfoBasic = 1;

  /// This value is used for validation.
  @Deprecated('Use FindExInfoMaxInfoLevel instead')
  static const FindExInfoMaxInfoLevel = 2;
}

/// Defines values that are used with the FindFirstFileEx function to specify
/// the type of filtering to perform.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-findex_search_ops>.
///
/// {@category enum}
extension type const FINDEX_SEARCH_OPS(int _) implements int {
  /// The search for a file that matches a specified file name.
  @Deprecated('Use FindExSearchNameMatch instead')
  static const FindExSearchNameMatch = 0;

  /// This is an advisory flag.
  @Deprecated('Use FindExSearchLimitToDirectories instead')
  static const FindExSearchLimitToDirectories = 1;

  /// This filtering type is not available.
  @Deprecated('Use FindExSearchLimitToDevices instead')
  static const FindExSearchLimitToDevices = 2;
  @Deprecated('Use FindExSearchMaxSearchOp instead')
  static const FindExSearchMaxSearchOp = 3;
}

/// {@category enum}
extension type const FINDREPLACE_FLAGS(int _) implements int {
  @Deprecated('Use FR_DOWN instead')
  static const FR_DOWN = 1;
  @Deprecated('Use FR_WHOLEWORD instead')
  static const FR_WHOLEWORD = 2;
  @Deprecated('Use FR_MATCHCASE instead')
  static const FR_MATCHCASE = 4;
  @Deprecated('Use FR_FINDNEXT instead')
  static const FR_FINDNEXT = 8;
  @Deprecated('Use FR_REPLACE instead')
  static const FR_REPLACE = 16;
  @Deprecated('Use FR_REPLACEALL instead')
  static const FR_REPLACEALL = 32;
  @Deprecated('Use FR_DIALOGTERM instead')
  static const FR_DIALOGTERM = 64;
  @Deprecated('Use FR_SHOWHELP instead')
  static const FR_SHOWHELP = 128;
  @Deprecated('Use FR_ENABLEHOOK instead')
  static const FR_ENABLEHOOK = 256;
  @Deprecated('Use FR_ENABLETEMPLATE instead')
  static const FR_ENABLETEMPLATE = 512;
  @Deprecated('Use FR_NOUPDOWN instead')
  static const FR_NOUPDOWN = 1024;
  @Deprecated('Use FR_NOMATCHCASE instead')
  static const FR_NOMATCHCASE = 2048;
  @Deprecated('Use FR_NOWHOLEWORD instead')
  static const FR_NOWHOLEWORD = 4096;
  @Deprecated('Use FR_ENABLETEMPLATEHANDLE instead')
  static const FR_ENABLETEMPLATEHANDLE = 8192;
  @Deprecated('Use FR_HIDEUPDOWN instead')
  static const FR_HIDEUPDOWN = 16384;
  @Deprecated('Use FR_HIDEMATCHCASE instead')
  static const FR_HIDEMATCHCASE = 32768;
  @Deprecated('Use FR_HIDEWHOLEWORD instead')
  static const FR_HIDEWHOLEWORD = 65536;
  @Deprecated('Use FR_RAW instead')
  static const FR_RAW = 131072;
  @Deprecated('Use FR_SHOWWRAPAROUND instead')
  static const FR_SHOWWRAPAROUND = 262144;
  @Deprecated('Use FR_NOWRAPAROUND instead')
  static const FR_NOWRAPAROUND = 524288;
  @Deprecated('Use FR_WRAPAROUND instead')
  static const FR_WRAPAROUND = 1048576;
  @Deprecated('Use FR_MATCHDIAC instead')
  static const FR_MATCHDIAC = 536870912;
  @Deprecated('Use FR_MATCHKASHIDA instead')
  static const FR_MATCHKASHIDA = 1073741824;
  @Deprecated('Use FR_MATCHALEFHAMZA instead')
  static const FR_MATCHALEFHAMZA = 2147483648;
}

/// {@category enum}
extension type const FIND_FIRST_EX_FLAGS(int _) implements int {
  @Deprecated('Use FIND_FIRST_EX_CASE_SENSITIVE instead')
  static const FIND_FIRST_EX_CASE_SENSITIVE = 1;
  @Deprecated('Use FIND_FIRST_EX_LARGE_FETCH instead')
  static const FIND_FIRST_EX_LARGE_FETCH = 2;
  @Deprecated('Use FIND_FIRST_EX_ON_DISK_ENTRIES_ONLY instead')
  static const FIND_FIRST_EX_ON_DISK_ENTRIES_ONLY = 4;
}

/// {@category enum}
extension type const FIRMWARE_TABLE_PROVIDER(int _) implements int {
  @Deprecated('Use ACPI instead')
  static const ACPI = 1094930505;
  @Deprecated('Use FIRM instead')
  static const FIRM = 1179210317;
  @Deprecated('Use RSMB instead')
  static const RSMB = 1381190978;
}

/// {@category enum}
extension type const FONT_CHARSET(int _) implements int {
  @Deprecated('Use ANSI_CHARSET instead')
  static const ANSI_CHARSET = 0;
  @Deprecated('Use DEFAULT_CHARSET instead')
  static const DEFAULT_CHARSET = 1;
  @Deprecated('Use SYMBOL_CHARSET instead')
  static const SYMBOL_CHARSET = 2;
  @Deprecated('Use SHIFTJIS_CHARSET instead')
  static const SHIFTJIS_CHARSET = 128;
  @Deprecated('Use HANGEUL_CHARSET instead')
  static const HANGEUL_CHARSET = 129;
  @Deprecated('Use HANGUL_CHARSET instead')
  static const HANGUL_CHARSET = 129;
  @Deprecated('Use GB2312_CHARSET instead')
  static const GB2312_CHARSET = 134;
  @Deprecated('Use CHINESEBIG5_CHARSET instead')
  static const CHINESEBIG5_CHARSET = 136;
  @Deprecated('Use OEM_CHARSET instead')
  static const OEM_CHARSET = 255;
  @Deprecated('Use JOHAB_CHARSET instead')
  static const JOHAB_CHARSET = 130;
  @Deprecated('Use HEBREW_CHARSET instead')
  static const HEBREW_CHARSET = 177;
  @Deprecated('Use ARABIC_CHARSET instead')
  static const ARABIC_CHARSET = 178;
  @Deprecated('Use GREEK_CHARSET instead')
  static const GREEK_CHARSET = 161;
  @Deprecated('Use TURKISH_CHARSET instead')
  static const TURKISH_CHARSET = 162;
  @Deprecated('Use VIETNAMESE_CHARSET instead')
  static const VIETNAMESE_CHARSET = 163;
  @Deprecated('Use THAI_CHARSET instead')
  static const THAI_CHARSET = 222;
  @Deprecated('Use EASTEUROPE_CHARSET instead')
  static const EASTEUROPE_CHARSET = 238;
  @Deprecated('Use RUSSIAN_CHARSET instead')
  static const RUSSIAN_CHARSET = 204;
  @Deprecated('Use MAC_CHARSET instead')
  static const MAC_CHARSET = 77;
  @Deprecated('Use BALTIC_CHARSET instead')
  static const BALTIC_CHARSET = 186;
}

/// {@category enum}
extension type const FONT_CLIP_PRECISION(int _) implements int {
  @Deprecated('Use CLIP_DEFAULT_PRECIS instead')
  static const CLIP_DEFAULT_PRECIS = 0;
  @Deprecated('Use CLIP_CHARACTER_PRECIS instead')
  static const CLIP_CHARACTER_PRECIS = 1;
  @Deprecated('Use CLIP_STROKE_PRECIS instead')
  static const CLIP_STROKE_PRECIS = 2;
  @Deprecated('Use CLIP_MASK instead')
  static const CLIP_MASK = 15;
  @Deprecated('Use CLIP_LH_ANGLES instead')
  static const CLIP_LH_ANGLES = 16;
  @Deprecated('Use CLIP_TT_ALWAYS instead')
  static const CLIP_TT_ALWAYS = 32;
  @Deprecated('Use CLIP_DFA_DISABLE instead')
  static const CLIP_DFA_DISABLE = 64;
  @Deprecated('Use CLIP_EMBEDDED instead')
  static const CLIP_EMBEDDED = 128;
  @Deprecated('Use CLIP_DFA_OVERRIDE instead')
  static const CLIP_DFA_OVERRIDE = 64;
}

/// {@category enum}
extension type const FONT_OUTPUT_PRECISION(int _) implements int {
  @Deprecated('Use OUT_DEFAULT_PRECIS instead')
  static const OUT_DEFAULT_PRECIS = 0;
  @Deprecated('Use OUT_STRING_PRECIS instead')
  static const OUT_STRING_PRECIS = 1;
  @Deprecated('Use OUT_CHARACTER_PRECIS instead')
  static const OUT_CHARACTER_PRECIS = 2;
  @Deprecated('Use OUT_STROKE_PRECIS instead')
  static const OUT_STROKE_PRECIS = 3;
  @Deprecated('Use OUT_TT_PRECIS instead')
  static const OUT_TT_PRECIS = 4;
  @Deprecated('Use OUT_DEVICE_PRECIS instead')
  static const OUT_DEVICE_PRECIS = 5;
  @Deprecated('Use OUT_RASTER_PRECIS instead')
  static const OUT_RASTER_PRECIS = 6;
  @Deprecated('Use OUT_TT_ONLY_PRECIS instead')
  static const OUT_TT_ONLY_PRECIS = 7;
  @Deprecated('Use OUT_OUTLINE_PRECIS instead')
  static const OUT_OUTLINE_PRECIS = 8;
  @Deprecated('Use OUT_SCREEN_OUTLINE_PRECIS instead')
  static const OUT_SCREEN_OUTLINE_PRECIS = 9;
  @Deprecated('Use OUT_PS_ONLY_PRECIS instead')
  static const OUT_PS_ONLY_PRECIS = 10;
}

/// {@category enum}
extension type const FONT_QUALITY(int _) implements int {
  @Deprecated('Use DEFAULT_QUALITY instead')
  static const DEFAULT_QUALITY = 0;
  @Deprecated('Use DRAFT_QUALITY instead')
  static const DRAFT_QUALITY = 1;
  @Deprecated('Use PROOF_QUALITY instead')
  static const PROOF_QUALITY = 2;
  @Deprecated('Use NONANTIALIASED_QUALITY instead')
  static const NONANTIALIASED_QUALITY = 3;
  @Deprecated('Use ANTIALIASED_QUALITY instead')
  static const ANTIALIASED_QUALITY = 4;
  @Deprecated('Use CLEARTYPE_QUALITY instead')
  static const CLEARTYPE_QUALITY = 5;
}

/// {@category enum}
extension type const FONT_RESOURCE_CHARACTERISTICS(int _) implements int {
  @Deprecated('Use FR_PRIVATE instead')
  static const FR_PRIVATE = 16;
  @Deprecated('Use FR_NOT_ENUM instead')
  static const FR_NOT_ENUM = 32;
}

/// {@category enum}
extension type const FOREGROUND_WINDOW_LOCK_CODE(int _) implements int {
  @Deprecated('Use LSFW_LOCK instead')
  static const LSFW_LOCK = 1;
  @Deprecated('Use LSFW_UNLOCK instead')
  static const LSFW_UNLOCK = 2;
}

/// {@category enum}
extension type const FORMAT_MESSAGE_OPTIONS(int _) implements int {
  @Deprecated('Use FORMAT_MESSAGE_ALLOCATE_BUFFER instead')
  static const FORMAT_MESSAGE_ALLOCATE_BUFFER = 256;
  @Deprecated('Use FORMAT_MESSAGE_ARGUMENT_ARRAY instead')
  static const FORMAT_MESSAGE_ARGUMENT_ARRAY = 8192;
  @Deprecated('Use FORMAT_MESSAGE_FROM_HMODULE instead')
  static const FORMAT_MESSAGE_FROM_HMODULE = 2048;
  @Deprecated('Use FORMAT_MESSAGE_FROM_STRING instead')
  static const FORMAT_MESSAGE_FROM_STRING = 1024;
  @Deprecated('Use FORMAT_MESSAGE_FROM_SYSTEM instead')
  static const FORMAT_MESSAGE_FROM_SYSTEM = 4096;
  @Deprecated('Use FORMAT_MESSAGE_IGNORE_INSERTS instead')
  static const FORMAT_MESSAGE_IGNORE_INSERTS = 512;
}

/// Specifies function flags.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-funcflags>.
///
/// {@category enum}
extension type const FUNCFLAGS(int _) implements int {
  /// The function should not be accessible from macro languages.
  @Deprecated('Use FUNCFLAG_FRESTRICTED instead')
  static const FUNCFLAG_FRESTRICTED = 1;

  /// The function returns an object that is a source of events.
  @Deprecated('Use FUNCFLAG_FSOURCE instead')
  static const FUNCFLAG_FSOURCE = 2;

  /// The function that supports data binding.
  @Deprecated('Use FUNCFLAG_FBINDABLE instead')
  static const FUNCFLAG_FBINDABLE = 4;

  /// When set, any call to a method that sets the property results first in a
  /// call to <b>IPropertyNotifySink::OnRequestEdit</b>.
  @Deprecated('Use FUNCFLAG_FREQUESTEDIT instead')
  static const FUNCFLAG_FREQUESTEDIT = 8;

  /// The function that is displayed to the user as bindable.
  @Deprecated('Use FUNCFLAG_FDISPLAYBIND instead')
  static const FUNCFLAG_FDISPLAYBIND = 16;

  /// The function that best represents the object.
  @Deprecated('Use FUNCFLAG_FDEFAULTBIND instead')
  static const FUNCFLAG_FDEFAULTBIND = 32;

  /// The function should not be displayed to the user, although it exists and
  /// is bindable.
  @Deprecated('Use FUNCFLAG_FHIDDEN instead')
  static const FUNCFLAG_FHIDDEN = 64;

  /// The function supports <b>GetLastError</b>.
  @Deprecated('Use FUNCFLAG_FUSESGETLASTERROR instead')
  static const FUNCFLAG_FUSESGETLASTERROR = 128;

  /// Permits an optimization in which the compiler looks for a member named xyz
  /// on the type of abc.
  @Deprecated('Use FUNCFLAG_FDEFAULTCOLLELEM instead')
  static const FUNCFLAG_FDEFAULTCOLLELEM = 256;

  /// The type information member is the default member for display in the user
  /// interface.
  @Deprecated('Use FUNCFLAG_FUIDEFAULT instead')
  static const FUNCFLAG_FUIDEFAULT = 512;

  /// The property appears in an object browser, but not in a properties
  /// browser.
  @Deprecated('Use FUNCFLAG_FNONBROWSABLE instead')
  static const FUNCFLAG_FNONBROWSABLE = 1024;

  /// Tags the interface as having default behaviors.
  @Deprecated('Use FUNCFLAG_FREPLACEABLE instead')
  static const FUNCFLAG_FREPLACEABLE = 2048;

  /// Mapped as individual bindable properties.
  @Deprecated('Use FUNCFLAG_FIMMEDIATEBIND instead')
  static const FUNCFLAG_FIMMEDIATEBIND = 4096;
}

/// Specifies the function type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-funckind>.
///
/// {@category enum}
extension type const FUNCKIND(int _) implements int {
  /// The function is accessed the same as PUREVIRTUAL, except the function has
  /// an implementation.
  @Deprecated('Use FUNC_VIRTUAL instead')
  static const FUNC_VIRTUAL = 0;

  /// The function is accessed through the virtual function table (VTBL), and
  /// takes an implicit this pointer.
  @Deprecated('Use FUNC_PUREVIRTUAL instead')
  static const FUNC_PUREVIRTUAL = 1;

  /// The function is accessed by static address and takes an implicit this
  /// pointer.
  @Deprecated('Use FUNC_NONVIRTUAL instead')
  static const FUNC_NONVIRTUAL = 2;

  /// The function is accessed by static address and does not take an implicit
  /// this pointer.
  @Deprecated('Use FUNC_STATIC instead')
  static const FUNC_STATIC = 3;

  /// The function can be accessed only through <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nn-oaidl-idispatch">IDispatch</a>.
  @Deprecated('Use FUNC_DISPATCH instead')
  static const FUNC_DISPATCH = 4;
}

/// {@category enum}
extension type const GDI_IMAGE_TYPE(int _) implements int {
  @Deprecated('Use IMAGE_BITMAP instead')
  static const IMAGE_BITMAP = 0;
  @Deprecated('Use IMAGE_CURSOR instead')
  static const IMAGE_CURSOR = 2;
  @Deprecated('Use IMAGE_ICON instead')
  static const IMAGE_ICON = 1;
}

/// {@category enum}
extension type const GDI_REGION_TYPE(int _) implements int {
  @Deprecated('Use RGN_ERROR instead')
  static const RGN_ERROR = 0;
  @Deprecated('Use NULLREGION instead')
  static const NULLREGION = 1;
  @Deprecated('Use SIMPLEREGION instead')
  static const SIMPLEREGION = 2;
  @Deprecated('Use COMPLEXREGION instead')
  static const COMPLEXREGION = 3;
}

/// {@category enum}
extension type const GENERIC_ACCESS_RIGHTS(int _) implements int {
  @Deprecated('Use GENERIC_READ instead')
  static const GENERIC_READ = 2147483648;
  @Deprecated('Use GENERIC_WRITE instead')
  static const GENERIC_WRITE = 1073741824;
  @Deprecated('Use GENERIC_EXECUTE instead')
  static const GENERIC_EXECUTE = 536870912;
  @Deprecated('Use GENERIC_ALL instead')
  static const GENERIC_ALL = 268435456;
}

/// {@category enum}
extension type const GESTURECONFIG_ID(int _) implements int {
  @Deprecated('Use GID_BEGIN instead')
  static const GID_BEGIN = 1;
  @Deprecated('Use GID_END instead')
  static const GID_END = 2;
  @Deprecated('Use GID_ZOOM instead')
  static const GID_ZOOM = 3;
  @Deprecated('Use GID_PAN instead')
  static const GID_PAN = 4;
  @Deprecated('Use GID_ROTATE instead')
  static const GID_ROTATE = 5;
  @Deprecated('Use GID_TWOFINGERTAP instead')
  static const GID_TWOFINGERTAP = 6;
  @Deprecated('Use GID_PRESSANDTAP instead')
  static const GID_PRESSANDTAP = 7;
  @Deprecated('Use GID_ROLLOVER instead')
  static const GID_ROLLOVER = 7;
}

/// Identifies the gesture type specified in DwmRenderGesture.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ne-dwmapi-gesture_type>.
///
/// {@category enum}
extension type const GESTURE_TYPE(int _) implements int {
  /// A pen tap.
  @Deprecated('Use GT_PEN_TAP instead')
  static const GT_PEN_TAP = 0;

  /// A pen double tap.
  @Deprecated('Use GT_PEN_DOUBLETAP instead')
  static const GT_PEN_DOUBLETAP = 1;

  /// A pen right tap.
  @Deprecated('Use GT_PEN_RIGHTTAP instead')
  static const GT_PEN_RIGHTTAP = 2;

  /// A pen press and hold.
  @Deprecated('Use GT_PEN_PRESSANDHOLD instead')
  static const GT_PEN_PRESSANDHOLD = 3;

  /// An abort of the pen press and hold.
  @Deprecated('Use GT_PEN_PRESSANDHOLDABORT instead')
  static const GT_PEN_PRESSANDHOLDABORT = 4;

  /// A touch tap.
  @Deprecated('Use GT_TOUCH_TAP instead')
  static const GT_TOUCH_TAP = 5;

  /// A touch double tap.
  @Deprecated('Use GT_TOUCH_DOUBLETAP instead')
  static const GT_TOUCH_DOUBLETAP = 6;

  /// A touch right tap.
  @Deprecated('Use GT_TOUCH_RIGHTTAP instead')
  static const GT_TOUCH_RIGHTTAP = 7;

  /// A touch press and hold.
  @Deprecated('Use GT_TOUCH_PRESSANDHOLD instead')
  static const GT_TOUCH_PRESSANDHOLD = 8;

  /// An abort of the pen press and hold.
  @Deprecated('Use GT_TOUCH_PRESSANDHOLDABORT instead')
  static const GT_TOUCH_PRESSANDHOLDABORT = 9;

  /// A touch press and tap.
  @Deprecated('Use GT_TOUCH_PRESSANDTAP instead')
  static const GT_TOUCH_PRESSANDTAP = 10;
}

/// {@category enum}
extension type const GETFINALPATHNAMEBYHANDLE_FLAGS(int _) implements int {
  @Deprecated('Use VOLUME_NAME_DOS instead')
  static const VOLUME_NAME_DOS = 0;
  @Deprecated('Use VOLUME_NAME_GUID instead')
  static const VOLUME_NAME_GUID = 1;
  @Deprecated('Use VOLUME_NAME_NT instead')
  static const VOLUME_NAME_NT = 2;
  @Deprecated('Use VOLUME_NAME_NONE instead')
  static const VOLUME_NAME_NONE = 4;
  @Deprecated('Use FILE_NAME_NORMALIZED instead')
  static const FILE_NAME_NORMALIZED = 0;
  @Deprecated('Use FILE_NAME_OPENED instead')
  static const FILE_NAME_OPENED = 8;
}

/// Indicates flags that modify the property store object retrieved by methods
/// that create a property store, such as IShellItem2::GetPropertyStore or
/// IPropertyStoreFactory::GetPropertyStore.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/propsys/ne-propsys-getpropertystoreflags>.
///
/// {@category enum}
extension type const GETPROPERTYSTOREFLAGS(int _) implements int {
  /// Meaning to a calling process: Return a read-only property store that
  /// contains all properties.
  @Deprecated('Use GPS_DEFAULT instead')
  static const GPS_DEFAULT = 0;

  /// Meaning to a calling process: Include only properties directly from the
  /// property handler, which opens the file on the disk, network, or device.
  @Deprecated('Use GPS_HANDLERPROPERTIESONLY instead')
  static const GPS_HANDLERPROPERTIESONLY = 1;

  /// Meaning to a calling process: Can write properties to the item.
  @Deprecated('Use GPS_READWRITE instead')
  static const GPS_READWRITE = 2;

  /// Meaning to a calling process: Provides a writable store, with no initial
  /// properties, that exists for the lifetime of the Shell item instance;
  /// basically, a property bag attached to the item instance.
  @Deprecated('Use GPS_TEMPORARY instead')
  static const GPS_TEMPORARY = 4;

  /// Meaning to a calling process: Provides a store that does not involve
  /// reading from the disk or network.
  @Deprecated('Use GPS_FASTPROPERTIESONLY instead')
  static const GPS_FASTPROPERTIESONLY = 8;

  /// Meaning to a calling process: Open a slow item (offline file) if
  /// necessary.
  @Deprecated('Use GPS_OPENSLOWITEM instead')
  static const GPS_OPENSLOWITEM = 16;

  /// Meaning to a calling process: Delay memory-intensive operations, such as
  /// file access, until a property is requested that requires such access.
  @Deprecated('Use GPS_DELAYCREATION instead')
  static const GPS_DELAYCREATION = 32;

  /// Meaning to a calling process: Succeed at getting the store, even if some
  /// properties are not returned.
  @Deprecated('Use GPS_BESTEFFORT instead')
  static const GPS_BESTEFFORT = 64;
  @Deprecated('Use GPS_NO_OPLOCK instead')
  static const GPS_NO_OPLOCK = 128;
  @Deprecated('Use GPS_PREFERQUERYPROPERTIES instead')
  static const GPS_PREFERQUERYPROPERTIES = 256;

  /// Include properties from the file's secondary stream.
  @Deprecated('Use GPS_EXTRINSICPROPERTIES instead')
  static const GPS_EXTRINSICPROPERTIES = 512;

  /// Include only properties from the file's secondary stream.
  @Deprecated('Use GPS_EXTRINSICPROPERTIESONLY instead')
  static const GPS_EXTRINSICPROPERTIESONLY = 1024;
  @Deprecated('Use GPS_VOLATILEPROPERTIES instead')
  static const GPS_VOLATILEPROPERTIES = 2048;
  @Deprecated('Use GPS_VOLATILEPROPERTIESONLY instead')
  static const GPS_VOLATILEPROPERTIESONLY = 4096;

  /// Mask for valid <a
  /// href="https://docs.microsoft.com/windows/desktop/api/propsys/ne-propsys-getpropertystoreflags">GETPROPERTYSTOREFLAGS</a>
  /// values.
  @Deprecated('Use GPS_MASK_VALID instead')
  static const GPS_MASK_VALID = 8191;
}

/// {@category enum}
extension type const GET_ADAPTERS_ADDRESSES_FLAGS(int _) implements int {
  @Deprecated('Use GAA_FLAG_SKIP_UNICAST instead')
  static const GAA_FLAG_SKIP_UNICAST = 1;
  @Deprecated('Use GAA_FLAG_SKIP_ANYCAST instead')
  static const GAA_FLAG_SKIP_ANYCAST = 2;
  @Deprecated('Use GAA_FLAG_SKIP_MULTICAST instead')
  static const GAA_FLAG_SKIP_MULTICAST = 4;
  @Deprecated('Use GAA_FLAG_SKIP_DNS_SERVER instead')
  static const GAA_FLAG_SKIP_DNS_SERVER = 8;
  @Deprecated('Use GAA_FLAG_INCLUDE_PREFIX instead')
  static const GAA_FLAG_INCLUDE_PREFIX = 16;
  @Deprecated('Use GAA_FLAG_SKIP_FRIENDLY_NAME instead')
  static const GAA_FLAG_SKIP_FRIENDLY_NAME = 32;
  @Deprecated('Use GAA_FLAG_INCLUDE_WINS_INFO instead')
  static const GAA_FLAG_INCLUDE_WINS_INFO = 64;
  @Deprecated('Use GAA_FLAG_INCLUDE_GATEWAYS instead')
  static const GAA_FLAG_INCLUDE_GATEWAYS = 128;
  @Deprecated('Use GAA_FLAG_INCLUDE_ALL_INTERFACES instead')
  static const GAA_FLAG_INCLUDE_ALL_INTERFACES = GET_ADAPTERS_ADDRESSES_FLAGS(
    256,
  );
  @Deprecated('Use GAA_FLAG_INCLUDE_ALL_COMPARTMENTS instead')
  static const GAA_FLAG_INCLUDE_ALL_COMPARTMENTS = GET_ADAPTERS_ADDRESSES_FLAGS(
    512,
  );
  @Deprecated('Use GAA_FLAG_INCLUDE_TUNNEL_BINDINGORDER instead')
  static const GAA_FLAG_INCLUDE_TUNNEL_BINDINGORDER =
      GET_ADAPTERS_ADDRESSES_FLAGS(1024);
}

/// {@category enum}
extension type const GET_ANCESTOR_FLAGS(int _) implements int {
  @Deprecated('Use GA_PARENT instead')
  static const GA_PARENT = 1;
  @Deprecated('Use GA_ROOT instead')
  static const GA_ROOT = 2;
  @Deprecated('Use GA_ROOTOWNER instead')
  static const GA_ROOTOWNER = 3;
}

/// {@category enum}
extension type const GET_CLASS_LONG_INDEX(int _) implements int {
  @Deprecated('Use GCW_ATOM instead')
  static const GCW_ATOM = GET_CLASS_LONG_INDEX(-32);
  @Deprecated('Use GCL_CBCLSEXTRA instead')
  static const GCL_CBCLSEXTRA = GET_CLASS_LONG_INDEX(-20);
  @Deprecated('Use GCL_CBWNDEXTRA instead')
  static const GCL_CBWNDEXTRA = GET_CLASS_LONG_INDEX(-18);
  @Deprecated('Use GCL_HBRBACKGROUND instead')
  static const GCL_HBRBACKGROUND = GET_CLASS_LONG_INDEX(-10);
  @Deprecated('Use GCL_HCURSOR instead')
  static const GCL_HCURSOR = GET_CLASS_LONG_INDEX(-12);
  @Deprecated('Use GCL_HICON instead')
  static const GCL_HICON = GET_CLASS_LONG_INDEX(-14);
  @Deprecated('Use GCL_HICONSM instead')
  static const GCL_HICONSM = GET_CLASS_LONG_INDEX(-34);
  @Deprecated('Use GCL_HMODULE instead')
  static const GCL_HMODULE = GET_CLASS_LONG_INDEX(-16);
  @Deprecated('Use GCL_MENUNAME instead')
  static const GCL_MENUNAME = GET_CLASS_LONG_INDEX(-8);
  @Deprecated('Use GCL_STYLE instead')
  static const GCL_STYLE = GET_CLASS_LONG_INDEX(-26);
  @Deprecated('Use GCL_WNDPROC instead')
  static const GCL_WNDPROC = GET_CLASS_LONG_INDEX(-24);
  @Deprecated('Use GCLP_HBRBACKGROUND instead')
  static const GCLP_HBRBACKGROUND = GET_CLASS_LONG_INDEX(-10);
  @Deprecated('Use GCLP_HCURSOR instead')
  static const GCLP_HCURSOR = GET_CLASS_LONG_INDEX(-12);
  @Deprecated('Use GCLP_HICON instead')
  static const GCLP_HICON = GET_CLASS_LONG_INDEX(-14);
  @Deprecated('Use GCLP_HICONSM instead')
  static const GCLP_HICONSM = GET_CLASS_LONG_INDEX(-34);
  @Deprecated('Use GCLP_HMODULE instead')
  static const GCLP_HMODULE = GET_CLASS_LONG_INDEX(-16);
  @Deprecated('Use GCLP_MENUNAME instead')
  static const GCLP_MENUNAME = GET_CLASS_LONG_INDEX(-8);
  @Deprecated('Use GCLP_WNDPROC instead')
  static const GCLP_WNDPROC = GET_CLASS_LONG_INDEX(-24);
}

/// {@category enum}
extension type const GET_DCX_FLAGS(int _) implements int {
  @Deprecated('Use DCX_WINDOW instead')
  static const DCX_WINDOW = 1;
  @Deprecated('Use DCX_CACHE instead')
  static const DCX_CACHE = 2;
  @Deprecated('Use DCX_PARENTCLIP instead')
  static const DCX_PARENTCLIP = 32;
  @Deprecated('Use DCX_CLIPSIBLINGS instead')
  static const DCX_CLIPSIBLINGS = 16;
  @Deprecated('Use DCX_CLIPCHILDREN instead')
  static const DCX_CLIPCHILDREN = 8;
  @Deprecated('Use DCX_NORESETATTRS instead')
  static const DCX_NORESETATTRS = 4;
  @Deprecated('Use DCX_LOCKWINDOWUPDATE instead')
  static const DCX_LOCKWINDOWUPDATE = 1024;
  @Deprecated('Use DCX_EXCLUDERGN instead')
  static const DCX_EXCLUDERGN = 64;
  @Deprecated('Use DCX_INTERSECTRGN instead')
  static const DCX_INTERSECTRGN = 128;
  @Deprecated('Use DCX_INTERSECTUPDATE instead')
  static const DCX_INTERSECTUPDATE = 512;
  @Deprecated('Use DCX_VALIDATE instead')
  static const DCX_VALIDATE = 2097152;
}

/// {@category enum}
extension type const GET_DEVICE_CAPS_INDEX(int _) implements int {
  @Deprecated('Use DRIVERVERSION instead')
  static const DRIVERVERSION = 0;
  @Deprecated('Use TECHNOLOGY instead')
  static const TECHNOLOGY = 2;
  @Deprecated('Use HORZSIZE instead')
  static const HORZSIZE = 4;
  @Deprecated('Use VERTSIZE instead')
  static const VERTSIZE = 6;
  @Deprecated('Use HORZRES instead')
  static const HORZRES = 8;
  @Deprecated('Use VERTRES instead')
  static const VERTRES = 10;
  @Deprecated('Use BITSPIXEL instead')
  static const BITSPIXEL = 12;
  @Deprecated('Use PLANES instead')
  static const PLANES = 14;
  @Deprecated('Use NUMBRUSHES instead')
  static const NUMBRUSHES = 16;
  @Deprecated('Use NUMPENS instead')
  static const NUMPENS = 18;
  @Deprecated('Use NUMMARKERS instead')
  static const NUMMARKERS = 20;
  @Deprecated('Use NUMFONTS instead')
  static const NUMFONTS = 22;
  @Deprecated('Use NUMCOLORS instead')
  static const NUMCOLORS = 24;
  @Deprecated('Use PDEVICESIZE instead')
  static const PDEVICESIZE = 26;
  @Deprecated('Use CURVECAPS instead')
  static const CURVECAPS = 28;
  @Deprecated('Use LINECAPS instead')
  static const LINECAPS = 30;
  @Deprecated('Use POLYGONALCAPS instead')
  static const POLYGONALCAPS = 32;
  @Deprecated('Use TEXTCAPS instead')
  static const TEXTCAPS = 34;
  @Deprecated('Use CLIPCAPS instead')
  static const CLIPCAPS = 36;
  @Deprecated('Use RASTERCAPS instead')
  static const RASTERCAPS = 38;
  @Deprecated('Use ASPECTX instead')
  static const ASPECTX = 40;
  @Deprecated('Use ASPECTY instead')
  static const ASPECTY = 42;
  @Deprecated('Use ASPECTXY instead')
  static const ASPECTXY = 44;
  @Deprecated('Use LOGPIXELSX instead')
  static const LOGPIXELSX = 88;
  @Deprecated('Use LOGPIXELSY instead')
  static const LOGPIXELSY = 90;
  @Deprecated('Use SIZEPALETTE instead')
  static const SIZEPALETTE = 104;
  @Deprecated('Use NUMRESERVED instead')
  static const NUMRESERVED = 106;
  @Deprecated('Use COLORRES instead')
  static const COLORRES = 108;
  @Deprecated('Use PHYSICALWIDTH instead')
  static const PHYSICALWIDTH = 110;
  @Deprecated('Use PHYSICALHEIGHT instead')
  static const PHYSICALHEIGHT = 111;
  @Deprecated('Use PHYSICALOFFSETX instead')
  static const PHYSICALOFFSETX = 112;
  @Deprecated('Use PHYSICALOFFSETY instead')
  static const PHYSICALOFFSETY = 113;
  @Deprecated('Use SCALINGFACTORX instead')
  static const SCALINGFACTORX = 114;
  @Deprecated('Use SCALINGFACTORY instead')
  static const SCALINGFACTORY = 115;
  @Deprecated('Use VREFRESH instead')
  static const VREFRESH = 116;
  @Deprecated('Use DESKTOPVERTRES instead')
  static const DESKTOPVERTRES = 117;
  @Deprecated('Use DESKTOPHORZRES instead')
  static const DESKTOPHORZRES = 118;
  @Deprecated('Use BLTALIGNMENT instead')
  static const BLTALIGNMENT = 119;
  @Deprecated('Use SHADEBLENDCAPS instead')
  static const SHADEBLENDCAPS = 120;
  @Deprecated('Use COLORMGMTCAPS instead')
  static const COLORMGMTCAPS = 121;
}

/// Defines values that are used with the GetFileAttributesEx and
/// GetFileAttributesTransacted functions to specify the information level of
/// the returned data.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-get_fileex_info_levels>.
///
/// {@category enum}
extension type const GET_FILEEX_INFO_LEVELS(int _) implements int {
  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-getfileattributesexa">GetFileAttributesEx</a>
  /// or <a
  /// href="https://docs.microsoft.com/windows/desktop/api/winbase/nf-winbase-getfileattributestransacteda">GetFileAttributesTransacted</a>
  /// function retrieves a standard set of attribute information.
  @Deprecated('Use GetFileExInfoStandard instead')
  static const GetFileExInfoStandard = 0;

  /// One greater than the maximum value.
  @Deprecated('Use GetFileExMaxInfoLevel instead')
  static const GetFileExMaxInfoLevel = 1;
}

/// {@category enum}
extension type const GET_FILE_VERSION_INFO_FLAGS(int _) implements int {
  @Deprecated('Use FILE_VER_GET_LOCALISED instead')
  static const FILE_VER_GET_LOCALISED = 1;
  @Deprecated('Use FILE_VER_GET_NEUTRAL instead')
  static const FILE_VER_GET_NEUTRAL = 2;
  @Deprecated('Use FILE_VER_GET_PREFETCHED instead')
  static const FILE_VER_GET_PREFETCHED = 4;
}

/// {@category enum}
extension type const GET_MENU_DEFAULT_ITEM_FLAGS(int _) implements int {
  @Deprecated('Use GMDI_GOINTOPOPUPS instead')
  static const GMDI_GOINTOPOPUPS = 2;
  @Deprecated('Use GMDI_USEDISABLED instead')
  static const GMDI_USEDISABLED = 1;
}

/// {@category enum}
extension type const GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(int _) implements int {
  @Deprecated('Use GMMP_USE_DISPLAY_POINTS instead')
  static const GMMP_USE_DISPLAY_POINTS = 1;
  @Deprecated('Use GMMP_USE_HIGH_RESOLUTION_POINTS instead')
  static const GMMP_USE_HIGH_RESOLUTION_POINTS =
      GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(2);
}

/// {@category enum}
extension type const GET_STOCK_OBJECT_FLAGS(int _) implements int {
  @Deprecated('Use BLACK_BRUSH instead')
  static const BLACK_BRUSH = 4;
  @Deprecated('Use DKGRAY_BRUSH instead')
  static const DKGRAY_BRUSH = 3;
  @Deprecated('Use DC_BRUSH instead')
  static const DC_BRUSH = 18;
  @Deprecated('Use GRAY_BRUSH instead')
  static const GRAY_BRUSH = 2;
  @Deprecated('Use HOLLOW_BRUSH instead')
  static const HOLLOW_BRUSH = 5;
  @Deprecated('Use LTGRAY_BRUSH instead')
  static const LTGRAY_BRUSH = 1;
  @Deprecated('Use NULL_BRUSH instead')
  static const NULL_BRUSH = 5;
  @Deprecated('Use WHITE_BRUSH instead')
  static const WHITE_BRUSH = 0;
  @Deprecated('Use BLACK_PEN instead')
  static const BLACK_PEN = 7;
  @Deprecated('Use DC_PEN instead')
  static const DC_PEN = 19;
  @Deprecated('Use NULL_PEN instead')
  static const NULL_PEN = 8;
  @Deprecated('Use WHITE_PEN instead')
  static const WHITE_PEN = 6;
  @Deprecated('Use ANSI_FIXED_FONT instead')
  static const ANSI_FIXED_FONT = 11;
  @Deprecated('Use ANSI_VAR_FONT instead')
  static const ANSI_VAR_FONT = 12;
  @Deprecated('Use DEVICE_DEFAULT_FONT instead')
  static const DEVICE_DEFAULT_FONT = 14;
  @Deprecated('Use DEFAULT_GUI_FONT instead')
  static const DEFAULT_GUI_FONT = 17;
  @Deprecated('Use OEM_FIXED_FONT instead')
  static const OEM_FIXED_FONT = 10;
  @Deprecated('Use SYSTEM_FONT instead')
  static const SYSTEM_FONT = 13;
  @Deprecated('Use SYSTEM_FIXED_FONT instead')
  static const SYSTEM_FIXED_FONT = 16;
  @Deprecated('Use DEFAULT_PALETTE instead')
  static const DEFAULT_PALETTE = 15;
}

/// {@category enum}
extension type const GET_WINDOW_CMD(int _) implements int {
  @Deprecated('Use GW_CHILD instead')
  static const GW_CHILD = 5;
  @Deprecated('Use GW_ENABLEDPOPUP instead')
  static const GW_ENABLEDPOPUP = 6;
  @Deprecated('Use GW_HWNDFIRST instead')
  static const GW_HWNDFIRST = 0;
  @Deprecated('Use GW_HWNDLAST instead')
  static const GW_HWNDLAST = 1;
  @Deprecated('Use GW_HWNDNEXT instead')
  static const GW_HWNDNEXT = 2;
  @Deprecated('Use GW_HWNDPREV instead')
  static const GW_HWNDPREV = 3;
  @Deprecated('Use GW_OWNER instead')
  static const GW_OWNER = 4;
}

/// {@category enum}
extension type const GLOBAL_ALLOC_FLAGS(int _) implements int {
  @Deprecated('Use GHND instead')
  static const GHND = 66;
  @Deprecated('Use GMEM_FIXED instead')
  static const GMEM_FIXED = 0;
  @Deprecated('Use GMEM_MOVEABLE instead')
  static const GMEM_MOVEABLE = 2;
  @Deprecated('Use GMEM_ZEROINIT instead')
  static const GMEM_ZEROINIT = 64;
  @Deprecated('Use GPTR instead')
  static const GPTR = 64;
}

/// {@category enum}
extension type const GUITHREADINFO_FLAGS(int _) implements int {
  @Deprecated('Use GUI_CARETBLINKING instead')
  static const GUI_CARETBLINKING = 1;
  @Deprecated('Use GUI_INMENUMODE instead')
  static const GUI_INMENUMODE = 4;
  @Deprecated('Use GUI_INMOVESIZE instead')
  static const GUI_INMOVESIZE = 2;
  @Deprecated('Use GUI_POPUPMENUMODE instead')
  static const GUI_POPUPMENUMODE = 16;
  @Deprecated('Use GUI_SYSTEMMENUMODE instead')
  static const GUI_SYSTEMMENUMODE = 8;
}

/// {@category enum}
extension type const HANDLE_FLAGS(int _) implements int {
  @Deprecated('Use HANDLE_FLAG_INHERIT instead')
  static const HANDLE_FLAG_INHERIT = 1;
  @Deprecated('Use HANDLE_FLAG_PROTECT_FROM_CLOSE instead')
  static const HANDLE_FLAG_PROTECT_FROM_CLOSE = 2;
}

/// {@category enum}
extension type const HATCH_BRUSH_STYLE(int _) implements int {
  @Deprecated('Use HS_BDIAGONAL instead')
  static const HS_BDIAGONAL = 3;
  @Deprecated('Use HS_CROSS instead')
  static const HS_CROSS = 4;
  @Deprecated('Use HS_DIAGCROSS instead')
  static const HS_DIAGCROSS = 5;
  @Deprecated('Use HS_FDIAGONAL instead')
  static const HS_FDIAGONAL = 2;
  @Deprecated('Use HS_HORIZONTAL instead')
  static const HS_HORIZONTAL = 0;
  @Deprecated('Use HS_VERTICAL instead')
  static const HS_VERTICAL = 1;
}

/// {@category enum}
extension type const HDC_MAP_MODE(int _) implements int {
  @Deprecated('Use MM_ANISOTROPIC instead')
  static const MM_ANISOTROPIC = 8;
  @Deprecated('Use MM_HIENGLISH instead')
  static const MM_HIENGLISH = 5;
  @Deprecated('Use MM_HIMETRIC instead')
  static const MM_HIMETRIC = 3;
  @Deprecated('Use MM_ISOTROPIC instead')
  static const MM_ISOTROPIC = 7;
  @Deprecated('Use MM_LOENGLISH instead')
  static const MM_LOENGLISH = 4;
  @Deprecated('Use MM_LOMETRIC instead')
  static const MM_LOMETRIC = 2;
  @Deprecated('Use MM_TEXT instead')
  static const MM_TEXT = 1;
  @Deprecated('Use MM_TWIPS instead')
  static const MM_TWIPS = 6;
}

/// {@category enum}
extension type const HEAP_FLAGS(int _) implements int {
  @Deprecated('Use HEAP_NONE instead')
  static const HEAP_NONE = 0;
  @Deprecated('Use HEAP_NO_SERIALIZE instead')
  static const HEAP_NO_SERIALIZE = 1;
  @Deprecated('Use HEAP_GROWABLE instead')
  static const HEAP_GROWABLE = 2;
  @Deprecated('Use HEAP_GENERATE_EXCEPTIONS instead')
  static const HEAP_GENERATE_EXCEPTIONS = 4;
  @Deprecated('Use HEAP_ZERO_MEMORY instead')
  static const HEAP_ZERO_MEMORY = 8;
  @Deprecated('Use HEAP_REALLOC_IN_PLACE_ONLY instead')
  static const HEAP_REALLOC_IN_PLACE_ONLY = 16;
  @Deprecated('Use HEAP_TAIL_CHECKING_ENABLED instead')
  static const HEAP_TAIL_CHECKING_ENABLED = 32;
  @Deprecated('Use HEAP_FREE_CHECKING_ENABLED instead')
  static const HEAP_FREE_CHECKING_ENABLED = 64;
  @Deprecated('Use HEAP_DISABLE_COALESCE_ON_FREE instead')
  static const HEAP_DISABLE_COALESCE_ON_FREE = 128;
  @Deprecated('Use HEAP_CREATE_ALIGN_16 instead')
  static const HEAP_CREATE_ALIGN_16 = 65536;
  @Deprecated('Use HEAP_CREATE_ENABLE_TRACING instead')
  static const HEAP_CREATE_ENABLE_TRACING = 131072;
  @Deprecated('Use HEAP_CREATE_ENABLE_EXECUTE instead')
  static const HEAP_CREATE_ENABLE_EXECUTE = 262144;
  @Deprecated('Use HEAP_MAXIMUM_TAG instead')
  static const HEAP_MAXIMUM_TAG = 4095;
  @Deprecated('Use HEAP_PSEUDO_TAG_FLAG instead')
  static const HEAP_PSEUDO_TAG_FLAG = 32768;
  @Deprecated('Use HEAP_TAG_SHIFT instead')
  static const HEAP_TAG_SHIFT = 18;
  @Deprecated('Use HEAP_CREATE_SEGMENT_HEAP instead')
  static const HEAP_CREATE_SEGMENT_HEAP = 256;
  @Deprecated('Use HEAP_CREATE_HARDENED instead')
  static const HEAP_CREATE_HARDENED = 512;
}

/// Specifies the class of heap information to be set or retrieved.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ne-winnt-heap_information_class>.
///
/// {@category enum}
extension type const HEAP_INFORMATION_CLASS(int _) implements int {
  /// The heap features that are enabled.
  @Deprecated('Use HeapCompatibilityInformation instead')
  static const HeapCompatibilityInformation = 0;

  /// The terminate-on-corruption feature.
  @Deprecated('Use HeapEnableTerminationOnCorruption instead')
  static const HeapEnableTerminationOnCorruption = 1;
  @Deprecated('Use HeapOptimizeResources instead')
  static const HeapOptimizeResources = 3;
  @Deprecated('Use HeapTag instead')
  static const HeapTag = 7;
}

/// {@category enum}
extension type const HOT_KEY_MODIFIERS(int _) implements int {
  @Deprecated('Use MOD_ALT instead')
  static const MOD_ALT = 1;
  @Deprecated('Use MOD_CONTROL instead')
  static const MOD_CONTROL = 2;
  @Deprecated('Use MOD_NOREPEAT instead')
  static const MOD_NOREPEAT = 16384;
  @Deprecated('Use MOD_SHIFT instead')
  static const MOD_SHIFT = 4;
  @Deprecated('Use MOD_WIN instead')
  static const MOD_WIN = 8;
}

/// {@category enum}
extension type const IDLFLAGS(int _) implements int {
  @Deprecated('Use IDLFLAG_NONE instead')
  static const IDLFLAG_NONE = 0;
  @Deprecated('Use IDLFLAG_FIN instead')
  static const IDLFLAG_FIN = 1;
  @Deprecated('Use IDLFLAG_FOUT instead')
  static const IDLFLAG_FOUT = 2;
  @Deprecated('Use IDLFLAG_FLCID instead')
  static const IDLFLAG_FLCID = 4;
  @Deprecated('Use IDLFLAG_FRETVAL instead')
  static const IDLFLAG_FRETVAL = 8;
}

/// Specifies the operational status of an interface.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ne-ifdef-if_oper_status>.
///
/// {@category enum}
extension type const IF_OPER_STATUS(int _) implements int {
  /// The interface is up and operational.
  @Deprecated('Use IfOperStatusUp instead')
  static const IfOperStatusUp = 1;

  /// The interface is not down and not operational.
  @Deprecated('Use IfOperStatusDown instead')
  static const IfOperStatusDown = 2;

  /// The interface is being tested.
  @Deprecated('Use IfOperStatusTesting instead')
  static const IfOperStatusTesting = 3;

  /// The interface status is unknown.
  @Deprecated('Use IfOperStatusUnknown instead')
  static const IfOperStatusUnknown = 4;

  /// The interface is not in a condition to pass packets.
  @Deprecated('Use IfOperStatusDormant instead')
  static const IfOperStatusDormant = 5;

  /// This state is a refinement on the down state which indicates that the
  /// interface is down specifically because some component (for example, a
  /// hardware component) is not present in the system.
  @Deprecated('Use IfOperStatusNotPresent instead')
  static const IfOperStatusNotPresent = 6;

  /// This state is a refinement on the down state.
  @Deprecated('Use IfOperStatusLowerLayerDown instead')
  static const IfOperStatusLowerLayerDown = 7;
}

/// Lists the extended symbol options that you can get and set by using the
/// SymGetExtendedOption and SymSetExtendedOption functions.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/ne-dbghelp-imagehlp_extended_options>.
///
/// {@category enum}
extension type const IMAGEHLP_EXTENDED_OPTIONS(int _) implements int {
  /// Turns off explicit updates to the last access time of a symbol that is
  /// loaded.
  @Deprecated('Use SYMOPT_EX_DISABLEACCESSTIMEUPDATE instead')
  static const SYMOPT_EX_DISABLEACCESSTIMEUPDATE = 0;
  @Deprecated('Use SYMOPT_EX_LASTVALIDDEBUGDIRECTORY instead')
  static const SYMOPT_EX_LASTVALIDDEBUGDIRECTORY = 1;
  @Deprecated('Use SYMOPT_EX_NOIMPLICITPATTERNSEARCH instead')
  static const SYMOPT_EX_NOIMPLICITPATTERNSEARCH = 2;
  @Deprecated('Use SYMOPT_EX_NEVERLOADSYMBOLS instead')
  static const SYMOPT_EX_NEVERLOADSYMBOLS = 3;
  @Deprecated('Use SYMOPT_EX_MAX instead')
  static const SYMOPT_EX_MAX = 4;
}

/// {@category enum}
extension type const IMAGE_FILE_MACHINE(int _) implements int {
  @Deprecated('Use IMAGE_FILE_MACHINE_AXP64 instead')
  static const IMAGE_FILE_MACHINE_AXP64 = 644;
  @Deprecated('Use IMAGE_FILE_MACHINE_I386 instead')
  static const IMAGE_FILE_MACHINE_I386 = 332;
  @Deprecated('Use IMAGE_FILE_MACHINE_IA64 instead')
  static const IMAGE_FILE_MACHINE_IA64 = 512;
  @Deprecated('Use IMAGE_FILE_MACHINE_AMD64 instead')
  static const IMAGE_FILE_MACHINE_AMD64 = 34404;
  @Deprecated('Use IMAGE_FILE_MACHINE_UNKNOWN instead')
  static const IMAGE_FILE_MACHINE_UNKNOWN = 0;
  @Deprecated('Use IMAGE_FILE_MACHINE_TARGET_HOST instead')
  static const IMAGE_FILE_MACHINE_TARGET_HOST = 1;
  @Deprecated('Use IMAGE_FILE_MACHINE_R3000 instead')
  static const IMAGE_FILE_MACHINE_R3000 = 354;
  @Deprecated('Use IMAGE_FILE_MACHINE_R4000 instead')
  static const IMAGE_FILE_MACHINE_R4000 = 358;
  @Deprecated('Use IMAGE_FILE_MACHINE_R10000 instead')
  static const IMAGE_FILE_MACHINE_R10000 = 360;
  @Deprecated('Use IMAGE_FILE_MACHINE_WCEMIPSV2 instead')
  static const IMAGE_FILE_MACHINE_WCEMIPSV2 = 361;
  @Deprecated('Use IMAGE_FILE_MACHINE_ALPHA instead')
  static const IMAGE_FILE_MACHINE_ALPHA = 388;
  @Deprecated('Use IMAGE_FILE_MACHINE_SH3 instead')
  static const IMAGE_FILE_MACHINE_SH3 = 418;
  @Deprecated('Use IMAGE_FILE_MACHINE_SH3DSP instead')
  static const IMAGE_FILE_MACHINE_SH3DSP = 419;
  @Deprecated('Use IMAGE_FILE_MACHINE_SH3E instead')
  static const IMAGE_FILE_MACHINE_SH3E = 420;
  @Deprecated('Use IMAGE_FILE_MACHINE_SH4 instead')
  static const IMAGE_FILE_MACHINE_SH4 = 422;
  @Deprecated('Use IMAGE_FILE_MACHINE_SH5 instead')
  static const IMAGE_FILE_MACHINE_SH5 = 424;
  @Deprecated('Use IMAGE_FILE_MACHINE_ARM instead')
  static const IMAGE_FILE_MACHINE_ARM = 448;
  @Deprecated('Use IMAGE_FILE_MACHINE_THUMB instead')
  static const IMAGE_FILE_MACHINE_THUMB = 450;
  @Deprecated('Use IMAGE_FILE_MACHINE_ARMNT instead')
  static const IMAGE_FILE_MACHINE_ARMNT = 452;
  @Deprecated('Use IMAGE_FILE_MACHINE_AM33 instead')
  static const IMAGE_FILE_MACHINE_AM33 = 467;
  @Deprecated('Use IMAGE_FILE_MACHINE_POWERPC instead')
  static const IMAGE_FILE_MACHINE_POWERPC = 496;
  @Deprecated('Use IMAGE_FILE_MACHINE_POWERPCFP instead')
  static const IMAGE_FILE_MACHINE_POWERPCFP = 497;
  @Deprecated('Use IMAGE_FILE_MACHINE_MIPS16 instead')
  static const IMAGE_FILE_MACHINE_MIPS16 = 614;
  @Deprecated('Use IMAGE_FILE_MACHINE_ALPHA64 instead')
  static const IMAGE_FILE_MACHINE_ALPHA64 = 644;
  @Deprecated('Use IMAGE_FILE_MACHINE_MIPSFPU instead')
  static const IMAGE_FILE_MACHINE_MIPSFPU = 870;
  @Deprecated('Use IMAGE_FILE_MACHINE_MIPSFPU16 instead')
  static const IMAGE_FILE_MACHINE_MIPSFPU16 = 1126;
  @Deprecated('Use IMAGE_FILE_MACHINE_TRICORE instead')
  static const IMAGE_FILE_MACHINE_TRICORE = 1312;
  @Deprecated('Use IMAGE_FILE_MACHINE_CEF instead')
  static const IMAGE_FILE_MACHINE_CEF = 3311;
  @Deprecated('Use IMAGE_FILE_MACHINE_EBC instead')
  static const IMAGE_FILE_MACHINE_EBC = 3772;
  @Deprecated('Use IMAGE_FILE_MACHINE_M32R instead')
  static const IMAGE_FILE_MACHINE_M32R = 36929;
  @Deprecated('Use IMAGE_FILE_MACHINE_ARM64 instead')
  static const IMAGE_FILE_MACHINE_ARM64 = 43620;
  @Deprecated('Use IMAGE_FILE_MACHINE_CEE instead')
  static const IMAGE_FILE_MACHINE_CEE = 49390;
}

/// {@category enum}
extension type const IMAGE_FLAGS(int _) implements int {
  @Deprecated('Use LR_CREATEDIBSECTION instead')
  static const LR_CREATEDIBSECTION = 8192;
  @Deprecated('Use LR_DEFAULTCOLOR instead')
  static const LR_DEFAULTCOLOR = 0;
  @Deprecated('Use LR_DEFAULTSIZE instead')
  static const LR_DEFAULTSIZE = 64;
  @Deprecated('Use LR_LOADFROMFILE instead')
  static const LR_LOADFROMFILE = 16;
  @Deprecated('Use LR_LOADMAP3DCOLORS instead')
  static const LR_LOADMAP3DCOLORS = 4096;
  @Deprecated('Use LR_LOADTRANSPARENT instead')
  static const LR_LOADTRANSPARENT = 32;
  @Deprecated('Use LR_MONOCHROME instead')
  static const LR_MONOCHROME = 1;
  @Deprecated('Use LR_SHARED instead')
  static const LR_SHARED = 32768;
  @Deprecated('Use LR_VGACOLOR instead')
  static const LR_VGACOLOR = 128;
  @Deprecated('Use LR_COPYDELETEORG instead')
  static const LR_COPYDELETEORG = 8;
  @Deprecated('Use LR_COPYFROMRESOURCE instead')
  static const LR_COPYFROMRESOURCE = 16384;
  @Deprecated('Use LR_COPYRETURNORG instead')
  static const LR_COPYRETURNORG = 4;
}

/// {@category enum}
extension type const IMPLTYPEFLAGS(int _) implements int {
  @Deprecated('Use IMPLTYPEFLAG_FDEFAULT instead')
  static const IMPLTYPEFLAG_FDEFAULT = 1;
  @Deprecated('Use IMPLTYPEFLAG_FSOURCE instead')
  static const IMPLTYPEFLAG_FSOURCE = 2;
  @Deprecated('Use IMPLTYPEFLAG_FRESTRICTED instead')
  static const IMPLTYPEFLAG_FRESTRICTED = 4;
  @Deprecated('Use IMPLTYPEFLAG_FDEFAULTVTABLE instead')
  static const IMPLTYPEFLAG_FDEFAULTVTABLE = 8;
}

/// {@category enum}
extension type const INITCOMMONCONTROLSEX_ICC(int _) implements int {
  @Deprecated('Use ICC_ANIMATE_CLASS instead')
  static const ICC_ANIMATE_CLASS = 128;
  @Deprecated('Use ICC_BAR_CLASSES instead')
  static const ICC_BAR_CLASSES = 4;
  @Deprecated('Use ICC_COOL_CLASSES instead')
  static const ICC_COOL_CLASSES = 1024;
  @Deprecated('Use ICC_DATE_CLASSES instead')
  static const ICC_DATE_CLASSES = 256;
  @Deprecated('Use ICC_HOTKEY_CLASS instead')
  static const ICC_HOTKEY_CLASS = 64;
  @Deprecated('Use ICC_INTERNET_CLASSES instead')
  static const ICC_INTERNET_CLASSES = 2048;
  @Deprecated('Use ICC_LINK_CLASS instead')
  static const ICC_LINK_CLASS = 32768;
  @Deprecated('Use ICC_LISTVIEW_CLASSES instead')
  static const ICC_LISTVIEW_CLASSES = 1;
  @Deprecated('Use ICC_NATIVEFNTCTL_CLASS instead')
  static const ICC_NATIVEFNTCTL_CLASS = 8192;
  @Deprecated('Use ICC_PAGESCROLLER_CLASS instead')
  static const ICC_PAGESCROLLER_CLASS = 4096;
  @Deprecated('Use ICC_PROGRESS_CLASS instead')
  static const ICC_PROGRESS_CLASS = 32;
  @Deprecated('Use ICC_STANDARD_CLASSES instead')
  static const ICC_STANDARD_CLASSES = 16384;
  @Deprecated('Use ICC_TAB_CLASSES instead')
  static const ICC_TAB_CLASSES = 8;
  @Deprecated('Use ICC_TREEVIEW_CLASSES instead')
  static const ICC_TREEVIEW_CLASSES = 2;
  @Deprecated('Use ICC_UPDOWN_CLASS instead')
  static const ICC_UPDOWN_CLASS = 16;
  @Deprecated('Use ICC_USEREX_CLASSES instead')
  static const ICC_USEREX_CLASSES = 512;
  @Deprecated('Use ICC_WIN95_CLASSES instead')
  static const ICC_WIN95_CLASSES = 255;
}

/// {@category enum}
extension type const INPUT_TYPE(int _) implements int {
  @Deprecated('Use INPUT_MOUSE instead')
  static const INPUT_MOUSE = 0;
  @Deprecated('Use INPUT_KEYBOARD instead')
  static const INPUT_KEYBOARD = 1;
  @Deprecated('Use INPUT_HARDWARE instead')
  static const INPUT_HARDWARE = 2;
}

/// Specifies the way a function is invoked.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-invokekind>.
///
/// {@category enum}
extension type const INVOKEKIND(int _) implements int {
  /// The member is called using a normal function invocation syntax.
  @Deprecated('Use INVOKE_FUNC instead')
  static const INVOKE_FUNC = 1;

  /// The function is invoked using a normal property-access syntax.
  @Deprecated('Use INVOKE_PROPERTYGET instead')
  static const INVOKE_PROPERTYGET = 2;

  /// The function is invoked using a property value assignment syntax.
  @Deprecated('Use INVOKE_PROPERTYPUT instead')
  static const INVOKE_PROPERTYPUT = 4;

  /// The function is invoked using a property reference assignment syntax.
  @Deprecated('Use INVOKE_PROPERTYPUTREF instead')
  static const INVOKE_PROPERTYPUTREF = 8;
}

/// {@category enum}
extension type const JOBOBJECTINFOCLASS(int _) implements int {
  @Deprecated('Use JobObjectBasicAccountingInformation instead')
  static const JobObjectBasicAccountingInformation = 1;
  @Deprecated('Use JobObjectBasicLimitInformation instead')
  static const JobObjectBasicLimitInformation = 2;
  @Deprecated('Use JobObjectBasicProcessIdList instead')
  static const JobObjectBasicProcessIdList = 3;
  @Deprecated('Use JobObjectBasicUIRestrictions instead')
  static const JobObjectBasicUIRestrictions = 4;
  @Deprecated('Use JobObjectSecurityLimitInformation instead')
  static const JobObjectSecurityLimitInformation = 5;
  @Deprecated('Use JobObjectEndOfJobTimeInformation instead')
  static const JobObjectEndOfJobTimeInformation = 6;
  @Deprecated('Use JobObjectAssociateCompletionPortInformation instead')
  static const JobObjectAssociateCompletionPortInformation = JOBOBJECTINFOCLASS(
    7,
  );
  @Deprecated('Use JobObjectBasicAndIoAccountingInformation instead')
  static const JobObjectBasicAndIoAccountingInformation = 8;
  @Deprecated('Use JobObjectExtendedLimitInformation instead')
  static const JobObjectExtendedLimitInformation = 9;
  @Deprecated('Use JobObjectJobSetInformation instead')
  static const JobObjectJobSetInformation = 10;
  @Deprecated('Use JobObjectGroupInformation instead')
  static const JobObjectGroupInformation = 11;
  @Deprecated('Use JobObjectNotificationLimitInformation instead')
  static const JobObjectNotificationLimitInformation = 12;
  @Deprecated('Use JobObjectLimitViolationInformation instead')
  static const JobObjectLimitViolationInformation = 13;
  @Deprecated('Use JobObjectGroupInformationEx instead')
  static const JobObjectGroupInformationEx = 14;
  @Deprecated('Use JobObjectCpuRateControlInformation instead')
  static const JobObjectCpuRateControlInformation = 15;
  @Deprecated('Use JobObjectCompletionFilter instead')
  static const JobObjectCompletionFilter = 16;
  @Deprecated('Use JobObjectCompletionCounter instead')
  static const JobObjectCompletionCounter = 17;
  @Deprecated('Use JobObjectReserved1Information instead')
  static const JobObjectReserved1Information = 18;
  @Deprecated('Use JobObjectReserved2Information instead')
  static const JobObjectReserved2Information = 19;
  @Deprecated('Use JobObjectReserved3Information instead')
  static const JobObjectReserved3Information = 20;
  @Deprecated('Use JobObjectReserved4Information instead')
  static const JobObjectReserved4Information = 21;
  @Deprecated('Use JobObjectReserved5Information instead')
  static const JobObjectReserved5Information = 22;
  @Deprecated('Use JobObjectReserved6Information instead')
  static const JobObjectReserved6Information = 23;
  @Deprecated('Use JobObjectReserved7Information instead')
  static const JobObjectReserved7Information = 24;
  @Deprecated('Use JobObjectReserved8Information instead')
  static const JobObjectReserved8Information = 25;
  @Deprecated('Use JobObjectReserved9Information instead')
  static const JobObjectReserved9Information = 26;
  @Deprecated('Use JobObjectReserved10Information instead')
  static const JobObjectReserved10Information = 27;
  @Deprecated('Use JobObjectReserved11Information instead')
  static const JobObjectReserved11Information = 28;
  @Deprecated('Use JobObjectReserved12Information instead')
  static const JobObjectReserved12Information = 29;
  @Deprecated('Use JobObjectReserved13Information instead')
  static const JobObjectReserved13Information = 30;
  @Deprecated('Use JobObjectReserved14Information instead')
  static const JobObjectReserved14Information = 31;
  @Deprecated('Use JobObjectNetRateControlInformation instead')
  static const JobObjectNetRateControlInformation = 32;
  @Deprecated('Use JobObjectNotificationLimitInformation2 instead')
  static const JobObjectNotificationLimitInformation2 = 33;
  @Deprecated('Use JobObjectLimitViolationInformation2 instead')
  static const JobObjectLimitViolationInformation2 = 34;
  @Deprecated('Use JobObjectCreateSilo instead')
  static const JobObjectCreateSilo = 35;
  @Deprecated('Use JobObjectSiloBasicInformation instead')
  static const JobObjectSiloBasicInformation = 36;
  @Deprecated('Use JobObjectReserved15Information instead')
  static const JobObjectReserved15Information = 37;
  @Deprecated('Use JobObjectReserved16Information instead')
  static const JobObjectReserved16Information = 38;
  @Deprecated('Use JobObjectReserved17Information instead')
  static const JobObjectReserved17Information = 39;
  @Deprecated('Use JobObjectReserved18Information instead')
  static const JobObjectReserved18Information = 40;
  @Deprecated('Use JobObjectReserved19Information instead')
  static const JobObjectReserved19Information = 41;
  @Deprecated('Use JobObjectReserved20Information instead')
  static const JobObjectReserved20Information = 42;
  @Deprecated('Use JobObjectReserved21Information instead')
  static const JobObjectReserved21Information = 43;
  @Deprecated('Use JobObjectReserved22Information instead')
  static const JobObjectReserved22Information = 44;
  @Deprecated('Use JobObjectReserved23Information instead')
  static const JobObjectReserved23Information = 45;
  @Deprecated('Use JobObjectReserved24Information instead')
  static const JobObjectReserved24Information = 46;
  @Deprecated('Use JobObjectReserved25Information instead')
  static const JobObjectReserved25Information = 47;
  @Deprecated('Use JobObjectReserved26Information instead')
  static const JobObjectReserved26Information = 48;
  @Deprecated('Use JobObjectReserved27Information instead')
  static const JobObjectReserved27Information = 49;
  @Deprecated('Use MaxJobObjectInfoClass instead')
  static const MaxJobObjectInfoClass = 50;
}

/// {@category enum}
extension type const KBDLLHOOKSTRUCT_FLAGS(int _) implements int {
  @Deprecated('Use LLKHF_EXTENDED instead')
  static const LLKHF_EXTENDED = 1;
  @Deprecated('Use LLKHF_ALTDOWN instead')
  static const LLKHF_ALTDOWN = 32;
  @Deprecated('Use LLKHF_UP instead')
  static const LLKHF_UP = 128;
  @Deprecated('Use LLKHF_INJECTED instead')
  static const LLKHF_INJECTED = 16;
  @Deprecated('Use LLKHF_LOWER_IL_INJECTED instead')
  static const LLKHF_LOWER_IL_INJECTED = 2;
}

/// {@category enum}
extension type const KEYBD_EVENT_FLAGS(int _) implements int {
  @Deprecated('Use KEYEVENTF_EXTENDEDKEY instead')
  static const KEYEVENTF_EXTENDEDKEY = 1;
  @Deprecated('Use KEYEVENTF_KEYUP instead')
  static const KEYEVENTF_KEYUP = 2;
  @Deprecated('Use KEYEVENTF_SCANCODE instead')
  static const KEYEVENTF_SCANCODE = 8;
  @Deprecated('Use KEYEVENTF_UNICODE instead')
  static const KEYEVENTF_UNICODE = 4;
}

/// Defines constants that specify special retrieval options for known folders.
///
/// These values supersede CSIDL values, which have parallel meanings.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/ne-shlobj_core-known_folder_flag>.
///
/// {@category enum}
extension type const KNOWN_FOLDER_FLAG(int _) implements int {
  /// Specifies no special retrieval options.
  @Deprecated('Use KF_FLAG_DEFAULT instead')
  static const KF_FLAG_DEFAULT = 0;
  @Deprecated('Use KF_FLAG_FORCE_APP_DATA_REDIRECTION instead')
  static const KF_FLAG_FORCE_APP_DATA_REDIRECTION = 524288;
  @Deprecated('Use KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET instead')
  static const KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = 262144;
  @Deprecated('Use KF_FLAG_FORCE_PACKAGE_REDIRECTION instead')
  static const KF_FLAG_FORCE_PACKAGE_REDIRECTION = 131072;
  @Deprecated('Use KF_FLAG_NO_PACKAGE_REDIRECTION instead')
  static const KF_FLAG_NO_PACKAGE_REDIRECTION = 65536;
  @Deprecated('Use KF_FLAG_FORCE_APPCONTAINER_REDIRECTION instead')
  static const KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = 131072;
  @Deprecated('Use KF_FLAG_NO_APPCONTAINER_REDIRECTION instead')
  static const KF_FLAG_NO_APPCONTAINER_REDIRECTION = 65536;

  /// Specifies to force the creation of the specified folder if that folder
  /// doesn't already exist.
  @Deprecated('Use KF_FLAG_CREATE instead')
  static const KF_FLAG_CREATE = 32768;

  /// Specifies not to verify the folder's existence before attempting to
  /// retrieve the path or IDList.
  @Deprecated('Use KF_FLAG_DONT_VERIFY instead')
  static const KF_FLAG_DONT_VERIFY = 16384;

  /// Specfies to store the full path in the registry without using environment
  /// strings.
  @Deprecated('Use KF_FLAG_DONT_UNEXPAND instead')
  static const KF_FLAG_DONT_UNEXPAND = 8192;

  /// Specifies to retrieve the true system path for the folder, free of any
  /// aliased placeholders such as `%USERPROFILE%`, returned by
  /// `SHGetKnownFolderIDList` and
  /// [IKnownFolder::GetIDList](/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getidlist).
  @Deprecated('Use KF_FLAG_NO_ALIAS instead')
  static const KF_FLAG_NO_ALIAS = 4096;

  /// Specifies to initialize the folder using its `Desktop.ini` settings.
  @Deprecated('Use KF_FLAG_INIT instead')
  static const KF_FLAG_INIT = 2048;

  /// Specifies to retrieve the default path for a known folder.
  @Deprecated('Use KF_FLAG_DEFAULT_PATH instead')
  static const KF_FLAG_DEFAULT_PATH = 1024;

  /// Specifies to retrieve the folder's default path independent of the current
  /// location of its parent.
  @Deprecated('Use KF_FLAG_NOT_PARENT_RELATIVE instead')
  static const KF_FLAG_NOT_PARENT_RELATIVE = 512;

  /// Specifies to build a simple IDList (PIDL).
  @Deprecated('Use KF_FLAG_SIMPLE_IDLIST instead')
  static const KF_FLAG_SIMPLE_IDLIST = 256;
  @Deprecated('Use KF_FLAG_ALIAS_ONLY instead')
  static const KF_FLAG_ALIAS_ONLY = -2147483648;
}

/// {@category enum}
extension type const LAYERED_WINDOW_ATTRIBUTES_FLAGS(int _) implements int {
  @Deprecated('Use LWA_ALPHA instead')
  static const LWA_ALPHA = 2;
  @Deprecated('Use LWA_COLORKEY instead')
  static const LWA_COLORKEY = 1;
}

/// {@category enum}
extension type const LOAD_LIBRARY_FLAGS(int _) implements int {
  @Deprecated('Use DONT_RESOLVE_DLL_REFERENCES instead')
  static const DONT_RESOLVE_DLL_REFERENCES = 1;
  @Deprecated('Use LOAD_LIBRARY_AS_DATAFILE instead')
  static const LOAD_LIBRARY_AS_DATAFILE = 2;
  @Deprecated('Use LOAD_WITH_ALTERED_SEARCH_PATH instead')
  static const LOAD_WITH_ALTERED_SEARCH_PATH = 8;
  @Deprecated('Use LOAD_IGNORE_CODE_AUTHZ_LEVEL instead')
  static const LOAD_IGNORE_CODE_AUTHZ_LEVEL = 16;
  @Deprecated('Use LOAD_LIBRARY_AS_IMAGE_RESOURCE instead')
  static const LOAD_LIBRARY_AS_IMAGE_RESOURCE = 32;
  @Deprecated('Use LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE instead')
  static const LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 64;
  @Deprecated('Use LOAD_LIBRARY_REQUIRE_SIGNED_TARGET instead')
  static const LOAD_LIBRARY_REQUIRE_SIGNED_TARGET = 128;
  @Deprecated('Use LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR instead')
  static const LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 256;
  @Deprecated('Use LOAD_LIBRARY_SEARCH_APPLICATION_DIR instead')
  static const LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 512;
  @Deprecated('Use LOAD_LIBRARY_SEARCH_USER_DIRS instead')
  static const LOAD_LIBRARY_SEARCH_USER_DIRS = 1024;
  @Deprecated('Use LOAD_LIBRARY_SEARCH_SYSTEM32 instead')
  static const LOAD_LIBRARY_SEARCH_SYSTEM32 = 2048;
  @Deprecated('Use LOAD_LIBRARY_SEARCH_DEFAULT_DIRS instead')
  static const LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 4096;
  @Deprecated('Use LOAD_LIBRARY_SAFE_CURRENT_DIRS instead')
  static const LOAD_LIBRARY_SAFE_CURRENT_DIRS = 8192;
  @Deprecated('Use LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER instead')
  static const LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER = LOAD_LIBRARY_FLAGS(
    16384,
  );
}

/// {@category enum}
extension type const LOCK_FILE_FLAGS(int _) implements int {
  @Deprecated('Use LOCKFILE_EXCLUSIVE_LOCK instead')
  static const LOCKFILE_EXCLUSIVE_LOCK = 2;
  @Deprecated('Use LOCKFILE_FAIL_IMMEDIATELY instead')
  static const LOCKFILE_FAIL_IMMEDIATELY = 1;
}

/// Represents the relationship between the processor set identified in the
/// corresponding SYSTEM_LOGICAL_PROCESSOR_INFORMATION or
/// SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX structure.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ne-winnt-logical_processor_relationship>.
///
/// {@category enum}
extension type const LOGICAL_PROCESSOR_RELATIONSHIP(int _) implements int {
  /// The specified logical processors share a single processor core.
  @Deprecated('Use RelationProcessorCore instead')
  static const RelationProcessorCore = 0;

  /// The specified logical processors are part of the same NUMA node.
  @Deprecated('Use RelationNumaNode instead')
  static const RelationNumaNode = 1;

  /// The specified logical processors share a cache.
  @Deprecated('Use RelationCache instead')
  static const RelationCache = 2;

  /// The specified logical processors share a physical package (a single
  /// package socketed or soldered onto a motherboard may contain multiple
  /// processor cores or threads, each of which is treated as a separate
  /// processor by the operating system).
  @Deprecated('Use RelationProcessorPackage instead')
  static const RelationProcessorPackage = 3;

  /// The specified logical processors share a single <a
  /// href="https://docs.microsoft.com/windows/desktop/ProcThread/processor-groups">processor
  /// group</a>.
  @Deprecated('Use RelationGroup instead')
  static const RelationGroup = 4;

  /// The specified logical processors share a single processor die.
  @Deprecated('Use RelationProcessorDie instead')
  static const RelationProcessorDie = 5;

  /// Requests that the full affinity be returned.
  @Deprecated('Use RelationNumaNodeEx instead')
  static const RelationNumaNodeEx = 6;
  @Deprecated('Use RelationProcessorModule instead')
  static const RelationProcessorModule = 7;

  /// On input, retrieves information about all possible relationship types.
  @Deprecated('Use RelationAll instead')
  static const RelationAll = 65535;
}

/// Contains possible values for the LiveSetting property.
///
/// This property is implemented by provider elements that are part of a live
/// region.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-livesetting>.
///
/// {@category enum}
extension type const LiveSetting(int _) implements int {
  @Deprecated('Use Off instead')
  static const Off = 0;
  @Deprecated('Use Polite instead')
  static const Polite = 1;
  @Deprecated('Use Assertive instead')
  static const Assertive = 2;
}

/// Specifies the ways in which an architecture of code can run on a host
/// operating system.
///
/// More than one bit may be set.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/ne-processthreadsapi-machine_attributes>.
///
/// {@category enum}
extension type const MACHINE_ATTRIBUTES(int _) implements int {
  /// The specified architecture of code can run in user mode.
  @Deprecated('Use UserEnabled instead')
  static const UserEnabled = 1;

  /// The specified architecture of code can run in kernel mode.
  @Deprecated('Use KernelEnabled instead')
  static const KernelEnabled = 2;

  /// The specified architecture of code runs by relying on WOW64's namespace
  /// `File System Redirector` and `Registry Redirector`.
  @Deprecated('Use Wow64Container instead')
  static const Wow64Container = 4;
}

/// {@category enum}
extension type const MAP_VIRTUAL_KEY_TYPE(int _) implements int {
  @Deprecated('Use MAPVK_VK_TO_VSC instead')
  static const MAPVK_VK_TO_VSC = 0;
  @Deprecated('Use MAPVK_VSC_TO_VK instead')
  static const MAPVK_VSC_TO_VK = 1;
  @Deprecated('Use MAPVK_VK_TO_CHAR instead')
  static const MAPVK_VK_TO_CHAR = 2;
  @Deprecated('Use MAPVK_VSC_TO_VK_EX instead')
  static const MAPVK_VSC_TO_VK_EX = 3;
  @Deprecated('Use MAPVK_VK_TO_VSC_EX instead')
  static const MAPVK_VK_TO_VSC_EX = 4;
}

/// Represents the various forms of device media.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ne-winioctl-media_type>.
///
/// {@category enum}
extension type const MEDIA_TYPE(int _) implements int {
  /// Format is unknown
  @Deprecated('Use Unknown instead')
  static const Unknown = 0;

  /// A 5.25" floppy, with 1.2MB and 512 bytes/sector.
  @Deprecated('Use F5_1Pt2_512 instead')
  static const F5_1Pt2_512 = 1;

  /// A 3.5" floppy, with 1.44MB and 512 bytes/sector.
  @Deprecated('Use F3_1Pt44_512 instead')
  static const F3_1Pt44_512 = 2;

  /// A 3.5" floppy, with 2.88MB and 512 bytes/sector.
  @Deprecated('Use F3_2Pt88_512 instead')
  static const F3_2Pt88_512 = 3;

  /// A 3.5" floppy, with 20.8MB and 512 bytes/sector.
  @Deprecated('Use F3_20Pt8_512 instead')
  static const F3_20Pt8_512 = 4;

  /// A 3.5" floppy, with 720KB and 512 bytes/sector.
  @Deprecated('Use F3_720_512 instead')
  static const F3_720_512 = 5;

  /// A 5.25" floppy, with 360KB and 512 bytes/sector.
  @Deprecated('Use F5_360_512 instead')
  static const F5_360_512 = 6;

  /// A 5.25" floppy, with 320KB and 512 bytes/sector.
  @Deprecated('Use F5_320_512 instead')
  static const F5_320_512 = 7;

  /// A 5.25" floppy, with 320KB and 1024 bytes/sector.
  @Deprecated('Use F5_320_1024 instead')
  static const F5_320_1024 = 8;

  /// A 5.25" floppy, with 180KB and 512 bytes/sector.
  @Deprecated('Use F5_180_512 instead')
  static const F5_180_512 = 9;

  /// A 5.25" floppy, with 160KB and 512 bytes/sector.
  @Deprecated('Use F5_160_512 instead')
  static const F5_160_512 = 10;

  /// Removable media other than floppy.
  @Deprecated('Use RemovableMedia instead')
  static const RemovableMedia = 11;

  /// Fixed hard disk media.
  @Deprecated('Use FixedMedia instead')
  static const FixedMedia = 12;

  /// A 3.5" floppy, with 120MB and 512 bytes/sector.
  @Deprecated('Use F3_120M_512 instead')
  static const F3_120M_512 = 13;

  /// A 3.5" floppy, with 640KB and 512 bytes/sector.
  @Deprecated('Use F3_640_512 instead')
  static const F3_640_512 = 14;

  /// A 5.25" floppy, with 640KB and 512 bytes/sector.
  @Deprecated('Use F5_640_512 instead')
  static const F5_640_512 = 15;

  /// A 5.25" floppy, with 720KB and 512 bytes/sector.
  @Deprecated('Use F5_720_512 instead')
  static const F5_720_512 = 16;

  /// A 3.5" floppy, with 1.2MB and 512 bytes/sector.
  @Deprecated('Use F3_1Pt2_512 instead')
  static const F3_1Pt2_512 = 17;

  /// A 3.5" floppy, with 1.23MB and 1024 bytes/sector.
  @Deprecated('Use F3_1Pt23_1024 instead')
  static const F3_1Pt23_1024 = 18;

  /// A 5.25" floppy, with 1.23MB and 1024 bytes/sector.
  @Deprecated('Use F5_1Pt23_1024 instead')
  static const F5_1Pt23_1024 = 19;

  /// A 3.5" floppy, with 128MB and 512 bytes/sector.
  @Deprecated('Use F3_128Mb_512 instead')
  static const F3_128Mb_512 = 20;

  /// A 3.5" floppy, with 230MB and 512 bytes/sector.
  @Deprecated('Use F3_230Mb_512 instead')
  static const F3_230Mb_512 = 21;

  /// An 8" floppy, with 256KB and 128 bytes/sector.
  @Deprecated('Use F8_256_128 instead')
  static const F8_256_128 = 22;

  /// A 3.5" floppy, with 200MB and 512 bytes/sector.
  @Deprecated('Use F3_200Mb_512 instead')
  static const F3_200Mb_512 = 23;

  /// A 3.5" floppy, with 240MB and 512 bytes/sector.
  @Deprecated('Use F3_240M_512 instead')
  static const F3_240M_512 = 24;

  /// A 3.5" floppy, with 32MB and 512 bytes/sector.
  @Deprecated('Use F3_32M_512 instead')
  static const F3_32M_512 = 25;
}

/// {@category enum}
extension type const MENUINFO_MASK(int _) implements int {
  @Deprecated('Use MIM_APPLYTOSUBMENUS instead')
  static const MIM_APPLYTOSUBMENUS = 2147483648;
  @Deprecated('Use MIM_BACKGROUND instead')
  static const MIM_BACKGROUND = 2;
  @Deprecated('Use MIM_HELPID instead')
  static const MIM_HELPID = 4;
  @Deprecated('Use MIM_MAXHEIGHT instead')
  static const MIM_MAXHEIGHT = 1;
  @Deprecated('Use MIM_MENUDATA instead')
  static const MIM_MENUDATA = 8;
  @Deprecated('Use MIM_STYLE instead')
  static const MIM_STYLE = 16;
}

/// {@category enum}
extension type const MENUINFO_STYLE(int _) implements int {
  @Deprecated('Use MNS_AUTODISMISS instead')
  static const MNS_AUTODISMISS = 268435456;
  @Deprecated('Use MNS_CHECKORBMP instead')
  static const MNS_CHECKORBMP = 67108864;
  @Deprecated('Use MNS_DRAGDROP instead')
  static const MNS_DRAGDROP = 536870912;
  @Deprecated('Use MNS_MODELESS instead')
  static const MNS_MODELESS = 1073741824;
  @Deprecated('Use MNS_NOCHECK instead')
  static const MNS_NOCHECK = 2147483648;
  @Deprecated('Use MNS_NOTIFYBYPOS instead')
  static const MNS_NOTIFYBYPOS = 134217728;
}

/// {@category enum}
extension type const MENU_ITEM_FLAGS(int _) implements int {
  @Deprecated('Use MF_BYCOMMAND instead')
  static const MF_BYCOMMAND = 0;
  @Deprecated('Use MF_BYPOSITION instead')
  static const MF_BYPOSITION = 1024;
  @Deprecated('Use MF_BITMAP instead')
  static const MF_BITMAP = 4;
  @Deprecated('Use MF_CHECKED instead')
  static const MF_CHECKED = 8;
  @Deprecated('Use MF_DISABLED instead')
  static const MF_DISABLED = 2;
  @Deprecated('Use MF_ENABLED instead')
  static const MF_ENABLED = 0;
  @Deprecated('Use MF_GRAYED instead')
  static const MF_GRAYED = 1;
  @Deprecated('Use MF_MENUBARBREAK instead')
  static const MF_MENUBARBREAK = 32;
  @Deprecated('Use MF_MENUBREAK instead')
  static const MF_MENUBREAK = 64;
  @Deprecated('Use MF_OWNERDRAW instead')
  static const MF_OWNERDRAW = 256;
  @Deprecated('Use MF_POPUP instead')
  static const MF_POPUP = 16;
  @Deprecated('Use MF_SEPARATOR instead')
  static const MF_SEPARATOR = 2048;
  @Deprecated('Use MF_STRING instead')
  static const MF_STRING = 0;
  @Deprecated('Use MF_UNCHECKED instead')
  static const MF_UNCHECKED = 0;
  @Deprecated('Use MF_INSERT instead')
  static const MF_INSERT = 0;
  @Deprecated('Use MF_CHANGE instead')
  static const MF_CHANGE = 128;
  @Deprecated('Use MF_APPEND instead')
  static const MF_APPEND = 256;
  @Deprecated('Use MF_DELETE instead')
  static const MF_DELETE = 512;
  @Deprecated('Use MF_REMOVE instead')
  static const MF_REMOVE = 4096;
  @Deprecated('Use MF_USECHECKBITMAPS instead')
  static const MF_USECHECKBITMAPS = 512;
  @Deprecated('Use MF_UNHILITE instead')
  static const MF_UNHILITE = 0;
  @Deprecated('Use MF_HILITE instead')
  static const MF_HILITE = 128;
  @Deprecated('Use MF_DEFAULT instead')
  static const MF_DEFAULT = 4096;
  @Deprecated('Use MF_SYSMENU instead')
  static const MF_SYSMENU = 8192;
  @Deprecated('Use MF_HELP instead')
  static const MF_HELP = 16384;
  @Deprecated('Use MF_RIGHTJUSTIFY instead')
  static const MF_RIGHTJUSTIFY = 16384;
  @Deprecated('Use MF_MOUSESELECT instead')
  static const MF_MOUSESELECT = 32768;
  @Deprecated('Use MF_END instead')
  static const MF_END = 128;
}

/// {@category enum}
extension type const MENU_ITEM_MASK(int _) implements int {
  @Deprecated('Use MIIM_BITMAP instead')
  static const MIIM_BITMAP = 128;
  @Deprecated('Use MIIM_CHECKMARKS instead')
  static const MIIM_CHECKMARKS = 8;
  @Deprecated('Use MIIM_DATA instead')
  static const MIIM_DATA = 32;
  @Deprecated('Use MIIM_FTYPE instead')
  static const MIIM_FTYPE = 256;
  @Deprecated('Use MIIM_ID instead')
  static const MIIM_ID = 2;
  @Deprecated('Use MIIM_STATE instead')
  static const MIIM_STATE = 1;
  @Deprecated('Use MIIM_STRING instead')
  static const MIIM_STRING = 64;
  @Deprecated('Use MIIM_SUBMENU instead')
  static const MIIM_SUBMENU = 4;
  @Deprecated('Use MIIM_TYPE instead')
  static const MIIM_TYPE = 16;
}

/// {@category enum}
extension type const MENU_ITEM_STATE(int _) implements int {
  @Deprecated('Use MFS_GRAYED instead')
  static const MFS_GRAYED = 3;
  @Deprecated('Use MFS_DISABLED instead')
  static const MFS_DISABLED = 3;
  @Deprecated('Use MFS_CHECKED instead')
  static const MFS_CHECKED = 8;
  @Deprecated('Use MFS_HILITE instead')
  static const MFS_HILITE = 128;
  @Deprecated('Use MFS_ENABLED instead')
  static const MFS_ENABLED = 0;
  @Deprecated('Use MFS_UNCHECKED instead')
  static const MFS_UNCHECKED = 0;
  @Deprecated('Use MFS_UNHILITE instead')
  static const MFS_UNHILITE = 0;
  @Deprecated('Use MFS_DEFAULT instead')
  static const MFS_DEFAULT = 4096;
}

/// {@category enum}
extension type const MENU_ITEM_TYPE(int _) implements int {
  @Deprecated('Use MFT_BITMAP instead')
  static const MFT_BITMAP = 4;
  @Deprecated('Use MFT_MENUBARBREAK instead')
  static const MFT_MENUBARBREAK = 32;
  @Deprecated('Use MFT_MENUBREAK instead')
  static const MFT_MENUBREAK = 64;
  @Deprecated('Use MFT_OWNERDRAW instead')
  static const MFT_OWNERDRAW = 256;
  @Deprecated('Use MFT_RADIOCHECK instead')
  static const MFT_RADIOCHECK = 512;
  @Deprecated('Use MFT_RIGHTJUSTIFY instead')
  static const MFT_RIGHTJUSTIFY = 16384;
  @Deprecated('Use MFT_RIGHTORDER instead')
  static const MFT_RIGHTORDER = 8192;
  @Deprecated('Use MFT_SEPARATOR instead')
  static const MFT_SEPARATOR = 2048;
  @Deprecated('Use MFT_STRING instead')
  static const MFT_STRING = 0;
}

/// {@category enum}
extension type const MESSAGEBOX_RESULT(int _) implements int {
  @Deprecated('Use IDOK instead')
  static const IDOK = 1;
  @Deprecated('Use IDCANCEL instead')
  static const IDCANCEL = 2;
  @Deprecated('Use IDABORT instead')
  static const IDABORT = 3;
  @Deprecated('Use IDRETRY instead')
  static const IDRETRY = 4;
  @Deprecated('Use IDIGNORE instead')
  static const IDIGNORE = 5;
  @Deprecated('Use IDYES instead')
  static const IDYES = 6;
  @Deprecated('Use IDNO instead')
  static const IDNO = 7;
  @Deprecated('Use IDCLOSE instead')
  static const IDCLOSE = 8;
  @Deprecated('Use IDHELP instead')
  static const IDHELP = 9;
  @Deprecated('Use IDTRYAGAIN instead')
  static const IDTRYAGAIN = 10;
  @Deprecated('Use IDCONTINUE instead')
  static const IDCONTINUE = 11;
  @Deprecated('Use IDASYNC instead')
  static const IDASYNC = 32001;
  @Deprecated('Use IDTIMEOUT instead')
  static const IDTIMEOUT = 32000;
}

/// {@category enum}
extension type const MESSAGEBOX_STYLE(int _) implements int {
  @Deprecated('Use MB_ABORTRETRYIGNORE instead')
  static const MB_ABORTRETRYIGNORE = 2;
  @Deprecated('Use MB_CANCELTRYCONTINUE instead')
  static const MB_CANCELTRYCONTINUE = 6;
  @Deprecated('Use MB_HELP instead')
  static const MB_HELP = 16384;
  @Deprecated('Use MB_OK instead')
  static const MB_OK = 0;
  @Deprecated('Use MB_OKCANCEL instead')
  static const MB_OKCANCEL = 1;
  @Deprecated('Use MB_RETRYCANCEL instead')
  static const MB_RETRYCANCEL = 5;
  @Deprecated('Use MB_YESNO instead')
  static const MB_YESNO = 4;
  @Deprecated('Use MB_YESNOCANCEL instead')
  static const MB_YESNOCANCEL = 3;
  @Deprecated('Use MB_ICONHAND instead')
  static const MB_ICONHAND = 16;
  @Deprecated('Use MB_ICONQUESTION instead')
  static const MB_ICONQUESTION = 32;
  @Deprecated('Use MB_ICONEXCLAMATION instead')
  static const MB_ICONEXCLAMATION = 48;
  @Deprecated('Use MB_ICONASTERISK instead')
  static const MB_ICONASTERISK = 64;
  @Deprecated('Use MB_USERICON instead')
  static const MB_USERICON = 128;
  @Deprecated('Use MB_ICONWARNING instead')
  static const MB_ICONWARNING = 48;
  @Deprecated('Use MB_ICONERROR instead')
  static const MB_ICONERROR = 16;
  @Deprecated('Use MB_ICONINFORMATION instead')
  static const MB_ICONINFORMATION = 64;
  @Deprecated('Use MB_ICONSTOP instead')
  static const MB_ICONSTOP = 16;
  @Deprecated('Use MB_DEFBUTTON1 instead')
  static const MB_DEFBUTTON1 = 0;
  @Deprecated('Use MB_DEFBUTTON2 instead')
  static const MB_DEFBUTTON2 = 256;
  @Deprecated('Use MB_DEFBUTTON3 instead')
  static const MB_DEFBUTTON3 = 512;
  @Deprecated('Use MB_DEFBUTTON4 instead')
  static const MB_DEFBUTTON4 = 768;
  @Deprecated('Use MB_APPLMODAL instead')
  static const MB_APPLMODAL = 0;
  @Deprecated('Use MB_SYSTEMMODAL instead')
  static const MB_SYSTEMMODAL = 4096;
  @Deprecated('Use MB_TASKMODAL instead')
  static const MB_TASKMODAL = 8192;
  @Deprecated('Use MB_NOFOCUS instead')
  static const MB_NOFOCUS = 32768;
  @Deprecated('Use MB_SETFOREGROUND instead')
  static const MB_SETFOREGROUND = 65536;
  @Deprecated('Use MB_DEFAULT_DESKTOP_ONLY instead')
  static const MB_DEFAULT_DESKTOP_ONLY = 131072;
  @Deprecated('Use MB_TOPMOST instead')
  static const MB_TOPMOST = 262144;
  @Deprecated('Use MB_RIGHT instead')
  static const MB_RIGHT = 524288;
  @Deprecated('Use MB_RTLREADING instead')
  static const MB_RTLREADING = 1048576;
  @Deprecated('Use MB_SERVICE_NOTIFICATION instead')
  static const MB_SERVICE_NOTIFICATION = 2097152;
  @Deprecated('Use MB_SERVICE_NOTIFICATION_NT3X instead')
  static const MB_SERVICE_NOTIFICATION_NT3X = 262144;
  @Deprecated('Use MB_TYPEMASK instead')
  static const MB_TYPEMASK = 15;
  @Deprecated('Use MB_ICONMASK instead')
  static const MB_ICONMASK = 240;
  @Deprecated('Use MB_DEFMASK instead')
  static const MB_DEFMASK = 3840;
  @Deprecated('Use MB_MODEMASK instead')
  static const MB_MODEMASK = 12288;
  @Deprecated('Use MB_MISCMASK instead')
  static const MB_MISCMASK = 49152;
}

/// {@category enum}
extension type const MIDI_WAVE_OPEN_TYPE(int _) implements int {
  @Deprecated('Use CALLBACK_TYPEMASK instead')
  static const CALLBACK_TYPEMASK = 458752;
  @Deprecated('Use CALLBACK_NULL instead')
  static const CALLBACK_NULL = 0;
  @Deprecated('Use CALLBACK_WINDOW instead')
  static const CALLBACK_WINDOW = 65536;
  @Deprecated('Use CALLBACK_TASK instead')
  static const CALLBACK_TASK = 131072;
  @Deprecated('Use CALLBACK_FUNCTION instead')
  static const CALLBACK_FUNCTION = 196608;
  @Deprecated('Use CALLBACK_THREAD instead')
  static const CALLBACK_THREAD = 131072;
  @Deprecated('Use CALLBACK_EVENT instead')
  static const CALLBACK_EVENT = 327680;
  @Deprecated('Use WAVE_FORMAT_QUERY instead')
  static const WAVE_FORMAT_QUERY = 1;
  @Deprecated('Use WAVE_ALLOWSYNC instead')
  static const WAVE_ALLOWSYNC = 2;
  @Deprecated('Use WAVE_MAPPED instead')
  static const WAVE_MAPPED = 4;
  @Deprecated('Use WAVE_FORMAT_DIRECT instead')
  static const WAVE_FORMAT_DIRECT = 8;
  @Deprecated('Use WAVE_FORMAT_DIRECT_QUERY instead')
  static const WAVE_FORMAT_DIRECT_QUERY = 9;
  @Deprecated('Use WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE instead')
  static const WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE = MIDI_WAVE_OPEN_TYPE(
    16,
  );
  @Deprecated('Use MIDI_IO_STATUS instead')
  static const MIDI_IO_STATUS = 32;
}

/// {@category enum}
extension type const MODEMDEVCAPS_DIAL_OPTIONS(int _) implements int {
  @Deprecated('Use DIALOPTION_BILLING instead')
  static const DIALOPTION_BILLING = 64;
  @Deprecated('Use DIALOPTION_DIALTONE instead')
  static const DIALOPTION_DIALTONE = 256;
  @Deprecated('Use DIALOPTION_QUIET instead')
  static const DIALOPTION_QUIET = 128;
}

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_MODE(int _) implements int {
  @Deprecated('Use MDMSPKRFLAG_CALLSETUP instead')
  static const MDMSPKRFLAG_CALLSETUP = 8;
  @Deprecated('Use MDMSPKRFLAG_DIAL instead')
  static const MDMSPKRFLAG_DIAL = 2;
  @Deprecated('Use MDMSPKRFLAG_OFF instead')
  static const MDMSPKRFLAG_OFF = 1;
  @Deprecated('Use MDMSPKRFLAG_ON instead')
  static const MDMSPKRFLAG_ON = 4;
}

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_VOLUME(int _) implements int {
  @Deprecated('Use MDMVOLFLAG_HIGH instead')
  static const MDMVOLFLAG_HIGH = 4;
  @Deprecated('Use MDMVOLFLAG_LOW instead')
  static const MDMVOLFLAG_LOW = 1;
  @Deprecated('Use MDMVOLFLAG_MEDIUM instead')
  static const MDMVOLFLAG_MEDIUM = 2;
}

/// {@category enum}
extension type const MODEMSETTINGS_SPEAKER_MODE(int _) implements int {
  @Deprecated('Use MDMSPKR_CALLSETUP instead')
  static const MDMSPKR_CALLSETUP = 8;
  @Deprecated('Use MDMSPKR_DIAL instead')
  static const MDMSPKR_DIAL = 2;
  @Deprecated('Use MDMSPKR_OFF instead')
  static const MDMSPKR_OFF = 1;
  @Deprecated('Use MDMSPKR_ON instead')
  static const MDMSPKR_ON = 4;
}

/// {@category enum}
extension type const MODEM_SPEAKER_VOLUME(int _) implements int {
  @Deprecated('Use MDMVOL_HIGH instead')
  static const MDMVOL_HIGH = 2;
  @Deprecated('Use MDMVOL_LOW instead')
  static const MDMVOL_LOW = 0;
  @Deprecated('Use MDMVOL_MEDIUM instead')
  static const MDMVOL_MEDIUM = 1;
}

/// {@category enum}
extension type const MODEM_STATUS_FLAGS(int _) implements int {
  @Deprecated('Use MS_CTS_ON instead')
  static const MS_CTS_ON = 16;
  @Deprecated('Use MS_DSR_ON instead')
  static const MS_DSR_ON = 32;
  @Deprecated('Use MS_RING_ON instead')
  static const MS_RING_ON = 64;
  @Deprecated('Use MS_RLSD_ON instead')
  static const MS_RLSD_ON = 128;
}

/// {@category enum}
extension type const MODLOAD_DATA_TYPE(int _) implements int {
  @Deprecated('Use DBHHEADER_DEBUGDIRS instead')
  static const DBHHEADER_DEBUGDIRS = 1;
  @Deprecated('Use DBHHEADER_CVMISC instead')
  static const DBHHEADER_CVMISC = 2;
}

/// {@category enum}
extension type const MONITOR_FROM_FLAGS(int _) implements int {
  @Deprecated('Use MONITOR_DEFAULTTONEAREST instead')
  static const MONITOR_DEFAULTTONEAREST = 2;
  @Deprecated('Use MONITOR_DEFAULTTONULL instead')
  static const MONITOR_DEFAULTTONULL = 0;
  @Deprecated('Use MONITOR_DEFAULTTOPRIMARY instead')
  static const MONITOR_DEFAULTTOPRIMARY = 1;
}

/// {@category enum}
extension type const MOUSE_EVENT_FLAGS(int _) implements int {
  @Deprecated('Use MOUSEEVENTF_ABSOLUTE instead')
  static const MOUSEEVENTF_ABSOLUTE = 32768;
  @Deprecated('Use MOUSEEVENTF_LEFTDOWN instead')
  static const MOUSEEVENTF_LEFTDOWN = 2;
  @Deprecated('Use MOUSEEVENTF_LEFTUP instead')
  static const MOUSEEVENTF_LEFTUP = 4;
  @Deprecated('Use MOUSEEVENTF_MIDDLEDOWN instead')
  static const MOUSEEVENTF_MIDDLEDOWN = 32;
  @Deprecated('Use MOUSEEVENTF_MIDDLEUP instead')
  static const MOUSEEVENTF_MIDDLEUP = 64;
  @Deprecated('Use MOUSEEVENTF_MOVE instead')
  static const MOUSEEVENTF_MOVE = 1;
  @Deprecated('Use MOUSEEVENTF_RIGHTDOWN instead')
  static const MOUSEEVENTF_RIGHTDOWN = 8;
  @Deprecated('Use MOUSEEVENTF_RIGHTUP instead')
  static const MOUSEEVENTF_RIGHTUP = 16;
  @Deprecated('Use MOUSEEVENTF_WHEEL instead')
  static const MOUSEEVENTF_WHEEL = 2048;
  @Deprecated('Use MOUSEEVENTF_XDOWN instead')
  static const MOUSEEVENTF_XDOWN = 128;
  @Deprecated('Use MOUSEEVENTF_XUP instead')
  static const MOUSEEVENTF_XUP = 256;
  @Deprecated('Use MOUSEEVENTF_HWHEEL instead')
  static const MOUSEEVENTF_HWHEEL = 4096;
  @Deprecated('Use MOUSEEVENTF_MOVE_NOCOALESCE instead')
  static const MOUSEEVENTF_MOVE_NOCOALESCE = 8192;
  @Deprecated('Use MOUSEEVENTF_VIRTUALDESK instead')
  static const MOUSEEVENTF_VIRTUALDESK = 16384;
}

/// {@category enum}
extension type const MOUSE_STATE(int _) implements int {
  @Deprecated('Use MOUSE_MOVE_RELATIVE instead')
  static const MOUSE_MOVE_RELATIVE = 0;
  @Deprecated('Use MOUSE_MOVE_ABSOLUTE instead')
  static const MOUSE_MOVE_ABSOLUTE = 1;
  @Deprecated('Use MOUSE_VIRTUAL_DESKTOP instead')
  static const MOUSE_VIRTUAL_DESKTOP = 2;
  @Deprecated('Use MOUSE_ATTRIBUTES_CHANGED instead')
  static const MOUSE_ATTRIBUTES_CHANGED = 4;
  @Deprecated('Use MOUSE_MOVE_NOCOALESCE instead')
  static const MOUSE_MOVE_NOCOALESCE = 8;
}

/// {@category enum}
extension type const MSGFLTINFO_STATUS(int _) implements int {
  @Deprecated('Use MSGFLTINFO_NONE instead')
  static const MSGFLTINFO_NONE = 0;
  @Deprecated('Use MSGFLTINFO_ALLOWED_HIGHER instead')
  static const MSGFLTINFO_ALLOWED_HIGHER = 3;
  @Deprecated('Use MSGFLTINFO_ALREADYALLOWED_FORWND instead')
  static const MSGFLTINFO_ALREADYALLOWED_FORWND = 1;
  @Deprecated('Use MSGFLTINFO_ALREADYDISALLOWED_FORWND instead')
  static const MSGFLTINFO_ALREADYDISALLOWED_FORWND = 2;
}

/// {@category enum}
extension type const MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(int _)
    implements int {
  @Deprecated('Use MWMO_NONE instead')
  static const MWMO_NONE = 0;
  @Deprecated('Use MWMO_ALERTABLE instead')
  static const MWMO_ALERTABLE = 2;
  @Deprecated('Use MWMO_INPUTAVAILABLE instead')
  static const MWMO_INPUTAVAILABLE = 4;
  @Deprecated('Use MWMO_WAITALL instead')
  static const MWMO_WAITALL = 1;
}

/// {@category enum}
extension type const MW_FILTERMODE(int _) implements int {
  @Deprecated('Use MW_FILTERMODE_EXCLUDE instead')
  static const MW_FILTERMODE_EXCLUDE = 0;
  @Deprecated('Use MW_FILTERMODE_INCLUDE instead')
  static const MW_FILTERMODE_INCLUDE = 1;
}

/// {@category enum}
extension type const NAMED_PIPE_MODE(int _) implements int {
  @Deprecated('Use PIPE_WAIT instead')
  static const PIPE_WAIT = 0;
  @Deprecated('Use PIPE_NOWAIT instead')
  static const PIPE_NOWAIT = 1;
  @Deprecated('Use PIPE_READMODE_BYTE instead')
  static const PIPE_READMODE_BYTE = 0;
  @Deprecated('Use PIPE_READMODE_MESSAGE instead')
  static const PIPE_READMODE_MESSAGE = 2;
  @Deprecated('Use PIPE_CLIENT_END instead')
  static const PIPE_CLIENT_END = 0;
  @Deprecated('Use PIPE_SERVER_END instead')
  static const PIPE_SERVER_END = 1;
  @Deprecated('Use PIPE_TYPE_BYTE instead')
  static const PIPE_TYPE_BYTE = 0;
  @Deprecated('Use PIPE_TYPE_MESSAGE instead')
  static const PIPE_TYPE_MESSAGE = 4;
  @Deprecated('Use PIPE_ACCEPT_REMOTE_CLIENTS instead')
  static const PIPE_ACCEPT_REMOTE_CLIENTS = 0;
  @Deprecated('Use PIPE_REJECT_REMOTE_CLIENTS instead')
  static const PIPE_REJECT_REMOTE_CLIENTS = 8;
}

/// Specifies the NDIS network interface connection type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ne-ifdef-net_if_connection_type>.
///
/// {@category enum}
extension type const NET_IF_CONNECTION_TYPE(int _) implements int {
  /// Specifies the dedicated connection type.
  @Deprecated('Use NET_IF_CONNECTION_DEDICATED instead')
  static const NET_IF_CONNECTION_DEDICATED = 1;

  /// Specifies the passive connection type.
  @Deprecated('Use NET_IF_CONNECTION_PASSIVE instead')
  static const NET_IF_CONNECTION_PASSIVE = 2;

  /// Specifies the demand-dial connection type.
  @Deprecated('Use NET_IF_CONNECTION_DEMAND instead')
  static const NET_IF_CONNECTION_DEMAND = 3;

  /// A maximum value for testing purposes.
  @Deprecated('Use NET_IF_CONNECTION_MAXIMUM instead')
  static const NET_IF_CONNECTION_MAXIMUM = 4;
}

/// Specifies a set of cost levels and cost flags supported in Windows 8 Cost
/// APIs.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_connection_cost>.
///
/// {@category enum}
extension type const NLM_CONNECTION_COST(int _) implements int {
  /// The cost is unknown.
  @Deprecated('Use NLM_CONNECTION_COST_UNKNOWN instead')
  static const NLM_CONNECTION_COST_UNKNOWN = 0;

  /// The connection is unlimited and is considered to be unrestricted of usage
  /// charges and capacity constraints.
  @Deprecated('Use NLM_CONNECTION_COST_UNRESTRICTED instead')
  static const NLM_CONNECTION_COST_UNRESTRICTED = 1;

  /// The use of this connection is unrestricted up to a specific data transfer
  /// limit.
  @Deprecated('Use NLM_CONNECTION_COST_FIXED instead')
  static const NLM_CONNECTION_COST_FIXED = 2;

  /// This connection is regulated on a per byte basis.
  @Deprecated('Use NLM_CONNECTION_COST_VARIABLE instead')
  static const NLM_CONNECTION_COST_VARIABLE = 4;

  /// The connection is currently in an OverDataLimit state as it has exceeded
  /// the carrier specified data transfer limit.
  @Deprecated('Use NLM_CONNECTION_COST_OVERDATALIMIT instead')
  static const NLM_CONNECTION_COST_OVERDATALIMIT = 65536;

  /// The network is experiencing high traffic load and is congested.
  @Deprecated('Use NLM_CONNECTION_COST_CONGESTED instead')
  static const NLM_CONNECTION_COST_CONGESTED = 131072;

  /// The connection is roaming outside the network and affiliates of the home
  /// provider.
  @Deprecated('Use NLM_CONNECTION_COST_ROAMING instead')
  static const NLM_CONNECTION_COST_ROAMING = 262144;

  /// The connection is approaching the data limit specified by the carrier.
  @Deprecated('Use NLM_CONNECTION_COST_APPROACHINGDATALIMIT instead')
  static const NLM_CONNECTION_COST_APPROACHINGDATALIMIT = NLM_CONNECTION_COST(
    524288,
  );
}

/// A set of flags that specify the domain type of a network.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_domain_type>.
///
/// {@category enum}
extension type const NLM_DOMAIN_TYPE(int _) implements int {
  /// The Network is not an Active Directory Network.
  @Deprecated('Use NLM_DOMAIN_TYPE_NON_DOMAIN_NETWORK instead')
  static const NLM_DOMAIN_TYPE_NON_DOMAIN_NETWORK = 0;

  /// The Network is an Active Directory Network, but this machine is not
  /// authenticated against it.
  @Deprecated('Use NLM_DOMAIN_TYPE_DOMAIN_NETWORK instead')
  static const NLM_DOMAIN_TYPE_DOMAIN_NETWORK = 1;

  /// The Network is an Active Directory Network, and this machine is
  /// authenticated against it.
  @Deprecated('Use NLM_DOMAIN_TYPE_DOMAIN_AUTHENTICATED instead')
  static const NLM_DOMAIN_TYPE_DOMAIN_AUTHENTICATED = 2;
}

/// A set of flags that specify the category type of a network.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_network_category>.
///
/// {@category enum}
extension type const NLM_NETWORK_CATEGORY(int _) implements int {
  /// The network is a public (untrusted) network.
  @Deprecated('Use NLM_NETWORK_CATEGORY_PUBLIC instead')
  static const NLM_NETWORK_CATEGORY_PUBLIC = 0;

  /// The network is a private (trusted) network.
  @Deprecated('Use NLM_NETWORK_CATEGORY_PRIVATE instead')
  static const NLM_NETWORK_CATEGORY_PRIVATE = 1;

  /// The network is authenticated against an Active Directory domain.
  @Deprecated('Use NLM_NETWORK_CATEGORY_DOMAIN_AUTHENTICATED instead')
  static const NLM_NETWORK_CATEGORY_DOMAIN_AUTHENTICATED = NLM_NETWORK_CATEGORY(
    2,
  );
}

/// Specifies information about the duplicate address detection (DAD) state for
/// an IPv4 or IPv6 address.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/nldef/ne-nldef-nl_dad_state>.
///
/// {@category enum}
extension type const NL_DAD_STATE(int _) implements int {
  @Deprecated('Use NldsInvalid instead')
  static const NldsInvalid = 0;
  @Deprecated('Use NldsTentative instead')
  static const NldsTentative = 1;
  @Deprecated('Use NldsDuplicate instead')
  static const NldsDuplicate = 2;
  @Deprecated('Use NldsDeprecated instead')
  static const NldsDeprecated = 3;
  @Deprecated('Use NldsPreferred instead')
  static const NldsPreferred = 4;

  /// The DAD state is invalid.
  @Deprecated('Use IpDadStateInvalid instead')
  static const IpDadStateInvalid = 0;

  /// The DAD state is tentative.
  @Deprecated('Use IpDadStateTentative instead')
  static const IpDadStateTentative = 1;

  /// A duplicate IP address has been detected.
  @Deprecated('Use IpDadStateDuplicate instead')
  static const IpDadStateDuplicate = 2;

  /// The IP address has been deprecated.
  @Deprecated('Use IpDadStateDeprecated instead')
  static const IpDadStateDeprecated = 3;

  /// The IP address is the preferred address.
  @Deprecated('Use IpDadStatePreferred instead')
  static const IpDadStatePreferred = 4;
}

/// Specifies the origin of an IPv4 or IPv6 address prefix, and is used with the
/// IP_ADAPTER_UNICAST_ADDRESS structure.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/nldef/ne-nldef-nl_prefix_origin>.
///
/// {@category enum}
extension type const NL_PREFIX_ORIGIN(int _) implements int {
  /// The IP prefix was provided by a source other than those defined in this
  /// enumeration.
  @Deprecated('Use IpPrefixOriginOther instead')
  static const IpPrefixOriginOther = 0;

  /// The IP address prefix was manually specified.
  @Deprecated('Use IpPrefixOriginManual instead')
  static const IpPrefixOriginManual = 1;

  /// The IP address prefix is from a well known source.
  @Deprecated('Use IpPrefixOriginWellKnown instead')
  static const IpPrefixOriginWellKnown = 2;

  /// The IP address prefix was provided by DHCP settings.
  @Deprecated('Use IpPrefixOriginDhcp instead')
  static const IpPrefixOriginDhcp = 3;

  /// The IP address prefix was obtained through a router advertisement (RA).
  @Deprecated('Use IpPrefixOriginRouterAdvertisement instead')
  static const IpPrefixOriginRouterAdvertisement = 4;

  /// The IP address prefix should be unchanged.
  @Deprecated('Use IpPrefixOriginUnchanged instead')
  static const IpPrefixOriginUnchanged = 16;
}

/// Specifies the origin of an IPv4 or IPv6 address suffix, and is used with the
/// IP_ADAPTER_UNICAST_ADDRESS structure.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/nldef/ne-nldef-nl_suffix_origin>.
///
/// {@category enum}
extension type const NL_SUFFIX_ORIGIN(int _) implements int {
  @Deprecated('Use NlsoOther instead')
  static const NlsoOther = 0;
  @Deprecated('Use NlsoManual instead')
  static const NlsoManual = 1;
  @Deprecated('Use NlsoWellKnown instead')
  static const NlsoWellKnown = 2;
  @Deprecated('Use NlsoDhcp instead')
  static const NlsoDhcp = 3;
  @Deprecated('Use NlsoLinkLayerAddress instead')
  static const NlsoLinkLayerAddress = 4;
  @Deprecated('Use NlsoRandom instead')
  static const NlsoRandom = 5;

  /// The IP address suffix was provided by a source other than those defined in
  /// this enumeration.
  @Deprecated('Use IpSuffixOriginOther instead')
  static const IpSuffixOriginOther = 0;

  /// The IP address suffix was manually specified.
  @Deprecated('Use IpSuffixOriginManual instead')
  static const IpSuffixOriginManual = 1;

  /// The IP address suffix is from a well-known source.
  @Deprecated('Use IpSuffixOriginWellKnown instead')
  static const IpSuffixOriginWellKnown = 2;

  /// The IP address suffix was provided by DHCP settings.
  @Deprecated('Use IpSuffixOriginDhcp instead')
  static const IpSuffixOriginDhcp = 3;

  /// The IP address suffix was obtained from the link-layer address.
  @Deprecated('Use IpSuffixOriginLinkLayerAddress instead')
  static const IpSuffixOriginLinkLayerAddress = 4;

  /// The IP address suffix was obtained from a random source.
  @Deprecated('Use IpSuffixOriginRandom instead')
  static const IpSuffixOriginRandom = 5;

  /// The IP address suffix should be unchanged.
  @Deprecated('Use IpSuffixOriginUnchanged instead')
  static const IpSuffixOriginUnchanged = 16;
}

/// {@category enum}
extension type const NOTIFY_ICON_DATA_FLAGS(int _) implements int {
  @Deprecated('Use NIF_MESSAGE instead')
  static const NIF_MESSAGE = 1;
  @Deprecated('Use NIF_ICON instead')
  static const NIF_ICON = 2;
  @Deprecated('Use NIF_TIP instead')
  static const NIF_TIP = 4;
  @Deprecated('Use NIF_STATE instead')
  static const NIF_STATE = 8;
  @Deprecated('Use NIF_INFO instead')
  static const NIF_INFO = 16;
  @Deprecated('Use NIF_GUID instead')
  static const NIF_GUID = 32;
  @Deprecated('Use NIF_REALTIME instead')
  static const NIF_REALTIME = 64;
  @Deprecated('Use NIF_SHOWTIP instead')
  static const NIF_SHOWTIP = 128;
}

/// {@category enum}
extension type const NOTIFY_ICON_INFOTIP_FLAGS(int _) implements int {
  @Deprecated('Use NIIF_NONE instead')
  static const NIIF_NONE = 0;
  @Deprecated('Use NIIF_INFO instead')
  static const NIIF_INFO = 1;
  @Deprecated('Use NIIF_WARNING instead')
  static const NIIF_WARNING = 2;
  @Deprecated('Use NIIF_ERROR instead')
  static const NIIF_ERROR = 3;
  @Deprecated('Use NIIF_USER instead')
  static const NIIF_USER = 4;
  @Deprecated('Use NIIF_ICON_MASK instead')
  static const NIIF_ICON_MASK = 15;
  @Deprecated('Use NIIF_NOSOUND instead')
  static const NIIF_NOSOUND = 16;
  @Deprecated('Use NIIF_LARGE_ICON instead')
  static const NIIF_LARGE_ICON = 32;
  @Deprecated('Use NIIF_RESPECT_QUIET_TIME instead')
  static const NIIF_RESPECT_QUIET_TIME = 128;
}

/// {@category enum}
extension type const NOTIFY_ICON_MESSAGE(int _) implements int {
  @Deprecated('Use NIM_ADD instead')
  static const NIM_ADD = 0;
  @Deprecated('Use NIM_MODIFY instead')
  static const NIM_MODIFY = 1;
  @Deprecated('Use NIM_DELETE instead')
  static const NIM_DELETE = 2;
  @Deprecated('Use NIM_SETFOCUS instead')
  static const NIM_SETFOCUS = 3;
  @Deprecated('Use NIM_SETVERSION instead')
  static const NIM_SETVERSION = 4;
}

/// {@category enum}
extension type const NOTIFY_ICON_STATE(int _) implements int {
  @Deprecated('Use NIS_HIDDEN instead')
  static const NIS_HIDDEN = 1;
  @Deprecated('Use NIS_SHAREDICON instead')
  static const NIS_SHAREDICON = 2;
}

/// Contains values used to specify the direction of navigation within the
/// Microsoft UI Automation tree.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-navigatedirection>.
///
/// {@category enum}
extension type const NavigateDirection(int _) implements int {
  /// The navigation direction is to the parent.
  @Deprecated('Use NavigateDirection_Parent instead')
  static const NavigateDirection_Parent = 0;

  /// The navigation direction is to the next sibling.
  @Deprecated('Use NavigateDirection_NextSibling instead')
  static const NavigateDirection_NextSibling = 1;

  /// The navigation direction is to the previous sibling.
  @Deprecated('Use NavigateDirection_PreviousSibling instead')
  static const NavigateDirection_PreviousSibling = 2;

  /// The navigation direction is to the first child.
  @Deprecated('Use NavigateDirection_FirstChild instead')
  static const NavigateDirection_FirstChild = 3;

  /// The navigation direction is to the last child.
  @Deprecated('Use NavigateDirection_LastChild instead')
  static const NavigateDirection_LastChild = 4;
}

/// {@category enum}
extension type const OBJECT_IDENTIFIER(int _) implements int {
  @Deprecated('Use OBJID_WINDOW instead')
  static const OBJID_WINDOW = 0;
  @Deprecated('Use OBJID_SYSMENU instead')
  static const OBJID_SYSMENU = OBJECT_IDENTIFIER(-1);
  @Deprecated('Use OBJID_TITLEBAR instead')
  static const OBJID_TITLEBAR = OBJECT_IDENTIFIER(-2);
  @Deprecated('Use OBJID_MENU instead')
  static const OBJID_MENU = OBJECT_IDENTIFIER(-3);
  @Deprecated('Use OBJID_CLIENT instead')
  static const OBJID_CLIENT = OBJECT_IDENTIFIER(-4);
  @Deprecated('Use OBJID_VSCROLL instead')
  static const OBJID_VSCROLL = OBJECT_IDENTIFIER(-5);
  @Deprecated('Use OBJID_HSCROLL instead')
  static const OBJID_HSCROLL = OBJECT_IDENTIFIER(-6);
  @Deprecated('Use OBJID_SIZEGRIP instead')
  static const OBJID_SIZEGRIP = OBJECT_IDENTIFIER(-7);
  @Deprecated('Use OBJID_CARET instead')
  static const OBJID_CARET = OBJECT_IDENTIFIER(-8);
  @Deprecated('Use OBJID_CURSOR instead')
  static const OBJID_CURSOR = OBJECT_IDENTIFIER(-9);
  @Deprecated('Use OBJID_ALERT instead')
  static const OBJID_ALERT = OBJECT_IDENTIFIER(-10);
  @Deprecated('Use OBJID_SOUND instead')
  static const OBJID_SOUND = OBJECT_IDENTIFIER(-11);
  @Deprecated('Use OBJID_QUERYCLASSNAMEIDX instead')
  static const OBJID_QUERYCLASSNAMEIDX = OBJECT_IDENTIFIER(-12);
  @Deprecated('Use OBJID_NATIVEOM instead')
  static const OBJID_NATIVEOM = OBJECT_IDENTIFIER(-16);
}

/// {@category enum}
extension type const OBJECT_SECURITY_INFORMATION(int _) implements int {
  @Deprecated('Use ATTRIBUTE_SECURITY_INFORMATION instead')
  static const ATTRIBUTE_SECURITY_INFORMATION = 32;
  @Deprecated('Use BACKUP_SECURITY_INFORMATION instead')
  static const BACKUP_SECURITY_INFORMATION = 65536;
  @Deprecated('Use DACL_SECURITY_INFORMATION instead')
  static const DACL_SECURITY_INFORMATION = 4;
  @Deprecated('Use GROUP_SECURITY_INFORMATION instead')
  static const GROUP_SECURITY_INFORMATION = 2;
  @Deprecated('Use LABEL_SECURITY_INFORMATION instead')
  static const LABEL_SECURITY_INFORMATION = 16;
  @Deprecated('Use OWNER_SECURITY_INFORMATION instead')
  static const OWNER_SECURITY_INFORMATION = 1;
  @Deprecated('Use PROTECTED_DACL_SECURITY_INFORMATION instead')
  static const PROTECTED_DACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(2147483648);
  @Deprecated('Use PROTECTED_SACL_SECURITY_INFORMATION instead')
  static const PROTECTED_SACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(1073741824);
  @Deprecated('Use SACL_SECURITY_INFORMATION instead')
  static const SACL_SECURITY_INFORMATION = 8;
  @Deprecated('Use SCOPE_SECURITY_INFORMATION instead')
  static const SCOPE_SECURITY_INFORMATION = 64;
  @Deprecated('Use UNPROTECTED_DACL_SECURITY_INFORMATION instead')
  static const UNPROTECTED_DACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(536870912);
  @Deprecated('Use UNPROTECTED_SACL_SECURITY_INFORMATION instead')
  static const UNPROTECTED_SACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(268435456);
}

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS(int _) implements int {
  @Deprecated('Use OFN_READONLY instead')
  static const OFN_READONLY = 1;
  @Deprecated('Use OFN_OVERWRITEPROMPT instead')
  static const OFN_OVERWRITEPROMPT = 2;
  @Deprecated('Use OFN_HIDEREADONLY instead')
  static const OFN_HIDEREADONLY = 4;
  @Deprecated('Use OFN_NOCHANGEDIR instead')
  static const OFN_NOCHANGEDIR = 8;
  @Deprecated('Use OFN_SHOWHELP instead')
  static const OFN_SHOWHELP = 16;
  @Deprecated('Use OFN_ENABLEHOOK instead')
  static const OFN_ENABLEHOOK = 32;
  @Deprecated('Use OFN_ENABLETEMPLATE instead')
  static const OFN_ENABLETEMPLATE = 64;
  @Deprecated('Use OFN_ENABLETEMPLATEHANDLE instead')
  static const OFN_ENABLETEMPLATEHANDLE = 128;
  @Deprecated('Use OFN_NOVALIDATE instead')
  static const OFN_NOVALIDATE = 256;
  @Deprecated('Use OFN_ALLOWMULTISELECT instead')
  static const OFN_ALLOWMULTISELECT = 512;
  @Deprecated('Use OFN_EXTENSIONDIFFERENT instead')
  static const OFN_EXTENSIONDIFFERENT = 1024;
  @Deprecated('Use OFN_PATHMUSTEXIST instead')
  static const OFN_PATHMUSTEXIST = 2048;
  @Deprecated('Use OFN_FILEMUSTEXIST instead')
  static const OFN_FILEMUSTEXIST = 4096;
  @Deprecated('Use OFN_CREATEPROMPT instead')
  static const OFN_CREATEPROMPT = 8192;
  @Deprecated('Use OFN_SHAREAWARE instead')
  static const OFN_SHAREAWARE = 16384;
  @Deprecated('Use OFN_NOREADONLYRETURN instead')
  static const OFN_NOREADONLYRETURN = 32768;
  @Deprecated('Use OFN_NOTESTFILECREATE instead')
  static const OFN_NOTESTFILECREATE = 65536;
  @Deprecated('Use OFN_NONETWORKBUTTON instead')
  static const OFN_NONETWORKBUTTON = 131072;
  @Deprecated('Use OFN_NOLONGNAMES instead')
  static const OFN_NOLONGNAMES = 262144;
  @Deprecated('Use OFN_EXPLORER instead')
  static const OFN_EXPLORER = 524288;
  @Deprecated('Use OFN_NODEREFERENCELINKS instead')
  static const OFN_NODEREFERENCELINKS = 1048576;
  @Deprecated('Use OFN_LONGNAMES instead')
  static const OFN_LONGNAMES = 2097152;
  @Deprecated('Use OFN_ENABLEINCLUDENOTIFY instead')
  static const OFN_ENABLEINCLUDENOTIFY = 4194304;
  @Deprecated('Use OFN_ENABLESIZING instead')
  static const OFN_ENABLESIZING = 8388608;
  @Deprecated('Use OFN_DONTADDTORECENT instead')
  static const OFN_DONTADDTORECENT = 33554432;
  @Deprecated('Use OFN_FORCESHOWHIDDEN instead')
  static const OFN_FORCESHOWHIDDEN = 268435456;
}

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS_EX(int _) implements int {
  @Deprecated('Use OFN_EX_NONE instead')
  static const OFN_EX_NONE = 0;
  @Deprecated('Use OFN_EX_NOPLACESBAR instead')
  static const OFN_EX_NOPLACESBAR = 1;
}

/// {@category enum}
extension type const OPEN_THEME_DATA_FLAGS(int _) implements int {
  @Deprecated('Use OTD_FORCE_RECT_SIZING instead')
  static const OTD_FORCE_RECT_SIZING = 1;
  @Deprecated('Use OTD_NONCLIENT instead')
  static const OTD_NONCLIENT = 2;
}

/// Indicates the screen orientation preference for a desktop app process.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ne-winuser-orientation_preference>.
///
/// {@category enum}
extension type const ORIENTATION_PREFERENCE(int _) implements int {
  /// The process has no device orientation preferences.
  @Deprecated('Use ORIENTATION_PREFERENCE_NONE instead')
  static const ORIENTATION_PREFERENCE_NONE = 0;

  /// The process represents a desktop app that can be used in landscape mode.
  @Deprecated('Use ORIENTATION_PREFERENCE_LANDSCAPE instead')
  static const ORIENTATION_PREFERENCE_LANDSCAPE = 1;

  /// The process represents a desktop app that can be used in portrait mode.
  @Deprecated('Use ORIENTATION_PREFERENCE_PORTRAIT instead')
  static const ORIENTATION_PREFERENCE_PORTRAIT = 2;

  /// The process represents a desktop app that can be used in flipped landscape
  /// mode.
  @Deprecated('Use ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED instead')
  static const ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED =
      ORIENTATION_PREFERENCE(4);

  /// The process represents a desktop app that can be used in flipped portrait
  /// mode.
  @Deprecated('Use ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED instead')
  static const ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED = ORIENTATION_PREFERENCE(
    8,
  );
}

/// {@category enum}
extension type const OS_PRODUCT_TYPE(int _) implements int {
  @Deprecated('Use PRODUCT_BUSINESS instead')
  static const PRODUCT_BUSINESS = 6;
  @Deprecated('Use PRODUCT_BUSINESS_N instead')
  static const PRODUCT_BUSINESS_N = 16;
  @Deprecated('Use PRODUCT_CLUSTER_SERVER instead')
  static const PRODUCT_CLUSTER_SERVER = 18;
  @Deprecated('Use PRODUCT_CLUSTER_SERVER_V instead')
  static const PRODUCT_CLUSTER_SERVER_V = 64;
  @Deprecated('Use PRODUCT_CORE instead')
  static const PRODUCT_CORE = 101;
  @Deprecated('Use PRODUCT_CORE_COUNTRYSPECIFIC instead')
  static const PRODUCT_CORE_COUNTRYSPECIFIC = 99;
  @Deprecated('Use PRODUCT_CORE_N instead')
  static const PRODUCT_CORE_N = 98;
  @Deprecated('Use PRODUCT_CORE_SINGLELANGUAGE instead')
  static const PRODUCT_CORE_SINGLELANGUAGE = 100;
  @Deprecated('Use PRODUCT_DATACENTER_EVALUATION_SERVER instead')
  static const PRODUCT_DATACENTER_EVALUATION_SERVER = 80;
  @Deprecated('Use PRODUCT_DATACENTER_A_SERVER_CORE instead')
  static const PRODUCT_DATACENTER_A_SERVER_CORE = 145;
  @Deprecated('Use PRODUCT_STANDARD_A_SERVER_CORE instead')
  static const PRODUCT_STANDARD_A_SERVER_CORE = 146;
  @Deprecated('Use PRODUCT_DATACENTER_SERVER instead')
  static const PRODUCT_DATACENTER_SERVER = 8;
  @Deprecated('Use PRODUCT_DATACENTER_SERVER_CORE instead')
  static const PRODUCT_DATACENTER_SERVER_CORE = 12;
  @Deprecated('Use PRODUCT_DATACENTER_SERVER_CORE_V instead')
  static const PRODUCT_DATACENTER_SERVER_CORE_V = 39;
  @Deprecated('Use PRODUCT_DATACENTER_SERVER_V instead')
  static const PRODUCT_DATACENTER_SERVER_V = 37;
  @Deprecated('Use PRODUCT_EDUCATION instead')
  static const PRODUCT_EDUCATION = 121;
  @Deprecated('Use PRODUCT_EDUCATION_N instead')
  static const PRODUCT_EDUCATION_N = 122;
  @Deprecated('Use PRODUCT_ENTERPRISE instead')
  static const PRODUCT_ENTERPRISE = 4;
  @Deprecated('Use PRODUCT_ENTERPRISE_E instead')
  static const PRODUCT_ENTERPRISE_E = 70;
  @Deprecated('Use PRODUCT_ENTERPRISE_EVALUATION instead')
  static const PRODUCT_ENTERPRISE_EVALUATION = 72;
  @Deprecated('Use PRODUCT_ENTERPRISE_N instead')
  static const PRODUCT_ENTERPRISE_N = 27;
  @Deprecated('Use PRODUCT_ENTERPRISE_N_EVALUATION instead')
  static const PRODUCT_ENTERPRISE_N_EVALUATION = 84;
  @Deprecated('Use PRODUCT_ENTERPRISE_S instead')
  static const PRODUCT_ENTERPRISE_S = 125;
  @Deprecated('Use PRODUCT_ENTERPRISE_S_EVALUATION instead')
  static const PRODUCT_ENTERPRISE_S_EVALUATION = 129;
  @Deprecated('Use PRODUCT_ENTERPRISE_S_N instead')
  static const PRODUCT_ENTERPRISE_S_N = 126;
  @Deprecated('Use PRODUCT_ENTERPRISE_S_N_EVALUATION instead')
  static const PRODUCT_ENTERPRISE_S_N_EVALUATION = 130;
  @Deprecated('Use PRODUCT_ENTERPRISE_SERVER instead')
  static const PRODUCT_ENTERPRISE_SERVER = 10;
  @Deprecated('Use PRODUCT_ENTERPRISE_SERVER_CORE instead')
  static const PRODUCT_ENTERPRISE_SERVER_CORE = 14;
  @Deprecated('Use PRODUCT_ENTERPRISE_SERVER_CORE_V instead')
  static const PRODUCT_ENTERPRISE_SERVER_CORE_V = 41;
  @Deprecated('Use PRODUCT_ENTERPRISE_SERVER_IA64 instead')
  static const PRODUCT_ENTERPRISE_SERVER_IA64 = 15;
  @Deprecated('Use PRODUCT_ENTERPRISE_SERVER_V instead')
  static const PRODUCT_ENTERPRISE_SERVER_V = 38;
  @Deprecated('Use PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL instead')
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL = 60;
  @Deprecated('Use PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC instead')
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC = 62;
  @Deprecated('Use PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT instead')
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT = 59;
  @Deprecated('Use PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC instead')
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC = 61;
  @Deprecated('Use PRODUCT_HOME_BASIC instead')
  static const PRODUCT_HOME_BASIC = 2;
  @Deprecated('Use PRODUCT_HOME_BASIC_E instead')
  static const PRODUCT_HOME_BASIC_E = 67;
  @Deprecated('Use PRODUCT_HOME_BASIC_N instead')
  static const PRODUCT_HOME_BASIC_N = 5;
  @Deprecated('Use PRODUCT_HOME_PREMIUM instead')
  static const PRODUCT_HOME_PREMIUM = 3;
  @Deprecated('Use PRODUCT_HOME_PREMIUM_E instead')
  static const PRODUCT_HOME_PREMIUM_E = 68;
  @Deprecated('Use PRODUCT_HOME_PREMIUM_N instead')
  static const PRODUCT_HOME_PREMIUM_N = 26;
  @Deprecated('Use PRODUCT_HOME_PREMIUM_SERVER instead')
  static const PRODUCT_HOME_PREMIUM_SERVER = 34;
  @Deprecated('Use PRODUCT_HOME_SERVER instead')
  static const PRODUCT_HOME_SERVER = 19;
  @Deprecated('Use PRODUCT_HYPERV instead')
  static const PRODUCT_HYPERV = 42;
  @Deprecated('Use PRODUCT_IOTUAP instead')
  static const PRODUCT_IOTUAP = 123;
  @Deprecated('Use PRODUCT_IOTUAPCOMMERCIAL instead')
  static const PRODUCT_IOTUAPCOMMERCIAL = 131;
  @Deprecated('Use PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT instead')
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT = 30;
  @Deprecated('Use PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING instead')
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING = 32;
  @Deprecated('Use PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY instead')
  static const PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY = 31;
  @Deprecated('Use PRODUCT_MOBILE_CORE instead')
  static const PRODUCT_MOBILE_CORE = 104;
  @Deprecated('Use PRODUCT_MOBILE_ENTERPRISE instead')
  static const PRODUCT_MOBILE_ENTERPRISE = 133;
  @Deprecated('Use PRODUCT_MULTIPOINT_PREMIUM_SERVER instead')
  static const PRODUCT_MULTIPOINT_PREMIUM_SERVER = 77;
  @Deprecated('Use PRODUCT_MULTIPOINT_STANDARD_SERVER instead')
  static const PRODUCT_MULTIPOINT_STANDARD_SERVER = 76;
  @Deprecated('Use PRODUCT_PRO_WORKSTATION instead')
  static const PRODUCT_PRO_WORKSTATION = 161;
  @Deprecated('Use PRODUCT_PRO_WORKSTATION_N instead')
  static const PRODUCT_PRO_WORKSTATION_N = 162;
  @Deprecated('Use PRODUCT_PROFESSIONAL instead')
  static const PRODUCT_PROFESSIONAL = 48;
  @Deprecated('Use PRODUCT_PROFESSIONAL_E instead')
  static const PRODUCT_PROFESSIONAL_E = 69;
  @Deprecated('Use PRODUCT_PROFESSIONAL_N instead')
  static const PRODUCT_PROFESSIONAL_N = 49;
  @Deprecated('Use PRODUCT_PROFESSIONAL_WMC instead')
  static const PRODUCT_PROFESSIONAL_WMC = 103;
  @Deprecated('Use PRODUCT_SB_SOLUTION_SERVER instead')
  static const PRODUCT_SB_SOLUTION_SERVER = 50;
  @Deprecated('Use PRODUCT_SB_SOLUTION_SERVER_EM instead')
  static const PRODUCT_SB_SOLUTION_SERVER_EM = 54;
  @Deprecated('Use PRODUCT_SERVER_FOR_SB_SOLUTIONS instead')
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS = 51;
  @Deprecated('Use PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM instead')
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM = 55;
  @Deprecated('Use PRODUCT_SERVER_FOR_SMALLBUSINESS instead')
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS = 24;
  @Deprecated('Use PRODUCT_SERVER_FOR_SMALLBUSINESS_V instead')
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS_V = 35;
  @Deprecated('Use PRODUCT_SERVER_FOUNDATION instead')
  static const PRODUCT_SERVER_FOUNDATION = 33;
  @Deprecated('Use PRODUCT_SMALLBUSINESS_SERVER instead')
  static const PRODUCT_SMALLBUSINESS_SERVER = 9;
  @Deprecated('Use PRODUCT_SMALLBUSINESS_SERVER_PREMIUM instead')
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM = 25;
  @Deprecated('Use PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE instead')
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE = 63;
  @Deprecated('Use PRODUCT_SOLUTION_EMBEDDEDSERVER instead')
  static const PRODUCT_SOLUTION_EMBEDDEDSERVER = 56;
  @Deprecated('Use PRODUCT_STANDARD_EVALUATION_SERVER instead')
  static const PRODUCT_STANDARD_EVALUATION_SERVER = 79;
  @Deprecated('Use PRODUCT_STANDARD_SERVER instead')
  static const PRODUCT_STANDARD_SERVER = 7;
  @Deprecated('Use PRODUCT_STANDARD_SERVER_CORE_ instead')
  static const PRODUCT_STANDARD_SERVER_CORE_ = 13;
  @Deprecated('Use PRODUCT_STANDARD_SERVER_CORE_V instead')
  static const PRODUCT_STANDARD_SERVER_CORE_V = 40;
  @Deprecated('Use PRODUCT_STANDARD_SERVER_V instead')
  static const PRODUCT_STANDARD_SERVER_V = 36;
  @Deprecated('Use PRODUCT_STANDARD_SERVER_SOLUTIONS instead')
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS = 52;
  @Deprecated('Use PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE instead')
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE = 53;
  @Deprecated('Use PRODUCT_STARTER instead')
  static const PRODUCT_STARTER = 11;
  @Deprecated('Use PRODUCT_STARTER_E instead')
  static const PRODUCT_STARTER_E = 66;
  @Deprecated('Use PRODUCT_STARTER_N instead')
  static const PRODUCT_STARTER_N = 47;
  @Deprecated('Use PRODUCT_STORAGE_ENTERPRISE_SERVER instead')
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER = 23;
  @Deprecated('Use PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE instead')
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE = 46;
  @Deprecated('Use PRODUCT_STORAGE_EXPRESS_SERVER instead')
  static const PRODUCT_STORAGE_EXPRESS_SERVER = 20;
  @Deprecated('Use PRODUCT_STORAGE_EXPRESS_SERVER_CORE instead')
  static const PRODUCT_STORAGE_EXPRESS_SERVER_CORE = 43;
  @Deprecated('Use PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER instead')
  static const PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER = 96;
  @Deprecated('Use PRODUCT_STORAGE_STANDARD_SERVER instead')
  static const PRODUCT_STORAGE_STANDARD_SERVER = 21;
  @Deprecated('Use PRODUCT_STORAGE_STANDARD_SERVER_CORE instead')
  static const PRODUCT_STORAGE_STANDARD_SERVER_CORE = 44;
  @Deprecated('Use PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER instead')
  static const PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER = OS_PRODUCT_TYPE(
    95,
  );
  @Deprecated('Use PRODUCT_STORAGE_WORKGROUP_SERVER instead')
  static const PRODUCT_STORAGE_WORKGROUP_SERVER = 22;
  @Deprecated('Use PRODUCT_STORAGE_WORKGROUP_SERVER_CORE instead')
  static const PRODUCT_STORAGE_WORKGROUP_SERVER_CORE = 45;
  @Deprecated('Use PRODUCT_ULTIMATE instead')
  static const PRODUCT_ULTIMATE = 1;
  @Deprecated('Use PRODUCT_ULTIMATE_E instead')
  static const PRODUCT_ULTIMATE_E = 71;
  @Deprecated('Use PRODUCT_ULTIMATE_N instead')
  static const PRODUCT_ULTIMATE_N = 28;
  @Deprecated('Use PRODUCT_UNDEFINED instead')
  static const PRODUCT_UNDEFINED = 0;
  @Deprecated('Use PRODUCT_WEB_SERVER instead')
  static const PRODUCT_WEB_SERVER = 17;
  @Deprecated('Use PRODUCT_WEB_SERVER_CORE instead')
  static const PRODUCT_WEB_SERVER_CORE = 29;
}

/// Contains values that specify the orientation of a control.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-orientationtype>.
///
/// {@category enum}
extension type const OrientationType(int _) implements int {
  /// The control has no orientation.
  @Deprecated('Use OrientationType_None instead')
  static const OrientationType_None = 0;

  /// The control has horizontal orientation.
  @Deprecated('Use OrientationType_Horizontal instead')
  static const OrientationType_Horizontal = 1;

  /// The control has vertical orientation.
  @Deprecated('Use OrientationType_Vertical instead')
  static const OrientationType_Vertical = 2;
}

/// {@category enum}
extension type const PAGE_PROTECTION_FLAGS(int _) implements int {
  @Deprecated('Use PAGE_NOACCESS instead')
  static const PAGE_NOACCESS = 1;
  @Deprecated('Use PAGE_READONLY instead')
  static const PAGE_READONLY = 2;
  @Deprecated('Use PAGE_READWRITE instead')
  static const PAGE_READWRITE = 4;
  @Deprecated('Use PAGE_WRITECOPY instead')
  static const PAGE_WRITECOPY = 8;
  @Deprecated('Use PAGE_EXECUTE instead')
  static const PAGE_EXECUTE = 16;
  @Deprecated('Use PAGE_EXECUTE_READ instead')
  static const PAGE_EXECUTE_READ = 32;
  @Deprecated('Use PAGE_EXECUTE_READWRITE instead')
  static const PAGE_EXECUTE_READWRITE = 64;
  @Deprecated('Use PAGE_EXECUTE_WRITECOPY instead')
  static const PAGE_EXECUTE_WRITECOPY = 128;
  @Deprecated('Use PAGE_GUARD instead')
  static const PAGE_GUARD = 256;
  @Deprecated('Use PAGE_NOCACHE instead')
  static const PAGE_NOCACHE = 512;
  @Deprecated('Use PAGE_WRITECOMBINE instead')
  static const PAGE_WRITECOMBINE = 1024;
  @Deprecated('Use PAGE_GRAPHICS_NOACCESS instead')
  static const PAGE_GRAPHICS_NOACCESS = 2048;
  @Deprecated('Use PAGE_GRAPHICS_READONLY instead')
  static const PAGE_GRAPHICS_READONLY = 4096;
  @Deprecated('Use PAGE_GRAPHICS_READWRITE instead')
  static const PAGE_GRAPHICS_READWRITE = 8192;
  @Deprecated('Use PAGE_GRAPHICS_EXECUTE instead')
  static const PAGE_GRAPHICS_EXECUTE = 16384;
  @Deprecated('Use PAGE_GRAPHICS_EXECUTE_READ instead')
  static const PAGE_GRAPHICS_EXECUTE_READ = 32768;
  @Deprecated('Use PAGE_GRAPHICS_EXECUTE_READWRITE instead')
  static const PAGE_GRAPHICS_EXECUTE_READWRITE = 65536;
  @Deprecated('Use PAGE_GRAPHICS_COHERENT instead')
  static const PAGE_GRAPHICS_COHERENT = 131072;
  @Deprecated('Use PAGE_GRAPHICS_NOCACHE instead')
  static const PAGE_GRAPHICS_NOCACHE = 262144;
  @Deprecated('Use PAGE_ENCLAVE_THREAD_CONTROL instead')
  static const PAGE_ENCLAVE_THREAD_CONTROL = 2147483648;
  @Deprecated('Use PAGE_REVERT_TO_FILE_MAP instead')
  static const PAGE_REVERT_TO_FILE_MAP = 2147483648;
  @Deprecated('Use PAGE_TARGETS_NO_UPDATE instead')
  static const PAGE_TARGETS_NO_UPDATE = 1073741824;
  @Deprecated('Use PAGE_TARGETS_INVALID instead')
  static const PAGE_TARGETS_INVALID = 1073741824;
  @Deprecated('Use PAGE_ENCLAVE_UNVALIDATED instead')
  static const PAGE_ENCLAVE_UNVALIDATED = 536870912;
  @Deprecated('Use PAGE_ENCLAVE_MASK instead')
  static const PAGE_ENCLAVE_MASK = 268435456;
  @Deprecated('Use PAGE_ENCLAVE_DECOMMIT instead')
  static const PAGE_ENCLAVE_DECOMMIT = 268435456;
  @Deprecated('Use PAGE_ENCLAVE_SS_FIRST instead')
  static const PAGE_ENCLAVE_SS_FIRST = 268435457;
  @Deprecated('Use PAGE_ENCLAVE_SS_REST instead')
  static const PAGE_ENCLAVE_SS_REST = 268435458;
  @Deprecated('Use SEC_PARTITION_OWNER_HANDLE instead')
  static const SEC_PARTITION_OWNER_HANDLE = 262144;
  @Deprecated('Use SEC_64K_PAGES instead')
  static const SEC_64K_PAGES = 524288;
  @Deprecated('Use SEC_FILE instead')
  static const SEC_FILE = 8388608;
  @Deprecated('Use SEC_IMAGE instead')
  static const SEC_IMAGE = 16777216;
  @Deprecated('Use SEC_PROTECTED_IMAGE instead')
  static const SEC_PROTECTED_IMAGE = 33554432;
  @Deprecated('Use SEC_RESERVE instead')
  static const SEC_RESERVE = 67108864;
  @Deprecated('Use SEC_COMMIT instead')
  static const SEC_COMMIT = 134217728;
  @Deprecated('Use SEC_NOCACHE instead')
  static const SEC_NOCACHE = 268435456;
  @Deprecated('Use SEC_WRITECOMBINE instead')
  static const SEC_WRITECOMBINE = 1073741824;
  @Deprecated('Use SEC_LARGE_PAGES instead')
  static const SEC_LARGE_PAGES = 2147483648;
  @Deprecated('Use SEC_IMAGE_NO_EXECUTE instead')
  static const SEC_IMAGE_NO_EXECUTE = 285212672;
}

/// {@category enum}
extension type const PAGE_TYPE(int _) implements int {
  @Deprecated('Use MEM_PRIVATE instead')
  static const MEM_PRIVATE = 131072;
  @Deprecated('Use MEM_MAPPED instead')
  static const MEM_MAPPED = 262144;
  @Deprecated('Use MEM_IMAGE instead')
  static const MEM_IMAGE = 16777216;
}

/// {@category enum}
extension type const PARAMFLAGS(int _) implements int {
  @Deprecated('Use PARAMFLAG_NONE instead')
  static const PARAMFLAG_NONE = 0;
  @Deprecated('Use PARAMFLAG_FIN instead')
  static const PARAMFLAG_FIN = 1;
  @Deprecated('Use PARAMFLAG_FOUT instead')
  static const PARAMFLAG_FOUT = 2;
  @Deprecated('Use PARAMFLAG_FLCID instead')
  static const PARAMFLAG_FLCID = 4;
  @Deprecated('Use PARAMFLAG_FRETVAL instead')
  static const PARAMFLAG_FRETVAL = 8;
  @Deprecated('Use PARAMFLAG_FOPT instead')
  static const PARAMFLAG_FOPT = 16;
  @Deprecated('Use PARAMFLAG_FHASDEFAULT instead')
  static const PARAMFLAG_FHASDEFAULT = 32;
  @Deprecated('Use PARAMFLAG_FHASCUSTDATA instead')
  static const PARAMFLAG_FHASCUSTDATA = 64;
}

/// {@category enum}
extension type const PEEK_MESSAGE_REMOVE_TYPE(int _) implements int {
  @Deprecated('Use PM_NOREMOVE instead')
  static const PM_NOREMOVE = 0;
  @Deprecated('Use PM_REMOVE instead')
  static const PM_REMOVE = 1;
  @Deprecated('Use PM_NOYIELD instead')
  static const PM_NOYIELD = 2;
  @Deprecated('Use PM_QS_INPUT instead')
  static const PM_QS_INPUT = 67567616;
  @Deprecated('Use PM_QS_POSTMESSAGE instead')
  static const PM_QS_POSTMESSAGE = 9961472;
  @Deprecated('Use PM_QS_PAINT instead')
  static const PM_QS_PAINT = 2097152;
  @Deprecated('Use PM_QS_SENDMESSAGE instead')
  static const PM_QS_SENDMESSAGE = 4194304;
}

/// {@category enum}
extension type const PEN_STYLE(int _) implements int {
  @Deprecated('Use PS_GEOMETRIC instead')
  static const PS_GEOMETRIC = 65536;
  @Deprecated('Use PS_COSMETIC instead')
  static const PS_COSMETIC = 0;
  @Deprecated('Use PS_SOLID instead')
  static const PS_SOLID = 0;
  @Deprecated('Use PS_DASH instead')
  static const PS_DASH = 1;
  @Deprecated('Use PS_DOT instead')
  static const PS_DOT = 2;
  @Deprecated('Use PS_DASHDOT instead')
  static const PS_DASHDOT = 3;
  @Deprecated('Use PS_DASHDOTDOT instead')
  static const PS_DASHDOTDOT = 4;
  @Deprecated('Use PS_NULL instead')
  static const PS_NULL = 5;
  @Deprecated('Use PS_INSIDEFRAME instead')
  static const PS_INSIDEFRAME = 6;
  @Deprecated('Use PS_USERSTYLE instead')
  static const PS_USERSTYLE = 7;
  @Deprecated('Use PS_ALTERNATE instead')
  static const PS_ALTERNATE = 8;
  @Deprecated('Use PS_STYLE_MASK instead')
  static const PS_STYLE_MASK = 15;
  @Deprecated('Use PS_ENDCAP_ROUND instead')
  static const PS_ENDCAP_ROUND = 0;
  @Deprecated('Use PS_ENDCAP_SQUARE instead')
  static const PS_ENDCAP_SQUARE = 256;
  @Deprecated('Use PS_ENDCAP_FLAT instead')
  static const PS_ENDCAP_FLAT = 512;
  @Deprecated('Use PS_ENDCAP_MASK instead')
  static const PS_ENDCAP_MASK = 3840;
  @Deprecated('Use PS_JOIN_ROUND instead')
  static const PS_JOIN_ROUND = 0;
  @Deprecated('Use PS_JOIN_BEVEL instead')
  static const PS_JOIN_BEVEL = 4096;
  @Deprecated('Use PS_JOIN_MITER instead')
  static const PS_JOIN_MITER = 8192;
  @Deprecated('Use PS_JOIN_MASK instead')
  static const PS_JOIN_MASK = 61440;
  @Deprecated('Use PS_TYPE_MASK instead')
  static const PS_TYPE_MASK = 983040;
}

/// Identifies a change in the state of a button associated with a pointer.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ne-winuser-pointer_button_change_type>.
///
/// {@category enum}
extension type const POINTER_BUTTON_CHANGE_TYPE(int _) implements int {
  /// No change in button state.
  @Deprecated('Use POINTER_CHANGE_NONE instead')
  static const POINTER_CHANGE_NONE = 0;

  /// The first button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIRSTBUTTON</a>)
  /// transitioned to a pressed state.
  @Deprecated('Use POINTER_CHANGE_FIRSTBUTTON_DOWN instead')
  static const POINTER_CHANGE_FIRSTBUTTON_DOWN = 1;

  /// The first button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIRSTBUTTON</a>)
  /// transitioned to a released state.
  @Deprecated('Use POINTER_CHANGE_FIRSTBUTTON_UP instead')
  static const POINTER_CHANGE_FIRSTBUTTON_UP = 2;

  /// The second button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_SECONDBUTTON</a>)
  /// transitioned to a pressed state.
  @Deprecated('Use POINTER_CHANGE_SECONDBUTTON_DOWN instead')
  static const POINTER_CHANGE_SECONDBUTTON_DOWN = 3;

  /// The second button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_SECONDBUTTON</a>)
  /// transitioned to a released state.
  @Deprecated('Use POINTER_CHANGE_SECONDBUTTON_UP instead')
  static const POINTER_CHANGE_SECONDBUTTON_UP = 4;

  /// The third button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_THIRDBUTTON</a>)
  /// transitioned to a pressed state.
  @Deprecated('Use POINTER_CHANGE_THIRDBUTTON_DOWN instead')
  static const POINTER_CHANGE_THIRDBUTTON_DOWN = 5;

  /// The third button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_THIRDBUTTON</a>)
  /// transitioned to a released state.
  @Deprecated('Use POINTER_CHANGE_THIRDBUTTON_UP instead')
  static const POINTER_CHANGE_THIRDBUTTON_UP = 6;

  /// The fourth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FOURTHBUTTON</a>)
  /// transitioned to a pressed state.
  @Deprecated('Use POINTER_CHANGE_FOURTHBUTTON_DOWN instead')
  static const POINTER_CHANGE_FOURTHBUTTON_DOWN = 7;

  /// The fourth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FOURTHBUTTON</a>)
  /// transitioned to a released state.
  @Deprecated('Use POINTER_CHANGE_FOURTHBUTTON_UP instead')
  static const POINTER_CHANGE_FOURTHBUTTON_UP = 8;

  /// The fifth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIFTHBUTTON</a>)
  /// transitioned to a pressed state.
  @Deprecated('Use POINTER_CHANGE_FIFTHBUTTON_DOWN instead')
  static const POINTER_CHANGE_FIFTHBUTTON_DOWN = 9;

  /// The fifth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIFTHBUTTON</a>)
  /// transitioned to a released state.
  @Deprecated('Use POINTER_CHANGE_FIFTHBUTTON_UP instead')
  static const POINTER_CHANGE_FIFTHBUTTON_UP = 10;
}

/// {@category enum}
extension type const POINTER_FLAGS(int _) implements int {
  @Deprecated('Use POINTER_FLAG_NONE instead')
  static const POINTER_FLAG_NONE = 0;
  @Deprecated('Use POINTER_FLAG_NEW instead')
  static const POINTER_FLAG_NEW = 1;
  @Deprecated('Use POINTER_FLAG_INRANGE instead')
  static const POINTER_FLAG_INRANGE = 2;
  @Deprecated('Use POINTER_FLAG_INCONTACT instead')
  static const POINTER_FLAG_INCONTACT = 4;
  @Deprecated('Use POINTER_FLAG_FIRSTBUTTON instead')
  static const POINTER_FLAG_FIRSTBUTTON = 16;
  @Deprecated('Use POINTER_FLAG_SECONDBUTTON instead')
  static const POINTER_FLAG_SECONDBUTTON = 32;
  @Deprecated('Use POINTER_FLAG_THIRDBUTTON instead')
  static const POINTER_FLAG_THIRDBUTTON = 64;
  @Deprecated('Use POINTER_FLAG_FOURTHBUTTON instead')
  static const POINTER_FLAG_FOURTHBUTTON = 128;
  @Deprecated('Use POINTER_FLAG_FIFTHBUTTON instead')
  static const POINTER_FLAG_FIFTHBUTTON = 256;
  @Deprecated('Use POINTER_FLAG_PRIMARY instead')
  static const POINTER_FLAG_PRIMARY = 8192;
  @Deprecated('Use POINTER_FLAG_CONFIDENCE instead')
  static const POINTER_FLAG_CONFIDENCE = 16384;
  @Deprecated('Use POINTER_FLAG_CANCELED instead')
  static const POINTER_FLAG_CANCELED = 32768;
  @Deprecated('Use POINTER_FLAG_DOWN instead')
  static const POINTER_FLAG_DOWN = 65536;
  @Deprecated('Use POINTER_FLAG_UPDATE instead')
  static const POINTER_FLAG_UPDATE = 131072;
  @Deprecated('Use POINTER_FLAG_UP instead')
  static const POINTER_FLAG_UP = 262144;
  @Deprecated('Use POINTER_FLAG_WHEEL instead')
  static const POINTER_FLAG_WHEEL = 524288;
  @Deprecated('Use POINTER_FLAG_HWHEEL instead')
  static const POINTER_FLAG_HWHEEL = 1048576;
  @Deprecated('Use POINTER_FLAG_CAPTURECHANGED instead')
  static const POINTER_FLAG_CAPTURECHANGED = 2097152;
  @Deprecated('Use POINTER_FLAG_HASTRANSFORM instead')
  static const POINTER_FLAG_HASTRANSFORM = 4194304;
}

/// {@category enum}
extension type const POINTER_INPUT_TYPE(int _) implements int {
  @Deprecated('Use PT_POINTER instead')
  static const PT_POINTER = 1;
  @Deprecated('Use PT_TOUCH instead')
  static const PT_TOUCH = 2;
  @Deprecated('Use PT_PEN instead')
  static const PT_PEN = 3;
  @Deprecated('Use PT_MOUSE instead')
  static const PT_MOUSE = 4;
  @Deprecated('Use PT_TOUCHPAD instead')
  static const PT_TOUCHPAD = 5;
}

/// {@category enum}
extension type const PRINTER_ACCESS_RIGHTS(int _) implements int {
  @Deprecated('Use PRINTER_ALL_ACCESS instead')
  static const PRINTER_ALL_ACCESS = 983052;
  @Deprecated('Use PRINTER_READ instead')
  static const PRINTER_READ = 131080;
  @Deprecated('Use PRINTER_WRITE instead')
  static const PRINTER_WRITE = 131080;
  @Deprecated('Use PRINTER_EXECUTE instead')
  static const PRINTER_EXECUTE = 131080;
  @Deprecated('Use SERVER_ALL_ACCESS instead')
  static const SERVER_ALL_ACCESS = 983043;
  @Deprecated('Use SERVER_READ instead')
  static const SERVER_READ = 131074;
  @Deprecated('Use SERVER_WRITE instead')
  static const SERVER_WRITE = 131075;
  @Deprecated('Use SERVER_EXECUTE instead')
  static const SERVER_EXECUTE = 131074;
  @Deprecated('Use PRINTER_DELETE instead')
  static const PRINTER_DELETE = 65536;
  @Deprecated('Use PRINTER_READ_CONTROL instead')
  static const PRINTER_READ_CONTROL = 131072;
  @Deprecated('Use PRINTER_WRITE_DAC instead')
  static const PRINTER_WRITE_DAC = 262144;
  @Deprecated('Use PRINTER_WRITE_OWNER instead')
  static const PRINTER_WRITE_OWNER = 524288;
  @Deprecated('Use PRINTER_SYNCHRONIZE instead')
  static const PRINTER_SYNCHRONIZE = 1048576;
  @Deprecated('Use PRINTER_STANDARD_RIGHTS_REQUIRED instead')
  static const PRINTER_STANDARD_RIGHTS_REQUIRED = 983040;
  @Deprecated('Use PRINTER_STANDARD_RIGHTS_READ instead')
  static const PRINTER_STANDARD_RIGHTS_READ = 131072;
  @Deprecated('Use PRINTER_STANDARD_RIGHTS_WRITE instead')
  static const PRINTER_STANDARD_RIGHTS_WRITE = 131072;
  @Deprecated('Use PRINTER_STANDARD_RIGHTS_EXECUTE instead')
  static const PRINTER_STANDARD_RIGHTS_EXECUTE = 131072;
  @Deprecated('Use SERVER_ACCESS_ADMINISTER instead')
  static const SERVER_ACCESS_ADMINISTER = 1;
  @Deprecated('Use SERVER_ACCESS_ENUMERATE instead')
  static const SERVER_ACCESS_ENUMERATE = 2;
  @Deprecated('Use PRINTER_ACCESS_ADMINISTER instead')
  static const PRINTER_ACCESS_ADMINISTER = 4;
  @Deprecated('Use PRINTER_ACCESS_USE instead')
  static const PRINTER_ACCESS_USE = 8;
  @Deprecated('Use PRINTER_ACCESS_MANAGE_LIMITED instead')
  static const PRINTER_ACCESS_MANAGE_LIMITED = 64;
}

/// Represents the execution context when GetPrintExecutionData is called.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/printdocs/print-execution-context>.
///
/// {@category enum}
extension type const PRINT_EXECUTION_CONTEXT(int _) implements int {
  @Deprecated('Use PRINT_EXECUTION_CONTEXT_APPLICATION instead')
  static const PRINT_EXECUTION_CONTEXT_APPLICATION = 0;
  @Deprecated('Use PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE instead')
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE =
      PRINT_EXECUTION_CONTEXT(1);
  @Deprecated('Use PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST instead')
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST =
      PRINT_EXECUTION_CONTEXT(2);
  @Deprecated('Use PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE instead')
  static const PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE =
      PRINT_EXECUTION_CONTEXT(3);
  @Deprecated('Use PRINT_EXECUTION_CONTEXT_WOW64 instead')
  static const PRINT_EXECUTION_CONTEXT_WOW64 = 4;
}

/// {@category enum}
extension type const PRINT_WINDOW_FLAGS(int _) implements int {
  @Deprecated('Use PW_CLIENTONLY instead')
  static const PW_CLIENTONLY = 1;
}

/// {@category enum}
extension type const PROCESSOR_ARCHITECTURE(int _) implements int {
  @Deprecated('Use PROCESSOR_ARCHITECTURE_INTEL instead')
  static const PROCESSOR_ARCHITECTURE_INTEL = 0;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_MIPS instead')
  static const PROCESSOR_ARCHITECTURE_MIPS = 1;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_ALPHA instead')
  static const PROCESSOR_ARCHITECTURE_ALPHA = 2;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_PPC instead')
  static const PROCESSOR_ARCHITECTURE_PPC = 3;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_SHX instead')
  static const PROCESSOR_ARCHITECTURE_SHX = 4;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_ARM instead')
  static const PROCESSOR_ARCHITECTURE_ARM = 5;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_IA64 instead')
  static const PROCESSOR_ARCHITECTURE_IA64 = 6;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_ALPHA64 instead')
  static const PROCESSOR_ARCHITECTURE_ALPHA64 = 7;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_MSIL instead')
  static const PROCESSOR_ARCHITECTURE_MSIL = 8;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_AMD64 instead')
  static const PROCESSOR_ARCHITECTURE_AMD64 = 9;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 instead')
  static const PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 = PROCESSOR_ARCHITECTURE(
    10,
  );
  @Deprecated('Use PROCESSOR_ARCHITECTURE_NEUTRAL instead')
  static const PROCESSOR_ARCHITECTURE_NEUTRAL = 11;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_ARM64 instead')
  static const PROCESSOR_ARCHITECTURE_ARM64 = 12;
  @Deprecated('Use PROCESSOR_ARCHITECTURE_ARM32_ON_WIN64 instead')
  static const PROCESSOR_ARCHITECTURE_ARM32_ON_WIN64 = PROCESSOR_ARCHITECTURE(
    13,
  );
  @Deprecated('Use PROCESSOR_ARCHITECTURE_IA32_ON_ARM64 instead')
  static const PROCESSOR_ARCHITECTURE_IA32_ON_ARM64 = PROCESSOR_ARCHITECTURE(
    14,
  );
  @Deprecated('Use PROCESSOR_ARCHITECTURE_UNKNOWN instead')
  static const PROCESSOR_ARCHITECTURE_UNKNOWN = 65535;
}

/// Represents the type of processor cache identified in the corresponding
/// CACHE_DESCRIPTOR structure.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ne-winnt-processor_cache_type>.
///
/// {@category enum}
extension type const PROCESSOR_CACHE_TYPE(int _) implements int {
  /// The cache is unified.
  @Deprecated('Use CacheUnified instead')
  static const CacheUnified = 0;

  /// The cache is for processor instructions.
  @Deprecated('Use CacheInstruction instead')
  static const CacheInstruction = 1;

  /// The cache is for data.
  @Deprecated('Use CacheData instead')
  static const CacheData = 2;

  /// The cache is for traces.
  @Deprecated('Use CacheTrace instead')
  static const CacheTrace = 3;
}

/// {@category enum}
extension type const PROCESS_ACCESS_RIGHTS(int _) implements int {
  @Deprecated('Use PROCESS_TERMINATE instead')
  static const PROCESS_TERMINATE = 1;
  @Deprecated('Use PROCESS_CREATE_THREAD instead')
  static const PROCESS_CREATE_THREAD = 2;
  @Deprecated('Use PROCESS_SET_SESSIONID instead')
  static const PROCESS_SET_SESSIONID = 4;
  @Deprecated('Use PROCESS_VM_OPERATION instead')
  static const PROCESS_VM_OPERATION = 8;
  @Deprecated('Use PROCESS_VM_READ instead')
  static const PROCESS_VM_READ = 16;
  @Deprecated('Use PROCESS_VM_WRITE instead')
  static const PROCESS_VM_WRITE = 32;
  @Deprecated('Use PROCESS_DUP_HANDLE instead')
  static const PROCESS_DUP_HANDLE = 64;
  @Deprecated('Use PROCESS_CREATE_PROCESS instead')
  static const PROCESS_CREATE_PROCESS = 128;
  @Deprecated('Use PROCESS_SET_QUOTA instead')
  static const PROCESS_SET_QUOTA = 256;
  @Deprecated('Use PROCESS_SET_INFORMATION instead')
  static const PROCESS_SET_INFORMATION = 512;
  @Deprecated('Use PROCESS_QUERY_INFORMATION instead')
  static const PROCESS_QUERY_INFORMATION = 1024;
  @Deprecated('Use PROCESS_SUSPEND_RESUME instead')
  static const PROCESS_SUSPEND_RESUME = 2048;
  @Deprecated('Use PROCESS_QUERY_LIMITED_INFORMATION instead')
  static const PROCESS_QUERY_LIMITED_INFORMATION = 4096;
  @Deprecated('Use PROCESS_SET_LIMITED_INFORMATION instead')
  static const PROCESS_SET_LIMITED_INFORMATION = 8192;
  @Deprecated('Use PROCESS_ALL_ACCESS instead')
  static const PROCESS_ALL_ACCESS = 2097151;
  @Deprecated('Use PROCESS_DELETE instead')
  static const PROCESS_DELETE = 65536;
  @Deprecated('Use PROCESS_READ_CONTROL instead')
  static const PROCESS_READ_CONTROL = 131072;
  @Deprecated('Use PROCESS_WRITE_DAC instead')
  static const PROCESS_WRITE_DAC = 262144;
  @Deprecated('Use PROCESS_WRITE_OWNER instead')
  static const PROCESS_WRITE_OWNER = 524288;
  @Deprecated('Use PROCESS_SYNCHRONIZE instead')
  static const PROCESS_SYNCHRONIZE = 1048576;
  @Deprecated('Use PROCESS_STANDARD_RIGHTS_REQUIRED instead')
  static const PROCESS_STANDARD_RIGHTS_REQUIRED = 983040;
}

/// {@category enum}
extension type const PROCESS_CREATION_FLAGS(int _) implements int {
  @Deprecated('Use DEBUG_PROCESS instead')
  static const DEBUG_PROCESS = 1;
  @Deprecated('Use DEBUG_ONLY_THIS_PROCESS instead')
  static const DEBUG_ONLY_THIS_PROCESS = 2;
  @Deprecated('Use CREATE_SUSPENDED instead')
  static const CREATE_SUSPENDED = 4;
  @Deprecated('Use DETACHED_PROCESS instead')
  static const DETACHED_PROCESS = 8;
  @Deprecated('Use CREATE_NEW_CONSOLE instead')
  static const CREATE_NEW_CONSOLE = 16;
  @Deprecated('Use NORMAL_PRIORITY_CLASS instead')
  static const NORMAL_PRIORITY_CLASS = 32;
  @Deprecated('Use IDLE_PRIORITY_CLASS instead')
  static const IDLE_PRIORITY_CLASS = 64;
  @Deprecated('Use HIGH_PRIORITY_CLASS instead')
  static const HIGH_PRIORITY_CLASS = 128;
  @Deprecated('Use REALTIME_PRIORITY_CLASS instead')
  static const REALTIME_PRIORITY_CLASS = 256;
  @Deprecated('Use CREATE_NEW_PROCESS_GROUP instead')
  static const CREATE_NEW_PROCESS_GROUP = 512;
  @Deprecated('Use CREATE_UNICODE_ENVIRONMENT instead')
  static const CREATE_UNICODE_ENVIRONMENT = 1024;
  @Deprecated('Use CREATE_SEPARATE_WOW_VDM instead')
  static const CREATE_SEPARATE_WOW_VDM = 2048;
  @Deprecated('Use CREATE_SHARED_WOW_VDM instead')
  static const CREATE_SHARED_WOW_VDM = 4096;
  @Deprecated('Use CREATE_FORCEDOS instead')
  static const CREATE_FORCEDOS = 8192;
  @Deprecated('Use BELOW_NORMAL_PRIORITY_CLASS instead')
  static const BELOW_NORMAL_PRIORITY_CLASS = 16384;
  @Deprecated('Use ABOVE_NORMAL_PRIORITY_CLASS instead')
  static const ABOVE_NORMAL_PRIORITY_CLASS = 32768;
  @Deprecated('Use INHERIT_PARENT_AFFINITY instead')
  static const INHERIT_PARENT_AFFINITY = 65536;
  @Deprecated('Use INHERIT_CALLER_PRIORITY instead')
  static const INHERIT_CALLER_PRIORITY = 131072;
  @Deprecated('Use CREATE_PROTECTED_PROCESS instead')
  static const CREATE_PROTECTED_PROCESS = 262144;
  @Deprecated('Use EXTENDED_STARTUPINFO_PRESENT instead')
  static const EXTENDED_STARTUPINFO_PRESENT = 524288;
  @Deprecated('Use PROCESS_MODE_BACKGROUND_BEGIN instead')
  static const PROCESS_MODE_BACKGROUND_BEGIN = 1048576;
  @Deprecated('Use PROCESS_MODE_BACKGROUND_END instead')
  static const PROCESS_MODE_BACKGROUND_END = 2097152;
  @Deprecated('Use CREATE_SECURE_PROCESS instead')
  static const CREATE_SECURE_PROCESS = 4194304;
  @Deprecated('Use CREATE_BREAKAWAY_FROM_JOB instead')
  static const CREATE_BREAKAWAY_FROM_JOB = 16777216;
  @Deprecated('Use CREATE_PRESERVE_CODE_AUTHZ_LEVEL instead')
  static const CREATE_PRESERVE_CODE_AUTHZ_LEVEL = PROCESS_CREATION_FLAGS(
    33554432,
  );
  @Deprecated('Use CREATE_DEFAULT_ERROR_MODE instead')
  static const CREATE_DEFAULT_ERROR_MODE = 67108864;
  @Deprecated('Use CREATE_NO_WINDOW instead')
  static const CREATE_NO_WINDOW = 134217728;
  @Deprecated('Use PROFILE_USER instead')
  static const PROFILE_USER = 268435456;
  @Deprecated('Use PROFILE_KERNEL instead')
  static const PROFILE_KERNEL = 536870912;
  @Deprecated('Use PROFILE_SERVER instead')
  static const PROFILE_SERVER = 1073741824;
  @Deprecated('Use CREATE_IGNORE_SYSTEM_DEFAULT instead')
  static const CREATE_IGNORE_SYSTEM_DEFAULT = PROCESS_CREATION_FLAGS(
    2147483648,
  );
}

/// {@category enum}
extension type const PROCESS_NAME_FORMAT(int _) implements int {
  @Deprecated('Use PROCESS_NAME_WIN32 instead')
  static const PROCESS_NAME_WIN32 = 0;
  @Deprecated('Use PROCESS_NAME_NATIVE instead')
  static const PROCESS_NAME_NATIVE = 1;
}

/// {@category enum}
extension type const PROPSPEC_KIND(int _) implements int {
  @Deprecated('Use PRSPEC_LPWSTR instead')
  static const PRSPEC_LPWSTR = 0;
  @Deprecated('Use PRSPEC_PROPID instead')
  static const PRSPEC_PROPID = 1;
}

/// {@category enum}
extension type const PURGE_COMM_FLAGS(int _) implements int {
  @Deprecated('Use PURGE_RXABORT instead')
  static const PURGE_RXABORT = 2;
  @Deprecated('Use PURGE_RXCLEAR instead')
  static const PURGE_RXCLEAR = 8;
  @Deprecated('Use PURGE_TXABORT instead')
  static const PURGE_TXABORT = 1;
  @Deprecated('Use PURGE_TXCLEAR instead')
  static const PURGE_TXCLEAR = 4;
}

/// {@category enum}
extension type const QUEUE_STATUS_FLAGS(int _) implements int {
  @Deprecated('Use QS_ALLEVENTS instead')
  static const QS_ALLEVENTS = 1215;
  @Deprecated('Use QS_ALLINPUT instead')
  static const QS_ALLINPUT = 1279;
  @Deprecated('Use QS_ALLPOSTMESSAGE instead')
  static const QS_ALLPOSTMESSAGE = 256;
  @Deprecated('Use QS_HOTKEY instead')
  static const QS_HOTKEY = 128;
  @Deprecated('Use QS_INPUT instead')
  static const QS_INPUT = 1031;
  @Deprecated('Use QS_KEY instead')
  static const QS_KEY = 1;
  @Deprecated('Use QS_MOUSE instead')
  static const QS_MOUSE = 6;
  @Deprecated('Use QS_MOUSEBUTTON instead')
  static const QS_MOUSEBUTTON = 4;
  @Deprecated('Use QS_MOUSEMOVE instead')
  static const QS_MOUSEMOVE = 2;
  @Deprecated('Use QS_PAINT instead')
  static const QS_PAINT = 32;
  @Deprecated('Use QS_POSTMESSAGE instead')
  static const QS_POSTMESSAGE = 8;
  @Deprecated('Use QS_RAWINPUT instead')
  static const QS_RAWINPUT = 1024;
  @Deprecated('Use QS_SENDMESSAGE instead')
  static const QS_SENDMESSAGE = 64;
  @Deprecated('Use QS_TIMER instead')
  static const QS_TIMER = 16;
}

/// {@category enum}
extension type const RAWINPUTDEVICE_FLAGS(int _) implements int {
  @Deprecated('Use RIDEV_REMOVE instead')
  static const RIDEV_REMOVE = 1;
  @Deprecated('Use RIDEV_EXCLUDE instead')
  static const RIDEV_EXCLUDE = 16;
  @Deprecated('Use RIDEV_PAGEONLY instead')
  static const RIDEV_PAGEONLY = 32;
  @Deprecated('Use RIDEV_NOLEGACY instead')
  static const RIDEV_NOLEGACY = 48;
  @Deprecated('Use RIDEV_INPUTSINK instead')
  static const RIDEV_INPUTSINK = 256;
  @Deprecated('Use RIDEV_CAPTUREMOUSE instead')
  static const RIDEV_CAPTUREMOUSE = 512;
  @Deprecated('Use RIDEV_NOHOTKEYS instead')
  static const RIDEV_NOHOTKEYS = 512;
  @Deprecated('Use RIDEV_APPKEYS instead')
  static const RIDEV_APPKEYS = 1024;
  @Deprecated('Use RIDEV_EXINPUTSINK instead')
  static const RIDEV_EXINPUTSINK = 4096;
  @Deprecated('Use RIDEV_DEVNOTIFY instead')
  static const RIDEV_DEVNOTIFY = 8192;
}

/// {@category enum}
extension type const RAW_INPUT_DATA_COMMAND_FLAGS(int _) implements int {
  @Deprecated('Use RID_HEADER instead')
  static const RID_HEADER = 268435461;
  @Deprecated('Use RID_INPUT instead')
  static const RID_INPUT = 268435459;
}

/// {@category enum}
extension type const RAW_INPUT_DEVICE_INFO_COMMAND(int _) implements int {
  @Deprecated('Use RIDI_PREPARSEDDATA instead')
  static const RIDI_PREPARSEDDATA = 536870917;
  @Deprecated('Use RIDI_DEVICENAME instead')
  static const RIDI_DEVICENAME = 536870919;
  @Deprecated('Use RIDI_DEVICEINFO instead')
  static const RIDI_DEVICEINFO = 536870923;
}

/// {@category enum}
extension type const REDRAW_WINDOW_FLAGS(int _) implements int {
  @Deprecated('Use RDW_INVALIDATE instead')
  static const RDW_INVALIDATE = 1;
  @Deprecated('Use RDW_INTERNALPAINT instead')
  static const RDW_INTERNALPAINT = 2;
  @Deprecated('Use RDW_ERASE instead')
  static const RDW_ERASE = 4;
  @Deprecated('Use RDW_VALIDATE instead')
  static const RDW_VALIDATE = 8;
  @Deprecated('Use RDW_NOINTERNALPAINT instead')
  static const RDW_NOINTERNALPAINT = 16;
  @Deprecated('Use RDW_NOERASE instead')
  static const RDW_NOERASE = 32;
  @Deprecated('Use RDW_NOCHILDREN instead')
  static const RDW_NOCHILDREN = 64;
  @Deprecated('Use RDW_ALLCHILDREN instead')
  static const RDW_ALLCHILDREN = 128;
  @Deprecated('Use RDW_UPDATENOW instead')
  static const RDW_UPDATENOW = 256;
  @Deprecated('Use RDW_ERASENOW instead')
  static const RDW_ERASENOW = 512;
  @Deprecated('Use RDW_FRAME instead')
  static const RDW_FRAME = 1024;
  @Deprecated('Use RDW_NOFRAME instead')
  static const RDW_NOFRAME = 2048;
}

/// {@category enum}
extension type const REGISTER_NOTIFICATION_FLAGS(int _) implements int {
  @Deprecated('Use DEVICE_NOTIFY_SERVICE_HANDLE instead')
  static const DEVICE_NOTIFY_SERVICE_HANDLE = 1;
  @Deprecated('Use DEVICE_NOTIFY_CALLBACK instead')
  static const DEVICE_NOTIFY_CALLBACK = 2;
  @Deprecated('Use DEVICE_NOTIFY_WINDOW_HANDLE instead')
  static const DEVICE_NOTIFY_WINDOW_HANDLE = 0;
  @Deprecated('Use DEVICE_NOTIFY_ALL_INTERFACE_CLASSES instead')
  static const DEVICE_NOTIFY_ALL_INTERFACE_CLASSES =
      REGISTER_NOTIFICATION_FLAGS(4);
}

/// {@category enum}
extension type const REGISTER_TOUCH_WINDOW_FLAGS(int _) implements int {
  @Deprecated('Use TWF_FINETOUCH instead')
  static const TWF_FINETOUCH = 1;
  @Deprecated('Use TWF_WANTPALM instead')
  static const TWF_WANTPALM = 2;
}

/// {@category enum}
extension type const REG_CREATE_KEY_DISPOSITION(int _) implements int {
  @Deprecated('Use REG_CREATED_NEW_KEY instead')
  static const REG_CREATED_NEW_KEY = 1;
  @Deprecated('Use REG_OPENED_EXISTING_KEY instead')
  static const REG_OPENED_EXISTING_KEY = 2;
}

/// {@category enum}
extension type const REG_NOTIFY_FILTER(int _) implements int {
  @Deprecated('Use REG_NOTIFY_CHANGE_NAME instead')
  static const REG_NOTIFY_CHANGE_NAME = 1;
  @Deprecated('Use REG_NOTIFY_CHANGE_ATTRIBUTES instead')
  static const REG_NOTIFY_CHANGE_ATTRIBUTES = 2;
  @Deprecated('Use REG_NOTIFY_CHANGE_LAST_SET instead')
  static const REG_NOTIFY_CHANGE_LAST_SET = 4;
  @Deprecated('Use REG_NOTIFY_CHANGE_SECURITY instead')
  static const REG_NOTIFY_CHANGE_SECURITY = 8;
  @Deprecated('Use REG_NOTIFY_THREAD_AGNOSTIC instead')
  static const REG_NOTIFY_THREAD_AGNOSTIC = 268435456;
}

/// {@category enum}
extension type const REG_OPEN_CREATE_OPTIONS(int _) implements int {
  @Deprecated('Use REG_OPTION_RESERVED instead')
  static const REG_OPTION_RESERVED = 0;
  @Deprecated('Use REG_OPTION_NON_VOLATILE instead')
  static const REG_OPTION_NON_VOLATILE = 0;
  @Deprecated('Use REG_OPTION_VOLATILE instead')
  static const REG_OPTION_VOLATILE = 1;
  @Deprecated('Use REG_OPTION_CREATE_LINK instead')
  static const REG_OPTION_CREATE_LINK = 2;
  @Deprecated('Use REG_OPTION_BACKUP_RESTORE instead')
  static const REG_OPTION_BACKUP_RESTORE = 4;
  @Deprecated('Use REG_OPTION_OPEN_LINK instead')
  static const REG_OPTION_OPEN_LINK = 8;
  @Deprecated('Use REG_OPTION_DONT_VIRTUALIZE instead')
  static const REG_OPTION_DONT_VIRTUALIZE = 16;
}

/// {@category enum}
extension type const REG_ROUTINE_FLAGS(int _) implements int {
  @Deprecated('Use RRF_RT_DWORD instead')
  static const RRF_RT_DWORD = 24;
  @Deprecated('Use RRF_RT_QWORD instead')
  static const RRF_RT_QWORD = 72;
  @Deprecated('Use RRF_RT_REG_NONE instead')
  static const RRF_RT_REG_NONE = 1;
  @Deprecated('Use RRF_RT_REG_SZ instead')
  static const RRF_RT_REG_SZ = 2;
  @Deprecated('Use RRF_RT_REG_EXPAND_SZ instead')
  static const RRF_RT_REG_EXPAND_SZ = 4;
  @Deprecated('Use RRF_RT_REG_BINARY instead')
  static const RRF_RT_REG_BINARY = 8;
  @Deprecated('Use RRF_RT_REG_DWORD instead')
  static const RRF_RT_REG_DWORD = 16;
  @Deprecated('Use RRF_RT_REG_MULTI_SZ instead')
  static const RRF_RT_REG_MULTI_SZ = 32;
  @Deprecated('Use RRF_RT_REG_QWORD instead')
  static const RRF_RT_REG_QWORD = 64;
  @Deprecated('Use RRF_RT_ANY instead')
  static const RRF_RT_ANY = 65535;
  @Deprecated('Use RRF_SUBKEY_WOW6464KEY instead')
  static const RRF_SUBKEY_WOW6464KEY = 65536;
  @Deprecated('Use RRF_SUBKEY_WOW6432KEY instead')
  static const RRF_SUBKEY_WOW6432KEY = 131072;
  @Deprecated('Use RRF_WOW64_MASK instead')
  static const RRF_WOW64_MASK = 196608;
  @Deprecated('Use RRF_NOEXPAND instead')
  static const RRF_NOEXPAND = 268435456;
  @Deprecated('Use RRF_ZEROONFAILURE instead')
  static const RRF_ZEROONFAILURE = 536870912;
}

/// {@category enum}
extension type const REG_SAM_FLAGS(int _) implements int {
  @Deprecated('Use KEY_QUERY_VALUE instead')
  static const KEY_QUERY_VALUE = 1;
  @Deprecated('Use KEY_SET_VALUE instead')
  static const KEY_SET_VALUE = 2;
  @Deprecated('Use KEY_CREATE_SUB_KEY instead')
  static const KEY_CREATE_SUB_KEY = 4;
  @Deprecated('Use KEY_ENUMERATE_SUB_KEYS instead')
  static const KEY_ENUMERATE_SUB_KEYS = 8;
  @Deprecated('Use KEY_NOTIFY instead')
  static const KEY_NOTIFY = 16;
  @Deprecated('Use KEY_CREATE_LINK instead')
  static const KEY_CREATE_LINK = 32;
  @Deprecated('Use KEY_WOW64_32KEY instead')
  static const KEY_WOW64_32KEY = 512;
  @Deprecated('Use KEY_WOW64_64KEY instead')
  static const KEY_WOW64_64KEY = 256;
  @Deprecated('Use KEY_WOW64_RES instead')
  static const KEY_WOW64_RES = 768;
  @Deprecated('Use KEY_READ instead')
  static const KEY_READ = 131097;
  @Deprecated('Use KEY_WRITE instead')
  static const KEY_WRITE = 131078;
  @Deprecated('Use KEY_EXECUTE instead')
  static const KEY_EXECUTE = 131097;
  @Deprecated('Use KEY_ALL_ACCESS instead')
  static const KEY_ALL_ACCESS = 983103;
}

/// {@category enum}
extension type const REG_SAVE_FORMAT(int _) implements int {
  @Deprecated('Use REG_STANDARD_FORMAT instead')
  static const REG_STANDARD_FORMAT = 1;
  @Deprecated('Use REG_LATEST_FORMAT instead')
  static const REG_LATEST_FORMAT = 2;
  @Deprecated('Use REG_NO_COMPRESSION instead')
  static const REG_NO_COMPRESSION = 4;
}

/// {@category enum}
extension type const REG_VALUE_TYPE(int _) implements int {
  @Deprecated('Use REG_NONE instead')
  static const REG_NONE = 0;
  @Deprecated('Use REG_SZ instead')
  static const REG_SZ = 1;
  @Deprecated('Use REG_EXPAND_SZ instead')
  static const REG_EXPAND_SZ = 2;
  @Deprecated('Use REG_BINARY instead')
  static const REG_BINARY = 3;
  @Deprecated('Use REG_DWORD instead')
  static const REG_DWORD = 4;
  @Deprecated('Use REG_DWORD_LITTLE_ENDIAN instead')
  static const REG_DWORD_LITTLE_ENDIAN = 4;
  @Deprecated('Use REG_DWORD_BIG_ENDIAN instead')
  static const REG_DWORD_BIG_ENDIAN = 5;
  @Deprecated('Use REG_LINK instead')
  static const REG_LINK = 6;
  @Deprecated('Use REG_MULTI_SZ instead')
  static const REG_MULTI_SZ = 7;
  @Deprecated('Use REG_RESOURCE_LIST instead')
  static const REG_RESOURCE_LIST = 8;
  @Deprecated('Use REG_FULL_RESOURCE_DESCRIPTOR instead')
  static const REG_FULL_RESOURCE_DESCRIPTOR = 9;
  @Deprecated('Use REG_RESOURCE_REQUIREMENTS_LIST instead')
  static const REG_RESOURCE_REQUIREMENTS_LIST = 10;
  @Deprecated('Use REG_QWORD instead')
  static const REG_QWORD = 11;
  @Deprecated('Use REG_QWORD_LITTLE_ENDIAN instead')
  static const REG_QWORD_LITTLE_ENDIAN = 11;
}

/// {@category enum}
extension type const RGN_COMBINE_MODE(int _) implements int {
  @Deprecated('Use RGN_AND instead')
  static const RGN_AND = 1;
  @Deprecated('Use RGN_OR instead')
  static const RGN_OR = 2;
  @Deprecated('Use RGN_XOR instead')
  static const RGN_XOR = 3;
  @Deprecated('Use RGN_DIFF instead')
  static const RGN_DIFF = 4;
  @Deprecated('Use RGN_COPY instead')
  static const RGN_COPY = 5;
  @Deprecated('Use RGN_MIN instead')
  static const RGN_MIN = 1;
  @Deprecated('Use RGN_MAX instead')
  static const RGN_MAX = 5;
}

/// {@category enum}
extension type const RID_DEVICE_INFO_TYPE(int _) implements int {
  @Deprecated('Use RIM_TYPEMOUSE instead')
  static const RIM_TYPEMOUSE = 0;
  @Deprecated('Use RIM_TYPEKEYBOARD instead')
  static const RIM_TYPEKEYBOARD = 1;
  @Deprecated('Use RIM_TYPEHID instead')
  static const RIM_TYPEHID = 2;
}

/// {@category enum}
extension type const ROP_CODE(int _) implements int {
  @Deprecated('Use BLACKNESS instead')
  static const BLACKNESS = 66;
  @Deprecated('Use NOTSRCERASE instead')
  static const NOTSRCERASE = 1114278;
  @Deprecated('Use NOTSRCCOPY instead')
  static const NOTSRCCOPY = 3342344;
  @Deprecated('Use SRCERASE instead')
  static const SRCERASE = 4457256;
  @Deprecated('Use DSTINVERT instead')
  static const DSTINVERT = 5570569;
  @Deprecated('Use PATINVERT instead')
  static const PATINVERT = 5898313;
  @Deprecated('Use SRCINVERT instead')
  static const SRCINVERT = 6684742;
  @Deprecated('Use SRCAND instead')
  static const SRCAND = 8913094;
  @Deprecated('Use MERGEPAINT instead')
  static const MERGEPAINT = 12255782;
  @Deprecated('Use MERGECOPY instead')
  static const MERGECOPY = 12583114;
  @Deprecated('Use SRCCOPY instead')
  static const SRCCOPY = 13369376;
  @Deprecated('Use SRCPAINT instead')
  static const SRCPAINT = 15597702;
  @Deprecated('Use PATCOPY instead')
  static const PATCOPY = 15728673;
  @Deprecated('Use PATPAINT instead')
  static const PATPAINT = 16452105;
  @Deprecated('Use WHITENESS instead')
  static const WHITENESS = 16711778;
  @Deprecated('Use CAPTUREBLT instead')
  static const CAPTUREBLT = 1073741824;
  @Deprecated('Use NOMIRRORBITMAP instead')
  static const NOMIRRORBITMAP = 2147483648;
}

/// {@category enum}
extension type const ROT_FLAGS(int _) implements int {
  @Deprecated('Use ROTFLAGS_REGISTRATIONKEEPSALIVE instead')
  static const ROTFLAGS_REGISTRATIONKEEPSALIVE = 1;
  @Deprecated('Use ROTFLAGS_ALLOWANYCLIENT instead')
  static const ROTFLAGS_ALLOWANYCLIENT = 2;
}

/// {@category enum}
extension type const RPC_C_AUTHN_LEVEL(int _) implements int {
  @Deprecated('Use RPC_C_AUTHN_LEVEL_DEFAULT instead')
  static const RPC_C_AUTHN_LEVEL_DEFAULT = 0;
  @Deprecated('Use RPC_C_AUTHN_LEVEL_NONE instead')
  static const RPC_C_AUTHN_LEVEL_NONE = 1;
  @Deprecated('Use RPC_C_AUTHN_LEVEL_CONNECT instead')
  static const RPC_C_AUTHN_LEVEL_CONNECT = 2;
  @Deprecated('Use RPC_C_AUTHN_LEVEL_CALL instead')
  static const RPC_C_AUTHN_LEVEL_CALL = 3;
  @Deprecated('Use RPC_C_AUTHN_LEVEL_PKT instead')
  static const RPC_C_AUTHN_LEVEL_PKT = 4;
  @Deprecated('Use RPC_C_AUTHN_LEVEL_PKT_INTEGRITY instead')
  static const RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = 5;
  @Deprecated('Use RPC_C_AUTHN_LEVEL_PKT_PRIVACY instead')
  static const RPC_C_AUTHN_LEVEL_PKT_PRIVACY = 6;
}

/// {@category enum}
extension type const RPC_C_IMP_LEVEL(int _) implements int {
  @Deprecated('Use RPC_C_IMP_LEVEL_DEFAULT instead')
  static const RPC_C_IMP_LEVEL_DEFAULT = 0;
  @Deprecated('Use RPC_C_IMP_LEVEL_ANONYMOUS instead')
  static const RPC_C_IMP_LEVEL_ANONYMOUS = 1;
  @Deprecated('Use RPC_C_IMP_LEVEL_IDENTIFY instead')
  static const RPC_C_IMP_LEVEL_IDENTIFY = 2;
  @Deprecated('Use RPC_C_IMP_LEVEL_IMPERSONATE instead')
  static const RPC_C_IMP_LEVEL_IMPERSONATE = 3;
  @Deprecated('Use RPC_C_IMP_LEVEL_DELEGATE instead')
  static const RPC_C_IMP_LEVEL_DELEGATE = 4;
}

/// Contains values that specify whether data in a table should be read
/// primarily by row or by column.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-roworcolumnmajor>.
///
/// {@category enum}
extension type const RowOrColumnMajor(int _) implements int {
  /// Data in the table should be read row by row.
  @Deprecated('Use RowOrColumnMajor_RowMajor instead')
  static const RowOrColumnMajor_RowMajor = 0;

  /// Data in the table should be read column by column.
  @Deprecated('Use RowOrColumnMajor_ColumnMajor instead')
  static const RowOrColumnMajor_ColumnMajor = 1;

  /// The best way to present the data is indeterminate.
  @Deprecated('Use RowOrColumnMajor_Indeterminate instead')
  static const RowOrColumnMajor_Indeterminate = 2;
}

/// {@category enum}
extension type const SCARD_SCOPE(int _) implements int {
  @Deprecated('Use SCARD_SCOPE_USER instead')
  static const SCARD_SCOPE_USER = 0;
  @Deprecated('Use SCARD_SCOPE_SYSTEM instead')
  static const SCARD_SCOPE_SYSTEM = 2;
}

/// {@category enum}
extension type const SCARD_STATE(int _) implements int {
  @Deprecated('Use SCARD_STATE_UNAWARE instead')
  static const SCARD_STATE_UNAWARE = 0;
  @Deprecated('Use SCARD_STATE_IGNORE instead')
  static const SCARD_STATE_IGNORE = 1;
  @Deprecated('Use SCARD_STATE_UNAVAILABLE instead')
  static const SCARD_STATE_UNAVAILABLE = 8;
  @Deprecated('Use SCARD_STATE_EMPTY instead')
  static const SCARD_STATE_EMPTY = 16;
  @Deprecated('Use SCARD_STATE_PRESENT instead')
  static const SCARD_STATE_PRESENT = 32;
  @Deprecated('Use SCARD_STATE_ATRMATCH instead')
  static const SCARD_STATE_ATRMATCH = 64;
  @Deprecated('Use SCARD_STATE_EXCLUSIVE instead')
  static const SCARD_STATE_EXCLUSIVE = 128;
  @Deprecated('Use SCARD_STATE_INUSE instead')
  static const SCARD_STATE_INUSE = 256;
  @Deprecated('Use SCARD_STATE_MUTE instead')
  static const SCARD_STATE_MUTE = 512;
  @Deprecated('Use SCARD_STATE_CHANGED instead')
  static const SCARD_STATE_CHANGED = 2;
  @Deprecated('Use SCARD_STATE_UNKNOWN instead')
  static const SCARD_STATE_UNKNOWN = 4;
}

/// {@category enum}
extension type const SCROLLBAR_COMMAND(int _) implements int {
  @Deprecated('Use SB_LINEUP instead')
  static const SB_LINEUP = 0;
  @Deprecated('Use SB_LINELEFT instead')
  static const SB_LINELEFT = 0;
  @Deprecated('Use SB_LINEDOWN instead')
  static const SB_LINEDOWN = 1;
  @Deprecated('Use SB_LINERIGHT instead')
  static const SB_LINERIGHT = 1;
  @Deprecated('Use SB_PAGEUP instead')
  static const SB_PAGEUP = 2;
  @Deprecated('Use SB_PAGELEFT instead')
  static const SB_PAGELEFT = 2;
  @Deprecated('Use SB_PAGEDOWN instead')
  static const SB_PAGEDOWN = 3;
  @Deprecated('Use SB_PAGERIGHT instead')
  static const SB_PAGERIGHT = 3;
  @Deprecated('Use SB_THUMBPOSITION instead')
  static const SB_THUMBPOSITION = 4;
  @Deprecated('Use SB_THUMBTRACK instead')
  static const SB_THUMBTRACK = 5;
  @Deprecated('Use SB_TOP instead')
  static const SB_TOP = 6;
  @Deprecated('Use SB_LEFT instead')
  static const SB_LEFT = 6;
  @Deprecated('Use SB_RIGHT instead')
  static const SB_RIGHT = 7;
  @Deprecated('Use SB_BOTTOM instead')
  static const SB_BOTTOM = 7;
  @Deprecated('Use SB_ENDSCROLL instead')
  static const SB_ENDSCROLL = 8;
}

/// {@category enum}
extension type const SCROLLBAR_CONSTANTS(int _) implements int {
  @Deprecated('Use SB_CTL instead')
  static const SB_CTL = 2;
  @Deprecated('Use SB_HORZ instead')
  static const SB_HORZ = 0;
  @Deprecated('Use SB_VERT instead')
  static const SB_VERT = 1;
  @Deprecated('Use SB_BOTH instead')
  static const SB_BOTH = 3;
}

/// {@category enum}
extension type const SCROLLINFO_MASK(int _) implements int {
  @Deprecated('Use SIF_ALL instead')
  static const SIF_ALL = 23;
  @Deprecated('Use SIF_DISABLENOSCROLL instead')
  static const SIF_DISABLENOSCROLL = 8;
  @Deprecated('Use SIF_PAGE instead')
  static const SIF_PAGE = 2;
  @Deprecated('Use SIF_POS instead')
  static const SIF_POS = 4;
  @Deprecated('Use SIF_RANGE instead')
  static const SIF_RANGE = 1;
  @Deprecated('Use SIF_TRACKPOS instead')
  static const SIF_TRACKPOS = 16;
}

/// {@category enum}
extension type const SCROLL_WINDOW_FLAGS(int _) implements int {
  @Deprecated('Use SW_SCROLLCHILDREN instead')
  static const SW_SCROLLCHILDREN = 1;
  @Deprecated('Use SW_INVALIDATE instead')
  static const SW_INVALIDATE = 2;
  @Deprecated('Use SW_ERASE instead')
  static const SW_ERASE = 4;
  @Deprecated('Use SW_SMOOTHSCROLL instead')
  static const SW_SMOOTHSCROLL = 16;
}

/// {@category enum}
extension type const SC_ACTION_TYPE(int _) implements int {
  @Deprecated('Use SC_ACTION_NONE instead')
  static const SC_ACTION_NONE = 0;
  @Deprecated('Use SC_ACTION_RESTART instead')
  static const SC_ACTION_RESTART = 1;
  @Deprecated('Use SC_ACTION_REBOOT instead')
  static const SC_ACTION_REBOOT = 2;
  @Deprecated('Use SC_ACTION_RUN_COMMAND instead')
  static const SC_ACTION_RUN_COMMAND = 3;
  @Deprecated('Use SC_ACTION_OWN_RESTART instead')
  static const SC_ACTION_OWN_RESTART = 4;
}

/// {@category enum}
extension type const SC_ENUM_TYPE(int _) implements int {
  @Deprecated('Use SC_ENUM_PROCESS_INFO instead')
  static const SC_ENUM_PROCESS_INFO = 0;
}

/// {@category enum}
extension type const SC_STATUS_TYPE(int _) implements int {
  @Deprecated('Use SC_STATUS_PROCESS_INFO instead')
  static const SC_STATUS_PROCESS_INFO = 0;
}

/// {@category enum}
extension type const SDP_SPECIFICTYPE(int _) implements int {
  @Deprecated('Use SDP_ST_NONE instead')
  static const SDP_ST_NONE = 0;
  @Deprecated('Use SDP_ST_UINT8 instead')
  static const SDP_ST_UINT8 = 16;
  @Deprecated('Use SDP_ST_UINT16 instead')
  static const SDP_ST_UINT16 = 272;
  @Deprecated('Use SDP_ST_UINT32 instead')
  static const SDP_ST_UINT32 = 528;
  @Deprecated('Use SDP_ST_UINT64 instead')
  static const SDP_ST_UINT64 = 784;
  @Deprecated('Use SDP_ST_UINT128 instead')
  static const SDP_ST_UINT128 = 1040;
  @Deprecated('Use SDP_ST_INT8 instead')
  static const SDP_ST_INT8 = 32;
  @Deprecated('Use SDP_ST_INT16 instead')
  static const SDP_ST_INT16 = 288;
  @Deprecated('Use SDP_ST_INT32 instead')
  static const SDP_ST_INT32 = 544;
  @Deprecated('Use SDP_ST_INT64 instead')
  static const SDP_ST_INT64 = 800;
  @Deprecated('Use SDP_ST_INT128 instead')
  static const SDP_ST_INT128 = 1056;
  @Deprecated('Use SDP_ST_UUID16 instead')
  static const SDP_ST_UUID16 = 304;
  @Deprecated('Use SDP_ST_UUID32 instead')
  static const SDP_ST_UUID32 = 544;
  @Deprecated('Use SDP_ST_UUID128 instead')
  static const SDP_ST_UUID128 = 1072;
}

/// {@category enum}
extension type const SDP_TYPE(int _) implements int {
  @Deprecated('Use SDP_TYPE_NIL instead')
  static const SDP_TYPE_NIL = 0;
  @Deprecated('Use SDP_TYPE_UINT instead')
  static const SDP_TYPE_UINT = 1;
  @Deprecated('Use SDP_TYPE_INT instead')
  static const SDP_TYPE_INT = 2;
  @Deprecated('Use SDP_TYPE_UUID instead')
  static const SDP_TYPE_UUID = 3;
  @Deprecated('Use SDP_TYPE_STRING instead')
  static const SDP_TYPE_STRING = 4;
  @Deprecated('Use SDP_TYPE_BOOLEAN instead')
  static const SDP_TYPE_BOOLEAN = 5;
  @Deprecated('Use SDP_TYPE_SEQUENCE instead')
  static const SDP_TYPE_SEQUENCE = 6;
  @Deprecated('Use SDP_TYPE_ALTERNATIVE instead')
  static const SDP_TYPE_ALTERNATIVE = 7;
  @Deprecated('Use SDP_TYPE_URL instead')
  static const SDP_TYPE_URL = 8;
  @Deprecated('Use SDP_TYPE_CONTAINER instead')
  static const SDP_TYPE_CONTAINER = 32;
}

/// {@category enum}
extension type const SECURITY_DESCRIPTOR_CONTROL(int _) implements int {
  @Deprecated('Use SE_OWNER_DEFAULTED instead')
  static const SE_OWNER_DEFAULTED = 1;
  @Deprecated('Use SE_GROUP_DEFAULTED instead')
  static const SE_GROUP_DEFAULTED = 2;
  @Deprecated('Use SE_DACL_PRESENT instead')
  static const SE_DACL_PRESENT = 4;
  @Deprecated('Use SE_DACL_DEFAULTED instead')
  static const SE_DACL_DEFAULTED = 8;
  @Deprecated('Use SE_SACL_PRESENT instead')
  static const SE_SACL_PRESENT = 16;
  @Deprecated('Use SE_SACL_DEFAULTED instead')
  static const SE_SACL_DEFAULTED = 32;
  @Deprecated('Use SE_DACL_AUTO_INHERIT_REQ instead')
  static const SE_DACL_AUTO_INHERIT_REQ = 256;
  @Deprecated('Use SE_SACL_AUTO_INHERIT_REQ instead')
  static const SE_SACL_AUTO_INHERIT_REQ = 512;
  @Deprecated('Use SE_DACL_AUTO_INHERITED instead')
  static const SE_DACL_AUTO_INHERITED = 1024;
  @Deprecated('Use SE_SACL_AUTO_INHERITED instead')
  static const SE_SACL_AUTO_INHERITED = 2048;
  @Deprecated('Use SE_DACL_PROTECTED instead')
  static const SE_DACL_PROTECTED = 4096;
  @Deprecated('Use SE_SACL_PROTECTED instead')
  static const SE_SACL_PROTECTED = 8192;
  @Deprecated('Use SE_RM_CONTROL_VALID instead')
  static const SE_RM_CONTROL_VALID = 16384;
  @Deprecated('Use SE_SELF_RELATIVE instead')
  static const SE_SELF_RELATIVE = 32768;
}

/// {@category enum}
extension type const SEND_MESSAGE_TIMEOUT_FLAGS(int _) implements int {
  @Deprecated('Use SMTO_ABORTIFHUNG instead')
  static const SMTO_ABORTIFHUNG = 2;
  @Deprecated('Use SMTO_BLOCK instead')
  static const SMTO_BLOCK = 1;
  @Deprecated('Use SMTO_NORMAL instead')
  static const SMTO_NORMAL = 0;
  @Deprecated('Use SMTO_NOTIMEOUTIFNOTHUNG instead')
  static const SMTO_NOTIMEOUTIFNOTHUNG = 8;
  @Deprecated('Use SMTO_ERRORONEXIT instead')
  static const SMTO_ERRORONEXIT = 32;
}

/// {@category enum}
extension type const SEND_RECV_FLAGS(int _) implements int {
  @Deprecated('Use MSG_OOB instead')
  static const MSG_OOB = 1;
  @Deprecated('Use MSG_PEEK instead')
  static const MSG_PEEK = 2;
  @Deprecated('Use MSG_DONTROUTE instead')
  static const MSG_DONTROUTE = 4;
  @Deprecated('Use MSG_WAITALL instead')
  static const MSG_WAITALL = 8;
  @Deprecated('Use MSG_PUSH_IMMEDIATE instead')
  static const MSG_PUSH_IMMEDIATE = 32;
}

/// {@category enum}
extension type const SERVICE_CONFIG(int _) implements int {
  @Deprecated('Use SERVICE_CONFIG_DELAYED_AUTO_START_INFO instead')
  static const SERVICE_CONFIG_DELAYED_AUTO_START_INFO = 3;
  @Deprecated('Use SERVICE_CONFIG_DESCRIPTION instead')
  static const SERVICE_CONFIG_DESCRIPTION = 1;
  @Deprecated('Use SERVICE_CONFIG_FAILURE_ACTIONS instead')
  static const SERVICE_CONFIG_FAILURE_ACTIONS = 2;
  @Deprecated('Use SERVICE_CONFIG_FAILURE_ACTIONS_FLAG instead')
  static const SERVICE_CONFIG_FAILURE_ACTIONS_FLAG = 4;
  @Deprecated('Use SERVICE_CONFIG_PREFERRED_NODE instead')
  static const SERVICE_CONFIG_PREFERRED_NODE = 9;
  @Deprecated('Use SERVICE_CONFIG_PRESHUTDOWN_INFO instead')
  static const SERVICE_CONFIG_PRESHUTDOWN_INFO = 7;
  @Deprecated('Use SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO instead')
  static const SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO = 6;
  @Deprecated('Use SERVICE_CONFIG_SERVICE_SID_INFO instead')
  static const SERVICE_CONFIG_SERVICE_SID_INFO = 5;
  @Deprecated('Use SERVICE_CONFIG_TRIGGER_INFO instead')
  static const SERVICE_CONFIG_TRIGGER_INFO = 8;
  @Deprecated('Use SERVICE_CONFIG_LAUNCH_PROTECTED instead')
  static const SERVICE_CONFIG_LAUNCH_PROTECTED = 12;
}

/// Specifies the type of a per-service directory path.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_directory_type>.
///
/// {@category enum}
extension type const SERVICE_DIRECTORY_TYPE(int _) implements int {
  /// Mutable, persistent service state.
  @Deprecated('Use ServiceDirectoryPersistentState instead')
  static const ServiceDirectoryPersistentState = 0;

  /// Reserved.
  @Deprecated('Use ServiceDirectoryTypeMax instead')
  static const ServiceDirectoryTypeMax = 1;
}

/// {@category enum}
extension type const SERVICE_ERROR(int _) implements int {
  @Deprecated('Use SERVICE_ERROR_CRITICAL instead')
  static const SERVICE_ERROR_CRITICAL = 3;
  @Deprecated('Use SERVICE_ERROR_IGNORE instead')
  static const SERVICE_ERROR_IGNORE = 0;
  @Deprecated('Use SERVICE_ERROR_NORMAL instead')
  static const SERVICE_ERROR_NORMAL = 1;
  @Deprecated('Use SERVICE_ERROR_SEVERE instead')
  static const SERVICE_ERROR_SEVERE = 2;
}

/// {@category enum}
extension type const SERVICE_NOTIFY(int _) implements int {
  @Deprecated('Use SERVICE_NOTIFY_CREATED instead')
  static const SERVICE_NOTIFY_CREATED = 128;
  @Deprecated('Use SERVICE_NOTIFY_CONTINUE_PENDING instead')
  static const SERVICE_NOTIFY_CONTINUE_PENDING = 16;
  @Deprecated('Use SERVICE_NOTIFY_DELETE_PENDING instead')
  static const SERVICE_NOTIFY_DELETE_PENDING = 512;
  @Deprecated('Use SERVICE_NOTIFY_DELETED instead')
  static const SERVICE_NOTIFY_DELETED = 256;
  @Deprecated('Use SERVICE_NOTIFY_PAUSE_PENDING instead')
  static const SERVICE_NOTIFY_PAUSE_PENDING = 32;
  @Deprecated('Use SERVICE_NOTIFY_PAUSED instead')
  static const SERVICE_NOTIFY_PAUSED = 64;
  @Deprecated('Use SERVICE_NOTIFY_RUNNING instead')
  static const SERVICE_NOTIFY_RUNNING = 8;
  @Deprecated('Use SERVICE_NOTIFY_START_PENDING instead')
  static const SERVICE_NOTIFY_START_PENDING = 2;
  @Deprecated('Use SERVICE_NOTIFY_STOP_PENDING instead')
  static const SERVICE_NOTIFY_STOP_PENDING = 4;
  @Deprecated('Use SERVICE_NOTIFY_STOPPED instead')
  static const SERVICE_NOTIFY_STOPPED = 1;
}

/// Specifies a state type for a service registry key.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_registry_state_type>.
///
/// {@category enum}
extension type const SERVICE_REGISTRY_STATE_TYPE(int _) implements int {
  /// Immutable service state, populated by INF to the Parameters subkey.
  @Deprecated('Use ServiceRegistryStateParameters instead')
  static const ServiceRegistryStateParameters = 0;

  /// Mutable, persistent service state.
  @Deprecated('Use ServiceRegistryStatePersistent instead')
  static const ServiceRegistryStatePersistent = 1;

  /// Reserved.
  @Deprecated('Use MaxServiceRegistryStateType instead')
  static const MaxServiceRegistryStateType = 2;
}

/// {@category enum}
extension type const SERVICE_RUNS_IN_PROCESS(int _) implements int {
  @Deprecated('Use SERVICE_RUNS_IN_NON_SYSTEM_OR_NOT_RUNNING instead')
  static const SERVICE_RUNS_IN_NON_SYSTEM_OR_NOT_RUNNING =
      SERVICE_RUNS_IN_PROCESS(0);
  @Deprecated('Use SERVICE_RUNS_IN_SYSTEM_PROCESS instead')
  static const SERVICE_RUNS_IN_SYSTEM_PROCESS = 1;
}

/// Specifies the type of a per-service shared directory path.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_shared_directory_type>.
///
/// {@category enum}
extension type const SERVICE_SHARED_DIRECTORY_TYPE(int _) implements int {
  /// Mutable, persistent service state.
  @Deprecated('Use ServiceSharedDirectoryPersistentState instead')
  static const ServiceSharedDirectoryPersistentState =
      SERVICE_SHARED_DIRECTORY_TYPE(0);
}

/// Specifies a state type for a service registry key.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_shared_registry_state_type>.
///
/// {@category enum}
extension type const SERVICE_SHARED_REGISTRY_STATE_TYPE(int _) implements int {
  /// Mutable, persistent service state.
  @Deprecated('Use ServiceSharedRegistryPersistentState instead')
  static const ServiceSharedRegistryPersistentState =
      SERVICE_SHARED_REGISTRY_STATE_TYPE(0);
}

/// {@category enum}
extension type const SERVICE_START_TYPE(int _) implements int {
  @Deprecated('Use SERVICE_AUTO_START instead')
  static const SERVICE_AUTO_START = 2;
  @Deprecated('Use SERVICE_BOOT_START instead')
  static const SERVICE_BOOT_START = 0;
  @Deprecated('Use SERVICE_DEMAND_START instead')
  static const SERVICE_DEMAND_START = 3;
  @Deprecated('Use SERVICE_DISABLED instead')
  static const SERVICE_DISABLED = 4;
  @Deprecated('Use SERVICE_SYSTEM_START instead')
  static const SERVICE_SYSTEM_START = 1;
}

/// {@category enum}
extension type const SERVICE_STATUS_CURRENT_STATE(int _) implements int {
  @Deprecated('Use SERVICE_CONTINUE_PENDING instead')
  static const SERVICE_CONTINUE_PENDING = 5;
  @Deprecated('Use SERVICE_PAUSE_PENDING instead')
  static const SERVICE_PAUSE_PENDING = 6;
  @Deprecated('Use SERVICE_PAUSED instead')
  static const SERVICE_PAUSED = 7;
  @Deprecated('Use SERVICE_RUNNING instead')
  static const SERVICE_RUNNING = 4;
  @Deprecated('Use SERVICE_START_PENDING instead')
  static const SERVICE_START_PENDING = 2;
  @Deprecated('Use SERVICE_STOP_PENDING instead')
  static const SERVICE_STOP_PENDING = 3;
  @Deprecated('Use SERVICE_STOPPED instead')
  static const SERVICE_STOPPED = 1;
}

/// {@category enum}
extension type const SERVICE_TRIGGER_ACTION(int _) implements int {
  @Deprecated('Use SERVICE_TRIGGER_ACTION_SERVICE_START instead')
  static const SERVICE_TRIGGER_ACTION_SERVICE_START = 1;
  @Deprecated('Use SERVICE_TRIGGER_ACTION_SERVICE_STOP instead')
  static const SERVICE_TRIGGER_ACTION_SERVICE_STOP = 2;
}

/// {@category enum}
extension type const SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(int _)
    implements int {
  @Deprecated('Use SERVICE_TRIGGER_DATA_TYPE_BINARY instead')
  static const SERVICE_TRIGGER_DATA_TYPE_BINARY =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(1);
  @Deprecated('Use SERVICE_TRIGGER_DATA_TYPE_STRING instead')
  static const SERVICE_TRIGGER_DATA_TYPE_STRING =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(2);
  @Deprecated('Use SERVICE_TRIGGER_DATA_TYPE_LEVEL instead')
  static const SERVICE_TRIGGER_DATA_TYPE_LEVEL =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(3);
  @Deprecated('Use SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ANY instead')
  static const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ANY =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(4);
  @Deprecated('Use SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ALL instead')
  static const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ALL =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(5);
}

/// {@category enum}
extension type const SERVICE_TRIGGER_TYPE(int _) implements int {
  @Deprecated('Use SERVICE_TRIGGER_TYPE_CUSTOM instead')
  static const SERVICE_TRIGGER_TYPE_CUSTOM = 20;
  @Deprecated('Use SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL instead')
  static const SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL =
      SERVICE_TRIGGER_TYPE(1);
  @Deprecated('Use SERVICE_TRIGGER_TYPE_DOMAIN_JOIN instead')
  static const SERVICE_TRIGGER_TYPE_DOMAIN_JOIN = 3;
  @Deprecated('Use SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT instead')
  static const SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT = SERVICE_TRIGGER_TYPE(
    4,
  );
  @Deprecated('Use SERVICE_TRIGGER_TYPE_GROUP_POLICY instead')
  static const SERVICE_TRIGGER_TYPE_GROUP_POLICY = 5;
  @Deprecated('Use SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY instead')
  static const SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY =
      SERVICE_TRIGGER_TYPE(2);
  @Deprecated('Use SERVICE_TRIGGER_TYPE_NETWORK_ENDPOINT instead')
  static const SERVICE_TRIGGER_TYPE_NETWORK_ENDPOINT = 6;
}

/// {@category enum}
extension type const SETUP_DI_GET_CLASS_DEVS_FLAGS(int _) implements int {
  @Deprecated('Use DIGCF_DEFAULT instead')
  static const DIGCF_DEFAULT = 1;
  @Deprecated('Use DIGCF_PRESENT instead')
  static const DIGCF_PRESENT = 2;
  @Deprecated('Use DIGCF_ALLCLASSES instead')
  static const DIGCF_ALLCLASSES = 4;
  @Deprecated('Use DIGCF_PROFILE instead')
  static const DIGCF_PROFILE = 8;
  @Deprecated('Use DIGCF_DEVICEINTERFACE instead')
  static const DIGCF_DEVICEINTERFACE = 16;
  @Deprecated('Use DIGCF_INTERFACEDEVICE instead')
  static const DIGCF_INTERFACEDEVICE = 16;
}

/// {@category enum}
extension type const SETUP_DI_PROPERTY_CHANGE_SCOPE(int _) implements int {
  @Deprecated('Use DICS_FLAG_GLOBAL instead')
  static const DICS_FLAG_GLOBAL = 1;
  @Deprecated('Use DICS_FLAG_CONFIGSPECIFIC instead')
  static const DICS_FLAG_CONFIGSPECIFIC = 2;
  @Deprecated('Use DICS_FLAG_CONFIGGENERAL instead')
  static const DICS_FLAG_CONFIGGENERAL = 4;
}

/// {@category enum}
extension type const SETUP_DI_REGISTRY_PROPERTY(int _) implements int {
  @Deprecated('Use SPDRP_DEVICEDESC instead')
  static const SPDRP_DEVICEDESC = 0;
  @Deprecated('Use SPDRP_HARDWAREID instead')
  static const SPDRP_HARDWAREID = 1;
  @Deprecated('Use SPDRP_COMPATIBLEIDS instead')
  static const SPDRP_COMPATIBLEIDS = 2;
  @Deprecated('Use SPDRP_UNUSED0 instead')
  static const SPDRP_UNUSED0 = 3;
  @Deprecated('Use SPDRP_SERVICE instead')
  static const SPDRP_SERVICE = 4;
  @Deprecated('Use SPDRP_UNUSED1 instead')
  static const SPDRP_UNUSED1 = 5;
  @Deprecated('Use SPDRP_UNUSED2 instead')
  static const SPDRP_UNUSED2 = 6;
  @Deprecated('Use SPDRP_CLASS instead')
  static const SPDRP_CLASS = 7;
  @Deprecated('Use SPDRP_CLASSGUID instead')
  static const SPDRP_CLASSGUID = 8;
  @Deprecated('Use SPDRP_DRIVER instead')
  static const SPDRP_DRIVER = 9;
  @Deprecated('Use SPDRP_CONFIGFLAGS instead')
  static const SPDRP_CONFIGFLAGS = 10;
  @Deprecated('Use SPDRP_MFG instead')
  static const SPDRP_MFG = 11;
  @Deprecated('Use SPDRP_FRIENDLYNAME instead')
  static const SPDRP_FRIENDLYNAME = 12;
  @Deprecated('Use SPDRP_LOCATION_INFORMATION instead')
  static const SPDRP_LOCATION_INFORMATION = 13;
  @Deprecated('Use SPDRP_PHYSICAL_DEVICE_OBJECT_NAME instead')
  static const SPDRP_PHYSICAL_DEVICE_OBJECT_NAME = SETUP_DI_REGISTRY_PROPERTY(
    14,
  );
  @Deprecated('Use SPDRP_CAPABILITIES instead')
  static const SPDRP_CAPABILITIES = 15;
  @Deprecated('Use SPDRP_UI_NUMBER instead')
  static const SPDRP_UI_NUMBER = 16;
  @Deprecated('Use SPDRP_UPPERFILTERS instead')
  static const SPDRP_UPPERFILTERS = 17;
  @Deprecated('Use SPDRP_LOWERFILTERS instead')
  static const SPDRP_LOWERFILTERS = 18;
  @Deprecated('Use SPDRP_BUSTYPEGUID instead')
  static const SPDRP_BUSTYPEGUID = 19;
  @Deprecated('Use SPDRP_LEGACYBUSTYPE instead')
  static const SPDRP_LEGACYBUSTYPE = 20;
  @Deprecated('Use SPDRP_BUSNUMBER instead')
  static const SPDRP_BUSNUMBER = 21;
  @Deprecated('Use SPDRP_ENUMERATOR_NAME instead')
  static const SPDRP_ENUMERATOR_NAME = 22;
  @Deprecated('Use SPDRP_SECURITY instead')
  static const SPDRP_SECURITY = 23;
  @Deprecated('Use SPDRP_SECURITY_SDS instead')
  static const SPDRP_SECURITY_SDS = 24;
  @Deprecated('Use SPDRP_DEVTYPE instead')
  static const SPDRP_DEVTYPE = 25;
  @Deprecated('Use SPDRP_EXCLUSIVE instead')
  static const SPDRP_EXCLUSIVE = 26;
  @Deprecated('Use SPDRP_CHARACTERISTICS instead')
  static const SPDRP_CHARACTERISTICS = 27;
  @Deprecated('Use SPDRP_ADDRESS instead')
  static const SPDRP_ADDRESS = 28;
  @Deprecated('Use SPDRP_UI_NUMBER_DESC_FORMAT instead')
  static const SPDRP_UI_NUMBER_DESC_FORMAT = 29;
  @Deprecated('Use SPDRP_DEVICE_POWER_DATA instead')
  static const SPDRP_DEVICE_POWER_DATA = 30;
  @Deprecated('Use SPDRP_REMOVAL_POLICY instead')
  static const SPDRP_REMOVAL_POLICY = 31;
  @Deprecated('Use SPDRP_REMOVAL_POLICY_HW_DEFAULT instead')
  static const SPDRP_REMOVAL_POLICY_HW_DEFAULT = 32;
  @Deprecated('Use SPDRP_REMOVAL_POLICY_OVERRIDE instead')
  static const SPDRP_REMOVAL_POLICY_OVERRIDE = 33;
  @Deprecated('Use SPDRP_INSTALL_STATE instead')
  static const SPDRP_INSTALL_STATE = 34;
  @Deprecated('Use SPDRP_LOCATION_PATHS instead')
  static const SPDRP_LOCATION_PATHS = 35;
  @Deprecated('Use SPDRP_BASE_CONTAINERID instead')
  static const SPDRP_BASE_CONTAINERID = 36;
  @Deprecated('Use SPDRP_MAXIMUM_PROPERTY instead')
  static const SPDRP_MAXIMUM_PROPERTY = 37;
}

/// {@category enum}
extension type const SET_DISPLAY_CONFIG_FLAGS(int _) implements int {
  @Deprecated('Use SDC_USE_DATABASE_CURRENT instead')
  static const SDC_USE_DATABASE_CURRENT = 15;
  @Deprecated('Use SDC_TOPOLOGY_INTERNAL instead')
  static const SDC_TOPOLOGY_INTERNAL = 1;
  @Deprecated('Use SDC_TOPOLOGY_CLONE instead')
  static const SDC_TOPOLOGY_CLONE = 2;
  @Deprecated('Use SDC_TOPOLOGY_EXTEND instead')
  static const SDC_TOPOLOGY_EXTEND = 4;
  @Deprecated('Use SDC_TOPOLOGY_EXTERNAL instead')
  static const SDC_TOPOLOGY_EXTERNAL = 8;
  @Deprecated('Use SDC_TOPOLOGY_SUPPLIED instead')
  static const SDC_TOPOLOGY_SUPPLIED = 16;
  @Deprecated('Use SDC_USE_SUPPLIED_DISPLAY_CONFIG instead')
  static const SDC_USE_SUPPLIED_DISPLAY_CONFIG = 32;
  @Deprecated('Use SDC_VALIDATE instead')
  static const SDC_VALIDATE = 64;
  @Deprecated('Use SDC_APPLY instead')
  static const SDC_APPLY = 128;
  @Deprecated('Use SDC_NO_OPTIMIZATION instead')
  static const SDC_NO_OPTIMIZATION = 256;
  @Deprecated('Use SDC_SAVE_TO_DATABASE instead')
  static const SDC_SAVE_TO_DATABASE = 512;
  @Deprecated('Use SDC_ALLOW_CHANGES instead')
  static const SDC_ALLOW_CHANGES = 1024;
  @Deprecated('Use SDC_PATH_PERSIST_IF_REQUIRED instead')
  static const SDC_PATH_PERSIST_IF_REQUIRED = 2048;
  @Deprecated('Use SDC_FORCE_MODE_ENUMERATION instead')
  static const SDC_FORCE_MODE_ENUMERATION = 4096;
  @Deprecated('Use SDC_ALLOW_PATH_ORDER_CHANGES instead')
  static const SDC_ALLOW_PATH_ORDER_CHANGES = 8192;
  @Deprecated('Use SDC_VIRTUAL_MODE_AWARE instead')
  static const SDC_VIRTUAL_MODE_AWARE = 32768;
  @Deprecated('Use SDC_VIRTUAL_REFRESH_RATE_AWARE instead')
  static const SDC_VIRTUAL_REFRESH_RATE_AWARE = SET_DISPLAY_CONFIG_FLAGS(
    131072,
  );
}

/// {@category enum}
extension type const SET_FILE_POINTER_MOVE_METHOD(int _) implements int {
  @Deprecated('Use FILE_BEGIN instead')
  static const FILE_BEGIN = 0;
  @Deprecated('Use FILE_CURRENT instead')
  static const FILE_CURRENT = 1;
  @Deprecated('Use FILE_END instead')
  static const FILE_END = 2;
}

/// {@category enum}
extension type const SET_THEME_APP_PROPERTIES_FLAGS(int _) implements int {
  @Deprecated('Use ALLOW_NONCLIENT instead')
  static const ALLOW_NONCLIENT = 1;
  @Deprecated('Use ALLOW_CONTROLS instead')
  static const ALLOW_CONTROLS = 2;
  @Deprecated('Use ALLOW_WEBCONTENT instead')
  static const ALLOW_WEBCONTENT = 4;
  @Deprecated('Use VALIDBITS instead')
  static const VALIDBITS = 7;
}

/// {@category enum}
extension type const SET_WINDOW_POS_FLAGS(int _) implements int {
  @Deprecated('Use SWP_ASYNCWINDOWPOS instead')
  static const SWP_ASYNCWINDOWPOS = 16384;
  @Deprecated('Use SWP_DEFERERASE instead')
  static const SWP_DEFERERASE = 8192;
  @Deprecated('Use SWP_DRAWFRAME instead')
  static const SWP_DRAWFRAME = 32;
  @Deprecated('Use SWP_FRAMECHANGED instead')
  static const SWP_FRAMECHANGED = 32;
  @Deprecated('Use SWP_HIDEWINDOW instead')
  static const SWP_HIDEWINDOW = 128;
  @Deprecated('Use SWP_NOACTIVATE instead')
  static const SWP_NOACTIVATE = 16;
  @Deprecated('Use SWP_NOCOPYBITS instead')
  static const SWP_NOCOPYBITS = 256;
  @Deprecated('Use SWP_NOMOVE instead')
  static const SWP_NOMOVE = 2;
  @Deprecated('Use SWP_NOOWNERZORDER instead')
  static const SWP_NOOWNERZORDER = 512;
  @Deprecated('Use SWP_NOREDRAW instead')
  static const SWP_NOREDRAW = 8;
  @Deprecated('Use SWP_NOREPOSITION instead')
  static const SWP_NOREPOSITION = 512;
  @Deprecated('Use SWP_NOSENDCHANGING instead')
  static const SWP_NOSENDCHANGING = 1024;
  @Deprecated('Use SWP_NOSIZE instead')
  static const SWP_NOSIZE = 1;
  @Deprecated('Use SWP_NOZORDER instead')
  static const SWP_NOZORDER = 4;
  @Deprecated('Use SWP_SHOWWINDOW instead')
  static const SWP_SHOWWINDOW = 64;
}

/// {@category enum}
extension type const SFGAO_FLAGS(int _) implements int {
  @Deprecated('Use SFGAO_CANCOPY instead')
  static const SFGAO_CANCOPY = 1;
  @Deprecated('Use SFGAO_CANMOVE instead')
  static const SFGAO_CANMOVE = 2;
  @Deprecated('Use SFGAO_CANLINK instead')
  static const SFGAO_CANLINK = 4;
  @Deprecated('Use SFGAO_STORAGE instead')
  static const SFGAO_STORAGE = 8;
  @Deprecated('Use SFGAO_CANRENAME instead')
  static const SFGAO_CANRENAME = 16;
  @Deprecated('Use SFGAO_CANDELETE instead')
  static const SFGAO_CANDELETE = 32;
  @Deprecated('Use SFGAO_HASPROPSHEET instead')
  static const SFGAO_HASPROPSHEET = 64;
  @Deprecated('Use SFGAO_DROPTARGET instead')
  static const SFGAO_DROPTARGET = 256;
  @Deprecated('Use SFGAO_CAPABILITYMASK instead')
  static const SFGAO_CAPABILITYMASK = 375;
  @Deprecated('Use SFGAO_PLACEHOLDER instead')
  static const SFGAO_PLACEHOLDER = 2048;
  @Deprecated('Use SFGAO_SYSTEM instead')
  static const SFGAO_SYSTEM = 4096;
  @Deprecated('Use SFGAO_ENCRYPTED instead')
  static const SFGAO_ENCRYPTED = 8192;
  @Deprecated('Use SFGAO_ISSLOW instead')
  static const SFGAO_ISSLOW = 16384;
  @Deprecated('Use SFGAO_GHOSTED instead')
  static const SFGAO_GHOSTED = 32768;
  @Deprecated('Use SFGAO_LINK instead')
  static const SFGAO_LINK = 65536;
  @Deprecated('Use SFGAO_SHARE instead')
  static const SFGAO_SHARE = 131072;
  @Deprecated('Use SFGAO_READONLY instead')
  static const SFGAO_READONLY = 262144;
  @Deprecated('Use SFGAO_HIDDEN instead')
  static const SFGAO_HIDDEN = 524288;
  @Deprecated('Use SFGAO_DISPLAYATTRMASK instead')
  static const SFGAO_DISPLAYATTRMASK = 1032192;
  @Deprecated('Use SFGAO_FILESYSANCESTOR instead')
  static const SFGAO_FILESYSANCESTOR = 268435456;
  @Deprecated('Use SFGAO_FOLDER instead')
  static const SFGAO_FOLDER = 536870912;
  @Deprecated('Use SFGAO_FILESYSTEM instead')
  static const SFGAO_FILESYSTEM = 1073741824;
  @Deprecated('Use SFGAO_HASSUBFOLDER instead')
  static const SFGAO_HASSUBFOLDER = 2147483648;
  @Deprecated('Use SFGAO_CONTENTSMASK instead')
  static const SFGAO_CONTENTSMASK = 2147483648;
  @Deprecated('Use SFGAO_VALIDATE instead')
  static const SFGAO_VALIDATE = 16777216;
  @Deprecated('Use SFGAO_REMOVABLE instead')
  static const SFGAO_REMOVABLE = 33554432;
  @Deprecated('Use SFGAO_COMPRESSED instead')
  static const SFGAO_COMPRESSED = 67108864;
  @Deprecated('Use SFGAO_BROWSABLE instead')
  static const SFGAO_BROWSABLE = 134217728;
  @Deprecated('Use SFGAO_NONENUMERATED instead')
  static const SFGAO_NONENUMERATED = 1048576;
  @Deprecated('Use SFGAO_NEWCONTENT instead')
  static const SFGAO_NEWCONTENT = 2097152;
  @Deprecated('Use SFGAO_CANMONIKER instead')
  static const SFGAO_CANMONIKER = 4194304;
  @Deprecated('Use SFGAO_HASSTORAGE instead')
  static const SFGAO_HASSTORAGE = 4194304;
  @Deprecated('Use SFGAO_STREAM instead')
  static const SFGAO_STREAM = 4194304;
  @Deprecated('Use SFGAO_STORAGEANCESTOR instead')
  static const SFGAO_STORAGEANCESTOR = 8388608;
  @Deprecated('Use SFGAO_STORAGECAPMASK instead')
  static const SFGAO_STORAGECAPMASK = 1891958792;
  @Deprecated('Use SFGAO_PKEYSFGAOMASK instead')
  static const SFGAO_PKEYSFGAOMASK = 2164539392;
}

/// {@category enum}
extension type const SHGDNF(int _) implements int {
  @Deprecated('Use SHGDN_NORMAL instead')
  static const SHGDN_NORMAL = 0;
  @Deprecated('Use SHGDN_INFOLDER instead')
  static const SHGDN_INFOLDER = 1;
  @Deprecated('Use SHGDN_FOREDITING instead')
  static const SHGDN_FOREDITING = 4096;
  @Deprecated('Use SHGDN_FORADDRESSBAR instead')
  static const SHGDN_FORADDRESSBAR = 16384;
  @Deprecated('Use SHGDN_FORPARSING instead')
  static const SHGDN_FORPARSING = 32768;
}

/// {@category enum}
extension type const SHGFI_FLAGS(int _) implements int {
  @Deprecated('Use SHGFI_ADDOVERLAYS instead')
  static const SHGFI_ADDOVERLAYS = 32;
  @Deprecated('Use SHGFI_ATTR_SPECIFIED instead')
  static const SHGFI_ATTR_SPECIFIED = 131072;
  @Deprecated('Use SHGFI_ATTRIBUTES instead')
  static const SHGFI_ATTRIBUTES = 2048;
  @Deprecated('Use SHGFI_DISPLAYNAME instead')
  static const SHGFI_DISPLAYNAME = 512;
  @Deprecated('Use SHGFI_EXETYPE instead')
  static const SHGFI_EXETYPE = 8192;
  @Deprecated('Use SHGFI_ICON instead')
  static const SHGFI_ICON = 256;
  @Deprecated('Use SHGFI_ICONLOCATION instead')
  static const SHGFI_ICONLOCATION = 4096;
  @Deprecated('Use SHGFI_LARGEICON instead')
  static const SHGFI_LARGEICON = 0;
  @Deprecated('Use SHGFI_LINKOVERLAY instead')
  static const SHGFI_LINKOVERLAY = 32768;
  @Deprecated('Use SHGFI_OPENICON instead')
  static const SHGFI_OPENICON = 2;
  @Deprecated('Use SHGFI_OVERLAYINDEX instead')
  static const SHGFI_OVERLAYINDEX = 64;
  @Deprecated('Use SHGFI_PIDL instead')
  static const SHGFI_PIDL = 8;
  @Deprecated('Use SHGFI_SELECTED instead')
  static const SHGFI_SELECTED = 65536;
  @Deprecated('Use SHGFI_SHELLICONSIZE instead')
  static const SHGFI_SHELLICONSIZE = 4;
  @Deprecated('Use SHGFI_SMALLICON instead')
  static const SHGFI_SMALLICON = 1;
  @Deprecated('Use SHGFI_SYSICONINDEX instead')
  static const SHGFI_SYSICONINDEX = 16384;
  @Deprecated('Use SHGFI_TYPENAME instead')
  static const SHGFI_TYPENAME = 1024;
  @Deprecated('Use SHGFI_USEFILEATTRIBUTES instead')
  static const SHGFI_USEFILEATTRIBUTES = 16;
}

/// {@category enum}
extension type const SHOW_WINDOW_CMD(int _) implements int {
  @Deprecated('Use SW_HIDE instead')
  static const SW_HIDE = 0;
  @Deprecated('Use SW_SHOWNORMAL instead')
  static const SW_SHOWNORMAL = 1;
  @Deprecated('Use SW_NORMAL instead')
  static const SW_NORMAL = 1;
  @Deprecated('Use SW_SHOWMINIMIZED instead')
  static const SW_SHOWMINIMIZED = 2;
  @Deprecated('Use SW_SHOWMAXIMIZED instead')
  static const SW_SHOWMAXIMIZED = 3;
  @Deprecated('Use SW_MAXIMIZE instead')
  static const SW_MAXIMIZE = 3;
  @Deprecated('Use SW_SHOWNOACTIVATE instead')
  static const SW_SHOWNOACTIVATE = 4;
  @Deprecated('Use SW_SHOW instead')
  static const SW_SHOW = 5;
  @Deprecated('Use SW_MINIMIZE instead')
  static const SW_MINIMIZE = 6;
  @Deprecated('Use SW_SHOWMINNOACTIVE instead')
  static const SW_SHOWMINNOACTIVE = 7;
  @Deprecated('Use SW_SHOWNA instead')
  static const SW_SHOWNA = 8;
  @Deprecated('Use SW_RESTORE instead')
  static const SW_RESTORE = 9;
  @Deprecated('Use SW_SHOWDEFAULT instead')
  static const SW_SHOWDEFAULT = 10;
  @Deprecated('Use SW_FORCEMINIMIZE instead')
  static const SW_FORCEMINIMIZE = 11;
  @Deprecated('Use SW_MAX instead')
  static const SW_MAX = 11;
}

/// {@category enum}
extension type const SHUTDOWN_FLAGS(int _) implements int {
  @Deprecated('Use SHUTDOWN_FORCE_OTHERS instead')
  static const SHUTDOWN_FORCE_OTHERS = 1;
  @Deprecated('Use SHUTDOWN_FORCE_SELF instead')
  static const SHUTDOWN_FORCE_SELF = 2;
  @Deprecated('Use SHUTDOWN_RESTART instead')
  static const SHUTDOWN_RESTART = 4;
  @Deprecated('Use SHUTDOWN_POWEROFF instead')
  static const SHUTDOWN_POWEROFF = 8;
  @Deprecated('Use SHUTDOWN_NOREBOOT instead')
  static const SHUTDOWN_NOREBOOT = 16;
  @Deprecated('Use SHUTDOWN_GRACE_OVERRIDE instead')
  static const SHUTDOWN_GRACE_OVERRIDE = 32;
  @Deprecated('Use SHUTDOWN_INSTALL_UPDATES instead')
  static const SHUTDOWN_INSTALL_UPDATES = 64;
  @Deprecated('Use SHUTDOWN_RESTARTAPPS instead')
  static const SHUTDOWN_RESTARTAPPS = 128;
  @Deprecated('Use SHUTDOWN_SKIP_SVC_PRESHUTDOWN instead')
  static const SHUTDOWN_SKIP_SVC_PRESHUTDOWN = 256;
  @Deprecated('Use SHUTDOWN_HYBRID instead')
  static const SHUTDOWN_HYBRID = 512;
  @Deprecated('Use SHUTDOWN_RESTART_BOOTOPTIONS instead')
  static const SHUTDOWN_RESTART_BOOTOPTIONS = 1024;
  @Deprecated('Use SHUTDOWN_SOFT_REBOOT instead')
  static const SHUTDOWN_SOFT_REBOOT = 2048;
  @Deprecated('Use SHUTDOWN_MOBILE_UI instead')
  static const SHUTDOWN_MOBILE_UI = 4096;
  @Deprecated('Use SHUTDOWN_ARSO instead')
  static const SHUTDOWN_ARSO = 8192;
  @Deprecated('Use SHUTDOWN_CHECK_SAFE_FOR_SERVER instead')
  static const SHUTDOWN_CHECK_SAFE_FOR_SERVER = 16384;
  @Deprecated('Use SHUTDOWN_VAIL_CONTAINER instead')
  static const SHUTDOWN_VAIL_CONTAINER = 32768;
  @Deprecated('Use SHUTDOWN_SYSTEM_INITIATED instead')
  static const SHUTDOWN_SYSTEM_INITIATED = 65536;
}

/// {@category enum}
extension type const SHUTDOWN_REASON(int _) implements int {
  @Deprecated('Use SHTDN_REASON_NONE instead')
  static const SHTDN_REASON_NONE = 0;
  @Deprecated('Use SHTDN_REASON_FLAG_COMMENT_REQUIRED instead')
  static const SHTDN_REASON_FLAG_COMMENT_REQUIRED = 16777216;
  @Deprecated('Use SHTDN_REASON_FLAG_DIRTY_PROBLEM_ID_REQUIRED instead')
  static const SHTDN_REASON_FLAG_DIRTY_PROBLEM_ID_REQUIRED = SHUTDOWN_REASON(
    33554432,
  );
  @Deprecated('Use SHTDN_REASON_FLAG_CLEAN_UI instead')
  static const SHTDN_REASON_FLAG_CLEAN_UI = 67108864;
  @Deprecated('Use SHTDN_REASON_FLAG_DIRTY_UI instead')
  static const SHTDN_REASON_FLAG_DIRTY_UI = 134217728;
  @Deprecated('Use SHTDN_REASON_FLAG_MOBILE_UI_RESERVED instead')
  static const SHTDN_REASON_FLAG_MOBILE_UI_RESERVED = SHUTDOWN_REASON(
    268435456,
  );
  @Deprecated('Use SHTDN_REASON_FLAG_USER_DEFINED instead')
  static const SHTDN_REASON_FLAG_USER_DEFINED = 1073741824;
  @Deprecated('Use SHTDN_REASON_FLAG_PLANNED instead')
  static const SHTDN_REASON_FLAG_PLANNED = 2147483648;
  @Deprecated('Use SHTDN_REASON_MAJOR_OTHER instead')
  static const SHTDN_REASON_MAJOR_OTHER = 0;
  @Deprecated('Use SHTDN_REASON_MAJOR_NONE instead')
  static const SHTDN_REASON_MAJOR_NONE = 0;
  @Deprecated('Use SHTDN_REASON_MAJOR_HARDWARE instead')
  static const SHTDN_REASON_MAJOR_HARDWARE = 65536;
  @Deprecated('Use SHTDN_REASON_MAJOR_OPERATINGSYSTEM instead')
  static const SHTDN_REASON_MAJOR_OPERATINGSYSTEM = 131072;
  @Deprecated('Use SHTDN_REASON_MAJOR_SOFTWARE instead')
  static const SHTDN_REASON_MAJOR_SOFTWARE = 196608;
  @Deprecated('Use SHTDN_REASON_MAJOR_APPLICATION instead')
  static const SHTDN_REASON_MAJOR_APPLICATION = 262144;
  @Deprecated('Use SHTDN_REASON_MAJOR_SYSTEM instead')
  static const SHTDN_REASON_MAJOR_SYSTEM = 327680;
  @Deprecated('Use SHTDN_REASON_MAJOR_POWER instead')
  static const SHTDN_REASON_MAJOR_POWER = 393216;
  @Deprecated('Use SHTDN_REASON_MAJOR_LEGACY_API instead')
  static const SHTDN_REASON_MAJOR_LEGACY_API = 458752;
  @Deprecated('Use SHTDN_REASON_MINOR_OTHER instead')
  static const SHTDN_REASON_MINOR_OTHER = 0;
  @Deprecated('Use SHTDN_REASON_MINOR_NONE instead')
  static const SHTDN_REASON_MINOR_NONE = 255;
  @Deprecated('Use SHTDN_REASON_MINOR_MAINTENANCE instead')
  static const SHTDN_REASON_MINOR_MAINTENANCE = 1;
  @Deprecated('Use SHTDN_REASON_MINOR_INSTALLATION instead')
  static const SHTDN_REASON_MINOR_INSTALLATION = 2;
  @Deprecated('Use SHTDN_REASON_MINOR_UPGRADE instead')
  static const SHTDN_REASON_MINOR_UPGRADE = 3;
  @Deprecated('Use SHTDN_REASON_MINOR_RECONFIG instead')
  static const SHTDN_REASON_MINOR_RECONFIG = 4;
  @Deprecated('Use SHTDN_REASON_MINOR_HUNG instead')
  static const SHTDN_REASON_MINOR_HUNG = 5;
  @Deprecated('Use SHTDN_REASON_MINOR_UNSTABLE instead')
  static const SHTDN_REASON_MINOR_UNSTABLE = 6;
  @Deprecated('Use SHTDN_REASON_MINOR_DISK instead')
  static const SHTDN_REASON_MINOR_DISK = 7;
  @Deprecated('Use SHTDN_REASON_MINOR_PROCESSOR instead')
  static const SHTDN_REASON_MINOR_PROCESSOR = 8;
  @Deprecated('Use SHTDN_REASON_MINOR_NETWORKCARD instead')
  static const SHTDN_REASON_MINOR_NETWORKCARD = 9;
  @Deprecated('Use SHTDN_REASON_MINOR_POWER_SUPPLY instead')
  static const SHTDN_REASON_MINOR_POWER_SUPPLY = 10;
  @Deprecated('Use SHTDN_REASON_MINOR_CORDUNPLUGGED instead')
  static const SHTDN_REASON_MINOR_CORDUNPLUGGED = 11;
  @Deprecated('Use SHTDN_REASON_MINOR_ENVIRONMENT instead')
  static const SHTDN_REASON_MINOR_ENVIRONMENT = 12;
  @Deprecated('Use SHTDN_REASON_MINOR_HARDWARE_DRIVER instead')
  static const SHTDN_REASON_MINOR_HARDWARE_DRIVER = 13;
  @Deprecated('Use SHTDN_REASON_MINOR_OTHERDRIVER instead')
  static const SHTDN_REASON_MINOR_OTHERDRIVER = 14;
  @Deprecated('Use SHTDN_REASON_MINOR_BLUESCREEN instead')
  static const SHTDN_REASON_MINOR_BLUESCREEN = 15;
  @Deprecated('Use SHTDN_REASON_MINOR_SERVICEPACK instead')
  static const SHTDN_REASON_MINOR_SERVICEPACK = 16;
  @Deprecated('Use SHTDN_REASON_MINOR_HOTFIX instead')
  static const SHTDN_REASON_MINOR_HOTFIX = 17;
  @Deprecated('Use SHTDN_REASON_MINOR_SECURITYFIX instead')
  static const SHTDN_REASON_MINOR_SECURITYFIX = 18;
  @Deprecated('Use SHTDN_REASON_MINOR_SECURITY instead')
  static const SHTDN_REASON_MINOR_SECURITY = 19;
  @Deprecated('Use SHTDN_REASON_MINOR_NETWORK_CONNECTIVITY instead')
  static const SHTDN_REASON_MINOR_NETWORK_CONNECTIVITY = 20;
  @Deprecated('Use SHTDN_REASON_MINOR_WMI instead')
  static const SHTDN_REASON_MINOR_WMI = 21;
  @Deprecated('Use SHTDN_REASON_MINOR_SERVICEPACK_UNINSTALL instead')
  static const SHTDN_REASON_MINOR_SERVICEPACK_UNINSTALL = 22;
  @Deprecated('Use SHTDN_REASON_MINOR_HOTFIX_UNINSTALL instead')
  static const SHTDN_REASON_MINOR_HOTFIX_UNINSTALL = 23;
  @Deprecated('Use SHTDN_REASON_MINOR_SECURITYFIX_UNINSTALL instead')
  static const SHTDN_REASON_MINOR_SECURITYFIX_UNINSTALL = 24;
  @Deprecated('Use SHTDN_REASON_MINOR_MMC instead')
  static const SHTDN_REASON_MINOR_MMC = 25;
  @Deprecated('Use SHTDN_REASON_MINOR_SYSTEMRESTORE instead')
  static const SHTDN_REASON_MINOR_SYSTEMRESTORE = 26;
  @Deprecated('Use SHTDN_REASON_MINOR_TERMSRV instead')
  static const SHTDN_REASON_MINOR_TERMSRV = 32;
  @Deprecated('Use SHTDN_REASON_MINOR_DC_PROMOTION instead')
  static const SHTDN_REASON_MINOR_DC_PROMOTION = 33;
  @Deprecated('Use SHTDN_REASON_MINOR_DC_DEMOTION instead')
  static const SHTDN_REASON_MINOR_DC_DEMOTION = 34;
  @Deprecated('Use SHTDN_REASON_UNKNOWN instead')
  static const SHTDN_REASON_UNKNOWN = 255;
  @Deprecated('Use SHTDN_REASON_LEGACY_API instead')
  static const SHTDN_REASON_LEGACY_API = 2147942400;
  @Deprecated('Use SHTDN_REASON_VALID_BIT_MASK instead')
  static const SHTDN_REASON_VALID_BIT_MASK = 3238002687;
}

/// {@category enum}
extension type const SIATTRIBFLAGS(int _) implements int {
  @Deprecated('Use SIATTRIBFLAGS_AND instead')
  static const SIATTRIBFLAGS_AND = 1;
  @Deprecated('Use SIATTRIBFLAGS_OR instead')
  static const SIATTRIBFLAGS_OR = 2;
  @Deprecated('Use SIATTRIBFLAGS_APPCOMPAT instead')
  static const SIATTRIBFLAGS_APPCOMPAT = 3;
  @Deprecated('Use SIATTRIBFLAGS_MASK instead')
  static const SIATTRIBFLAGS_MASK = 3;
  @Deprecated('Use SIATTRIBFLAGS_ALLITEMS instead')
  static const SIATTRIBFLAGS_ALLITEMS = 16384;
}

/// {@category enum}
extension type const SIIGBF(int _) implements int {
  @Deprecated('Use SIIGBF_RESIZETOFIT instead')
  static const SIIGBF_RESIZETOFIT = 0;
  @Deprecated('Use SIIGBF_BIGGERSIZEOK instead')
  static const SIIGBF_BIGGERSIZEOK = 1;
  @Deprecated('Use SIIGBF_MEMORYONLY instead')
  static const SIIGBF_MEMORYONLY = 2;
  @Deprecated('Use SIIGBF_ICONONLY instead')
  static const SIIGBF_ICONONLY = 4;
  @Deprecated('Use SIIGBF_THUMBNAILONLY instead')
  static const SIIGBF_THUMBNAILONLY = 8;
  @Deprecated('Use SIIGBF_INCACHEONLY instead')
  static const SIIGBF_INCACHEONLY = 16;
  @Deprecated('Use SIIGBF_CROPTOSQUARE instead')
  static const SIIGBF_CROPTOSQUARE = 32;
  @Deprecated('Use SIIGBF_WIDETHUMBNAILS instead')
  static const SIIGBF_WIDETHUMBNAILS = 64;
  @Deprecated('Use SIIGBF_ICONBACKGROUND instead')
  static const SIIGBF_ICONBACKGROUND = 128;
  @Deprecated('Use SIIGBF_SCALEUP instead')
  static const SIIGBF_SCALEUP = 256;
}

/// {@category enum}
extension type const SND_FLAGS(int _) implements int {
  @Deprecated('Use SND_APPLICATION instead')
  static const SND_APPLICATION = 128;
  @Deprecated('Use SND_ALIAS instead')
  static const SND_ALIAS = 65536;
  @Deprecated('Use SND_ALIAS_ID instead')
  static const SND_ALIAS_ID = 1114112;
  @Deprecated('Use SND_FILENAME instead')
  static const SND_FILENAME = 131072;
  @Deprecated('Use SND_RESOURCE instead')
  static const SND_RESOURCE = 262148;
  @Deprecated('Use SND_ASYNC instead')
  static const SND_ASYNC = 1;
  @Deprecated('Use SND_NODEFAULT instead')
  static const SND_NODEFAULT = 2;
  @Deprecated('Use SND_LOOP instead')
  static const SND_LOOP = 8;
  @Deprecated('Use SND_MEMORY instead')
  static const SND_MEMORY = 4;
  @Deprecated('Use SND_NOSTOP instead')
  static const SND_NOSTOP = 16;
  @Deprecated('Use SND_NOWAIT instead')
  static const SND_NOWAIT = 8192;
  @Deprecated('Use SND_PURGE instead')
  static const SND_PURGE = 64;
  @Deprecated('Use SND_SENTRY instead')
  static const SND_SENTRY = 524288;
  @Deprecated('Use SND_SYNC instead')
  static const SND_SYNC = 0;
  @Deprecated('Use SND_SYSTEM instead')
  static const SND_SYSTEM = 2097152;
}

/// {@category enum}
extension type const SPEVENTENUM(int _) implements int {
  @Deprecated('Use SPEI_UNDEFINED instead')
  static const SPEI_UNDEFINED = 0;
  @Deprecated('Use SPEI_START_INPUT_STREAM instead')
  static const SPEI_START_INPUT_STREAM = 1;
  @Deprecated('Use SPEI_END_INPUT_STREAM instead')
  static const SPEI_END_INPUT_STREAM = 2;
  @Deprecated('Use SPEI_VOICE_CHANGE instead')
  static const SPEI_VOICE_CHANGE = 3;
  @Deprecated('Use SPEI_TTS_BOOKMARK instead')
  static const SPEI_TTS_BOOKMARK = 4;
  @Deprecated('Use SPEI_WORD_BOUNDARY instead')
  static const SPEI_WORD_BOUNDARY = 5;
  @Deprecated('Use SPEI_PHONEME instead')
  static const SPEI_PHONEME = 6;
  @Deprecated('Use SPEI_SENTENCE_BOUNDARY instead')
  static const SPEI_SENTENCE_BOUNDARY = 7;
  @Deprecated('Use SPEI_VISEME instead')
  static const SPEI_VISEME = 8;
  @Deprecated('Use SPEI_TTS_AUDIO_LEVEL instead')
  static const SPEI_TTS_AUDIO_LEVEL = 9;
  @Deprecated('Use SPEI_TTS_PRIVATE instead')
  static const SPEI_TTS_PRIVATE = 15;
  @Deprecated('Use SPEI_MIN_TTS instead')
  static const SPEI_MIN_TTS = 1;
  @Deprecated('Use SPEI_MAX_TTS instead')
  static const SPEI_MAX_TTS = 15;
  @Deprecated('Use SPEI_END_SR_STREAM instead')
  static const SPEI_END_SR_STREAM = 34;
  @Deprecated('Use SPEI_SOUND_START instead')
  static const SPEI_SOUND_START = 35;
  @Deprecated('Use SPEI_SOUND_END instead')
  static const SPEI_SOUND_END = 36;
  @Deprecated('Use SPEI_PHRASE_START instead')
  static const SPEI_PHRASE_START = 37;
  @Deprecated('Use SPEI_RECOGNITION instead')
  static const SPEI_RECOGNITION = 38;
  @Deprecated('Use SPEI_HYPOTHESIS instead')
  static const SPEI_HYPOTHESIS = 39;
  @Deprecated('Use SPEI_SR_BOOKMARK instead')
  static const SPEI_SR_BOOKMARK = 40;
  @Deprecated('Use SPEI_PROPERTY_NUM_CHANGE instead')
  static const SPEI_PROPERTY_NUM_CHANGE = 41;
  @Deprecated('Use SPEI_PROPERTY_STRING_CHANGE instead')
  static const SPEI_PROPERTY_STRING_CHANGE = 42;
  @Deprecated('Use SPEI_FALSE_RECOGNITION instead')
  static const SPEI_FALSE_RECOGNITION = 43;
  @Deprecated('Use SPEI_INTERFERENCE instead')
  static const SPEI_INTERFERENCE = 44;
  @Deprecated('Use SPEI_REQUEST_UI instead')
  static const SPEI_REQUEST_UI = 45;
  @Deprecated('Use SPEI_RECO_STATE_CHANGE instead')
  static const SPEI_RECO_STATE_CHANGE = 46;
  @Deprecated('Use SPEI_ADAPTATION instead')
  static const SPEI_ADAPTATION = 47;
  @Deprecated('Use SPEI_START_SR_STREAM instead')
  static const SPEI_START_SR_STREAM = 48;
  @Deprecated('Use SPEI_RECO_OTHER_CONTEXT instead')
  static const SPEI_RECO_OTHER_CONTEXT = 49;
  @Deprecated('Use SPEI_SR_AUDIO_LEVEL instead')
  static const SPEI_SR_AUDIO_LEVEL = 50;
  @Deprecated('Use SPEI_SR_RETAINEDAUDIO instead')
  static const SPEI_SR_RETAINEDAUDIO = 51;
  @Deprecated('Use SPEI_SR_PRIVATE instead')
  static const SPEI_SR_PRIVATE = 52;
  @Deprecated('Use SPEI_RESERVED4 instead')
  static const SPEI_RESERVED4 = 53;
  @Deprecated('Use SPEI_RESERVED5 instead')
  static const SPEI_RESERVED5 = 54;
  @Deprecated('Use SPEI_RESERVED6 instead')
  static const SPEI_RESERVED6 = 55;
  @Deprecated('Use SPEI_MIN_SR instead')
  static const SPEI_MIN_SR = 34;
  @Deprecated('Use SPEI_MAX_SR instead')
  static const SPEI_MAX_SR = 55;
  @Deprecated('Use SPEI_RESERVED1 instead')
  static const SPEI_RESERVED1 = 30;
  @Deprecated('Use SPEI_RESERVED2 instead')
  static const SPEI_RESERVED2 = 33;
  @Deprecated('Use SPEI_RESERVED3 instead')
  static const SPEI_RESERVED3 = 63;
}

/// {@category enum}
extension type const SPVISEMES(int _) implements int {
  @Deprecated('Use SP_VISEME_0 instead')
  static const SP_VISEME_0 = 0;
  @Deprecated('Use SP_VISEME_1 instead')
  static const SP_VISEME_1 = 1;
  @Deprecated('Use SP_VISEME_2 instead')
  static const SP_VISEME_2 = 2;
  @Deprecated('Use SP_VISEME_3 instead')
  static const SP_VISEME_3 = 3;
  @Deprecated('Use SP_VISEME_4 instead')
  static const SP_VISEME_4 = 4;
  @Deprecated('Use SP_VISEME_5 instead')
  static const SP_VISEME_5 = 5;
  @Deprecated('Use SP_VISEME_6 instead')
  static const SP_VISEME_6 = 6;
  @Deprecated('Use SP_VISEME_7 instead')
  static const SP_VISEME_7 = 7;
  @Deprecated('Use SP_VISEME_8 instead')
  static const SP_VISEME_8 = 8;
  @Deprecated('Use SP_VISEME_9 instead')
  static const SP_VISEME_9 = 9;
  @Deprecated('Use SP_VISEME_10 instead')
  static const SP_VISEME_10 = 10;
  @Deprecated('Use SP_VISEME_11 instead')
  static const SP_VISEME_11 = 11;
  @Deprecated('Use SP_VISEME_12 instead')
  static const SP_VISEME_12 = 12;
  @Deprecated('Use SP_VISEME_13 instead')
  static const SP_VISEME_13 = 13;
  @Deprecated('Use SP_VISEME_14 instead')
  static const SP_VISEME_14 = 14;
  @Deprecated('Use SP_VISEME_15 instead')
  static const SP_VISEME_15 = 15;
  @Deprecated('Use SP_VISEME_16 instead')
  static const SP_VISEME_16 = 16;
  @Deprecated('Use SP_VISEME_17 instead')
  static const SP_VISEME_17 = 17;
  @Deprecated('Use SP_VISEME_18 instead')
  static const SP_VISEME_18 = 18;
  @Deprecated('Use SP_VISEME_19 instead')
  static const SP_VISEME_19 = 19;
  @Deprecated('Use SP_VISEME_20 instead')
  static const SP_VISEME_20 = 20;
  @Deprecated('Use SP_VISEME_21 instead')
  static const SP_VISEME_21 = 21;
}

/// {@category enum}
extension type const SPVPRIORITY(int _) implements int {
  @Deprecated('Use SPVPRI_NORMAL instead')
  static const SPVPRI_NORMAL = 0;
  @Deprecated('Use SPVPRI_ALERT instead')
  static const SPVPRI_ALERT = 1;
  @Deprecated('Use SPVPRI_OVER instead')
  static const SPVPRI_OVER = 2;
}

/// {@category enum}
extension type const STARTUPINFOW_FLAGS(int _) implements int {
  @Deprecated('Use STARTF_FORCEONFEEDBACK instead')
  static const STARTF_FORCEONFEEDBACK = 64;
  @Deprecated('Use STARTF_FORCEOFFFEEDBACK instead')
  static const STARTF_FORCEOFFFEEDBACK = 128;
  @Deprecated('Use STARTF_PREVENTPINNING instead')
  static const STARTF_PREVENTPINNING = 8192;
  @Deprecated('Use STARTF_RUNFULLSCREEN instead')
  static const STARTF_RUNFULLSCREEN = 32;
  @Deprecated('Use STARTF_TITLEISAPPID instead')
  static const STARTF_TITLEISAPPID = 4096;
  @Deprecated('Use STARTF_TITLEISLINKNAME instead')
  static const STARTF_TITLEISLINKNAME = 2048;
  @Deprecated('Use STARTF_UNTRUSTEDSOURCE instead')
  static const STARTF_UNTRUSTEDSOURCE = 32768;
  @Deprecated('Use STARTF_USECOUNTCHARS instead')
  static const STARTF_USECOUNTCHARS = 8;
  @Deprecated('Use STARTF_USEFILLATTRIBUTE instead')
  static const STARTF_USEFILLATTRIBUTE = 16;
  @Deprecated('Use STARTF_USEHOTKEY instead')
  static const STARTF_USEHOTKEY = 512;
  @Deprecated('Use STARTF_USEPOSITION instead')
  static const STARTF_USEPOSITION = 4;
  @Deprecated('Use STARTF_USESHOWWINDOW instead')
  static const STARTF_USESHOWWINDOW = 1;
  @Deprecated('Use STARTF_USESIZE instead')
  static const STARTF_USESIZE = 2;
  @Deprecated('Use STARTF_USESTDHANDLES instead')
  static const STARTF_USESTDHANDLES = 256;
}

/// {@category enum}
extension type const STATIC_STYLES(int _) implements int {
  @Deprecated('Use SS_LEFT instead')
  static const SS_LEFT = 0;
  @Deprecated('Use SS_CENTER instead')
  static const SS_CENTER = 1;
  @Deprecated('Use SS_RIGHT instead')
  static const SS_RIGHT = 2;
  @Deprecated('Use SS_ICON instead')
  static const SS_ICON = 3;
  @Deprecated('Use SS_BLACKRECT instead')
  static const SS_BLACKRECT = 4;
  @Deprecated('Use SS_GRAYRECT instead')
  static const SS_GRAYRECT = 5;
  @Deprecated('Use SS_WHITERECT instead')
  static const SS_WHITERECT = 6;
  @Deprecated('Use SS_BLACKFRAME instead')
  static const SS_BLACKFRAME = 7;
  @Deprecated('Use SS_GRAYFRAME instead')
  static const SS_GRAYFRAME = 8;
  @Deprecated('Use SS_WHITEFRAME instead')
  static const SS_WHITEFRAME = 9;
  @Deprecated('Use SS_USERITEM instead')
  static const SS_USERITEM = 10;
  @Deprecated('Use SS_SIMPLE instead')
  static const SS_SIMPLE = 11;
  @Deprecated('Use SS_LEFTNOWORDWRAP instead')
  static const SS_LEFTNOWORDWRAP = 12;
  @Deprecated('Use SS_OWNERDRAW instead')
  static const SS_OWNERDRAW = 13;
  @Deprecated('Use SS_BITMAP instead')
  static const SS_BITMAP = 14;
  @Deprecated('Use SS_ENHMETAFILE instead')
  static const SS_ENHMETAFILE = 15;
  @Deprecated('Use SS_ETCHEDHORZ instead')
  static const SS_ETCHEDHORZ = 16;
  @Deprecated('Use SS_ETCHEDVERT instead')
  static const SS_ETCHEDVERT = 17;
  @Deprecated('Use SS_ETCHEDFRAME instead')
  static const SS_ETCHEDFRAME = 18;
  @Deprecated('Use SS_TYPEMASK instead')
  static const SS_TYPEMASK = 31;
  @Deprecated('Use SS_REALSIZECONTROL instead')
  static const SS_REALSIZECONTROL = 64;
  @Deprecated('Use SS_NOPREFIX instead')
  static const SS_NOPREFIX = 128;
  @Deprecated('Use SS_NOTIFY instead')
  static const SS_NOTIFY = 256;
  @Deprecated('Use SS_CENTERIMAGE instead')
  static const SS_CENTERIMAGE = 512;
  @Deprecated('Use SS_RIGHTJUST instead')
  static const SS_RIGHTJUST = 1024;
  @Deprecated('Use SS_REALSIZEIMAGE instead')
  static const SS_REALSIZEIMAGE = 2048;
  @Deprecated('Use SS_SUNKEN instead')
  static const SS_SUNKEN = 4096;
  @Deprecated('Use SS_EDITCONTROL instead')
  static const SS_EDITCONTROL = 8192;
  @Deprecated('Use SS_ENDELLIPSIS instead')
  static const SS_ENDELLIPSIS = 16384;
  @Deprecated('Use SS_PATHELLIPSIS instead')
  static const SS_PATHELLIPSIS = 32768;
  @Deprecated('Use SS_WORDELLIPSIS instead')
  static const SS_WORDELLIPSIS = 49152;
  @Deprecated('Use SS_ELLIPSISMASK instead')
  static const SS_ELLIPSISMASK = 49152;
}

/// {@category enum}
extension type const STD_HANDLE(int _) implements int {
  @Deprecated('Use STD_INPUT_HANDLE instead')
  static const STD_INPUT_HANDLE = 4294967286;
  @Deprecated('Use STD_OUTPUT_HANDLE instead')
  static const STD_OUTPUT_HANDLE = 4294967285;
  @Deprecated('Use STD_ERROR_HANDLE instead')
  static const STD_ERROR_HANDLE = 4294967284;
}

/// Defines values that are used with the FindFirstStreamW function to specify
/// the information level of the returned data.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/ne-fileapi-stream_info_levels>.
///
/// {@category enum}
extension type const STREAM_INFO_LEVELS(int _) implements int {
  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-findfirststreamw">FindFirstStreamW</a>
  /// function retrieves standard stream information.
  @Deprecated('Use FindStreamInfoStandard instead')
  static const FindStreamInfoStandard = 0;

  /// Used to determine valid enumeration values.
  @Deprecated('Use FindStreamInfoMaxInfoLevel instead')
  static const FindStreamInfoMaxInfoLevel = 1;
}

/// Specify the origin from which to calculate the new seek-pointer location.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ne-objidl-stream_seek>.
///
/// {@category enum}
extension type const STREAM_SEEK(int _) implements int {
  /// The new seek pointer is an offset relative to the beginning of the stream.
  @Deprecated('Use STREAM_SEEK_SET instead')
  static const STREAM_SEEK_SET = 0;

  /// The new seek pointer is an offset relative to the current seek pointer
  /// location.
  @Deprecated('Use STREAM_SEEK_CUR instead')
  static const STREAM_SEEK_CUR = 1;

  /// The new seek pointer is an offset relative to the end of the stream.
  @Deprecated('Use STREAM_SEEK_END instead')
  static const STREAM_SEEK_END = 2;
}

/// {@category enum}
extension type const STRETCH_BLT_MODE(int _) implements int {
  @Deprecated('Use BLACKONWHITE instead')
  static const BLACKONWHITE = 1;
  @Deprecated('Use COLORONCOLOR instead')
  static const COLORONCOLOR = 3;
  @Deprecated('Use HALFTONE instead')
  static const HALFTONE = 4;
  @Deprecated('Use STRETCH_ANDSCANS instead')
  static const STRETCH_ANDSCANS = 1;
  @Deprecated('Use STRETCH_DELETESCANS instead')
  static const STRETCH_DELETESCANS = 3;
  @Deprecated('Use STRETCH_HALFTONE instead')
  static const STRETCH_HALFTONE = 4;
  @Deprecated('Use STRETCH_ORSCANS instead')
  static const STRETCH_ORSCANS = 2;
  @Deprecated('Use WHITEONBLACK instead')
  static const WHITEONBLACK = 2;
}

/// {@category enum}
extension type const SYMBOL_INFO_FLAGS(int _) implements int {
  @Deprecated('Use SYMFLAG_CLR_TOKEN instead')
  static const SYMFLAG_CLR_TOKEN = 262144;
  @Deprecated('Use SYMFLAG_CONSTANT instead')
  static const SYMFLAG_CONSTANT = 256;
  @Deprecated('Use SYMFLAG_EXPORT instead')
  static const SYMFLAG_EXPORT = 512;
  @Deprecated('Use SYMFLAG_FORWARDER instead')
  static const SYMFLAG_FORWARDER = 1024;
  @Deprecated('Use SYMFLAG_FRAMEREL instead')
  static const SYMFLAG_FRAMEREL = 32;
  @Deprecated('Use SYMFLAG_FUNCTION instead')
  static const SYMFLAG_FUNCTION = 2048;
  @Deprecated('Use SYMFLAG_ILREL instead')
  static const SYMFLAG_ILREL = 65536;
  @Deprecated('Use SYMFLAG_LOCAL instead')
  static const SYMFLAG_LOCAL = 128;
  @Deprecated('Use SYMFLAG_METADATA instead')
  static const SYMFLAG_METADATA = 131072;
  @Deprecated('Use SYMFLAG_PARAMETER instead')
  static const SYMFLAG_PARAMETER = 64;
  @Deprecated('Use SYMFLAG_REGISTER instead')
  static const SYMFLAG_REGISTER = 8;
  @Deprecated('Use SYMFLAG_REGREL instead')
  static const SYMFLAG_REGREL = 16;
  @Deprecated('Use SYMFLAG_SLOT instead')
  static const SYMFLAG_SLOT = 32768;
  @Deprecated('Use SYMFLAG_THUNK instead')
  static const SYMFLAG_THUNK = 8192;
  @Deprecated('Use SYMFLAG_TLSREL instead')
  static const SYMFLAG_TLSREL = 16384;
  @Deprecated('Use SYMFLAG_VALUEPRESENT instead')
  static const SYMFLAG_VALUEPRESENT = 1;
  @Deprecated('Use SYMFLAG_VIRTUAL instead')
  static const SYMFLAG_VIRTUAL = 4096;
}

/// {@category enum}
extension type const SYM_LOAD_FLAGS(int _) implements int {
  @Deprecated('Use SLMFLAG_NONE instead')
  static const SLMFLAG_NONE = 0;
  @Deprecated('Use SLMFLAG_VIRTUAL instead')
  static const SLMFLAG_VIRTUAL = 1;
  @Deprecated('Use SLMFLAG_ALT_INDEX instead')
  static const SLMFLAG_ALT_INDEX = 2;
  @Deprecated('Use SLMFLAG_NO_SYMBOLS instead')
  static const SLMFLAG_NO_SYMBOLS = 4;
}

/// {@category enum}
extension type const SYNCHRONIZATION_ACCESS_RIGHTS(int _) implements int {
  @Deprecated('Use EVENT_ALL_ACCESS instead')
  static const EVENT_ALL_ACCESS = 2031619;
  @Deprecated('Use EVENT_MODIFY_STATE instead')
  static const EVENT_MODIFY_STATE = 2;
  @Deprecated('Use MUTEX_ALL_ACCESS instead')
  static const MUTEX_ALL_ACCESS = 2031617;
  @Deprecated('Use MUTEX_MODIFY_STATE instead')
  static const MUTEX_MODIFY_STATE = 1;
  @Deprecated('Use SEMAPHORE_ALL_ACCESS instead')
  static const SEMAPHORE_ALL_ACCESS = 2031619;
  @Deprecated('Use SEMAPHORE_MODIFY_STATE instead')
  static const SEMAPHORE_MODIFY_STATE = 2;
  @Deprecated('Use TIMER_ALL_ACCESS instead')
  static const TIMER_ALL_ACCESS = 2031619;
  @Deprecated('Use TIMER_MODIFY_STATE instead')
  static const TIMER_MODIFY_STATE = 2;
  @Deprecated('Use TIMER_QUERY_STATE instead')
  static const TIMER_QUERY_STATE = 1;
  @Deprecated('Use SYNCHRONIZATION_DELETE instead')
  static const SYNCHRONIZATION_DELETE = 65536;
  @Deprecated('Use SYNCHRONIZATION_READ_CONTROL instead')
  static const SYNCHRONIZATION_READ_CONTROL = SYNCHRONIZATION_ACCESS_RIGHTS(
    131072,
  );
  @Deprecated('Use SYNCHRONIZATION_WRITE_DAC instead')
  static const SYNCHRONIZATION_WRITE_DAC = SYNCHRONIZATION_ACCESS_RIGHTS(
    262144,
  );
  @Deprecated('Use SYNCHRONIZATION_WRITE_OWNER instead')
  static const SYNCHRONIZATION_WRITE_OWNER = SYNCHRONIZATION_ACCESS_RIGHTS(
    524288,
  );
  @Deprecated('Use SYNCHRONIZATION_SYNCHRONIZE instead')
  static const SYNCHRONIZATION_SYNCHRONIZE = SYNCHRONIZATION_ACCESS_RIGHTS(
    1048576,
  );
}

/// {@category enum}
extension type const SYSTEM_CURSOR_ID(int _) implements int {
  @Deprecated('Use OCR_APPSTARTING instead')
  static const OCR_APPSTARTING = 32650;
  @Deprecated('Use OCR_NORMAL instead')
  static const OCR_NORMAL = 32512;
  @Deprecated('Use OCR_CROSS instead')
  static const OCR_CROSS = 32515;
  @Deprecated('Use OCR_HAND instead')
  static const OCR_HAND = 32649;
  @Deprecated('Use OCR_HELP instead')
  static const OCR_HELP = 32651;
  @Deprecated('Use OCR_IBEAM instead')
  static const OCR_IBEAM = 32513;
  @Deprecated('Use OCR_NO instead')
  static const OCR_NO = 32648;
  @Deprecated('Use OCR_SIZEALL instead')
  static const OCR_SIZEALL = 32646;
  @Deprecated('Use OCR_SIZENESW instead')
  static const OCR_SIZENESW = 32643;
  @Deprecated('Use OCR_SIZENS instead')
  static const OCR_SIZENS = 32645;
  @Deprecated('Use OCR_SIZENWSE instead')
  static const OCR_SIZENWSE = 32642;
  @Deprecated('Use OCR_SIZEWE instead')
  static const OCR_SIZEWE = 32644;
  @Deprecated('Use OCR_UP instead')
  static const OCR_UP = 32516;
  @Deprecated('Use OCR_WAIT instead')
  static const OCR_WAIT = 32514;
}

/// {@category enum}
extension type const SYSTEM_METRICS_INDEX(int _) implements int {
  @Deprecated('Use SM_ARRANGE instead')
  static const SM_ARRANGE = 56;
  @Deprecated('Use SM_CLEANBOOT instead')
  static const SM_CLEANBOOT = 67;
  @Deprecated('Use SM_CMONITORS instead')
  static const SM_CMONITORS = 80;
  @Deprecated('Use SM_CMOUSEBUTTONS instead')
  static const SM_CMOUSEBUTTONS = 43;
  @Deprecated('Use SM_CONVERTIBLESLATEMODE instead')
  static const SM_CONVERTIBLESLATEMODE = 8195;
  @Deprecated('Use SM_CXBORDER instead')
  static const SM_CXBORDER = 5;
  @Deprecated('Use SM_CXCURSOR instead')
  static const SM_CXCURSOR = 13;
  @Deprecated('Use SM_CXDLGFRAME instead')
  static const SM_CXDLGFRAME = 7;
  @Deprecated('Use SM_CXDOUBLECLK instead')
  static const SM_CXDOUBLECLK = 36;
  @Deprecated('Use SM_CXDRAG instead')
  static const SM_CXDRAG = 68;
  @Deprecated('Use SM_CXEDGE instead')
  static const SM_CXEDGE = 45;
  @Deprecated('Use SM_CXFIXEDFRAME instead')
  static const SM_CXFIXEDFRAME = 7;
  @Deprecated('Use SM_CXFOCUSBORDER instead')
  static const SM_CXFOCUSBORDER = 83;
  @Deprecated('Use SM_CXFRAME instead')
  static const SM_CXFRAME = 32;
  @Deprecated('Use SM_CXFULLSCREEN instead')
  static const SM_CXFULLSCREEN = 16;
  @Deprecated('Use SM_CXHSCROLL instead')
  static const SM_CXHSCROLL = 21;
  @Deprecated('Use SM_CXHTHUMB instead')
  static const SM_CXHTHUMB = 10;
  @Deprecated('Use SM_CXICON instead')
  static const SM_CXICON = 11;
  @Deprecated('Use SM_CXICONSPACING instead')
  static const SM_CXICONSPACING = 38;
  @Deprecated('Use SM_CXMAXIMIZED instead')
  static const SM_CXMAXIMIZED = 61;
  @Deprecated('Use SM_CXMAXTRACK instead')
  static const SM_CXMAXTRACK = 59;
  @Deprecated('Use SM_CXMENUCHECK instead')
  static const SM_CXMENUCHECK = 71;
  @Deprecated('Use SM_CXMENUSIZE instead')
  static const SM_CXMENUSIZE = 54;
  @Deprecated('Use SM_CXMIN instead')
  static const SM_CXMIN = 28;
  @Deprecated('Use SM_CXMINIMIZED instead')
  static const SM_CXMINIMIZED = 57;
  @Deprecated('Use SM_CXMINSPACING instead')
  static const SM_CXMINSPACING = 47;
  @Deprecated('Use SM_CXMINTRACK instead')
  static const SM_CXMINTRACK = 34;
  @Deprecated('Use SM_CXPADDEDBORDER instead')
  static const SM_CXPADDEDBORDER = 92;
  @Deprecated('Use SM_CXSCREEN instead')
  static const SM_CXSCREEN = 0;
  @Deprecated('Use SM_CXSIZE instead')
  static const SM_CXSIZE = 30;
  @Deprecated('Use SM_CXSIZEFRAME instead')
  static const SM_CXSIZEFRAME = 32;
  @Deprecated('Use SM_CXSMICON instead')
  static const SM_CXSMICON = 49;
  @Deprecated('Use SM_CXSMSIZE instead')
  static const SM_CXSMSIZE = 52;
  @Deprecated('Use SM_CXVIRTUALSCREEN instead')
  static const SM_CXVIRTUALSCREEN = 78;
  @Deprecated('Use SM_CXVSCROLL instead')
  static const SM_CXVSCROLL = 2;
  @Deprecated('Use SM_CYBORDER instead')
  static const SM_CYBORDER = 6;
  @Deprecated('Use SM_CYCAPTION instead')
  static const SM_CYCAPTION = 4;
  @Deprecated('Use SM_CYCURSOR instead')
  static const SM_CYCURSOR = 14;
  @Deprecated('Use SM_CYDLGFRAME instead')
  static const SM_CYDLGFRAME = 8;
  @Deprecated('Use SM_CYDOUBLECLK instead')
  static const SM_CYDOUBLECLK = 37;
  @Deprecated('Use SM_CYDRAG instead')
  static const SM_CYDRAG = 69;
  @Deprecated('Use SM_CYEDGE instead')
  static const SM_CYEDGE = 46;
  @Deprecated('Use SM_CYFIXEDFRAME instead')
  static const SM_CYFIXEDFRAME = 8;
  @Deprecated('Use SM_CYFOCUSBORDER instead')
  static const SM_CYFOCUSBORDER = 84;
  @Deprecated('Use SM_CYFRAME instead')
  static const SM_CYFRAME = 33;
  @Deprecated('Use SM_CYFULLSCREEN instead')
  static const SM_CYFULLSCREEN = 17;
  @Deprecated('Use SM_CYHSCROLL instead')
  static const SM_CYHSCROLL = 3;
  @Deprecated('Use SM_CYICON instead')
  static const SM_CYICON = 12;
  @Deprecated('Use SM_CYICONSPACING instead')
  static const SM_CYICONSPACING = 39;
  @Deprecated('Use SM_CYKANJIWINDOW instead')
  static const SM_CYKANJIWINDOW = 18;
  @Deprecated('Use SM_CYMAXIMIZED instead')
  static const SM_CYMAXIMIZED = 62;
  @Deprecated('Use SM_CYMAXTRACK instead')
  static const SM_CYMAXTRACK = 60;
  @Deprecated('Use SM_CYMENU instead')
  static const SM_CYMENU = 15;
  @Deprecated('Use SM_CYMENUCHECK instead')
  static const SM_CYMENUCHECK = 72;
  @Deprecated('Use SM_CYMENUSIZE instead')
  static const SM_CYMENUSIZE = 55;
  @Deprecated('Use SM_CYMIN instead')
  static const SM_CYMIN = 29;
  @Deprecated('Use SM_CYMINIMIZED instead')
  static const SM_CYMINIMIZED = 58;
  @Deprecated('Use SM_CYMINSPACING instead')
  static const SM_CYMINSPACING = 48;
  @Deprecated('Use SM_CYMINTRACK instead')
  static const SM_CYMINTRACK = 35;
  @Deprecated('Use SM_CYSCREEN instead')
  static const SM_CYSCREEN = 1;
  @Deprecated('Use SM_CYSIZE instead')
  static const SM_CYSIZE = 31;
  @Deprecated('Use SM_CYSIZEFRAME instead')
  static const SM_CYSIZEFRAME = 33;
  @Deprecated('Use SM_CYSMCAPTION instead')
  static const SM_CYSMCAPTION = 51;
  @Deprecated('Use SM_CYSMICON instead')
  static const SM_CYSMICON = 50;
  @Deprecated('Use SM_CYSMSIZE instead')
  static const SM_CYSMSIZE = 53;
  @Deprecated('Use SM_CYVIRTUALSCREEN instead')
  static const SM_CYVIRTUALSCREEN = 79;
  @Deprecated('Use SM_CYVSCROLL instead')
  static const SM_CYVSCROLL = 20;
  @Deprecated('Use SM_CYVTHUMB instead')
  static const SM_CYVTHUMB = 9;
  @Deprecated('Use SM_DBCSENABLED instead')
  static const SM_DBCSENABLED = 42;
  @Deprecated('Use SM_DEBUG instead')
  static const SM_DEBUG = 22;
  @Deprecated('Use SM_DIGITIZER instead')
  static const SM_DIGITIZER = 94;
  @Deprecated('Use SM_IMMENABLED instead')
  static const SM_IMMENABLED = 82;
  @Deprecated('Use SM_MAXIMUMTOUCHES instead')
  static const SM_MAXIMUMTOUCHES = 95;
  @Deprecated('Use SM_MEDIACENTER instead')
  static const SM_MEDIACENTER = 87;
  @Deprecated('Use SM_MENUDROPALIGNMENT instead')
  static const SM_MENUDROPALIGNMENT = 40;
  @Deprecated('Use SM_MIDEASTENABLED instead')
  static const SM_MIDEASTENABLED = 74;
  @Deprecated('Use SM_MOUSEPRESENT instead')
  static const SM_MOUSEPRESENT = 19;
  @Deprecated('Use SM_MOUSEHORIZONTALWHEELPRESENT instead')
  static const SM_MOUSEHORIZONTALWHEELPRESENT = 91;
  @Deprecated('Use SM_MOUSEWHEELPRESENT instead')
  static const SM_MOUSEWHEELPRESENT = 75;
  @Deprecated('Use SM_NETWORK instead')
  static const SM_NETWORK = 63;
  @Deprecated('Use SM_PENWINDOWS instead')
  static const SM_PENWINDOWS = 41;
  @Deprecated('Use SM_REMOTECONTROL instead')
  static const SM_REMOTECONTROL = 8193;
  @Deprecated('Use SM_REMOTESESSION instead')
  static const SM_REMOTESESSION = 4096;
  @Deprecated('Use SM_SAMEDISPLAYFORMAT instead')
  static const SM_SAMEDISPLAYFORMAT = 81;
  @Deprecated('Use SM_SECURE instead')
  static const SM_SECURE = 44;
  @Deprecated('Use SM_SERVERR2 instead')
  static const SM_SERVERR2 = 89;
  @Deprecated('Use SM_SHOWSOUNDS instead')
  static const SM_SHOWSOUNDS = 70;
  @Deprecated('Use SM_SHUTTINGDOWN instead')
  static const SM_SHUTTINGDOWN = 8192;
  @Deprecated('Use SM_SLOWMACHINE instead')
  static const SM_SLOWMACHINE = 73;
  @Deprecated('Use SM_STARTER instead')
  static const SM_STARTER = 88;
  @Deprecated('Use SM_SWAPBUTTON instead')
  static const SM_SWAPBUTTON = 23;
  @Deprecated('Use SM_SYSTEMDOCKED instead')
  static const SM_SYSTEMDOCKED = 8196;
  @Deprecated('Use SM_TABLETPC instead')
  static const SM_TABLETPC = 86;
  @Deprecated('Use SM_XVIRTUALSCREEN instead')
  static const SM_XVIRTUALSCREEN = 76;
  @Deprecated('Use SM_YVIRTUALSCREEN instead')
  static const SM_YVIRTUALSCREEN = 77;
}

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_ACTION(int _) implements int {
  @Deprecated('Use SPI_GETBEEP instead')
  static const SPI_GETBEEP = 1;
  @Deprecated('Use SPI_SETBEEP instead')
  static const SPI_SETBEEP = 2;
  @Deprecated('Use SPI_GETMOUSE instead')
  static const SPI_GETMOUSE = 3;
  @Deprecated('Use SPI_SETMOUSE instead')
  static const SPI_SETMOUSE = 4;
  @Deprecated('Use SPI_GETBORDER instead')
  static const SPI_GETBORDER = 5;
  @Deprecated('Use SPI_SETBORDER instead')
  static const SPI_SETBORDER = 6;
  @Deprecated('Use SPI_GETKEYBOARDSPEED instead')
  static const SPI_GETKEYBOARDSPEED = 10;
  @Deprecated('Use SPI_SETKEYBOARDSPEED instead')
  static const SPI_SETKEYBOARDSPEED = 11;
  @Deprecated('Use SPI_LANGDRIVER instead')
  static const SPI_LANGDRIVER = 12;
  @Deprecated('Use SPI_ICONHORIZONTALSPACING instead')
  static const SPI_ICONHORIZONTALSPACING = 13;
  @Deprecated('Use SPI_GETSCREENSAVETIMEOUT instead')
  static const SPI_GETSCREENSAVETIMEOUT = 14;
  @Deprecated('Use SPI_SETSCREENSAVETIMEOUT instead')
  static const SPI_SETSCREENSAVETIMEOUT = 15;
  @Deprecated('Use SPI_GETSCREENSAVEACTIVE instead')
  static const SPI_GETSCREENSAVEACTIVE = 16;
  @Deprecated('Use SPI_SETSCREENSAVEACTIVE instead')
  static const SPI_SETSCREENSAVEACTIVE = 17;
  @Deprecated('Use SPI_GETGRIDGRANULARITY instead')
  static const SPI_GETGRIDGRANULARITY = 18;
  @Deprecated('Use SPI_SETGRIDGRANULARITY instead')
  static const SPI_SETGRIDGRANULARITY = 19;
  @Deprecated('Use SPI_SETDESKWALLPAPER instead')
  static const SPI_SETDESKWALLPAPER = 20;
  @Deprecated('Use SPI_SETDESKPATTERN instead')
  static const SPI_SETDESKPATTERN = 21;
  @Deprecated('Use SPI_GETKEYBOARDDELAY instead')
  static const SPI_GETKEYBOARDDELAY = 22;
  @Deprecated('Use SPI_SETKEYBOARDDELAY instead')
  static const SPI_SETKEYBOARDDELAY = 23;
  @Deprecated('Use SPI_ICONVERTICALSPACING instead')
  static const SPI_ICONVERTICALSPACING = 24;
  @Deprecated('Use SPI_GETICONTITLEWRAP instead')
  static const SPI_GETICONTITLEWRAP = 25;
  @Deprecated('Use SPI_SETICONTITLEWRAP instead')
  static const SPI_SETICONTITLEWRAP = 26;
  @Deprecated('Use SPI_GETMENUDROPALIGNMENT instead')
  static const SPI_GETMENUDROPALIGNMENT = 27;
  @Deprecated('Use SPI_SETMENUDROPALIGNMENT instead')
  static const SPI_SETMENUDROPALIGNMENT = 28;
  @Deprecated('Use SPI_SETDOUBLECLKWIDTH instead')
  static const SPI_SETDOUBLECLKWIDTH = 29;
  @Deprecated('Use SPI_SETDOUBLECLKHEIGHT instead')
  static const SPI_SETDOUBLECLKHEIGHT = 30;
  @Deprecated('Use SPI_GETICONTITLELOGFONT instead')
  static const SPI_GETICONTITLELOGFONT = 31;
  @Deprecated('Use SPI_SETDOUBLECLICKTIME instead')
  static const SPI_SETDOUBLECLICKTIME = 32;
  @Deprecated('Use SPI_SETMOUSEBUTTONSWAP instead')
  static const SPI_SETMOUSEBUTTONSWAP = 33;
  @Deprecated('Use SPI_SETICONTITLELOGFONT instead')
  static const SPI_SETICONTITLELOGFONT = 34;
  @Deprecated('Use SPI_GETFASTTASKSWITCH instead')
  static const SPI_GETFASTTASKSWITCH = 35;
  @Deprecated('Use SPI_SETFASTTASKSWITCH instead')
  static const SPI_SETFASTTASKSWITCH = 36;
  @Deprecated('Use SPI_SETDRAGFULLWINDOWS instead')
  static const SPI_SETDRAGFULLWINDOWS = 37;
  @Deprecated('Use SPI_GETDRAGFULLWINDOWS instead')
  static const SPI_GETDRAGFULLWINDOWS = 38;
  @Deprecated('Use SPI_GETNONCLIENTMETRICS instead')
  static const SPI_GETNONCLIENTMETRICS = 41;
  @Deprecated('Use SPI_SETNONCLIENTMETRICS instead')
  static const SPI_SETNONCLIENTMETRICS = 42;
  @Deprecated('Use SPI_GETMINIMIZEDMETRICS instead')
  static const SPI_GETMINIMIZEDMETRICS = 43;
  @Deprecated('Use SPI_SETMINIMIZEDMETRICS instead')
  static const SPI_SETMINIMIZEDMETRICS = 44;
  @Deprecated('Use SPI_GETICONMETRICS instead')
  static const SPI_GETICONMETRICS = 45;
  @Deprecated('Use SPI_SETICONMETRICS instead')
  static const SPI_SETICONMETRICS = 46;
  @Deprecated('Use SPI_SETWORKAREA instead')
  static const SPI_SETWORKAREA = 47;
  @Deprecated('Use SPI_GETWORKAREA instead')
  static const SPI_GETWORKAREA = 48;
  @Deprecated('Use SPI_SETPENWINDOWS instead')
  static const SPI_SETPENWINDOWS = 49;
  @Deprecated('Use SPI_GETHIGHCONTRAST instead')
  static const SPI_GETHIGHCONTRAST = 66;
  @Deprecated('Use SPI_SETHIGHCONTRAST instead')
  static const SPI_SETHIGHCONTRAST = 67;
  @Deprecated('Use SPI_GETKEYBOARDPREF instead')
  static const SPI_GETKEYBOARDPREF = 68;
  @Deprecated('Use SPI_SETKEYBOARDPREF instead')
  static const SPI_SETKEYBOARDPREF = 69;
  @Deprecated('Use SPI_GETSCREENREADER instead')
  static const SPI_GETSCREENREADER = 70;
  @Deprecated('Use SPI_SETSCREENREADER instead')
  static const SPI_SETSCREENREADER = 71;
  @Deprecated('Use SPI_GETANIMATION instead')
  static const SPI_GETANIMATION = 72;
  @Deprecated('Use SPI_SETANIMATION instead')
  static const SPI_SETANIMATION = 73;
  @Deprecated('Use SPI_GETFONTSMOOTHING instead')
  static const SPI_GETFONTSMOOTHING = 74;
  @Deprecated('Use SPI_SETFONTSMOOTHING instead')
  static const SPI_SETFONTSMOOTHING = 75;
  @Deprecated('Use SPI_SETDRAGWIDTH instead')
  static const SPI_SETDRAGWIDTH = 76;
  @Deprecated('Use SPI_SETDRAGHEIGHT instead')
  static const SPI_SETDRAGHEIGHT = 77;
  @Deprecated('Use SPI_SETHANDHELD instead')
  static const SPI_SETHANDHELD = 78;
  @Deprecated('Use SPI_GETLOWPOWERTIMEOUT instead')
  static const SPI_GETLOWPOWERTIMEOUT = 79;
  @Deprecated('Use SPI_GETPOWEROFFTIMEOUT instead')
  static const SPI_GETPOWEROFFTIMEOUT = 80;
  @Deprecated('Use SPI_SETLOWPOWERTIMEOUT instead')
  static const SPI_SETLOWPOWERTIMEOUT = 81;
  @Deprecated('Use SPI_SETPOWEROFFTIMEOUT instead')
  static const SPI_SETPOWEROFFTIMEOUT = 82;
  @Deprecated('Use SPI_GETLOWPOWERACTIVE instead')
  static const SPI_GETLOWPOWERACTIVE = 83;
  @Deprecated('Use SPI_GETPOWEROFFACTIVE instead')
  static const SPI_GETPOWEROFFACTIVE = 84;
  @Deprecated('Use SPI_SETLOWPOWERACTIVE instead')
  static const SPI_SETLOWPOWERACTIVE = 85;
  @Deprecated('Use SPI_SETPOWEROFFACTIVE instead')
  static const SPI_SETPOWEROFFACTIVE = 86;
  @Deprecated('Use SPI_SETCURSORS instead')
  static const SPI_SETCURSORS = 87;
  @Deprecated('Use SPI_SETICONS instead')
  static const SPI_SETICONS = 88;
  @Deprecated('Use SPI_GETDEFAULTINPUTLANG instead')
  static const SPI_GETDEFAULTINPUTLANG = 89;
  @Deprecated('Use SPI_SETDEFAULTINPUTLANG instead')
  static const SPI_SETDEFAULTINPUTLANG = 90;
  @Deprecated('Use SPI_SETLANGTOGGLE instead')
  static const SPI_SETLANGTOGGLE = 91;
  @Deprecated('Use SPI_GETWINDOWSEXTENSION instead')
  static const SPI_GETWINDOWSEXTENSION = 92;
  @Deprecated('Use SPI_SETMOUSETRAILS instead')
  static const SPI_SETMOUSETRAILS = 93;
  @Deprecated('Use SPI_GETMOUSETRAILS instead')
  static const SPI_GETMOUSETRAILS = 94;
  @Deprecated('Use SPI_SETSCREENSAVERRUNNING instead')
  static const SPI_SETSCREENSAVERRUNNING = 97;
  @Deprecated('Use SPI_SCREENSAVERRUNNING instead')
  static const SPI_SCREENSAVERRUNNING = 97;
  @Deprecated('Use SPI_GETFILTERKEYS instead')
  static const SPI_GETFILTERKEYS = 50;
  @Deprecated('Use SPI_SETFILTERKEYS instead')
  static const SPI_SETFILTERKEYS = 51;
  @Deprecated('Use SPI_GETTOGGLEKEYS instead')
  static const SPI_GETTOGGLEKEYS = 52;
  @Deprecated('Use SPI_SETTOGGLEKEYS instead')
  static const SPI_SETTOGGLEKEYS = 53;
  @Deprecated('Use SPI_GETMOUSEKEYS instead')
  static const SPI_GETMOUSEKEYS = 54;
  @Deprecated('Use SPI_SETMOUSEKEYS instead')
  static const SPI_SETMOUSEKEYS = 55;
  @Deprecated('Use SPI_GETSHOWSOUNDS instead')
  static const SPI_GETSHOWSOUNDS = 56;
  @Deprecated('Use SPI_SETSHOWSOUNDS instead')
  static const SPI_SETSHOWSOUNDS = 57;
  @Deprecated('Use SPI_GETSTICKYKEYS instead')
  static const SPI_GETSTICKYKEYS = 58;
  @Deprecated('Use SPI_SETSTICKYKEYS instead')
  static const SPI_SETSTICKYKEYS = 59;
  @Deprecated('Use SPI_GETACCESSTIMEOUT instead')
  static const SPI_GETACCESSTIMEOUT = 60;
  @Deprecated('Use SPI_SETACCESSTIMEOUT instead')
  static const SPI_SETACCESSTIMEOUT = 61;
  @Deprecated('Use SPI_GETSERIALKEYS instead')
  static const SPI_GETSERIALKEYS = 62;
  @Deprecated('Use SPI_SETSERIALKEYS instead')
  static const SPI_SETSERIALKEYS = 63;
  @Deprecated('Use SPI_GETSOUNDSENTRY instead')
  static const SPI_GETSOUNDSENTRY = 64;
  @Deprecated('Use SPI_SETSOUNDSENTRY instead')
  static const SPI_SETSOUNDSENTRY = 65;
  @Deprecated('Use SPI_GETSNAPTODEFBUTTON instead')
  static const SPI_GETSNAPTODEFBUTTON = 95;
  @Deprecated('Use SPI_SETSNAPTODEFBUTTON instead')
  static const SPI_SETSNAPTODEFBUTTON = 96;
  @Deprecated('Use SPI_GETMOUSEHOVERWIDTH instead')
  static const SPI_GETMOUSEHOVERWIDTH = 98;
  @Deprecated('Use SPI_SETMOUSEHOVERWIDTH instead')
  static const SPI_SETMOUSEHOVERWIDTH = 99;
  @Deprecated('Use SPI_GETMOUSEHOVERHEIGHT instead')
  static const SPI_GETMOUSEHOVERHEIGHT = 100;
  @Deprecated('Use SPI_SETMOUSEHOVERHEIGHT instead')
  static const SPI_SETMOUSEHOVERHEIGHT = 101;
  @Deprecated('Use SPI_GETMOUSEHOVERTIME instead')
  static const SPI_GETMOUSEHOVERTIME = 102;
  @Deprecated('Use SPI_SETMOUSEHOVERTIME instead')
  static const SPI_SETMOUSEHOVERTIME = 103;
  @Deprecated('Use SPI_GETWHEELSCROLLLINES instead')
  static const SPI_GETWHEELSCROLLLINES = 104;
  @Deprecated('Use SPI_SETWHEELSCROLLLINES instead')
  static const SPI_SETWHEELSCROLLLINES = 105;
  @Deprecated('Use SPI_GETMENUSHOWDELAY instead')
  static const SPI_GETMENUSHOWDELAY = 106;
  @Deprecated('Use SPI_SETMENUSHOWDELAY instead')
  static const SPI_SETMENUSHOWDELAY = 107;
  @Deprecated('Use SPI_GETWHEELSCROLLCHARS instead')
  static const SPI_GETWHEELSCROLLCHARS = 108;
  @Deprecated('Use SPI_SETWHEELSCROLLCHARS instead')
  static const SPI_SETWHEELSCROLLCHARS = 109;
  @Deprecated('Use SPI_GETSHOWIMEUI instead')
  static const SPI_GETSHOWIMEUI = 110;
  @Deprecated('Use SPI_SETSHOWIMEUI instead')
  static const SPI_SETSHOWIMEUI = 111;
  @Deprecated('Use SPI_GETMOUSESPEED instead')
  static const SPI_GETMOUSESPEED = 112;
  @Deprecated('Use SPI_SETMOUSESPEED instead')
  static const SPI_SETMOUSESPEED = 113;
  @Deprecated('Use SPI_GETSCREENSAVERRUNNING instead')
  static const SPI_GETSCREENSAVERRUNNING = 114;
  @Deprecated('Use SPI_GETDESKWALLPAPER instead')
  static const SPI_GETDESKWALLPAPER = 115;
  @Deprecated('Use SPI_GETAUDIODESCRIPTION instead')
  static const SPI_GETAUDIODESCRIPTION = 116;
  @Deprecated('Use SPI_SETAUDIODESCRIPTION instead')
  static const SPI_SETAUDIODESCRIPTION = 117;
  @Deprecated('Use SPI_GETSCREENSAVESECURE instead')
  static const SPI_GETSCREENSAVESECURE = 118;
  @Deprecated('Use SPI_SETSCREENSAVESECURE instead')
  static const SPI_SETSCREENSAVESECURE = 119;
  @Deprecated('Use SPI_GETHUNGAPPTIMEOUT instead')
  static const SPI_GETHUNGAPPTIMEOUT = 120;
  @Deprecated('Use SPI_SETHUNGAPPTIMEOUT instead')
  static const SPI_SETHUNGAPPTIMEOUT = 121;
  @Deprecated('Use SPI_GETWAITTOKILLTIMEOUT instead')
  static const SPI_GETWAITTOKILLTIMEOUT = 122;
  @Deprecated('Use SPI_SETWAITTOKILLTIMEOUT instead')
  static const SPI_SETWAITTOKILLTIMEOUT = 123;
  @Deprecated('Use SPI_GETWAITTOKILLSERVICETIMEOUT instead')
  static const SPI_GETWAITTOKILLSERVICETIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(
    124,
  );
  @Deprecated('Use SPI_SETWAITTOKILLSERVICETIMEOUT instead')
  static const SPI_SETWAITTOKILLSERVICETIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(
    125,
  );
  @Deprecated('Use SPI_GETMOUSEDOCKTHRESHOLD instead')
  static const SPI_GETMOUSEDOCKTHRESHOLD = 126;
  @Deprecated('Use SPI_SETMOUSEDOCKTHRESHOLD instead')
  static const SPI_SETMOUSEDOCKTHRESHOLD = 127;
  @Deprecated('Use SPI_GETPENDOCKTHRESHOLD instead')
  static const SPI_GETPENDOCKTHRESHOLD = 128;
  @Deprecated('Use SPI_SETPENDOCKTHRESHOLD instead')
  static const SPI_SETPENDOCKTHRESHOLD = 129;
  @Deprecated('Use SPI_GETWINARRANGING instead')
  static const SPI_GETWINARRANGING = 130;
  @Deprecated('Use SPI_SETWINARRANGING instead')
  static const SPI_SETWINARRANGING = 131;
  @Deprecated('Use SPI_GETMOUSEDRAGOUTTHRESHOLD instead')
  static const SPI_GETMOUSEDRAGOUTTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(
    132,
  );
  @Deprecated('Use SPI_SETMOUSEDRAGOUTTHRESHOLD instead')
  static const SPI_SETMOUSEDRAGOUTTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(
    133,
  );
  @Deprecated('Use SPI_GETPENDRAGOUTTHRESHOLD instead')
  static const SPI_GETPENDRAGOUTTHRESHOLD = 134;
  @Deprecated('Use SPI_SETPENDRAGOUTTHRESHOLD instead')
  static const SPI_SETPENDRAGOUTTHRESHOLD = 135;
  @Deprecated('Use SPI_GETMOUSESIDEMOVETHRESHOLD instead')
  static const SPI_GETMOUSESIDEMOVETHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(
    136,
  );
  @Deprecated('Use SPI_SETMOUSESIDEMOVETHRESHOLD instead')
  static const SPI_SETMOUSESIDEMOVETHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(
    137,
  );
  @Deprecated('Use SPI_GETPENSIDEMOVETHRESHOLD instead')
  static const SPI_GETPENSIDEMOVETHRESHOLD = 138;
  @Deprecated('Use SPI_SETPENSIDEMOVETHRESHOLD instead')
  static const SPI_SETPENSIDEMOVETHRESHOLD = 139;
  @Deprecated('Use SPI_GETDRAGFROMMAXIMIZE instead')
  static const SPI_GETDRAGFROMMAXIMIZE = 140;
  @Deprecated('Use SPI_SETDRAGFROMMAXIMIZE instead')
  static const SPI_SETDRAGFROMMAXIMIZE = 141;
  @Deprecated('Use SPI_GETSNAPSIZING instead')
  static const SPI_GETSNAPSIZING = 142;
  @Deprecated('Use SPI_SETSNAPSIZING instead')
  static const SPI_SETSNAPSIZING = 143;
  @Deprecated('Use SPI_GETDOCKMOVING instead')
  static const SPI_GETDOCKMOVING = 144;
  @Deprecated('Use SPI_SETDOCKMOVING instead')
  static const SPI_SETDOCKMOVING = 145;
  @Deprecated('Use SPI_GETTOUCHPREDICTIONPARAMETERS instead')
  static const SPI_GETTOUCHPREDICTIONPARAMETERS = SYSTEM_PARAMETERS_INFO_ACTION(
    156,
  );
  @Deprecated('Use SPI_SETTOUCHPREDICTIONPARAMETERS instead')
  static const SPI_SETTOUCHPREDICTIONPARAMETERS = SYSTEM_PARAMETERS_INFO_ACTION(
    157,
  );
  @Deprecated('Use SPI_GETLOGICALDPIOVERRIDE instead')
  static const SPI_GETLOGICALDPIOVERRIDE = 158;
  @Deprecated('Use SPI_SETLOGICALDPIOVERRIDE instead')
  static const SPI_SETLOGICALDPIOVERRIDE = 159;
  @Deprecated('Use SPI_GETMENURECT instead')
  static const SPI_GETMENURECT = 162;
  @Deprecated('Use SPI_SETMENURECT instead')
  static const SPI_SETMENURECT = 163;
  @Deprecated('Use SPI_GETACTIVEWINDOWTRACKING instead')
  static const SPI_GETACTIVEWINDOWTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(
    4096,
  );
  @Deprecated('Use SPI_SETACTIVEWINDOWTRACKING instead')
  static const SPI_SETACTIVEWINDOWTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(
    4097,
  );
  @Deprecated('Use SPI_GETMENUANIMATION instead')
  static const SPI_GETMENUANIMATION = 4098;
  @Deprecated('Use SPI_SETMENUANIMATION instead')
  static const SPI_SETMENUANIMATION = 4099;
  @Deprecated('Use SPI_GETCOMBOBOXANIMATION instead')
  static const SPI_GETCOMBOBOXANIMATION = 4100;
  @Deprecated('Use SPI_SETCOMBOBOXANIMATION instead')
  static const SPI_SETCOMBOBOXANIMATION = 4101;
  @Deprecated('Use SPI_GETLISTBOXSMOOTHSCROLLING instead')
  static const SPI_GETLISTBOXSMOOTHSCROLLING = SYSTEM_PARAMETERS_INFO_ACTION(
    4102,
  );
  @Deprecated('Use SPI_SETLISTBOXSMOOTHSCROLLING instead')
  static const SPI_SETLISTBOXSMOOTHSCROLLING = SYSTEM_PARAMETERS_INFO_ACTION(
    4103,
  );
  @Deprecated('Use SPI_GETGRADIENTCAPTIONS instead')
  static const SPI_GETGRADIENTCAPTIONS = 4104;
  @Deprecated('Use SPI_SETGRADIENTCAPTIONS instead')
  static const SPI_SETGRADIENTCAPTIONS = 4105;
  @Deprecated('Use SPI_GETKEYBOARDCUES instead')
  static const SPI_GETKEYBOARDCUES = 4106;
  @Deprecated('Use SPI_SETKEYBOARDCUES instead')
  static const SPI_SETKEYBOARDCUES = 4107;
  @Deprecated('Use SPI_GETMENUUNDERLINES instead')
  static const SPI_GETMENUUNDERLINES = 4106;
  @Deprecated('Use SPI_SETMENUUNDERLINES instead')
  static const SPI_SETMENUUNDERLINES = 4107;
  @Deprecated('Use SPI_GETACTIVEWNDTRKZORDER instead')
  static const SPI_GETACTIVEWNDTRKZORDER = 4108;
  @Deprecated('Use SPI_SETACTIVEWNDTRKZORDER instead')
  static const SPI_SETACTIVEWNDTRKZORDER = 4109;
  @Deprecated('Use SPI_GETHOTTRACKING instead')
  static const SPI_GETHOTTRACKING = 4110;
  @Deprecated('Use SPI_SETHOTTRACKING instead')
  static const SPI_SETHOTTRACKING = 4111;
  @Deprecated('Use SPI_GETMENUFADE instead')
  static const SPI_GETMENUFADE = 4114;
  @Deprecated('Use SPI_SETMENUFADE instead')
  static const SPI_SETMENUFADE = 4115;
  @Deprecated('Use SPI_GETSELECTIONFADE instead')
  static const SPI_GETSELECTIONFADE = 4116;
  @Deprecated('Use SPI_SETSELECTIONFADE instead')
  static const SPI_SETSELECTIONFADE = 4117;
  @Deprecated('Use SPI_GETTOOLTIPANIMATION instead')
  static const SPI_GETTOOLTIPANIMATION = 4118;
  @Deprecated('Use SPI_SETTOOLTIPANIMATION instead')
  static const SPI_SETTOOLTIPANIMATION = 4119;
  @Deprecated('Use SPI_GETTOOLTIPFADE instead')
  static const SPI_GETTOOLTIPFADE = 4120;
  @Deprecated('Use SPI_SETTOOLTIPFADE instead')
  static const SPI_SETTOOLTIPFADE = 4121;
  @Deprecated('Use SPI_GETCURSORSHADOW instead')
  static const SPI_GETCURSORSHADOW = 4122;
  @Deprecated('Use SPI_SETCURSORSHADOW instead')
  static const SPI_SETCURSORSHADOW = 4123;
  @Deprecated('Use SPI_GETMOUSESONAR instead')
  static const SPI_GETMOUSESONAR = 4124;
  @Deprecated('Use SPI_SETMOUSESONAR instead')
  static const SPI_SETMOUSESONAR = 4125;
  @Deprecated('Use SPI_GETMOUSECLICKLOCK instead')
  static const SPI_GETMOUSECLICKLOCK = 4126;
  @Deprecated('Use SPI_SETMOUSECLICKLOCK instead')
  static const SPI_SETMOUSECLICKLOCK = 4127;
  @Deprecated('Use SPI_GETMOUSEVANISH instead')
  static const SPI_GETMOUSEVANISH = 4128;
  @Deprecated('Use SPI_SETMOUSEVANISH instead')
  static const SPI_SETMOUSEVANISH = 4129;
  @Deprecated('Use SPI_GETFLATMENU instead')
  static const SPI_GETFLATMENU = 4130;
  @Deprecated('Use SPI_SETFLATMENU instead')
  static const SPI_SETFLATMENU = 4131;
  @Deprecated('Use SPI_GETDROPSHADOW instead')
  static const SPI_GETDROPSHADOW = 4132;
  @Deprecated('Use SPI_SETDROPSHADOW instead')
  static const SPI_SETDROPSHADOW = 4133;
  @Deprecated('Use SPI_GETBLOCKSENDINPUTRESETS instead')
  static const SPI_GETBLOCKSENDINPUTRESETS = SYSTEM_PARAMETERS_INFO_ACTION(
    4134,
  );
  @Deprecated('Use SPI_SETBLOCKSENDINPUTRESETS instead')
  static const SPI_SETBLOCKSENDINPUTRESETS = SYSTEM_PARAMETERS_INFO_ACTION(
    4135,
  );
  @Deprecated('Use SPI_GETUIEFFECTS instead')
  static const SPI_GETUIEFFECTS = 4158;
  @Deprecated('Use SPI_SETUIEFFECTS instead')
  static const SPI_SETUIEFFECTS = 4159;
  @Deprecated('Use SPI_GETDISABLEOVERLAPPEDCONTENT instead')
  static const SPI_GETDISABLEOVERLAPPEDCONTENT = SYSTEM_PARAMETERS_INFO_ACTION(
    4160,
  );
  @Deprecated('Use SPI_SETDISABLEOVERLAPPEDCONTENT instead')
  static const SPI_SETDISABLEOVERLAPPEDCONTENT = SYSTEM_PARAMETERS_INFO_ACTION(
    4161,
  );
  @Deprecated('Use SPI_GETCLIENTAREAANIMATION instead')
  static const SPI_GETCLIENTAREAANIMATION = 4162;
  @Deprecated('Use SPI_SETCLIENTAREAANIMATION instead')
  static const SPI_SETCLIENTAREAANIMATION = 4163;
  @Deprecated('Use SPI_GETCLEARTYPE instead')
  static const SPI_GETCLEARTYPE = 4168;
  @Deprecated('Use SPI_SETCLEARTYPE instead')
  static const SPI_SETCLEARTYPE = 4169;
  @Deprecated('Use SPI_GETSPEECHRECOGNITION instead')
  static const SPI_GETSPEECHRECOGNITION = 4170;
  @Deprecated('Use SPI_SETSPEECHRECOGNITION instead')
  static const SPI_SETSPEECHRECOGNITION = 4171;
  @Deprecated('Use SPI_GETCARETBROWSING instead')
  static const SPI_GETCARETBROWSING = 4172;
  @Deprecated('Use SPI_SETCARETBROWSING instead')
  static const SPI_SETCARETBROWSING = 4173;
  @Deprecated('Use SPI_GETTHREADLOCALINPUTSETTINGS instead')
  static const SPI_GETTHREADLOCALINPUTSETTINGS = SYSTEM_PARAMETERS_INFO_ACTION(
    4174,
  );
  @Deprecated('Use SPI_SETTHREADLOCALINPUTSETTINGS instead')
  static const SPI_SETTHREADLOCALINPUTSETTINGS = SYSTEM_PARAMETERS_INFO_ACTION(
    4175,
  );
  @Deprecated('Use SPI_GETSYSTEMLANGUAGEBAR instead')
  static const SPI_GETSYSTEMLANGUAGEBAR = 4176;
  @Deprecated('Use SPI_SETSYSTEMLANGUAGEBAR instead')
  static const SPI_SETSYSTEMLANGUAGEBAR = 4177;
  @Deprecated('Use SPI_GETFOREGROUNDLOCKTIMEOUT instead')
  static const SPI_GETFOREGROUNDLOCKTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(
    8192,
  );
  @Deprecated('Use SPI_SETFOREGROUNDLOCKTIMEOUT instead')
  static const SPI_SETFOREGROUNDLOCKTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(
    8193,
  );
  @Deprecated('Use SPI_GETACTIVEWNDTRKTIMEOUT instead')
  static const SPI_GETACTIVEWNDTRKTIMEOUT = 8194;
  @Deprecated('Use SPI_SETACTIVEWNDTRKTIMEOUT instead')
  static const SPI_SETACTIVEWNDTRKTIMEOUT = 8195;
  @Deprecated('Use SPI_GETFOREGROUNDFLASHCOUNT instead')
  static const SPI_GETFOREGROUNDFLASHCOUNT = SYSTEM_PARAMETERS_INFO_ACTION(
    8196,
  );
  @Deprecated('Use SPI_SETFOREGROUNDFLASHCOUNT instead')
  static const SPI_SETFOREGROUNDFLASHCOUNT = SYSTEM_PARAMETERS_INFO_ACTION(
    8197,
  );
  @Deprecated('Use SPI_GETCARETWIDTH instead')
  static const SPI_GETCARETWIDTH = 8198;
  @Deprecated('Use SPI_SETCARETWIDTH instead')
  static const SPI_SETCARETWIDTH = 8199;
  @Deprecated('Use SPI_GETMOUSECLICKLOCKTIME instead')
  static const SPI_GETMOUSECLICKLOCKTIME = 8200;
  @Deprecated('Use SPI_SETMOUSECLICKLOCKTIME instead')
  static const SPI_SETMOUSECLICKLOCKTIME = 8201;
  @Deprecated('Use SPI_GETFONTSMOOTHINGTYPE instead')
  static const SPI_GETFONTSMOOTHINGTYPE = 8202;
  @Deprecated('Use SPI_SETFONTSMOOTHINGTYPE instead')
  static const SPI_SETFONTSMOOTHINGTYPE = 8203;
  @Deprecated('Use SPI_GETFONTSMOOTHINGCONTRAST instead')
  static const SPI_GETFONTSMOOTHINGCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(
    8204,
  );
  @Deprecated('Use SPI_SETFONTSMOOTHINGCONTRAST instead')
  static const SPI_SETFONTSMOOTHINGCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(
    8205,
  );
  @Deprecated('Use SPI_GETFOCUSBORDERWIDTH instead')
  static const SPI_GETFOCUSBORDERWIDTH = 8206;
  @Deprecated('Use SPI_SETFOCUSBORDERWIDTH instead')
  static const SPI_SETFOCUSBORDERWIDTH = 8207;
  @Deprecated('Use SPI_GETFOCUSBORDERHEIGHT instead')
  static const SPI_GETFOCUSBORDERHEIGHT = 8208;
  @Deprecated('Use SPI_SETFOCUSBORDERHEIGHT instead')
  static const SPI_SETFOCUSBORDERHEIGHT = 8209;
  @Deprecated('Use SPI_GETFONTSMOOTHINGORIENTATION instead')
  static const SPI_GETFONTSMOOTHINGORIENTATION = SYSTEM_PARAMETERS_INFO_ACTION(
    8210,
  );
  @Deprecated('Use SPI_SETFONTSMOOTHINGORIENTATION instead')
  static const SPI_SETFONTSMOOTHINGORIENTATION = SYSTEM_PARAMETERS_INFO_ACTION(
    8211,
  );
  @Deprecated('Use SPI_GETMINIMUMHITRADIUS instead')
  static const SPI_GETMINIMUMHITRADIUS = 8212;
  @Deprecated('Use SPI_SETMINIMUMHITRADIUS instead')
  static const SPI_SETMINIMUMHITRADIUS = 8213;
  @Deprecated('Use SPI_GETMESSAGEDURATION instead')
  static const SPI_GETMESSAGEDURATION = 8214;
  @Deprecated('Use SPI_SETMESSAGEDURATION instead')
  static const SPI_SETMESSAGEDURATION = 8215;
  @Deprecated('Use SPI_GETCONTACTVISUALIZATION instead')
  static const SPI_GETCONTACTVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(
    8216,
  );
  @Deprecated('Use SPI_SETCONTACTVISUALIZATION instead')
  static const SPI_SETCONTACTVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(
    8217,
  );
  @Deprecated('Use SPI_GETGESTUREVISUALIZATION instead')
  static const SPI_GETGESTUREVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(
    8218,
  );
  @Deprecated('Use SPI_SETGESTUREVISUALIZATION instead')
  static const SPI_SETGESTUREVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(
    8219,
  );
  @Deprecated('Use SPI_GETMOUSEWHEELROUTING instead')
  static const SPI_GETMOUSEWHEELROUTING = 8220;
  @Deprecated('Use SPI_SETMOUSEWHEELROUTING instead')
  static const SPI_SETMOUSEWHEELROUTING = 8221;
  @Deprecated('Use SPI_GETPENVISUALIZATION instead')
  static const SPI_GETPENVISUALIZATION = 8222;
  @Deprecated('Use SPI_SETPENVISUALIZATION instead')
  static const SPI_SETPENVISUALIZATION = 8223;
  @Deprecated('Use SPI_GETPENARBITRATIONTYPE instead')
  static const SPI_GETPENARBITRATIONTYPE = 8224;
  @Deprecated('Use SPI_SETPENARBITRATIONTYPE instead')
  static const SPI_SETPENARBITRATIONTYPE = 8225;
  @Deprecated('Use SPI_GETCARETTIMEOUT instead')
  static const SPI_GETCARETTIMEOUT = 8226;
  @Deprecated('Use SPI_SETCARETTIMEOUT instead')
  static const SPI_SETCARETTIMEOUT = 8227;
  @Deprecated('Use SPI_GETHANDEDNESS instead')
  static const SPI_GETHANDEDNESS = 8228;
  @Deprecated('Use SPI_SETHANDEDNESS instead')
  static const SPI_SETHANDEDNESS = 8229;
}

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(int _) implements int {
  @Deprecated('Use SPIF_UPDATEINIFILE instead')
  static const SPIF_UPDATEINIFILE = 1;
  @Deprecated('Use SPIF_SENDCHANGE instead')
  static const SPIF_SENDCHANGE = 2;
  @Deprecated('Use SPIF_SENDWININICHANGE instead')
  static const SPIF_SENDWININICHANGE = 2;
}

/// {@category enum}
extension type const SYS_COLOR_INDEX(int _) implements int {
  @Deprecated('Use COLOR_SCROLLBAR instead')
  static const COLOR_SCROLLBAR = 0;
  @Deprecated('Use COLOR_BACKGROUND instead')
  static const COLOR_BACKGROUND = 1;
  @Deprecated('Use COLOR_ACTIVECAPTION instead')
  static const COLOR_ACTIVECAPTION = 2;
  @Deprecated('Use COLOR_INACTIVECAPTION instead')
  static const COLOR_INACTIVECAPTION = 3;
  @Deprecated('Use COLOR_MENU instead')
  static const COLOR_MENU = 4;
  @Deprecated('Use COLOR_WINDOW instead')
  static const COLOR_WINDOW = 5;
  @Deprecated('Use COLOR_WINDOWFRAME instead')
  static const COLOR_WINDOWFRAME = 6;
  @Deprecated('Use COLOR_MENUTEXT instead')
  static const COLOR_MENUTEXT = 7;
  @Deprecated('Use COLOR_WINDOWTEXT instead')
  static const COLOR_WINDOWTEXT = 8;
  @Deprecated('Use COLOR_CAPTIONTEXT instead')
  static const COLOR_CAPTIONTEXT = 9;
  @Deprecated('Use COLOR_ACTIVEBORDER instead')
  static const COLOR_ACTIVEBORDER = 10;
  @Deprecated('Use COLOR_INACTIVEBORDER instead')
  static const COLOR_INACTIVEBORDER = 11;
  @Deprecated('Use COLOR_APPWORKSPACE instead')
  static const COLOR_APPWORKSPACE = 12;
  @Deprecated('Use COLOR_HIGHLIGHT instead')
  static const COLOR_HIGHLIGHT = 13;
  @Deprecated('Use COLOR_HIGHLIGHTTEXT instead')
  static const COLOR_HIGHLIGHTTEXT = 14;
  @Deprecated('Use COLOR_BTNFACE instead')
  static const COLOR_BTNFACE = 15;
  @Deprecated('Use COLOR_BTNSHADOW instead')
  static const COLOR_BTNSHADOW = 16;
  @Deprecated('Use COLOR_GRAYTEXT instead')
  static const COLOR_GRAYTEXT = 17;
  @Deprecated('Use COLOR_BTNTEXT instead')
  static const COLOR_BTNTEXT = 18;
  @Deprecated('Use COLOR_INACTIVECAPTIONTEXT instead')
  static const COLOR_INACTIVECAPTIONTEXT = 19;
  @Deprecated('Use COLOR_BTNHIGHLIGHT instead')
  static const COLOR_BTNHIGHLIGHT = 20;
  @Deprecated('Use COLOR_3DDKSHADOW instead')
  static const COLOR_3DDKSHADOW = 21;
  @Deprecated('Use COLOR_3DLIGHT instead')
  static const COLOR_3DLIGHT = 22;
  @Deprecated('Use COLOR_INFOTEXT instead')
  static const COLOR_INFOTEXT = 23;
  @Deprecated('Use COLOR_INFOBK instead')
  static const COLOR_INFOBK = 24;
  @Deprecated('Use COLOR_HOTLIGHT instead')
  static const COLOR_HOTLIGHT = 26;
  @Deprecated('Use COLOR_GRADIENTACTIVECAPTION instead')
  static const COLOR_GRADIENTACTIVECAPTION = 27;
  @Deprecated('Use COLOR_GRADIENTINACTIVECAPTION instead')
  static const COLOR_GRADIENTINACTIVECAPTION = 28;
  @Deprecated('Use COLOR_MENUHILIGHT instead')
  static const COLOR_MENUHILIGHT = 29;
  @Deprecated('Use COLOR_MENUBAR instead')
  static const COLOR_MENUBAR = 30;
  @Deprecated('Use COLOR_DESKTOP instead')
  static const COLOR_DESKTOP = 1;
  @Deprecated('Use COLOR_3DFACE instead')
  static const COLOR_3DFACE = 15;
  @Deprecated('Use COLOR_3DSHADOW instead')
  static const COLOR_3DSHADOW = 16;
  @Deprecated('Use COLOR_3DHIGHLIGHT instead')
  static const COLOR_3DHIGHLIGHT = 20;
  @Deprecated('Use COLOR_3DHILIGHT instead')
  static const COLOR_3DHILIGHT = 20;
  @Deprecated('Use COLOR_BTNHILIGHT instead')
  static const COLOR_BTNHILIGHT = 20;
}

/// Defines possible operational states for sensors.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/ne-sensorsapi-sensorstate>.
///
/// {@category enum}
extension type const SensorState(int _) implements int {
  /// Minimum enumerated sensor state.
  @Deprecated('Use SENSOR_STATE_MIN instead')
  static const SENSOR_STATE_MIN = 0;

  /// Ready to send sensor data.
  @Deprecated('Use SENSOR_STATE_READY instead')
  static const SENSOR_STATE_READY = 0;

  /// The sensor is not available for use.
  @Deprecated('Use SENSOR_STATE_NOT_AVAILABLE instead')
  static const SENSOR_STATE_NOT_AVAILABLE = 1;

  /// The sensor is available but does not have data.
  @Deprecated('Use SENSOR_STATE_NO_DATA instead')
  static const SENSOR_STATE_NO_DATA = 2;

  /// The sensor is available, but performing initialization.
  @Deprecated('Use SENSOR_STATE_INITIALIZING instead')
  static const SENSOR_STATE_INITIALIZING = 3;

  /// The sensor is available, but the user account does not have permission to
  /// access the sensor data.
  @Deprecated('Use SENSOR_STATE_ACCESS_DENIED instead')
  static const SENSOR_STATE_ACCESS_DENIED = 4;

  /// The sensor has raised an error.
  @Deprecated('Use SENSOR_STATE_ERROR instead')
  static const SENSOR_STATE_ERROR = 5;

  /// Maximum enumerated sensor state.
  @Deprecated('Use SENSOR_STATE_MAX instead')
  static const SENSOR_STATE_MAX = 5;
}

/// {@category enum}
extension type const SpeechTokenContext(int _) implements int {
  @Deprecated('Use STCInprocServer instead')
  static const STCInprocServer = 1;
  @Deprecated('Use STCInprocHandler instead')
  static const STCInprocHandler = 2;
  @Deprecated('Use STCLocalServer instead')
  static const STCLocalServer = 4;
  @Deprecated('Use STCRemoteServer instead')
  static const STCRemoteServer = 16;
  @Deprecated('Use STCAll instead')
  static const STCAll = 23;
}

/// {@category enum}
extension type const SpeechTokenShellFolder(int _) implements int {
  @Deprecated('Use STSF_AppData instead')
  static const STSF_AppData = 26;
  @Deprecated('Use STSF_LocalAppData instead')
  static const STSF_LocalAppData = 28;
  @Deprecated('Use STSF_CommonAppData instead')
  static const STSF_CommonAppData = 35;
  @Deprecated('Use STSF_FlagCreate instead')
  static const STSF_FlagCreate = 32768;
}

/// Contains values that specify the supported text selection attribute.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-supportedtextselection>.
///
/// {@category enum}
extension type const SupportedTextSelection(int _) implements int {
  /// Does not support text selections.
  @Deprecated('Use SupportedTextSelection_None instead')
  static const SupportedTextSelection_None = 0;

  /// Supports a single, continuous text selection.
  @Deprecated('Use SupportedTextSelection_Single instead')
  static const SupportedTextSelection_Single = 1;

  /// Supports multiple, disjoint text selections.
  @Deprecated('Use SupportedTextSelection_Multiple instead')
  static const SupportedTextSelection_Multiple = 2;
}

/// Contains values that specify the type of synchronized input.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-synchronizedinputtype>.
///
/// {@category enum}
extension type const SynchronizedInputType(int _) implements int {
  /// A key has been released.
  @Deprecated('Use SynchronizedInputType_KeyUp instead')
  static const SynchronizedInputType_KeyUp = 1;

  /// A key has been pressed.
  @Deprecated('Use SynchronizedInputType_KeyDown instead')
  static const SynchronizedInputType_KeyDown = 2;

  /// The left mouse button has been released.
  @Deprecated('Use SynchronizedInputType_LeftMouseUp instead')
  static const SynchronizedInputType_LeftMouseUp = 4;

  /// The left mouse button has been pressed.
  @Deprecated('Use SynchronizedInputType_LeftMouseDown instead')
  static const SynchronizedInputType_LeftMouseDown = 8;

  /// The right mouse button has been released.
  @Deprecated('Use SynchronizedInputType_RightMouseUp instead')
  static const SynchronizedInputType_RightMouseUp = 16;

  /// The right mouse button has been pressed.
  @Deprecated('Use SynchronizedInputType_RightMouseDown instead')
  static const SynchronizedInputType_RightMouseDown = 32;
}

/// {@category enum}
extension type const THREAD_CREATION_FLAGS(int _) implements int {
  @Deprecated('Use THREAD_CREATE_RUN_IMMEDIATELY instead')
  static const THREAD_CREATE_RUN_IMMEDIATELY = 0;
  @Deprecated('Use THREAD_CREATE_SUSPENDED instead')
  static const THREAD_CREATE_SUSPENDED = 4;
  @Deprecated('Use STACK_SIZE_PARAM_IS_A_RESERVATION instead')
  static const STACK_SIZE_PARAM_IS_A_RESERVATION = 65536;
}

/// {@category enum}
extension type const THREAD_ERROR_MODE(int _) implements int {
  @Deprecated('Use SEM_ALL_ERRORS instead')
  static const SEM_ALL_ERRORS = 0;
  @Deprecated('Use SEM_FAILCRITICALERRORS instead')
  static const SEM_FAILCRITICALERRORS = 1;
  @Deprecated('Use SEM_NOGPFAULTERRORBOX instead')
  static const SEM_NOGPFAULTERRORBOX = 2;
  @Deprecated('Use SEM_NOOPENFILEERRORBOX instead')
  static const SEM_NOOPENFILEERRORBOX = 32768;
  @Deprecated('Use SEM_NOALIGNMENTFAULTEXCEPT instead')
  static const SEM_NOALIGNMENTFAULTEXCEPT = 4;
}

/// {@category enum}
extension type const TILE_WINDOWS_HOW(int _) implements int {
  @Deprecated('Use MDITILE_HORIZONTAL instead')
  static const MDITILE_HORIZONTAL = 1;
  @Deprecated('Use MDITILE_VERTICAL instead')
  static const MDITILE_VERTICAL = 0;
}

/// {@category enum}
extension type const TMPF_FLAGS(int _) implements int {
  @Deprecated('Use TMPF_FIXED_PITCH instead')
  static const TMPF_FIXED_PITCH = 1;
  @Deprecated('Use TMPF_VECTOR instead')
  static const TMPF_VECTOR = 2;
  @Deprecated('Use TMPF_DEVICE instead')
  static const TMPF_DEVICE = 8;
  @Deprecated('Use TMPF_TRUETYPE instead')
  static const TMPF_TRUETYPE = 4;
}

/// {@category enum}
extension type const TOKEN_ACCESS_MASK(int _) implements int {
  @Deprecated('Use TOKEN_DELETE instead')
  static const TOKEN_DELETE = 65536;
  @Deprecated('Use TOKEN_READ_CONTROL instead')
  static const TOKEN_READ_CONTROL = 131072;
  @Deprecated('Use TOKEN_WRITE_DAC instead')
  static const TOKEN_WRITE_DAC = 262144;
  @Deprecated('Use TOKEN_WRITE_OWNER instead')
  static const TOKEN_WRITE_OWNER = 524288;
  @Deprecated('Use TOKEN_ACCESS_SYSTEM_SECURITY instead')
  static const TOKEN_ACCESS_SYSTEM_SECURITY = 16777216;
  @Deprecated('Use TOKEN_ASSIGN_PRIMARY instead')
  static const TOKEN_ASSIGN_PRIMARY = 1;
  @Deprecated('Use TOKEN_DUPLICATE instead')
  static const TOKEN_DUPLICATE = 2;
  @Deprecated('Use TOKEN_IMPERSONATE instead')
  static const TOKEN_IMPERSONATE = 4;
  @Deprecated('Use TOKEN_QUERY instead')
  static const TOKEN_QUERY = 8;
  @Deprecated('Use TOKEN_QUERY_SOURCE instead')
  static const TOKEN_QUERY_SOURCE = 16;
  @Deprecated('Use TOKEN_ADJUST_PRIVILEGES instead')
  static const TOKEN_ADJUST_PRIVILEGES = 32;
  @Deprecated('Use TOKEN_ADJUST_GROUPS instead')
  static const TOKEN_ADJUST_GROUPS = 64;
  @Deprecated('Use TOKEN_ADJUST_DEFAULT instead')
  static const TOKEN_ADJUST_DEFAULT = 128;
  @Deprecated('Use TOKEN_ADJUST_SESSIONID instead')
  static const TOKEN_ADJUST_SESSIONID = 256;
  @Deprecated('Use TOKEN_READ instead')
  static const TOKEN_READ = 131080;
  @Deprecated('Use TOKEN_WRITE instead')
  static const TOKEN_WRITE = 131296;
  @Deprecated('Use TOKEN_EXECUTE instead')
  static const TOKEN_EXECUTE = 131072;
  @Deprecated('Use TOKEN_TRUST_CONSTRAINT_MASK instead')
  static const TOKEN_TRUST_CONSTRAINT_MASK = 131096;
  @Deprecated('Use TOKEN_ACCESS_PSEUDO_HANDLE_WIN8 instead')
  static const TOKEN_ACCESS_PSEUDO_HANDLE_WIN8 = 24;
  @Deprecated('Use TOKEN_ACCESS_PSEUDO_HANDLE instead')
  static const TOKEN_ACCESS_PSEUDO_HANDLE = 24;
  @Deprecated('Use TOKEN_ALL_ACCESS instead')
  static const TOKEN_ALL_ACCESS = 983551;
}

/// {@category enum}
extension type const TOUCHEVENTF_FLAGS(int _) implements int {
  @Deprecated('Use TOUCHEVENTF_MOVE instead')
  static const TOUCHEVENTF_MOVE = 1;
  @Deprecated('Use TOUCHEVENTF_DOWN instead')
  static const TOUCHEVENTF_DOWN = 2;
  @Deprecated('Use TOUCHEVENTF_UP instead')
  static const TOUCHEVENTF_UP = 4;
  @Deprecated('Use TOUCHEVENTF_INRANGE instead')
  static const TOUCHEVENTF_INRANGE = 8;
  @Deprecated('Use TOUCHEVENTF_PRIMARY instead')
  static const TOUCHEVENTF_PRIMARY = 16;
  @Deprecated('Use TOUCHEVENTF_NOCOALESCE instead')
  static const TOUCHEVENTF_NOCOALESCE = 32;
  @Deprecated('Use TOUCHEVENTF_PEN instead')
  static const TOUCHEVENTF_PEN = 64;
  @Deprecated('Use TOUCHEVENTF_PALM instead')
  static const TOUCHEVENTF_PALM = 128;
}

/// {@category enum}
extension type const TOUCHINPUTMASKF_MASK(int _) implements int {
  @Deprecated('Use TOUCHINPUTMASKF_TIMEFROMSYSTEM instead')
  static const TOUCHINPUTMASKF_TIMEFROMSYSTEM = 1;
  @Deprecated('Use TOUCHINPUTMASKF_EXTRAINFO instead')
  static const TOUCHINPUTMASKF_EXTRAINFO = 2;
  @Deprecated('Use TOUCHINPUTMASKF_CONTACTAREA instead')
  static const TOUCHINPUTMASKF_CONTACTAREA = 4;
}

/// {@category enum}
extension type const TRACK_POPUP_MENU_FLAGS(int _) implements int {
  @Deprecated('Use TPM_LEFTBUTTON instead')
  static const TPM_LEFTBUTTON = 0;
  @Deprecated('Use TPM_RIGHTBUTTON instead')
  static const TPM_RIGHTBUTTON = 2;
  @Deprecated('Use TPM_LEFTALIGN instead')
  static const TPM_LEFTALIGN = 0;
  @Deprecated('Use TPM_CENTERALIGN instead')
  static const TPM_CENTERALIGN = 4;
  @Deprecated('Use TPM_RIGHTALIGN instead')
  static const TPM_RIGHTALIGN = 8;
  @Deprecated('Use TPM_TOPALIGN instead')
  static const TPM_TOPALIGN = 0;
  @Deprecated('Use TPM_VCENTERALIGN instead')
  static const TPM_VCENTERALIGN = 16;
  @Deprecated('Use TPM_BOTTOMALIGN instead')
  static const TPM_BOTTOMALIGN = 32;
  @Deprecated('Use TPM_HORIZONTAL instead')
  static const TPM_HORIZONTAL = 0;
  @Deprecated('Use TPM_VERTICAL instead')
  static const TPM_VERTICAL = 64;
  @Deprecated('Use TPM_NONOTIFY instead')
  static const TPM_NONOTIFY = 128;
  @Deprecated('Use TPM_RETURNCMD instead')
  static const TPM_RETURNCMD = 256;
  @Deprecated('Use TPM_RECURSE instead')
  static const TPM_RECURSE = 1;
  @Deprecated('Use TPM_HORPOSANIMATION instead')
  static const TPM_HORPOSANIMATION = 1024;
  @Deprecated('Use TPM_HORNEGANIMATION instead')
  static const TPM_HORNEGANIMATION = 2048;
  @Deprecated('Use TPM_VERPOSANIMATION instead')
  static const TPM_VERPOSANIMATION = 4096;
  @Deprecated('Use TPM_VERNEGANIMATION instead')
  static const TPM_VERNEGANIMATION = 8192;
  @Deprecated('Use TPM_NOANIMATION instead')
  static const TPM_NOANIMATION = 16384;
  @Deprecated('Use TPM_LAYOUTRTL instead')
  static const TPM_LAYOUTRTL = 32768;
  @Deprecated('Use TPM_WORKAREA instead')
  static const TPM_WORKAREA = 65536;
}

/// Defines the encapsulation method used by a tunnel, as described by the
/// Internet Assigned Names Authority (IANA).
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ne-ifdef-tunnel_type>.
///
/// {@category enum}
extension type const TUNNEL_TYPE(int _) implements int {
  /// Indicates that a tunnel is not specified.
  @Deprecated('Use TUNNEL_TYPE_NONE instead')
  static const TUNNEL_TYPE_NONE = 0;

  /// Indicates that none of the following tunnel types is specified.
  @Deprecated('Use TUNNEL_TYPE_OTHER instead')
  static const TUNNEL_TYPE_OTHER = 1;

  /// Specifies that a packet is encapsulated directly within a normal IP
  /// header, with no intermediate header, and the packet is sent unicast to the
  /// remote tunnel endpoint.
  @Deprecated('Use TUNNEL_TYPE_DIRECT instead')
  static const TUNNEL_TYPE_DIRECT = 2;

  /// Specifies that an IPv6 packet is encapsulated directly within an IPv4
  /// header, with no intermediate header, and the packet is sent unicast to the
  /// destination determined by the 6to4 protocol.
  @Deprecated('Use TUNNEL_TYPE_6TO4 instead')
  static const TUNNEL_TYPE_6TO4 = 11;

  /// Specifies that an IPv6 packet is encapsulated directly within an IPv4
  /// header, with no intermediate header, and the packet is sent unicast to the
  /// destination determined by the ISATAP protocol.
  @Deprecated('Use TUNNEL_TYPE_ISATAP instead')
  static const TUNNEL_TYPE_ISATAP = 13;

  /// Specifies that the tunnel uses Teredo encapsulation.
  @Deprecated('Use TUNNEL_TYPE_TEREDO instead')
  static const TUNNEL_TYPE_TEREDO = 14;

  /// Specifies that the tunnel uses IP over Hypertext Transfer Protocol Secure
  /// (HTTPS).
  @Deprecated('Use TUNNEL_TYPE_IPHTTPS instead')
  static const TUNNEL_TYPE_IPHTTPS = 15;
}

/// Specifies a type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-typekind>.
///
/// {@category enum}
extension type const TYPEKIND(int _) implements int {
  /// A set of enumerators.
  @Deprecated('Use TKIND_ENUM instead')
  static const TKIND_ENUM = 0;

  /// A structure with no methods.
  @Deprecated('Use TKIND_RECORD instead')
  static const TKIND_RECORD = 1;

  /// A module that can only have static functions and data (for example, a
  /// DLL).
  @Deprecated('Use TKIND_MODULE instead')
  static const TKIND_MODULE = 2;

  /// A type that has virtual and pure functions.
  @Deprecated('Use TKIND_INTERFACE instead')
  static const TKIND_INTERFACE = 3;

  /// A set of methods and properties that are accessible through <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nf-oaidl-idispatch-invoke">IDispatch::Invoke</a>.
  @Deprecated('Use TKIND_DISPATCH instead')
  static const TKIND_DISPATCH = 4;

  /// A set of implemented component object interfaces.
  @Deprecated('Use TKIND_COCLASS instead')
  static const TKIND_COCLASS = 5;

  /// A type that is an alias for another type.
  @Deprecated('Use TKIND_ALIAS instead')
  static const TKIND_ALIAS = 6;

  /// A union, all of whose members have an offset of zero.
  @Deprecated('Use TKIND_UNION instead')
  static const TKIND_UNION = 7;

  /// End of enum marker.
  @Deprecated('Use TKIND_MAX instead')
  static const TKIND_MAX = 8;
}

/// Describes the text editing change being performed by controls when text-edit
/// events are raised or handled.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-texteditchangetype>.
///
/// {@category enum}
extension type const TextEditChangeType(int _) implements int {
  /// Not related to a specific change type.
  @Deprecated('Use TextEditChangeType_None instead')
  static const TextEditChangeType_None = 0;

  /// Change is from an auto-correct action performed by a control.
  @Deprecated('Use TextEditChangeType_AutoCorrect instead')
  static const TextEditChangeType_AutoCorrect = 1;

  /// Change is from an IME active composition within a control.
  @Deprecated('Use TextEditChangeType_Composition instead')
  static const TextEditChangeType_Composition = 2;

  /// Change is from an IME composition going from active to finalized state
  /// within a control.
  @Deprecated('Use TextEditChangeType_CompositionFinalized instead')
  static const TextEditChangeType_CompositionFinalized = 3;
  @Deprecated('Use TextEditChangeType_AutoComplete instead')
  static const TextEditChangeType_AutoComplete = 4;
}

/// Contains values that specify the endpoints of a text range.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-textpatternrangeendpoint>.
///
/// {@category enum}
extension type const TextPatternRangeEndpoint(int _) implements int {
  /// The starting endpoint of the range.
  @Deprecated('Use TextPatternRangeEndpoint_Start instead')
  static const TextPatternRangeEndpoint_Start = 0;

  /// The ending endpoint of the range.
  @Deprecated('Use TextPatternRangeEndpoint_End instead')
  static const TextPatternRangeEndpoint_End = 1;
}

/// Contains values that specify units of text for the purposes of navigation.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-textunit>.
///
/// {@category enum}
extension type const TextUnit(int _) implements int {
  /// Character.
  @Deprecated('Use TextUnit_Character instead')
  static const TextUnit_Character = 0;

  /// Format.
  @Deprecated('Use TextUnit_Format instead')
  static const TextUnit_Format = 1;

  /// Word.
  @Deprecated('Use TextUnit_Word instead')
  static const TextUnit_Word = 2;

  /// Line.
  @Deprecated('Use TextUnit_Line instead')
  static const TextUnit_Line = 3;

  /// Paragraph.
  @Deprecated('Use TextUnit_Paragraph instead')
  static const TextUnit_Paragraph = 4;

  /// Page.
  @Deprecated('Use TextUnit_Page instead')
  static const TextUnit_Page = 5;

  /// Document.
  @Deprecated('Use TextUnit_Document instead')
  static const TextUnit_Document = 6;
}

/// {@category enum}
extension type const THEME_PROPERTY_SYMBOL_ID(int _) implements int {
  @Deprecated('Use TMT_RESERVEDLOW instead')
  static const TMT_RESERVEDLOW = 0;
  @Deprecated('Use TMT_RESERVEDHIGH instead')
  static const TMT_RESERVEDHIGH = 7999;
  @Deprecated('Use TMT_DIBDATA instead')
  static const TMT_DIBDATA = 2;
  @Deprecated('Use TMT_GLYPHDIBDATA instead')
  static const TMT_GLYPHDIBDATA = 8;
  @Deprecated('Use TMT_ENUM instead')
  static const TMT_ENUM = 200;
  @Deprecated('Use TMT_STRING instead')
  static const TMT_STRING = 201;
  @Deprecated('Use TMT_INT instead')
  static const TMT_INT = 202;
  @Deprecated('Use TMT_BOOL instead')
  static const TMT_BOOL = 203;
  @Deprecated('Use TMT_COLOR instead')
  static const TMT_COLOR = 204;
  @Deprecated('Use TMT_MARGINS instead')
  static const TMT_MARGINS = 205;
  @Deprecated('Use TMT_FILENAME instead')
  static const TMT_FILENAME = 206;
  @Deprecated('Use TMT_SIZE instead')
  static const TMT_SIZE = 207;
  @Deprecated('Use TMT_POSITION instead')
  static const TMT_POSITION = 208;
  @Deprecated('Use TMT_RECT instead')
  static const TMT_RECT = 209;
  @Deprecated('Use TMT_FONT instead')
  static const TMT_FONT = 210;
  @Deprecated('Use TMT_INTLIST instead')
  static const TMT_INTLIST = 211;
  @Deprecated('Use TMT_HBITMAP instead')
  static const TMT_HBITMAP = 212;
  @Deprecated('Use TMT_DISKSTREAM instead')
  static const TMT_DISKSTREAM = 213;
  @Deprecated('Use TMT_STREAM instead')
  static const TMT_STREAM = 214;
  @Deprecated('Use TMT_BITMAPREF instead')
  static const TMT_BITMAPREF = 215;
  @Deprecated('Use TMT_FLOAT instead')
  static const TMT_FLOAT = 216;
  @Deprecated('Use TMT_FLOATLIST instead')
  static const TMT_FLOATLIST = 217;
  @Deprecated('Use TMT_COLORSCHEMES instead')
  static const TMT_COLORSCHEMES = 401;
  @Deprecated('Use TMT_SIZES instead')
  static const TMT_SIZES = 402;
  @Deprecated('Use TMT_CHARSET instead')
  static const TMT_CHARSET = 403;
  @Deprecated('Use TMT_NAME instead')
  static const TMT_NAME = 600;
  @Deprecated('Use TMT_DISPLAYNAME instead')
  static const TMT_DISPLAYNAME = 601;
  @Deprecated('Use TMT_TOOLTIP instead')
  static const TMT_TOOLTIP = 602;
  @Deprecated('Use TMT_COMPANY instead')
  static const TMT_COMPANY = 603;
  @Deprecated('Use TMT_AUTHOR instead')
  static const TMT_AUTHOR = 604;
  @Deprecated('Use TMT_COPYRIGHT instead')
  static const TMT_COPYRIGHT = 605;
  @Deprecated('Use TMT_URL instead')
  static const TMT_URL = 606;
  @Deprecated('Use TMT_VERSION instead')
  static const TMT_VERSION = 607;
  @Deprecated('Use TMT_DESCRIPTION instead')
  static const TMT_DESCRIPTION = 608;
  @Deprecated('Use TMT_FIRST_RCSTRING_NAME instead')
  static const TMT_FIRST_RCSTRING_NAME = 601;
  @Deprecated('Use TMT_LAST_RCSTRING_NAME instead')
  static const TMT_LAST_RCSTRING_NAME = 608;
  @Deprecated('Use TMT_CAPTIONFONT instead')
  static const TMT_CAPTIONFONT = 801;
  @Deprecated('Use TMT_SMALLCAPTIONFONT instead')
  static const TMT_SMALLCAPTIONFONT = 802;
  @Deprecated('Use TMT_MENUFONT instead')
  static const TMT_MENUFONT = 803;
  @Deprecated('Use TMT_STATUSFONT instead')
  static const TMT_STATUSFONT = 804;
  @Deprecated('Use TMT_MSGBOXFONT instead')
  static const TMT_MSGBOXFONT = 805;
  @Deprecated('Use TMT_ICONTITLEFONT instead')
  static const TMT_ICONTITLEFONT = 806;
  @Deprecated('Use TMT_HEADING1FONT instead')
  static const TMT_HEADING1FONT = 807;
  @Deprecated('Use TMT_HEADING2FONT instead')
  static const TMT_HEADING2FONT = 808;
  @Deprecated('Use TMT_BODYFONT instead')
  static const TMT_BODYFONT = 809;
  @Deprecated('Use TMT_FIRSTFONT instead')
  static const TMT_FIRSTFONT = 801;
  @Deprecated('Use TMT_LASTFONT instead')
  static const TMT_LASTFONT = 809;
  @Deprecated('Use TMT_FLATMENUS instead')
  static const TMT_FLATMENUS = 1001;
  @Deprecated('Use TMT_FIRSTBOOL instead')
  static const TMT_FIRSTBOOL = 1001;
  @Deprecated('Use TMT_LASTBOOL instead')
  static const TMT_LASTBOOL = 1001;
  @Deprecated('Use TMT_SIZINGBORDERWIDTH instead')
  static const TMT_SIZINGBORDERWIDTH = 1201;
  @Deprecated('Use TMT_SCROLLBARWIDTH instead')
  static const TMT_SCROLLBARWIDTH = 1202;
  @Deprecated('Use TMT_SCROLLBARHEIGHT instead')
  static const TMT_SCROLLBARHEIGHT = 1203;
  @Deprecated('Use TMT_CAPTIONBARWIDTH instead')
  static const TMT_CAPTIONBARWIDTH = 1204;
  @Deprecated('Use TMT_CAPTIONBARHEIGHT instead')
  static const TMT_CAPTIONBARHEIGHT = 1205;
  @Deprecated('Use TMT_SMCAPTIONBARWIDTH instead')
  static const TMT_SMCAPTIONBARWIDTH = 1206;
  @Deprecated('Use TMT_SMCAPTIONBARHEIGHT instead')
  static const TMT_SMCAPTIONBARHEIGHT = 1207;
  @Deprecated('Use TMT_MENUBARWIDTH instead')
  static const TMT_MENUBARWIDTH = 1208;
  @Deprecated('Use TMT_MENUBARHEIGHT instead')
  static const TMT_MENUBARHEIGHT = 1209;
  @Deprecated('Use TMT_PADDEDBORDERWIDTH instead')
  static const TMT_PADDEDBORDERWIDTH = 1210;
  @Deprecated('Use TMT_FIRSTSIZE instead')
  static const TMT_FIRSTSIZE = 1201;
  @Deprecated('Use TMT_LASTSIZE instead')
  static const TMT_LASTSIZE = 1210;
  @Deprecated('Use TMT_MINCOLORDEPTH instead')
  static const TMT_MINCOLORDEPTH = 1301;
  @Deprecated('Use TMT_FIRSTINT instead')
  static const TMT_FIRSTINT = 1301;
  @Deprecated('Use TMT_LASTINT instead')
  static const TMT_LASTINT = 1301;
  @Deprecated('Use TMT_CSSNAME instead')
  static const TMT_CSSNAME = 1401;
  @Deprecated('Use TMT_XMLNAME instead')
  static const TMT_XMLNAME = 1402;
  @Deprecated('Use TMT_LASTUPDATED instead')
  static const TMT_LASTUPDATED = 1403;
  @Deprecated('Use TMT_ALIAS instead')
  static const TMT_ALIAS = 1404;
  @Deprecated('Use TMT_FIRSTSTRING instead')
  static const TMT_FIRSTSTRING = 1401;
  @Deprecated('Use TMT_LASTSTRING instead')
  static const TMT_LASTSTRING = 1404;
  @Deprecated('Use TMT_SCROLLBAR instead')
  static const TMT_SCROLLBAR = 1601;
  @Deprecated('Use TMT_BACKGROUND instead')
  static const TMT_BACKGROUND = 1602;
  @Deprecated('Use TMT_ACTIVECAPTION instead')
  static const TMT_ACTIVECAPTION = 1603;
  @Deprecated('Use TMT_INACTIVECAPTION instead')
  static const TMT_INACTIVECAPTION = 1604;
  @Deprecated('Use TMT_MENU instead')
  static const TMT_MENU = 1605;
  @Deprecated('Use TMT_WINDOW instead')
  static const TMT_WINDOW = 1606;
  @Deprecated('Use TMT_WINDOWFRAME instead')
  static const TMT_WINDOWFRAME = 1607;
  @Deprecated('Use TMT_MENUTEXT instead')
  static const TMT_MENUTEXT = 1608;
  @Deprecated('Use TMT_WINDOWTEXT instead')
  static const TMT_WINDOWTEXT = 1609;
  @Deprecated('Use TMT_CAPTIONTEXT instead')
  static const TMT_CAPTIONTEXT = 1610;
  @Deprecated('Use TMT_ACTIVEBORDER instead')
  static const TMT_ACTIVEBORDER = 1611;
  @Deprecated('Use TMT_INACTIVEBORDER instead')
  static const TMT_INACTIVEBORDER = 1612;
  @Deprecated('Use TMT_APPWORKSPACE instead')
  static const TMT_APPWORKSPACE = 1613;
  @Deprecated('Use TMT_HIGHLIGHT instead')
  static const TMT_HIGHLIGHT = 1614;
  @Deprecated('Use TMT_HIGHLIGHTTEXT instead')
  static const TMT_HIGHLIGHTTEXT = 1615;
  @Deprecated('Use TMT_BTNFACE instead')
  static const TMT_BTNFACE = 1616;
  @Deprecated('Use TMT_BTNSHADOW instead')
  static const TMT_BTNSHADOW = 1617;
  @Deprecated('Use TMT_GRAYTEXT instead')
  static const TMT_GRAYTEXT = 1618;
  @Deprecated('Use TMT_BTNTEXT instead')
  static const TMT_BTNTEXT = 1619;
  @Deprecated('Use TMT_INACTIVECAPTIONTEXT instead')
  static const TMT_INACTIVECAPTIONTEXT = 1620;
  @Deprecated('Use TMT_BTNHIGHLIGHT instead')
  static const TMT_BTNHIGHLIGHT = 1621;
  @Deprecated('Use TMT_DKSHADOW3D instead')
  static const TMT_DKSHADOW3D = 1622;
  @Deprecated('Use TMT_LIGHT3D instead')
  static const TMT_LIGHT3D = 1623;
  @Deprecated('Use TMT_INFOTEXT instead')
  static const TMT_INFOTEXT = 1624;
  @Deprecated('Use TMT_INFOBK instead')
  static const TMT_INFOBK = 1625;
  @Deprecated('Use TMT_BUTTONALTERNATEFACE instead')
  static const TMT_BUTTONALTERNATEFACE = 1626;
  @Deprecated('Use TMT_HOTTRACKING instead')
  static const TMT_HOTTRACKING = 1627;
  @Deprecated('Use TMT_GRADIENTACTIVECAPTION instead')
  static const TMT_GRADIENTACTIVECAPTION = 1628;
  @Deprecated('Use TMT_GRADIENTINACTIVECAPTION instead')
  static const TMT_GRADIENTINACTIVECAPTION = 1629;
  @Deprecated('Use TMT_MENUHILIGHT instead')
  static const TMT_MENUHILIGHT = 1630;
  @Deprecated('Use TMT_MENUBAR instead')
  static const TMT_MENUBAR = 1631;
  @Deprecated('Use TMT_FIRSTCOLOR instead')
  static const TMT_FIRSTCOLOR = 1601;
  @Deprecated('Use TMT_LASTCOLOR instead')
  static const TMT_LASTCOLOR = 1631;
  @Deprecated('Use TMT_FROMHUE1 instead')
  static const TMT_FROMHUE1 = 1801;
  @Deprecated('Use TMT_FROMHUE2 instead')
  static const TMT_FROMHUE2 = 1802;
  @Deprecated('Use TMT_FROMHUE3 instead')
  static const TMT_FROMHUE3 = 1803;
  @Deprecated('Use TMT_FROMHUE4 instead')
  static const TMT_FROMHUE4 = 1804;
  @Deprecated('Use TMT_FROMHUE5 instead')
  static const TMT_FROMHUE5 = 1805;
  @Deprecated('Use TMT_TOHUE1 instead')
  static const TMT_TOHUE1 = 1806;
  @Deprecated('Use TMT_TOHUE2 instead')
  static const TMT_TOHUE2 = 1807;
  @Deprecated('Use TMT_TOHUE3 instead')
  static const TMT_TOHUE3 = 1808;
  @Deprecated('Use TMT_TOHUE4 instead')
  static const TMT_TOHUE4 = 1809;
  @Deprecated('Use TMT_TOHUE5 instead')
  static const TMT_TOHUE5 = 1810;
  @Deprecated('Use TMT_FROMCOLOR1 instead')
  static const TMT_FROMCOLOR1 = 2001;
  @Deprecated('Use TMT_FROMCOLOR2 instead')
  static const TMT_FROMCOLOR2 = 2002;
  @Deprecated('Use TMT_FROMCOLOR3 instead')
  static const TMT_FROMCOLOR3 = 2003;
  @Deprecated('Use TMT_FROMCOLOR4 instead')
  static const TMT_FROMCOLOR4 = 2004;
  @Deprecated('Use TMT_FROMCOLOR5 instead')
  static const TMT_FROMCOLOR5 = 2005;
  @Deprecated('Use TMT_TOCOLOR1 instead')
  static const TMT_TOCOLOR1 = 2006;
  @Deprecated('Use TMT_TOCOLOR2 instead')
  static const TMT_TOCOLOR2 = 2007;
  @Deprecated('Use TMT_TOCOLOR3 instead')
  static const TMT_TOCOLOR3 = 2008;
  @Deprecated('Use TMT_TOCOLOR4 instead')
  static const TMT_TOCOLOR4 = 2009;
  @Deprecated('Use TMT_TOCOLOR5 instead')
  static const TMT_TOCOLOR5 = 2010;
  @Deprecated('Use TMT_TRANSPARENT instead')
  static const TMT_TRANSPARENT = 2201;
  @Deprecated('Use TMT_AUTOSIZE instead')
  static const TMT_AUTOSIZE = 2202;
  @Deprecated('Use TMT_BORDERONLY instead')
  static const TMT_BORDERONLY = 2203;
  @Deprecated('Use TMT_COMPOSITED instead')
  static const TMT_COMPOSITED = 2204;
  @Deprecated('Use TMT_BGFILL instead')
  static const TMT_BGFILL = 2205;
  @Deprecated('Use TMT_GLYPHTRANSPARENT instead')
  static const TMT_GLYPHTRANSPARENT = 2206;
  @Deprecated('Use TMT_GLYPHONLY instead')
  static const TMT_GLYPHONLY = 2207;
  @Deprecated('Use TMT_ALWAYSSHOWSIZINGBAR instead')
  static const TMT_ALWAYSSHOWSIZINGBAR = 2208;
  @Deprecated('Use TMT_MIRRORIMAGE instead')
  static const TMT_MIRRORIMAGE = 2209;
  @Deprecated('Use TMT_UNIFORMSIZING instead')
  static const TMT_UNIFORMSIZING = 2210;
  @Deprecated('Use TMT_INTEGRALSIZING instead')
  static const TMT_INTEGRALSIZING = 2211;
  @Deprecated('Use TMT_SOURCEGROW instead')
  static const TMT_SOURCEGROW = 2212;
  @Deprecated('Use TMT_SOURCESHRINK instead')
  static const TMT_SOURCESHRINK = 2213;
  @Deprecated('Use TMT_DRAWBORDERS instead')
  static const TMT_DRAWBORDERS = 2214;
  @Deprecated('Use TMT_NOETCHEDEFFECT instead')
  static const TMT_NOETCHEDEFFECT = 2215;
  @Deprecated('Use TMT_TEXTAPPLYOVERLAY instead')
  static const TMT_TEXTAPPLYOVERLAY = 2216;
  @Deprecated('Use TMT_TEXTGLOW instead')
  static const TMT_TEXTGLOW = 2217;
  @Deprecated('Use TMT_TEXTITALIC instead')
  static const TMT_TEXTITALIC = 2218;
  @Deprecated('Use TMT_COMPOSITEDOPAQUE instead')
  static const TMT_COMPOSITEDOPAQUE = 2219;
  @Deprecated('Use TMT_LOCALIZEDMIRRORIMAGE instead')
  static const TMT_LOCALIZEDMIRRORIMAGE = 2220;
  @Deprecated('Use TMT_IMAGECOUNT instead')
  static const TMT_IMAGECOUNT = 2401;
  @Deprecated('Use TMT_ALPHALEVEL instead')
  static const TMT_ALPHALEVEL = 2402;
  @Deprecated('Use TMT_BORDERSIZE instead')
  static const TMT_BORDERSIZE = 2403;
  @Deprecated('Use TMT_ROUNDCORNERWIDTH instead')
  static const TMT_ROUNDCORNERWIDTH = 2404;
  @Deprecated('Use TMT_ROUNDCORNERHEIGHT instead')
  static const TMT_ROUNDCORNERHEIGHT = 2405;
  @Deprecated('Use TMT_GRADIENTRATIO1 instead')
  static const TMT_GRADIENTRATIO1 = 2406;
  @Deprecated('Use TMT_GRADIENTRATIO2 instead')
  static const TMT_GRADIENTRATIO2 = 2407;
  @Deprecated('Use TMT_GRADIENTRATIO3 instead')
  static const TMT_GRADIENTRATIO3 = 2408;
  @Deprecated('Use TMT_GRADIENTRATIO4 instead')
  static const TMT_GRADIENTRATIO4 = 2409;
  @Deprecated('Use TMT_GRADIENTRATIO5 instead')
  static const TMT_GRADIENTRATIO5 = 2410;
  @Deprecated('Use TMT_PROGRESSCHUNKSIZE instead')
  static const TMT_PROGRESSCHUNKSIZE = 2411;
  @Deprecated('Use TMT_PROGRESSSPACESIZE instead')
  static const TMT_PROGRESSSPACESIZE = 2412;
  @Deprecated('Use TMT_SATURATION instead')
  static const TMT_SATURATION = 2413;
  @Deprecated('Use TMT_TEXTBORDERSIZE instead')
  static const TMT_TEXTBORDERSIZE = 2414;
  @Deprecated('Use TMT_ALPHATHRESHOLD instead')
  static const TMT_ALPHATHRESHOLD = 2415;
  @Deprecated('Use TMT_WIDTH instead')
  static const TMT_WIDTH = 2416;
  @Deprecated('Use TMT_HEIGHT instead')
  static const TMT_HEIGHT = 2417;
  @Deprecated('Use TMT_GLYPHINDEX instead')
  static const TMT_GLYPHINDEX = 2418;
  @Deprecated('Use TMT_TRUESIZESTRETCHMARK instead')
  static const TMT_TRUESIZESTRETCHMARK = 2419;
  @Deprecated('Use TMT_MINDPI1 instead')
  static const TMT_MINDPI1 = 2420;
  @Deprecated('Use TMT_MINDPI2 instead')
  static const TMT_MINDPI2 = 2421;
  @Deprecated('Use TMT_MINDPI3 instead')
  static const TMT_MINDPI3 = 2422;
  @Deprecated('Use TMT_MINDPI4 instead')
  static const TMT_MINDPI4 = 2423;
  @Deprecated('Use TMT_MINDPI5 instead')
  static const TMT_MINDPI5 = 2424;
  @Deprecated('Use TMT_TEXTGLOWSIZE instead')
  static const TMT_TEXTGLOWSIZE = 2425;
  @Deprecated('Use TMT_FRAMESPERSECOND instead')
  static const TMT_FRAMESPERSECOND = 2426;
  @Deprecated('Use TMT_PIXELSPERFRAME instead')
  static const TMT_PIXELSPERFRAME = 2427;
  @Deprecated('Use TMT_ANIMATIONDELAY instead')
  static const TMT_ANIMATIONDELAY = 2428;
  @Deprecated('Use TMT_GLOWINTENSITY instead')
  static const TMT_GLOWINTENSITY = 2429;
  @Deprecated('Use TMT_OPACITY instead')
  static const TMT_OPACITY = 2430;
  @Deprecated('Use TMT_COLORIZATIONCOLOR instead')
  static const TMT_COLORIZATIONCOLOR = 2431;
  @Deprecated('Use TMT_COLORIZATIONOPACITY instead')
  static const TMT_COLORIZATIONOPACITY = 2432;
  @Deprecated('Use TMT_MINDPI6 instead')
  static const TMT_MINDPI6 = 2433;
  @Deprecated('Use TMT_MINDPI7 instead')
  static const TMT_MINDPI7 = 2434;
  @Deprecated('Use TMT_GLYPHFONT instead')
  static const TMT_GLYPHFONT = 2601;
  @Deprecated('Use TMT_IMAGEFILE instead')
  static const TMT_IMAGEFILE = 3001;
  @Deprecated('Use TMT_IMAGEFILE1 instead')
  static const TMT_IMAGEFILE1 = 3002;
  @Deprecated('Use TMT_IMAGEFILE2 instead')
  static const TMT_IMAGEFILE2 = 3003;
  @Deprecated('Use TMT_IMAGEFILE3 instead')
  static const TMT_IMAGEFILE3 = 3004;
  @Deprecated('Use TMT_IMAGEFILE4 instead')
  static const TMT_IMAGEFILE4 = 3005;
  @Deprecated('Use TMT_IMAGEFILE5 instead')
  static const TMT_IMAGEFILE5 = 3006;
  @Deprecated('Use TMT_GLYPHIMAGEFILE instead')
  static const TMT_GLYPHIMAGEFILE = 3008;
  @Deprecated('Use TMT_IMAGEFILE6 instead')
  static const TMT_IMAGEFILE6 = 3009;
  @Deprecated('Use TMT_IMAGEFILE7 instead')
  static const TMT_IMAGEFILE7 = 3010;
  @Deprecated('Use TMT_TEXT instead')
  static const TMT_TEXT = 3201;
  @Deprecated('Use TMT_CLASSICVALUE instead')
  static const TMT_CLASSICVALUE = 3202;
  @Deprecated('Use TMT_OFFSET instead')
  static const TMT_OFFSET = 3401;
  @Deprecated('Use TMT_TEXTSHADOWOFFSET instead')
  static const TMT_TEXTSHADOWOFFSET = 3402;
  @Deprecated('Use TMT_MINSIZE instead')
  static const TMT_MINSIZE = 3403;
  @Deprecated('Use TMT_MINSIZE1 instead')
  static const TMT_MINSIZE1 = 3404;
  @Deprecated('Use TMT_MINSIZE2 instead')
  static const TMT_MINSIZE2 = 3405;
  @Deprecated('Use TMT_MINSIZE3 instead')
  static const TMT_MINSIZE3 = 3406;
  @Deprecated('Use TMT_MINSIZE4 instead')
  static const TMT_MINSIZE4 = 3407;
  @Deprecated('Use TMT_MINSIZE5 instead')
  static const TMT_MINSIZE5 = 3408;
  @Deprecated('Use TMT_NORMALSIZE instead')
  static const TMT_NORMALSIZE = 3409;
  @Deprecated('Use TMT_MINSIZE6 instead')
  static const TMT_MINSIZE6 = 3410;
  @Deprecated('Use TMT_MINSIZE7 instead')
  static const TMT_MINSIZE7 = 3411;
  @Deprecated('Use TMT_SIZINGMARGINS instead')
  static const TMT_SIZINGMARGINS = 3601;
  @Deprecated('Use TMT_CONTENTMARGINS instead')
  static const TMT_CONTENTMARGINS = 3602;
  @Deprecated('Use TMT_CAPTIONMARGINS instead')
  static const TMT_CAPTIONMARGINS = 3603;
  @Deprecated('Use TMT_BORDERCOLOR instead')
  static const TMT_BORDERCOLOR = 3801;
  @Deprecated('Use TMT_FILLCOLOR instead')
  static const TMT_FILLCOLOR = 3802;
  @Deprecated('Use TMT_TEXTCOLOR instead')
  static const TMT_TEXTCOLOR = 3803;
  @Deprecated('Use TMT_EDGELIGHTCOLOR instead')
  static const TMT_EDGELIGHTCOLOR = 3804;
  @Deprecated('Use TMT_EDGEHIGHLIGHTCOLOR instead')
  static const TMT_EDGEHIGHLIGHTCOLOR = 3805;
  @Deprecated('Use TMT_EDGESHADOWCOLOR instead')
  static const TMT_EDGESHADOWCOLOR = 3806;
  @Deprecated('Use TMT_EDGEDKSHADOWCOLOR instead')
  static const TMT_EDGEDKSHADOWCOLOR = 3807;
  @Deprecated('Use TMT_EDGEFILLCOLOR instead')
  static const TMT_EDGEFILLCOLOR = 3808;
  @Deprecated('Use TMT_TRANSPARENTCOLOR instead')
  static const TMT_TRANSPARENTCOLOR = 3809;
  @Deprecated('Use TMT_GRADIENTCOLOR1 instead')
  static const TMT_GRADIENTCOLOR1 = 3810;
  @Deprecated('Use TMT_GRADIENTCOLOR2 instead')
  static const TMT_GRADIENTCOLOR2 = 3811;
  @Deprecated('Use TMT_GRADIENTCOLOR3 instead')
  static const TMT_GRADIENTCOLOR3 = 3812;
  @Deprecated('Use TMT_GRADIENTCOLOR4 instead')
  static const TMT_GRADIENTCOLOR4 = 3813;
  @Deprecated('Use TMT_GRADIENTCOLOR5 instead')
  static const TMT_GRADIENTCOLOR5 = 3814;
  @Deprecated('Use TMT_SHADOWCOLOR instead')
  static const TMT_SHADOWCOLOR = 3815;
  @Deprecated('Use TMT_GLOWCOLOR instead')
  static const TMT_GLOWCOLOR = 3816;
  @Deprecated('Use TMT_TEXTBORDERCOLOR instead')
  static const TMT_TEXTBORDERCOLOR = 3817;
  @Deprecated('Use TMT_TEXTSHADOWCOLOR instead')
  static const TMT_TEXTSHADOWCOLOR = 3818;
  @Deprecated('Use TMT_GLYPHTEXTCOLOR instead')
  static const TMT_GLYPHTEXTCOLOR = 3819;
  @Deprecated('Use TMT_GLYPHTRANSPARENTCOLOR instead')
  static const TMT_GLYPHTRANSPARENTCOLOR = 3820;
  @Deprecated('Use TMT_FILLCOLORHINT instead')
  static const TMT_FILLCOLORHINT = 3821;
  @Deprecated('Use TMT_BORDERCOLORHINT instead')
  static const TMT_BORDERCOLORHINT = 3822;
  @Deprecated('Use TMT_ACCENTCOLORHINT instead')
  static const TMT_ACCENTCOLORHINT = 3823;
  @Deprecated('Use TMT_TEXTCOLORHINT instead')
  static const TMT_TEXTCOLORHINT = 3824;
  @Deprecated('Use TMT_HEADING1TEXTCOLOR instead')
  static const TMT_HEADING1TEXTCOLOR = 3825;
  @Deprecated('Use TMT_HEADING2TEXTCOLOR instead')
  static const TMT_HEADING2TEXTCOLOR = 3826;
  @Deprecated('Use TMT_BODYTEXTCOLOR instead')
  static const TMT_BODYTEXTCOLOR = 3827;
  @Deprecated('Use TMT_BGTYPE instead')
  static const TMT_BGTYPE = 4001;
  @Deprecated('Use TMT_BORDERTYPE instead')
  static const TMT_BORDERTYPE = 4002;
  @Deprecated('Use TMT_FILLTYPE instead')
  static const TMT_FILLTYPE = 4003;
  @Deprecated('Use TMT_SIZINGTYPE instead')
  static const TMT_SIZINGTYPE = 4004;
  @Deprecated('Use TMT_HALIGN instead')
  static const TMT_HALIGN = 4005;
  @Deprecated('Use TMT_CONTENTALIGNMENT instead')
  static const TMT_CONTENTALIGNMENT = 4006;
  @Deprecated('Use TMT_VALIGN instead')
  static const TMT_VALIGN = 4007;
  @Deprecated('Use TMT_OFFSETTYPE instead')
  static const TMT_OFFSETTYPE = 4008;
  @Deprecated('Use TMT_ICONEFFECT instead')
  static const TMT_ICONEFFECT = 4009;
  @Deprecated('Use TMT_TEXTSHADOWTYPE instead')
  static const TMT_TEXTSHADOWTYPE = 4010;
  @Deprecated('Use TMT_IMAGELAYOUT instead')
  static const TMT_IMAGELAYOUT = 4011;
  @Deprecated('Use TMT_GLYPHTYPE instead')
  static const TMT_GLYPHTYPE = 4012;
  @Deprecated('Use TMT_IMAGESELECTTYPE instead')
  static const TMT_IMAGESELECTTYPE = 4013;
  @Deprecated('Use TMT_GLYPHFONTSIZINGTYPE instead')
  static const TMT_GLYPHFONTSIZINGTYPE = 4014;
  @Deprecated('Use TMT_TRUESIZESCALINGTYPE instead')
  static const TMT_TRUESIZESCALINGTYPE = 4015;
  @Deprecated('Use TMT_USERPICTURE instead')
  static const TMT_USERPICTURE = 5001;
  @Deprecated('Use TMT_DEFAULTPANESIZE instead')
  static const TMT_DEFAULTPANESIZE = 5002;
  @Deprecated('Use TMT_BLENDCOLOR instead')
  static const TMT_BLENDCOLOR = 5003;
  @Deprecated('Use TMT_CUSTOMSPLITRECT instead')
  static const TMT_CUSTOMSPLITRECT = 5004;
  @Deprecated('Use TMT_ANIMATIONBUTTONRECT instead')
  static const TMT_ANIMATIONBUTTONRECT = 5005;
  @Deprecated('Use TMT_ANIMATIONDURATION instead')
  static const TMT_ANIMATIONDURATION = 5006;
  @Deprecated('Use TMT_TRANSITIONDURATIONS instead')
  static const TMT_TRANSITIONDURATIONS = 6000;
  @Deprecated('Use TMT_SCALEDBACKGROUND instead')
  static const TMT_SCALEDBACKGROUND = 7001;
  @Deprecated('Use TMT_ATLASIMAGE instead')
  static const TMT_ATLASIMAGE = 8000;
  @Deprecated('Use TMT_ATLASINPUTIMAGE instead')
  static const TMT_ATLASINPUTIMAGE = 8001;
  @Deprecated('Use TMT_ATLASRECT instead')
  static const TMT_ATLASRECT = 8002;
}

/// {@category enum}
extension type const UIA_ANNOTATIONTYPE(int _) implements int {
  @Deprecated('Use AnnotationType_Unknown instead')
  static const AnnotationType_Unknown = 60000;
  @Deprecated('Use AnnotationType_SpellingError instead')
  static const AnnotationType_SpellingError = 60001;
  @Deprecated('Use AnnotationType_GrammarError instead')
  static const AnnotationType_GrammarError = 60002;
  @Deprecated('Use AnnotationType_Comment instead')
  static const AnnotationType_Comment = 60003;
  @Deprecated('Use AnnotationType_FormulaError instead')
  static const AnnotationType_FormulaError = 60004;
  @Deprecated('Use AnnotationType_TrackChanges instead')
  static const AnnotationType_TrackChanges = 60005;
  @Deprecated('Use AnnotationType_Header instead')
  static const AnnotationType_Header = 60006;
  @Deprecated('Use AnnotationType_Footer instead')
  static const AnnotationType_Footer = 60007;
  @Deprecated('Use AnnotationType_Highlighted instead')
  static const AnnotationType_Highlighted = 60008;
  @Deprecated('Use AnnotationType_Endnote instead')
  static const AnnotationType_Endnote = 60009;
  @Deprecated('Use AnnotationType_Footnote instead')
  static const AnnotationType_Footnote = 60010;
  @Deprecated('Use AnnotationType_InsertionChange instead')
  static const AnnotationType_InsertionChange = 60011;
  @Deprecated('Use AnnotationType_DeletionChange instead')
  static const AnnotationType_DeletionChange = 60012;
  @Deprecated('Use AnnotationType_MoveChange instead')
  static const AnnotationType_MoveChange = 60013;
  @Deprecated('Use AnnotationType_FormatChange instead')
  static const AnnotationType_FormatChange = 60014;
  @Deprecated('Use AnnotationType_UnsyncedChange instead')
  static const AnnotationType_UnsyncedChange = 60015;
  @Deprecated('Use AnnotationType_EditingLockedChange instead')
  static const AnnotationType_EditingLockedChange = 60016;
  @Deprecated('Use AnnotationType_ExternalChange instead')
  static const AnnotationType_ExternalChange = 60017;
  @Deprecated('Use AnnotationType_ConflictingChange instead')
  static const AnnotationType_ConflictingChange = 60018;
  @Deprecated('Use AnnotationType_Author instead')
  static const AnnotationType_Author = 60019;
  @Deprecated('Use AnnotationType_AdvancedProofingIssue instead')
  static const AnnotationType_AdvancedProofingIssue = 60020;
  @Deprecated('Use AnnotationType_DataValidationError instead')
  static const AnnotationType_DataValidationError = 60021;
  @Deprecated('Use AnnotationType_CircularReferenceError instead')
  static const AnnotationType_CircularReferenceError = UIA_ANNOTATIONTYPE(
    60022,
  );
  @Deprecated('Use AnnotationType_Mathematics instead')
  static const AnnotationType_Mathematics = 60023;
  @Deprecated('Use AnnotationType_Sensitive instead')
  static const AnnotationType_Sensitive = 60024;
}

/// {@category enum}
extension type const UIA_CONTROLTYPE_ID(int _) implements int {
  @Deprecated('Use UIA_ButtonControlTypeId instead')
  static const UIA_ButtonControlTypeId = 50000;
  @Deprecated('Use UIA_CalendarControlTypeId instead')
  static const UIA_CalendarControlTypeId = 50001;
  @Deprecated('Use UIA_CheckBoxControlTypeId instead')
  static const UIA_CheckBoxControlTypeId = 50002;
  @Deprecated('Use UIA_ComboBoxControlTypeId instead')
  static const UIA_ComboBoxControlTypeId = 50003;
  @Deprecated('Use UIA_EditControlTypeId instead')
  static const UIA_EditControlTypeId = 50004;
  @Deprecated('Use UIA_HyperlinkControlTypeId instead')
  static const UIA_HyperlinkControlTypeId = 50005;
  @Deprecated('Use UIA_ImageControlTypeId instead')
  static const UIA_ImageControlTypeId = 50006;
  @Deprecated('Use UIA_ListItemControlTypeId instead')
  static const UIA_ListItemControlTypeId = 50007;
  @Deprecated('Use UIA_ListControlTypeId instead')
  static const UIA_ListControlTypeId = 50008;
  @Deprecated('Use UIA_MenuControlTypeId instead')
  static const UIA_MenuControlTypeId = 50009;
  @Deprecated('Use UIA_MenuBarControlTypeId instead')
  static const UIA_MenuBarControlTypeId = 50010;
  @Deprecated('Use UIA_MenuItemControlTypeId instead')
  static const UIA_MenuItemControlTypeId = 50011;
  @Deprecated('Use UIA_ProgressBarControlTypeId instead')
  static const UIA_ProgressBarControlTypeId = 50012;
  @Deprecated('Use UIA_RadioButtonControlTypeId instead')
  static const UIA_RadioButtonControlTypeId = 50013;
  @Deprecated('Use UIA_ScrollBarControlTypeId instead')
  static const UIA_ScrollBarControlTypeId = 50014;
  @Deprecated('Use UIA_SliderControlTypeId instead')
  static const UIA_SliderControlTypeId = 50015;
  @Deprecated('Use UIA_SpinnerControlTypeId instead')
  static const UIA_SpinnerControlTypeId = 50016;
  @Deprecated('Use UIA_StatusBarControlTypeId instead')
  static const UIA_StatusBarControlTypeId = 50017;
  @Deprecated('Use UIA_TabControlTypeId instead')
  static const UIA_TabControlTypeId = 50018;
  @Deprecated('Use UIA_TabItemControlTypeId instead')
  static const UIA_TabItemControlTypeId = 50019;
  @Deprecated('Use UIA_TextControlTypeId instead')
  static const UIA_TextControlTypeId = 50020;
  @Deprecated('Use UIA_ToolBarControlTypeId instead')
  static const UIA_ToolBarControlTypeId = 50021;
  @Deprecated('Use UIA_ToolTipControlTypeId instead')
  static const UIA_ToolTipControlTypeId = 50022;
  @Deprecated('Use UIA_TreeControlTypeId instead')
  static const UIA_TreeControlTypeId = 50023;
  @Deprecated('Use UIA_TreeItemControlTypeId instead')
  static const UIA_TreeItemControlTypeId = 50024;
  @Deprecated('Use UIA_CustomControlTypeId instead')
  static const UIA_CustomControlTypeId = 50025;
  @Deprecated('Use UIA_GroupControlTypeId instead')
  static const UIA_GroupControlTypeId = 50026;
  @Deprecated('Use UIA_ThumbControlTypeId instead')
  static const UIA_ThumbControlTypeId = 50027;
  @Deprecated('Use UIA_DataGridControlTypeId instead')
  static const UIA_DataGridControlTypeId = 50028;
  @Deprecated('Use UIA_DataItemControlTypeId instead')
  static const UIA_DataItemControlTypeId = 50029;
  @Deprecated('Use UIA_DocumentControlTypeId instead')
  static const UIA_DocumentControlTypeId = 50030;
  @Deprecated('Use UIA_SplitButtonControlTypeId instead')
  static const UIA_SplitButtonControlTypeId = 50031;
  @Deprecated('Use UIA_WindowControlTypeId instead')
  static const UIA_WindowControlTypeId = 50032;
  @Deprecated('Use UIA_PaneControlTypeId instead')
  static const UIA_PaneControlTypeId = 50033;
  @Deprecated('Use UIA_HeaderControlTypeId instead')
  static const UIA_HeaderControlTypeId = 50034;
  @Deprecated('Use UIA_HeaderItemControlTypeId instead')
  static const UIA_HeaderItemControlTypeId = 50035;
  @Deprecated('Use UIA_TableControlTypeId instead')
  static const UIA_TableControlTypeId = 50036;
  @Deprecated('Use UIA_TitleBarControlTypeId instead')
  static const UIA_TitleBarControlTypeId = 50037;
  @Deprecated('Use UIA_SeparatorControlTypeId instead')
  static const UIA_SeparatorControlTypeId = 50038;
  @Deprecated('Use UIA_SemanticZoomControlTypeId instead')
  static const UIA_SemanticZoomControlTypeId = 50039;
  @Deprecated('Use UIA_AppBarControlTypeId instead')
  static const UIA_AppBarControlTypeId = 50040;
}

/// {@category enum}
extension type const UIA_EVENT_ID(int _) implements int {
  @Deprecated('Use UIA_ToolTipOpenedEventId instead')
  static const UIA_ToolTipOpenedEventId = 20000;
  @Deprecated('Use UIA_ToolTipClosedEventId instead')
  static const UIA_ToolTipClosedEventId = 20001;
  @Deprecated('Use UIA_StructureChangedEventId instead')
  static const UIA_StructureChangedEventId = 20002;
  @Deprecated('Use UIA_MenuOpenedEventId instead')
  static const UIA_MenuOpenedEventId = 20003;
  @Deprecated('Use UIA_AutomationPropertyChangedEventId instead')
  static const UIA_AutomationPropertyChangedEventId = 20004;
  @Deprecated('Use UIA_AutomationFocusChangedEventId instead')
  static const UIA_AutomationFocusChangedEventId = 20005;
  @Deprecated('Use UIA_AsyncContentLoadedEventId instead')
  static const UIA_AsyncContentLoadedEventId = 20006;
  @Deprecated('Use UIA_MenuClosedEventId instead')
  static const UIA_MenuClosedEventId = 20007;
  @Deprecated('Use UIA_LayoutInvalidatedEventId instead')
  static const UIA_LayoutInvalidatedEventId = 20008;
  @Deprecated('Use UIA_Invoke_InvokedEventId instead')
  static const UIA_Invoke_InvokedEventId = 20009;
  @Deprecated('Use UIA_SelectionItem_ElementAddedToSelectionEventId instead')
  static const UIA_SelectionItem_ElementAddedToSelectionEventId = UIA_EVENT_ID(
    20010,
  );
  @Deprecated(
    'Use UIA_SelectionItem_ElementRemovedFromSelectionEventId instead',
  )
  static const UIA_SelectionItem_ElementRemovedFromSelectionEventId =
      UIA_EVENT_ID(20011);
  @Deprecated('Use UIA_SelectionItem_ElementSelectedEventId instead')
  static const UIA_SelectionItem_ElementSelectedEventId = 20012;
  @Deprecated('Use UIA_Selection_InvalidatedEventId instead')
  static const UIA_Selection_InvalidatedEventId = 20013;
  @Deprecated('Use UIA_Text_TextSelectionChangedEventId instead')
  static const UIA_Text_TextSelectionChangedEventId = 20014;
  @Deprecated('Use UIA_Text_TextChangedEventId instead')
  static const UIA_Text_TextChangedEventId = 20015;
  @Deprecated('Use UIA_Window_WindowOpenedEventId instead')
  static const UIA_Window_WindowOpenedEventId = 20016;
  @Deprecated('Use UIA_Window_WindowClosedEventId instead')
  static const UIA_Window_WindowClosedEventId = 20017;
  @Deprecated('Use UIA_MenuModeStartEventId instead')
  static const UIA_MenuModeStartEventId = 20018;
  @Deprecated('Use UIA_MenuModeEndEventId instead')
  static const UIA_MenuModeEndEventId = 20019;
  @Deprecated('Use UIA_InputReachedTargetEventId instead')
  static const UIA_InputReachedTargetEventId = 20020;
  @Deprecated('Use UIA_InputReachedOtherElementEventId instead')
  static const UIA_InputReachedOtherElementEventId = 20021;
  @Deprecated('Use UIA_InputDiscardedEventId instead')
  static const UIA_InputDiscardedEventId = 20022;
  @Deprecated('Use UIA_SystemAlertEventId instead')
  static const UIA_SystemAlertEventId = 20023;
  @Deprecated('Use UIA_LiveRegionChangedEventId instead')
  static const UIA_LiveRegionChangedEventId = 20024;
  @Deprecated('Use UIA_HostedFragmentRootsInvalidatedEventId instead')
  static const UIA_HostedFragmentRootsInvalidatedEventId = 20025;
  @Deprecated('Use UIA_Drag_DragStartEventId instead')
  static const UIA_Drag_DragStartEventId = 20026;
  @Deprecated('Use UIA_Drag_DragCancelEventId instead')
  static const UIA_Drag_DragCancelEventId = 20027;
  @Deprecated('Use UIA_Drag_DragCompleteEventId instead')
  static const UIA_Drag_DragCompleteEventId = 20028;
  @Deprecated('Use UIA_DropTarget_DragEnterEventId instead')
  static const UIA_DropTarget_DragEnterEventId = 20029;
  @Deprecated('Use UIA_DropTarget_DragLeaveEventId instead')
  static const UIA_DropTarget_DragLeaveEventId = 20030;
  @Deprecated('Use UIA_DropTarget_DroppedEventId instead')
  static const UIA_DropTarget_DroppedEventId = 20031;
  @Deprecated('Use UIA_TextEdit_TextChangedEventId instead')
  static const UIA_TextEdit_TextChangedEventId = 20032;
  @Deprecated('Use UIA_TextEdit_ConversionTargetChangedEventId instead')
  static const UIA_TextEdit_ConversionTargetChangedEventId = UIA_EVENT_ID(
    20033,
  );
  @Deprecated('Use UIA_ChangesEventId instead')
  static const UIA_ChangesEventId = 20034;
  @Deprecated('Use UIA_NotificationEventId instead')
  static const UIA_NotificationEventId = 20035;
  @Deprecated('Use UIA_ActiveTextPositionChangedEventId instead')
  static const UIA_ActiveTextPositionChangedEventId = 20036;
}

/// {@category enum}
extension type const UIA_HEADINGLEVEL_ID(int _) implements int {
  @Deprecated('Use HeadingLevel_None instead')
  static const HeadingLevel_None = 80050;
  @Deprecated('Use HeadingLevel1 instead')
  static const HeadingLevel1 = 80051;
  @Deprecated('Use HeadingLevel2 instead')
  static const HeadingLevel2 = 80052;
  @Deprecated('Use HeadingLevel3 instead')
  static const HeadingLevel3 = 80053;
  @Deprecated('Use HeadingLevel4 instead')
  static const HeadingLevel4 = 80054;
  @Deprecated('Use HeadingLevel5 instead')
  static const HeadingLevel5 = 80055;
  @Deprecated('Use HeadingLevel6 instead')
  static const HeadingLevel6 = 80056;
  @Deprecated('Use HeadingLevel7 instead')
  static const HeadingLevel7 = 80057;
  @Deprecated('Use HeadingLevel8 instead')
  static const HeadingLevel8 = 80058;
  @Deprecated('Use HeadingLevel9 instead')
  static const HeadingLevel9 = 80059;
}

/// {@category enum}
extension type const UIA_LANDMARKTYPE_ID(int _) implements int {
  @Deprecated('Use UIA_CustomLandmarkTypeId instead')
  static const UIA_CustomLandmarkTypeId = 80000;
  @Deprecated('Use UIA_FormLandmarkTypeId instead')
  static const UIA_FormLandmarkTypeId = 80001;
  @Deprecated('Use UIA_MainLandmarkTypeId instead')
  static const UIA_MainLandmarkTypeId = 80002;
  @Deprecated('Use UIA_NavigationLandmarkTypeId instead')
  static const UIA_NavigationLandmarkTypeId = 80003;
  @Deprecated('Use UIA_SearchLandmarkTypeId instead')
  static const UIA_SearchLandmarkTypeId = 80004;
}

/// {@category enum}
extension type const UIA_METADATA_ID(int _) implements int {
  @Deprecated('Use UIA_SayAsInterpretAsMetadataId instead')
  static const UIA_SayAsInterpretAsMetadataId = 100000;
}

/// {@category enum}
extension type const UIA_PATTERN_ID(int _) implements int {
  @Deprecated('Use UIA_InvokePatternId instead')
  static const UIA_InvokePatternId = 10000;
  @Deprecated('Use UIA_SelectionPatternId instead')
  static const UIA_SelectionPatternId = 10001;
  @Deprecated('Use UIA_ValuePatternId instead')
  static const UIA_ValuePatternId = 10002;
  @Deprecated('Use UIA_RangeValuePatternId instead')
  static const UIA_RangeValuePatternId = 10003;
  @Deprecated('Use UIA_ScrollPatternId instead')
  static const UIA_ScrollPatternId = 10004;
  @Deprecated('Use UIA_ExpandCollapsePatternId instead')
  static const UIA_ExpandCollapsePatternId = 10005;
  @Deprecated('Use UIA_GridPatternId instead')
  static const UIA_GridPatternId = 10006;
  @Deprecated('Use UIA_GridItemPatternId instead')
  static const UIA_GridItemPatternId = 10007;
  @Deprecated('Use UIA_MultipleViewPatternId instead')
  static const UIA_MultipleViewPatternId = 10008;
  @Deprecated('Use UIA_WindowPatternId instead')
  static const UIA_WindowPatternId = 10009;
  @Deprecated('Use UIA_SelectionItemPatternId instead')
  static const UIA_SelectionItemPatternId = 10010;
  @Deprecated('Use UIA_DockPatternId instead')
  static const UIA_DockPatternId = 10011;
  @Deprecated('Use UIA_TablePatternId instead')
  static const UIA_TablePatternId = 10012;
  @Deprecated('Use UIA_TableItemPatternId instead')
  static const UIA_TableItemPatternId = 10013;
  @Deprecated('Use UIA_TextPatternId instead')
  static const UIA_TextPatternId = 10014;
  @Deprecated('Use UIA_TogglePatternId instead')
  static const UIA_TogglePatternId = 10015;
  @Deprecated('Use UIA_TransformPatternId instead')
  static const UIA_TransformPatternId = 10016;
  @Deprecated('Use UIA_ScrollItemPatternId instead')
  static const UIA_ScrollItemPatternId = 10017;
  @Deprecated('Use UIA_LegacyIAccessiblePatternId instead')
  static const UIA_LegacyIAccessiblePatternId = 10018;
  @Deprecated('Use UIA_ItemContainerPatternId instead')
  static const UIA_ItemContainerPatternId = 10019;
  @Deprecated('Use UIA_VirtualizedItemPatternId instead')
  static const UIA_VirtualizedItemPatternId = 10020;
  @Deprecated('Use UIA_SynchronizedInputPatternId instead')
  static const UIA_SynchronizedInputPatternId = 10021;
  @Deprecated('Use UIA_ObjectModelPatternId instead')
  static const UIA_ObjectModelPatternId = 10022;
  @Deprecated('Use UIA_AnnotationPatternId instead')
  static const UIA_AnnotationPatternId = 10023;
  @Deprecated('Use UIA_TextPattern2Id instead')
  static const UIA_TextPattern2Id = 10024;
  @Deprecated('Use UIA_StylesPatternId instead')
  static const UIA_StylesPatternId = 10025;
  @Deprecated('Use UIA_SpreadsheetPatternId instead')
  static const UIA_SpreadsheetPatternId = 10026;
  @Deprecated('Use UIA_SpreadsheetItemPatternId instead')
  static const UIA_SpreadsheetItemPatternId = 10027;
  @Deprecated('Use UIA_TransformPattern2Id instead')
  static const UIA_TransformPattern2Id = 10028;
  @Deprecated('Use UIA_TextChildPatternId instead')
  static const UIA_TextChildPatternId = 10029;
  @Deprecated('Use UIA_DragPatternId instead')
  static const UIA_DragPatternId = 10030;
  @Deprecated('Use UIA_DropTargetPatternId instead')
  static const UIA_DropTargetPatternId = 10031;
  @Deprecated('Use UIA_TextEditPatternId instead')
  static const UIA_TextEditPatternId = 10032;
  @Deprecated('Use UIA_CustomNavigationPatternId instead')
  static const UIA_CustomNavigationPatternId = 10033;
  @Deprecated('Use UIA_SelectionPattern2Id instead')
  static const UIA_SelectionPattern2Id = 10034;
}

/// {@category enum}
extension type const UIA_PROPERTY_ID(int _) implements int {
  @Deprecated('Use UIA_RuntimeIdPropertyId instead')
  static const UIA_RuntimeIdPropertyId = 30000;
  @Deprecated('Use UIA_BoundingRectanglePropertyId instead')
  static const UIA_BoundingRectanglePropertyId = 30001;
  @Deprecated('Use UIA_ProcessIdPropertyId instead')
  static const UIA_ProcessIdPropertyId = 30002;
  @Deprecated('Use UIA_ControlTypePropertyId instead')
  static const UIA_ControlTypePropertyId = 30003;
  @Deprecated('Use UIA_LocalizedControlTypePropertyId instead')
  static const UIA_LocalizedControlTypePropertyId = 30004;
  @Deprecated('Use UIA_NamePropertyId instead')
  static const UIA_NamePropertyId = 30005;
  @Deprecated('Use UIA_AcceleratorKeyPropertyId instead')
  static const UIA_AcceleratorKeyPropertyId = 30006;
  @Deprecated('Use UIA_AccessKeyPropertyId instead')
  static const UIA_AccessKeyPropertyId = 30007;
  @Deprecated('Use UIA_HasKeyboardFocusPropertyId instead')
  static const UIA_HasKeyboardFocusPropertyId = 30008;
  @Deprecated('Use UIA_IsKeyboardFocusablePropertyId instead')
  static const UIA_IsKeyboardFocusablePropertyId = 30009;
  @Deprecated('Use UIA_IsEnabledPropertyId instead')
  static const UIA_IsEnabledPropertyId = 30010;
  @Deprecated('Use UIA_AutomationIdPropertyId instead')
  static const UIA_AutomationIdPropertyId = 30011;
  @Deprecated('Use UIA_ClassNamePropertyId instead')
  static const UIA_ClassNamePropertyId = 30012;
  @Deprecated('Use UIA_HelpTextPropertyId instead')
  static const UIA_HelpTextPropertyId = 30013;
  @Deprecated('Use UIA_ClickablePointPropertyId instead')
  static const UIA_ClickablePointPropertyId = 30014;
  @Deprecated('Use UIA_CulturePropertyId instead')
  static const UIA_CulturePropertyId = 30015;
  @Deprecated('Use UIA_IsControlElementPropertyId instead')
  static const UIA_IsControlElementPropertyId = 30016;
  @Deprecated('Use UIA_IsContentElementPropertyId instead')
  static const UIA_IsContentElementPropertyId = 30017;
  @Deprecated('Use UIA_LabeledByPropertyId instead')
  static const UIA_LabeledByPropertyId = 30018;
  @Deprecated('Use UIA_IsPasswordPropertyId instead')
  static const UIA_IsPasswordPropertyId = 30019;
  @Deprecated('Use UIA_NativeWindowHandlePropertyId instead')
  static const UIA_NativeWindowHandlePropertyId = 30020;
  @Deprecated('Use UIA_ItemTypePropertyId instead')
  static const UIA_ItemTypePropertyId = 30021;
  @Deprecated('Use UIA_IsOffscreenPropertyId instead')
  static const UIA_IsOffscreenPropertyId = 30022;
  @Deprecated('Use UIA_OrientationPropertyId instead')
  static const UIA_OrientationPropertyId = 30023;
  @Deprecated('Use UIA_FrameworkIdPropertyId instead')
  static const UIA_FrameworkIdPropertyId = 30024;
  @Deprecated('Use UIA_IsRequiredForFormPropertyId instead')
  static const UIA_IsRequiredForFormPropertyId = 30025;
  @Deprecated('Use UIA_ItemStatusPropertyId instead')
  static const UIA_ItemStatusPropertyId = 30026;
  @Deprecated('Use UIA_IsDockPatternAvailablePropertyId instead')
  static const UIA_IsDockPatternAvailablePropertyId = 30027;
  @Deprecated('Use UIA_IsExpandCollapsePatternAvailablePropertyId instead')
  static const UIA_IsExpandCollapsePatternAvailablePropertyId = UIA_PROPERTY_ID(
    30028,
  );
  @Deprecated('Use UIA_IsGridItemPatternAvailablePropertyId instead')
  static const UIA_IsGridItemPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30029,
  );
  @Deprecated('Use UIA_IsGridPatternAvailablePropertyId instead')
  static const UIA_IsGridPatternAvailablePropertyId = 30030;
  @Deprecated('Use UIA_IsInvokePatternAvailablePropertyId instead')
  static const UIA_IsInvokePatternAvailablePropertyId = 30031;
  @Deprecated('Use UIA_IsMultipleViewPatternAvailablePropertyId instead')
  static const UIA_IsMultipleViewPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30032,
  );
  @Deprecated('Use UIA_IsRangeValuePatternAvailablePropertyId instead')
  static const UIA_IsRangeValuePatternAvailablePropertyId = UIA_PROPERTY_ID(
    30033,
  );
  @Deprecated('Use UIA_IsScrollPatternAvailablePropertyId instead')
  static const UIA_IsScrollPatternAvailablePropertyId = 30034;
  @Deprecated('Use UIA_IsScrollItemPatternAvailablePropertyId instead')
  static const UIA_IsScrollItemPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30035,
  );
  @Deprecated('Use UIA_IsSelectionItemPatternAvailablePropertyId instead')
  static const UIA_IsSelectionItemPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30036,
  );
  @Deprecated('Use UIA_IsSelectionPatternAvailablePropertyId instead')
  static const UIA_IsSelectionPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30037,
  );
  @Deprecated('Use UIA_IsTablePatternAvailablePropertyId instead')
  static const UIA_IsTablePatternAvailablePropertyId = 30038;
  @Deprecated('Use UIA_IsTableItemPatternAvailablePropertyId instead')
  static const UIA_IsTableItemPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30039,
  );
  @Deprecated('Use UIA_IsTextPatternAvailablePropertyId instead')
  static const UIA_IsTextPatternAvailablePropertyId = 30040;
  @Deprecated('Use UIA_IsTogglePatternAvailablePropertyId instead')
  static const UIA_IsTogglePatternAvailablePropertyId = 30041;
  @Deprecated('Use UIA_IsTransformPatternAvailablePropertyId instead')
  static const UIA_IsTransformPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30042,
  );
  @Deprecated('Use UIA_IsValuePatternAvailablePropertyId instead')
  static const UIA_IsValuePatternAvailablePropertyId = 30043;
  @Deprecated('Use UIA_IsWindowPatternAvailablePropertyId instead')
  static const UIA_IsWindowPatternAvailablePropertyId = 30044;
  @Deprecated('Use UIA_ValueValuePropertyId instead')
  static const UIA_ValueValuePropertyId = 30045;
  @Deprecated('Use UIA_ValueIsReadOnlyPropertyId instead')
  static const UIA_ValueIsReadOnlyPropertyId = 30046;
  @Deprecated('Use UIA_RangeValueValuePropertyId instead')
  static const UIA_RangeValueValuePropertyId = 30047;
  @Deprecated('Use UIA_RangeValueIsReadOnlyPropertyId instead')
  static const UIA_RangeValueIsReadOnlyPropertyId = 30048;
  @Deprecated('Use UIA_RangeValueMinimumPropertyId instead')
  static const UIA_RangeValueMinimumPropertyId = 30049;
  @Deprecated('Use UIA_RangeValueMaximumPropertyId instead')
  static const UIA_RangeValueMaximumPropertyId = 30050;
  @Deprecated('Use UIA_RangeValueLargeChangePropertyId instead')
  static const UIA_RangeValueLargeChangePropertyId = 30051;
  @Deprecated('Use UIA_RangeValueSmallChangePropertyId instead')
  static const UIA_RangeValueSmallChangePropertyId = 30052;
  @Deprecated('Use UIA_ScrollHorizontalScrollPercentPropertyId instead')
  static const UIA_ScrollHorizontalScrollPercentPropertyId = UIA_PROPERTY_ID(
    30053,
  );
  @Deprecated('Use UIA_ScrollHorizontalViewSizePropertyId instead')
  static const UIA_ScrollHorizontalViewSizePropertyId = 30054;
  @Deprecated('Use UIA_ScrollVerticalScrollPercentPropertyId instead')
  static const UIA_ScrollVerticalScrollPercentPropertyId = UIA_PROPERTY_ID(
    30055,
  );
  @Deprecated('Use UIA_ScrollVerticalViewSizePropertyId instead')
  static const UIA_ScrollVerticalViewSizePropertyId = 30056;
  @Deprecated('Use UIA_ScrollHorizontallyScrollablePropertyId instead')
  static const UIA_ScrollHorizontallyScrollablePropertyId = UIA_PROPERTY_ID(
    30057,
  );
  @Deprecated('Use UIA_ScrollVerticallyScrollablePropertyId instead')
  static const UIA_ScrollVerticallyScrollablePropertyId = UIA_PROPERTY_ID(
    30058,
  );
  @Deprecated('Use UIA_SelectionSelectionPropertyId instead')
  static const UIA_SelectionSelectionPropertyId = 30059;
  @Deprecated('Use UIA_SelectionCanSelectMultiplePropertyId instead')
  static const UIA_SelectionCanSelectMultiplePropertyId = UIA_PROPERTY_ID(
    30060,
  );
  @Deprecated('Use UIA_SelectionIsSelectionRequiredPropertyId instead')
  static const UIA_SelectionIsSelectionRequiredPropertyId = UIA_PROPERTY_ID(
    30061,
  );
  @Deprecated('Use UIA_GridRowCountPropertyId instead')
  static const UIA_GridRowCountPropertyId = 30062;
  @Deprecated('Use UIA_GridColumnCountPropertyId instead')
  static const UIA_GridColumnCountPropertyId = 30063;
  @Deprecated('Use UIA_GridItemRowPropertyId instead')
  static const UIA_GridItemRowPropertyId = 30064;
  @Deprecated('Use UIA_GridItemColumnPropertyId instead')
  static const UIA_GridItemColumnPropertyId = 30065;
  @Deprecated('Use UIA_GridItemRowSpanPropertyId instead')
  static const UIA_GridItemRowSpanPropertyId = 30066;
  @Deprecated('Use UIA_GridItemColumnSpanPropertyId instead')
  static const UIA_GridItemColumnSpanPropertyId = 30067;
  @Deprecated('Use UIA_GridItemContainingGridPropertyId instead')
  static const UIA_GridItemContainingGridPropertyId = 30068;
  @Deprecated('Use UIA_DockDockPositionPropertyId instead')
  static const UIA_DockDockPositionPropertyId = 30069;
  @Deprecated('Use UIA_ExpandCollapseExpandCollapseStatePropertyId instead')
  static const UIA_ExpandCollapseExpandCollapseStatePropertyId =
      UIA_PROPERTY_ID(30070);
  @Deprecated('Use UIA_MultipleViewCurrentViewPropertyId instead')
  static const UIA_MultipleViewCurrentViewPropertyId = 30071;
  @Deprecated('Use UIA_MultipleViewSupportedViewsPropertyId instead')
  static const UIA_MultipleViewSupportedViewsPropertyId = UIA_PROPERTY_ID(
    30072,
  );
  @Deprecated('Use UIA_WindowCanMaximizePropertyId instead')
  static const UIA_WindowCanMaximizePropertyId = 30073;
  @Deprecated('Use UIA_WindowCanMinimizePropertyId instead')
  static const UIA_WindowCanMinimizePropertyId = 30074;
  @Deprecated('Use UIA_WindowWindowVisualStatePropertyId instead')
  static const UIA_WindowWindowVisualStatePropertyId = 30075;
  @Deprecated('Use UIA_WindowWindowInteractionStatePropertyId instead')
  static const UIA_WindowWindowInteractionStatePropertyId = UIA_PROPERTY_ID(
    30076,
  );
  @Deprecated('Use UIA_WindowIsModalPropertyId instead')
  static const UIA_WindowIsModalPropertyId = 30077;
  @Deprecated('Use UIA_WindowIsTopmostPropertyId instead')
  static const UIA_WindowIsTopmostPropertyId = 30078;
  @Deprecated('Use UIA_SelectionItemIsSelectedPropertyId instead')
  static const UIA_SelectionItemIsSelectedPropertyId = 30079;
  @Deprecated('Use UIA_SelectionItemSelectionContainerPropertyId instead')
  static const UIA_SelectionItemSelectionContainerPropertyId = UIA_PROPERTY_ID(
    30080,
  );
  @Deprecated('Use UIA_TableRowHeadersPropertyId instead')
  static const UIA_TableRowHeadersPropertyId = 30081;
  @Deprecated('Use UIA_TableColumnHeadersPropertyId instead')
  static const UIA_TableColumnHeadersPropertyId = 30082;
  @Deprecated('Use UIA_TableRowOrColumnMajorPropertyId instead')
  static const UIA_TableRowOrColumnMajorPropertyId = 30083;
  @Deprecated('Use UIA_TableItemRowHeaderItemsPropertyId instead')
  static const UIA_TableItemRowHeaderItemsPropertyId = 30084;
  @Deprecated('Use UIA_TableItemColumnHeaderItemsPropertyId instead')
  static const UIA_TableItemColumnHeaderItemsPropertyId = UIA_PROPERTY_ID(
    30085,
  );
  @Deprecated('Use UIA_ToggleToggleStatePropertyId instead')
  static const UIA_ToggleToggleStatePropertyId = 30086;
  @Deprecated('Use UIA_TransformCanMovePropertyId instead')
  static const UIA_TransformCanMovePropertyId = 30087;
  @Deprecated('Use UIA_TransformCanResizePropertyId instead')
  static const UIA_TransformCanResizePropertyId = 30088;
  @Deprecated('Use UIA_TransformCanRotatePropertyId instead')
  static const UIA_TransformCanRotatePropertyId = 30089;
  @Deprecated('Use UIA_IsLegacyIAccessiblePatternAvailablePropertyId instead')
  static const UIA_IsLegacyIAccessiblePatternAvailablePropertyId =
      UIA_PROPERTY_ID(30090);
  @Deprecated('Use UIA_LegacyIAccessibleChildIdPropertyId instead')
  static const UIA_LegacyIAccessibleChildIdPropertyId = 30091;
  @Deprecated('Use UIA_LegacyIAccessibleNamePropertyId instead')
  static const UIA_LegacyIAccessibleNamePropertyId = 30092;
  @Deprecated('Use UIA_LegacyIAccessibleValuePropertyId instead')
  static const UIA_LegacyIAccessibleValuePropertyId = 30093;
  @Deprecated('Use UIA_LegacyIAccessibleDescriptionPropertyId instead')
  static const UIA_LegacyIAccessibleDescriptionPropertyId = UIA_PROPERTY_ID(
    30094,
  );
  @Deprecated('Use UIA_LegacyIAccessibleRolePropertyId instead')
  static const UIA_LegacyIAccessibleRolePropertyId = 30095;
  @Deprecated('Use UIA_LegacyIAccessibleStatePropertyId instead')
  static const UIA_LegacyIAccessibleStatePropertyId = 30096;
  @Deprecated('Use UIA_LegacyIAccessibleHelpPropertyId instead')
  static const UIA_LegacyIAccessibleHelpPropertyId = 30097;
  @Deprecated('Use UIA_LegacyIAccessibleKeyboardShortcutPropertyId instead')
  static const UIA_LegacyIAccessibleKeyboardShortcutPropertyId =
      UIA_PROPERTY_ID(30098);
  @Deprecated('Use UIA_LegacyIAccessibleSelectionPropertyId instead')
  static const UIA_LegacyIAccessibleSelectionPropertyId = UIA_PROPERTY_ID(
    30099,
  );
  @Deprecated('Use UIA_LegacyIAccessibleDefaultActionPropertyId instead')
  static const UIA_LegacyIAccessibleDefaultActionPropertyId = UIA_PROPERTY_ID(
    30100,
  );
  @Deprecated('Use UIA_AriaRolePropertyId instead')
  static const UIA_AriaRolePropertyId = 30101;
  @Deprecated('Use UIA_AriaPropertiesPropertyId instead')
  static const UIA_AriaPropertiesPropertyId = 30102;
  @Deprecated('Use UIA_IsDataValidForFormPropertyId instead')
  static const UIA_IsDataValidForFormPropertyId = 30103;
  @Deprecated('Use UIA_ControllerForPropertyId instead')
  static const UIA_ControllerForPropertyId = 30104;
  @Deprecated('Use UIA_DescribedByPropertyId instead')
  static const UIA_DescribedByPropertyId = 30105;
  @Deprecated('Use UIA_FlowsToPropertyId instead')
  static const UIA_FlowsToPropertyId = 30106;
  @Deprecated('Use UIA_ProviderDescriptionPropertyId instead')
  static const UIA_ProviderDescriptionPropertyId = 30107;
  @Deprecated('Use UIA_IsItemContainerPatternAvailablePropertyId instead')
  static const UIA_IsItemContainerPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30108,
  );
  @Deprecated('Use UIA_IsVirtualizedItemPatternAvailablePropertyId instead')
  static const UIA_IsVirtualizedItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30109);
  @Deprecated('Use UIA_IsSynchronizedInputPatternAvailablePropertyId instead')
  static const UIA_IsSynchronizedInputPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30110);
  @Deprecated('Use UIA_OptimizeForVisualContentPropertyId instead')
  static const UIA_OptimizeForVisualContentPropertyId = 30111;
  @Deprecated('Use UIA_IsObjectModelPatternAvailablePropertyId instead')
  static const UIA_IsObjectModelPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30112,
  );
  @Deprecated('Use UIA_AnnotationAnnotationTypeIdPropertyId instead')
  static const UIA_AnnotationAnnotationTypeIdPropertyId = UIA_PROPERTY_ID(
    30113,
  );
  @Deprecated('Use UIA_AnnotationAnnotationTypeNamePropertyId instead')
  static const UIA_AnnotationAnnotationTypeNamePropertyId = UIA_PROPERTY_ID(
    30114,
  );
  @Deprecated('Use UIA_AnnotationAuthorPropertyId instead')
  static const UIA_AnnotationAuthorPropertyId = 30115;
  @Deprecated('Use UIA_AnnotationDateTimePropertyId instead')
  static const UIA_AnnotationDateTimePropertyId = 30116;
  @Deprecated('Use UIA_AnnotationTargetPropertyId instead')
  static const UIA_AnnotationTargetPropertyId = 30117;
  @Deprecated('Use UIA_IsAnnotationPatternAvailablePropertyId instead')
  static const UIA_IsAnnotationPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30118,
  );
  @Deprecated('Use UIA_IsTextPattern2AvailablePropertyId instead')
  static const UIA_IsTextPattern2AvailablePropertyId = 30119;
  @Deprecated('Use UIA_StylesStyleIdPropertyId instead')
  static const UIA_StylesStyleIdPropertyId = 30120;
  @Deprecated('Use UIA_StylesStyleNamePropertyId instead')
  static const UIA_StylesStyleNamePropertyId = 30121;
  @Deprecated('Use UIA_StylesFillColorPropertyId instead')
  static const UIA_StylesFillColorPropertyId = 30122;
  @Deprecated('Use UIA_StylesFillPatternStylePropertyId instead')
  static const UIA_StylesFillPatternStylePropertyId = 30123;
  @Deprecated('Use UIA_StylesShapePropertyId instead')
  static const UIA_StylesShapePropertyId = 30124;
  @Deprecated('Use UIA_StylesFillPatternColorPropertyId instead')
  static const UIA_StylesFillPatternColorPropertyId = 30125;
  @Deprecated('Use UIA_StylesExtendedPropertiesPropertyId instead')
  static const UIA_StylesExtendedPropertiesPropertyId = 30126;
  @Deprecated('Use UIA_IsStylesPatternAvailablePropertyId instead')
  static const UIA_IsStylesPatternAvailablePropertyId = 30127;
  @Deprecated('Use UIA_IsSpreadsheetPatternAvailablePropertyId instead')
  static const UIA_IsSpreadsheetPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30128,
  );
  @Deprecated('Use UIA_SpreadsheetItemFormulaPropertyId instead')
  static const UIA_SpreadsheetItemFormulaPropertyId = 30129;
  @Deprecated('Use UIA_SpreadsheetItemAnnotationObjectsPropertyId instead')
  static const UIA_SpreadsheetItemAnnotationObjectsPropertyId = UIA_PROPERTY_ID(
    30130,
  );
  @Deprecated('Use UIA_SpreadsheetItemAnnotationTypesPropertyId instead')
  static const UIA_SpreadsheetItemAnnotationTypesPropertyId = UIA_PROPERTY_ID(
    30131,
  );
  @Deprecated('Use UIA_IsSpreadsheetItemPatternAvailablePropertyId instead')
  static const UIA_IsSpreadsheetItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30132);
  @Deprecated('Use UIA_Transform2CanZoomPropertyId instead')
  static const UIA_Transform2CanZoomPropertyId = 30133;
  @Deprecated('Use UIA_IsTransformPattern2AvailablePropertyId instead')
  static const UIA_IsTransformPattern2AvailablePropertyId = UIA_PROPERTY_ID(
    30134,
  );
  @Deprecated('Use UIA_LiveSettingPropertyId instead')
  static const UIA_LiveSettingPropertyId = 30135;
  @Deprecated('Use UIA_IsTextChildPatternAvailablePropertyId instead')
  static const UIA_IsTextChildPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30136,
  );
  @Deprecated('Use UIA_IsDragPatternAvailablePropertyId instead')
  static const UIA_IsDragPatternAvailablePropertyId = 30137;
  @Deprecated('Use UIA_DragIsGrabbedPropertyId instead')
  static const UIA_DragIsGrabbedPropertyId = 30138;
  @Deprecated('Use UIA_DragDropEffectPropertyId instead')
  static const UIA_DragDropEffectPropertyId = 30139;
  @Deprecated('Use UIA_DragDropEffectsPropertyId instead')
  static const UIA_DragDropEffectsPropertyId = 30140;
  @Deprecated('Use UIA_IsDropTargetPatternAvailablePropertyId instead')
  static const UIA_IsDropTargetPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30141,
  );
  @Deprecated('Use UIA_DropTargetDropTargetEffectPropertyId instead')
  static const UIA_DropTargetDropTargetEffectPropertyId = UIA_PROPERTY_ID(
    30142,
  );
  @Deprecated('Use UIA_DropTargetDropTargetEffectsPropertyId instead')
  static const UIA_DropTargetDropTargetEffectsPropertyId = UIA_PROPERTY_ID(
    30143,
  );
  @Deprecated('Use UIA_DragGrabbedItemsPropertyId instead')
  static const UIA_DragGrabbedItemsPropertyId = 30144;
  @Deprecated('Use UIA_Transform2ZoomLevelPropertyId instead')
  static const UIA_Transform2ZoomLevelPropertyId = 30145;
  @Deprecated('Use UIA_Transform2ZoomMinimumPropertyId instead')
  static const UIA_Transform2ZoomMinimumPropertyId = 30146;
  @Deprecated('Use UIA_Transform2ZoomMaximumPropertyId instead')
  static const UIA_Transform2ZoomMaximumPropertyId = 30147;
  @Deprecated('Use UIA_FlowsFromPropertyId instead')
  static const UIA_FlowsFromPropertyId = 30148;
  @Deprecated('Use UIA_IsTextEditPatternAvailablePropertyId instead')
  static const UIA_IsTextEditPatternAvailablePropertyId = UIA_PROPERTY_ID(
    30149,
  );
  @Deprecated('Use UIA_IsPeripheralPropertyId instead')
  static const UIA_IsPeripheralPropertyId = 30150;
  @Deprecated('Use UIA_IsCustomNavigationPatternAvailablePropertyId instead')
  static const UIA_IsCustomNavigationPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30151);
  @Deprecated('Use UIA_PositionInSetPropertyId instead')
  static const UIA_PositionInSetPropertyId = 30152;
  @Deprecated('Use UIA_SizeOfSetPropertyId instead')
  static const UIA_SizeOfSetPropertyId = 30153;
  @Deprecated('Use UIA_LevelPropertyId instead')
  static const UIA_LevelPropertyId = 30154;
  @Deprecated('Use UIA_AnnotationTypesPropertyId instead')
  static const UIA_AnnotationTypesPropertyId = 30155;
  @Deprecated('Use UIA_AnnotationObjectsPropertyId instead')
  static const UIA_AnnotationObjectsPropertyId = 30156;
  @Deprecated('Use UIA_LandmarkTypePropertyId instead')
  static const UIA_LandmarkTypePropertyId = 30157;
  @Deprecated('Use UIA_LocalizedLandmarkTypePropertyId instead')
  static const UIA_LocalizedLandmarkTypePropertyId = 30158;
  @Deprecated('Use UIA_FullDescriptionPropertyId instead')
  static const UIA_FullDescriptionPropertyId = 30159;
  @Deprecated('Use UIA_FillColorPropertyId instead')
  static const UIA_FillColorPropertyId = 30160;
  @Deprecated('Use UIA_OutlineColorPropertyId instead')
  static const UIA_OutlineColorPropertyId = 30161;
  @Deprecated('Use UIA_FillTypePropertyId instead')
  static const UIA_FillTypePropertyId = 30162;
  @Deprecated('Use UIA_VisualEffectsPropertyId instead')
  static const UIA_VisualEffectsPropertyId = 30163;
  @Deprecated('Use UIA_OutlineThicknessPropertyId instead')
  static const UIA_OutlineThicknessPropertyId = 30164;
  @Deprecated('Use UIA_CenterPointPropertyId instead')
  static const UIA_CenterPointPropertyId = 30165;
  @Deprecated('Use UIA_RotationPropertyId instead')
  static const UIA_RotationPropertyId = 30166;
  @Deprecated('Use UIA_SizePropertyId instead')
  static const UIA_SizePropertyId = 30167;
  @Deprecated('Use UIA_IsSelectionPattern2AvailablePropertyId instead')
  static const UIA_IsSelectionPattern2AvailablePropertyId = UIA_PROPERTY_ID(
    30168,
  );
  @Deprecated('Use UIA_Selection2FirstSelectedItemPropertyId instead')
  static const UIA_Selection2FirstSelectedItemPropertyId = UIA_PROPERTY_ID(
    30169,
  );
  @Deprecated('Use UIA_Selection2LastSelectedItemPropertyId instead')
  static const UIA_Selection2LastSelectedItemPropertyId = UIA_PROPERTY_ID(
    30170,
  );
  @Deprecated('Use UIA_Selection2CurrentSelectedItemPropertyId instead')
  static const UIA_Selection2CurrentSelectedItemPropertyId = UIA_PROPERTY_ID(
    30171,
  );
  @Deprecated('Use UIA_Selection2ItemCountPropertyId instead')
  static const UIA_Selection2ItemCountPropertyId = 30172;
  @Deprecated('Use UIA_HeadingLevelPropertyId instead')
  static const UIA_HeadingLevelPropertyId = 30173;
  @Deprecated('Use UIA_IsDialogPropertyId instead')
  static const UIA_IsDialogPropertyId = 30174;
}

/// {@category enum}
extension type const UIA_STYLE_ID(int _) implements int {
  @Deprecated('Use StyleId_Custom instead')
  static const StyleId_Custom = 70000;
  @Deprecated('Use StyleId_Heading1 instead')
  static const StyleId_Heading1 = 70001;
  @Deprecated('Use StyleId_Heading2 instead')
  static const StyleId_Heading2 = 70002;
  @Deprecated('Use StyleId_Heading3 instead')
  static const StyleId_Heading3 = 70003;
  @Deprecated('Use StyleId_Heading4 instead')
  static const StyleId_Heading4 = 70004;
  @Deprecated('Use StyleId_Heading5 instead')
  static const StyleId_Heading5 = 70005;
  @Deprecated('Use StyleId_Heading6 instead')
  static const StyleId_Heading6 = 70006;
  @Deprecated('Use StyleId_Heading7 instead')
  static const StyleId_Heading7 = 70007;
  @Deprecated('Use StyleId_Heading8 instead')
  static const StyleId_Heading8 = 70008;
  @Deprecated('Use StyleId_Heading9 instead')
  static const StyleId_Heading9 = 70009;
  @Deprecated('Use StyleId_Title instead')
  static const StyleId_Title = 70010;
  @Deprecated('Use StyleId_Subtitle instead')
  static const StyleId_Subtitle = 70011;
  @Deprecated('Use StyleId_Normal instead')
  static const StyleId_Normal = 70012;
  @Deprecated('Use StyleId_Emphasis instead')
  static const StyleId_Emphasis = 70013;
  @Deprecated('Use StyleId_Quote instead')
  static const StyleId_Quote = 70014;
  @Deprecated('Use StyleId_BulletedList instead')
  static const StyleId_BulletedList = 70015;
  @Deprecated('Use StyleId_NumberedList instead')
  static const StyleId_NumberedList = 70016;
}

/// {@category enum}
extension type const UIA_TEXTATTRIBUTE_ID(int _) implements int {
  @Deprecated('Use UIA_AnimationStyleAttributeId instead')
  static const UIA_AnimationStyleAttributeId = 40000;
  @Deprecated('Use UIA_BackgroundColorAttributeId instead')
  static const UIA_BackgroundColorAttributeId = 40001;
  @Deprecated('Use UIA_BulletStyleAttributeId instead')
  static const UIA_BulletStyleAttributeId = 40002;
  @Deprecated('Use UIA_CapStyleAttributeId instead')
  static const UIA_CapStyleAttributeId = 40003;
  @Deprecated('Use UIA_CultureAttributeId instead')
  static const UIA_CultureAttributeId = 40004;
  @Deprecated('Use UIA_FontNameAttributeId instead')
  static const UIA_FontNameAttributeId = 40005;
  @Deprecated('Use UIA_FontSizeAttributeId instead')
  static const UIA_FontSizeAttributeId = 40006;
  @Deprecated('Use UIA_FontWeightAttributeId instead')
  static const UIA_FontWeightAttributeId = 40007;
  @Deprecated('Use UIA_ForegroundColorAttributeId instead')
  static const UIA_ForegroundColorAttributeId = 40008;
  @Deprecated('Use UIA_HorizontalTextAlignmentAttributeId instead')
  static const UIA_HorizontalTextAlignmentAttributeId = UIA_TEXTATTRIBUTE_ID(
    40009,
  );
  @Deprecated('Use UIA_IndentationFirstLineAttributeId instead')
  static const UIA_IndentationFirstLineAttributeId = UIA_TEXTATTRIBUTE_ID(
    40010,
  );
  @Deprecated('Use UIA_IndentationLeadingAttributeId instead')
  static const UIA_IndentationLeadingAttributeId = 40011;
  @Deprecated('Use UIA_IndentationTrailingAttributeId instead')
  static const UIA_IndentationTrailingAttributeId = 40012;
  @Deprecated('Use UIA_IsHiddenAttributeId instead')
  static const UIA_IsHiddenAttributeId = 40013;
  @Deprecated('Use UIA_IsItalicAttributeId instead')
  static const UIA_IsItalicAttributeId = 40014;
  @Deprecated('Use UIA_IsReadOnlyAttributeId instead')
  static const UIA_IsReadOnlyAttributeId = 40015;
  @Deprecated('Use UIA_IsSubscriptAttributeId instead')
  static const UIA_IsSubscriptAttributeId = 40016;
  @Deprecated('Use UIA_IsSuperscriptAttributeId instead')
  static const UIA_IsSuperscriptAttributeId = 40017;
  @Deprecated('Use UIA_MarginBottomAttributeId instead')
  static const UIA_MarginBottomAttributeId = 40018;
  @Deprecated('Use UIA_MarginLeadingAttributeId instead')
  static const UIA_MarginLeadingAttributeId = 40019;
  @Deprecated('Use UIA_MarginTopAttributeId instead')
  static const UIA_MarginTopAttributeId = 40020;
  @Deprecated('Use UIA_MarginTrailingAttributeId instead')
  static const UIA_MarginTrailingAttributeId = 40021;
  @Deprecated('Use UIA_OutlineStylesAttributeId instead')
  static const UIA_OutlineStylesAttributeId = 40022;
  @Deprecated('Use UIA_OverlineColorAttributeId instead')
  static const UIA_OverlineColorAttributeId = 40023;
  @Deprecated('Use UIA_OverlineStyleAttributeId instead')
  static const UIA_OverlineStyleAttributeId = 40024;
  @Deprecated('Use UIA_StrikethroughColorAttributeId instead')
  static const UIA_StrikethroughColorAttributeId = 40025;
  @Deprecated('Use UIA_StrikethroughStyleAttributeId instead')
  static const UIA_StrikethroughStyleAttributeId = 40026;
  @Deprecated('Use UIA_TabsAttributeId instead')
  static const UIA_TabsAttributeId = 40027;
  @Deprecated('Use UIA_TextFlowDirectionsAttributeId instead')
  static const UIA_TextFlowDirectionsAttributeId = 40028;
  @Deprecated('Use UIA_UnderlineColorAttributeId instead')
  static const UIA_UnderlineColorAttributeId = 40029;
  @Deprecated('Use UIA_UnderlineStyleAttributeId instead')
  static const UIA_UnderlineStyleAttributeId = 40030;
  @Deprecated('Use UIA_AnnotationTypesAttributeId instead')
  static const UIA_AnnotationTypesAttributeId = 40031;
  @Deprecated('Use UIA_AnnotationObjectsAttributeId instead')
  static const UIA_AnnotationObjectsAttributeId = 40032;
  @Deprecated('Use UIA_StyleNameAttributeId instead')
  static const UIA_StyleNameAttributeId = 40033;
  @Deprecated('Use UIA_StyleIdAttributeId instead')
  static const UIA_StyleIdAttributeId = 40034;
  @Deprecated('Use UIA_LinkAttributeId instead')
  static const UIA_LinkAttributeId = 40035;
  @Deprecated('Use UIA_IsActiveAttributeId instead')
  static const UIA_IsActiveAttributeId = 40036;
  @Deprecated('Use UIA_SelectionActiveEndAttributeId instead')
  static const UIA_SelectionActiveEndAttributeId = 40037;
  @Deprecated('Use UIA_CaretPositionAttributeId instead')
  static const UIA_CaretPositionAttributeId = 40038;
  @Deprecated('Use UIA_CaretBidiModeAttributeId instead')
  static const UIA_CaretBidiModeAttributeId = 40039;
  @Deprecated('Use UIA_LineSpacingAttributeId instead')
  static const UIA_LineSpacingAttributeId = 40040;
  @Deprecated('Use UIA_BeforeParagraphSpacingAttributeId instead')
  static const UIA_BeforeParagraphSpacingAttributeId = UIA_TEXTATTRIBUTE_ID(
    40041,
  );
  @Deprecated('Use UIA_AfterParagraphSpacingAttributeId instead')
  static const UIA_AfterParagraphSpacingAttributeId = UIA_TEXTATTRIBUTE_ID(
    40042,
  );
  @Deprecated('Use UIA_SayAsInterpretAsAttributeId instead')
  static const UIA_SayAsInterpretAsAttributeId = 40043;
}

/// {@category enum}
extension type const UNMAP_VIEW_OF_FILE_FLAGS(int _) implements int {
  @Deprecated('Use MEM_UNMAP_NONE instead')
  static const MEM_UNMAP_NONE = 0;
  @Deprecated('Use MEM_UNMAP_WITH_TRANSIENT_BOOST instead')
  static const MEM_UNMAP_WITH_TRANSIENT_BOOST = 1;
  @Deprecated('Use MEM_PRESERVE_PLACEHOLDER instead')
  static const MEM_PRESERVE_PLACEHOLDER = 2;
}

/// {@category enum}
extension type const UPDATE_LAYERED_WINDOW_FLAGS(int _) implements int {
  @Deprecated('Use ULW_ALPHA instead')
  static const ULW_ALPHA = 2;
  @Deprecated('Use ULW_COLORKEY instead')
  static const ULW_COLORKEY = 1;
  @Deprecated('Use ULW_OPAQUE instead')
  static const ULW_OPAQUE = 4;
  @Deprecated('Use ULW_EX_NORESIZE instead')
  static const ULW_EX_NORESIZE = 8;
}

/// {@category enum}
extension type const USER_OBJECT_INFORMATION_INDEX(int _) implements int {
  @Deprecated('Use UOI_FLAGS instead')
  static const UOI_FLAGS = 1;
  @Deprecated('Use UOI_HEAPSIZE instead')
  static const UOI_HEAPSIZE = 5;
  @Deprecated('Use UOI_IO instead')
  static const UOI_IO = 6;
  @Deprecated('Use UOI_NAME instead')
  static const UOI_NAME = 2;
  @Deprecated('Use UOI_TYPE instead')
  static const UOI_TYPE = 3;
  @Deprecated('Use UOI_USER_SID instead')
  static const UOI_USER_SID = 4;
}

/// {@category enum}
extension type const Uri_PROPERTY(int _) implements int {
  @Deprecated('Use Uri_PROPERTY_ABSOLUTE_URI instead')
  static const Uri_PROPERTY_ABSOLUTE_URI = 0;
  @Deprecated('Use Uri_PROPERTY_STRING_START instead')
  static const Uri_PROPERTY_STRING_START = 0;
  @Deprecated('Use Uri_PROPERTY_AUTHORITY instead')
  static const Uri_PROPERTY_AUTHORITY = 1;
  @Deprecated('Use Uri_PROPERTY_DISPLAY_URI instead')
  static const Uri_PROPERTY_DISPLAY_URI = 2;
  @Deprecated('Use Uri_PROPERTY_DOMAIN instead')
  static const Uri_PROPERTY_DOMAIN = 3;
  @Deprecated('Use Uri_PROPERTY_EXTENSION instead')
  static const Uri_PROPERTY_EXTENSION = 4;
  @Deprecated('Use Uri_PROPERTY_FRAGMENT instead')
  static const Uri_PROPERTY_FRAGMENT = 5;
  @Deprecated('Use Uri_PROPERTY_HOST instead')
  static const Uri_PROPERTY_HOST = 6;
  @Deprecated('Use Uri_PROPERTY_PASSWORD instead')
  static const Uri_PROPERTY_PASSWORD = 7;
  @Deprecated('Use Uri_PROPERTY_PATH instead')
  static const Uri_PROPERTY_PATH = 8;
  @Deprecated('Use Uri_PROPERTY_PATH_AND_QUERY instead')
  static const Uri_PROPERTY_PATH_AND_QUERY = 9;
  @Deprecated('Use Uri_PROPERTY_QUERY instead')
  static const Uri_PROPERTY_QUERY = 10;
  @Deprecated('Use Uri_PROPERTY_RAW_URI instead')
  static const Uri_PROPERTY_RAW_URI = 11;
  @Deprecated('Use Uri_PROPERTY_SCHEME_NAME instead')
  static const Uri_PROPERTY_SCHEME_NAME = 12;
  @Deprecated('Use Uri_PROPERTY_USER_INFO instead')
  static const Uri_PROPERTY_USER_INFO = 13;
  @Deprecated('Use Uri_PROPERTY_USER_NAME instead')
  static const Uri_PROPERTY_USER_NAME = 14;
  @Deprecated('Use Uri_PROPERTY_STRING_LAST instead')
  static const Uri_PROPERTY_STRING_LAST = 14;
  @Deprecated('Use Uri_PROPERTY_HOST_TYPE instead')
  static const Uri_PROPERTY_HOST_TYPE = 15;
  @Deprecated('Use Uri_PROPERTY_DWORD_START instead')
  static const Uri_PROPERTY_DWORD_START = 15;
  @Deprecated('Use Uri_PROPERTY_PORT instead')
  static const Uri_PROPERTY_PORT = 16;
  @Deprecated('Use Uri_PROPERTY_SCHEME instead')
  static const Uri_PROPERTY_SCHEME = 17;
  @Deprecated('Use Uri_PROPERTY_ZONE instead')
  static const Uri_PROPERTY_ZONE = 18;
  @Deprecated('Use Uri_PROPERTY_DWORD_LAST instead')
  static const Uri_PROPERTY_DWORD_LAST = 18;
}

/// Specifies variable flags.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-varflags>.
///
/// {@category enum}
extension type const VARFLAGS(int _) implements int {
  /// Assignment to the variable should not be allowed.
  @Deprecated('Use VARFLAG_FREADONLY instead')
  static const VARFLAG_FREADONLY = 1;

  /// The variable returns an object that is a source of events.
  @Deprecated('Use VARFLAG_FSOURCE instead')
  static const VARFLAG_FSOURCE = 2;

  /// The variable supports data binding.
  @Deprecated('Use VARFLAG_FBINDABLE instead')
  static const VARFLAG_FBINDABLE = 4;

  /// When set, any attempt to directly change the property results in a call to
  /// <b>IPropertyNotifySink::OnRequestEdit</b>.
  @Deprecated('Use VARFLAG_FREQUESTEDIT instead')
  static const VARFLAG_FREQUESTEDIT = 8;

  /// The variable is displayed to the user as bindable.
  @Deprecated('Use VARFLAG_FDISPLAYBIND instead')
  static const VARFLAG_FDISPLAYBIND = 16;

  /// The variable is the single property that best represents the object.
  @Deprecated('Use VARFLAG_FDEFAULTBIND instead')
  static const VARFLAG_FDEFAULTBIND = 32;

  /// The variable should not be displayed to the user in a browser, although it
  /// exists and is bindable.
  @Deprecated('Use VARFLAG_FHIDDEN instead')
  static const VARFLAG_FHIDDEN = 64;

  /// The variable should not be accessible from macro languages.
  @Deprecated('Use VARFLAG_FRESTRICTED instead')
  static const VARFLAG_FRESTRICTED = 128;

  /// Permits an optimization in which the compiler looks for a member named
  /// "xyz" on the type of abc.
  @Deprecated('Use VARFLAG_FDEFAULTCOLLELEM instead')
  static const VARFLAG_FDEFAULTCOLLELEM = 256;

  /// The variable is the default display in the user interface.
  @Deprecated('Use VARFLAG_FUIDEFAULT instead')
  static const VARFLAG_FUIDEFAULT = 512;

  /// The variable appears in an object browser, but not in a properties
  /// browser.
  @Deprecated('Use VARFLAG_FNONBROWSABLE instead')
  static const VARFLAG_FNONBROWSABLE = 1024;

  /// Tags the interface as having default behaviors.
  @Deprecated('Use VARFLAG_FREPLACEABLE instead')
  static const VARFLAG_FREPLACEABLE = 2048;

  /// The variable is mapped as individual bindable properties.
  @Deprecated('Use VARFLAG_FIMMEDIATEBIND instead')
  static const VARFLAG_FIMMEDIATEBIND = 4096;
}

/// Specifies the variable type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-varkind>.
///
/// {@category enum}
extension type const VARKIND(int _) implements int {
  /// The variable is a field or member of the type.
  @Deprecated('Use VAR_PERINSTANCE instead')
  static const VAR_PERINSTANCE = 0;

  /// There is only one instance of the variable.
  @Deprecated('Use VAR_STATIC instead')
  static const VAR_STATIC = 1;

  /// The VARDESC describes a symbolic constant.
  @Deprecated('Use VAR_CONST instead')
  static const VAR_CONST = 2;

  /// The variable can only be accessed through <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nf-oaidl-idispatch-invoke">IDispatch::Invoke</a>.
  @Deprecated('Use VAR_DISPATCH instead')
  static const VAR_DISPATCH = 3;
}

/// {@category enum}
extension type const VAR_CHANGE_FLAGS(int _) implements int {
  @Deprecated('Use VARIANT_NOVALUEPROP instead')
  static const VARIANT_NOVALUEPROP = 1;
  @Deprecated('Use VARIANT_ALPHABOOL instead')
  static const VARIANT_ALPHABOOL = 2;
  @Deprecated('Use VARIANT_NOUSEROVERRIDE instead')
  static const VARIANT_NOUSEROVERRIDE = 4;
  @Deprecated('Use VARIANT_CALENDAR_HIJRI instead')
  static const VARIANT_CALENDAR_HIJRI = 8;
  @Deprecated('Use VARIANT_LOCALBOOL instead')
  static const VARIANT_LOCALBOOL = 16;
  @Deprecated('Use VARIANT_CALENDAR_THAI instead')
  static const VARIANT_CALENDAR_THAI = 32;
  @Deprecated('Use VARIANT_CALENDAR_GREGORIAN instead')
  static const VARIANT_CALENDAR_GREGORIAN = 64;
  @Deprecated('Use VARIANT_USE_NLS instead')
  static const VARIANT_USE_NLS = 128;
}

/// {@category enum}
extension type const VER_FIND_FILE_FLAGS(int _) implements int {
  @Deprecated('Use VFFF_ISSHAREDFILE instead')
  static const VFFF_ISSHAREDFILE = 1;
}

/// {@category enum}
extension type const VER_FIND_FILE_STATUS(int _) implements int {
  @Deprecated('Use VFF_CURNEDEST instead')
  static const VFF_CURNEDEST = 1;
  @Deprecated('Use VFF_FILEINUSE instead')
  static const VFF_FILEINUSE = 2;
  @Deprecated('Use VFF_BUFFTOOSMALL instead')
  static const VFF_BUFFTOOSMALL = 4;
}

/// {@category enum}
extension type const VER_FLAGS(int _) implements int {
  @Deprecated('Use VER_MINORVERSION instead')
  static const VER_MINORVERSION = 1;
  @Deprecated('Use VER_MAJORVERSION instead')
  static const VER_MAJORVERSION = 2;
  @Deprecated('Use VER_BUILDNUMBER instead')
  static const VER_BUILDNUMBER = 4;
  @Deprecated('Use VER_PLATFORMID instead')
  static const VER_PLATFORMID = 8;
  @Deprecated('Use VER_SERVICEPACKMINOR instead')
  static const VER_SERVICEPACKMINOR = 16;
  @Deprecated('Use VER_SERVICEPACKMAJOR instead')
  static const VER_SERVICEPACKMAJOR = 32;
  @Deprecated('Use VER_SUITENAME instead')
  static const VER_SUITENAME = 64;
  @Deprecated('Use VER_PRODUCT_TYPE instead')
  static const VER_PRODUCT_TYPE = 128;
}

/// {@category enum}
extension type const VER_INSTALL_FILE_FLAGS(int _) implements int {
  @Deprecated('Use VIFF_FORCEINSTALL instead')
  static const VIFF_FORCEINSTALL = 1;
  @Deprecated('Use VIFF_DONTDELETEOLD instead')
  static const VIFF_DONTDELETEOLD = 2;
}

/// {@category enum}
extension type const VER_INSTALL_FILE_STATUS(int _) implements int {
  @Deprecated('Use VIF_TEMPFILE instead')
  static const VIF_TEMPFILE = 1;
  @Deprecated('Use VIF_MISMATCH instead')
  static const VIF_MISMATCH = 2;
  @Deprecated('Use VIF_SRCOLD instead')
  static const VIF_SRCOLD = 4;
  @Deprecated('Use VIF_DIFFLANG instead')
  static const VIF_DIFFLANG = 8;
  @Deprecated('Use VIF_DIFFCODEPG instead')
  static const VIF_DIFFCODEPG = 16;
  @Deprecated('Use VIF_DIFFTYPE instead')
  static const VIF_DIFFTYPE = 32;
  @Deprecated('Use VIF_WRITEPROT instead')
  static const VIF_WRITEPROT = 64;
  @Deprecated('Use VIF_FILEINUSE instead')
  static const VIF_FILEINUSE = 128;
  @Deprecated('Use VIF_OUTOFSPACE instead')
  static const VIF_OUTOFSPACE = 256;
  @Deprecated('Use VIF_ACCESSVIOLATION instead')
  static const VIF_ACCESSVIOLATION = 512;
  @Deprecated('Use VIF_SHARINGVIOLATION instead')
  static const VIF_SHARINGVIOLATION = 1024;
  @Deprecated('Use VIF_CANNOTCREATE instead')
  static const VIF_CANNOTCREATE = 2048;
  @Deprecated('Use VIF_CANNOTDELETE instead')
  static const VIF_CANNOTDELETE = 4096;
  @Deprecated('Use VIF_CANNOTRENAME instead')
  static const VIF_CANNOTRENAME = 8192;
  @Deprecated('Use VIF_CANNOTDELETECUR instead')
  static const VIF_CANNOTDELETECUR = 16384;
  @Deprecated('Use VIF_OUTOFMEMORY instead')
  static const VIF_OUTOFMEMORY = 32768;
  @Deprecated('Use VIF_CANNOTREADSRC instead')
  static const VIF_CANNOTREADSRC = 65536;
  @Deprecated('Use VIF_CANNOTREADDST instead')
  static const VIF_CANNOTREADDST = 131072;
  @Deprecated('Use VIF_BUFFTOOSMALL instead')
  static const VIF_BUFFTOOSMALL = 262144;
  @Deprecated('Use VIF_CANNOTLOADLZ32 instead')
  static const VIF_CANNOTLOADLZ32 = 524288;
  @Deprecated('Use VIF_CANNOTLOADCABINET instead')
  static const VIF_CANNOTLOADCABINET = 1048576;
}

/// {@category enum}
extension type const VIRTUAL_ALLOCATION_TYPE(int _) implements int {
  @Deprecated('Use MEM_COMMIT instead')
  static const MEM_COMMIT = 4096;
  @Deprecated('Use MEM_RESERVE instead')
  static const MEM_RESERVE = 8192;
  @Deprecated('Use MEM_RESET instead')
  static const MEM_RESET = 524288;
  @Deprecated('Use MEM_RESET_UNDO instead')
  static const MEM_RESET_UNDO = 16777216;
  @Deprecated('Use MEM_REPLACE_PLACEHOLDER instead')
  static const MEM_REPLACE_PLACEHOLDER = 16384;
  @Deprecated('Use MEM_LARGE_PAGES instead')
  static const MEM_LARGE_PAGES = 536870912;
  @Deprecated('Use MEM_RESERVE_PLACEHOLDER instead')
  static const MEM_RESERVE_PLACEHOLDER = 262144;
  @Deprecated('Use MEM_FREE instead')
  static const MEM_FREE = 65536;
}

/// {@category enum}
extension type const VIRTUAL_FREE_TYPE(int _) implements int {
  @Deprecated('Use MEM_DECOMMIT instead')
  static const MEM_DECOMMIT = 16384;
  @Deprecated('Use MEM_RELEASE instead')
  static const MEM_RELEASE = 32768;
}

/// {@category enum}
extension type const VIRTUAL_KEY(int _) implements int {
  @Deprecated('Use VK_0 instead')
  static const VK_0 = 48;
  @Deprecated('Use VK_1 instead')
  static const VK_1 = 49;
  @Deprecated('Use VK_2 instead')
  static const VK_2 = 50;
  @Deprecated('Use VK_3 instead')
  static const VK_3 = 51;
  @Deprecated('Use VK_4 instead')
  static const VK_4 = 52;
  @Deprecated('Use VK_5 instead')
  static const VK_5 = 53;
  @Deprecated('Use VK_6 instead')
  static const VK_6 = 54;
  @Deprecated('Use VK_7 instead')
  static const VK_7 = 55;
  @Deprecated('Use VK_8 instead')
  static const VK_8 = 56;
  @Deprecated('Use VK_9 instead')
  static const VK_9 = 57;
  @Deprecated('Use VK_A instead')
  static const VK_A = 65;
  @Deprecated('Use VK_B instead')
  static const VK_B = 66;
  @Deprecated('Use VK_C instead')
  static const VK_C = 67;
  @Deprecated('Use VK_D instead')
  static const VK_D = 68;
  @Deprecated('Use VK_E instead')
  static const VK_E = 69;
  @Deprecated('Use VK_F instead')
  static const VK_F = 70;
  @Deprecated('Use VK_G instead')
  static const VK_G = 71;
  @Deprecated('Use VK_H instead')
  static const VK_H = 72;
  @Deprecated('Use VK_I instead')
  static const VK_I = 73;
  @Deprecated('Use VK_J instead')
  static const VK_J = 74;
  @Deprecated('Use VK_K instead')
  static const VK_K = 75;
  @Deprecated('Use VK_L instead')
  static const VK_L = 76;
  @Deprecated('Use VK_M instead')
  static const VK_M = 77;
  @Deprecated('Use VK_N instead')
  static const VK_N = 78;
  @Deprecated('Use VK_O instead')
  static const VK_O = 79;
  @Deprecated('Use VK_P instead')
  static const VK_P = 80;
  @Deprecated('Use VK_Q instead')
  static const VK_Q = 81;
  @Deprecated('Use VK_R instead')
  static const VK_R = 82;
  @Deprecated('Use VK_S instead')
  static const VK_S = 83;
  @Deprecated('Use VK_T instead')
  static const VK_T = 84;
  @Deprecated('Use VK_U instead')
  static const VK_U = 85;
  @Deprecated('Use VK_V instead')
  static const VK_V = 86;
  @Deprecated('Use VK_W instead')
  static const VK_W = 87;
  @Deprecated('Use VK_X instead')
  static const VK_X = 88;
  @Deprecated('Use VK_Y instead')
  static const VK_Y = 89;
  @Deprecated('Use VK_Z instead')
  static const VK_Z = 90;
  @Deprecated('Use VK_ABNT_C1 instead')
  static const VK_ABNT_C1 = 193;
  @Deprecated('Use VK_ABNT_C2 instead')
  static const VK_ABNT_C2 = 194;
  @Deprecated('Use VK_DBE_ALPHANUMERIC instead')
  static const VK_DBE_ALPHANUMERIC = 240;
  @Deprecated('Use VK_DBE_CODEINPUT instead')
  static const VK_DBE_CODEINPUT = 250;
  @Deprecated('Use VK_DBE_DBCSCHAR instead')
  static const VK_DBE_DBCSCHAR = 244;
  @Deprecated('Use VK_DBE_DETERMINESTRING instead')
  static const VK_DBE_DETERMINESTRING = 252;
  @Deprecated('Use VK_DBE_ENTERDLGCONVERSIONMODE instead')
  static const VK_DBE_ENTERDLGCONVERSIONMODE = 253;
  @Deprecated('Use VK_DBE_ENTERIMECONFIGMODE instead')
  static const VK_DBE_ENTERIMECONFIGMODE = 248;
  @Deprecated('Use VK_DBE_ENTERWORDREGISTERMODE instead')
  static const VK_DBE_ENTERWORDREGISTERMODE = 247;
  @Deprecated('Use VK_DBE_FLUSHSTRING instead')
  static const VK_DBE_FLUSHSTRING = 249;
  @Deprecated('Use VK_DBE_HIRAGANA instead')
  static const VK_DBE_HIRAGANA = 242;
  @Deprecated('Use VK_DBE_KATAKANA instead')
  static const VK_DBE_KATAKANA = 241;
  @Deprecated('Use VK_DBE_NOCODEINPUT instead')
  static const VK_DBE_NOCODEINPUT = 251;
  @Deprecated('Use VK_DBE_NOROMAN instead')
  static const VK_DBE_NOROMAN = 246;
  @Deprecated('Use VK_DBE_ROMAN instead')
  static const VK_DBE_ROMAN = 245;
  @Deprecated('Use VK_DBE_SBCSCHAR instead')
  static const VK_DBE_SBCSCHAR = 243;
  @Deprecated('Use VK__none_ instead')
  static const VK__none_ = 255;
  @Deprecated('Use VK_LBUTTON instead')
  static const VK_LBUTTON = 1;
  @Deprecated('Use VK_RBUTTON instead')
  static const VK_RBUTTON = 2;
  @Deprecated('Use VK_CANCEL instead')
  static const VK_CANCEL = 3;
  @Deprecated('Use VK_MBUTTON instead')
  static const VK_MBUTTON = 4;
  @Deprecated('Use VK_XBUTTON1 instead')
  static const VK_XBUTTON1 = 5;
  @Deprecated('Use VK_XBUTTON2 instead')
  static const VK_XBUTTON2 = 6;
  @Deprecated('Use VK_BACK instead')
  static const VK_BACK = 8;
  @Deprecated('Use VK_TAB instead')
  static const VK_TAB = 9;
  @Deprecated('Use VK_CLEAR instead')
  static const VK_CLEAR = 12;
  @Deprecated('Use VK_RETURN instead')
  static const VK_RETURN = 13;
  @Deprecated('Use VK_SHIFT instead')
  static const VK_SHIFT = 16;
  @Deprecated('Use VK_CONTROL instead')
  static const VK_CONTROL = 17;
  @Deprecated('Use VK_MENU instead')
  static const VK_MENU = 18;
  @Deprecated('Use VK_PAUSE instead')
  static const VK_PAUSE = 19;
  @Deprecated('Use VK_CAPITAL instead')
  static const VK_CAPITAL = 20;
  @Deprecated('Use VK_KANA instead')
  static const VK_KANA = 21;
  @Deprecated('Use VK_HANGEUL instead')
  static const VK_HANGEUL = 21;
  @Deprecated('Use VK_HANGUL instead')
  static const VK_HANGUL = 21;
  @Deprecated('Use VK_IME_ON instead')
  static const VK_IME_ON = 22;
  @Deprecated('Use VK_JUNJA instead')
  static const VK_JUNJA = 23;
  @Deprecated('Use VK_FINAL instead')
  static const VK_FINAL = 24;
  @Deprecated('Use VK_HANJA instead')
  static const VK_HANJA = 25;
  @Deprecated('Use VK_KANJI instead')
  static const VK_KANJI = 25;
  @Deprecated('Use VK_IME_OFF instead')
  static const VK_IME_OFF = 26;
  @Deprecated('Use VK_ESCAPE instead')
  static const VK_ESCAPE = 27;
  @Deprecated('Use VK_CONVERT instead')
  static const VK_CONVERT = 28;
  @Deprecated('Use VK_NONCONVERT instead')
  static const VK_NONCONVERT = 29;
  @Deprecated('Use VK_ACCEPT instead')
  static const VK_ACCEPT = 30;
  @Deprecated('Use VK_MODECHANGE instead')
  static const VK_MODECHANGE = 31;
  @Deprecated('Use VK_SPACE instead')
  static const VK_SPACE = 32;
  @Deprecated('Use VK_PRIOR instead')
  static const VK_PRIOR = 33;
  @Deprecated('Use VK_NEXT instead')
  static const VK_NEXT = 34;
  @Deprecated('Use VK_END instead')
  static const VK_END = 35;
  @Deprecated('Use VK_HOME instead')
  static const VK_HOME = 36;
  @Deprecated('Use VK_LEFT instead')
  static const VK_LEFT = 37;
  @Deprecated('Use VK_UP instead')
  static const VK_UP = 38;
  @Deprecated('Use VK_RIGHT instead')
  static const VK_RIGHT = 39;
  @Deprecated('Use VK_DOWN instead')
  static const VK_DOWN = 40;
  @Deprecated('Use VK_SELECT instead')
  static const VK_SELECT = 41;
  @Deprecated('Use VK_PRINT instead')
  static const VK_PRINT = 42;
  @Deprecated('Use VK_EXECUTE instead')
  static const VK_EXECUTE = 43;
  @Deprecated('Use VK_SNAPSHOT instead')
  static const VK_SNAPSHOT = 44;
  @Deprecated('Use VK_INSERT instead')
  static const VK_INSERT = 45;
  @Deprecated('Use VK_DELETE instead')
  static const VK_DELETE = 46;
  @Deprecated('Use VK_HELP instead')
  static const VK_HELP = 47;
  @Deprecated('Use VK_LWIN instead')
  static const VK_LWIN = 91;
  @Deprecated('Use VK_RWIN instead')
  static const VK_RWIN = 92;
  @Deprecated('Use VK_APPS instead')
  static const VK_APPS = 93;
  @Deprecated('Use VK_SLEEP instead')
  static const VK_SLEEP = 95;
  @Deprecated('Use VK_NUMPAD0 instead')
  static const VK_NUMPAD0 = 96;
  @Deprecated('Use VK_NUMPAD1 instead')
  static const VK_NUMPAD1 = 97;
  @Deprecated('Use VK_NUMPAD2 instead')
  static const VK_NUMPAD2 = 98;
  @Deprecated('Use VK_NUMPAD3 instead')
  static const VK_NUMPAD3 = 99;
  @Deprecated('Use VK_NUMPAD4 instead')
  static const VK_NUMPAD4 = 100;
  @Deprecated('Use VK_NUMPAD5 instead')
  static const VK_NUMPAD5 = 101;
  @Deprecated('Use VK_NUMPAD6 instead')
  static const VK_NUMPAD6 = 102;
  @Deprecated('Use VK_NUMPAD7 instead')
  static const VK_NUMPAD7 = 103;
  @Deprecated('Use VK_NUMPAD8 instead')
  static const VK_NUMPAD8 = 104;
  @Deprecated('Use VK_NUMPAD9 instead')
  static const VK_NUMPAD9 = 105;
  @Deprecated('Use VK_MULTIPLY instead')
  static const VK_MULTIPLY = 106;
  @Deprecated('Use VK_ADD instead')
  static const VK_ADD = 107;
  @Deprecated('Use VK_SEPARATOR instead')
  static const VK_SEPARATOR = 108;
  @Deprecated('Use VK_SUBTRACT instead')
  static const VK_SUBTRACT = 109;
  @Deprecated('Use VK_DECIMAL instead')
  static const VK_DECIMAL = 110;
  @Deprecated('Use VK_DIVIDE instead')
  static const VK_DIVIDE = 111;
  @Deprecated('Use VK_F1 instead')
  static const VK_F1 = 112;
  @Deprecated('Use VK_F2 instead')
  static const VK_F2 = 113;
  @Deprecated('Use VK_F3 instead')
  static const VK_F3 = 114;
  @Deprecated('Use VK_F4 instead')
  static const VK_F4 = 115;
  @Deprecated('Use VK_F5 instead')
  static const VK_F5 = 116;
  @Deprecated('Use VK_F6 instead')
  static const VK_F6 = 117;
  @Deprecated('Use VK_F7 instead')
  static const VK_F7 = 118;
  @Deprecated('Use VK_F8 instead')
  static const VK_F8 = 119;
  @Deprecated('Use VK_F9 instead')
  static const VK_F9 = 120;
  @Deprecated('Use VK_F10 instead')
  static const VK_F10 = 121;
  @Deprecated('Use VK_F11 instead')
  static const VK_F11 = 122;
  @Deprecated('Use VK_F12 instead')
  static const VK_F12 = 123;
  @Deprecated('Use VK_F13 instead')
  static const VK_F13 = 124;
  @Deprecated('Use VK_F14 instead')
  static const VK_F14 = 125;
  @Deprecated('Use VK_F15 instead')
  static const VK_F15 = 126;
  @Deprecated('Use VK_F16 instead')
  static const VK_F16 = 127;
  @Deprecated('Use VK_F17 instead')
  static const VK_F17 = 128;
  @Deprecated('Use VK_F18 instead')
  static const VK_F18 = 129;
  @Deprecated('Use VK_F19 instead')
  static const VK_F19 = 130;
  @Deprecated('Use VK_F20 instead')
  static const VK_F20 = 131;
  @Deprecated('Use VK_F21 instead')
  static const VK_F21 = 132;
  @Deprecated('Use VK_F22 instead')
  static const VK_F22 = 133;
  @Deprecated('Use VK_F23 instead')
  static const VK_F23 = 134;
  @Deprecated('Use VK_F24 instead')
  static const VK_F24 = 135;
  @Deprecated('Use VK_NAVIGATION_VIEW instead')
  static const VK_NAVIGATION_VIEW = 136;
  @Deprecated('Use VK_NAVIGATION_MENU instead')
  static const VK_NAVIGATION_MENU = 137;
  @Deprecated('Use VK_NAVIGATION_UP instead')
  static const VK_NAVIGATION_UP = 138;
  @Deprecated('Use VK_NAVIGATION_DOWN instead')
  static const VK_NAVIGATION_DOWN = 139;
  @Deprecated('Use VK_NAVIGATION_LEFT instead')
  static const VK_NAVIGATION_LEFT = 140;
  @Deprecated('Use VK_NAVIGATION_RIGHT instead')
  static const VK_NAVIGATION_RIGHT = 141;
  @Deprecated('Use VK_NAVIGATION_ACCEPT instead')
  static const VK_NAVIGATION_ACCEPT = 142;
  @Deprecated('Use VK_NAVIGATION_CANCEL instead')
  static const VK_NAVIGATION_CANCEL = 143;
  @Deprecated('Use VK_NUMLOCK instead')
  static const VK_NUMLOCK = 144;
  @Deprecated('Use VK_SCROLL instead')
  static const VK_SCROLL = 145;
  @Deprecated('Use VK_OEM_NEC_EQUAL instead')
  static const VK_OEM_NEC_EQUAL = 146;
  @Deprecated('Use VK_OEM_FJ_JISHO instead')
  static const VK_OEM_FJ_JISHO = 146;
  @Deprecated('Use VK_OEM_FJ_MASSHOU instead')
  static const VK_OEM_FJ_MASSHOU = 147;
  @Deprecated('Use VK_OEM_FJ_TOUROKU instead')
  static const VK_OEM_FJ_TOUROKU = 148;
  @Deprecated('Use VK_OEM_FJ_LOYA instead')
  static const VK_OEM_FJ_LOYA = 149;
  @Deprecated('Use VK_OEM_FJ_ROYA instead')
  static const VK_OEM_FJ_ROYA = 150;
  @Deprecated('Use VK_LSHIFT instead')
  static const VK_LSHIFT = 160;
  @Deprecated('Use VK_RSHIFT instead')
  static const VK_RSHIFT = 161;
  @Deprecated('Use VK_LCONTROL instead')
  static const VK_LCONTROL = 162;
  @Deprecated('Use VK_RCONTROL instead')
  static const VK_RCONTROL = 163;
  @Deprecated('Use VK_LMENU instead')
  static const VK_LMENU = 164;
  @Deprecated('Use VK_RMENU instead')
  static const VK_RMENU = 165;
  @Deprecated('Use VK_BROWSER_BACK instead')
  static const VK_BROWSER_BACK = 166;
  @Deprecated('Use VK_BROWSER_FORWARD instead')
  static const VK_BROWSER_FORWARD = 167;
  @Deprecated('Use VK_BROWSER_REFRESH instead')
  static const VK_BROWSER_REFRESH = 168;
  @Deprecated('Use VK_BROWSER_STOP instead')
  static const VK_BROWSER_STOP = 169;
  @Deprecated('Use VK_BROWSER_SEARCH instead')
  static const VK_BROWSER_SEARCH = 170;
  @Deprecated('Use VK_BROWSER_FAVORITES instead')
  static const VK_BROWSER_FAVORITES = 171;
  @Deprecated('Use VK_BROWSER_HOME instead')
  static const VK_BROWSER_HOME = 172;
  @Deprecated('Use VK_VOLUME_MUTE instead')
  static const VK_VOLUME_MUTE = 173;
  @Deprecated('Use VK_VOLUME_DOWN instead')
  static const VK_VOLUME_DOWN = 174;
  @Deprecated('Use VK_VOLUME_UP instead')
  static const VK_VOLUME_UP = 175;
  @Deprecated('Use VK_MEDIA_NEXT_TRACK instead')
  static const VK_MEDIA_NEXT_TRACK = 176;
  @Deprecated('Use VK_MEDIA_PREV_TRACK instead')
  static const VK_MEDIA_PREV_TRACK = 177;
  @Deprecated('Use VK_MEDIA_STOP instead')
  static const VK_MEDIA_STOP = 178;
  @Deprecated('Use VK_MEDIA_PLAY_PAUSE instead')
  static const VK_MEDIA_PLAY_PAUSE = 179;
  @Deprecated('Use VK_LAUNCH_MAIL instead')
  static const VK_LAUNCH_MAIL = 180;
  @Deprecated('Use VK_LAUNCH_MEDIA_SELECT instead')
  static const VK_LAUNCH_MEDIA_SELECT = 181;
  @Deprecated('Use VK_LAUNCH_APP1 instead')
  static const VK_LAUNCH_APP1 = 182;
  @Deprecated('Use VK_LAUNCH_APP2 instead')
  static const VK_LAUNCH_APP2 = 183;
  @Deprecated('Use VK_OEM_1 instead')
  static const VK_OEM_1 = 186;
  @Deprecated('Use VK_OEM_PLUS instead')
  static const VK_OEM_PLUS = 187;
  @Deprecated('Use VK_OEM_COMMA instead')
  static const VK_OEM_COMMA = 188;
  @Deprecated('Use VK_OEM_MINUS instead')
  static const VK_OEM_MINUS = 189;
  @Deprecated('Use VK_OEM_PERIOD instead')
  static const VK_OEM_PERIOD = 190;
  @Deprecated('Use VK_OEM_2 instead')
  static const VK_OEM_2 = 191;
  @Deprecated('Use VK_OEM_3 instead')
  static const VK_OEM_3 = 192;
  @Deprecated('Use VK_GAMEPAD_A instead')
  static const VK_GAMEPAD_A = 195;
  @Deprecated('Use VK_GAMEPAD_B instead')
  static const VK_GAMEPAD_B = 196;
  @Deprecated('Use VK_GAMEPAD_X instead')
  static const VK_GAMEPAD_X = 197;
  @Deprecated('Use VK_GAMEPAD_Y instead')
  static const VK_GAMEPAD_Y = 198;
  @Deprecated('Use VK_GAMEPAD_RIGHT_SHOULDER instead')
  static const VK_GAMEPAD_RIGHT_SHOULDER = 199;
  @Deprecated('Use VK_GAMEPAD_LEFT_SHOULDER instead')
  static const VK_GAMEPAD_LEFT_SHOULDER = 200;
  @Deprecated('Use VK_GAMEPAD_LEFT_TRIGGER instead')
  static const VK_GAMEPAD_LEFT_TRIGGER = 201;
  @Deprecated('Use VK_GAMEPAD_RIGHT_TRIGGER instead')
  static const VK_GAMEPAD_RIGHT_TRIGGER = 202;
  @Deprecated('Use VK_GAMEPAD_DPAD_UP instead')
  static const VK_GAMEPAD_DPAD_UP = 203;
  @Deprecated('Use VK_GAMEPAD_DPAD_DOWN instead')
  static const VK_GAMEPAD_DPAD_DOWN = 204;
  @Deprecated('Use VK_GAMEPAD_DPAD_LEFT instead')
  static const VK_GAMEPAD_DPAD_LEFT = 205;
  @Deprecated('Use VK_GAMEPAD_DPAD_RIGHT instead')
  static const VK_GAMEPAD_DPAD_RIGHT = 206;
  @Deprecated('Use VK_GAMEPAD_MENU instead')
  static const VK_GAMEPAD_MENU = 207;
  @Deprecated('Use VK_GAMEPAD_VIEW instead')
  static const VK_GAMEPAD_VIEW = 208;
  @Deprecated('Use VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON instead')
  static const VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON = 209;
  @Deprecated('Use VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON instead')
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON = 210;
  @Deprecated('Use VK_GAMEPAD_LEFT_THUMBSTICK_UP instead')
  static const VK_GAMEPAD_LEFT_THUMBSTICK_UP = 211;
  @Deprecated('Use VK_GAMEPAD_LEFT_THUMBSTICK_DOWN instead')
  static const VK_GAMEPAD_LEFT_THUMBSTICK_DOWN = 212;
  @Deprecated('Use VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT instead')
  static const VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT = 213;
  @Deprecated('Use VK_GAMEPAD_LEFT_THUMBSTICK_LEFT instead')
  static const VK_GAMEPAD_LEFT_THUMBSTICK_LEFT = 214;
  @Deprecated('Use VK_GAMEPAD_RIGHT_THUMBSTICK_UP instead')
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_UP = 215;
  @Deprecated('Use VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN instead')
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN = 216;
  @Deprecated('Use VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT instead')
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT = 217;
  @Deprecated('Use VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT instead')
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT = 218;
  @Deprecated('Use VK_OEM_4 instead')
  static const VK_OEM_4 = 219;
  @Deprecated('Use VK_OEM_5 instead')
  static const VK_OEM_5 = 220;
  @Deprecated('Use VK_OEM_6 instead')
  static const VK_OEM_6 = 221;
  @Deprecated('Use VK_OEM_7 instead')
  static const VK_OEM_7 = 222;
  @Deprecated('Use VK_OEM_8 instead')
  static const VK_OEM_8 = 223;
  @Deprecated('Use VK_OEM_AX instead')
  static const VK_OEM_AX = 225;
  @Deprecated('Use VK_OEM_102 instead')
  static const VK_OEM_102 = 226;
  @Deprecated('Use VK_ICO_HELP instead')
  static const VK_ICO_HELP = 227;
  @Deprecated('Use VK_ICO_00 instead')
  static const VK_ICO_00 = 228;
  @Deprecated('Use VK_PROCESSKEY instead')
  static const VK_PROCESSKEY = 229;
  @Deprecated('Use VK_ICO_CLEAR instead')
  static const VK_ICO_CLEAR = 230;
  @Deprecated('Use VK_PACKET instead')
  static const VK_PACKET = 231;
  @Deprecated('Use VK_OEM_RESET instead')
  static const VK_OEM_RESET = 233;
  @Deprecated('Use VK_OEM_JUMP instead')
  static const VK_OEM_JUMP = 234;
  @Deprecated('Use VK_OEM_PA1 instead')
  static const VK_OEM_PA1 = 235;
  @Deprecated('Use VK_OEM_PA2 instead')
  static const VK_OEM_PA2 = 236;
  @Deprecated('Use VK_OEM_PA3 instead')
  static const VK_OEM_PA3 = 237;
  @Deprecated('Use VK_OEM_WSCTRL instead')
  static const VK_OEM_WSCTRL = 238;
  @Deprecated('Use VK_OEM_CUSEL instead')
  static const VK_OEM_CUSEL = 239;
  @Deprecated('Use VK_OEM_ATTN instead')
  static const VK_OEM_ATTN = 240;
  @Deprecated('Use VK_OEM_FINISH instead')
  static const VK_OEM_FINISH = 241;
  @Deprecated('Use VK_OEM_COPY instead')
  static const VK_OEM_COPY = 242;
  @Deprecated('Use VK_OEM_AUTO instead')
  static const VK_OEM_AUTO = 243;
  @Deprecated('Use VK_OEM_ENLW instead')
  static const VK_OEM_ENLW = 244;
  @Deprecated('Use VK_OEM_BACKTAB instead')
  static const VK_OEM_BACKTAB = 245;
  @Deprecated('Use VK_ATTN instead')
  static const VK_ATTN = 246;
  @Deprecated('Use VK_CRSEL instead')
  static const VK_CRSEL = 247;
  @Deprecated('Use VK_EXSEL instead')
  static const VK_EXSEL = 248;
  @Deprecated('Use VK_EREOF instead')
  static const VK_EREOF = 249;
  @Deprecated('Use VK_PLAY instead')
  static const VK_PLAY = 250;
  @Deprecated('Use VK_ZOOM instead')
  static const VK_ZOOM = 251;
  @Deprecated('Use VK_NONAME instead')
  static const VK_NONAME = 252;
  @Deprecated('Use VK_PA1 instead')
  static const VK_PA1 = 253;
  @Deprecated('Use VK_OEM_CLEAR instead')
  static const VK_OEM_CLEAR = 254;
}

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_FLAGS(int _) implements int {
  @Deprecated('Use VS_FF_DEBUG instead')
  static const VS_FF_DEBUG = 1;
  @Deprecated('Use VS_FF_PRERELEASE instead')
  static const VS_FF_PRERELEASE = 2;
  @Deprecated('Use VS_FF_PATCHED instead')
  static const VS_FF_PATCHED = 4;
  @Deprecated('Use VS_FF_PRIVATEBUILD instead')
  static const VS_FF_PRIVATEBUILD = 8;
  @Deprecated('Use VS_FF_INFOINFERRED instead')
  static const VS_FF_INFOINFERRED = 16;
  @Deprecated('Use VS_FF_SPECIALBUILD instead')
  static const VS_FF_SPECIALBUILD = 32;
}

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_OS(int _) implements int {
  @Deprecated('Use VOS_UNKNOWN instead')
  static const VOS_UNKNOWN = 0;
  @Deprecated('Use VOS_DOS instead')
  static const VOS_DOS = 65536;
  @Deprecated('Use VOS_OS216 instead')
  static const VOS_OS216 = 131072;
  @Deprecated('Use VOS_OS232 instead')
  static const VOS_OS232 = 196608;
  @Deprecated('Use VOS_NT instead')
  static const VOS_NT = 262144;
  @Deprecated('Use VOS_WINCE instead')
  static const VOS_WINCE = 327680;
  @Deprecated('Use VOS__BASE instead')
  static const VOS__BASE = 0;
  @Deprecated('Use VOS__WINDOWS16 instead')
  static const VOS__WINDOWS16 = 1;
  @Deprecated('Use VOS__PM16 instead')
  static const VOS__PM16 = 2;
  @Deprecated('Use VOS__PM32 instead')
  static const VOS__PM32 = 3;
  @Deprecated('Use VOS__WINDOWS32 instead')
  static const VOS__WINDOWS32 = 4;
  @Deprecated('Use VOS_DOS_WINDOWS16 instead')
  static const VOS_DOS_WINDOWS16 = 65537;
  @Deprecated('Use VOS_DOS_WINDOWS32 instead')
  static const VOS_DOS_WINDOWS32 = 65540;
  @Deprecated('Use VOS_OS216_PM16 instead')
  static const VOS_OS216_PM16 = 131074;
  @Deprecated('Use VOS_OS232_PM32 instead')
  static const VOS_OS232_PM32 = 196611;
  @Deprecated('Use VOS_NT_WINDOWS32 instead')
  static const VOS_NT_WINDOWS32 = 262148;
}

/// {@category enum}
extension type const WAIT_EVENT(int _) implements int {
  @Deprecated('Use WAIT_OBJECT_0 instead')
  static const WAIT_OBJECT_0 = 0;
  @Deprecated('Use WAIT_ABANDONED instead')
  static const WAIT_ABANDONED = 128;
  @Deprecated('Use WAIT_ABANDONED_0 instead')
  static const WAIT_ABANDONED_0 = 128;
  @Deprecated('Use WAIT_IO_COMPLETION instead')
  static const WAIT_IO_COMPLETION = 192;
  @Deprecated('Use WAIT_TIMEOUT instead')
  static const WAIT_TIMEOUT = 258;
  @Deprecated('Use WAIT_FAILED instead')
  static const WAIT_FAILED = 4294967295;
}

/// Contains flags that define the comparison to perform when using the
/// IWbemClassObject::CompareTo method.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/ne-wbemcli-wbem_comparison_flag>.
///
/// {@category enum}
extension type const WBEM_COMPARISON_FLAG(int _) implements int {
  /// Compare all features.
  @Deprecated('Use WBEM_COMPARISON_INCLUDE_ALL instead')
  static const WBEM_COMPARISON_INCLUDE_ALL = 0;

  /// Ignore all qualifiers (including <b>Key</b> and <b>Dynamic</b>) in
  /// comparison.
  @Deprecated('Use WBEM_FLAG_IGNORE_QUALIFIERS instead')
  static const WBEM_FLAG_IGNORE_QUALIFIERS = 1;

  /// Ignore the source of the objects, namely the server and the namespace they
  /// came from, in comparison to other objects.
  @Deprecated('Use WBEM_FLAG_IGNORE_OBJECT_SOURCE instead')
  static const WBEM_FLAG_IGNORE_OBJECT_SOURCE = 2;

  /// Ignore default values of properties.
  @Deprecated('Use WBEM_FLAG_IGNORE_DEFAULT_VALUES instead')
  static const WBEM_FLAG_IGNORE_DEFAULT_VALUES = 4;

  /// Assume that the objects being compared are instances of the same class.
  @Deprecated('Use WBEM_FLAG_IGNORE_CLASS instead')
  static const WBEM_FLAG_IGNORE_CLASS = 8;

  /// Compare string values in a case-insensitive manner.
  @Deprecated('Use WBEM_FLAG_IGNORE_CASE instead')
  static const WBEM_FLAG_IGNORE_CASE = 16;

  /// Ignore qualifier flavors.
  @Deprecated('Use WBEM_FLAG_IGNORE_FLAVOR instead')
  static const WBEM_FLAG_IGNORE_FLAVOR = 32;
}

/// Contains flags used with the IWbemClassObject::GetNames method.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/ne-wbemcli-wbem_condition_flag_type>.
///
/// {@category enum}
extension type const WBEM_CONDITION_FLAG_TYPE(int _) implements int {
  @Deprecated('Use WBEM_FLAG_ALWAYS instead')
  static const WBEM_FLAG_ALWAYS = 0;
  @Deprecated('Use WBEM_FLAG_ONLY_IF_TRUE instead')
  static const WBEM_FLAG_ONLY_IF_TRUE = 1;
  @Deprecated('Use WBEM_FLAG_ONLY_IF_FALSE instead')
  static const WBEM_FLAG_ONLY_IF_FALSE = 2;
  @Deprecated('Use WBEM_FLAG_ONLY_IF_IDENTICAL instead')
  static const WBEM_FLAG_ONLY_IF_IDENTICAL = 3;
  @Deprecated('Use WBEM_MASK_PRIMARY_CONDITION instead')
  static const WBEM_MASK_PRIMARY_CONDITION = 3;
  @Deprecated('Use WBEM_FLAG_KEYS_ONLY instead')
  static const WBEM_FLAG_KEYS_ONLY = 4;
  @Deprecated('Use WBEM_FLAG_REFS_ONLY instead')
  static const WBEM_FLAG_REFS_ONLY = 8;
  @Deprecated('Use WBEM_FLAG_LOCAL_ONLY instead')
  static const WBEM_FLAG_LOCAL_ONLY = 16;
  @Deprecated('Use WBEM_FLAG_PROPAGATED_ONLY instead')
  static const WBEM_FLAG_PROPAGATED_ONLY = 32;
  @Deprecated('Use WBEM_FLAG_SYSTEM_ONLY instead')
  static const WBEM_FLAG_SYSTEM_ONLY = 48;
  @Deprecated('Use WBEM_FLAG_NONSYSTEM_ONLY instead')
  static const WBEM_FLAG_NONSYSTEM_ONLY = 64;
  @Deprecated('Use WBEM_MASK_CONDITION_ORIGIN instead')
  static const WBEM_MASK_CONDITION_ORIGIN = 112;
  @Deprecated('Use WBEM_FLAG_CLASS_OVERRIDES_ONLY instead')
  static const WBEM_FLAG_CLASS_OVERRIDES_ONLY = 256;
  @Deprecated('Use WBEM_FLAG_CLASS_LOCAL_AND_OVERRIDES instead')
  static const WBEM_FLAG_CLASS_LOCAL_AND_OVERRIDES = WBEM_CONDITION_FLAG_TYPE(
    512,
  );
  @Deprecated('Use WBEM_MASK_CLASS_CONDITION instead')
  static const WBEM_MASK_CLASS_CONDITION = 768;
}

/// {@category enum}
extension type const WIN32_ERROR(int _) implements int {
  @Deprecated('Use NO_ERROR instead')
  static const NO_ERROR = 0;
  @Deprecated('Use ERROR_EXPECTED_SECTION_NAME instead')
  static const ERROR_EXPECTED_SECTION_NAME = 3758096384;
  @Deprecated('Use ERROR_BAD_SECTION_NAME_LINE instead')
  static const ERROR_BAD_SECTION_NAME_LINE = 3758096385;
  @Deprecated('Use ERROR_SECTION_NAME_TOO_LONG instead')
  static const ERROR_SECTION_NAME_TOO_LONG = 3758096386;
  @Deprecated('Use ERROR_GENERAL_SYNTAX instead')
  static const ERROR_GENERAL_SYNTAX = 3758096387;
  @Deprecated('Use ERROR_WRONG_INF_STYLE instead')
  static const ERROR_WRONG_INF_STYLE = 3758096640;
  @Deprecated('Use ERROR_SECTION_NOT_FOUND instead')
  static const ERROR_SECTION_NOT_FOUND = 3758096641;
  @Deprecated('Use ERROR_LINE_NOT_FOUND instead')
  static const ERROR_LINE_NOT_FOUND = 3758096642;
  @Deprecated('Use ERROR_NO_BACKUP instead')
  static const ERROR_NO_BACKUP = 3758096643;
  @Deprecated('Use ERROR_NO_ASSOCIATED_CLASS instead')
  static const ERROR_NO_ASSOCIATED_CLASS = 3758096896;
  @Deprecated('Use ERROR_CLASS_MISMATCH instead')
  static const ERROR_CLASS_MISMATCH = 3758096897;
  @Deprecated('Use ERROR_DUPLICATE_FOUND instead')
  static const ERROR_DUPLICATE_FOUND = 3758096898;
  @Deprecated('Use ERROR_NO_DRIVER_SELECTED instead')
  static const ERROR_NO_DRIVER_SELECTED = 3758096899;
  @Deprecated('Use ERROR_KEY_DOES_NOT_EXIST instead')
  static const ERROR_KEY_DOES_NOT_EXIST = 3758096900;
  @Deprecated('Use ERROR_INVALID_DEVINST_NAME instead')
  static const ERROR_INVALID_DEVINST_NAME = 3758096901;
  @Deprecated('Use ERROR_INVALID_CLASS instead')
  static const ERROR_INVALID_CLASS = 3758096902;
  @Deprecated('Use ERROR_DEVINST_ALREADY_EXISTS instead')
  static const ERROR_DEVINST_ALREADY_EXISTS = 3758096903;
  @Deprecated('Use ERROR_DEVINFO_NOT_REGISTERED instead')
  static const ERROR_DEVINFO_NOT_REGISTERED = 3758096904;
  @Deprecated('Use ERROR_INVALID_REG_PROPERTY instead')
  static const ERROR_INVALID_REG_PROPERTY = 3758096905;
  @Deprecated('Use ERROR_NO_INF instead')
  static const ERROR_NO_INF = 3758096906;
  @Deprecated('Use ERROR_NO_SUCH_DEVINST instead')
  static const ERROR_NO_SUCH_DEVINST = 3758096907;
  @Deprecated('Use ERROR_CANT_LOAD_CLASS_ICON instead')
  static const ERROR_CANT_LOAD_CLASS_ICON = 3758096908;
  @Deprecated('Use ERROR_INVALID_CLASS_INSTALLER instead')
  static const ERROR_INVALID_CLASS_INSTALLER = 3758096909;
  @Deprecated('Use ERROR_DI_DO_DEFAULT instead')
  static const ERROR_DI_DO_DEFAULT = 3758096910;
  @Deprecated('Use ERROR_DI_NOFILECOPY instead')
  static const ERROR_DI_NOFILECOPY = 3758096911;
  @Deprecated('Use ERROR_INVALID_HWPROFILE instead')
  static const ERROR_INVALID_HWPROFILE = 3758096912;
  @Deprecated('Use ERROR_NO_DEVICE_SELECTED instead')
  static const ERROR_NO_DEVICE_SELECTED = 3758096913;
  @Deprecated('Use ERROR_DEVINFO_LIST_LOCKED instead')
  static const ERROR_DEVINFO_LIST_LOCKED = 3758096914;
  @Deprecated('Use ERROR_DEVINFO_DATA_LOCKED instead')
  static const ERROR_DEVINFO_DATA_LOCKED = 3758096915;
  @Deprecated('Use ERROR_DI_BAD_PATH instead')
  static const ERROR_DI_BAD_PATH = 3758096916;
  @Deprecated('Use ERROR_NO_CLASSINSTALL_PARAMS instead')
  static const ERROR_NO_CLASSINSTALL_PARAMS = 3758096917;
  @Deprecated('Use ERROR_FILEQUEUE_LOCKED instead')
  static const ERROR_FILEQUEUE_LOCKED = 3758096918;
  @Deprecated('Use ERROR_BAD_SERVICE_INSTALLSECT instead')
  static const ERROR_BAD_SERVICE_INSTALLSECT = 3758096919;
  @Deprecated('Use ERROR_NO_CLASS_DRIVER_LIST instead')
  static const ERROR_NO_CLASS_DRIVER_LIST = 3758096920;
  @Deprecated('Use ERROR_NO_ASSOCIATED_SERVICE instead')
  static const ERROR_NO_ASSOCIATED_SERVICE = 3758096921;
  @Deprecated('Use ERROR_NO_DEFAULT_DEVICE_INTERFACE instead')
  static const ERROR_NO_DEFAULT_DEVICE_INTERFACE = 3758096922;
  @Deprecated('Use ERROR_DEVICE_INTERFACE_ACTIVE instead')
  static const ERROR_DEVICE_INTERFACE_ACTIVE = 3758096923;
  @Deprecated('Use ERROR_DEVICE_INTERFACE_REMOVED instead')
  static const ERROR_DEVICE_INTERFACE_REMOVED = 3758096924;
  @Deprecated('Use ERROR_BAD_INTERFACE_INSTALLSECT instead')
  static const ERROR_BAD_INTERFACE_INSTALLSECT = 3758096925;
  @Deprecated('Use ERROR_NO_SUCH_INTERFACE_CLASS instead')
  static const ERROR_NO_SUCH_INTERFACE_CLASS = 3758096926;
  @Deprecated('Use ERROR_INVALID_REFERENCE_STRING instead')
  static const ERROR_INVALID_REFERENCE_STRING = 3758096927;
  @Deprecated('Use ERROR_INVALID_MACHINENAME instead')
  static const ERROR_INVALID_MACHINENAME = 3758096928;
  @Deprecated('Use ERROR_REMOTE_COMM_FAILURE instead')
  static const ERROR_REMOTE_COMM_FAILURE = 3758096929;
  @Deprecated('Use ERROR_MACHINE_UNAVAILABLE instead')
  static const ERROR_MACHINE_UNAVAILABLE = 3758096930;
  @Deprecated('Use ERROR_NO_CONFIGMGR_SERVICES instead')
  static const ERROR_NO_CONFIGMGR_SERVICES = 3758096931;
  @Deprecated('Use ERROR_INVALID_PROPPAGE_PROVIDER instead')
  static const ERROR_INVALID_PROPPAGE_PROVIDER = 3758096932;
  @Deprecated('Use ERROR_NO_SUCH_DEVICE_INTERFACE instead')
  static const ERROR_NO_SUCH_DEVICE_INTERFACE = 3758096933;
  @Deprecated('Use ERROR_DI_POSTPROCESSING_REQUIRED instead')
  static const ERROR_DI_POSTPROCESSING_REQUIRED = 3758096934;
  @Deprecated('Use ERROR_INVALID_COINSTALLER instead')
  static const ERROR_INVALID_COINSTALLER = 3758096935;
  @Deprecated('Use ERROR_NO_COMPAT_DRIVERS instead')
  static const ERROR_NO_COMPAT_DRIVERS = 3758096936;
  @Deprecated('Use ERROR_NO_DEVICE_ICON instead')
  static const ERROR_NO_DEVICE_ICON = 3758096937;
  @Deprecated('Use ERROR_INVALID_INF_LOGCONFIG instead')
  static const ERROR_INVALID_INF_LOGCONFIG = 3758096938;
  @Deprecated('Use ERROR_DI_DONT_INSTALL instead')
  static const ERROR_DI_DONT_INSTALL = 3758096939;
  @Deprecated('Use ERROR_INVALID_FILTER_DRIVER instead')
  static const ERROR_INVALID_FILTER_DRIVER = 3758096940;
  @Deprecated('Use ERROR_NON_WINDOWS_NT_DRIVER instead')
  static const ERROR_NON_WINDOWS_NT_DRIVER = 3758096941;
  @Deprecated('Use ERROR_NON_WINDOWS_DRIVER instead')
  static const ERROR_NON_WINDOWS_DRIVER = 3758096942;
  @Deprecated('Use ERROR_NO_CATALOG_FOR_OEM_INF instead')
  static const ERROR_NO_CATALOG_FOR_OEM_INF = 3758096943;
  @Deprecated('Use ERROR_DEVINSTALL_QUEUE_NONNATIVE instead')
  static const ERROR_DEVINSTALL_QUEUE_NONNATIVE = 3758096944;
  @Deprecated('Use ERROR_NOT_DISABLEABLE instead')
  static const ERROR_NOT_DISABLEABLE = 3758096945;
  @Deprecated('Use ERROR_CANT_REMOVE_DEVINST instead')
  static const ERROR_CANT_REMOVE_DEVINST = 3758096946;
  @Deprecated('Use ERROR_INVALID_TARGET instead')
  static const ERROR_INVALID_TARGET = 3758096947;
  @Deprecated('Use ERROR_DRIVER_NONNATIVE instead')
  static const ERROR_DRIVER_NONNATIVE = 3758096948;
  @Deprecated('Use ERROR_IN_WOW64 instead')
  static const ERROR_IN_WOW64 = 3758096949;
  @Deprecated('Use ERROR_SET_SYSTEM_RESTORE_POINT instead')
  static const ERROR_SET_SYSTEM_RESTORE_POINT = 3758096950;
  @Deprecated('Use ERROR_SCE_DISABLED instead')
  static const ERROR_SCE_DISABLED = 3758096952;
  @Deprecated('Use ERROR_UNKNOWN_EXCEPTION instead')
  static const ERROR_UNKNOWN_EXCEPTION = 3758096953;
  @Deprecated('Use ERROR_PNP_REGISTRY_ERROR instead')
  static const ERROR_PNP_REGISTRY_ERROR = 3758096954;
  @Deprecated('Use ERROR_REMOTE_REQUEST_UNSUPPORTED instead')
  static const ERROR_REMOTE_REQUEST_UNSUPPORTED = 3758096955;
  @Deprecated('Use ERROR_NOT_AN_INSTALLED_OEM_INF instead')
  static const ERROR_NOT_AN_INSTALLED_OEM_INF = 3758096956;
  @Deprecated('Use ERROR_INF_IN_USE_BY_DEVICES instead')
  static const ERROR_INF_IN_USE_BY_DEVICES = 3758096957;
  @Deprecated('Use ERROR_DI_FUNCTION_OBSOLETE instead')
  static const ERROR_DI_FUNCTION_OBSOLETE = 3758096958;
  @Deprecated('Use ERROR_NO_AUTHENTICODE_CATALOG instead')
  static const ERROR_NO_AUTHENTICODE_CATALOG = 3758096959;
  @Deprecated('Use ERROR_AUTHENTICODE_DISALLOWED instead')
  static const ERROR_AUTHENTICODE_DISALLOWED = 3758096960;
  @Deprecated('Use ERROR_AUTHENTICODE_TRUSTED_PUBLISHER instead')
  static const ERROR_AUTHENTICODE_TRUSTED_PUBLISHER = 3758096961;
  @Deprecated('Use ERROR_AUTHENTICODE_TRUST_NOT_ESTABLISHED instead')
  static const ERROR_AUTHENTICODE_TRUST_NOT_ESTABLISHED = WIN32_ERROR(
    3758096962,
  );
  @Deprecated('Use ERROR_AUTHENTICODE_PUBLISHER_NOT_TRUSTED instead')
  static const ERROR_AUTHENTICODE_PUBLISHER_NOT_TRUSTED = WIN32_ERROR(
    3758096963,
  );
  @Deprecated('Use ERROR_SIGNATURE_OSATTRIBUTE_MISMATCH instead')
  static const ERROR_SIGNATURE_OSATTRIBUTE_MISMATCH = 3758096964;
  @Deprecated('Use ERROR_ONLY_VALIDATE_VIA_AUTHENTICODE instead')
  static const ERROR_ONLY_VALIDATE_VIA_AUTHENTICODE = 3758096965;
  @Deprecated('Use ERROR_DEVICE_INSTALLER_NOT_READY instead')
  static const ERROR_DEVICE_INSTALLER_NOT_READY = 3758096966;
  @Deprecated('Use ERROR_DRIVER_STORE_ADD_FAILED instead')
  static const ERROR_DRIVER_STORE_ADD_FAILED = 3758096967;
  @Deprecated('Use ERROR_DEVICE_INSTALL_BLOCKED instead')
  static const ERROR_DEVICE_INSTALL_BLOCKED = 3758096968;
  @Deprecated('Use ERROR_DRIVER_INSTALL_BLOCKED instead')
  static const ERROR_DRIVER_INSTALL_BLOCKED = 3758096969;
  @Deprecated('Use ERROR_WRONG_INF_TYPE instead')
  static const ERROR_WRONG_INF_TYPE = 3758096970;
  @Deprecated('Use ERROR_FILE_HASH_NOT_IN_CATALOG instead')
  static const ERROR_FILE_HASH_NOT_IN_CATALOG = 3758096971;
  @Deprecated('Use ERROR_DRIVER_STORE_DELETE_FAILED instead')
  static const ERROR_DRIVER_STORE_DELETE_FAILED = 3758096972;
  @Deprecated('Use ERROR_UNRECOVERABLE_STACK_OVERFLOW instead')
  static const ERROR_UNRECOVERABLE_STACK_OVERFLOW = 3758097152;
  @Deprecated('Use ERROR_NO_DEFAULT_INTERFACE_DEVICE instead')
  static const ERROR_NO_DEFAULT_INTERFACE_DEVICE = 3758096922;
  @Deprecated('Use ERROR_INTERFACE_DEVICE_ACTIVE instead')
  static const ERROR_INTERFACE_DEVICE_ACTIVE = 3758096923;
  @Deprecated('Use ERROR_INTERFACE_DEVICE_REMOVED instead')
  static const ERROR_INTERFACE_DEVICE_REMOVED = 3758096924;
  @Deprecated('Use ERROR_NO_SUCH_INTERFACE_DEVICE instead')
  static const ERROR_NO_SUCH_INTERFACE_DEVICE = 3758096933;
  @Deprecated('Use ERROR_NOT_INSTALLED instead')
  static const ERROR_NOT_INSTALLED = 3758100480;
  @Deprecated('Use ERROR_SUCCESS instead')
  static const ERROR_SUCCESS = 0;
  @Deprecated('Use ERROR_INVALID_FUNCTION instead')
  static const ERROR_INVALID_FUNCTION = 1;
  @Deprecated('Use ERROR_FILE_NOT_FOUND instead')
  static const ERROR_FILE_NOT_FOUND = 2;
  @Deprecated('Use ERROR_PATH_NOT_FOUND instead')
  static const ERROR_PATH_NOT_FOUND = 3;
  @Deprecated('Use ERROR_TOO_MANY_OPEN_FILES instead')
  static const ERROR_TOO_MANY_OPEN_FILES = 4;
  @Deprecated('Use ERROR_ACCESS_DENIED instead')
  static const ERROR_ACCESS_DENIED = 5;
  @Deprecated('Use ERROR_INVALID_HANDLE instead')
  static const ERROR_INVALID_HANDLE = 6;
  @Deprecated('Use ERROR_ARENA_TRASHED instead')
  static const ERROR_ARENA_TRASHED = 7;
  @Deprecated('Use ERROR_NOT_ENOUGH_MEMORY instead')
  static const ERROR_NOT_ENOUGH_MEMORY = 8;
  @Deprecated('Use ERROR_INVALID_BLOCK instead')
  static const ERROR_INVALID_BLOCK = 9;
  @Deprecated('Use ERROR_BAD_ENVIRONMENT instead')
  static const ERROR_BAD_ENVIRONMENT = 10;
  @Deprecated('Use ERROR_BAD_FORMAT instead')
  static const ERROR_BAD_FORMAT = 11;
  @Deprecated('Use ERROR_INVALID_ACCESS instead')
  static const ERROR_INVALID_ACCESS = 12;
  @Deprecated('Use ERROR_INVALID_DATA instead')
  static const ERROR_INVALID_DATA = 13;
  @Deprecated('Use ERROR_OUTOFMEMORY instead')
  static const ERROR_OUTOFMEMORY = 14;
  @Deprecated('Use ERROR_INVALID_DRIVE instead')
  static const ERROR_INVALID_DRIVE = 15;
  @Deprecated('Use ERROR_CURRENT_DIRECTORY instead')
  static const ERROR_CURRENT_DIRECTORY = 16;
  @Deprecated('Use ERROR_NOT_SAME_DEVICE instead')
  static const ERROR_NOT_SAME_DEVICE = 17;
  @Deprecated('Use ERROR_NO_MORE_FILES instead')
  static const ERROR_NO_MORE_FILES = 18;
  @Deprecated('Use ERROR_WRITE_PROTECT instead')
  static const ERROR_WRITE_PROTECT = 19;
  @Deprecated('Use ERROR_BAD_UNIT instead')
  static const ERROR_BAD_UNIT = 20;
  @Deprecated('Use ERROR_NOT_READY instead')
  static const ERROR_NOT_READY = 21;
  @Deprecated('Use ERROR_BAD_COMMAND instead')
  static const ERROR_BAD_COMMAND = 22;
  @Deprecated('Use ERROR_CRC instead')
  static const ERROR_CRC = 23;
  @Deprecated('Use ERROR_BAD_LENGTH instead')
  static const ERROR_BAD_LENGTH = 24;
  @Deprecated('Use ERROR_SEEK instead')
  static const ERROR_SEEK = 25;
  @Deprecated('Use ERROR_NOT_DOS_DISK instead')
  static const ERROR_NOT_DOS_DISK = 26;
  @Deprecated('Use ERROR_SECTOR_NOT_FOUND instead')
  static const ERROR_SECTOR_NOT_FOUND = 27;
  @Deprecated('Use ERROR_OUT_OF_PAPER instead')
  static const ERROR_OUT_OF_PAPER = 28;
  @Deprecated('Use ERROR_WRITE_FAULT instead')
  static const ERROR_WRITE_FAULT = 29;
  @Deprecated('Use ERROR_READ_FAULT instead')
  static const ERROR_READ_FAULT = 30;
  @Deprecated('Use ERROR_GEN_FAILURE instead')
  static const ERROR_GEN_FAILURE = 31;
  @Deprecated('Use ERROR_SHARING_VIOLATION instead')
  static const ERROR_SHARING_VIOLATION = 32;
  @Deprecated('Use ERROR_LOCK_VIOLATION instead')
  static const ERROR_LOCK_VIOLATION = 33;
  @Deprecated('Use ERROR_WRONG_DISK instead')
  static const ERROR_WRONG_DISK = 34;
  @Deprecated('Use ERROR_SHARING_BUFFER_EXCEEDED instead')
  static const ERROR_SHARING_BUFFER_EXCEEDED = 36;
  @Deprecated('Use ERROR_HANDLE_EOF instead')
  static const ERROR_HANDLE_EOF = 38;
  @Deprecated('Use ERROR_HANDLE_DISK_FULL instead')
  static const ERROR_HANDLE_DISK_FULL = 39;
  @Deprecated('Use ERROR_NOT_SUPPORTED instead')
  static const ERROR_NOT_SUPPORTED = 50;
  @Deprecated('Use ERROR_REM_NOT_LIST instead')
  static const ERROR_REM_NOT_LIST = 51;
  @Deprecated('Use ERROR_DUP_NAME instead')
  static const ERROR_DUP_NAME = 52;
  @Deprecated('Use ERROR_BAD_NETPATH instead')
  static const ERROR_BAD_NETPATH = 53;
  @Deprecated('Use ERROR_NETWORK_BUSY instead')
  static const ERROR_NETWORK_BUSY = 54;
  @Deprecated('Use ERROR_DEV_NOT_EXIST instead')
  static const ERROR_DEV_NOT_EXIST = 55;
  @Deprecated('Use ERROR_TOO_MANY_CMDS instead')
  static const ERROR_TOO_MANY_CMDS = 56;
  @Deprecated('Use ERROR_ADAP_HDW_ERR instead')
  static const ERROR_ADAP_HDW_ERR = 57;
  @Deprecated('Use ERROR_BAD_NET_RESP instead')
  static const ERROR_BAD_NET_RESP = 58;
  @Deprecated('Use ERROR_UNEXP_NET_ERR instead')
  static const ERROR_UNEXP_NET_ERR = 59;
  @Deprecated('Use ERROR_BAD_REM_ADAP instead')
  static const ERROR_BAD_REM_ADAP = 60;
  @Deprecated('Use ERROR_PRINTQ_FULL instead')
  static const ERROR_PRINTQ_FULL = 61;
  @Deprecated('Use ERROR_NO_SPOOL_SPACE instead')
  static const ERROR_NO_SPOOL_SPACE = 62;
  @Deprecated('Use ERROR_PRINT_CANCELLED instead')
  static const ERROR_PRINT_CANCELLED = 63;
  @Deprecated('Use ERROR_NETNAME_DELETED instead')
  static const ERROR_NETNAME_DELETED = 64;
  @Deprecated('Use ERROR_NETWORK_ACCESS_DENIED instead')
  static const ERROR_NETWORK_ACCESS_DENIED = 65;
  @Deprecated('Use ERROR_BAD_DEV_TYPE instead')
  static const ERROR_BAD_DEV_TYPE = 66;
  @Deprecated('Use ERROR_BAD_NET_NAME instead')
  static const ERROR_BAD_NET_NAME = 67;
  @Deprecated('Use ERROR_TOO_MANY_NAMES instead')
  static const ERROR_TOO_MANY_NAMES = 68;
  @Deprecated('Use ERROR_TOO_MANY_SESS instead')
  static const ERROR_TOO_MANY_SESS = 69;
  @Deprecated('Use ERROR_SHARING_PAUSED instead')
  static const ERROR_SHARING_PAUSED = 70;
  @Deprecated('Use ERROR_REQ_NOT_ACCEP instead')
  static const ERROR_REQ_NOT_ACCEP = 71;
  @Deprecated('Use ERROR_REDIR_PAUSED instead')
  static const ERROR_REDIR_PAUSED = 72;
  @Deprecated('Use ERROR_FILE_EXISTS instead')
  static const ERROR_FILE_EXISTS = 80;
  @Deprecated('Use ERROR_CANNOT_MAKE instead')
  static const ERROR_CANNOT_MAKE = 82;
  @Deprecated('Use ERROR_FAIL_I24 instead')
  static const ERROR_FAIL_I24 = 83;
  @Deprecated('Use ERROR_OUT_OF_STRUCTURES instead')
  static const ERROR_OUT_OF_STRUCTURES = 84;
  @Deprecated('Use ERROR_ALREADY_ASSIGNED instead')
  static const ERROR_ALREADY_ASSIGNED = 85;
  @Deprecated('Use ERROR_INVALID_PASSWORD instead')
  static const ERROR_INVALID_PASSWORD = 86;
  @Deprecated('Use ERROR_INVALID_PARAMETER instead')
  static const ERROR_INVALID_PARAMETER = 87;
  @Deprecated('Use ERROR_NET_WRITE_FAULT instead')
  static const ERROR_NET_WRITE_FAULT = 88;
  @Deprecated('Use ERROR_NO_PROC_SLOTS instead')
  static const ERROR_NO_PROC_SLOTS = 89;
  @Deprecated('Use ERROR_TOO_MANY_SEMAPHORES instead')
  static const ERROR_TOO_MANY_SEMAPHORES = 100;
  @Deprecated('Use ERROR_EXCL_SEM_ALREADY_OWNED instead')
  static const ERROR_EXCL_SEM_ALREADY_OWNED = 101;
  @Deprecated('Use ERROR_SEM_IS_SET instead')
  static const ERROR_SEM_IS_SET = 102;
  @Deprecated('Use ERROR_TOO_MANY_SEM_REQUESTS instead')
  static const ERROR_TOO_MANY_SEM_REQUESTS = 103;
  @Deprecated('Use ERROR_INVALID_AT_INTERRUPT_TIME instead')
  static const ERROR_INVALID_AT_INTERRUPT_TIME = 104;
  @Deprecated('Use ERROR_SEM_OWNER_DIED instead')
  static const ERROR_SEM_OWNER_DIED = 105;
  @Deprecated('Use ERROR_SEM_USER_LIMIT instead')
  static const ERROR_SEM_USER_LIMIT = 106;
  @Deprecated('Use ERROR_DISK_CHANGE instead')
  static const ERROR_DISK_CHANGE = 107;
  @Deprecated('Use ERROR_DRIVE_LOCKED instead')
  static const ERROR_DRIVE_LOCKED = 108;
  @Deprecated('Use ERROR_BROKEN_PIPE instead')
  static const ERROR_BROKEN_PIPE = 109;
  @Deprecated('Use ERROR_OPEN_FAILED instead')
  static const ERROR_OPEN_FAILED = 110;
  @Deprecated('Use ERROR_BUFFER_OVERFLOW instead')
  static const ERROR_BUFFER_OVERFLOW = 111;
  @Deprecated('Use ERROR_DISK_FULL instead')
  static const ERROR_DISK_FULL = 112;
  @Deprecated('Use ERROR_NO_MORE_SEARCH_HANDLES instead')
  static const ERROR_NO_MORE_SEARCH_HANDLES = 113;
  @Deprecated('Use ERROR_INVALID_TARGET_HANDLE instead')
  static const ERROR_INVALID_TARGET_HANDLE = 114;
  @Deprecated('Use ERROR_INVALID_CATEGORY instead')
  static const ERROR_INVALID_CATEGORY = 117;
  @Deprecated('Use ERROR_INVALID_VERIFY_SWITCH instead')
  static const ERROR_INVALID_VERIFY_SWITCH = 118;
  @Deprecated('Use ERROR_BAD_DRIVER_LEVEL instead')
  static const ERROR_BAD_DRIVER_LEVEL = 119;
  @Deprecated('Use ERROR_CALL_NOT_IMPLEMENTED instead')
  static const ERROR_CALL_NOT_IMPLEMENTED = 120;
  @Deprecated('Use ERROR_SEM_TIMEOUT instead')
  static const ERROR_SEM_TIMEOUT = 121;
  @Deprecated('Use ERROR_INSUFFICIENT_BUFFER instead')
  static const ERROR_INSUFFICIENT_BUFFER = 122;
  @Deprecated('Use ERROR_INVALID_NAME instead')
  static const ERROR_INVALID_NAME = 123;
  @Deprecated('Use ERROR_INVALID_LEVEL instead')
  static const ERROR_INVALID_LEVEL = 124;
  @Deprecated('Use ERROR_NO_VOLUME_LABEL instead')
  static const ERROR_NO_VOLUME_LABEL = 125;
  @Deprecated('Use ERROR_MOD_NOT_FOUND instead')
  static const ERROR_MOD_NOT_FOUND = 126;
  @Deprecated('Use ERROR_PROC_NOT_FOUND instead')
  static const ERROR_PROC_NOT_FOUND = 127;
  @Deprecated('Use ERROR_WAIT_NO_CHILDREN instead')
  static const ERROR_WAIT_NO_CHILDREN = 128;
  @Deprecated('Use ERROR_CHILD_NOT_COMPLETE instead')
  static const ERROR_CHILD_NOT_COMPLETE = 129;
  @Deprecated('Use ERROR_DIRECT_ACCESS_HANDLE instead')
  static const ERROR_DIRECT_ACCESS_HANDLE = 130;
  @Deprecated('Use ERROR_NEGATIVE_SEEK instead')
  static const ERROR_NEGATIVE_SEEK = 131;
  @Deprecated('Use ERROR_SEEK_ON_DEVICE instead')
  static const ERROR_SEEK_ON_DEVICE = 132;
  @Deprecated('Use ERROR_IS_JOIN_TARGET instead')
  static const ERROR_IS_JOIN_TARGET = 133;
  @Deprecated('Use ERROR_IS_JOINED instead')
  static const ERROR_IS_JOINED = 134;
  @Deprecated('Use ERROR_IS_SUBSTED instead')
  static const ERROR_IS_SUBSTED = 135;
  @Deprecated('Use ERROR_NOT_JOINED instead')
  static const ERROR_NOT_JOINED = 136;
  @Deprecated('Use ERROR_NOT_SUBSTED instead')
  static const ERROR_NOT_SUBSTED = 137;
  @Deprecated('Use ERROR_JOIN_TO_JOIN instead')
  static const ERROR_JOIN_TO_JOIN = 138;
  @Deprecated('Use ERROR_SUBST_TO_SUBST instead')
  static const ERROR_SUBST_TO_SUBST = 139;
  @Deprecated('Use ERROR_JOIN_TO_SUBST instead')
  static const ERROR_JOIN_TO_SUBST = 140;
  @Deprecated('Use ERROR_SUBST_TO_JOIN instead')
  static const ERROR_SUBST_TO_JOIN = 141;
  @Deprecated('Use ERROR_BUSY_DRIVE instead')
  static const ERROR_BUSY_DRIVE = 142;
  @Deprecated('Use ERROR_SAME_DRIVE instead')
  static const ERROR_SAME_DRIVE = 143;
  @Deprecated('Use ERROR_DIR_NOT_ROOT instead')
  static const ERROR_DIR_NOT_ROOT = 144;
  @Deprecated('Use ERROR_DIR_NOT_EMPTY instead')
  static const ERROR_DIR_NOT_EMPTY = 145;
  @Deprecated('Use ERROR_IS_SUBST_PATH instead')
  static const ERROR_IS_SUBST_PATH = 146;
  @Deprecated('Use ERROR_IS_JOIN_PATH instead')
  static const ERROR_IS_JOIN_PATH = 147;
  @Deprecated('Use ERROR_PATH_BUSY instead')
  static const ERROR_PATH_BUSY = 148;
  @Deprecated('Use ERROR_IS_SUBST_TARGET instead')
  static const ERROR_IS_SUBST_TARGET = 149;
  @Deprecated('Use ERROR_SYSTEM_TRACE instead')
  static const ERROR_SYSTEM_TRACE = 150;
  @Deprecated('Use ERROR_INVALID_EVENT_COUNT instead')
  static const ERROR_INVALID_EVENT_COUNT = 151;
  @Deprecated('Use ERROR_TOO_MANY_MUXWAITERS instead')
  static const ERROR_TOO_MANY_MUXWAITERS = 152;
  @Deprecated('Use ERROR_INVALID_LIST_FORMAT instead')
  static const ERROR_INVALID_LIST_FORMAT = 153;
  @Deprecated('Use ERROR_LABEL_TOO_LONG instead')
  static const ERROR_LABEL_TOO_LONG = 154;
  @Deprecated('Use ERROR_TOO_MANY_TCBS instead')
  static const ERROR_TOO_MANY_TCBS = 155;
  @Deprecated('Use ERROR_SIGNAL_REFUSED instead')
  static const ERROR_SIGNAL_REFUSED = 156;
  @Deprecated('Use ERROR_DISCARDED instead')
  static const ERROR_DISCARDED = 157;
  @Deprecated('Use ERROR_NOT_LOCKED instead')
  static const ERROR_NOT_LOCKED = 158;
  @Deprecated('Use ERROR_BAD_THREADID_ADDR instead')
  static const ERROR_BAD_THREADID_ADDR = 159;
  @Deprecated('Use ERROR_BAD_ARGUMENTS instead')
  static const ERROR_BAD_ARGUMENTS = 160;
  @Deprecated('Use ERROR_BAD_PATHNAME instead')
  static const ERROR_BAD_PATHNAME = 161;
  @Deprecated('Use ERROR_SIGNAL_PENDING instead')
  static const ERROR_SIGNAL_PENDING = 162;
  @Deprecated('Use ERROR_MAX_THRDS_REACHED instead')
  static const ERROR_MAX_THRDS_REACHED = 164;
  @Deprecated('Use ERROR_LOCK_FAILED instead')
  static const ERROR_LOCK_FAILED = 167;
  @Deprecated('Use ERROR_BUSY instead')
  static const ERROR_BUSY = 170;
  @Deprecated('Use ERROR_DEVICE_SUPPORT_IN_PROGRESS instead')
  static const ERROR_DEVICE_SUPPORT_IN_PROGRESS = 171;
  @Deprecated('Use ERROR_CANCEL_VIOLATION instead')
  static const ERROR_CANCEL_VIOLATION = 173;
  @Deprecated('Use ERROR_ATOMIC_LOCKS_NOT_SUPPORTED instead')
  static const ERROR_ATOMIC_LOCKS_NOT_SUPPORTED = 174;
  @Deprecated('Use ERROR_INVALID_SEGMENT_NUMBER instead')
  static const ERROR_INVALID_SEGMENT_NUMBER = 180;
  @Deprecated('Use ERROR_INVALID_ORDINAL instead')
  static const ERROR_INVALID_ORDINAL = 182;
  @Deprecated('Use ERROR_ALREADY_EXISTS instead')
  static const ERROR_ALREADY_EXISTS = 183;
  @Deprecated('Use ERROR_INVALID_FLAG_NUMBER instead')
  static const ERROR_INVALID_FLAG_NUMBER = 186;
  @Deprecated('Use ERROR_SEM_NOT_FOUND instead')
  static const ERROR_SEM_NOT_FOUND = 187;
  @Deprecated('Use ERROR_INVALID_STARTING_CODESEG instead')
  static const ERROR_INVALID_STARTING_CODESEG = 188;
  @Deprecated('Use ERROR_INVALID_STACKSEG instead')
  static const ERROR_INVALID_STACKSEG = 189;
  @Deprecated('Use ERROR_INVALID_MODULETYPE instead')
  static const ERROR_INVALID_MODULETYPE = 190;
  @Deprecated('Use ERROR_INVALID_EXE_SIGNATURE instead')
  static const ERROR_INVALID_EXE_SIGNATURE = 191;
  @Deprecated('Use ERROR_EXE_MARKED_INVALID instead')
  static const ERROR_EXE_MARKED_INVALID = 192;
  @Deprecated('Use ERROR_BAD_EXE_FORMAT instead')
  static const ERROR_BAD_EXE_FORMAT = 193;
  @Deprecated('Use ERROR_ITERATED_DATA_EXCEEDS_64k instead')
  static const ERROR_ITERATED_DATA_EXCEEDS_64k = 194;
  @Deprecated('Use ERROR_INVALID_MINALLOCSIZE instead')
  static const ERROR_INVALID_MINALLOCSIZE = 195;
  @Deprecated('Use ERROR_DYNLINK_FROM_INVALID_RING instead')
  static const ERROR_DYNLINK_FROM_INVALID_RING = 196;
  @Deprecated('Use ERROR_IOPL_NOT_ENABLED instead')
  static const ERROR_IOPL_NOT_ENABLED = 197;
  @Deprecated('Use ERROR_INVALID_SEGDPL instead')
  static const ERROR_INVALID_SEGDPL = 198;
  @Deprecated('Use ERROR_AUTODATASEG_EXCEEDS_64k instead')
  static const ERROR_AUTODATASEG_EXCEEDS_64k = 199;
  @Deprecated('Use ERROR_RING2SEG_MUST_BE_MOVABLE instead')
  static const ERROR_RING2SEG_MUST_BE_MOVABLE = 200;
  @Deprecated('Use ERROR_RELOC_CHAIN_XEEDS_SEGLIM instead')
  static const ERROR_RELOC_CHAIN_XEEDS_SEGLIM = 201;
  @Deprecated('Use ERROR_INFLOOP_IN_RELOC_CHAIN instead')
  static const ERROR_INFLOOP_IN_RELOC_CHAIN = 202;
  @Deprecated('Use ERROR_ENVVAR_NOT_FOUND instead')
  static const ERROR_ENVVAR_NOT_FOUND = 203;
  @Deprecated('Use ERROR_NO_SIGNAL_SENT instead')
  static const ERROR_NO_SIGNAL_SENT = 205;
  @Deprecated('Use ERROR_FILENAME_EXCED_RANGE instead')
  static const ERROR_FILENAME_EXCED_RANGE = 206;
  @Deprecated('Use ERROR_RING2_STACK_IN_USE instead')
  static const ERROR_RING2_STACK_IN_USE = 207;
  @Deprecated('Use ERROR_META_EXPANSION_TOO_LONG instead')
  static const ERROR_META_EXPANSION_TOO_LONG = 208;
  @Deprecated('Use ERROR_INVALID_SIGNAL_NUMBER instead')
  static const ERROR_INVALID_SIGNAL_NUMBER = 209;
  @Deprecated('Use ERROR_THREAD_1_INACTIVE instead')
  static const ERROR_THREAD_1_INACTIVE = 210;
  @Deprecated('Use ERROR_LOCKED instead')
  static const ERROR_LOCKED = 212;
  @Deprecated('Use ERROR_TOO_MANY_MODULES instead')
  static const ERROR_TOO_MANY_MODULES = 214;
  @Deprecated('Use ERROR_NESTING_NOT_ALLOWED instead')
  static const ERROR_NESTING_NOT_ALLOWED = 215;
  @Deprecated('Use ERROR_EXE_MACHINE_TYPE_MISMATCH instead')
  static const ERROR_EXE_MACHINE_TYPE_MISMATCH = 216;
  @Deprecated('Use ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY instead')
  static const ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY = 217;
  @Deprecated('Use ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY instead')
  static const ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY = 218;
  @Deprecated('Use ERROR_FILE_CHECKED_OUT instead')
  static const ERROR_FILE_CHECKED_OUT = 220;
  @Deprecated('Use ERROR_CHECKOUT_REQUIRED instead')
  static const ERROR_CHECKOUT_REQUIRED = 221;
  @Deprecated('Use ERROR_BAD_FILE_TYPE instead')
  static const ERROR_BAD_FILE_TYPE = 222;
  @Deprecated('Use ERROR_FILE_TOO_LARGE instead')
  static const ERROR_FILE_TOO_LARGE = 223;
  @Deprecated('Use ERROR_FORMS_AUTH_REQUIRED instead')
  static const ERROR_FORMS_AUTH_REQUIRED = 224;
  @Deprecated('Use ERROR_VIRUS_INFECTED instead')
  static const ERROR_VIRUS_INFECTED = 225;
  @Deprecated('Use ERROR_VIRUS_DELETED instead')
  static const ERROR_VIRUS_DELETED = 226;
  @Deprecated('Use ERROR_PIPE_LOCAL instead')
  static const ERROR_PIPE_LOCAL = 229;
  @Deprecated('Use ERROR_BAD_PIPE instead')
  static const ERROR_BAD_PIPE = 230;
  @Deprecated('Use ERROR_PIPE_BUSY instead')
  static const ERROR_PIPE_BUSY = 231;
  @Deprecated('Use ERROR_NO_DATA instead')
  static const ERROR_NO_DATA = 232;
  @Deprecated('Use ERROR_PIPE_NOT_CONNECTED instead')
  static const ERROR_PIPE_NOT_CONNECTED = 233;
  @Deprecated('Use ERROR_MORE_DATA instead')
  static const ERROR_MORE_DATA = 234;
  @Deprecated('Use ERROR_NO_WORK_DONE instead')
  static const ERROR_NO_WORK_DONE = 235;
  @Deprecated('Use ERROR_VC_DISCONNECTED instead')
  static const ERROR_VC_DISCONNECTED = 240;
  @Deprecated('Use ERROR_INVALID_EA_NAME instead')
  static const ERROR_INVALID_EA_NAME = 254;
  @Deprecated('Use ERROR_EA_LIST_INCONSISTENT instead')
  static const ERROR_EA_LIST_INCONSISTENT = 255;
  @Deprecated('Use ERROR_NO_MORE_ITEMS instead')
  static const ERROR_NO_MORE_ITEMS = 259;
  @Deprecated('Use ERROR_CANNOT_COPY instead')
  static const ERROR_CANNOT_COPY = 266;
  @Deprecated('Use ERROR_DIRECTORY instead')
  static const ERROR_DIRECTORY = 267;
  @Deprecated('Use ERROR_EAS_DIDNT_FIT instead')
  static const ERROR_EAS_DIDNT_FIT = 275;
  @Deprecated('Use ERROR_EA_FILE_CORRUPT instead')
  static const ERROR_EA_FILE_CORRUPT = 276;
  @Deprecated('Use ERROR_EA_TABLE_FULL instead')
  static const ERROR_EA_TABLE_FULL = 277;
  @Deprecated('Use ERROR_INVALID_EA_HANDLE instead')
  static const ERROR_INVALID_EA_HANDLE = 278;
  @Deprecated('Use ERROR_EAS_NOT_SUPPORTED instead')
  static const ERROR_EAS_NOT_SUPPORTED = 282;
  @Deprecated('Use ERROR_NOT_OWNER instead')
  static const ERROR_NOT_OWNER = 288;
  @Deprecated('Use ERROR_TOO_MANY_POSTS instead')
  static const ERROR_TOO_MANY_POSTS = 298;
  @Deprecated('Use ERROR_PARTIAL_COPY instead')
  static const ERROR_PARTIAL_COPY = 299;
  @Deprecated('Use ERROR_OPLOCK_NOT_GRANTED instead')
  static const ERROR_OPLOCK_NOT_GRANTED = 300;
  @Deprecated('Use ERROR_INVALID_OPLOCK_PROTOCOL instead')
  static const ERROR_INVALID_OPLOCK_PROTOCOL = 301;
  @Deprecated('Use ERROR_DISK_TOO_FRAGMENTED instead')
  static const ERROR_DISK_TOO_FRAGMENTED = 302;
  @Deprecated('Use ERROR_DELETE_PENDING instead')
  static const ERROR_DELETE_PENDING = 303;
  @Deprecated(
    'Use ERROR_INCOMPATIBLE_WITH_GLOBAL_SHORT_NAME_REGISTRY_SETTING instead',
  )
  static const ERROR_INCOMPATIBLE_WITH_GLOBAL_SHORT_NAME_REGISTRY_SETTING =
      WIN32_ERROR(304);
  @Deprecated('Use ERROR_SHORT_NAMES_NOT_ENABLED_ON_VOLUME instead')
  static const ERROR_SHORT_NAMES_NOT_ENABLED_ON_VOLUME = 305;
  @Deprecated('Use ERROR_SECURITY_STREAM_IS_INCONSISTENT instead')
  static const ERROR_SECURITY_STREAM_IS_INCONSISTENT = 306;
  @Deprecated('Use ERROR_INVALID_LOCK_RANGE instead')
  static const ERROR_INVALID_LOCK_RANGE = 307;
  @Deprecated('Use ERROR_IMAGE_SUBSYSTEM_NOT_PRESENT instead')
  static const ERROR_IMAGE_SUBSYSTEM_NOT_PRESENT = 308;
  @Deprecated('Use ERROR_NOTIFICATION_GUID_ALREADY_DEFINED instead')
  static const ERROR_NOTIFICATION_GUID_ALREADY_DEFINED = 309;
  @Deprecated('Use ERROR_INVALID_EXCEPTION_HANDLER instead')
  static const ERROR_INVALID_EXCEPTION_HANDLER = 310;
  @Deprecated('Use ERROR_DUPLICATE_PRIVILEGES instead')
  static const ERROR_DUPLICATE_PRIVILEGES = 311;
  @Deprecated('Use ERROR_NO_RANGES_PROCESSED instead')
  static const ERROR_NO_RANGES_PROCESSED = 312;
  @Deprecated('Use ERROR_NOT_ALLOWED_ON_SYSTEM_FILE instead')
  static const ERROR_NOT_ALLOWED_ON_SYSTEM_FILE = 313;
  @Deprecated('Use ERROR_DISK_RESOURCES_EXHAUSTED instead')
  static const ERROR_DISK_RESOURCES_EXHAUSTED = 314;
  @Deprecated('Use ERROR_INVALID_TOKEN instead')
  static const ERROR_INVALID_TOKEN = 315;
  @Deprecated('Use ERROR_DEVICE_FEATURE_NOT_SUPPORTED instead')
  static const ERROR_DEVICE_FEATURE_NOT_SUPPORTED = 316;
  @Deprecated('Use ERROR_MR_MID_NOT_FOUND instead')
  static const ERROR_MR_MID_NOT_FOUND = 317;
  @Deprecated('Use ERROR_SCOPE_NOT_FOUND instead')
  static const ERROR_SCOPE_NOT_FOUND = 318;
  @Deprecated('Use ERROR_UNDEFINED_SCOPE instead')
  static const ERROR_UNDEFINED_SCOPE = 319;
  @Deprecated('Use ERROR_INVALID_CAP instead')
  static const ERROR_INVALID_CAP = 320;
  @Deprecated('Use ERROR_DEVICE_UNREACHABLE instead')
  static const ERROR_DEVICE_UNREACHABLE = 321;
  @Deprecated('Use ERROR_DEVICE_NO_RESOURCES instead')
  static const ERROR_DEVICE_NO_RESOURCES = 322;
  @Deprecated('Use ERROR_DATA_CHECKSUM_ERROR instead')
  static const ERROR_DATA_CHECKSUM_ERROR = 323;
  @Deprecated('Use ERROR_INTERMIXED_KERNEL_EA_OPERATION instead')
  static const ERROR_INTERMIXED_KERNEL_EA_OPERATION = 324;
  @Deprecated('Use ERROR_FILE_LEVEL_TRIM_NOT_SUPPORTED instead')
  static const ERROR_FILE_LEVEL_TRIM_NOT_SUPPORTED = 326;
  @Deprecated('Use ERROR_OFFSET_ALIGNMENT_VIOLATION instead')
  static const ERROR_OFFSET_ALIGNMENT_VIOLATION = 327;
  @Deprecated('Use ERROR_INVALID_FIELD_IN_PARAMETER_LIST instead')
  static const ERROR_INVALID_FIELD_IN_PARAMETER_LIST = 328;
  @Deprecated('Use ERROR_OPERATION_IN_PROGRESS instead')
  static const ERROR_OPERATION_IN_PROGRESS = 329;
  @Deprecated('Use ERROR_BAD_DEVICE_PATH instead')
  static const ERROR_BAD_DEVICE_PATH = 330;
  @Deprecated('Use ERROR_TOO_MANY_DESCRIPTORS instead')
  static const ERROR_TOO_MANY_DESCRIPTORS = 331;
  @Deprecated('Use ERROR_SCRUB_DATA_DISABLED instead')
  static const ERROR_SCRUB_DATA_DISABLED = 332;
  @Deprecated('Use ERROR_NOT_REDUNDANT_STORAGE instead')
  static const ERROR_NOT_REDUNDANT_STORAGE = 333;
  @Deprecated('Use ERROR_RESIDENT_FILE_NOT_SUPPORTED instead')
  static const ERROR_RESIDENT_FILE_NOT_SUPPORTED = 334;
  @Deprecated('Use ERROR_COMPRESSED_FILE_NOT_SUPPORTED instead')
  static const ERROR_COMPRESSED_FILE_NOT_SUPPORTED = 335;
  @Deprecated('Use ERROR_DIRECTORY_NOT_SUPPORTED instead')
  static const ERROR_DIRECTORY_NOT_SUPPORTED = 336;
  @Deprecated('Use ERROR_NOT_READ_FROM_COPY instead')
  static const ERROR_NOT_READ_FROM_COPY = 337;
  @Deprecated('Use ERROR_FT_WRITE_FAILURE instead')
  static const ERROR_FT_WRITE_FAILURE = 338;
  @Deprecated('Use ERROR_FT_DI_SCAN_REQUIRED instead')
  static const ERROR_FT_DI_SCAN_REQUIRED = 339;
  @Deprecated('Use ERROR_INVALID_KERNEL_INFO_VERSION instead')
  static const ERROR_INVALID_KERNEL_INFO_VERSION = 340;
  @Deprecated('Use ERROR_INVALID_PEP_INFO_VERSION instead')
  static const ERROR_INVALID_PEP_INFO_VERSION = 341;
  @Deprecated('Use ERROR_OBJECT_NOT_EXTERNALLY_BACKED instead')
  static const ERROR_OBJECT_NOT_EXTERNALLY_BACKED = 342;
  @Deprecated('Use ERROR_EXTERNAL_BACKING_PROVIDER_UNKNOWN instead')
  static const ERROR_EXTERNAL_BACKING_PROVIDER_UNKNOWN = 343;
  @Deprecated('Use ERROR_COMPRESSION_NOT_BENEFICIAL instead')
  static const ERROR_COMPRESSION_NOT_BENEFICIAL = 344;
  @Deprecated('Use ERROR_STORAGE_TOPOLOGY_ID_MISMATCH instead')
  static const ERROR_STORAGE_TOPOLOGY_ID_MISMATCH = 345;
  @Deprecated('Use ERROR_BLOCKED_BY_PARENTAL_CONTROLS instead')
  static const ERROR_BLOCKED_BY_PARENTAL_CONTROLS = 346;
  @Deprecated('Use ERROR_BLOCK_TOO_MANY_REFERENCES instead')
  static const ERROR_BLOCK_TOO_MANY_REFERENCES = 347;
  @Deprecated('Use ERROR_MARKED_TO_DISALLOW_WRITES instead')
  static const ERROR_MARKED_TO_DISALLOW_WRITES = 348;
  @Deprecated('Use ERROR_ENCLAVE_FAILURE instead')
  static const ERROR_ENCLAVE_FAILURE = 349;
  @Deprecated('Use ERROR_FAIL_NOACTION_REBOOT instead')
  static const ERROR_FAIL_NOACTION_REBOOT = 350;
  @Deprecated('Use ERROR_FAIL_SHUTDOWN instead')
  static const ERROR_FAIL_SHUTDOWN = 351;
  @Deprecated('Use ERROR_FAIL_RESTART instead')
  static const ERROR_FAIL_RESTART = 352;
  @Deprecated('Use ERROR_MAX_SESSIONS_REACHED instead')
  static const ERROR_MAX_SESSIONS_REACHED = 353;
  @Deprecated('Use ERROR_NETWORK_ACCESS_DENIED_EDP instead')
  static const ERROR_NETWORK_ACCESS_DENIED_EDP = 354;
  @Deprecated('Use ERROR_DEVICE_HINT_NAME_BUFFER_TOO_SMALL instead')
  static const ERROR_DEVICE_HINT_NAME_BUFFER_TOO_SMALL = 355;
  @Deprecated('Use ERROR_EDP_POLICY_DENIES_OPERATION instead')
  static const ERROR_EDP_POLICY_DENIES_OPERATION = 356;
  @Deprecated('Use ERROR_EDP_DPL_POLICY_CANT_BE_SATISFIED instead')
  static const ERROR_EDP_DPL_POLICY_CANT_BE_SATISFIED = 357;
  @Deprecated('Use ERROR_CLOUD_FILE_SYNC_ROOT_METADATA_CORRUPT instead')
  static const ERROR_CLOUD_FILE_SYNC_ROOT_METADATA_CORRUPT = 358;
  @Deprecated('Use ERROR_DEVICE_IN_MAINTENANCE instead')
  static const ERROR_DEVICE_IN_MAINTENANCE = 359;
  @Deprecated('Use ERROR_NOT_SUPPORTED_ON_DAX instead')
  static const ERROR_NOT_SUPPORTED_ON_DAX = 360;
  @Deprecated('Use ERROR_DAX_MAPPING_EXISTS instead')
  static const ERROR_DAX_MAPPING_EXISTS = 361;
  @Deprecated('Use ERROR_CLOUD_FILE_PROVIDER_NOT_RUNNING instead')
  static const ERROR_CLOUD_FILE_PROVIDER_NOT_RUNNING = 362;
  @Deprecated('Use ERROR_CLOUD_FILE_METADATA_CORRUPT instead')
  static const ERROR_CLOUD_FILE_METADATA_CORRUPT = 363;
  @Deprecated('Use ERROR_CLOUD_FILE_METADATA_TOO_LARGE instead')
  static const ERROR_CLOUD_FILE_METADATA_TOO_LARGE = 364;
  @Deprecated('Use ERROR_CLOUD_FILE_PROPERTY_BLOB_TOO_LARGE instead')
  static const ERROR_CLOUD_FILE_PROPERTY_BLOB_TOO_LARGE = 365;
  @Deprecated('Use ERROR_CLOUD_FILE_PROPERTY_BLOB_CHECKSUM_MISMATCH instead')
  static const ERROR_CLOUD_FILE_PROPERTY_BLOB_CHECKSUM_MISMATCH = WIN32_ERROR(
    366,
  );
  @Deprecated('Use ERROR_CHILD_PROCESS_BLOCKED instead')
  static const ERROR_CHILD_PROCESS_BLOCKED = 367;
  @Deprecated('Use ERROR_STORAGE_LOST_DATA_PERSISTENCE instead')
  static const ERROR_STORAGE_LOST_DATA_PERSISTENCE = 368;
  @Deprecated('Use ERROR_FILE_SYSTEM_VIRTUALIZATION_UNAVAILABLE instead')
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_UNAVAILABLE = 369;
  @Deprecated('Use ERROR_FILE_SYSTEM_VIRTUALIZATION_METADATA_CORRUPT instead')
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_METADATA_CORRUPT = WIN32_ERROR(
    370,
  );
  @Deprecated('Use ERROR_FILE_SYSTEM_VIRTUALIZATION_BUSY instead')
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_BUSY = 371;
  @Deprecated('Use ERROR_FILE_SYSTEM_VIRTUALIZATION_PROVIDER_UNKNOWN instead')
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_PROVIDER_UNKNOWN = WIN32_ERROR(
    372,
  );
  @Deprecated('Use ERROR_GDI_HANDLE_LEAK instead')
  static const ERROR_GDI_HANDLE_LEAK = 373;
  @Deprecated('Use ERROR_CLOUD_FILE_TOO_MANY_PROPERTY_BLOBS instead')
  static const ERROR_CLOUD_FILE_TOO_MANY_PROPERTY_BLOBS = 374;
  @Deprecated('Use ERROR_CLOUD_FILE_PROPERTY_VERSION_NOT_SUPPORTED instead')
  static const ERROR_CLOUD_FILE_PROPERTY_VERSION_NOT_SUPPORTED = WIN32_ERROR(
    375,
  );
  @Deprecated('Use ERROR_NOT_A_CLOUD_FILE instead')
  static const ERROR_NOT_A_CLOUD_FILE = 376;
  @Deprecated('Use ERROR_CLOUD_FILE_NOT_IN_SYNC instead')
  static const ERROR_CLOUD_FILE_NOT_IN_SYNC = 377;
  @Deprecated('Use ERROR_CLOUD_FILE_ALREADY_CONNECTED instead')
  static const ERROR_CLOUD_FILE_ALREADY_CONNECTED = 378;
  @Deprecated('Use ERROR_CLOUD_FILE_NOT_SUPPORTED instead')
  static const ERROR_CLOUD_FILE_NOT_SUPPORTED = 379;
  @Deprecated('Use ERROR_CLOUD_FILE_INVALID_REQUEST instead')
  static const ERROR_CLOUD_FILE_INVALID_REQUEST = 380;
  @Deprecated('Use ERROR_CLOUD_FILE_READ_ONLY_VOLUME instead')
  static const ERROR_CLOUD_FILE_READ_ONLY_VOLUME = 381;
  @Deprecated('Use ERROR_CLOUD_FILE_CONNECTED_PROVIDER_ONLY instead')
  static const ERROR_CLOUD_FILE_CONNECTED_PROVIDER_ONLY = 382;
  @Deprecated('Use ERROR_CLOUD_FILE_VALIDATION_FAILED instead')
  static const ERROR_CLOUD_FILE_VALIDATION_FAILED = 383;
  @Deprecated('Use ERROR_SMB1_NOT_AVAILABLE instead')
  static const ERROR_SMB1_NOT_AVAILABLE = 384;
  @Deprecated('Use ERROR_FILE_SYSTEM_VIRTUALIZATION_INVALID_OPERATION instead')
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_INVALID_OPERATION = WIN32_ERROR(
    385,
  );
  @Deprecated('Use ERROR_CLOUD_FILE_AUTHENTICATION_FAILED instead')
  static const ERROR_CLOUD_FILE_AUTHENTICATION_FAILED = 386;
  @Deprecated('Use ERROR_CLOUD_FILE_INSUFFICIENT_RESOURCES instead')
  static const ERROR_CLOUD_FILE_INSUFFICIENT_RESOURCES = 387;
  @Deprecated('Use ERROR_CLOUD_FILE_NETWORK_UNAVAILABLE instead')
  static const ERROR_CLOUD_FILE_NETWORK_UNAVAILABLE = 388;
  @Deprecated('Use ERROR_CLOUD_FILE_UNSUCCESSFUL instead')
  static const ERROR_CLOUD_FILE_UNSUCCESSFUL = 389;
  @Deprecated('Use ERROR_CLOUD_FILE_NOT_UNDER_SYNC_ROOT instead')
  static const ERROR_CLOUD_FILE_NOT_UNDER_SYNC_ROOT = 390;
  @Deprecated('Use ERROR_CLOUD_FILE_IN_USE instead')
  static const ERROR_CLOUD_FILE_IN_USE = 391;
  @Deprecated('Use ERROR_CLOUD_FILE_PINNED instead')
  static const ERROR_CLOUD_FILE_PINNED = 392;
  @Deprecated('Use ERROR_CLOUD_FILE_REQUEST_ABORTED instead')
  static const ERROR_CLOUD_FILE_REQUEST_ABORTED = 393;
  @Deprecated('Use ERROR_CLOUD_FILE_PROPERTY_CORRUPT instead')
  static const ERROR_CLOUD_FILE_PROPERTY_CORRUPT = 394;
  @Deprecated('Use ERROR_CLOUD_FILE_ACCESS_DENIED instead')
  static const ERROR_CLOUD_FILE_ACCESS_DENIED = 395;
  @Deprecated('Use ERROR_CLOUD_FILE_INCOMPATIBLE_HARDLINKS instead')
  static const ERROR_CLOUD_FILE_INCOMPATIBLE_HARDLINKS = 396;
  @Deprecated('Use ERROR_CLOUD_FILE_PROPERTY_LOCK_CONFLICT instead')
  static const ERROR_CLOUD_FILE_PROPERTY_LOCK_CONFLICT = 397;
  @Deprecated('Use ERROR_CLOUD_FILE_REQUEST_CANCELED instead')
  static const ERROR_CLOUD_FILE_REQUEST_CANCELED = 398;
  @Deprecated('Use ERROR_EXTERNAL_SYSKEY_NOT_SUPPORTED instead')
  static const ERROR_EXTERNAL_SYSKEY_NOT_SUPPORTED = 399;
  @Deprecated('Use ERROR_THREAD_MODE_ALREADY_BACKGROUND instead')
  static const ERROR_THREAD_MODE_ALREADY_BACKGROUND = 400;
  @Deprecated('Use ERROR_THREAD_MODE_NOT_BACKGROUND instead')
  static const ERROR_THREAD_MODE_NOT_BACKGROUND = 401;
  @Deprecated('Use ERROR_PROCESS_MODE_ALREADY_BACKGROUND instead')
  static const ERROR_PROCESS_MODE_ALREADY_BACKGROUND = 402;
  @Deprecated('Use ERROR_PROCESS_MODE_NOT_BACKGROUND instead')
  static const ERROR_PROCESS_MODE_NOT_BACKGROUND = 403;
  @Deprecated('Use ERROR_CLOUD_FILE_PROVIDER_TERMINATED instead')
  static const ERROR_CLOUD_FILE_PROVIDER_TERMINATED = 404;
  @Deprecated('Use ERROR_NOT_A_CLOUD_SYNC_ROOT instead')
  static const ERROR_NOT_A_CLOUD_SYNC_ROOT = 405;
  @Deprecated('Use ERROR_FILE_PROTECTED_UNDER_DPL instead')
  static const ERROR_FILE_PROTECTED_UNDER_DPL = 406;
  @Deprecated('Use ERROR_VOLUME_NOT_CLUSTER_ALIGNED instead')
  static const ERROR_VOLUME_NOT_CLUSTER_ALIGNED = 407;
  @Deprecated('Use ERROR_NO_PHYSICALLY_ALIGNED_FREE_SPACE_FOUND instead')
  static const ERROR_NO_PHYSICALLY_ALIGNED_FREE_SPACE_FOUND = 408;
  @Deprecated('Use ERROR_APPX_FILE_NOT_ENCRYPTED instead')
  static const ERROR_APPX_FILE_NOT_ENCRYPTED = 409;
  @Deprecated('Use ERROR_RWRAW_ENCRYPTED_FILE_NOT_ENCRYPTED instead')
  static const ERROR_RWRAW_ENCRYPTED_FILE_NOT_ENCRYPTED = 410;
  @Deprecated('Use ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILEOFFSET instead')
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILEOFFSET = WIN32_ERROR(
    411,
  );
  @Deprecated('Use ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILERANGE instead')
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILERANGE = WIN32_ERROR(
    412,
  );
  @Deprecated('Use ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_PARAMETER instead')
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_PARAMETER = WIN32_ERROR(
    413,
  );
  @Deprecated('Use ERROR_LINUX_SUBSYSTEM_NOT_PRESENT instead')
  static const ERROR_LINUX_SUBSYSTEM_NOT_PRESENT = 414;
  @Deprecated('Use ERROR_FT_READ_FAILURE instead')
  static const ERROR_FT_READ_FAILURE = 415;
  @Deprecated('Use ERROR_STORAGE_RESERVE_ID_INVALID instead')
  static const ERROR_STORAGE_RESERVE_ID_INVALID = 416;
  @Deprecated('Use ERROR_STORAGE_RESERVE_DOES_NOT_EXIST instead')
  static const ERROR_STORAGE_RESERVE_DOES_NOT_EXIST = 417;
  @Deprecated('Use ERROR_STORAGE_RESERVE_ALREADY_EXISTS instead')
  static const ERROR_STORAGE_RESERVE_ALREADY_EXISTS = 418;
  @Deprecated('Use ERROR_STORAGE_RESERVE_NOT_EMPTY instead')
  static const ERROR_STORAGE_RESERVE_NOT_EMPTY = 419;
  @Deprecated('Use ERROR_NOT_A_DAX_VOLUME instead')
  static const ERROR_NOT_A_DAX_VOLUME = 420;
  @Deprecated('Use ERROR_NOT_DAX_MAPPABLE instead')
  static const ERROR_NOT_DAX_MAPPABLE = 421;
  @Deprecated('Use ERROR_TIME_SENSITIVE_THREAD instead')
  static const ERROR_TIME_SENSITIVE_THREAD = 422;
  @Deprecated('Use ERROR_DPL_NOT_SUPPORTED_FOR_USER instead')
  static const ERROR_DPL_NOT_SUPPORTED_FOR_USER = 423;
  @Deprecated('Use ERROR_CASE_DIFFERING_NAMES_IN_DIR instead')
  static const ERROR_CASE_DIFFERING_NAMES_IN_DIR = 424;
  @Deprecated('Use ERROR_FILE_NOT_SUPPORTED instead')
  static const ERROR_FILE_NOT_SUPPORTED = 425;
  @Deprecated('Use ERROR_CLOUD_FILE_REQUEST_TIMEOUT instead')
  static const ERROR_CLOUD_FILE_REQUEST_TIMEOUT = 426;
  @Deprecated('Use ERROR_NO_TASK_QUEUE instead')
  static const ERROR_NO_TASK_QUEUE = 427;
  @Deprecated('Use ERROR_SRC_SRV_DLL_LOAD_FAILED instead')
  static const ERROR_SRC_SRV_DLL_LOAD_FAILED = 428;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_BTT instead')
  static const ERROR_NOT_SUPPORTED_WITH_BTT = 429;
  @Deprecated('Use ERROR_ENCRYPTION_DISABLED instead')
  static const ERROR_ENCRYPTION_DISABLED = 430;
  @Deprecated('Use ERROR_ENCRYPTING_METADATA_DISALLOWED instead')
  static const ERROR_ENCRYPTING_METADATA_DISALLOWED = 431;
  @Deprecated('Use ERROR_CANT_CLEAR_ENCRYPTION_FLAG instead')
  static const ERROR_CANT_CLEAR_ENCRYPTION_FLAG = 432;
  @Deprecated('Use ERROR_NO_SUCH_DEVICE instead')
  static const ERROR_NO_SUCH_DEVICE = 433;
  @Deprecated('Use ERROR_CLOUD_FILE_DEHYDRATION_DISALLOWED instead')
  static const ERROR_CLOUD_FILE_DEHYDRATION_DISALLOWED = 434;
  @Deprecated('Use ERROR_FILE_SNAP_IN_PROGRESS instead')
  static const ERROR_FILE_SNAP_IN_PROGRESS = 435;
  @Deprecated('Use ERROR_FILE_SNAP_USER_SECTION_NOT_SUPPORTED instead')
  static const ERROR_FILE_SNAP_USER_SECTION_NOT_SUPPORTED = 436;
  @Deprecated('Use ERROR_FILE_SNAP_MODIFY_NOT_SUPPORTED instead')
  static const ERROR_FILE_SNAP_MODIFY_NOT_SUPPORTED = 437;
  @Deprecated('Use ERROR_FILE_SNAP_IO_NOT_COORDINATED instead')
  static const ERROR_FILE_SNAP_IO_NOT_COORDINATED = 438;
  @Deprecated('Use ERROR_FILE_SNAP_UNEXPECTED_ERROR instead')
  static const ERROR_FILE_SNAP_UNEXPECTED_ERROR = 439;
  @Deprecated('Use ERROR_FILE_SNAP_INVALID_PARAMETER instead')
  static const ERROR_FILE_SNAP_INVALID_PARAMETER = 440;
  @Deprecated('Use ERROR_UNSATISFIED_DEPENDENCIES instead')
  static const ERROR_UNSATISFIED_DEPENDENCIES = 441;
  @Deprecated('Use ERROR_CASE_SENSITIVE_PATH instead')
  static const ERROR_CASE_SENSITIVE_PATH = 442;
  @Deprecated('Use ERROR_UNEXPECTED_NTCACHEMANAGER_ERROR instead')
  static const ERROR_UNEXPECTED_NTCACHEMANAGER_ERROR = 443;
  @Deprecated('Use ERROR_LINUX_SUBSYSTEM_UPDATE_REQUIRED instead')
  static const ERROR_LINUX_SUBSYSTEM_UPDATE_REQUIRED = 444;
  @Deprecated('Use ERROR_DLP_POLICY_WARNS_AGAINST_OPERATION instead')
  static const ERROR_DLP_POLICY_WARNS_AGAINST_OPERATION = 445;
  @Deprecated('Use ERROR_DLP_POLICY_DENIES_OPERATION instead')
  static const ERROR_DLP_POLICY_DENIES_OPERATION = 446;
  @Deprecated('Use ERROR_SECURITY_DENIES_OPERATION instead')
  static const ERROR_SECURITY_DENIES_OPERATION = 447;
  @Deprecated('Use ERROR_UNTRUSTED_MOUNT_POINT instead')
  static const ERROR_UNTRUSTED_MOUNT_POINT = 448;
  @Deprecated('Use ERROR_DLP_POLICY_SILENTLY_FAIL instead')
  static const ERROR_DLP_POLICY_SILENTLY_FAIL = 449;
  @Deprecated('Use ERROR_CAPAUTHZ_NOT_DEVUNLOCKED instead')
  static const ERROR_CAPAUTHZ_NOT_DEVUNLOCKED = 450;
  @Deprecated('Use ERROR_CAPAUTHZ_CHANGE_TYPE instead')
  static const ERROR_CAPAUTHZ_CHANGE_TYPE = 451;
  @Deprecated('Use ERROR_CAPAUTHZ_NOT_PROVISIONED instead')
  static const ERROR_CAPAUTHZ_NOT_PROVISIONED = 452;
  @Deprecated('Use ERROR_CAPAUTHZ_NOT_AUTHORIZED instead')
  static const ERROR_CAPAUTHZ_NOT_AUTHORIZED = 453;
  @Deprecated('Use ERROR_CAPAUTHZ_NO_POLICY instead')
  static const ERROR_CAPAUTHZ_NO_POLICY = 454;
  @Deprecated('Use ERROR_CAPAUTHZ_DB_CORRUPTED instead')
  static const ERROR_CAPAUTHZ_DB_CORRUPTED = 455;
  @Deprecated('Use ERROR_CAPAUTHZ_SCCD_INVALID_CATALOG instead')
  static const ERROR_CAPAUTHZ_SCCD_INVALID_CATALOG = 456;
  @Deprecated('Use ERROR_CAPAUTHZ_SCCD_NO_AUTH_ENTITY instead')
  static const ERROR_CAPAUTHZ_SCCD_NO_AUTH_ENTITY = 457;
  @Deprecated('Use ERROR_CAPAUTHZ_SCCD_PARSE_ERROR instead')
  static const ERROR_CAPAUTHZ_SCCD_PARSE_ERROR = 458;
  @Deprecated('Use ERROR_CAPAUTHZ_SCCD_DEV_MODE_REQUIRED instead')
  static const ERROR_CAPAUTHZ_SCCD_DEV_MODE_REQUIRED = 459;
  @Deprecated('Use ERROR_CAPAUTHZ_SCCD_NO_CAPABILITY_MATCH instead')
  static const ERROR_CAPAUTHZ_SCCD_NO_CAPABILITY_MATCH = 460;
  @Deprecated('Use ERROR_CIMFS_IMAGE_CORRUPT instead')
  static const ERROR_CIMFS_IMAGE_CORRUPT = 470;
  @Deprecated('Use ERROR_CIMFS_IMAGE_VERSION_NOT_SUPPORTED instead')
  static const ERROR_CIMFS_IMAGE_VERSION_NOT_SUPPORTED = 471;
  @Deprecated('Use ERROR_STORAGE_STACK_ACCESS_DENIED instead')
  static const ERROR_STORAGE_STACK_ACCESS_DENIED = 472;
  @Deprecated('Use ERROR_INSUFFICIENT_VIRTUAL_ADDR_RESOURCES instead')
  static const ERROR_INSUFFICIENT_VIRTUAL_ADDR_RESOURCES = 473;
  @Deprecated('Use ERROR_INDEX_OUT_OF_BOUNDS instead')
  static const ERROR_INDEX_OUT_OF_BOUNDS = 474;
  @Deprecated('Use ERROR_CLOUD_FILE_US_MESSAGE_TIMEOUT instead')
  static const ERROR_CLOUD_FILE_US_MESSAGE_TIMEOUT = 475;
  @Deprecated('Use ERROR_NOT_A_DEV_VOLUME instead')
  static const ERROR_NOT_A_DEV_VOLUME = 476;
  @Deprecated('Use ERROR_FS_GUID_MISMATCH instead')
  static const ERROR_FS_GUID_MISMATCH = 477;
  @Deprecated('Use ERROR_CANT_ATTACH_TO_DEV_VOLUME instead')
  static const ERROR_CANT_ATTACH_TO_DEV_VOLUME = 478;
  @Deprecated('Use ERROR_INVALID_CONFIG_VALUE instead')
  static const ERROR_INVALID_CONFIG_VALUE = 479;
  @Deprecated('Use ERROR_PNP_QUERY_REMOVE_DEVICE_TIMEOUT instead')
  static const ERROR_PNP_QUERY_REMOVE_DEVICE_TIMEOUT = 480;
  @Deprecated('Use ERROR_PNP_QUERY_REMOVE_RELATED_DEVICE_TIMEOUT instead')
  static const ERROR_PNP_QUERY_REMOVE_RELATED_DEVICE_TIMEOUT = 481;
  @Deprecated('Use ERROR_PNP_QUERY_REMOVE_UNRELATED_DEVICE_TIMEOUT instead')
  static const ERROR_PNP_QUERY_REMOVE_UNRELATED_DEVICE_TIMEOUT = WIN32_ERROR(
    482,
  );
  @Deprecated('Use ERROR_DEVICE_HARDWARE_ERROR instead')
  static const ERROR_DEVICE_HARDWARE_ERROR = 483;
  @Deprecated('Use ERROR_INVALID_ADDRESS instead')
  static const ERROR_INVALID_ADDRESS = 487;
  @Deprecated('Use ERROR_HAS_SYSTEM_CRITICAL_FILES instead')
  static const ERROR_HAS_SYSTEM_CRITICAL_FILES = 488;
  @Deprecated('Use ERROR_ENCRYPTED_FILE_NOT_SUPPORTED instead')
  static const ERROR_ENCRYPTED_FILE_NOT_SUPPORTED = 489;
  @Deprecated('Use ERROR_SPARSE_FILE_NOT_SUPPORTED instead')
  static const ERROR_SPARSE_FILE_NOT_SUPPORTED = 490;
  @Deprecated('Use ERROR_PAGEFILE_NOT_SUPPORTED instead')
  static const ERROR_PAGEFILE_NOT_SUPPORTED = 491;
  @Deprecated('Use ERROR_VOLUME_NOT_SUPPORTED instead')
  static const ERROR_VOLUME_NOT_SUPPORTED = 492;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_BYPASSIO instead')
  static const ERROR_NOT_SUPPORTED_WITH_BYPASSIO = 493;
  @Deprecated('Use ERROR_NO_BYPASSIO_DRIVER_SUPPORT instead')
  static const ERROR_NO_BYPASSIO_DRIVER_SUPPORT = 494;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_ENCRYPTION instead')
  static const ERROR_NOT_SUPPORTED_WITH_ENCRYPTION = 495;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_COMPRESSION instead')
  static const ERROR_NOT_SUPPORTED_WITH_COMPRESSION = 496;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_REPLICATION instead')
  static const ERROR_NOT_SUPPORTED_WITH_REPLICATION = 497;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_DEDUPLICATION instead')
  static const ERROR_NOT_SUPPORTED_WITH_DEDUPLICATION = 498;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_AUDITING instead')
  static const ERROR_NOT_SUPPORTED_WITH_AUDITING = 499;
  @Deprecated('Use ERROR_USER_PROFILE_LOAD instead')
  static const ERROR_USER_PROFILE_LOAD = 500;
  @Deprecated('Use ERROR_SESSION_KEY_TOO_SHORT instead')
  static const ERROR_SESSION_KEY_TOO_SHORT = 501;
  @Deprecated('Use ERROR_ACCESS_DENIED_APPDATA instead')
  static const ERROR_ACCESS_DENIED_APPDATA = 502;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_MONITORING instead')
  static const ERROR_NOT_SUPPORTED_WITH_MONITORING = 503;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_SNAPSHOT instead')
  static const ERROR_NOT_SUPPORTED_WITH_SNAPSHOT = 504;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_VIRTUALIZATION instead')
  static const ERROR_NOT_SUPPORTED_WITH_VIRTUALIZATION = 505;
  @Deprecated('Use ERROR_BYPASSIO_FLT_NOT_SUPPORTED instead')
  static const ERROR_BYPASSIO_FLT_NOT_SUPPORTED = 506;
  @Deprecated('Use ERROR_DEVICE_RESET_REQUIRED instead')
  static const ERROR_DEVICE_RESET_REQUIRED = 507;
  @Deprecated('Use ERROR_VOLUME_WRITE_ACCESS_DENIED instead')
  static const ERROR_VOLUME_WRITE_ACCESS_DENIED = 508;
  @Deprecated('Use ERROR_NOT_SUPPORTED_WITH_CACHED_HANDLE instead')
  static const ERROR_NOT_SUPPORTED_WITH_CACHED_HANDLE = 509;
  @Deprecated('Use ERROR_FS_METADATA_INCONSISTENT instead')
  static const ERROR_FS_METADATA_INCONSISTENT = 510;
  @Deprecated('Use ERROR_BLOCK_WEAK_REFERENCE_INVALID instead')
  static const ERROR_BLOCK_WEAK_REFERENCE_INVALID = 511;
  @Deprecated('Use ERROR_BLOCK_SOURCE_WEAK_REFERENCE_INVALID instead')
  static const ERROR_BLOCK_SOURCE_WEAK_REFERENCE_INVALID = 512;
  @Deprecated('Use ERROR_BLOCK_TARGET_WEAK_REFERENCE_INVALID instead')
  static const ERROR_BLOCK_TARGET_WEAK_REFERENCE_INVALID = 513;
  @Deprecated('Use ERROR_BLOCK_SHARED instead')
  static const ERROR_BLOCK_SHARED = 514;
  @Deprecated('Use ERROR_VOLUME_UPGRADE_NOT_NEEDED instead')
  static const ERROR_VOLUME_UPGRADE_NOT_NEEDED = 515;
  @Deprecated('Use ERROR_VOLUME_UPGRADE_PENDING instead')
  static const ERROR_VOLUME_UPGRADE_PENDING = 516;
  @Deprecated('Use ERROR_VOLUME_UPGRADE_DISABLED instead')
  static const ERROR_VOLUME_UPGRADE_DISABLED = 517;
  @Deprecated(
    'Use ERROR_VOLUME_UPGRADE_DISABLED_TILL_OS_DOWNGRADE_EXPIRED instead',
  )
  static const ERROR_VOLUME_UPGRADE_DISABLED_TILL_OS_DOWNGRADE_EXPIRED =
      WIN32_ERROR(518);
  @Deprecated('Use ERROR_ARITHMETIC_OVERFLOW instead')
  static const ERROR_ARITHMETIC_OVERFLOW = 534;
  @Deprecated('Use ERROR_PIPE_CONNECTED instead')
  static const ERROR_PIPE_CONNECTED = 535;
  @Deprecated('Use ERROR_PIPE_LISTENING instead')
  static const ERROR_PIPE_LISTENING = 536;
  @Deprecated('Use ERROR_VERIFIER_STOP instead')
  static const ERROR_VERIFIER_STOP = 537;
  @Deprecated('Use ERROR_ABIOS_ERROR instead')
  static const ERROR_ABIOS_ERROR = 538;
  @Deprecated('Use ERROR_WX86_WARNING instead')
  static const ERROR_WX86_WARNING = 539;
  @Deprecated('Use ERROR_WX86_ERROR instead')
  static const ERROR_WX86_ERROR = 540;
  @Deprecated('Use ERROR_TIMER_NOT_CANCELED instead')
  static const ERROR_TIMER_NOT_CANCELED = 541;
  @Deprecated('Use ERROR_UNWIND instead')
  static const ERROR_UNWIND = 542;
  @Deprecated('Use ERROR_BAD_STACK instead')
  static const ERROR_BAD_STACK = 543;
  @Deprecated('Use ERROR_INVALID_UNWIND_TARGET instead')
  static const ERROR_INVALID_UNWIND_TARGET = 544;
  @Deprecated('Use ERROR_INVALID_PORT_ATTRIBUTES instead')
  static const ERROR_INVALID_PORT_ATTRIBUTES = 545;
  @Deprecated('Use ERROR_PORT_MESSAGE_TOO_LONG instead')
  static const ERROR_PORT_MESSAGE_TOO_LONG = 546;
  @Deprecated('Use ERROR_INVALID_QUOTA_LOWER instead')
  static const ERROR_INVALID_QUOTA_LOWER = 547;
  @Deprecated('Use ERROR_DEVICE_ALREADY_ATTACHED instead')
  static const ERROR_DEVICE_ALREADY_ATTACHED = 548;
  @Deprecated('Use ERROR_INSTRUCTION_MISALIGNMENT instead')
  static const ERROR_INSTRUCTION_MISALIGNMENT = 549;
  @Deprecated('Use ERROR_PROFILING_NOT_STARTED instead')
  static const ERROR_PROFILING_NOT_STARTED = 550;
  @Deprecated('Use ERROR_PROFILING_NOT_STOPPED instead')
  static const ERROR_PROFILING_NOT_STOPPED = 551;
  @Deprecated('Use ERROR_COULD_NOT_INTERPRET instead')
  static const ERROR_COULD_NOT_INTERPRET = 552;
  @Deprecated('Use ERROR_PROFILING_AT_LIMIT instead')
  static const ERROR_PROFILING_AT_LIMIT = 553;
  @Deprecated('Use ERROR_CANT_WAIT instead')
  static const ERROR_CANT_WAIT = 554;
  @Deprecated('Use ERROR_CANT_TERMINATE_SELF instead')
  static const ERROR_CANT_TERMINATE_SELF = 555;
  @Deprecated('Use ERROR_UNEXPECTED_MM_CREATE_ERR instead')
  static const ERROR_UNEXPECTED_MM_CREATE_ERR = 556;
  @Deprecated('Use ERROR_UNEXPECTED_MM_MAP_ERROR instead')
  static const ERROR_UNEXPECTED_MM_MAP_ERROR = 557;
  @Deprecated('Use ERROR_UNEXPECTED_MM_EXTEND_ERR instead')
  static const ERROR_UNEXPECTED_MM_EXTEND_ERR = 558;
  @Deprecated('Use ERROR_BAD_FUNCTION_TABLE instead')
  static const ERROR_BAD_FUNCTION_TABLE = 559;
  @Deprecated('Use ERROR_NO_GUID_TRANSLATION instead')
  static const ERROR_NO_GUID_TRANSLATION = 560;
  @Deprecated('Use ERROR_INVALID_LDT_SIZE instead')
  static const ERROR_INVALID_LDT_SIZE = 561;
  @Deprecated('Use ERROR_INVALID_LDT_OFFSET instead')
  static const ERROR_INVALID_LDT_OFFSET = 563;
  @Deprecated('Use ERROR_INVALID_LDT_DESCRIPTOR instead')
  static const ERROR_INVALID_LDT_DESCRIPTOR = 564;
  @Deprecated('Use ERROR_TOO_MANY_THREADS instead')
  static const ERROR_TOO_MANY_THREADS = 565;
  @Deprecated('Use ERROR_THREAD_NOT_IN_PROCESS instead')
  static const ERROR_THREAD_NOT_IN_PROCESS = 566;
  @Deprecated('Use ERROR_PAGEFILE_QUOTA_EXCEEDED instead')
  static const ERROR_PAGEFILE_QUOTA_EXCEEDED = 567;
  @Deprecated('Use ERROR_LOGON_SERVER_CONFLICT instead')
  static const ERROR_LOGON_SERVER_CONFLICT = 568;
  @Deprecated('Use ERROR_SYNCHRONIZATION_REQUIRED instead')
  static const ERROR_SYNCHRONIZATION_REQUIRED = 569;
  @Deprecated('Use ERROR_NET_OPEN_FAILED instead')
  static const ERROR_NET_OPEN_FAILED = 570;
  @Deprecated('Use ERROR_IO_PRIVILEGE_FAILED instead')
  static const ERROR_IO_PRIVILEGE_FAILED = 571;
  @Deprecated('Use ERROR_CONTROL_C_EXIT instead')
  static const ERROR_CONTROL_C_EXIT = 572;
  @Deprecated('Use ERROR_MISSING_SYSTEMFILE instead')
  static const ERROR_MISSING_SYSTEMFILE = 573;
  @Deprecated('Use ERROR_UNHANDLED_EXCEPTION instead')
  static const ERROR_UNHANDLED_EXCEPTION = 574;
  @Deprecated('Use ERROR_APP_INIT_FAILURE instead')
  static const ERROR_APP_INIT_FAILURE = 575;
  @Deprecated('Use ERROR_PAGEFILE_CREATE_FAILED instead')
  static const ERROR_PAGEFILE_CREATE_FAILED = 576;
  @Deprecated('Use ERROR_INVALID_IMAGE_HASH instead')
  static const ERROR_INVALID_IMAGE_HASH = 577;
  @Deprecated('Use ERROR_NO_PAGEFILE instead')
  static const ERROR_NO_PAGEFILE = 578;
  @Deprecated('Use ERROR_ILLEGAL_FLOAT_CONTEXT instead')
  static const ERROR_ILLEGAL_FLOAT_CONTEXT = 579;
  @Deprecated('Use ERROR_NO_EVENT_PAIR instead')
  static const ERROR_NO_EVENT_PAIR = 580;
  @Deprecated('Use ERROR_DOMAIN_CTRLR_CONFIG_ERROR instead')
  static const ERROR_DOMAIN_CTRLR_CONFIG_ERROR = 581;
  @Deprecated('Use ERROR_ILLEGAL_CHARACTER instead')
  static const ERROR_ILLEGAL_CHARACTER = 582;
  @Deprecated('Use ERROR_UNDEFINED_CHARACTER instead')
  static const ERROR_UNDEFINED_CHARACTER = 583;
  @Deprecated('Use ERROR_FLOPPY_VOLUME instead')
  static const ERROR_FLOPPY_VOLUME = 584;
  @Deprecated('Use ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT instead')
  static const ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT = 585;
  @Deprecated('Use ERROR_BACKUP_CONTROLLER instead')
  static const ERROR_BACKUP_CONTROLLER = 586;
  @Deprecated('Use ERROR_MUTANT_LIMIT_EXCEEDED instead')
  static const ERROR_MUTANT_LIMIT_EXCEEDED = 587;
  @Deprecated('Use ERROR_FS_DRIVER_REQUIRED instead')
  static const ERROR_FS_DRIVER_REQUIRED = 588;
  @Deprecated('Use ERROR_CANNOT_LOAD_REGISTRY_FILE instead')
  static const ERROR_CANNOT_LOAD_REGISTRY_FILE = 589;
  @Deprecated('Use ERROR_DEBUG_ATTACH_FAILED instead')
  static const ERROR_DEBUG_ATTACH_FAILED = 590;
  @Deprecated('Use ERROR_SYSTEM_PROCESS_TERMINATED instead')
  static const ERROR_SYSTEM_PROCESS_TERMINATED = 591;
  @Deprecated('Use ERROR_DATA_NOT_ACCEPTED instead')
  static const ERROR_DATA_NOT_ACCEPTED = 592;
  @Deprecated('Use ERROR_VDM_HARD_ERROR instead')
  static const ERROR_VDM_HARD_ERROR = 593;
  @Deprecated('Use ERROR_DRIVER_CANCEL_TIMEOUT instead')
  static const ERROR_DRIVER_CANCEL_TIMEOUT = 594;
  @Deprecated('Use ERROR_REPLY_MESSAGE_MISMATCH instead')
  static const ERROR_REPLY_MESSAGE_MISMATCH = 595;
  @Deprecated('Use ERROR_LOST_WRITEBEHIND_DATA instead')
  static const ERROR_LOST_WRITEBEHIND_DATA = 596;
  @Deprecated('Use ERROR_CLIENT_SERVER_PARAMETERS_INVALID instead')
  static const ERROR_CLIENT_SERVER_PARAMETERS_INVALID = 597;
  @Deprecated('Use ERROR_NOT_TINY_STREAM instead')
  static const ERROR_NOT_TINY_STREAM = 598;
  @Deprecated('Use ERROR_STACK_OVERFLOW_READ instead')
  static const ERROR_STACK_OVERFLOW_READ = 599;
  @Deprecated('Use ERROR_CONVERT_TO_LARGE instead')
  static const ERROR_CONVERT_TO_LARGE = 600;
  @Deprecated('Use ERROR_FOUND_OUT_OF_SCOPE instead')
  static const ERROR_FOUND_OUT_OF_SCOPE = 601;
  @Deprecated('Use ERROR_ALLOCATE_BUCKET instead')
  static const ERROR_ALLOCATE_BUCKET = 602;
  @Deprecated('Use ERROR_MARSHALL_OVERFLOW instead')
  static const ERROR_MARSHALL_OVERFLOW = 603;
  @Deprecated('Use ERROR_INVALID_VARIANT instead')
  static const ERROR_INVALID_VARIANT = 604;
  @Deprecated('Use ERROR_BAD_COMPRESSION_BUFFER instead')
  static const ERROR_BAD_COMPRESSION_BUFFER = 605;
  @Deprecated('Use ERROR_AUDIT_FAILED instead')
  static const ERROR_AUDIT_FAILED = 606;
  @Deprecated('Use ERROR_TIMER_RESOLUTION_NOT_SET instead')
  static const ERROR_TIMER_RESOLUTION_NOT_SET = 607;
  @Deprecated('Use ERROR_INSUFFICIENT_LOGON_INFO instead')
  static const ERROR_INSUFFICIENT_LOGON_INFO = 608;
  @Deprecated('Use ERROR_BAD_DLL_ENTRYPOINT instead')
  static const ERROR_BAD_DLL_ENTRYPOINT = 609;
  @Deprecated('Use ERROR_BAD_SERVICE_ENTRYPOINT instead')
  static const ERROR_BAD_SERVICE_ENTRYPOINT = 610;
  @Deprecated('Use ERROR_IP_ADDRESS_CONFLICT1 instead')
  static const ERROR_IP_ADDRESS_CONFLICT1 = 611;
  @Deprecated('Use ERROR_IP_ADDRESS_CONFLICT2 instead')
  static const ERROR_IP_ADDRESS_CONFLICT2 = 612;
  @Deprecated('Use ERROR_REGISTRY_QUOTA_LIMIT instead')
  static const ERROR_REGISTRY_QUOTA_LIMIT = 613;
  @Deprecated('Use ERROR_NO_CALLBACK_ACTIVE instead')
  static const ERROR_NO_CALLBACK_ACTIVE = 614;
  @Deprecated('Use ERROR_PWD_TOO_SHORT instead')
  static const ERROR_PWD_TOO_SHORT = 615;
  @Deprecated('Use ERROR_PWD_TOO_RECENT instead')
  static const ERROR_PWD_TOO_RECENT = 616;
  @Deprecated('Use ERROR_PWD_HISTORY_CONFLICT instead')
  static const ERROR_PWD_HISTORY_CONFLICT = 617;
  @Deprecated('Use ERROR_UNSUPPORTED_COMPRESSION instead')
  static const ERROR_UNSUPPORTED_COMPRESSION = 618;
  @Deprecated('Use ERROR_INVALID_HW_PROFILE instead')
  static const ERROR_INVALID_HW_PROFILE = 619;
  @Deprecated('Use ERROR_INVALID_PLUGPLAY_DEVICE_PATH instead')
  static const ERROR_INVALID_PLUGPLAY_DEVICE_PATH = 620;
  @Deprecated('Use ERROR_QUOTA_LIST_INCONSISTENT instead')
  static const ERROR_QUOTA_LIST_INCONSISTENT = 621;
  @Deprecated('Use ERROR_EVALUATION_EXPIRATION instead')
  static const ERROR_EVALUATION_EXPIRATION = 622;
  @Deprecated('Use ERROR_ILLEGAL_DLL_RELOCATION instead')
  static const ERROR_ILLEGAL_DLL_RELOCATION = 623;
  @Deprecated('Use ERROR_DLL_INIT_FAILED_LOGOFF instead')
  static const ERROR_DLL_INIT_FAILED_LOGOFF = 624;
  @Deprecated('Use ERROR_VALIDATE_CONTINUE instead')
  static const ERROR_VALIDATE_CONTINUE = 625;
  @Deprecated('Use ERROR_NO_MORE_MATCHES instead')
  static const ERROR_NO_MORE_MATCHES = 626;
  @Deprecated('Use ERROR_RANGE_LIST_CONFLICT instead')
  static const ERROR_RANGE_LIST_CONFLICT = 627;
  @Deprecated('Use ERROR_SERVER_SID_MISMATCH instead')
  static const ERROR_SERVER_SID_MISMATCH = 628;
  @Deprecated('Use ERROR_CANT_ENABLE_DENY_ONLY instead')
  static const ERROR_CANT_ENABLE_DENY_ONLY = 629;
  @Deprecated('Use ERROR_FLOAT_MULTIPLE_FAULTS instead')
  static const ERROR_FLOAT_MULTIPLE_FAULTS = 630;
  @Deprecated('Use ERROR_FLOAT_MULTIPLE_TRAPS instead')
  static const ERROR_FLOAT_MULTIPLE_TRAPS = 631;
  @Deprecated('Use ERROR_NOINTERFACE instead')
  static const ERROR_NOINTERFACE = 632;
  @Deprecated('Use ERROR_DRIVER_FAILED_SLEEP instead')
  static const ERROR_DRIVER_FAILED_SLEEP = 633;
  @Deprecated('Use ERROR_CORRUPT_SYSTEM_FILE instead')
  static const ERROR_CORRUPT_SYSTEM_FILE = 634;
  @Deprecated('Use ERROR_COMMITMENT_MINIMUM instead')
  static const ERROR_COMMITMENT_MINIMUM = 635;
  @Deprecated('Use ERROR_PNP_RESTART_ENUMERATION instead')
  static const ERROR_PNP_RESTART_ENUMERATION = 636;
  @Deprecated('Use ERROR_SYSTEM_IMAGE_BAD_SIGNATURE instead')
  static const ERROR_SYSTEM_IMAGE_BAD_SIGNATURE = 637;
  @Deprecated('Use ERROR_PNP_REBOOT_REQUIRED instead')
  static const ERROR_PNP_REBOOT_REQUIRED = 638;
  @Deprecated('Use ERROR_INSUFFICIENT_POWER instead')
  static const ERROR_INSUFFICIENT_POWER = 639;
  @Deprecated('Use ERROR_MULTIPLE_FAULT_VIOLATION instead')
  static const ERROR_MULTIPLE_FAULT_VIOLATION = 640;
  @Deprecated('Use ERROR_SYSTEM_SHUTDOWN instead')
  static const ERROR_SYSTEM_SHUTDOWN = 641;
  @Deprecated('Use ERROR_PORT_NOT_SET instead')
  static const ERROR_PORT_NOT_SET = 642;
  @Deprecated('Use ERROR_DS_VERSION_CHECK_FAILURE instead')
  static const ERROR_DS_VERSION_CHECK_FAILURE = 643;
  @Deprecated('Use ERROR_RANGE_NOT_FOUND instead')
  static const ERROR_RANGE_NOT_FOUND = 644;
  @Deprecated('Use ERROR_NOT_SAFE_MODE_DRIVER instead')
  static const ERROR_NOT_SAFE_MODE_DRIVER = 646;
  @Deprecated('Use ERROR_FAILED_DRIVER_ENTRY instead')
  static const ERROR_FAILED_DRIVER_ENTRY = 647;
  @Deprecated('Use ERROR_DEVICE_ENUMERATION_ERROR instead')
  static const ERROR_DEVICE_ENUMERATION_ERROR = 648;
  @Deprecated('Use ERROR_MOUNT_POINT_NOT_RESOLVED instead')
  static const ERROR_MOUNT_POINT_NOT_RESOLVED = 649;
  @Deprecated('Use ERROR_INVALID_DEVICE_OBJECT_PARAMETER instead')
  static const ERROR_INVALID_DEVICE_OBJECT_PARAMETER = 650;
  @Deprecated('Use ERROR_MCA_OCCURED instead')
  static const ERROR_MCA_OCCURED = 651;
  @Deprecated('Use ERROR_DRIVER_DATABASE_ERROR instead')
  static const ERROR_DRIVER_DATABASE_ERROR = 652;
  @Deprecated('Use ERROR_SYSTEM_HIVE_TOO_LARGE instead')
  static const ERROR_SYSTEM_HIVE_TOO_LARGE = 653;
  @Deprecated('Use ERROR_DRIVER_FAILED_PRIOR_UNLOAD instead')
  static const ERROR_DRIVER_FAILED_PRIOR_UNLOAD = 654;
  @Deprecated('Use ERROR_VOLSNAP_PREPARE_HIBERNATE instead')
  static const ERROR_VOLSNAP_PREPARE_HIBERNATE = 655;
  @Deprecated('Use ERROR_HIBERNATION_FAILURE instead')
  static const ERROR_HIBERNATION_FAILURE = 656;
  @Deprecated('Use ERROR_PWD_TOO_LONG instead')
  static const ERROR_PWD_TOO_LONG = 657;
  @Deprecated('Use ERROR_FILE_SYSTEM_LIMITATION instead')
  static const ERROR_FILE_SYSTEM_LIMITATION = 665;
  @Deprecated('Use ERROR_ASSERTION_FAILURE instead')
  static const ERROR_ASSERTION_FAILURE = 668;
  @Deprecated('Use ERROR_ACPI_ERROR instead')
  static const ERROR_ACPI_ERROR = 669;
  @Deprecated('Use ERROR_WOW_ASSERTION instead')
  static const ERROR_WOW_ASSERTION = 670;
  @Deprecated('Use ERROR_PNP_BAD_MPS_TABLE instead')
  static const ERROR_PNP_BAD_MPS_TABLE = 671;
  @Deprecated('Use ERROR_PNP_TRANSLATION_FAILED instead')
  static const ERROR_PNP_TRANSLATION_FAILED = 672;
  @Deprecated('Use ERROR_PNP_IRQ_TRANSLATION_FAILED instead')
  static const ERROR_PNP_IRQ_TRANSLATION_FAILED = 673;
  @Deprecated('Use ERROR_PNP_INVALID_ID instead')
  static const ERROR_PNP_INVALID_ID = 674;
  @Deprecated('Use ERROR_WAKE_SYSTEM_DEBUGGER instead')
  static const ERROR_WAKE_SYSTEM_DEBUGGER = 675;
  @Deprecated('Use ERROR_HANDLES_CLOSED instead')
  static const ERROR_HANDLES_CLOSED = 676;
  @Deprecated('Use ERROR_EXTRANEOUS_INFORMATION instead')
  static const ERROR_EXTRANEOUS_INFORMATION = 677;
  @Deprecated('Use ERROR_RXACT_COMMIT_NECESSARY instead')
  static const ERROR_RXACT_COMMIT_NECESSARY = 678;
  @Deprecated('Use ERROR_MEDIA_CHECK instead')
  static const ERROR_MEDIA_CHECK = 679;
  @Deprecated('Use ERROR_GUID_SUBSTITUTION_MADE instead')
  static const ERROR_GUID_SUBSTITUTION_MADE = 680;
  @Deprecated('Use ERROR_STOPPED_ON_SYMLINK instead')
  static const ERROR_STOPPED_ON_SYMLINK = 681;
  @Deprecated('Use ERROR_LONGJUMP instead')
  static const ERROR_LONGJUMP = 682;
  @Deprecated('Use ERROR_PLUGPLAY_QUERY_VETOED instead')
  static const ERROR_PLUGPLAY_QUERY_VETOED = 683;
  @Deprecated('Use ERROR_UNWIND_CONSOLIDATE instead')
  static const ERROR_UNWIND_CONSOLIDATE = 684;
  @Deprecated('Use ERROR_REGISTRY_HIVE_RECOVERED instead')
  static const ERROR_REGISTRY_HIVE_RECOVERED = 685;
  @Deprecated('Use ERROR_DLL_MIGHT_BE_INSECURE instead')
  static const ERROR_DLL_MIGHT_BE_INSECURE = 686;
  @Deprecated('Use ERROR_DLL_MIGHT_BE_INCOMPATIBLE instead')
  static const ERROR_DLL_MIGHT_BE_INCOMPATIBLE = 687;
  @Deprecated('Use ERROR_DBG_EXCEPTION_NOT_HANDLED instead')
  static const ERROR_DBG_EXCEPTION_NOT_HANDLED = 688;
  @Deprecated('Use ERROR_DBG_REPLY_LATER instead')
  static const ERROR_DBG_REPLY_LATER = 689;
  @Deprecated('Use ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE instead')
  static const ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE = 690;
  @Deprecated('Use ERROR_DBG_TERMINATE_THREAD instead')
  static const ERROR_DBG_TERMINATE_THREAD = 691;
  @Deprecated('Use ERROR_DBG_TERMINATE_PROCESS instead')
  static const ERROR_DBG_TERMINATE_PROCESS = 692;
  @Deprecated('Use ERROR_DBG_CONTROL_C instead')
  static const ERROR_DBG_CONTROL_C = 693;
  @Deprecated('Use ERROR_DBG_PRINTEXCEPTION_C instead')
  static const ERROR_DBG_PRINTEXCEPTION_C = 694;
  @Deprecated('Use ERROR_DBG_RIPEXCEPTION instead')
  static const ERROR_DBG_RIPEXCEPTION = 695;
  @Deprecated('Use ERROR_DBG_CONTROL_BREAK instead')
  static const ERROR_DBG_CONTROL_BREAK = 696;
  @Deprecated('Use ERROR_DBG_COMMAND_EXCEPTION instead')
  static const ERROR_DBG_COMMAND_EXCEPTION = 697;
  @Deprecated('Use ERROR_OBJECT_NAME_EXISTS instead')
  static const ERROR_OBJECT_NAME_EXISTS = 698;
  @Deprecated('Use ERROR_THREAD_WAS_SUSPENDED instead')
  static const ERROR_THREAD_WAS_SUSPENDED = 699;
  @Deprecated('Use ERROR_IMAGE_NOT_AT_BASE instead')
  static const ERROR_IMAGE_NOT_AT_BASE = 700;
  @Deprecated('Use ERROR_RXACT_STATE_CREATED instead')
  static const ERROR_RXACT_STATE_CREATED = 701;
  @Deprecated('Use ERROR_SEGMENT_NOTIFICATION instead')
  static const ERROR_SEGMENT_NOTIFICATION = 702;
  @Deprecated('Use ERROR_BAD_CURRENT_DIRECTORY instead')
  static const ERROR_BAD_CURRENT_DIRECTORY = 703;
  @Deprecated('Use ERROR_FT_READ_RECOVERY_FROM_BACKUP instead')
  static const ERROR_FT_READ_RECOVERY_FROM_BACKUP = 704;
  @Deprecated('Use ERROR_FT_WRITE_RECOVERY instead')
  static const ERROR_FT_WRITE_RECOVERY = 705;
  @Deprecated('Use ERROR_IMAGE_MACHINE_TYPE_MISMATCH instead')
  static const ERROR_IMAGE_MACHINE_TYPE_MISMATCH = 706;
  @Deprecated('Use ERROR_RECEIVE_PARTIAL instead')
  static const ERROR_RECEIVE_PARTIAL = 707;
  @Deprecated('Use ERROR_RECEIVE_EXPEDITED instead')
  static const ERROR_RECEIVE_EXPEDITED = 708;
  @Deprecated('Use ERROR_RECEIVE_PARTIAL_EXPEDITED instead')
  static const ERROR_RECEIVE_PARTIAL_EXPEDITED = 709;
  @Deprecated('Use ERROR_EVENT_DONE instead')
  static const ERROR_EVENT_DONE = 710;
  @Deprecated('Use ERROR_EVENT_PENDING instead')
  static const ERROR_EVENT_PENDING = 711;
  @Deprecated('Use ERROR_CHECKING_FILE_SYSTEM instead')
  static const ERROR_CHECKING_FILE_SYSTEM = 712;
  @Deprecated('Use ERROR_FATAL_APP_EXIT instead')
  static const ERROR_FATAL_APP_EXIT = 713;
  @Deprecated('Use ERROR_PREDEFINED_HANDLE instead')
  static const ERROR_PREDEFINED_HANDLE = 714;
  @Deprecated('Use ERROR_WAS_UNLOCKED instead')
  static const ERROR_WAS_UNLOCKED = 715;
  @Deprecated('Use ERROR_SERVICE_NOTIFICATION instead')
  static const ERROR_SERVICE_NOTIFICATION = 716;
  @Deprecated('Use ERROR_WAS_LOCKED instead')
  static const ERROR_WAS_LOCKED = 717;
  @Deprecated('Use ERROR_LOG_HARD_ERROR instead')
  static const ERROR_LOG_HARD_ERROR = 718;
  @Deprecated('Use ERROR_ALREADY_WIN32 instead')
  static const ERROR_ALREADY_WIN32 = 719;
  @Deprecated('Use ERROR_IMAGE_MACHINE_TYPE_MISMATCH_EXE instead')
  static const ERROR_IMAGE_MACHINE_TYPE_MISMATCH_EXE = 720;
  @Deprecated('Use ERROR_NO_YIELD_PERFORMED instead')
  static const ERROR_NO_YIELD_PERFORMED = 721;
  @Deprecated('Use ERROR_TIMER_RESUME_IGNORED instead')
  static const ERROR_TIMER_RESUME_IGNORED = 722;
  @Deprecated('Use ERROR_ARBITRATION_UNHANDLED instead')
  static const ERROR_ARBITRATION_UNHANDLED = 723;
  @Deprecated('Use ERROR_CARDBUS_NOT_SUPPORTED instead')
  static const ERROR_CARDBUS_NOT_SUPPORTED = 724;
  @Deprecated('Use ERROR_MP_PROCESSOR_MISMATCH instead')
  static const ERROR_MP_PROCESSOR_MISMATCH = 725;
  @Deprecated('Use ERROR_HIBERNATED instead')
  static const ERROR_HIBERNATED = 726;
  @Deprecated('Use ERROR_RESUME_HIBERNATION instead')
  static const ERROR_RESUME_HIBERNATION = 727;
  @Deprecated('Use ERROR_FIRMWARE_UPDATED instead')
  static const ERROR_FIRMWARE_UPDATED = 728;
  @Deprecated('Use ERROR_DRIVERS_LEAKING_LOCKED_PAGES instead')
  static const ERROR_DRIVERS_LEAKING_LOCKED_PAGES = 729;
  @Deprecated('Use ERROR_WAKE_SYSTEM instead')
  static const ERROR_WAKE_SYSTEM = 730;
  @Deprecated('Use ERROR_WAIT_1 instead')
  static const ERROR_WAIT_1 = 731;
  @Deprecated('Use ERROR_WAIT_2 instead')
  static const ERROR_WAIT_2 = 732;
  @Deprecated('Use ERROR_WAIT_3 instead')
  static const ERROR_WAIT_3 = 733;
  @Deprecated('Use ERROR_WAIT_63 instead')
  static const ERROR_WAIT_63 = 734;
  @Deprecated('Use ERROR_ABANDONED_WAIT_0 instead')
  static const ERROR_ABANDONED_WAIT_0 = 735;
  @Deprecated('Use ERROR_ABANDONED_WAIT_63 instead')
  static const ERROR_ABANDONED_WAIT_63 = 736;
  @Deprecated('Use ERROR_USER_APC instead')
  static const ERROR_USER_APC = 737;
  @Deprecated('Use ERROR_KERNEL_APC instead')
  static const ERROR_KERNEL_APC = 738;
  @Deprecated('Use ERROR_ALERTED instead')
  static const ERROR_ALERTED = 739;
  @Deprecated('Use ERROR_ELEVATION_REQUIRED instead')
  static const ERROR_ELEVATION_REQUIRED = 740;
  @Deprecated('Use ERROR_REPARSE instead')
  static const ERROR_REPARSE = 741;
  @Deprecated('Use ERROR_OPLOCK_BREAK_IN_PROGRESS instead')
  static const ERROR_OPLOCK_BREAK_IN_PROGRESS = 742;
  @Deprecated('Use ERROR_VOLUME_MOUNTED instead')
  static const ERROR_VOLUME_MOUNTED = 743;
  @Deprecated('Use ERROR_RXACT_COMMITTED instead')
  static const ERROR_RXACT_COMMITTED = 744;
  @Deprecated('Use ERROR_NOTIFY_CLEANUP instead')
  static const ERROR_NOTIFY_CLEANUP = 745;
  @Deprecated('Use ERROR_PRIMARY_TRANSPORT_CONNECT_FAILED instead')
  static const ERROR_PRIMARY_TRANSPORT_CONNECT_FAILED = 746;
  @Deprecated('Use ERROR_PAGE_FAULT_TRANSITION instead')
  static const ERROR_PAGE_FAULT_TRANSITION = 747;
  @Deprecated('Use ERROR_PAGE_FAULT_DEMAND_ZERO instead')
  static const ERROR_PAGE_FAULT_DEMAND_ZERO = 748;
  @Deprecated('Use ERROR_PAGE_FAULT_COPY_ON_WRITE instead')
  static const ERROR_PAGE_FAULT_COPY_ON_WRITE = 749;
  @Deprecated('Use ERROR_PAGE_FAULT_GUARD_PAGE instead')
  static const ERROR_PAGE_FAULT_GUARD_PAGE = 750;
  @Deprecated('Use ERROR_PAGE_FAULT_PAGING_FILE instead')
  static const ERROR_PAGE_FAULT_PAGING_FILE = 751;
  @Deprecated('Use ERROR_CACHE_PAGE_LOCKED instead')
  static const ERROR_CACHE_PAGE_LOCKED = 752;
  @Deprecated('Use ERROR_CRASH_DUMP instead')
  static const ERROR_CRASH_DUMP = 753;
  @Deprecated('Use ERROR_BUFFER_ALL_ZEROS instead')
  static const ERROR_BUFFER_ALL_ZEROS = 754;
  @Deprecated('Use ERROR_REPARSE_OBJECT instead')
  static const ERROR_REPARSE_OBJECT = 755;
  @Deprecated('Use ERROR_RESOURCE_REQUIREMENTS_CHANGED instead')
  static const ERROR_RESOURCE_REQUIREMENTS_CHANGED = 756;
  @Deprecated('Use ERROR_TRANSLATION_COMPLETE instead')
  static const ERROR_TRANSLATION_COMPLETE = 757;
  @Deprecated('Use ERROR_NOTHING_TO_TERMINATE instead')
  static const ERROR_NOTHING_TO_TERMINATE = 758;
  @Deprecated('Use ERROR_PROCESS_NOT_IN_JOB instead')
  static const ERROR_PROCESS_NOT_IN_JOB = 759;
  @Deprecated('Use ERROR_PROCESS_IN_JOB instead')
  static const ERROR_PROCESS_IN_JOB = 760;
  @Deprecated('Use ERROR_VOLSNAP_HIBERNATE_READY instead')
  static const ERROR_VOLSNAP_HIBERNATE_READY = 761;
  @Deprecated('Use ERROR_FSFILTER_OP_COMPLETED_SUCCESSFULLY instead')
  static const ERROR_FSFILTER_OP_COMPLETED_SUCCESSFULLY = 762;
  @Deprecated('Use ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED instead')
  static const ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED = 763;
  @Deprecated('Use ERROR_INTERRUPT_STILL_CONNECTED instead')
  static const ERROR_INTERRUPT_STILL_CONNECTED = 764;
  @Deprecated('Use ERROR_WAIT_FOR_OPLOCK instead')
  static const ERROR_WAIT_FOR_OPLOCK = 765;
  @Deprecated('Use ERROR_DBG_EXCEPTION_HANDLED instead')
  static const ERROR_DBG_EXCEPTION_HANDLED = 766;
  @Deprecated('Use ERROR_DBG_CONTINUE instead')
  static const ERROR_DBG_CONTINUE = 767;
  @Deprecated('Use ERROR_CALLBACK_POP_STACK instead')
  static const ERROR_CALLBACK_POP_STACK = 768;
  @Deprecated('Use ERROR_COMPRESSION_DISABLED instead')
  static const ERROR_COMPRESSION_DISABLED = 769;
  @Deprecated('Use ERROR_CANTFETCHBACKWARDS instead')
  static const ERROR_CANTFETCHBACKWARDS = 770;
  @Deprecated('Use ERROR_CANTSCROLLBACKWARDS instead')
  static const ERROR_CANTSCROLLBACKWARDS = 771;
  @Deprecated('Use ERROR_ROWSNOTRELEASED instead')
  static const ERROR_ROWSNOTRELEASED = 772;
  @Deprecated('Use ERROR_BAD_ACCESSOR_FLAGS instead')
  static const ERROR_BAD_ACCESSOR_FLAGS = 773;
  @Deprecated('Use ERROR_ERRORS_ENCOUNTERED instead')
  static const ERROR_ERRORS_ENCOUNTERED = 774;
  @Deprecated('Use ERROR_NOT_CAPABLE instead')
  static const ERROR_NOT_CAPABLE = 775;
  @Deprecated('Use ERROR_REQUEST_OUT_OF_SEQUENCE instead')
  static const ERROR_REQUEST_OUT_OF_SEQUENCE = 776;
  @Deprecated('Use ERROR_VERSION_PARSE_ERROR instead')
  static const ERROR_VERSION_PARSE_ERROR = 777;
  @Deprecated('Use ERROR_BADSTARTPOSITION instead')
  static const ERROR_BADSTARTPOSITION = 778;
  @Deprecated('Use ERROR_MEMORY_HARDWARE instead')
  static const ERROR_MEMORY_HARDWARE = 779;
  @Deprecated('Use ERROR_DISK_REPAIR_DISABLED instead')
  static const ERROR_DISK_REPAIR_DISABLED = 780;
  @Deprecated(
    'Use ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE instead',
  )
  static const ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE =
      WIN32_ERROR(781);
  @Deprecated('Use ERROR_SYSTEM_POWERSTATE_TRANSITION instead')
  static const ERROR_SYSTEM_POWERSTATE_TRANSITION = 782;
  @Deprecated('Use ERROR_SYSTEM_POWERSTATE_COMPLEX_TRANSITION instead')
  static const ERROR_SYSTEM_POWERSTATE_COMPLEX_TRANSITION = 783;
  @Deprecated('Use ERROR_MCA_EXCEPTION instead')
  static const ERROR_MCA_EXCEPTION = 784;
  @Deprecated('Use ERROR_ACCESS_AUDIT_BY_POLICY instead')
  static const ERROR_ACCESS_AUDIT_BY_POLICY = 785;
  @Deprecated('Use ERROR_ACCESS_DISABLED_NO_SAFER_UI_BY_POLICY instead')
  static const ERROR_ACCESS_DISABLED_NO_SAFER_UI_BY_POLICY = 786;
  @Deprecated('Use ERROR_ABANDON_HIBERFILE instead')
  static const ERROR_ABANDON_HIBERFILE = 787;
  @Deprecated('Use ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED instead')
  static const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED = WIN32_ERROR(
    788,
  );
  @Deprecated('Use ERROR_LOST_WRITEBEHIND_DATA_NETWORK_SERVER_ERROR instead')
  static const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_SERVER_ERROR = WIN32_ERROR(
    789,
  );
  @Deprecated('Use ERROR_LOST_WRITEBEHIND_DATA_LOCAL_DISK_ERROR instead')
  static const ERROR_LOST_WRITEBEHIND_DATA_LOCAL_DISK_ERROR = 790;
  @Deprecated('Use ERROR_BAD_MCFG_TABLE instead')
  static const ERROR_BAD_MCFG_TABLE = 791;
  @Deprecated('Use ERROR_DISK_REPAIR_REDIRECTED instead')
  static const ERROR_DISK_REPAIR_REDIRECTED = 792;
  @Deprecated('Use ERROR_DISK_REPAIR_UNSUCCESSFUL instead')
  static const ERROR_DISK_REPAIR_UNSUCCESSFUL = 793;
  @Deprecated('Use ERROR_CORRUPT_LOG_OVERFULL instead')
  static const ERROR_CORRUPT_LOG_OVERFULL = 794;
  @Deprecated('Use ERROR_CORRUPT_LOG_CORRUPTED instead')
  static const ERROR_CORRUPT_LOG_CORRUPTED = 795;
  @Deprecated('Use ERROR_CORRUPT_LOG_UNAVAILABLE instead')
  static const ERROR_CORRUPT_LOG_UNAVAILABLE = 796;
  @Deprecated('Use ERROR_CORRUPT_LOG_DELETED_FULL instead')
  static const ERROR_CORRUPT_LOG_DELETED_FULL = 797;
  @Deprecated('Use ERROR_CORRUPT_LOG_CLEARED instead')
  static const ERROR_CORRUPT_LOG_CLEARED = 798;
  @Deprecated('Use ERROR_ORPHAN_NAME_EXHAUSTED instead')
  static const ERROR_ORPHAN_NAME_EXHAUSTED = 799;
  @Deprecated('Use ERROR_OPLOCK_SWITCHED_TO_NEW_HANDLE instead')
  static const ERROR_OPLOCK_SWITCHED_TO_NEW_HANDLE = 800;
  @Deprecated('Use ERROR_CANNOT_GRANT_REQUESTED_OPLOCK instead')
  static const ERROR_CANNOT_GRANT_REQUESTED_OPLOCK = 801;
  @Deprecated('Use ERROR_CANNOT_BREAK_OPLOCK instead')
  static const ERROR_CANNOT_BREAK_OPLOCK = 802;
  @Deprecated('Use ERROR_OPLOCK_HANDLE_CLOSED instead')
  static const ERROR_OPLOCK_HANDLE_CLOSED = 803;
  @Deprecated('Use ERROR_NO_ACE_CONDITION instead')
  static const ERROR_NO_ACE_CONDITION = 804;
  @Deprecated('Use ERROR_INVALID_ACE_CONDITION instead')
  static const ERROR_INVALID_ACE_CONDITION = 805;
  @Deprecated('Use ERROR_FILE_HANDLE_REVOKED instead')
  static const ERROR_FILE_HANDLE_REVOKED = 806;
  @Deprecated('Use ERROR_IMAGE_AT_DIFFERENT_BASE instead')
  static const ERROR_IMAGE_AT_DIFFERENT_BASE = 807;
  @Deprecated('Use ERROR_ENCRYPTED_IO_NOT_POSSIBLE instead')
  static const ERROR_ENCRYPTED_IO_NOT_POSSIBLE = 808;
  @Deprecated('Use ERROR_FILE_METADATA_OPTIMIZATION_IN_PROGRESS instead')
  static const ERROR_FILE_METADATA_OPTIMIZATION_IN_PROGRESS = 809;
  @Deprecated('Use ERROR_QUOTA_ACTIVITY instead')
  static const ERROR_QUOTA_ACTIVITY = 810;
  @Deprecated('Use ERROR_HANDLE_REVOKED instead')
  static const ERROR_HANDLE_REVOKED = 811;
  @Deprecated('Use ERROR_CALLBACK_INVOKE_INLINE instead')
  static const ERROR_CALLBACK_INVOKE_INLINE = 812;
  @Deprecated('Use ERROR_CPU_SET_INVALID instead')
  static const ERROR_CPU_SET_INVALID = 813;
  @Deprecated('Use ERROR_ENCLAVE_NOT_TERMINATED instead')
  static const ERROR_ENCLAVE_NOT_TERMINATED = 814;
  @Deprecated('Use ERROR_ENCLAVE_VIOLATION instead')
  static const ERROR_ENCLAVE_VIOLATION = 815;
  @Deprecated('Use ERROR_SERVER_TRANSPORT_CONFLICT instead')
  static const ERROR_SERVER_TRANSPORT_CONFLICT = 816;
  @Deprecated('Use ERROR_CERTIFICATE_VALIDATION_PREFERENCE_CONFLICT instead')
  static const ERROR_CERTIFICATE_VALIDATION_PREFERENCE_CONFLICT = WIN32_ERROR(
    817,
  );
  @Deprecated('Use ERROR_FT_READ_FROM_COPY_FAILURE instead')
  static const ERROR_FT_READ_FROM_COPY_FAILURE = 818;
  @Deprecated('Use ERROR_SECTION_DIRECT_MAP_ONLY instead')
  static const ERROR_SECTION_DIRECT_MAP_ONLY = 819;
  @Deprecated('Use ERROR_EA_ACCESS_DENIED instead')
  static const ERROR_EA_ACCESS_DENIED = 994;
  @Deprecated('Use ERROR_OPERATION_ABORTED instead')
  static const ERROR_OPERATION_ABORTED = 995;
  @Deprecated('Use ERROR_IO_INCOMPLETE instead')
  static const ERROR_IO_INCOMPLETE = 996;
  @Deprecated('Use ERROR_IO_PENDING instead')
  static const ERROR_IO_PENDING = 997;
  @Deprecated('Use ERROR_NOACCESS instead')
  static const ERROR_NOACCESS = 998;
  @Deprecated('Use ERROR_SWAPERROR instead')
  static const ERROR_SWAPERROR = 999;
  @Deprecated('Use ERROR_STACK_OVERFLOW instead')
  static const ERROR_STACK_OVERFLOW = 1001;
  @Deprecated('Use ERROR_INVALID_MESSAGE instead')
  static const ERROR_INVALID_MESSAGE = 1002;
  @Deprecated('Use ERROR_CAN_NOT_COMPLETE instead')
  static const ERROR_CAN_NOT_COMPLETE = 1003;
  @Deprecated('Use ERROR_INVALID_FLAGS instead')
  static const ERROR_INVALID_FLAGS = 1004;
  @Deprecated('Use ERROR_UNRECOGNIZED_VOLUME instead')
  static const ERROR_UNRECOGNIZED_VOLUME = 1005;
  @Deprecated('Use ERROR_FILE_INVALID instead')
  static const ERROR_FILE_INVALID = 1006;
  @Deprecated('Use ERROR_FULLSCREEN_MODE instead')
  static const ERROR_FULLSCREEN_MODE = 1007;
  @Deprecated('Use ERROR_NO_TOKEN instead')
  static const ERROR_NO_TOKEN = 1008;
  @Deprecated('Use ERROR_BADDB instead')
  static const ERROR_BADDB = 1009;
  @Deprecated('Use ERROR_BADKEY instead')
  static const ERROR_BADKEY = 1010;
  @Deprecated('Use ERROR_CANTOPEN instead')
  static const ERROR_CANTOPEN = 1011;
  @Deprecated('Use ERROR_CANTREAD instead')
  static const ERROR_CANTREAD = 1012;
  @Deprecated('Use ERROR_CANTWRITE instead')
  static const ERROR_CANTWRITE = 1013;
  @Deprecated('Use ERROR_REGISTRY_RECOVERED instead')
  static const ERROR_REGISTRY_RECOVERED = 1014;
  @Deprecated('Use ERROR_REGISTRY_CORRUPT instead')
  static const ERROR_REGISTRY_CORRUPT = 1015;
  @Deprecated('Use ERROR_REGISTRY_IO_FAILED instead')
  static const ERROR_REGISTRY_IO_FAILED = 1016;
  @Deprecated('Use ERROR_NOT_REGISTRY_FILE instead')
  static const ERROR_NOT_REGISTRY_FILE = 1017;
  @Deprecated('Use ERROR_KEY_DELETED instead')
  static const ERROR_KEY_DELETED = 1018;
  @Deprecated('Use ERROR_NO_LOG_SPACE instead')
  static const ERROR_NO_LOG_SPACE = 1019;
  @Deprecated('Use ERROR_KEY_HAS_CHILDREN instead')
  static const ERROR_KEY_HAS_CHILDREN = 1020;
  @Deprecated('Use ERROR_CHILD_MUST_BE_VOLATILE instead')
  static const ERROR_CHILD_MUST_BE_VOLATILE = 1021;
  @Deprecated('Use ERROR_NOTIFY_ENUM_DIR instead')
  static const ERROR_NOTIFY_ENUM_DIR = 1022;
  @Deprecated('Use ERROR_DEPENDENT_SERVICES_RUNNING instead')
  static const ERROR_DEPENDENT_SERVICES_RUNNING = 1051;
  @Deprecated('Use ERROR_INVALID_SERVICE_CONTROL instead')
  static const ERROR_INVALID_SERVICE_CONTROL = 1052;
  @Deprecated('Use ERROR_SERVICE_REQUEST_TIMEOUT instead')
  static const ERROR_SERVICE_REQUEST_TIMEOUT = 1053;
  @Deprecated('Use ERROR_SERVICE_NO_THREAD instead')
  static const ERROR_SERVICE_NO_THREAD = 1054;
  @Deprecated('Use ERROR_SERVICE_DATABASE_LOCKED instead')
  static const ERROR_SERVICE_DATABASE_LOCKED = 1055;
  @Deprecated('Use ERROR_SERVICE_ALREADY_RUNNING instead')
  static const ERROR_SERVICE_ALREADY_RUNNING = 1056;
  @Deprecated('Use ERROR_INVALID_SERVICE_ACCOUNT instead')
  static const ERROR_INVALID_SERVICE_ACCOUNT = 1057;
  @Deprecated('Use ERROR_SERVICE_DISABLED instead')
  static const ERROR_SERVICE_DISABLED = 1058;
  @Deprecated('Use ERROR_CIRCULAR_DEPENDENCY instead')
  static const ERROR_CIRCULAR_DEPENDENCY = 1059;
  @Deprecated('Use ERROR_SERVICE_DOES_NOT_EXIST instead')
  static const ERROR_SERVICE_DOES_NOT_EXIST = 1060;
  @Deprecated('Use ERROR_SERVICE_CANNOT_ACCEPT_CTRL instead')
  static const ERROR_SERVICE_CANNOT_ACCEPT_CTRL = 1061;
  @Deprecated('Use ERROR_SERVICE_NOT_ACTIVE instead')
  static const ERROR_SERVICE_NOT_ACTIVE = 1062;
  @Deprecated('Use ERROR_FAILED_SERVICE_CONTROLLER_CONNECT instead')
  static const ERROR_FAILED_SERVICE_CONTROLLER_CONNECT = 1063;
  @Deprecated('Use ERROR_EXCEPTION_IN_SERVICE instead')
  static const ERROR_EXCEPTION_IN_SERVICE = 1064;
  @Deprecated('Use ERROR_DATABASE_DOES_NOT_EXIST instead')
  static const ERROR_DATABASE_DOES_NOT_EXIST = 1065;
  @Deprecated('Use ERROR_SERVICE_SPECIFIC_ERROR instead')
  static const ERROR_SERVICE_SPECIFIC_ERROR = 1066;
  @Deprecated('Use ERROR_PROCESS_ABORTED instead')
  static const ERROR_PROCESS_ABORTED = 1067;
  @Deprecated('Use ERROR_SERVICE_DEPENDENCY_FAIL instead')
  static const ERROR_SERVICE_DEPENDENCY_FAIL = 1068;
  @Deprecated('Use ERROR_SERVICE_LOGON_FAILED instead')
  static const ERROR_SERVICE_LOGON_FAILED = 1069;
  @Deprecated('Use ERROR_SERVICE_START_HANG instead')
  static const ERROR_SERVICE_START_HANG = 1070;
  @Deprecated('Use ERROR_INVALID_SERVICE_LOCK instead')
  static const ERROR_INVALID_SERVICE_LOCK = 1071;
  @Deprecated('Use ERROR_SERVICE_MARKED_FOR_DELETE instead')
  static const ERROR_SERVICE_MARKED_FOR_DELETE = 1072;
  @Deprecated('Use ERROR_SERVICE_EXISTS instead')
  static const ERROR_SERVICE_EXISTS = 1073;
  @Deprecated('Use ERROR_ALREADY_RUNNING_LKG instead')
  static const ERROR_ALREADY_RUNNING_LKG = 1074;
  @Deprecated('Use ERROR_SERVICE_DEPENDENCY_DELETED instead')
  static const ERROR_SERVICE_DEPENDENCY_DELETED = 1075;
  @Deprecated('Use ERROR_BOOT_ALREADY_ACCEPTED instead')
  static const ERROR_BOOT_ALREADY_ACCEPTED = 1076;
  @Deprecated('Use ERROR_SERVICE_NEVER_STARTED instead')
  static const ERROR_SERVICE_NEVER_STARTED = 1077;
  @Deprecated('Use ERROR_DUPLICATE_SERVICE_NAME instead')
  static const ERROR_DUPLICATE_SERVICE_NAME = 1078;
  @Deprecated('Use ERROR_DIFFERENT_SERVICE_ACCOUNT instead')
  static const ERROR_DIFFERENT_SERVICE_ACCOUNT = 1079;
  @Deprecated('Use ERROR_CANNOT_DETECT_DRIVER_FAILURE instead')
  static const ERROR_CANNOT_DETECT_DRIVER_FAILURE = 1080;
  @Deprecated('Use ERROR_CANNOT_DETECT_PROCESS_ABORT instead')
  static const ERROR_CANNOT_DETECT_PROCESS_ABORT = 1081;
  @Deprecated('Use ERROR_NO_RECOVERY_PROGRAM instead')
  static const ERROR_NO_RECOVERY_PROGRAM = 1082;
  @Deprecated('Use ERROR_SERVICE_NOT_IN_EXE instead')
  static const ERROR_SERVICE_NOT_IN_EXE = 1083;
  @Deprecated('Use ERROR_NOT_SAFEBOOT_SERVICE instead')
  static const ERROR_NOT_SAFEBOOT_SERVICE = 1084;
  @Deprecated('Use ERROR_END_OF_MEDIA instead')
  static const ERROR_END_OF_MEDIA = 1100;
  @Deprecated('Use ERROR_FILEMARK_DETECTED instead')
  static const ERROR_FILEMARK_DETECTED = 1101;
  @Deprecated('Use ERROR_BEGINNING_OF_MEDIA instead')
  static const ERROR_BEGINNING_OF_MEDIA = 1102;
  @Deprecated('Use ERROR_SETMARK_DETECTED instead')
  static const ERROR_SETMARK_DETECTED = 1103;
  @Deprecated('Use ERROR_NO_DATA_DETECTED instead')
  static const ERROR_NO_DATA_DETECTED = 1104;
  @Deprecated('Use ERROR_PARTITION_FAILURE instead')
  static const ERROR_PARTITION_FAILURE = 1105;
  @Deprecated('Use ERROR_INVALID_BLOCK_LENGTH instead')
  static const ERROR_INVALID_BLOCK_LENGTH = 1106;
  @Deprecated('Use ERROR_DEVICE_NOT_PARTITIONED instead')
  static const ERROR_DEVICE_NOT_PARTITIONED = 1107;
  @Deprecated('Use ERROR_UNABLE_TO_LOCK_MEDIA instead')
  static const ERROR_UNABLE_TO_LOCK_MEDIA = 1108;
  @Deprecated('Use ERROR_UNABLE_TO_UNLOAD_MEDIA instead')
  static const ERROR_UNABLE_TO_UNLOAD_MEDIA = 1109;
  @Deprecated('Use ERROR_MEDIA_CHANGED instead')
  static const ERROR_MEDIA_CHANGED = 1110;
  @Deprecated('Use ERROR_BUS_RESET instead')
  static const ERROR_BUS_RESET = 1111;
  @Deprecated('Use ERROR_NO_MEDIA_IN_DRIVE instead')
  static const ERROR_NO_MEDIA_IN_DRIVE = 1112;
  @Deprecated('Use ERROR_NO_UNICODE_TRANSLATION instead')
  static const ERROR_NO_UNICODE_TRANSLATION = 1113;
  @Deprecated('Use ERROR_DLL_INIT_FAILED instead')
  static const ERROR_DLL_INIT_FAILED = 1114;
  @Deprecated('Use ERROR_SHUTDOWN_IN_PROGRESS instead')
  static const ERROR_SHUTDOWN_IN_PROGRESS = 1115;
  @Deprecated('Use ERROR_NO_SHUTDOWN_IN_PROGRESS instead')
  static const ERROR_NO_SHUTDOWN_IN_PROGRESS = 1116;
  @Deprecated('Use ERROR_IO_DEVICE instead')
  static const ERROR_IO_DEVICE = 1117;
  @Deprecated('Use ERROR_SERIAL_NO_DEVICE instead')
  static const ERROR_SERIAL_NO_DEVICE = 1118;
  @Deprecated('Use ERROR_IRQ_BUSY instead')
  static const ERROR_IRQ_BUSY = 1119;
  @Deprecated('Use ERROR_MORE_WRITES instead')
  static const ERROR_MORE_WRITES = 1120;
  @Deprecated('Use ERROR_COUNTER_TIMEOUT instead')
  static const ERROR_COUNTER_TIMEOUT = 1121;
  @Deprecated('Use ERROR_FLOPPY_ID_MARK_NOT_FOUND instead')
  static const ERROR_FLOPPY_ID_MARK_NOT_FOUND = 1122;
  @Deprecated('Use ERROR_FLOPPY_WRONG_CYLINDER instead')
  static const ERROR_FLOPPY_WRONG_CYLINDER = 1123;
  @Deprecated('Use ERROR_FLOPPY_UNKNOWN_ERROR instead')
  static const ERROR_FLOPPY_UNKNOWN_ERROR = 1124;
  @Deprecated('Use ERROR_FLOPPY_BAD_REGISTERS instead')
  static const ERROR_FLOPPY_BAD_REGISTERS = 1125;
  @Deprecated('Use ERROR_DISK_RECALIBRATE_FAILED instead')
  static const ERROR_DISK_RECALIBRATE_FAILED = 1126;
  @Deprecated('Use ERROR_DISK_OPERATION_FAILED instead')
  static const ERROR_DISK_OPERATION_FAILED = 1127;
  @Deprecated('Use ERROR_DISK_RESET_FAILED instead')
  static const ERROR_DISK_RESET_FAILED = 1128;
  @Deprecated('Use ERROR_EOM_OVERFLOW instead')
  static const ERROR_EOM_OVERFLOW = 1129;
  @Deprecated('Use ERROR_NOT_ENOUGH_SERVER_MEMORY instead')
  static const ERROR_NOT_ENOUGH_SERVER_MEMORY = 1130;
  @Deprecated('Use ERROR_POSSIBLE_DEADLOCK instead')
  static const ERROR_POSSIBLE_DEADLOCK = 1131;
  @Deprecated('Use ERROR_MAPPED_ALIGNMENT instead')
  static const ERROR_MAPPED_ALIGNMENT = 1132;
  @Deprecated('Use ERROR_SET_POWER_STATE_VETOED instead')
  static const ERROR_SET_POWER_STATE_VETOED = 1140;
  @Deprecated('Use ERROR_SET_POWER_STATE_FAILED instead')
  static const ERROR_SET_POWER_STATE_FAILED = 1141;
  @Deprecated('Use ERROR_TOO_MANY_LINKS instead')
  static const ERROR_TOO_MANY_LINKS = 1142;
  @Deprecated('Use ERROR_OLD_WIN_VERSION instead')
  static const ERROR_OLD_WIN_VERSION = 1150;
  @Deprecated('Use ERROR_APP_WRONG_OS instead')
  static const ERROR_APP_WRONG_OS = 1151;
  @Deprecated('Use ERROR_SINGLE_INSTANCE_APP instead')
  static const ERROR_SINGLE_INSTANCE_APP = 1152;
  @Deprecated('Use ERROR_RMODE_APP instead')
  static const ERROR_RMODE_APP = 1153;
  @Deprecated('Use ERROR_INVALID_DLL instead')
  static const ERROR_INVALID_DLL = 1154;
  @Deprecated('Use ERROR_NO_ASSOCIATION instead')
  static const ERROR_NO_ASSOCIATION = 1155;
  @Deprecated('Use ERROR_DDE_FAIL instead')
  static const ERROR_DDE_FAIL = 1156;
  @Deprecated('Use ERROR_DLL_NOT_FOUND instead')
  static const ERROR_DLL_NOT_FOUND = 1157;
  @Deprecated('Use ERROR_NO_MORE_USER_HANDLES instead')
  static const ERROR_NO_MORE_USER_HANDLES = 1158;
  @Deprecated('Use ERROR_MESSAGE_SYNC_ONLY instead')
  static const ERROR_MESSAGE_SYNC_ONLY = 1159;
  @Deprecated('Use ERROR_SOURCE_ELEMENT_EMPTY instead')
  static const ERROR_SOURCE_ELEMENT_EMPTY = 1160;
  @Deprecated('Use ERROR_DESTINATION_ELEMENT_FULL instead')
  static const ERROR_DESTINATION_ELEMENT_FULL = 1161;
  @Deprecated('Use ERROR_ILLEGAL_ELEMENT_ADDRESS instead')
  static const ERROR_ILLEGAL_ELEMENT_ADDRESS = 1162;
  @Deprecated('Use ERROR_MAGAZINE_NOT_PRESENT instead')
  static const ERROR_MAGAZINE_NOT_PRESENT = 1163;
  @Deprecated('Use ERROR_DEVICE_REINITIALIZATION_NEEDED instead')
  static const ERROR_DEVICE_REINITIALIZATION_NEEDED = 1164;
  @Deprecated('Use ERROR_DEVICE_REQUIRES_CLEANING instead')
  static const ERROR_DEVICE_REQUIRES_CLEANING = 1165;
  @Deprecated('Use ERROR_DEVICE_DOOR_OPEN instead')
  static const ERROR_DEVICE_DOOR_OPEN = 1166;
  @Deprecated('Use ERROR_DEVICE_NOT_CONNECTED instead')
  static const ERROR_DEVICE_NOT_CONNECTED = 1167;
  @Deprecated('Use ERROR_NOT_FOUND instead')
  static const ERROR_NOT_FOUND = 1168;
  @Deprecated('Use ERROR_NO_MATCH instead')
  static const ERROR_NO_MATCH = 1169;
  @Deprecated('Use ERROR_SET_NOT_FOUND instead')
  static const ERROR_SET_NOT_FOUND = 1170;
  @Deprecated('Use ERROR_POINT_NOT_FOUND instead')
  static const ERROR_POINT_NOT_FOUND = 1171;
  @Deprecated('Use ERROR_NO_TRACKING_SERVICE instead')
  static const ERROR_NO_TRACKING_SERVICE = 1172;
  @Deprecated('Use ERROR_NO_VOLUME_ID instead')
  static const ERROR_NO_VOLUME_ID = 1173;
  @Deprecated('Use ERROR_UNABLE_TO_REMOVE_REPLACED instead')
  static const ERROR_UNABLE_TO_REMOVE_REPLACED = 1175;
  @Deprecated('Use ERROR_UNABLE_TO_MOVE_REPLACEMENT instead')
  static const ERROR_UNABLE_TO_MOVE_REPLACEMENT = 1176;
  @Deprecated('Use ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 instead')
  static const ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 = 1177;
  @Deprecated('Use ERROR_JOURNAL_DELETE_IN_PROGRESS instead')
  static const ERROR_JOURNAL_DELETE_IN_PROGRESS = 1178;
  @Deprecated('Use ERROR_JOURNAL_NOT_ACTIVE instead')
  static const ERROR_JOURNAL_NOT_ACTIVE = 1179;
  @Deprecated('Use ERROR_POTENTIAL_FILE_FOUND instead')
  static const ERROR_POTENTIAL_FILE_FOUND = 1180;
  @Deprecated('Use ERROR_JOURNAL_ENTRY_DELETED instead')
  static const ERROR_JOURNAL_ENTRY_DELETED = 1181;
  @Deprecated('Use ERROR_PARTITION_TERMINATING instead')
  static const ERROR_PARTITION_TERMINATING = 1184;
  @Deprecated('Use ERROR_SHUTDOWN_IS_SCHEDULED instead')
  static const ERROR_SHUTDOWN_IS_SCHEDULED = 1190;
  @Deprecated('Use ERROR_SHUTDOWN_USERS_LOGGED_ON instead')
  static const ERROR_SHUTDOWN_USERS_LOGGED_ON = 1191;
  @Deprecated('Use ERROR_SHUTDOWN_DISKS_NOT_IN_MAINTENANCE_MODE instead')
  static const ERROR_SHUTDOWN_DISKS_NOT_IN_MAINTENANCE_MODE = 1192;
  @Deprecated('Use ERROR_BAD_DEVICE instead')
  static const ERROR_BAD_DEVICE = 1200;
  @Deprecated('Use ERROR_CONNECTION_UNAVAIL instead')
  static const ERROR_CONNECTION_UNAVAIL = 1201;
  @Deprecated('Use ERROR_DEVICE_ALREADY_REMEMBERED instead')
  static const ERROR_DEVICE_ALREADY_REMEMBERED = 1202;
  @Deprecated('Use ERROR_NO_NET_OR_BAD_PATH instead')
  static const ERROR_NO_NET_OR_BAD_PATH = 1203;
  @Deprecated('Use ERROR_BAD_PROVIDER instead')
  static const ERROR_BAD_PROVIDER = 1204;
  @Deprecated('Use ERROR_CANNOT_OPEN_PROFILE instead')
  static const ERROR_CANNOT_OPEN_PROFILE = 1205;
  @Deprecated('Use ERROR_BAD_PROFILE instead')
  static const ERROR_BAD_PROFILE = 1206;
  @Deprecated('Use ERROR_NOT_CONTAINER instead')
  static const ERROR_NOT_CONTAINER = 1207;
  @Deprecated('Use ERROR_EXTENDED_ERROR instead')
  static const ERROR_EXTENDED_ERROR = 1208;
  @Deprecated('Use ERROR_INVALID_GROUPNAME instead')
  static const ERROR_INVALID_GROUPNAME = 1209;
  @Deprecated('Use ERROR_INVALID_COMPUTERNAME instead')
  static const ERROR_INVALID_COMPUTERNAME = 1210;
  @Deprecated('Use ERROR_INVALID_EVENTNAME instead')
  static const ERROR_INVALID_EVENTNAME = 1211;
  @Deprecated('Use ERROR_INVALID_DOMAINNAME instead')
  static const ERROR_INVALID_DOMAINNAME = 1212;
  @Deprecated('Use ERROR_INVALID_SERVICENAME instead')
  static const ERROR_INVALID_SERVICENAME = 1213;
  @Deprecated('Use ERROR_INVALID_NETNAME instead')
  static const ERROR_INVALID_NETNAME = 1214;
  @Deprecated('Use ERROR_INVALID_SHARENAME instead')
  static const ERROR_INVALID_SHARENAME = 1215;
  @Deprecated('Use ERROR_INVALID_PASSWORDNAME instead')
  static const ERROR_INVALID_PASSWORDNAME = 1216;
  @Deprecated('Use ERROR_INVALID_MESSAGENAME instead')
  static const ERROR_INVALID_MESSAGENAME = 1217;
  @Deprecated('Use ERROR_INVALID_MESSAGEDEST instead')
  static const ERROR_INVALID_MESSAGEDEST = 1218;
  @Deprecated('Use ERROR_SESSION_CREDENTIAL_CONFLICT instead')
  static const ERROR_SESSION_CREDENTIAL_CONFLICT = 1219;
  @Deprecated('Use ERROR_REMOTE_SESSION_LIMIT_EXCEEDED instead')
  static const ERROR_REMOTE_SESSION_LIMIT_EXCEEDED = 1220;
  @Deprecated('Use ERROR_DUP_DOMAINNAME instead')
  static const ERROR_DUP_DOMAINNAME = 1221;
  @Deprecated('Use ERROR_NO_NETWORK instead')
  static const ERROR_NO_NETWORK = 1222;
  @Deprecated('Use ERROR_CANCELLED instead')
  static const ERROR_CANCELLED = 1223;
  @Deprecated('Use ERROR_USER_MAPPED_FILE instead')
  static const ERROR_USER_MAPPED_FILE = 1224;
  @Deprecated('Use ERROR_CONNECTION_REFUSED instead')
  static const ERROR_CONNECTION_REFUSED = 1225;
  @Deprecated('Use ERROR_GRACEFUL_DISCONNECT instead')
  static const ERROR_GRACEFUL_DISCONNECT = 1226;
  @Deprecated('Use ERROR_ADDRESS_ALREADY_ASSOCIATED instead')
  static const ERROR_ADDRESS_ALREADY_ASSOCIATED = 1227;
  @Deprecated('Use ERROR_ADDRESS_NOT_ASSOCIATED instead')
  static const ERROR_ADDRESS_NOT_ASSOCIATED = 1228;
  @Deprecated('Use ERROR_CONNECTION_INVALID instead')
  static const ERROR_CONNECTION_INVALID = 1229;
  @Deprecated('Use ERROR_CONNECTION_ACTIVE instead')
  static const ERROR_CONNECTION_ACTIVE = 1230;
  @Deprecated('Use ERROR_NETWORK_UNREACHABLE instead')
  static const ERROR_NETWORK_UNREACHABLE = 1231;
  @Deprecated('Use ERROR_HOST_UNREACHABLE instead')
  static const ERROR_HOST_UNREACHABLE = 1232;
  @Deprecated('Use ERROR_PROTOCOL_UNREACHABLE instead')
  static const ERROR_PROTOCOL_UNREACHABLE = 1233;
  @Deprecated('Use ERROR_PORT_UNREACHABLE instead')
  static const ERROR_PORT_UNREACHABLE = 1234;
  @Deprecated('Use ERROR_REQUEST_ABORTED instead')
  static const ERROR_REQUEST_ABORTED = 1235;
  @Deprecated('Use ERROR_CONNECTION_ABORTED instead')
  static const ERROR_CONNECTION_ABORTED = 1236;
  @Deprecated('Use ERROR_RETRY instead')
  static const ERROR_RETRY = 1237;
  @Deprecated('Use ERROR_CONNECTION_COUNT_LIMIT instead')
  static const ERROR_CONNECTION_COUNT_LIMIT = 1238;
  @Deprecated('Use ERROR_LOGIN_TIME_RESTRICTION instead')
  static const ERROR_LOGIN_TIME_RESTRICTION = 1239;
  @Deprecated('Use ERROR_LOGIN_WKSTA_RESTRICTION instead')
  static const ERROR_LOGIN_WKSTA_RESTRICTION = 1240;
  @Deprecated('Use ERROR_INCORRECT_ADDRESS instead')
  static const ERROR_INCORRECT_ADDRESS = 1241;
  @Deprecated('Use ERROR_ALREADY_REGISTERED instead')
  static const ERROR_ALREADY_REGISTERED = 1242;
  @Deprecated('Use ERROR_SERVICE_NOT_FOUND instead')
  static const ERROR_SERVICE_NOT_FOUND = 1243;
  @Deprecated('Use ERROR_NOT_AUTHENTICATED instead')
  static const ERROR_NOT_AUTHENTICATED = 1244;
  @Deprecated('Use ERROR_NOT_LOGGED_ON instead')
  static const ERROR_NOT_LOGGED_ON = 1245;
  @Deprecated('Use ERROR_CONTINUE instead')
  static const ERROR_CONTINUE = 1246;
  @Deprecated('Use ERROR_ALREADY_INITIALIZED instead')
  static const ERROR_ALREADY_INITIALIZED = 1247;
  @Deprecated('Use ERROR_NO_MORE_DEVICES instead')
  static const ERROR_NO_MORE_DEVICES = 1248;
  @Deprecated('Use ERROR_NO_SUCH_SITE instead')
  static const ERROR_NO_SUCH_SITE = 1249;
  @Deprecated('Use ERROR_DOMAIN_CONTROLLER_EXISTS instead')
  static const ERROR_DOMAIN_CONTROLLER_EXISTS = 1250;
  @Deprecated('Use ERROR_ONLY_IF_CONNECTED instead')
  static const ERROR_ONLY_IF_CONNECTED = 1251;
  @Deprecated('Use ERROR_OVERRIDE_NOCHANGES instead')
  static const ERROR_OVERRIDE_NOCHANGES = 1252;
  @Deprecated('Use ERROR_BAD_USER_PROFILE instead')
  static const ERROR_BAD_USER_PROFILE = 1253;
  @Deprecated('Use ERROR_NOT_SUPPORTED_ON_SBS instead')
  static const ERROR_NOT_SUPPORTED_ON_SBS = 1254;
  @Deprecated('Use ERROR_SERVER_SHUTDOWN_IN_PROGRESS instead')
  static const ERROR_SERVER_SHUTDOWN_IN_PROGRESS = 1255;
  @Deprecated('Use ERROR_HOST_DOWN instead')
  static const ERROR_HOST_DOWN = 1256;
  @Deprecated('Use ERROR_NON_ACCOUNT_SID instead')
  static const ERROR_NON_ACCOUNT_SID = 1257;
  @Deprecated('Use ERROR_NON_DOMAIN_SID instead')
  static const ERROR_NON_DOMAIN_SID = 1258;
  @Deprecated('Use ERROR_APPHELP_BLOCK instead')
  static const ERROR_APPHELP_BLOCK = 1259;
  @Deprecated('Use ERROR_ACCESS_DISABLED_BY_POLICY instead')
  static const ERROR_ACCESS_DISABLED_BY_POLICY = 1260;
  @Deprecated('Use ERROR_REG_NAT_CONSUMPTION instead')
  static const ERROR_REG_NAT_CONSUMPTION = 1261;
  @Deprecated('Use ERROR_CSCSHARE_OFFLINE instead')
  static const ERROR_CSCSHARE_OFFLINE = 1262;
  @Deprecated('Use ERROR_PKINIT_FAILURE instead')
  static const ERROR_PKINIT_FAILURE = 1263;
  @Deprecated('Use ERROR_SMARTCARD_SUBSYSTEM_FAILURE instead')
  static const ERROR_SMARTCARD_SUBSYSTEM_FAILURE = 1264;
  @Deprecated('Use ERROR_DOWNGRADE_DETECTED instead')
  static const ERROR_DOWNGRADE_DETECTED = 1265;
  @Deprecated('Use ERROR_MACHINE_LOCKED instead')
  static const ERROR_MACHINE_LOCKED = 1271;
  @Deprecated('Use ERROR_SMB_GUEST_LOGON_BLOCKED instead')
  static const ERROR_SMB_GUEST_LOGON_BLOCKED = 1272;
  @Deprecated('Use ERROR_CALLBACK_SUPPLIED_INVALID_DATA instead')
  static const ERROR_CALLBACK_SUPPLIED_INVALID_DATA = 1273;
  @Deprecated('Use ERROR_SYNC_FOREGROUND_REFRESH_REQUIRED instead')
  static const ERROR_SYNC_FOREGROUND_REFRESH_REQUIRED = 1274;
  @Deprecated('Use ERROR_DRIVER_BLOCKED instead')
  static const ERROR_DRIVER_BLOCKED = 1275;
  @Deprecated('Use ERROR_INVALID_IMPORT_OF_NON_DLL instead')
  static const ERROR_INVALID_IMPORT_OF_NON_DLL = 1276;
  @Deprecated('Use ERROR_ACCESS_DISABLED_WEBBLADE instead')
  static const ERROR_ACCESS_DISABLED_WEBBLADE = 1277;
  @Deprecated('Use ERROR_ACCESS_DISABLED_WEBBLADE_TAMPER instead')
  static const ERROR_ACCESS_DISABLED_WEBBLADE_TAMPER = 1278;
  @Deprecated('Use ERROR_RECOVERY_FAILURE instead')
  static const ERROR_RECOVERY_FAILURE = 1279;
  @Deprecated('Use ERROR_ALREADY_FIBER instead')
  static const ERROR_ALREADY_FIBER = 1280;
  @Deprecated('Use ERROR_ALREADY_THREAD instead')
  static const ERROR_ALREADY_THREAD = 1281;
  @Deprecated('Use ERROR_STACK_BUFFER_OVERRUN instead')
  static const ERROR_STACK_BUFFER_OVERRUN = 1282;
  @Deprecated('Use ERROR_PARAMETER_QUOTA_EXCEEDED instead')
  static const ERROR_PARAMETER_QUOTA_EXCEEDED = 1283;
  @Deprecated('Use ERROR_DEBUGGER_INACTIVE instead')
  static const ERROR_DEBUGGER_INACTIVE = 1284;
  @Deprecated('Use ERROR_DELAY_LOAD_FAILED instead')
  static const ERROR_DELAY_LOAD_FAILED = 1285;
  @Deprecated('Use ERROR_VDM_DISALLOWED instead')
  static const ERROR_VDM_DISALLOWED = 1286;
  @Deprecated('Use ERROR_UNIDENTIFIED_ERROR instead')
  static const ERROR_UNIDENTIFIED_ERROR = 1287;
  @Deprecated('Use ERROR_INVALID_CRUNTIME_PARAMETER instead')
  static const ERROR_INVALID_CRUNTIME_PARAMETER = 1288;
  @Deprecated('Use ERROR_BEYOND_VDL instead')
  static const ERROR_BEYOND_VDL = 1289;
  @Deprecated('Use ERROR_INCOMPATIBLE_SERVICE_SID_TYPE instead')
  static const ERROR_INCOMPATIBLE_SERVICE_SID_TYPE = 1290;
  @Deprecated('Use ERROR_DRIVER_PROCESS_TERMINATED instead')
  static const ERROR_DRIVER_PROCESS_TERMINATED = 1291;
  @Deprecated('Use ERROR_IMPLEMENTATION_LIMIT instead')
  static const ERROR_IMPLEMENTATION_LIMIT = 1292;
  @Deprecated('Use ERROR_PROCESS_IS_PROTECTED instead')
  static const ERROR_PROCESS_IS_PROTECTED = 1293;
  @Deprecated('Use ERROR_SERVICE_NOTIFY_CLIENT_LAGGING instead')
  static const ERROR_SERVICE_NOTIFY_CLIENT_LAGGING = 1294;
  @Deprecated('Use ERROR_DISK_QUOTA_EXCEEDED instead')
  static const ERROR_DISK_QUOTA_EXCEEDED = 1295;
  @Deprecated('Use ERROR_CONTENT_BLOCKED instead')
  static const ERROR_CONTENT_BLOCKED = 1296;
  @Deprecated('Use ERROR_INCOMPATIBLE_SERVICE_PRIVILEGE instead')
  static const ERROR_INCOMPATIBLE_SERVICE_PRIVILEGE = 1297;
  @Deprecated('Use ERROR_APP_HANG instead')
  static const ERROR_APP_HANG = 1298;
  @Deprecated('Use ERROR_INVALID_LABEL instead')
  static const ERROR_INVALID_LABEL = 1299;
  @Deprecated('Use ERROR_NOT_ALL_ASSIGNED instead')
  static const ERROR_NOT_ALL_ASSIGNED = 1300;
  @Deprecated('Use ERROR_SOME_NOT_MAPPED instead')
  static const ERROR_SOME_NOT_MAPPED = 1301;
  @Deprecated('Use ERROR_NO_QUOTAS_FOR_ACCOUNT instead')
  static const ERROR_NO_QUOTAS_FOR_ACCOUNT = 1302;
  @Deprecated('Use ERROR_LOCAL_USER_SESSION_KEY instead')
  static const ERROR_LOCAL_USER_SESSION_KEY = 1303;
  @Deprecated('Use ERROR_NULL_LM_PASSWORD instead')
  static const ERROR_NULL_LM_PASSWORD = 1304;
  @Deprecated('Use ERROR_UNKNOWN_REVISION instead')
  static const ERROR_UNKNOWN_REVISION = 1305;
  @Deprecated('Use ERROR_REVISION_MISMATCH instead')
  static const ERROR_REVISION_MISMATCH = 1306;
  @Deprecated('Use ERROR_INVALID_OWNER instead')
  static const ERROR_INVALID_OWNER = 1307;
  @Deprecated('Use ERROR_INVALID_PRIMARY_GROUP instead')
  static const ERROR_INVALID_PRIMARY_GROUP = 1308;
  @Deprecated('Use ERROR_NO_IMPERSONATION_TOKEN instead')
  static const ERROR_NO_IMPERSONATION_TOKEN = 1309;
  @Deprecated('Use ERROR_CANT_DISABLE_MANDATORY instead')
  static const ERROR_CANT_DISABLE_MANDATORY = 1310;
  @Deprecated('Use ERROR_NO_LOGON_SERVERS instead')
  static const ERROR_NO_LOGON_SERVERS = 1311;
  @Deprecated('Use ERROR_NO_SUCH_LOGON_SESSION instead')
  static const ERROR_NO_SUCH_LOGON_SESSION = 1312;
  @Deprecated('Use ERROR_NO_SUCH_PRIVILEGE instead')
  static const ERROR_NO_SUCH_PRIVILEGE = 1313;
  @Deprecated('Use ERROR_PRIVILEGE_NOT_HELD instead')
  static const ERROR_PRIVILEGE_NOT_HELD = 1314;
  @Deprecated('Use ERROR_INVALID_ACCOUNT_NAME instead')
  static const ERROR_INVALID_ACCOUNT_NAME = 1315;
  @Deprecated('Use ERROR_USER_EXISTS instead')
  static const ERROR_USER_EXISTS = 1316;
  @Deprecated('Use ERROR_NO_SUCH_USER instead')
  static const ERROR_NO_SUCH_USER = 1317;
  @Deprecated('Use ERROR_GROUP_EXISTS instead')
  static const ERROR_GROUP_EXISTS = 1318;
  @Deprecated('Use ERROR_NO_SUCH_GROUP instead')
  static const ERROR_NO_SUCH_GROUP = 1319;
  @Deprecated('Use ERROR_MEMBER_IN_GROUP instead')
  static const ERROR_MEMBER_IN_GROUP = 1320;
  @Deprecated('Use ERROR_MEMBER_NOT_IN_GROUP instead')
  static const ERROR_MEMBER_NOT_IN_GROUP = 1321;
  @Deprecated('Use ERROR_LAST_ADMIN instead')
  static const ERROR_LAST_ADMIN = 1322;
  @Deprecated('Use ERROR_WRONG_PASSWORD instead')
  static const ERROR_WRONG_PASSWORD = 1323;
  @Deprecated('Use ERROR_ILL_FORMED_PASSWORD instead')
  static const ERROR_ILL_FORMED_PASSWORD = 1324;
  @Deprecated('Use ERROR_PASSWORD_RESTRICTION instead')
  static const ERROR_PASSWORD_RESTRICTION = 1325;
  @Deprecated('Use ERROR_LOGON_FAILURE instead')
  static const ERROR_LOGON_FAILURE = 1326;
  @Deprecated('Use ERROR_ACCOUNT_RESTRICTION instead')
  static const ERROR_ACCOUNT_RESTRICTION = 1327;
  @Deprecated('Use ERROR_INVALID_LOGON_HOURS instead')
  static const ERROR_INVALID_LOGON_HOURS = 1328;
  @Deprecated('Use ERROR_INVALID_WORKSTATION instead')
  static const ERROR_INVALID_WORKSTATION = 1329;
  @Deprecated('Use ERROR_PASSWORD_EXPIRED instead')
  static const ERROR_PASSWORD_EXPIRED = 1330;
  @Deprecated('Use ERROR_ACCOUNT_DISABLED instead')
  static const ERROR_ACCOUNT_DISABLED = 1331;
  @Deprecated('Use ERROR_NONE_MAPPED instead')
  static const ERROR_NONE_MAPPED = 1332;
  @Deprecated('Use ERROR_TOO_MANY_LUIDS_REQUESTED instead')
  static const ERROR_TOO_MANY_LUIDS_REQUESTED = 1333;
  @Deprecated('Use ERROR_LUIDS_EXHAUSTED instead')
  static const ERROR_LUIDS_EXHAUSTED = 1334;
  @Deprecated('Use ERROR_INVALID_SUB_AUTHORITY instead')
  static const ERROR_INVALID_SUB_AUTHORITY = 1335;
  @Deprecated('Use ERROR_INVALID_ACL instead')
  static const ERROR_INVALID_ACL = 1336;
  @Deprecated('Use ERROR_INVALID_SID instead')
  static const ERROR_INVALID_SID = 1337;
  @Deprecated('Use ERROR_INVALID_SECURITY_DESCR instead')
  static const ERROR_INVALID_SECURITY_DESCR = 1338;
  @Deprecated('Use ERROR_BAD_INHERITANCE_ACL instead')
  static const ERROR_BAD_INHERITANCE_ACL = 1340;
  @Deprecated('Use ERROR_SERVER_DISABLED instead')
  static const ERROR_SERVER_DISABLED = 1341;
  @Deprecated('Use ERROR_SERVER_NOT_DISABLED instead')
  static const ERROR_SERVER_NOT_DISABLED = 1342;
  @Deprecated('Use ERROR_INVALID_ID_AUTHORITY instead')
  static const ERROR_INVALID_ID_AUTHORITY = 1343;
  @Deprecated('Use ERROR_ALLOTTED_SPACE_EXCEEDED instead')
  static const ERROR_ALLOTTED_SPACE_EXCEEDED = 1344;
  @Deprecated('Use ERROR_INVALID_GROUP_ATTRIBUTES instead')
  static const ERROR_INVALID_GROUP_ATTRIBUTES = 1345;
  @Deprecated('Use ERROR_BAD_IMPERSONATION_LEVEL instead')
  static const ERROR_BAD_IMPERSONATION_LEVEL = 1346;
  @Deprecated('Use ERROR_CANT_OPEN_ANONYMOUS instead')
  static const ERROR_CANT_OPEN_ANONYMOUS = 1347;
  @Deprecated('Use ERROR_BAD_VALIDATION_CLASS instead')
  static const ERROR_BAD_VALIDATION_CLASS = 1348;
  @Deprecated('Use ERROR_BAD_TOKEN_TYPE instead')
  static const ERROR_BAD_TOKEN_TYPE = 1349;
  @Deprecated('Use ERROR_NO_SECURITY_ON_OBJECT instead')
  static const ERROR_NO_SECURITY_ON_OBJECT = 1350;
  @Deprecated('Use ERROR_CANT_ACCESS_DOMAIN_INFO instead')
  static const ERROR_CANT_ACCESS_DOMAIN_INFO = 1351;
  @Deprecated('Use ERROR_INVALID_SERVER_STATE instead')
  static const ERROR_INVALID_SERVER_STATE = 1352;
  @Deprecated('Use ERROR_INVALID_DOMAIN_STATE instead')
  static const ERROR_INVALID_DOMAIN_STATE = 1353;
  @Deprecated('Use ERROR_INVALID_DOMAIN_ROLE instead')
  static const ERROR_INVALID_DOMAIN_ROLE = 1354;
  @Deprecated('Use ERROR_NO_SUCH_DOMAIN instead')
  static const ERROR_NO_SUCH_DOMAIN = 1355;
  @Deprecated('Use ERROR_DOMAIN_EXISTS instead')
  static const ERROR_DOMAIN_EXISTS = 1356;
  @Deprecated('Use ERROR_DOMAIN_LIMIT_EXCEEDED instead')
  static const ERROR_DOMAIN_LIMIT_EXCEEDED = 1357;
  @Deprecated('Use ERROR_INTERNAL_DB_CORRUPTION instead')
  static const ERROR_INTERNAL_DB_CORRUPTION = 1358;
  @Deprecated('Use ERROR_INTERNAL_ERROR instead')
  static const ERROR_INTERNAL_ERROR = 1359;
  @Deprecated('Use ERROR_GENERIC_NOT_MAPPED instead')
  static const ERROR_GENERIC_NOT_MAPPED = 1360;
  @Deprecated('Use ERROR_BAD_DESCRIPTOR_FORMAT instead')
  static const ERROR_BAD_DESCRIPTOR_FORMAT = 1361;
  @Deprecated('Use ERROR_NOT_LOGON_PROCESS instead')
  static const ERROR_NOT_LOGON_PROCESS = 1362;
  @Deprecated('Use ERROR_LOGON_SESSION_EXISTS instead')
  static const ERROR_LOGON_SESSION_EXISTS = 1363;
  @Deprecated('Use ERROR_NO_SUCH_PACKAGE instead')
  static const ERROR_NO_SUCH_PACKAGE = 1364;
  @Deprecated('Use ERROR_BAD_LOGON_SESSION_STATE instead')
  static const ERROR_BAD_LOGON_SESSION_STATE = 1365;
  @Deprecated('Use ERROR_LOGON_SESSION_COLLISION instead')
  static const ERROR_LOGON_SESSION_COLLISION = 1366;
  @Deprecated('Use ERROR_INVALID_LOGON_TYPE instead')
  static const ERROR_INVALID_LOGON_TYPE = 1367;
  @Deprecated('Use ERROR_CANNOT_IMPERSONATE instead')
  static const ERROR_CANNOT_IMPERSONATE = 1368;
  @Deprecated('Use ERROR_RXACT_INVALID_STATE instead')
  static const ERROR_RXACT_INVALID_STATE = 1369;
  @Deprecated('Use ERROR_RXACT_COMMIT_FAILURE instead')
  static const ERROR_RXACT_COMMIT_FAILURE = 1370;
  @Deprecated('Use ERROR_SPECIAL_ACCOUNT instead')
  static const ERROR_SPECIAL_ACCOUNT = 1371;
  @Deprecated('Use ERROR_SPECIAL_GROUP instead')
  static const ERROR_SPECIAL_GROUP = 1372;
  @Deprecated('Use ERROR_SPECIAL_USER instead')
  static const ERROR_SPECIAL_USER = 1373;
  @Deprecated('Use ERROR_MEMBERS_PRIMARY_GROUP instead')
  static const ERROR_MEMBERS_PRIMARY_GROUP = 1374;
  @Deprecated('Use ERROR_TOKEN_ALREADY_IN_USE instead')
  static const ERROR_TOKEN_ALREADY_IN_USE = 1375;
  @Deprecated('Use ERROR_NO_SUCH_ALIAS instead')
  static const ERROR_NO_SUCH_ALIAS = 1376;
  @Deprecated('Use ERROR_MEMBER_NOT_IN_ALIAS instead')
  static const ERROR_MEMBER_NOT_IN_ALIAS = 1377;
  @Deprecated('Use ERROR_MEMBER_IN_ALIAS instead')
  static const ERROR_MEMBER_IN_ALIAS = 1378;
  @Deprecated('Use ERROR_ALIAS_EXISTS instead')
  static const ERROR_ALIAS_EXISTS = 1379;
  @Deprecated('Use ERROR_LOGON_NOT_GRANTED instead')
  static const ERROR_LOGON_NOT_GRANTED = 1380;
  @Deprecated('Use ERROR_TOO_MANY_SECRETS instead')
  static const ERROR_TOO_MANY_SECRETS = 1381;
  @Deprecated('Use ERROR_SECRET_TOO_LONG instead')
  static const ERROR_SECRET_TOO_LONG = 1382;
  @Deprecated('Use ERROR_INTERNAL_DB_ERROR instead')
  static const ERROR_INTERNAL_DB_ERROR = 1383;
  @Deprecated('Use ERROR_TOO_MANY_CONTEXT_IDS instead')
  static const ERROR_TOO_MANY_CONTEXT_IDS = 1384;
  @Deprecated('Use ERROR_LOGON_TYPE_NOT_GRANTED instead')
  static const ERROR_LOGON_TYPE_NOT_GRANTED = 1385;
  @Deprecated('Use ERROR_NT_CROSS_ENCRYPTION_REQUIRED instead')
  static const ERROR_NT_CROSS_ENCRYPTION_REQUIRED = 1386;
  @Deprecated('Use ERROR_NO_SUCH_MEMBER instead')
  static const ERROR_NO_SUCH_MEMBER = 1387;
  @Deprecated('Use ERROR_INVALID_MEMBER instead')
  static const ERROR_INVALID_MEMBER = 1388;
  @Deprecated('Use ERROR_TOO_MANY_SIDS instead')
  static const ERROR_TOO_MANY_SIDS = 1389;
  @Deprecated('Use ERROR_LM_CROSS_ENCRYPTION_REQUIRED instead')
  static const ERROR_LM_CROSS_ENCRYPTION_REQUIRED = 1390;
  @Deprecated('Use ERROR_NO_INHERITANCE instead')
  static const ERROR_NO_INHERITANCE = 1391;
  @Deprecated('Use ERROR_FILE_CORRUPT instead')
  static const ERROR_FILE_CORRUPT = 1392;
  @Deprecated('Use ERROR_DISK_CORRUPT instead')
  static const ERROR_DISK_CORRUPT = 1393;
  @Deprecated('Use ERROR_NO_USER_SESSION_KEY instead')
  static const ERROR_NO_USER_SESSION_KEY = 1394;
  @Deprecated('Use ERROR_LICENSE_QUOTA_EXCEEDED instead')
  static const ERROR_LICENSE_QUOTA_EXCEEDED = 1395;
  @Deprecated('Use ERROR_WRONG_TARGET_NAME instead')
  static const ERROR_WRONG_TARGET_NAME = 1396;
  @Deprecated('Use ERROR_MUTUAL_AUTH_FAILED instead')
  static const ERROR_MUTUAL_AUTH_FAILED = 1397;
  @Deprecated('Use ERROR_TIME_SKEW instead')
  static const ERROR_TIME_SKEW = 1398;
  @Deprecated('Use ERROR_CURRENT_DOMAIN_NOT_ALLOWED instead')
  static const ERROR_CURRENT_DOMAIN_NOT_ALLOWED = 1399;
  @Deprecated('Use ERROR_INVALID_WINDOW_HANDLE instead')
  static const ERROR_INVALID_WINDOW_HANDLE = 1400;
  @Deprecated('Use ERROR_INVALID_MENU_HANDLE instead')
  static const ERROR_INVALID_MENU_HANDLE = 1401;
  @Deprecated('Use ERROR_INVALID_CURSOR_HANDLE instead')
  static const ERROR_INVALID_CURSOR_HANDLE = 1402;
  @Deprecated('Use ERROR_INVALID_ACCEL_HANDLE instead')
  static const ERROR_INVALID_ACCEL_HANDLE = 1403;
  @Deprecated('Use ERROR_INVALID_HOOK_HANDLE instead')
  static const ERROR_INVALID_HOOK_HANDLE = 1404;
  @Deprecated('Use ERROR_INVALID_DWP_HANDLE instead')
  static const ERROR_INVALID_DWP_HANDLE = 1405;
  @Deprecated('Use ERROR_TLW_WITH_WSCHILD instead')
  static const ERROR_TLW_WITH_WSCHILD = 1406;
  @Deprecated('Use ERROR_CANNOT_FIND_WND_CLASS instead')
  static const ERROR_CANNOT_FIND_WND_CLASS = 1407;
  @Deprecated('Use ERROR_WINDOW_OF_OTHER_THREAD instead')
  static const ERROR_WINDOW_OF_OTHER_THREAD = 1408;
  @Deprecated('Use ERROR_HOTKEY_ALREADY_REGISTERED instead')
  static const ERROR_HOTKEY_ALREADY_REGISTERED = 1409;
  @Deprecated('Use ERROR_CLASS_ALREADY_EXISTS instead')
  static const ERROR_CLASS_ALREADY_EXISTS = 1410;
  @Deprecated('Use ERROR_CLASS_DOES_NOT_EXIST instead')
  static const ERROR_CLASS_DOES_NOT_EXIST = 1411;
  @Deprecated('Use ERROR_CLASS_HAS_WINDOWS instead')
  static const ERROR_CLASS_HAS_WINDOWS = 1412;
  @Deprecated('Use ERROR_INVALID_INDEX instead')
  static const ERROR_INVALID_INDEX = 1413;
  @Deprecated('Use ERROR_INVALID_ICON_HANDLE instead')
  static const ERROR_INVALID_ICON_HANDLE = 1414;
  @Deprecated('Use ERROR_PRIVATE_DIALOG_INDEX instead')
  static const ERROR_PRIVATE_DIALOG_INDEX = 1415;
  @Deprecated('Use ERROR_LISTBOX_ID_NOT_FOUND instead')
  static const ERROR_LISTBOX_ID_NOT_FOUND = 1416;
  @Deprecated('Use ERROR_NO_WILDCARD_CHARACTERS instead')
  static const ERROR_NO_WILDCARD_CHARACTERS = 1417;
  @Deprecated('Use ERROR_CLIPBOARD_NOT_OPEN instead')
  static const ERROR_CLIPBOARD_NOT_OPEN = 1418;
  @Deprecated('Use ERROR_HOTKEY_NOT_REGISTERED instead')
  static const ERROR_HOTKEY_NOT_REGISTERED = 1419;
  @Deprecated('Use ERROR_WINDOW_NOT_DIALOG instead')
  static const ERROR_WINDOW_NOT_DIALOG = 1420;
  @Deprecated('Use ERROR_CONTROL_ID_NOT_FOUND instead')
  static const ERROR_CONTROL_ID_NOT_FOUND = 1421;
  @Deprecated('Use ERROR_INVALID_COMBOBOX_MESSAGE instead')
  static const ERROR_INVALID_COMBOBOX_MESSAGE = 1422;
  @Deprecated('Use ERROR_WINDOW_NOT_COMBOBOX instead')
  static const ERROR_WINDOW_NOT_COMBOBOX = 1423;
  @Deprecated('Use ERROR_INVALID_EDIT_HEIGHT instead')
  static const ERROR_INVALID_EDIT_HEIGHT = 1424;
  @Deprecated('Use ERROR_DC_NOT_FOUND instead')
  static const ERROR_DC_NOT_FOUND = 1425;
  @Deprecated('Use ERROR_INVALID_HOOK_FILTER instead')
  static const ERROR_INVALID_HOOK_FILTER = 1426;
  @Deprecated('Use ERROR_INVALID_FILTER_PROC instead')
  static const ERROR_INVALID_FILTER_PROC = 1427;
  @Deprecated('Use ERROR_HOOK_NEEDS_HMOD instead')
  static const ERROR_HOOK_NEEDS_HMOD = 1428;
  @Deprecated('Use ERROR_GLOBAL_ONLY_HOOK instead')
  static const ERROR_GLOBAL_ONLY_HOOK = 1429;
  @Deprecated('Use ERROR_JOURNAL_HOOK_SET instead')
  static const ERROR_JOURNAL_HOOK_SET = 1430;
  @Deprecated('Use ERROR_HOOK_NOT_INSTALLED instead')
  static const ERROR_HOOK_NOT_INSTALLED = 1431;
  @Deprecated('Use ERROR_INVALID_LB_MESSAGE instead')
  static const ERROR_INVALID_LB_MESSAGE = 1432;
  @Deprecated('Use ERROR_SETCOUNT_ON_BAD_LB instead')
  static const ERROR_SETCOUNT_ON_BAD_LB = 1433;
  @Deprecated('Use ERROR_LB_WITHOUT_TABSTOPS instead')
  static const ERROR_LB_WITHOUT_TABSTOPS = 1434;
  @Deprecated('Use ERROR_DESTROY_OBJECT_OF_OTHER_THREAD instead')
  static const ERROR_DESTROY_OBJECT_OF_OTHER_THREAD = 1435;
  @Deprecated('Use ERROR_CHILD_WINDOW_MENU instead')
  static const ERROR_CHILD_WINDOW_MENU = 1436;
  @Deprecated('Use ERROR_NO_SYSTEM_MENU instead')
  static const ERROR_NO_SYSTEM_MENU = 1437;
  @Deprecated('Use ERROR_INVALID_MSGBOX_STYLE instead')
  static const ERROR_INVALID_MSGBOX_STYLE = 1438;
  @Deprecated('Use ERROR_INVALID_SPI_VALUE instead')
  static const ERROR_INVALID_SPI_VALUE = 1439;
  @Deprecated('Use ERROR_SCREEN_ALREADY_LOCKED instead')
  static const ERROR_SCREEN_ALREADY_LOCKED = 1440;
  @Deprecated('Use ERROR_HWNDS_HAVE_DIFF_PARENT instead')
  static const ERROR_HWNDS_HAVE_DIFF_PARENT = 1441;
  @Deprecated('Use ERROR_NOT_CHILD_WINDOW instead')
  static const ERROR_NOT_CHILD_WINDOW = 1442;
  @Deprecated('Use ERROR_INVALID_GW_COMMAND instead')
  static const ERROR_INVALID_GW_COMMAND = 1443;
  @Deprecated('Use ERROR_INVALID_THREAD_ID instead')
  static const ERROR_INVALID_THREAD_ID = 1444;
  @Deprecated('Use ERROR_NON_MDICHILD_WINDOW instead')
  static const ERROR_NON_MDICHILD_WINDOW = 1445;
  @Deprecated('Use ERROR_POPUP_ALREADY_ACTIVE instead')
  static const ERROR_POPUP_ALREADY_ACTIVE = 1446;
  @Deprecated('Use ERROR_NO_SCROLLBARS instead')
  static const ERROR_NO_SCROLLBARS = 1447;
  @Deprecated('Use ERROR_INVALID_SCROLLBAR_RANGE instead')
  static const ERROR_INVALID_SCROLLBAR_RANGE = 1448;
  @Deprecated('Use ERROR_INVALID_SHOWWIN_COMMAND instead')
  static const ERROR_INVALID_SHOWWIN_COMMAND = 1449;
  @Deprecated('Use ERROR_NO_SYSTEM_RESOURCES instead')
  static const ERROR_NO_SYSTEM_RESOURCES = 1450;
  @Deprecated('Use ERROR_NONPAGED_SYSTEM_RESOURCES instead')
  static const ERROR_NONPAGED_SYSTEM_RESOURCES = 1451;
  @Deprecated('Use ERROR_PAGED_SYSTEM_RESOURCES instead')
  static const ERROR_PAGED_SYSTEM_RESOURCES = 1452;
  @Deprecated('Use ERROR_WORKING_SET_QUOTA instead')
  static const ERROR_WORKING_SET_QUOTA = 1453;
  @Deprecated('Use ERROR_PAGEFILE_QUOTA instead')
  static const ERROR_PAGEFILE_QUOTA = 1454;
  @Deprecated('Use ERROR_COMMITMENT_LIMIT instead')
  static const ERROR_COMMITMENT_LIMIT = 1455;
  @Deprecated('Use ERROR_MENU_ITEM_NOT_FOUND instead')
  static const ERROR_MENU_ITEM_NOT_FOUND = 1456;
  @Deprecated('Use ERROR_INVALID_KEYBOARD_HANDLE instead')
  static const ERROR_INVALID_KEYBOARD_HANDLE = 1457;
  @Deprecated('Use ERROR_HOOK_TYPE_NOT_ALLOWED instead')
  static const ERROR_HOOK_TYPE_NOT_ALLOWED = 1458;
  @Deprecated('Use ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION instead')
  static const ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION = 1459;
  @Deprecated('Use ERROR_TIMEOUT instead')
  static const ERROR_TIMEOUT = 1460;
  @Deprecated('Use ERROR_INVALID_MONITOR_HANDLE instead')
  static const ERROR_INVALID_MONITOR_HANDLE = 1461;
  @Deprecated('Use ERROR_INCORRECT_SIZE instead')
  static const ERROR_INCORRECT_SIZE = 1462;
  @Deprecated('Use ERROR_SYMLINK_CLASS_DISABLED instead')
  static const ERROR_SYMLINK_CLASS_DISABLED = 1463;
  @Deprecated('Use ERROR_SYMLINK_NOT_SUPPORTED instead')
  static const ERROR_SYMLINK_NOT_SUPPORTED = 1464;
  @Deprecated('Use ERROR_XML_PARSE_ERROR instead')
  static const ERROR_XML_PARSE_ERROR = 1465;
  @Deprecated('Use ERROR_XMLDSIG_ERROR instead')
  static const ERROR_XMLDSIG_ERROR = 1466;
  @Deprecated('Use ERROR_RESTART_APPLICATION instead')
  static const ERROR_RESTART_APPLICATION = 1467;
  @Deprecated('Use ERROR_WRONG_COMPARTMENT instead')
  static const ERROR_WRONG_COMPARTMENT = 1468;
  @Deprecated('Use ERROR_AUTHIP_FAILURE instead')
  static const ERROR_AUTHIP_FAILURE = 1469;
  @Deprecated('Use ERROR_NO_NVRAM_RESOURCES instead')
  static const ERROR_NO_NVRAM_RESOURCES = 1470;
  @Deprecated('Use ERROR_NOT_GUI_PROCESS instead')
  static const ERROR_NOT_GUI_PROCESS = 1471;
  @Deprecated('Use ERROR_EVENTLOG_FILE_CORRUPT instead')
  static const ERROR_EVENTLOG_FILE_CORRUPT = 1500;
  @Deprecated('Use ERROR_EVENTLOG_CANT_START instead')
  static const ERROR_EVENTLOG_CANT_START = 1501;
  @Deprecated('Use ERROR_LOG_FILE_FULL instead')
  static const ERROR_LOG_FILE_FULL = 1502;
  @Deprecated('Use ERROR_EVENTLOG_FILE_CHANGED instead')
  static const ERROR_EVENTLOG_FILE_CHANGED = 1503;
  @Deprecated('Use ERROR_CONTAINER_ASSIGNED instead')
  static const ERROR_CONTAINER_ASSIGNED = 1504;
  @Deprecated('Use ERROR_JOB_NO_CONTAINER instead')
  static const ERROR_JOB_NO_CONTAINER = 1505;
  @Deprecated('Use ERROR_INVALID_TASK_NAME instead')
  static const ERROR_INVALID_TASK_NAME = 1550;
  @Deprecated('Use ERROR_INVALID_TASK_INDEX instead')
  static const ERROR_INVALID_TASK_INDEX = 1551;
  @Deprecated('Use ERROR_THREAD_ALREADY_IN_TASK instead')
  static const ERROR_THREAD_ALREADY_IN_TASK = 1552;
  @Deprecated('Use ERROR_INSTALL_SERVICE_FAILURE instead')
  static const ERROR_INSTALL_SERVICE_FAILURE = 1601;
  @Deprecated('Use ERROR_INSTALL_USEREXIT instead')
  static const ERROR_INSTALL_USEREXIT = 1602;
  @Deprecated('Use ERROR_INSTALL_FAILURE instead')
  static const ERROR_INSTALL_FAILURE = 1603;
  @Deprecated('Use ERROR_INSTALL_SUSPEND instead')
  static const ERROR_INSTALL_SUSPEND = 1604;
  @Deprecated('Use ERROR_UNKNOWN_PRODUCT instead')
  static const ERROR_UNKNOWN_PRODUCT = 1605;
  @Deprecated('Use ERROR_UNKNOWN_FEATURE instead')
  static const ERROR_UNKNOWN_FEATURE = 1606;
  @Deprecated('Use ERROR_UNKNOWN_COMPONENT instead')
  static const ERROR_UNKNOWN_COMPONENT = 1607;
  @Deprecated('Use ERROR_UNKNOWN_PROPERTY instead')
  static const ERROR_UNKNOWN_PROPERTY = 1608;
  @Deprecated('Use ERROR_INVALID_HANDLE_STATE instead')
  static const ERROR_INVALID_HANDLE_STATE = 1609;
  @Deprecated('Use ERROR_BAD_CONFIGURATION instead')
  static const ERROR_BAD_CONFIGURATION = 1610;
  @Deprecated('Use ERROR_INDEX_ABSENT instead')
  static const ERROR_INDEX_ABSENT = 1611;
  @Deprecated('Use ERROR_INSTALL_SOURCE_ABSENT instead')
  static const ERROR_INSTALL_SOURCE_ABSENT = 1612;
  @Deprecated('Use ERROR_INSTALL_PACKAGE_VERSION instead')
  static const ERROR_INSTALL_PACKAGE_VERSION = 1613;
  @Deprecated('Use ERROR_PRODUCT_UNINSTALLED instead')
  static const ERROR_PRODUCT_UNINSTALLED = 1614;
  @Deprecated('Use ERROR_BAD_QUERY_SYNTAX instead')
  static const ERROR_BAD_QUERY_SYNTAX = 1615;
  @Deprecated('Use ERROR_INVALID_FIELD instead')
  static const ERROR_INVALID_FIELD = 1616;
  @Deprecated('Use ERROR_DEVICE_REMOVED instead')
  static const ERROR_DEVICE_REMOVED = 1617;
  @Deprecated('Use ERROR_INSTALL_ALREADY_RUNNING instead')
  static const ERROR_INSTALL_ALREADY_RUNNING = 1618;
  @Deprecated('Use ERROR_INSTALL_PACKAGE_OPEN_FAILED instead')
  static const ERROR_INSTALL_PACKAGE_OPEN_FAILED = 1619;
  @Deprecated('Use ERROR_INSTALL_PACKAGE_INVALID instead')
  static const ERROR_INSTALL_PACKAGE_INVALID = 1620;
  @Deprecated('Use ERROR_INSTALL_UI_FAILURE instead')
  static const ERROR_INSTALL_UI_FAILURE = 1621;
  @Deprecated('Use ERROR_INSTALL_LOG_FAILURE instead')
  static const ERROR_INSTALL_LOG_FAILURE = 1622;
  @Deprecated('Use ERROR_INSTALL_LANGUAGE_UNSUPPORTED instead')
  static const ERROR_INSTALL_LANGUAGE_UNSUPPORTED = 1623;
  @Deprecated('Use ERROR_INSTALL_TRANSFORM_FAILURE instead')
  static const ERROR_INSTALL_TRANSFORM_FAILURE = 1624;
  @Deprecated('Use ERROR_INSTALL_PACKAGE_REJECTED instead')
  static const ERROR_INSTALL_PACKAGE_REJECTED = 1625;
  @Deprecated('Use ERROR_FUNCTION_NOT_CALLED instead')
  static const ERROR_FUNCTION_NOT_CALLED = 1626;
  @Deprecated('Use ERROR_FUNCTION_FAILED instead')
  static const ERROR_FUNCTION_FAILED = 1627;
  @Deprecated('Use ERROR_INVALID_TABLE instead')
  static const ERROR_INVALID_TABLE = 1628;
  @Deprecated('Use ERROR_DATATYPE_MISMATCH instead')
  static const ERROR_DATATYPE_MISMATCH = 1629;
  @Deprecated('Use ERROR_UNSUPPORTED_TYPE instead')
  static const ERROR_UNSUPPORTED_TYPE = 1630;
  @Deprecated('Use ERROR_CREATE_FAILED instead')
  static const ERROR_CREATE_FAILED = 1631;
  @Deprecated('Use ERROR_INSTALL_TEMP_UNWRITABLE instead')
  static const ERROR_INSTALL_TEMP_UNWRITABLE = 1632;
  @Deprecated('Use ERROR_INSTALL_PLATFORM_UNSUPPORTED instead')
  static const ERROR_INSTALL_PLATFORM_UNSUPPORTED = 1633;
  @Deprecated('Use ERROR_INSTALL_NOTUSED instead')
  static const ERROR_INSTALL_NOTUSED = 1634;
  @Deprecated('Use ERROR_PATCH_PACKAGE_OPEN_FAILED instead')
  static const ERROR_PATCH_PACKAGE_OPEN_FAILED = 1635;
  @Deprecated('Use ERROR_PATCH_PACKAGE_INVALID instead')
  static const ERROR_PATCH_PACKAGE_INVALID = 1636;
  @Deprecated('Use ERROR_PATCH_PACKAGE_UNSUPPORTED instead')
  static const ERROR_PATCH_PACKAGE_UNSUPPORTED = 1637;
  @Deprecated('Use ERROR_PRODUCT_VERSION instead')
  static const ERROR_PRODUCT_VERSION = 1638;
  @Deprecated('Use ERROR_INVALID_COMMAND_LINE instead')
  static const ERROR_INVALID_COMMAND_LINE = 1639;
  @Deprecated('Use ERROR_INSTALL_REMOTE_DISALLOWED instead')
  static const ERROR_INSTALL_REMOTE_DISALLOWED = 1640;
  @Deprecated('Use ERROR_SUCCESS_REBOOT_INITIATED instead')
  static const ERROR_SUCCESS_REBOOT_INITIATED = 1641;
  @Deprecated('Use ERROR_PATCH_TARGET_NOT_FOUND instead')
  static const ERROR_PATCH_TARGET_NOT_FOUND = 1642;
  @Deprecated('Use ERROR_PATCH_PACKAGE_REJECTED instead')
  static const ERROR_PATCH_PACKAGE_REJECTED = 1643;
  @Deprecated('Use ERROR_INSTALL_TRANSFORM_REJECTED instead')
  static const ERROR_INSTALL_TRANSFORM_REJECTED = 1644;
  @Deprecated('Use ERROR_INSTALL_REMOTE_PROHIBITED instead')
  static const ERROR_INSTALL_REMOTE_PROHIBITED = 1645;
  @Deprecated('Use ERROR_PATCH_REMOVAL_UNSUPPORTED instead')
  static const ERROR_PATCH_REMOVAL_UNSUPPORTED = 1646;
  @Deprecated('Use ERROR_UNKNOWN_PATCH instead')
  static const ERROR_UNKNOWN_PATCH = 1647;
  @Deprecated('Use ERROR_PATCH_NO_SEQUENCE instead')
  static const ERROR_PATCH_NO_SEQUENCE = 1648;
  @Deprecated('Use ERROR_PATCH_REMOVAL_DISALLOWED instead')
  static const ERROR_PATCH_REMOVAL_DISALLOWED = 1649;
  @Deprecated('Use ERROR_INVALID_PATCH_XML instead')
  static const ERROR_INVALID_PATCH_XML = 1650;
  @Deprecated('Use ERROR_PATCH_MANAGED_ADVERTISED_PRODUCT instead')
  static const ERROR_PATCH_MANAGED_ADVERTISED_PRODUCT = 1651;
  @Deprecated('Use ERROR_INSTALL_SERVICE_SAFEBOOT instead')
  static const ERROR_INSTALL_SERVICE_SAFEBOOT = 1652;
  @Deprecated('Use ERROR_FAIL_FAST_EXCEPTION instead')
  static const ERROR_FAIL_FAST_EXCEPTION = 1653;
  @Deprecated('Use ERROR_INSTALL_REJECTED instead')
  static const ERROR_INSTALL_REJECTED = 1654;
  @Deprecated('Use ERROR_DYNAMIC_CODE_BLOCKED instead')
  static const ERROR_DYNAMIC_CODE_BLOCKED = 1655;
  @Deprecated('Use ERROR_NOT_SAME_OBJECT instead')
  static const ERROR_NOT_SAME_OBJECT = 1656;
  @Deprecated('Use ERROR_STRICT_CFG_VIOLATION instead')
  static const ERROR_STRICT_CFG_VIOLATION = 1657;
  @Deprecated('Use ERROR_SET_CONTEXT_DENIED instead')
  static const ERROR_SET_CONTEXT_DENIED = 1660;
  @Deprecated('Use ERROR_CROSS_PARTITION_VIOLATION instead')
  static const ERROR_CROSS_PARTITION_VIOLATION = 1661;
  @Deprecated('Use ERROR_RETURN_ADDRESS_HIJACK_ATTEMPT instead')
  static const ERROR_RETURN_ADDRESS_HIJACK_ATTEMPT = 1662;
  @Deprecated('Use ERROR_INVALID_USER_BUFFER instead')
  static const ERROR_INVALID_USER_BUFFER = 1784;
  @Deprecated('Use ERROR_UNRECOGNIZED_MEDIA instead')
  static const ERROR_UNRECOGNIZED_MEDIA = 1785;
  @Deprecated('Use ERROR_NO_TRUST_LSA_SECRET instead')
  static const ERROR_NO_TRUST_LSA_SECRET = 1786;
  @Deprecated('Use ERROR_NO_TRUST_SAM_ACCOUNT instead')
  static const ERROR_NO_TRUST_SAM_ACCOUNT = 1787;
  @Deprecated('Use ERROR_TRUSTED_DOMAIN_FAILURE instead')
  static const ERROR_TRUSTED_DOMAIN_FAILURE = 1788;
  @Deprecated('Use ERROR_TRUSTED_RELATIONSHIP_FAILURE instead')
  static const ERROR_TRUSTED_RELATIONSHIP_FAILURE = 1789;
  @Deprecated('Use ERROR_TRUST_FAILURE instead')
  static const ERROR_TRUST_FAILURE = 1790;
  @Deprecated('Use ERROR_NETLOGON_NOT_STARTED instead')
  static const ERROR_NETLOGON_NOT_STARTED = 1792;
  @Deprecated('Use ERROR_ACCOUNT_EXPIRED instead')
  static const ERROR_ACCOUNT_EXPIRED = 1793;
  @Deprecated('Use ERROR_REDIRECTOR_HAS_OPEN_HANDLES instead')
  static const ERROR_REDIRECTOR_HAS_OPEN_HANDLES = 1794;
  @Deprecated('Use ERROR_PRINTER_DRIVER_ALREADY_INSTALLED instead')
  static const ERROR_PRINTER_DRIVER_ALREADY_INSTALLED = 1795;
  @Deprecated('Use ERROR_UNKNOWN_PORT instead')
  static const ERROR_UNKNOWN_PORT = 1796;
  @Deprecated('Use ERROR_UNKNOWN_PRINTER_DRIVER instead')
  static const ERROR_UNKNOWN_PRINTER_DRIVER = 1797;
  @Deprecated('Use ERROR_UNKNOWN_PRINTPROCESSOR instead')
  static const ERROR_UNKNOWN_PRINTPROCESSOR = 1798;
  @Deprecated('Use ERROR_INVALID_SEPARATOR_FILE instead')
  static const ERROR_INVALID_SEPARATOR_FILE = 1799;
  @Deprecated('Use ERROR_INVALID_PRIORITY instead')
  static const ERROR_INVALID_PRIORITY = 1800;
  @Deprecated('Use ERROR_INVALID_PRINTER_NAME instead')
  static const ERROR_INVALID_PRINTER_NAME = 1801;
  @Deprecated('Use ERROR_PRINTER_ALREADY_EXISTS instead')
  static const ERROR_PRINTER_ALREADY_EXISTS = 1802;
  @Deprecated('Use ERROR_INVALID_PRINTER_COMMAND instead')
  static const ERROR_INVALID_PRINTER_COMMAND = 1803;
  @Deprecated('Use ERROR_INVALID_DATATYPE instead')
  static const ERROR_INVALID_DATATYPE = 1804;
  @Deprecated('Use ERROR_INVALID_ENVIRONMENT instead')
  static const ERROR_INVALID_ENVIRONMENT = 1805;
  @Deprecated('Use ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT instead')
  static const ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT = 1807;
  @Deprecated('Use ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT instead')
  static const ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT = 1808;
  @Deprecated('Use ERROR_NOLOGON_SERVER_TRUST_ACCOUNT instead')
  static const ERROR_NOLOGON_SERVER_TRUST_ACCOUNT = 1809;
  @Deprecated('Use ERROR_DOMAIN_TRUST_INCONSISTENT instead')
  static const ERROR_DOMAIN_TRUST_INCONSISTENT = 1810;
  @Deprecated('Use ERROR_SERVER_HAS_OPEN_HANDLES instead')
  static const ERROR_SERVER_HAS_OPEN_HANDLES = 1811;
  @Deprecated('Use ERROR_RESOURCE_DATA_NOT_FOUND instead')
  static const ERROR_RESOURCE_DATA_NOT_FOUND = 1812;
  @Deprecated('Use ERROR_RESOURCE_TYPE_NOT_FOUND instead')
  static const ERROR_RESOURCE_TYPE_NOT_FOUND = 1813;
  @Deprecated('Use ERROR_RESOURCE_NAME_NOT_FOUND instead')
  static const ERROR_RESOURCE_NAME_NOT_FOUND = 1814;
  @Deprecated('Use ERROR_RESOURCE_LANG_NOT_FOUND instead')
  static const ERROR_RESOURCE_LANG_NOT_FOUND = 1815;
  @Deprecated('Use ERROR_NOT_ENOUGH_QUOTA instead')
  static const ERROR_NOT_ENOUGH_QUOTA = 1816;
  @Deprecated('Use ERROR_INVALID_TIME instead')
  static const ERROR_INVALID_TIME = 1901;
  @Deprecated('Use ERROR_INVALID_FORM_NAME instead')
  static const ERROR_INVALID_FORM_NAME = 1902;
  @Deprecated('Use ERROR_INVALID_FORM_SIZE instead')
  static const ERROR_INVALID_FORM_SIZE = 1903;
  @Deprecated('Use ERROR_ALREADY_WAITING instead')
  static const ERROR_ALREADY_WAITING = 1904;
  @Deprecated('Use ERROR_PRINTER_DELETED instead')
  static const ERROR_PRINTER_DELETED = 1905;
  @Deprecated('Use ERROR_INVALID_PRINTER_STATE instead')
  static const ERROR_INVALID_PRINTER_STATE = 1906;
  @Deprecated('Use ERROR_PASSWORD_MUST_CHANGE instead')
  static const ERROR_PASSWORD_MUST_CHANGE = 1907;
  @Deprecated('Use ERROR_DOMAIN_CONTROLLER_NOT_FOUND instead')
  static const ERROR_DOMAIN_CONTROLLER_NOT_FOUND = 1908;
  @Deprecated('Use ERROR_ACCOUNT_LOCKED_OUT instead')
  static const ERROR_ACCOUNT_LOCKED_OUT = 1909;
  @Deprecated('Use ERROR_NO_SITENAME instead')
  static const ERROR_NO_SITENAME = 1919;
  @Deprecated('Use ERROR_CANT_ACCESS_FILE instead')
  static const ERROR_CANT_ACCESS_FILE = 1920;
  @Deprecated('Use ERROR_CANT_RESOLVE_FILENAME instead')
  static const ERROR_CANT_RESOLVE_FILENAME = 1921;
  @Deprecated('Use ERROR_KM_DRIVER_BLOCKED instead')
  static const ERROR_KM_DRIVER_BLOCKED = 1930;
  @Deprecated('Use ERROR_CONTEXT_EXPIRED instead')
  static const ERROR_CONTEXT_EXPIRED = 1931;
  @Deprecated('Use ERROR_PER_USER_TRUST_QUOTA_EXCEEDED instead')
  static const ERROR_PER_USER_TRUST_QUOTA_EXCEEDED = 1932;
  @Deprecated('Use ERROR_ALL_USER_TRUST_QUOTA_EXCEEDED instead')
  static const ERROR_ALL_USER_TRUST_QUOTA_EXCEEDED = 1933;
  @Deprecated('Use ERROR_USER_DELETE_TRUST_QUOTA_EXCEEDED instead')
  static const ERROR_USER_DELETE_TRUST_QUOTA_EXCEEDED = 1934;
  @Deprecated('Use ERROR_AUTHENTICATION_FIREWALL_FAILED instead')
  static const ERROR_AUTHENTICATION_FIREWALL_FAILED = 1935;
  @Deprecated('Use ERROR_REMOTE_PRINT_CONNECTIONS_BLOCKED instead')
  static const ERROR_REMOTE_PRINT_CONNECTIONS_BLOCKED = 1936;
  @Deprecated('Use ERROR_NTLM_BLOCKED instead')
  static const ERROR_NTLM_BLOCKED = 1937;
  @Deprecated('Use ERROR_PASSWORD_CHANGE_REQUIRED instead')
  static const ERROR_PASSWORD_CHANGE_REQUIRED = 1938;
  @Deprecated('Use ERROR_LOST_MODE_LOGON_RESTRICTION instead')
  static const ERROR_LOST_MODE_LOGON_RESTRICTION = 1939;
  @Deprecated('Use ERROR_INVALID_PIXEL_FORMAT instead')
  static const ERROR_INVALID_PIXEL_FORMAT = 2000;
  @Deprecated('Use ERROR_BAD_DRIVER instead')
  static const ERROR_BAD_DRIVER = 2001;
  @Deprecated('Use ERROR_INVALID_WINDOW_STYLE instead')
  static const ERROR_INVALID_WINDOW_STYLE = 2002;
  @Deprecated('Use ERROR_METAFILE_NOT_SUPPORTED instead')
  static const ERROR_METAFILE_NOT_SUPPORTED = 2003;
  @Deprecated('Use ERROR_TRANSFORM_NOT_SUPPORTED instead')
  static const ERROR_TRANSFORM_NOT_SUPPORTED = 2004;
  @Deprecated('Use ERROR_CLIPPING_NOT_SUPPORTED instead')
  static const ERROR_CLIPPING_NOT_SUPPORTED = 2005;
  @Deprecated('Use ERROR_INVALID_CMM instead')
  static const ERROR_INVALID_CMM = 2010;
  @Deprecated('Use ERROR_INVALID_PROFILE instead')
  static const ERROR_INVALID_PROFILE = 2011;
  @Deprecated('Use ERROR_TAG_NOT_FOUND instead')
  static const ERROR_TAG_NOT_FOUND = 2012;
  @Deprecated('Use ERROR_TAG_NOT_PRESENT instead')
  static const ERROR_TAG_NOT_PRESENT = 2013;
  @Deprecated('Use ERROR_DUPLICATE_TAG instead')
  static const ERROR_DUPLICATE_TAG = 2014;
  @Deprecated('Use ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE instead')
  static const ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE = 2015;
  @Deprecated('Use ERROR_PROFILE_NOT_FOUND instead')
  static const ERROR_PROFILE_NOT_FOUND = 2016;
  @Deprecated('Use ERROR_INVALID_COLORSPACE instead')
  static const ERROR_INVALID_COLORSPACE = 2017;
  @Deprecated('Use ERROR_ICM_NOT_ENABLED instead')
  static const ERROR_ICM_NOT_ENABLED = 2018;
  @Deprecated('Use ERROR_DELETING_ICM_XFORM instead')
  static const ERROR_DELETING_ICM_XFORM = 2019;
  @Deprecated('Use ERROR_INVALID_TRANSFORM instead')
  static const ERROR_INVALID_TRANSFORM = 2020;
  @Deprecated('Use ERROR_COLORSPACE_MISMATCH instead')
  static const ERROR_COLORSPACE_MISMATCH = 2021;
  @Deprecated('Use ERROR_INVALID_COLORINDEX instead')
  static const ERROR_INVALID_COLORINDEX = 2022;
  @Deprecated('Use ERROR_PROFILE_DOES_NOT_MATCH_DEVICE instead')
  static const ERROR_PROFILE_DOES_NOT_MATCH_DEVICE = 2023;
  @Deprecated('Use ERROR_CONNECTED_OTHER_PASSWORD instead')
  static const ERROR_CONNECTED_OTHER_PASSWORD = 2108;
  @Deprecated('Use ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT instead')
  static const ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT = 2109;
  @Deprecated('Use ERROR_BAD_USERNAME instead')
  static const ERROR_BAD_USERNAME = 2202;
  @Deprecated('Use ERROR_NOT_CONNECTED instead')
  static const ERROR_NOT_CONNECTED = 2250;
  @Deprecated('Use ERROR_OPEN_FILES instead')
  static const ERROR_OPEN_FILES = 2401;
  @Deprecated('Use ERROR_ACTIVE_CONNECTIONS instead')
  static const ERROR_ACTIVE_CONNECTIONS = 2402;
  @Deprecated('Use ERROR_DEVICE_IN_USE instead')
  static const ERROR_DEVICE_IN_USE = 2404;
  @Deprecated('Use ERROR_UNKNOWN_PRINT_MONITOR instead')
  static const ERROR_UNKNOWN_PRINT_MONITOR = 3000;
  @Deprecated('Use ERROR_PRINTER_DRIVER_IN_USE instead')
  static const ERROR_PRINTER_DRIVER_IN_USE = 3001;
  @Deprecated('Use ERROR_SPOOL_FILE_NOT_FOUND instead')
  static const ERROR_SPOOL_FILE_NOT_FOUND = 3002;
  @Deprecated('Use ERROR_SPL_NO_STARTDOC instead')
  static const ERROR_SPL_NO_STARTDOC = 3003;
  @Deprecated('Use ERROR_SPL_NO_ADDJOB instead')
  static const ERROR_SPL_NO_ADDJOB = 3004;
  @Deprecated('Use ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED instead')
  static const ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED = 3005;
  @Deprecated('Use ERROR_PRINT_MONITOR_ALREADY_INSTALLED instead')
  static const ERROR_PRINT_MONITOR_ALREADY_INSTALLED = 3006;
  @Deprecated('Use ERROR_INVALID_PRINT_MONITOR instead')
  static const ERROR_INVALID_PRINT_MONITOR = 3007;
  @Deprecated('Use ERROR_PRINT_MONITOR_IN_USE instead')
  static const ERROR_PRINT_MONITOR_IN_USE = 3008;
  @Deprecated('Use ERROR_PRINTER_HAS_JOBS_QUEUED instead')
  static const ERROR_PRINTER_HAS_JOBS_QUEUED = 3009;
  @Deprecated('Use ERROR_SUCCESS_REBOOT_REQUIRED instead')
  static const ERROR_SUCCESS_REBOOT_REQUIRED = 3010;
  @Deprecated('Use ERROR_SUCCESS_RESTART_REQUIRED instead')
  static const ERROR_SUCCESS_RESTART_REQUIRED = 3011;
  @Deprecated('Use ERROR_PRINTER_NOT_FOUND instead')
  static const ERROR_PRINTER_NOT_FOUND = 3012;
  @Deprecated('Use ERROR_PRINTER_DRIVER_WARNED instead')
  static const ERROR_PRINTER_DRIVER_WARNED = 3013;
  @Deprecated('Use ERROR_PRINTER_DRIVER_BLOCKED instead')
  static const ERROR_PRINTER_DRIVER_BLOCKED = 3014;
  @Deprecated('Use ERROR_PRINTER_DRIVER_PACKAGE_IN_USE instead')
  static const ERROR_PRINTER_DRIVER_PACKAGE_IN_USE = 3015;
  @Deprecated('Use ERROR_CORE_DRIVER_PACKAGE_NOT_FOUND instead')
  static const ERROR_CORE_DRIVER_PACKAGE_NOT_FOUND = 3016;
  @Deprecated('Use ERROR_FAIL_REBOOT_REQUIRED instead')
  static const ERROR_FAIL_REBOOT_REQUIRED = 3017;
  @Deprecated('Use ERROR_FAIL_REBOOT_INITIATED instead')
  static const ERROR_FAIL_REBOOT_INITIATED = 3018;
  @Deprecated('Use ERROR_PRINTER_DRIVER_DOWNLOAD_NEEDED instead')
  static const ERROR_PRINTER_DRIVER_DOWNLOAD_NEEDED = 3019;
  @Deprecated('Use ERROR_PRINT_JOB_RESTART_REQUIRED instead')
  static const ERROR_PRINT_JOB_RESTART_REQUIRED = 3020;
  @Deprecated('Use ERROR_INVALID_PRINTER_DRIVER_MANIFEST instead')
  static const ERROR_INVALID_PRINTER_DRIVER_MANIFEST = 3021;
  @Deprecated('Use ERROR_PRINTER_NOT_SHAREABLE instead')
  static const ERROR_PRINTER_NOT_SHAREABLE = 3022;
  @Deprecated('Use ERROR_SERVER_SERVICE_CALL_REQUIRES_SMB1 instead')
  static const ERROR_SERVER_SERVICE_CALL_REQUIRES_SMB1 = 3023;
  @Deprecated('Use ERROR_NETWORK_AUTHENTICATION_PROMPT_CANCELED instead')
  static const ERROR_NETWORK_AUTHENTICATION_PROMPT_CANCELED = 3024;
  @Deprecated('Use ERROR_REQUEST_PAUSED instead')
  static const ERROR_REQUEST_PAUSED = 3050;
  @Deprecated('Use ERROR_APPEXEC_CONDITION_NOT_SATISFIED instead')
  static const ERROR_APPEXEC_CONDITION_NOT_SATISFIED = 3060;
  @Deprecated('Use ERROR_APPEXEC_HANDLE_INVALIDATED instead')
  static const ERROR_APPEXEC_HANDLE_INVALIDATED = 3061;
  @Deprecated('Use ERROR_APPEXEC_INVALID_HOST_GENERATION instead')
  static const ERROR_APPEXEC_INVALID_HOST_GENERATION = 3062;
  @Deprecated('Use ERROR_APPEXEC_UNEXPECTED_PROCESS_REGISTRATION instead')
  static const ERROR_APPEXEC_UNEXPECTED_PROCESS_REGISTRATION = WIN32_ERROR(
    3063,
  );
  @Deprecated('Use ERROR_APPEXEC_INVALID_HOST_STATE instead')
  static const ERROR_APPEXEC_INVALID_HOST_STATE = 3064;
  @Deprecated('Use ERROR_APPEXEC_NO_DONOR instead')
  static const ERROR_APPEXEC_NO_DONOR = 3065;
  @Deprecated('Use ERROR_APPEXEC_HOST_ID_MISMATCH instead')
  static const ERROR_APPEXEC_HOST_ID_MISMATCH = 3066;
  @Deprecated('Use ERROR_APPEXEC_UNKNOWN_USER instead')
  static const ERROR_APPEXEC_UNKNOWN_USER = 3067;
  @Deprecated('Use ERROR_APPEXEC_APP_COMPAT_BLOCK instead')
  static const ERROR_APPEXEC_APP_COMPAT_BLOCK = 3068;
  @Deprecated('Use ERROR_APPEXEC_CALLER_WAIT_TIMEOUT instead')
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT = 3069;
  @Deprecated('Use ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_TERMINATION instead')
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_TERMINATION = WIN32_ERROR(
    3070,
  );
  @Deprecated('Use ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_LICENSING instead')
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_LICENSING = 3071;
  @Deprecated('Use ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_RESOURCES instead')
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_RESOURCES = 3072;
  @Deprecated('Use ERROR_VRF_VOLATILE_CFG_AND_IO_ENABLED instead')
  static const ERROR_VRF_VOLATILE_CFG_AND_IO_ENABLED = 3080;
  @Deprecated('Use ERROR_VRF_VOLATILE_NOT_STOPPABLE instead')
  static const ERROR_VRF_VOLATILE_NOT_STOPPABLE = 3081;
  @Deprecated('Use ERROR_VRF_VOLATILE_SAFE_MODE instead')
  static const ERROR_VRF_VOLATILE_SAFE_MODE = 3082;
  @Deprecated('Use ERROR_VRF_VOLATILE_NOT_RUNNABLE_SYSTEM instead')
  static const ERROR_VRF_VOLATILE_NOT_RUNNABLE_SYSTEM = 3083;
  @Deprecated('Use ERROR_VRF_VOLATILE_NOT_SUPPORTED_RULECLASS instead')
  static const ERROR_VRF_VOLATILE_NOT_SUPPORTED_RULECLASS = 3084;
  @Deprecated('Use ERROR_VRF_VOLATILE_PROTECTED_DRIVER instead')
  static const ERROR_VRF_VOLATILE_PROTECTED_DRIVER = 3085;
  @Deprecated('Use ERROR_VRF_VOLATILE_NMI_REGISTERED instead')
  static const ERROR_VRF_VOLATILE_NMI_REGISTERED = 3086;
  @Deprecated('Use ERROR_VRF_VOLATILE_SETTINGS_CONFLICT instead')
  static const ERROR_VRF_VOLATILE_SETTINGS_CONFLICT = 3087;
  @Deprecated('Use ERROR_DIF_IOCALLBACK_NOT_REPLACED instead')
  static const ERROR_DIF_IOCALLBACK_NOT_REPLACED = 3190;
  @Deprecated('Use ERROR_DIF_LIVEDUMP_LIMIT_EXCEEDED instead')
  static const ERROR_DIF_LIVEDUMP_LIMIT_EXCEEDED = 3191;
  @Deprecated('Use ERROR_DIF_VOLATILE_SECTION_NOT_LOCKED instead')
  static const ERROR_DIF_VOLATILE_SECTION_NOT_LOCKED = 3192;
  @Deprecated('Use ERROR_DIF_VOLATILE_DRIVER_HOTPATCHED instead')
  static const ERROR_DIF_VOLATILE_DRIVER_HOTPATCHED = 3193;
  @Deprecated('Use ERROR_DIF_VOLATILE_INVALID_INFO instead')
  static const ERROR_DIF_VOLATILE_INVALID_INFO = 3194;
  @Deprecated('Use ERROR_DIF_VOLATILE_DRIVER_IS_NOT_RUNNING instead')
  static const ERROR_DIF_VOLATILE_DRIVER_IS_NOT_RUNNING = 3195;
  @Deprecated('Use ERROR_DIF_VOLATILE_PLUGIN_IS_NOT_RUNNING instead')
  static const ERROR_DIF_VOLATILE_PLUGIN_IS_NOT_RUNNING = 3196;
  @Deprecated('Use ERROR_DIF_VOLATILE_PLUGIN_CHANGE_NOT_ALLOWED instead')
  static const ERROR_DIF_VOLATILE_PLUGIN_CHANGE_NOT_ALLOWED = 3197;
  @Deprecated('Use ERROR_DIF_VOLATILE_NOT_ALLOWED instead')
  static const ERROR_DIF_VOLATILE_NOT_ALLOWED = 3198;
  @Deprecated('Use ERROR_DIF_BINDING_API_NOT_FOUND instead')
  static const ERROR_DIF_BINDING_API_NOT_FOUND = 3199;
  @Deprecated('Use ERROR_IO_REISSUE_AS_CACHED instead')
  static const ERROR_IO_REISSUE_AS_CACHED = 3950;
  @Deprecated('Use ERROR_WINS_INTERNAL instead')
  static const ERROR_WINS_INTERNAL = 4000;
  @Deprecated('Use ERROR_CAN_NOT_DEL_LOCAL_WINS instead')
  static const ERROR_CAN_NOT_DEL_LOCAL_WINS = 4001;
  @Deprecated('Use ERROR_STATIC_INIT instead')
  static const ERROR_STATIC_INIT = 4002;
  @Deprecated('Use ERROR_INC_BACKUP instead')
  static const ERROR_INC_BACKUP = 4003;
  @Deprecated('Use ERROR_FULL_BACKUP instead')
  static const ERROR_FULL_BACKUP = 4004;
  @Deprecated('Use ERROR_REC_NON_EXISTENT instead')
  static const ERROR_REC_NON_EXISTENT = 4005;
  @Deprecated('Use ERROR_RPL_NOT_ALLOWED instead')
  static const ERROR_RPL_NOT_ALLOWED = 4006;
  @Deprecated('Use ERROR_DHCP_ADDRESS_CONFLICT instead')
  static const ERROR_DHCP_ADDRESS_CONFLICT = 4100;
  @Deprecated('Use ERROR_WMI_GUID_NOT_FOUND instead')
  static const ERROR_WMI_GUID_NOT_FOUND = 4200;
  @Deprecated('Use ERROR_WMI_INSTANCE_NOT_FOUND instead')
  static const ERROR_WMI_INSTANCE_NOT_FOUND = 4201;
  @Deprecated('Use ERROR_WMI_ITEMID_NOT_FOUND instead')
  static const ERROR_WMI_ITEMID_NOT_FOUND = 4202;
  @Deprecated('Use ERROR_WMI_TRY_AGAIN instead')
  static const ERROR_WMI_TRY_AGAIN = 4203;
  @Deprecated('Use ERROR_WMI_DP_NOT_FOUND instead')
  static const ERROR_WMI_DP_NOT_FOUND = 4204;
  @Deprecated('Use ERROR_WMI_UNRESOLVED_INSTANCE_REF instead')
  static const ERROR_WMI_UNRESOLVED_INSTANCE_REF = 4205;
  @Deprecated('Use ERROR_WMI_ALREADY_ENABLED instead')
  static const ERROR_WMI_ALREADY_ENABLED = 4206;
  @Deprecated('Use ERROR_WMI_GUID_DISCONNECTED instead')
  static const ERROR_WMI_GUID_DISCONNECTED = 4207;
  @Deprecated('Use ERROR_WMI_SERVER_UNAVAILABLE instead')
  static const ERROR_WMI_SERVER_UNAVAILABLE = 4208;
  @Deprecated('Use ERROR_WMI_DP_FAILED instead')
  static const ERROR_WMI_DP_FAILED = 4209;
  @Deprecated('Use ERROR_WMI_INVALID_MOF instead')
  static const ERROR_WMI_INVALID_MOF = 4210;
  @Deprecated('Use ERROR_WMI_INVALID_REGINFO instead')
  static const ERROR_WMI_INVALID_REGINFO = 4211;
  @Deprecated('Use ERROR_WMI_ALREADY_DISABLED instead')
  static const ERROR_WMI_ALREADY_DISABLED = 4212;
  @Deprecated('Use ERROR_WMI_READ_ONLY instead')
  static const ERROR_WMI_READ_ONLY = 4213;
  @Deprecated('Use ERROR_WMI_SET_FAILURE instead')
  static const ERROR_WMI_SET_FAILURE = 4214;
  @Deprecated('Use ERROR_NOT_APPCONTAINER instead')
  static const ERROR_NOT_APPCONTAINER = 4250;
  @Deprecated('Use ERROR_APPCONTAINER_REQUIRED instead')
  static const ERROR_APPCONTAINER_REQUIRED = 4251;
  @Deprecated('Use ERROR_NOT_SUPPORTED_IN_APPCONTAINER instead')
  static const ERROR_NOT_SUPPORTED_IN_APPCONTAINER = 4252;
  @Deprecated('Use ERROR_INVALID_PACKAGE_SID_LENGTH instead')
  static const ERROR_INVALID_PACKAGE_SID_LENGTH = 4253;
  @Deprecated('Use ERROR_INVALID_MEDIA instead')
  static const ERROR_INVALID_MEDIA = 4300;
  @Deprecated('Use ERROR_INVALID_LIBRARY instead')
  static const ERROR_INVALID_LIBRARY = 4301;
  @Deprecated('Use ERROR_INVALID_MEDIA_POOL instead')
  static const ERROR_INVALID_MEDIA_POOL = 4302;
  @Deprecated('Use ERROR_DRIVE_MEDIA_MISMATCH instead')
  static const ERROR_DRIVE_MEDIA_MISMATCH = 4303;
  @Deprecated('Use ERROR_MEDIA_OFFLINE instead')
  static const ERROR_MEDIA_OFFLINE = 4304;
  @Deprecated('Use ERROR_LIBRARY_OFFLINE instead')
  static const ERROR_LIBRARY_OFFLINE = 4305;
  @Deprecated('Use ERROR_EMPTY instead')
  static const ERROR_EMPTY = 4306;
  @Deprecated('Use ERROR_NOT_EMPTY instead')
  static const ERROR_NOT_EMPTY = 4307;
  @Deprecated('Use ERROR_MEDIA_UNAVAILABLE instead')
  static const ERROR_MEDIA_UNAVAILABLE = 4308;
  @Deprecated('Use ERROR_RESOURCE_DISABLED instead')
  static const ERROR_RESOURCE_DISABLED = 4309;
  @Deprecated('Use ERROR_INVALID_CLEANER instead')
  static const ERROR_INVALID_CLEANER = 4310;
  @Deprecated('Use ERROR_UNABLE_TO_CLEAN instead')
  static const ERROR_UNABLE_TO_CLEAN = 4311;
  @Deprecated('Use ERROR_OBJECT_NOT_FOUND instead')
  static const ERROR_OBJECT_NOT_FOUND = 4312;
  @Deprecated('Use ERROR_DATABASE_FAILURE instead')
  static const ERROR_DATABASE_FAILURE = 4313;
  @Deprecated('Use ERROR_DATABASE_FULL instead')
  static const ERROR_DATABASE_FULL = 4314;
  @Deprecated('Use ERROR_MEDIA_INCOMPATIBLE instead')
  static const ERROR_MEDIA_INCOMPATIBLE = 4315;
  @Deprecated('Use ERROR_RESOURCE_NOT_PRESENT instead')
  static const ERROR_RESOURCE_NOT_PRESENT = 4316;
  @Deprecated('Use ERROR_INVALID_OPERATION instead')
  static const ERROR_INVALID_OPERATION = 4317;
  @Deprecated('Use ERROR_MEDIA_NOT_AVAILABLE instead')
  static const ERROR_MEDIA_NOT_AVAILABLE = 4318;
  @Deprecated('Use ERROR_DEVICE_NOT_AVAILABLE instead')
  static const ERROR_DEVICE_NOT_AVAILABLE = 4319;
  @Deprecated('Use ERROR_REQUEST_REFUSED instead')
  static const ERROR_REQUEST_REFUSED = 4320;
  @Deprecated('Use ERROR_INVALID_DRIVE_OBJECT instead')
  static const ERROR_INVALID_DRIVE_OBJECT = 4321;
  @Deprecated('Use ERROR_LIBRARY_FULL instead')
  static const ERROR_LIBRARY_FULL = 4322;
  @Deprecated('Use ERROR_MEDIUM_NOT_ACCESSIBLE instead')
  static const ERROR_MEDIUM_NOT_ACCESSIBLE = 4323;
  @Deprecated('Use ERROR_UNABLE_TO_LOAD_MEDIUM instead')
  static const ERROR_UNABLE_TO_LOAD_MEDIUM = 4324;
  @Deprecated('Use ERROR_UNABLE_TO_INVENTORY_DRIVE instead')
  static const ERROR_UNABLE_TO_INVENTORY_DRIVE = 4325;
  @Deprecated('Use ERROR_UNABLE_TO_INVENTORY_SLOT instead')
  static const ERROR_UNABLE_TO_INVENTORY_SLOT = 4326;
  @Deprecated('Use ERROR_UNABLE_TO_INVENTORY_TRANSPORT instead')
  static const ERROR_UNABLE_TO_INVENTORY_TRANSPORT = 4327;
  @Deprecated('Use ERROR_TRANSPORT_FULL instead')
  static const ERROR_TRANSPORT_FULL = 4328;
  @Deprecated('Use ERROR_CONTROLLING_IEPORT instead')
  static const ERROR_CONTROLLING_IEPORT = 4329;
  @Deprecated('Use ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA instead')
  static const ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA = 4330;
  @Deprecated('Use ERROR_CLEANER_SLOT_SET instead')
  static const ERROR_CLEANER_SLOT_SET = 4331;
  @Deprecated('Use ERROR_CLEANER_SLOT_NOT_SET instead')
  static const ERROR_CLEANER_SLOT_NOT_SET = 4332;
  @Deprecated('Use ERROR_CLEANER_CARTRIDGE_SPENT instead')
  static const ERROR_CLEANER_CARTRIDGE_SPENT = 4333;
  @Deprecated('Use ERROR_UNEXPECTED_OMID instead')
  static const ERROR_UNEXPECTED_OMID = 4334;
  @Deprecated('Use ERROR_CANT_DELETE_LAST_ITEM instead')
  static const ERROR_CANT_DELETE_LAST_ITEM = 4335;
  @Deprecated('Use ERROR_MESSAGE_EXCEEDS_MAX_SIZE instead')
  static const ERROR_MESSAGE_EXCEEDS_MAX_SIZE = 4336;
  @Deprecated('Use ERROR_VOLUME_CONTAINS_SYS_FILES instead')
  static const ERROR_VOLUME_CONTAINS_SYS_FILES = 4337;
  @Deprecated('Use ERROR_INDIGENOUS_TYPE instead')
  static const ERROR_INDIGENOUS_TYPE = 4338;
  @Deprecated('Use ERROR_NO_SUPPORTING_DRIVES instead')
  static const ERROR_NO_SUPPORTING_DRIVES = 4339;
  @Deprecated('Use ERROR_CLEANER_CARTRIDGE_INSTALLED instead')
  static const ERROR_CLEANER_CARTRIDGE_INSTALLED = 4340;
  @Deprecated('Use ERROR_IEPORT_FULL instead')
  static const ERROR_IEPORT_FULL = 4341;
  @Deprecated('Use ERROR_FILE_OFFLINE instead')
  static const ERROR_FILE_OFFLINE = 4350;
  @Deprecated('Use ERROR_REMOTE_STORAGE_NOT_ACTIVE instead')
  static const ERROR_REMOTE_STORAGE_NOT_ACTIVE = 4351;
  @Deprecated('Use ERROR_REMOTE_STORAGE_MEDIA_ERROR instead')
  static const ERROR_REMOTE_STORAGE_MEDIA_ERROR = 4352;
  @Deprecated('Use ERROR_NOT_A_REPARSE_POINT instead')
  static const ERROR_NOT_A_REPARSE_POINT = 4390;
  @Deprecated('Use ERROR_REPARSE_ATTRIBUTE_CONFLICT instead')
  static const ERROR_REPARSE_ATTRIBUTE_CONFLICT = 4391;
  @Deprecated('Use ERROR_INVALID_REPARSE_DATA instead')
  static const ERROR_INVALID_REPARSE_DATA = 4392;
  @Deprecated('Use ERROR_REPARSE_TAG_INVALID instead')
  static const ERROR_REPARSE_TAG_INVALID = 4393;
  @Deprecated('Use ERROR_REPARSE_TAG_MISMATCH instead')
  static const ERROR_REPARSE_TAG_MISMATCH = 4394;
  @Deprecated('Use ERROR_REPARSE_POINT_ENCOUNTERED instead')
  static const ERROR_REPARSE_POINT_ENCOUNTERED = 4395;
  @Deprecated('Use ERROR_APP_DATA_NOT_FOUND instead')
  static const ERROR_APP_DATA_NOT_FOUND = 4400;
  @Deprecated('Use ERROR_APP_DATA_EXPIRED instead')
  static const ERROR_APP_DATA_EXPIRED = 4401;
  @Deprecated('Use ERROR_APP_DATA_CORRUPT instead')
  static const ERROR_APP_DATA_CORRUPT = 4402;
  @Deprecated('Use ERROR_APP_DATA_LIMIT_EXCEEDED instead')
  static const ERROR_APP_DATA_LIMIT_EXCEEDED = 4403;
  @Deprecated('Use ERROR_APP_DATA_REBOOT_REQUIRED instead')
  static const ERROR_APP_DATA_REBOOT_REQUIRED = 4404;
  @Deprecated('Use ERROR_SECUREBOOT_ROLLBACK_DETECTED instead')
  static const ERROR_SECUREBOOT_ROLLBACK_DETECTED = 4420;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_VIOLATION instead')
  static const ERROR_SECUREBOOT_POLICY_VIOLATION = 4421;
  @Deprecated('Use ERROR_SECUREBOOT_INVALID_POLICY instead')
  static const ERROR_SECUREBOOT_INVALID_POLICY = 4422;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_PUBLISHER_NOT_FOUND instead')
  static const ERROR_SECUREBOOT_POLICY_PUBLISHER_NOT_FOUND = 4423;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_NOT_SIGNED instead')
  static const ERROR_SECUREBOOT_POLICY_NOT_SIGNED = 4424;
  @Deprecated('Use ERROR_SECUREBOOT_NOT_ENABLED instead')
  static const ERROR_SECUREBOOT_NOT_ENABLED = 4425;
  @Deprecated('Use ERROR_SECUREBOOT_FILE_REPLACED instead')
  static const ERROR_SECUREBOOT_FILE_REPLACED = 4426;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_NOT_AUTHORIZED instead')
  static const ERROR_SECUREBOOT_POLICY_NOT_AUTHORIZED = 4427;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_UNKNOWN instead')
  static const ERROR_SECUREBOOT_POLICY_UNKNOWN = 4428;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_MISSING_ANTIROLLBACKVERSION instead')
  static const ERROR_SECUREBOOT_POLICY_MISSING_ANTIROLLBACKVERSION =
      WIN32_ERROR(4429);
  @Deprecated('Use ERROR_SECUREBOOT_PLATFORM_ID_MISMATCH instead')
  static const ERROR_SECUREBOOT_PLATFORM_ID_MISMATCH = 4430;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_ROLLBACK_DETECTED instead')
  static const ERROR_SECUREBOOT_POLICY_ROLLBACK_DETECTED = 4431;
  @Deprecated('Use ERROR_SECUREBOOT_POLICY_UPGRADE_MISMATCH instead')
  static const ERROR_SECUREBOOT_POLICY_UPGRADE_MISMATCH = 4432;
  @Deprecated('Use ERROR_SECUREBOOT_REQUIRED_POLICY_FILE_MISSING instead')
  static const ERROR_SECUREBOOT_REQUIRED_POLICY_FILE_MISSING = WIN32_ERROR(
    4433,
  );
  @Deprecated('Use ERROR_SECUREBOOT_NOT_BASE_POLICY instead')
  static const ERROR_SECUREBOOT_NOT_BASE_POLICY = 4434;
  @Deprecated('Use ERROR_SECUREBOOT_NOT_SUPPLEMENTAL_POLICY instead')
  static const ERROR_SECUREBOOT_NOT_SUPPLEMENTAL_POLICY = 4435;
  @Deprecated('Use ERROR_OFFLOAD_READ_FLT_NOT_SUPPORTED instead')
  static const ERROR_OFFLOAD_READ_FLT_NOT_SUPPORTED = 4440;
  @Deprecated('Use ERROR_OFFLOAD_WRITE_FLT_NOT_SUPPORTED instead')
  static const ERROR_OFFLOAD_WRITE_FLT_NOT_SUPPORTED = 4441;
  @Deprecated('Use ERROR_OFFLOAD_READ_FILE_NOT_SUPPORTED instead')
  static const ERROR_OFFLOAD_READ_FILE_NOT_SUPPORTED = 4442;
  @Deprecated('Use ERROR_OFFLOAD_WRITE_FILE_NOT_SUPPORTED instead')
  static const ERROR_OFFLOAD_WRITE_FILE_NOT_SUPPORTED = 4443;
  @Deprecated('Use ERROR_ALREADY_HAS_STREAM_ID instead')
  static const ERROR_ALREADY_HAS_STREAM_ID = 4444;
  @Deprecated('Use ERROR_SMR_GARBAGE_COLLECTION_REQUIRED instead')
  static const ERROR_SMR_GARBAGE_COLLECTION_REQUIRED = 4445;
  @Deprecated('Use ERROR_WOF_WIM_HEADER_CORRUPT instead')
  static const ERROR_WOF_WIM_HEADER_CORRUPT = 4446;
  @Deprecated('Use ERROR_WOF_WIM_RESOURCE_TABLE_CORRUPT instead')
  static const ERROR_WOF_WIM_RESOURCE_TABLE_CORRUPT = 4447;
  @Deprecated('Use ERROR_WOF_FILE_RESOURCE_TABLE_CORRUPT instead')
  static const ERROR_WOF_FILE_RESOURCE_TABLE_CORRUPT = 4448;
  @Deprecated('Use ERROR_OBJECT_IS_IMMUTABLE instead')
  static const ERROR_OBJECT_IS_IMMUTABLE = 4449;
  @Deprecated('Use ERROR_VOLUME_NOT_SIS_ENABLED instead')
  static const ERROR_VOLUME_NOT_SIS_ENABLED = 4500;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_ROLLBACK_DETECTED instead')
  static const ERROR_SYSTEM_INTEGRITY_ROLLBACK_DETECTED = 4550;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_POLICY_VIOLATION instead')
  static const ERROR_SYSTEM_INTEGRITY_POLICY_VIOLATION = 4551;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_INVALID_POLICY instead')
  static const ERROR_SYSTEM_INTEGRITY_INVALID_POLICY = 4552;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_POLICY_NOT_SIGNED instead')
  static const ERROR_SYSTEM_INTEGRITY_POLICY_NOT_SIGNED = 4553;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_TOO_MANY_POLICIES instead')
  static const ERROR_SYSTEM_INTEGRITY_TOO_MANY_POLICIES = 4554;
  @Deprecated(
    'Use ERROR_SYSTEM_INTEGRITY_SUPPLEMENTAL_POLICY_NOT_AUTHORIZED instead',
  )
  static const ERROR_SYSTEM_INTEGRITY_SUPPLEMENTAL_POLICY_NOT_AUTHORIZED =
      WIN32_ERROR(4555);
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_REPUTATION_MALICIOUS instead')
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_MALICIOUS = 4556;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_REPUTATION_PUA instead')
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_PUA = 4557;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_REPUTATION_DANGEROUS_EXT instead')
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_DANGEROUS_EXT = WIN32_ERROR(
    4558,
  );
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_REPUTATION_OFFLINE instead')
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_OFFLINE = 4559;
  @Deprecated('Use ERROR_VSM_NOT_INITIALIZED instead')
  static const ERROR_VSM_NOT_INITIALIZED = 4560;
  @Deprecated('Use ERROR_VSM_DMA_PROTECTION_NOT_IN_USE instead')
  static const ERROR_VSM_DMA_PROTECTION_NOT_IN_USE = 4561;
  @Deprecated('Use ERROR_PLATFORM_MANIFEST_NOT_AUTHORIZED instead')
  static const ERROR_PLATFORM_MANIFEST_NOT_AUTHORIZED = 4570;
  @Deprecated('Use ERROR_PLATFORM_MANIFEST_INVALID instead')
  static const ERROR_PLATFORM_MANIFEST_INVALID = 4571;
  @Deprecated('Use ERROR_PLATFORM_MANIFEST_FILE_NOT_AUTHORIZED instead')
  static const ERROR_PLATFORM_MANIFEST_FILE_NOT_AUTHORIZED = 4572;
  @Deprecated('Use ERROR_PLATFORM_MANIFEST_CATALOG_NOT_AUTHORIZED instead')
  static const ERROR_PLATFORM_MANIFEST_CATALOG_NOT_AUTHORIZED = WIN32_ERROR(
    4573,
  );
  @Deprecated('Use ERROR_PLATFORM_MANIFEST_BINARY_ID_NOT_FOUND instead')
  static const ERROR_PLATFORM_MANIFEST_BINARY_ID_NOT_FOUND = 4574;
  @Deprecated('Use ERROR_PLATFORM_MANIFEST_NOT_ACTIVE instead')
  static const ERROR_PLATFORM_MANIFEST_NOT_ACTIVE = 4575;
  @Deprecated('Use ERROR_PLATFORM_MANIFEST_NOT_SIGNED instead')
  static const ERROR_PLATFORM_MANIFEST_NOT_SIGNED = 4576;
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_REPUTATION_UNFRIENDLY_FILE instead')
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNFRIENDLY_FILE = WIN32_ERROR(
    4580,
  );
  @Deprecated('Use ERROR_SYSTEM_INTEGRITY_REPUTATION_UNATTAINABLE instead')
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNATTAINABLE = WIN32_ERROR(
    4581,
  );
  @Deprecated(
    'Use ERROR_SYSTEM_INTEGRITY_REPUTATION_EXPLICIT_DENY_FILE instead',
  )
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_EXPLICIT_DENY_FILE =
      WIN32_ERROR(4582);
  @Deprecated('Use ERROR_DEPENDENT_RESOURCE_EXISTS instead')
  static const ERROR_DEPENDENT_RESOURCE_EXISTS = 5001;
  @Deprecated('Use ERROR_DEPENDENCY_NOT_FOUND instead')
  static const ERROR_DEPENDENCY_NOT_FOUND = 5002;
  @Deprecated('Use ERROR_DEPENDENCY_ALREADY_EXISTS instead')
  static const ERROR_DEPENDENCY_ALREADY_EXISTS = 5003;
  @Deprecated('Use ERROR_RESOURCE_NOT_ONLINE instead')
  static const ERROR_RESOURCE_NOT_ONLINE = 5004;
  @Deprecated('Use ERROR_HOST_NODE_NOT_AVAILABLE instead')
  static const ERROR_HOST_NODE_NOT_AVAILABLE = 5005;
  @Deprecated('Use ERROR_RESOURCE_NOT_AVAILABLE instead')
  static const ERROR_RESOURCE_NOT_AVAILABLE = 5006;
  @Deprecated('Use ERROR_RESOURCE_NOT_FOUND instead')
  static const ERROR_RESOURCE_NOT_FOUND = 5007;
  @Deprecated('Use ERROR_SHUTDOWN_CLUSTER instead')
  static const ERROR_SHUTDOWN_CLUSTER = 5008;
  @Deprecated('Use ERROR_CANT_EVICT_ACTIVE_NODE instead')
  static const ERROR_CANT_EVICT_ACTIVE_NODE = 5009;
  @Deprecated('Use ERROR_OBJECT_ALREADY_EXISTS instead')
  static const ERROR_OBJECT_ALREADY_EXISTS = 5010;
  @Deprecated('Use ERROR_OBJECT_IN_LIST instead')
  static const ERROR_OBJECT_IN_LIST = 5011;
  @Deprecated('Use ERROR_GROUP_NOT_AVAILABLE instead')
  static const ERROR_GROUP_NOT_AVAILABLE = 5012;
  @Deprecated('Use ERROR_GROUP_NOT_FOUND instead')
  static const ERROR_GROUP_NOT_FOUND = 5013;
  @Deprecated('Use ERROR_GROUP_NOT_ONLINE instead')
  static const ERROR_GROUP_NOT_ONLINE = 5014;
  @Deprecated('Use ERROR_HOST_NODE_NOT_RESOURCE_OWNER instead')
  static const ERROR_HOST_NODE_NOT_RESOURCE_OWNER = 5015;
  @Deprecated('Use ERROR_HOST_NODE_NOT_GROUP_OWNER instead')
  static const ERROR_HOST_NODE_NOT_GROUP_OWNER = 5016;
  @Deprecated('Use ERROR_RESMON_CREATE_FAILED instead')
  static const ERROR_RESMON_CREATE_FAILED = 5017;
  @Deprecated('Use ERROR_RESMON_ONLINE_FAILED instead')
  static const ERROR_RESMON_ONLINE_FAILED = 5018;
  @Deprecated('Use ERROR_RESOURCE_ONLINE instead')
  static const ERROR_RESOURCE_ONLINE = 5019;
  @Deprecated('Use ERROR_QUORUM_RESOURCE instead')
  static const ERROR_QUORUM_RESOURCE = 5020;
  @Deprecated('Use ERROR_NOT_QUORUM_CAPABLE instead')
  static const ERROR_NOT_QUORUM_CAPABLE = 5021;
  @Deprecated('Use ERROR_CLUSTER_SHUTTING_DOWN instead')
  static const ERROR_CLUSTER_SHUTTING_DOWN = 5022;
  @Deprecated('Use ERROR_INVALID_STATE instead')
  static const ERROR_INVALID_STATE = 5023;
  @Deprecated('Use ERROR_RESOURCE_PROPERTIES_STORED instead')
  static const ERROR_RESOURCE_PROPERTIES_STORED = 5024;
  @Deprecated('Use ERROR_NOT_QUORUM_CLASS instead')
  static const ERROR_NOT_QUORUM_CLASS = 5025;
  @Deprecated('Use ERROR_CORE_RESOURCE instead')
  static const ERROR_CORE_RESOURCE = 5026;
  @Deprecated('Use ERROR_QUORUM_RESOURCE_ONLINE_FAILED instead')
  static const ERROR_QUORUM_RESOURCE_ONLINE_FAILED = 5027;
  @Deprecated('Use ERROR_QUORUMLOG_OPEN_FAILED instead')
  static const ERROR_QUORUMLOG_OPEN_FAILED = 5028;
  @Deprecated('Use ERROR_CLUSTERLOG_CORRUPT instead')
  static const ERROR_CLUSTERLOG_CORRUPT = 5029;
  @Deprecated('Use ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE instead')
  static const ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE = 5030;
  @Deprecated('Use ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE instead')
  static const ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE = 5031;
  @Deprecated('Use ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND instead')
  static const ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND = 5032;
  @Deprecated('Use ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE instead')
  static const ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE = 5033;
  @Deprecated('Use ERROR_QUORUM_OWNER_ALIVE instead')
  static const ERROR_QUORUM_OWNER_ALIVE = 5034;
  @Deprecated('Use ERROR_NETWORK_NOT_AVAILABLE instead')
  static const ERROR_NETWORK_NOT_AVAILABLE = 5035;
  @Deprecated('Use ERROR_NODE_NOT_AVAILABLE instead')
  static const ERROR_NODE_NOT_AVAILABLE = 5036;
  @Deprecated('Use ERROR_ALL_NODES_NOT_AVAILABLE instead')
  static const ERROR_ALL_NODES_NOT_AVAILABLE = 5037;
  @Deprecated('Use ERROR_RESOURCE_FAILED instead')
  static const ERROR_RESOURCE_FAILED = 5038;
  @Deprecated('Use ERROR_CLUSTER_INVALID_NODE instead')
  static const ERROR_CLUSTER_INVALID_NODE = 5039;
  @Deprecated('Use ERROR_CLUSTER_NODE_EXISTS instead')
  static const ERROR_CLUSTER_NODE_EXISTS = 5040;
  @Deprecated('Use ERROR_CLUSTER_JOIN_IN_PROGRESS instead')
  static const ERROR_CLUSTER_JOIN_IN_PROGRESS = 5041;
  @Deprecated('Use ERROR_CLUSTER_NODE_NOT_FOUND instead')
  static const ERROR_CLUSTER_NODE_NOT_FOUND = 5042;
  @Deprecated('Use ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND instead')
  static const ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND = 5043;
  @Deprecated('Use ERROR_CLUSTER_NETWORK_EXISTS instead')
  static const ERROR_CLUSTER_NETWORK_EXISTS = 5044;
  @Deprecated('Use ERROR_CLUSTER_NETWORK_NOT_FOUND instead')
  static const ERROR_CLUSTER_NETWORK_NOT_FOUND = 5045;
  @Deprecated('Use ERROR_CLUSTER_NETINTERFACE_EXISTS instead')
  static const ERROR_CLUSTER_NETINTERFACE_EXISTS = 5046;
  @Deprecated('Use ERROR_CLUSTER_NETINTERFACE_NOT_FOUND instead')
  static const ERROR_CLUSTER_NETINTERFACE_NOT_FOUND = 5047;
  @Deprecated('Use ERROR_CLUSTER_INVALID_REQUEST instead')
  static const ERROR_CLUSTER_INVALID_REQUEST = 5048;
  @Deprecated('Use ERROR_CLUSTER_INVALID_NETWORK_PROVIDER instead')
  static const ERROR_CLUSTER_INVALID_NETWORK_PROVIDER = 5049;
  @Deprecated('Use ERROR_CLUSTER_NODE_DOWN instead')
  static const ERROR_CLUSTER_NODE_DOWN = 5050;
  @Deprecated('Use ERROR_CLUSTER_NODE_UNREACHABLE instead')
  static const ERROR_CLUSTER_NODE_UNREACHABLE = 5051;
  @Deprecated('Use ERROR_CLUSTER_NODE_NOT_MEMBER instead')
  static const ERROR_CLUSTER_NODE_NOT_MEMBER = 5052;
  @Deprecated('Use ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS instead')
  static const ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS = 5053;
  @Deprecated('Use ERROR_CLUSTER_INVALID_NETWORK instead')
  static const ERROR_CLUSTER_INVALID_NETWORK = 5054;
  @Deprecated('Use ERROR_CLUSTER_NODE_UP instead')
  static const ERROR_CLUSTER_NODE_UP = 5056;
  @Deprecated('Use ERROR_CLUSTER_IPADDR_IN_USE instead')
  static const ERROR_CLUSTER_IPADDR_IN_USE = 5057;
  @Deprecated('Use ERROR_CLUSTER_NODE_NOT_PAUSED instead')
  static const ERROR_CLUSTER_NODE_NOT_PAUSED = 5058;
  @Deprecated('Use ERROR_CLUSTER_NO_SECURITY_CONTEXT instead')
  static const ERROR_CLUSTER_NO_SECURITY_CONTEXT = 5059;
  @Deprecated('Use ERROR_CLUSTER_NETWORK_NOT_INTERNAL instead')
  static const ERROR_CLUSTER_NETWORK_NOT_INTERNAL = 5060;
  @Deprecated('Use ERROR_CLUSTER_NODE_ALREADY_UP instead')
  static const ERROR_CLUSTER_NODE_ALREADY_UP = 5061;
  @Deprecated('Use ERROR_CLUSTER_NODE_ALREADY_DOWN instead')
  static const ERROR_CLUSTER_NODE_ALREADY_DOWN = 5062;
  @Deprecated('Use ERROR_CLUSTER_NETWORK_ALREADY_ONLINE instead')
  static const ERROR_CLUSTER_NETWORK_ALREADY_ONLINE = 5063;
  @Deprecated('Use ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE instead')
  static const ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE = 5064;
  @Deprecated('Use ERROR_CLUSTER_NODE_ALREADY_MEMBER instead')
  static const ERROR_CLUSTER_NODE_ALREADY_MEMBER = 5065;
  @Deprecated('Use ERROR_CLUSTER_LAST_INTERNAL_NETWORK instead')
  static const ERROR_CLUSTER_LAST_INTERNAL_NETWORK = 5066;
  @Deprecated('Use ERROR_CLUSTER_NETWORK_HAS_DEPENDENTS instead')
  static const ERROR_CLUSTER_NETWORK_HAS_DEPENDENTS = 5067;
  @Deprecated('Use ERROR_INVALID_OPERATION_ON_QUORUM instead')
  static const ERROR_INVALID_OPERATION_ON_QUORUM = 5068;
  @Deprecated('Use ERROR_DEPENDENCY_NOT_ALLOWED instead')
  static const ERROR_DEPENDENCY_NOT_ALLOWED = 5069;
  @Deprecated('Use ERROR_CLUSTER_NODE_PAUSED instead')
  static const ERROR_CLUSTER_NODE_PAUSED = 5070;
  @Deprecated('Use ERROR_NODE_CANT_HOST_RESOURCE instead')
  static const ERROR_NODE_CANT_HOST_RESOURCE = 5071;
  @Deprecated('Use ERROR_CLUSTER_NODE_NOT_READY instead')
  static const ERROR_CLUSTER_NODE_NOT_READY = 5072;
  @Deprecated('Use ERROR_CLUSTER_NODE_SHUTTING_DOWN instead')
  static const ERROR_CLUSTER_NODE_SHUTTING_DOWN = 5073;
  @Deprecated('Use ERROR_CLUSTER_JOIN_ABORTED instead')
  static const ERROR_CLUSTER_JOIN_ABORTED = 5074;
  @Deprecated('Use ERROR_CLUSTER_INCOMPATIBLE_VERSIONS instead')
  static const ERROR_CLUSTER_INCOMPATIBLE_VERSIONS = 5075;
  @Deprecated('Use ERROR_CLUSTER_MAXNUM_OF_RESOURCES_EXCEEDED instead')
  static const ERROR_CLUSTER_MAXNUM_OF_RESOURCES_EXCEEDED = 5076;
  @Deprecated('Use ERROR_CLUSTER_SYSTEM_CONFIG_CHANGED instead')
  static const ERROR_CLUSTER_SYSTEM_CONFIG_CHANGED = 5077;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_TYPE_NOT_FOUND instead')
  static const ERROR_CLUSTER_RESOURCE_TYPE_NOT_FOUND = 5078;
  @Deprecated('Use ERROR_CLUSTER_RESTYPE_NOT_SUPPORTED instead')
  static const ERROR_CLUSTER_RESTYPE_NOT_SUPPORTED = 5079;
  @Deprecated('Use ERROR_CLUSTER_RESNAME_NOT_FOUND instead')
  static const ERROR_CLUSTER_RESNAME_NOT_FOUND = 5080;
  @Deprecated('Use ERROR_CLUSTER_NO_RPC_PACKAGES_REGISTERED instead')
  static const ERROR_CLUSTER_NO_RPC_PACKAGES_REGISTERED = 5081;
  @Deprecated('Use ERROR_CLUSTER_OWNER_NOT_IN_PREFLIST instead')
  static const ERROR_CLUSTER_OWNER_NOT_IN_PREFLIST = 5082;
  @Deprecated('Use ERROR_CLUSTER_DATABASE_SEQMISMATCH instead')
  static const ERROR_CLUSTER_DATABASE_SEQMISMATCH = 5083;
  @Deprecated('Use ERROR_RESMON_INVALID_STATE instead')
  static const ERROR_RESMON_INVALID_STATE = 5084;
  @Deprecated('Use ERROR_CLUSTER_GUM_NOT_LOCKER instead')
  static const ERROR_CLUSTER_GUM_NOT_LOCKER = 5085;
  @Deprecated('Use ERROR_QUORUM_DISK_NOT_FOUND instead')
  static const ERROR_QUORUM_DISK_NOT_FOUND = 5086;
  @Deprecated('Use ERROR_DATABASE_BACKUP_CORRUPT instead')
  static const ERROR_DATABASE_BACKUP_CORRUPT = 5087;
  @Deprecated('Use ERROR_CLUSTER_NODE_ALREADY_HAS_DFS_ROOT instead')
  static const ERROR_CLUSTER_NODE_ALREADY_HAS_DFS_ROOT = 5088;
  @Deprecated('Use ERROR_RESOURCE_PROPERTY_UNCHANGEABLE instead')
  static const ERROR_RESOURCE_PROPERTY_UNCHANGEABLE = 5089;
  @Deprecated('Use ERROR_NO_ADMIN_ACCESS_POINT instead')
  static const ERROR_NO_ADMIN_ACCESS_POINT = 5090;
  @Deprecated('Use ERROR_CLUSTER_MEMBERSHIP_INVALID_STATE instead')
  static const ERROR_CLUSTER_MEMBERSHIP_INVALID_STATE = 5890;
  @Deprecated('Use ERROR_CLUSTER_QUORUMLOG_NOT_FOUND instead')
  static const ERROR_CLUSTER_QUORUMLOG_NOT_FOUND = 5891;
  @Deprecated('Use ERROR_CLUSTER_MEMBERSHIP_HALT instead')
  static const ERROR_CLUSTER_MEMBERSHIP_HALT = 5892;
  @Deprecated('Use ERROR_CLUSTER_INSTANCE_ID_MISMATCH instead')
  static const ERROR_CLUSTER_INSTANCE_ID_MISMATCH = 5893;
  @Deprecated('Use ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP instead')
  static const ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP = 5894;
  @Deprecated('Use ERROR_CLUSTER_PROPERTY_DATA_TYPE_MISMATCH instead')
  static const ERROR_CLUSTER_PROPERTY_DATA_TYPE_MISMATCH = 5895;
  @Deprecated('Use ERROR_CLUSTER_EVICT_WITHOUT_CLEANUP instead')
  static const ERROR_CLUSTER_EVICT_WITHOUT_CLEANUP = 5896;
  @Deprecated('Use ERROR_CLUSTER_PARAMETER_MISMATCH instead')
  static const ERROR_CLUSTER_PARAMETER_MISMATCH = 5897;
  @Deprecated('Use ERROR_NODE_CANNOT_BE_CLUSTERED instead')
  static const ERROR_NODE_CANNOT_BE_CLUSTERED = 5898;
  @Deprecated('Use ERROR_CLUSTER_WRONG_OS_VERSION instead')
  static const ERROR_CLUSTER_WRONG_OS_VERSION = 5899;
  @Deprecated('Use ERROR_CLUSTER_CANT_CREATE_DUP_CLUSTER_NAME instead')
  static const ERROR_CLUSTER_CANT_CREATE_DUP_CLUSTER_NAME = 5900;
  @Deprecated('Use ERROR_CLUSCFG_ALREADY_COMMITTED instead')
  static const ERROR_CLUSCFG_ALREADY_COMMITTED = 5901;
  @Deprecated('Use ERROR_CLUSCFG_ROLLBACK_FAILED instead')
  static const ERROR_CLUSCFG_ROLLBACK_FAILED = 5902;
  @Deprecated('Use ERROR_CLUSCFG_SYSTEM_DISK_DRIVE_LETTER_CONFLICT instead')
  static const ERROR_CLUSCFG_SYSTEM_DISK_DRIVE_LETTER_CONFLICT = WIN32_ERROR(
    5903,
  );
  @Deprecated('Use ERROR_CLUSTER_OLD_VERSION instead')
  static const ERROR_CLUSTER_OLD_VERSION = 5904;
  @Deprecated('Use ERROR_CLUSTER_MISMATCHED_COMPUTER_ACCT_NAME instead')
  static const ERROR_CLUSTER_MISMATCHED_COMPUTER_ACCT_NAME = 5905;
  @Deprecated('Use ERROR_CLUSTER_NO_NET_ADAPTERS instead')
  static const ERROR_CLUSTER_NO_NET_ADAPTERS = 5906;
  @Deprecated('Use ERROR_CLUSTER_POISONED instead')
  static const ERROR_CLUSTER_POISONED = 5907;
  @Deprecated('Use ERROR_CLUSTER_GROUP_MOVING instead')
  static const ERROR_CLUSTER_GROUP_MOVING = 5908;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_TYPE_BUSY instead')
  static const ERROR_CLUSTER_RESOURCE_TYPE_BUSY = 5909;
  @Deprecated('Use ERROR_RESOURCE_CALL_TIMED_OUT instead')
  static const ERROR_RESOURCE_CALL_TIMED_OUT = 5910;
  @Deprecated('Use ERROR_INVALID_CLUSTER_IPV6_ADDRESS instead')
  static const ERROR_INVALID_CLUSTER_IPV6_ADDRESS = 5911;
  @Deprecated('Use ERROR_CLUSTER_INTERNAL_INVALID_FUNCTION instead')
  static const ERROR_CLUSTER_INTERNAL_INVALID_FUNCTION = 5912;
  @Deprecated('Use ERROR_CLUSTER_PARAMETER_OUT_OF_BOUNDS instead')
  static const ERROR_CLUSTER_PARAMETER_OUT_OF_BOUNDS = 5913;
  @Deprecated('Use ERROR_CLUSTER_PARTIAL_SEND instead')
  static const ERROR_CLUSTER_PARTIAL_SEND = 5914;
  @Deprecated('Use ERROR_CLUSTER_REGISTRY_INVALID_FUNCTION instead')
  static const ERROR_CLUSTER_REGISTRY_INVALID_FUNCTION = 5915;
  @Deprecated('Use ERROR_CLUSTER_INVALID_STRING_TERMINATION instead')
  static const ERROR_CLUSTER_INVALID_STRING_TERMINATION = 5916;
  @Deprecated('Use ERROR_CLUSTER_INVALID_STRING_FORMAT instead')
  static const ERROR_CLUSTER_INVALID_STRING_FORMAT = 5917;
  @Deprecated('Use ERROR_CLUSTER_DATABASE_TRANSACTION_IN_PROGRESS instead')
  static const ERROR_CLUSTER_DATABASE_TRANSACTION_IN_PROGRESS = WIN32_ERROR(
    5918,
  );
  @Deprecated('Use ERROR_CLUSTER_DATABASE_TRANSACTION_NOT_IN_PROGRESS instead')
  static const ERROR_CLUSTER_DATABASE_TRANSACTION_NOT_IN_PROGRESS = WIN32_ERROR(
    5919,
  );
  @Deprecated('Use ERROR_CLUSTER_NULL_DATA instead')
  static const ERROR_CLUSTER_NULL_DATA = 5920;
  @Deprecated('Use ERROR_CLUSTER_PARTIAL_READ instead')
  static const ERROR_CLUSTER_PARTIAL_READ = 5921;
  @Deprecated('Use ERROR_CLUSTER_PARTIAL_WRITE instead')
  static const ERROR_CLUSTER_PARTIAL_WRITE = 5922;
  @Deprecated('Use ERROR_CLUSTER_CANT_DESERIALIZE_DATA instead')
  static const ERROR_CLUSTER_CANT_DESERIALIZE_DATA = 5923;
  @Deprecated('Use ERROR_DEPENDENT_RESOURCE_PROPERTY_CONFLICT instead')
  static const ERROR_DEPENDENT_RESOURCE_PROPERTY_CONFLICT = 5924;
  @Deprecated('Use ERROR_CLUSTER_NO_QUORUM instead')
  static const ERROR_CLUSTER_NO_QUORUM = 5925;
  @Deprecated('Use ERROR_CLUSTER_INVALID_IPV6_NETWORK instead')
  static const ERROR_CLUSTER_INVALID_IPV6_NETWORK = 5926;
  @Deprecated('Use ERROR_CLUSTER_INVALID_IPV6_TUNNEL_NETWORK instead')
  static const ERROR_CLUSTER_INVALID_IPV6_TUNNEL_NETWORK = 5927;
  @Deprecated('Use ERROR_QUORUM_NOT_ALLOWED_IN_THIS_GROUP instead')
  static const ERROR_QUORUM_NOT_ALLOWED_IN_THIS_GROUP = 5928;
  @Deprecated('Use ERROR_DEPENDENCY_TREE_TOO_COMPLEX instead')
  static const ERROR_DEPENDENCY_TREE_TOO_COMPLEX = 5929;
  @Deprecated('Use ERROR_EXCEPTION_IN_RESOURCE_CALL instead')
  static const ERROR_EXCEPTION_IN_RESOURCE_CALL = 5930;
  @Deprecated('Use ERROR_CLUSTER_RHS_FAILED_INITIALIZATION instead')
  static const ERROR_CLUSTER_RHS_FAILED_INITIALIZATION = 5931;
  @Deprecated('Use ERROR_CLUSTER_NOT_INSTALLED instead')
  static const ERROR_CLUSTER_NOT_INSTALLED = 5932;
  @Deprecated(
    'Use ERROR_CLUSTER_RESOURCES_MUST_BE_ONLINE_ON_THE_SAME_NODE instead',
  )
  static const ERROR_CLUSTER_RESOURCES_MUST_BE_ONLINE_ON_THE_SAME_NODE =
      WIN32_ERROR(5933);
  @Deprecated('Use ERROR_CLUSTER_MAX_NODES_IN_CLUSTER instead')
  static const ERROR_CLUSTER_MAX_NODES_IN_CLUSTER = 5934;
  @Deprecated('Use ERROR_CLUSTER_TOO_MANY_NODES instead')
  static const ERROR_CLUSTER_TOO_MANY_NODES = 5935;
  @Deprecated('Use ERROR_CLUSTER_OBJECT_ALREADY_USED instead')
  static const ERROR_CLUSTER_OBJECT_ALREADY_USED = 5936;
  @Deprecated('Use ERROR_NONCORE_GROUPS_FOUND instead')
  static const ERROR_NONCORE_GROUPS_FOUND = 5937;
  @Deprecated('Use ERROR_FILE_SHARE_RESOURCE_CONFLICT instead')
  static const ERROR_FILE_SHARE_RESOURCE_CONFLICT = 5938;
  @Deprecated('Use ERROR_CLUSTER_EVICT_INVALID_REQUEST instead')
  static const ERROR_CLUSTER_EVICT_INVALID_REQUEST = 5939;
  @Deprecated('Use ERROR_CLUSTER_SINGLETON_RESOURCE instead')
  static const ERROR_CLUSTER_SINGLETON_RESOURCE = 5940;
  @Deprecated('Use ERROR_CLUSTER_GROUP_SINGLETON_RESOURCE instead')
  static const ERROR_CLUSTER_GROUP_SINGLETON_RESOURCE = 5941;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_PROVIDER_FAILED instead')
  static const ERROR_CLUSTER_RESOURCE_PROVIDER_FAILED = 5942;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_CONFIGURATION_ERROR instead')
  static const ERROR_CLUSTER_RESOURCE_CONFIGURATION_ERROR = 5943;
  @Deprecated('Use ERROR_CLUSTER_GROUP_BUSY instead')
  static const ERROR_CLUSTER_GROUP_BUSY = 5944;
  @Deprecated('Use ERROR_CLUSTER_NOT_SHARED_VOLUME instead')
  static const ERROR_CLUSTER_NOT_SHARED_VOLUME = 5945;
  @Deprecated('Use ERROR_CLUSTER_INVALID_SECURITY_DESCRIPTOR instead')
  static const ERROR_CLUSTER_INVALID_SECURITY_DESCRIPTOR = 5946;
  @Deprecated('Use ERROR_CLUSTER_SHARED_VOLUMES_IN_USE instead')
  static const ERROR_CLUSTER_SHARED_VOLUMES_IN_USE = 5947;
  @Deprecated('Use ERROR_CLUSTER_USE_SHARED_VOLUMES_API instead')
  static const ERROR_CLUSTER_USE_SHARED_VOLUMES_API = 5948;
  @Deprecated('Use ERROR_CLUSTER_BACKUP_IN_PROGRESS instead')
  static const ERROR_CLUSTER_BACKUP_IN_PROGRESS = 5949;
  @Deprecated('Use ERROR_NON_CSV_PATH instead')
  static const ERROR_NON_CSV_PATH = 5950;
  @Deprecated('Use ERROR_CSV_VOLUME_NOT_LOCAL instead')
  static const ERROR_CSV_VOLUME_NOT_LOCAL = 5951;
  @Deprecated('Use ERROR_CLUSTER_WATCHDOG_TERMINATING instead')
  static const ERROR_CLUSTER_WATCHDOG_TERMINATING = 5952;
  @Deprecated(
    'Use ERROR_CLUSTER_RESOURCE_VETOED_MOVE_INCOMPATIBLE_NODES instead',
  )
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_INCOMPATIBLE_NODES =
      WIN32_ERROR(5953);
  @Deprecated('Use ERROR_CLUSTER_INVALID_NODE_WEIGHT instead')
  static const ERROR_CLUSTER_INVALID_NODE_WEIGHT = 5954;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_VETOED_CALL instead')
  static const ERROR_CLUSTER_RESOURCE_VETOED_CALL = 5955;
  @Deprecated('Use ERROR_RESMON_SYSTEM_RESOURCES_LACKING instead')
  static const ERROR_RESMON_SYSTEM_RESOURCES_LACKING = 5956;
  @Deprecated(
    'Use ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_DESTINATION instead',
  )
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_DESTINATION =
      WIN32_ERROR(5957);
  @Deprecated(
    'Use ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_SOURCE instead',
  )
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_SOURCE =
      WIN32_ERROR(5958);
  @Deprecated('Use ERROR_CLUSTER_GROUP_QUEUED instead')
  static const ERROR_CLUSTER_GROUP_QUEUED = 5959;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_LOCKED_STATUS instead')
  static const ERROR_CLUSTER_RESOURCE_LOCKED_STATUS = 5960;
  @Deprecated('Use ERROR_CLUSTER_SHARED_VOLUME_FAILOVER_NOT_ALLOWED instead')
  static const ERROR_CLUSTER_SHARED_VOLUME_FAILOVER_NOT_ALLOWED = WIN32_ERROR(
    5961,
  );
  @Deprecated('Use ERROR_CLUSTER_NODE_DRAIN_IN_PROGRESS instead')
  static const ERROR_CLUSTER_NODE_DRAIN_IN_PROGRESS = 5962;
  @Deprecated('Use ERROR_CLUSTER_DISK_NOT_CONNECTED instead')
  static const ERROR_CLUSTER_DISK_NOT_CONNECTED = 5963;
  @Deprecated('Use ERROR_DISK_NOT_CSV_CAPABLE instead')
  static const ERROR_DISK_NOT_CSV_CAPABLE = 5964;
  @Deprecated('Use ERROR_RESOURCE_NOT_IN_AVAILABLE_STORAGE instead')
  static const ERROR_RESOURCE_NOT_IN_AVAILABLE_STORAGE = 5965;
  @Deprecated('Use ERROR_CLUSTER_SHARED_VOLUME_REDIRECTED instead')
  static const ERROR_CLUSTER_SHARED_VOLUME_REDIRECTED = 5966;
  @Deprecated('Use ERROR_CLUSTER_SHARED_VOLUME_NOT_REDIRECTED instead')
  static const ERROR_CLUSTER_SHARED_VOLUME_NOT_REDIRECTED = 5967;
  @Deprecated('Use ERROR_CLUSTER_CANNOT_RETURN_PROPERTIES instead')
  static const ERROR_CLUSTER_CANNOT_RETURN_PROPERTIES = 5968;
  @Deprecated(
    'Use ERROR_CLUSTER_RESOURCE_CONTAINS_UNSUPPORTED_DIFF_AREA_FOR_SHARED_VOLUMES instead',
  )
  static const ERROR_CLUSTER_RESOURCE_CONTAINS_UNSUPPORTED_DIFF_AREA_FOR_SHARED_VOLUMES =
      WIN32_ERROR(5969);
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_IS_IN_MAINTENANCE_MODE instead')
  static const ERROR_CLUSTER_RESOURCE_IS_IN_MAINTENANCE_MODE = WIN32_ERROR(
    5970,
  );
  @Deprecated('Use ERROR_CLUSTER_AFFINITY_CONFLICT instead')
  static const ERROR_CLUSTER_AFFINITY_CONFLICT = 5971;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_IS_REPLICA_VIRTUAL_MACHINE instead')
  static const ERROR_CLUSTER_RESOURCE_IS_REPLICA_VIRTUAL_MACHINE = WIN32_ERROR(
    5972,
  );
  @Deprecated('Use ERROR_CLUSTER_UPGRADE_INCOMPATIBLE_VERSIONS instead')
  static const ERROR_CLUSTER_UPGRADE_INCOMPATIBLE_VERSIONS = 5973;
  @Deprecated('Use ERROR_CLUSTER_UPGRADE_FIX_QUORUM_NOT_SUPPORTED instead')
  static const ERROR_CLUSTER_UPGRADE_FIX_QUORUM_NOT_SUPPORTED = WIN32_ERROR(
    5974,
  );
  @Deprecated('Use ERROR_CLUSTER_UPGRADE_RESTART_REQUIRED instead')
  static const ERROR_CLUSTER_UPGRADE_RESTART_REQUIRED = 5975;
  @Deprecated('Use ERROR_CLUSTER_UPGRADE_IN_PROGRESS instead')
  static const ERROR_CLUSTER_UPGRADE_IN_PROGRESS = 5976;
  @Deprecated('Use ERROR_CLUSTER_UPGRADE_INCOMPLETE instead')
  static const ERROR_CLUSTER_UPGRADE_INCOMPLETE = 5977;
  @Deprecated('Use ERROR_CLUSTER_NODE_IN_GRACE_PERIOD instead')
  static const ERROR_CLUSTER_NODE_IN_GRACE_PERIOD = 5978;
  @Deprecated('Use ERROR_CLUSTER_CSV_IO_PAUSE_TIMEOUT instead')
  static const ERROR_CLUSTER_CSV_IO_PAUSE_TIMEOUT = 5979;
  @Deprecated('Use ERROR_NODE_NOT_ACTIVE_CLUSTER_MEMBER instead')
  static const ERROR_NODE_NOT_ACTIVE_CLUSTER_MEMBER = 5980;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_NOT_MONITORED instead')
  static const ERROR_CLUSTER_RESOURCE_NOT_MONITORED = 5981;
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_DOES_NOT_SUPPORT_UNMONITORED instead')
  static const ERROR_CLUSTER_RESOURCE_DOES_NOT_SUPPORT_UNMONITORED =
      WIN32_ERROR(5982);
  @Deprecated('Use ERROR_CLUSTER_RESOURCE_IS_REPLICATED instead')
  static const ERROR_CLUSTER_RESOURCE_IS_REPLICATED = 5983;
  @Deprecated('Use ERROR_CLUSTER_NODE_ISOLATED instead')
  static const ERROR_CLUSTER_NODE_ISOLATED = 5984;
  @Deprecated('Use ERROR_CLUSTER_NODE_QUARANTINED instead')
  static const ERROR_CLUSTER_NODE_QUARANTINED = 5985;
  @Deprecated('Use ERROR_CLUSTER_DATABASE_UPDATE_CONDITION_FAILED instead')
  static const ERROR_CLUSTER_DATABASE_UPDATE_CONDITION_FAILED = WIN32_ERROR(
    5986,
  );
  @Deprecated('Use ERROR_CLUSTER_SPACE_DEGRADED instead')
  static const ERROR_CLUSTER_SPACE_DEGRADED = 5987;
  @Deprecated('Use ERROR_CLUSTER_TOKEN_DELEGATION_NOT_SUPPORTED instead')
  static const ERROR_CLUSTER_TOKEN_DELEGATION_NOT_SUPPORTED = 5988;
  @Deprecated('Use ERROR_CLUSTER_CSV_INVALID_HANDLE instead')
  static const ERROR_CLUSTER_CSV_INVALID_HANDLE = 5989;
  @Deprecated('Use ERROR_CLUSTER_CSV_SUPPORTED_ONLY_ON_COORDINATOR instead')
  static const ERROR_CLUSTER_CSV_SUPPORTED_ONLY_ON_COORDINATOR = WIN32_ERROR(
    5990,
  );
  @Deprecated('Use ERROR_GROUPSET_NOT_AVAILABLE instead')
  static const ERROR_GROUPSET_NOT_AVAILABLE = 5991;
  @Deprecated('Use ERROR_GROUPSET_NOT_FOUND instead')
  static const ERROR_GROUPSET_NOT_FOUND = 5992;
  @Deprecated('Use ERROR_GROUPSET_CANT_PROVIDE instead')
  static const ERROR_GROUPSET_CANT_PROVIDE = 5993;
  @Deprecated('Use ERROR_CLUSTER_FAULT_DOMAIN_PARENT_NOT_FOUND instead')
  static const ERROR_CLUSTER_FAULT_DOMAIN_PARENT_NOT_FOUND = 5994;
  @Deprecated('Use ERROR_CLUSTER_FAULT_DOMAIN_INVALID_HIERARCHY instead')
  static const ERROR_CLUSTER_FAULT_DOMAIN_INVALID_HIERARCHY = 5995;
  @Deprecated('Use ERROR_CLUSTER_FAULT_DOMAIN_FAILED_S2D_VALIDATION instead')
  static const ERROR_CLUSTER_FAULT_DOMAIN_FAILED_S2D_VALIDATION = WIN32_ERROR(
    5996,
  );
  @Deprecated('Use ERROR_CLUSTER_FAULT_DOMAIN_S2D_CONNECTIVITY_LOSS instead')
  static const ERROR_CLUSTER_FAULT_DOMAIN_S2D_CONNECTIVITY_LOSS = WIN32_ERROR(
    5997,
  );
  @Deprecated(
    'Use ERROR_CLUSTER_INVALID_INFRASTRUCTURE_FILESERVER_NAME instead',
  )
  static const ERROR_CLUSTER_INVALID_INFRASTRUCTURE_FILESERVER_NAME =
      WIN32_ERROR(5998);
  @Deprecated('Use ERROR_CLUSTERSET_MANAGEMENT_CLUSTER_UNREACHABLE instead')
  static const ERROR_CLUSTERSET_MANAGEMENT_CLUSTER_UNREACHABLE = WIN32_ERROR(
    5999,
  );
  @Deprecated('Use ERROR_ENCRYPTION_FAILED instead')
  static const ERROR_ENCRYPTION_FAILED = 6000;
  @Deprecated('Use ERROR_DECRYPTION_FAILED instead')
  static const ERROR_DECRYPTION_FAILED = 6001;
  @Deprecated('Use ERROR_FILE_ENCRYPTED instead')
  static const ERROR_FILE_ENCRYPTED = 6002;
  @Deprecated('Use ERROR_NO_RECOVERY_POLICY instead')
  static const ERROR_NO_RECOVERY_POLICY = 6003;
  @Deprecated('Use ERROR_NO_EFS instead')
  static const ERROR_NO_EFS = 6004;
  @Deprecated('Use ERROR_WRONG_EFS instead')
  static const ERROR_WRONG_EFS = 6005;
  @Deprecated('Use ERROR_NO_USER_KEYS instead')
  static const ERROR_NO_USER_KEYS = 6006;
  @Deprecated('Use ERROR_FILE_NOT_ENCRYPTED instead')
  static const ERROR_FILE_NOT_ENCRYPTED = 6007;
  @Deprecated('Use ERROR_NOT_EXPORT_FORMAT instead')
  static const ERROR_NOT_EXPORT_FORMAT = 6008;
  @Deprecated('Use ERROR_FILE_READ_ONLY instead')
  static const ERROR_FILE_READ_ONLY = 6009;
  @Deprecated('Use ERROR_DIR_EFS_DISALLOWED instead')
  static const ERROR_DIR_EFS_DISALLOWED = 6010;
  @Deprecated('Use ERROR_EFS_SERVER_NOT_TRUSTED instead')
  static const ERROR_EFS_SERVER_NOT_TRUSTED = 6011;
  @Deprecated('Use ERROR_BAD_RECOVERY_POLICY instead')
  static const ERROR_BAD_RECOVERY_POLICY = 6012;
  @Deprecated('Use ERROR_EFS_ALG_BLOB_TOO_BIG instead')
  static const ERROR_EFS_ALG_BLOB_TOO_BIG = 6013;
  @Deprecated('Use ERROR_VOLUME_NOT_SUPPORT_EFS instead')
  static const ERROR_VOLUME_NOT_SUPPORT_EFS = 6014;
  @Deprecated('Use ERROR_EFS_DISABLED instead')
  static const ERROR_EFS_DISABLED = 6015;
  @Deprecated('Use ERROR_EFS_VERSION_NOT_SUPPORT instead')
  static const ERROR_EFS_VERSION_NOT_SUPPORT = 6016;
  @Deprecated('Use ERROR_CS_ENCRYPTION_INVALID_SERVER_RESPONSE instead')
  static const ERROR_CS_ENCRYPTION_INVALID_SERVER_RESPONSE = 6017;
  @Deprecated('Use ERROR_CS_ENCRYPTION_UNSUPPORTED_SERVER instead')
  static const ERROR_CS_ENCRYPTION_UNSUPPORTED_SERVER = 6018;
  @Deprecated('Use ERROR_CS_ENCRYPTION_EXISTING_ENCRYPTED_FILE instead')
  static const ERROR_CS_ENCRYPTION_EXISTING_ENCRYPTED_FILE = 6019;
  @Deprecated('Use ERROR_CS_ENCRYPTION_NEW_ENCRYPTED_FILE instead')
  static const ERROR_CS_ENCRYPTION_NEW_ENCRYPTED_FILE = 6020;
  @Deprecated('Use ERROR_CS_ENCRYPTION_FILE_NOT_CSE instead')
  static const ERROR_CS_ENCRYPTION_FILE_NOT_CSE = 6021;
  @Deprecated('Use ERROR_ENCRYPTION_POLICY_DENIES_OPERATION instead')
  static const ERROR_ENCRYPTION_POLICY_DENIES_OPERATION = 6022;
  @Deprecated('Use ERROR_WIP_ENCRYPTION_FAILED instead')
  static const ERROR_WIP_ENCRYPTION_FAILED = 6023;
  @Deprecated('Use ERROR_NO_BROWSER_SERVERS_FOUND instead')
  static const ERROR_NO_BROWSER_SERVERS_FOUND = 6118;
  @Deprecated('Use ERROR_CLUSTER_OBJECT_IS_CLUSTER_SET_VM instead')
  static const ERROR_CLUSTER_OBJECT_IS_CLUSTER_SET_VM = 6250;
  @Deprecated('Use ERROR_LOG_SECTOR_INVALID instead')
  static const ERROR_LOG_SECTOR_INVALID = 6600;
  @Deprecated('Use ERROR_LOG_SECTOR_PARITY_INVALID instead')
  static const ERROR_LOG_SECTOR_PARITY_INVALID = 6601;
  @Deprecated('Use ERROR_LOG_SECTOR_REMAPPED instead')
  static const ERROR_LOG_SECTOR_REMAPPED = 6602;
  @Deprecated('Use ERROR_LOG_BLOCK_INCOMPLETE instead')
  static const ERROR_LOG_BLOCK_INCOMPLETE = 6603;
  @Deprecated('Use ERROR_LOG_INVALID_RANGE instead')
  static const ERROR_LOG_INVALID_RANGE = 6604;
  @Deprecated('Use ERROR_LOG_BLOCKS_EXHAUSTED instead')
  static const ERROR_LOG_BLOCKS_EXHAUSTED = 6605;
  @Deprecated('Use ERROR_LOG_READ_CONTEXT_INVALID instead')
  static const ERROR_LOG_READ_CONTEXT_INVALID = 6606;
  @Deprecated('Use ERROR_LOG_RESTART_INVALID instead')
  static const ERROR_LOG_RESTART_INVALID = 6607;
  @Deprecated('Use ERROR_LOG_BLOCK_VERSION instead')
  static const ERROR_LOG_BLOCK_VERSION = 6608;
  @Deprecated('Use ERROR_LOG_BLOCK_INVALID instead')
  static const ERROR_LOG_BLOCK_INVALID = 6609;
  @Deprecated('Use ERROR_LOG_READ_MODE_INVALID instead')
  static const ERROR_LOG_READ_MODE_INVALID = 6610;
  @Deprecated('Use ERROR_LOG_NO_RESTART instead')
  static const ERROR_LOG_NO_RESTART = 6611;
  @Deprecated('Use ERROR_LOG_METADATA_CORRUPT instead')
  static const ERROR_LOG_METADATA_CORRUPT = 6612;
  @Deprecated('Use ERROR_LOG_METADATA_INVALID instead')
  static const ERROR_LOG_METADATA_INVALID = 6613;
  @Deprecated('Use ERROR_LOG_METADATA_INCONSISTENT instead')
  static const ERROR_LOG_METADATA_INCONSISTENT = 6614;
  @Deprecated('Use ERROR_LOG_RESERVATION_INVALID instead')
  static const ERROR_LOG_RESERVATION_INVALID = 6615;
  @Deprecated('Use ERROR_LOG_CANT_DELETE instead')
  static const ERROR_LOG_CANT_DELETE = 6616;
  @Deprecated('Use ERROR_LOG_CONTAINER_LIMIT_EXCEEDED instead')
  static const ERROR_LOG_CONTAINER_LIMIT_EXCEEDED = 6617;
  @Deprecated('Use ERROR_LOG_START_OF_LOG instead')
  static const ERROR_LOG_START_OF_LOG = 6618;
  @Deprecated('Use ERROR_LOG_POLICY_ALREADY_INSTALLED instead')
  static const ERROR_LOG_POLICY_ALREADY_INSTALLED = 6619;
  @Deprecated('Use ERROR_LOG_POLICY_NOT_INSTALLED instead')
  static const ERROR_LOG_POLICY_NOT_INSTALLED = 6620;
  @Deprecated('Use ERROR_LOG_POLICY_INVALID instead')
  static const ERROR_LOG_POLICY_INVALID = 6621;
  @Deprecated('Use ERROR_LOG_POLICY_CONFLICT instead')
  static const ERROR_LOG_POLICY_CONFLICT = 6622;
  @Deprecated('Use ERROR_LOG_PINNED_ARCHIVE_TAIL instead')
  static const ERROR_LOG_PINNED_ARCHIVE_TAIL = 6623;
  @Deprecated('Use ERROR_LOG_RECORD_NONEXISTENT instead')
  static const ERROR_LOG_RECORD_NONEXISTENT = 6624;
  @Deprecated('Use ERROR_LOG_RECORDS_RESERVED_INVALID instead')
  static const ERROR_LOG_RECORDS_RESERVED_INVALID = 6625;
  @Deprecated('Use ERROR_LOG_SPACE_RESERVED_INVALID instead')
  static const ERROR_LOG_SPACE_RESERVED_INVALID = 6626;
  @Deprecated('Use ERROR_LOG_TAIL_INVALID instead')
  static const ERROR_LOG_TAIL_INVALID = 6627;
  @Deprecated('Use ERROR_LOG_FULL instead')
  static const ERROR_LOG_FULL = 6628;
  @Deprecated('Use ERROR_COULD_NOT_RESIZE_LOG instead')
  static const ERROR_COULD_NOT_RESIZE_LOG = 6629;
  @Deprecated('Use ERROR_LOG_MULTIPLEXED instead')
  static const ERROR_LOG_MULTIPLEXED = 6630;
  @Deprecated('Use ERROR_LOG_DEDICATED instead')
  static const ERROR_LOG_DEDICATED = 6631;
  @Deprecated('Use ERROR_LOG_ARCHIVE_NOT_IN_PROGRESS instead')
  static const ERROR_LOG_ARCHIVE_NOT_IN_PROGRESS = 6632;
  @Deprecated('Use ERROR_LOG_ARCHIVE_IN_PROGRESS instead')
  static const ERROR_LOG_ARCHIVE_IN_PROGRESS = 6633;
  @Deprecated('Use ERROR_LOG_EPHEMERAL instead')
  static const ERROR_LOG_EPHEMERAL = 6634;
  @Deprecated('Use ERROR_LOG_NOT_ENOUGH_CONTAINERS instead')
  static const ERROR_LOG_NOT_ENOUGH_CONTAINERS = 6635;
  @Deprecated('Use ERROR_LOG_CLIENT_ALREADY_REGISTERED instead')
  static const ERROR_LOG_CLIENT_ALREADY_REGISTERED = 6636;
  @Deprecated('Use ERROR_LOG_CLIENT_NOT_REGISTERED instead')
  static const ERROR_LOG_CLIENT_NOT_REGISTERED = 6637;
  @Deprecated('Use ERROR_LOG_FULL_HANDLER_IN_PROGRESS instead')
  static const ERROR_LOG_FULL_HANDLER_IN_PROGRESS = 6638;
  @Deprecated('Use ERROR_LOG_CONTAINER_READ_FAILED instead')
  static const ERROR_LOG_CONTAINER_READ_FAILED = 6639;
  @Deprecated('Use ERROR_LOG_CONTAINER_WRITE_FAILED instead')
  static const ERROR_LOG_CONTAINER_WRITE_FAILED = 6640;
  @Deprecated('Use ERROR_LOG_CONTAINER_OPEN_FAILED instead')
  static const ERROR_LOG_CONTAINER_OPEN_FAILED = 6641;
  @Deprecated('Use ERROR_LOG_CONTAINER_STATE_INVALID instead')
  static const ERROR_LOG_CONTAINER_STATE_INVALID = 6642;
  @Deprecated('Use ERROR_LOG_STATE_INVALID instead')
  static const ERROR_LOG_STATE_INVALID = 6643;
  @Deprecated('Use ERROR_LOG_PINNED instead')
  static const ERROR_LOG_PINNED = 6644;
  @Deprecated('Use ERROR_LOG_METADATA_FLUSH_FAILED instead')
  static const ERROR_LOG_METADATA_FLUSH_FAILED = 6645;
  @Deprecated('Use ERROR_LOG_INCONSISTENT_SECURITY instead')
  static const ERROR_LOG_INCONSISTENT_SECURITY = 6646;
  @Deprecated('Use ERROR_LOG_APPENDED_FLUSH_FAILED instead')
  static const ERROR_LOG_APPENDED_FLUSH_FAILED = 6647;
  @Deprecated('Use ERROR_LOG_PINNED_RESERVATION instead')
  static const ERROR_LOG_PINNED_RESERVATION = 6648;
  @Deprecated('Use ERROR_INVALID_TRANSACTION instead')
  static const ERROR_INVALID_TRANSACTION = 6700;
  @Deprecated('Use ERROR_TRANSACTION_NOT_ACTIVE instead')
  static const ERROR_TRANSACTION_NOT_ACTIVE = 6701;
  @Deprecated('Use ERROR_TRANSACTION_REQUEST_NOT_VALID instead')
  static const ERROR_TRANSACTION_REQUEST_NOT_VALID = 6702;
  @Deprecated('Use ERROR_TRANSACTION_NOT_REQUESTED instead')
  static const ERROR_TRANSACTION_NOT_REQUESTED = 6703;
  @Deprecated('Use ERROR_TRANSACTION_ALREADY_ABORTED instead')
  static const ERROR_TRANSACTION_ALREADY_ABORTED = 6704;
  @Deprecated('Use ERROR_TRANSACTION_ALREADY_COMMITTED instead')
  static const ERROR_TRANSACTION_ALREADY_COMMITTED = 6705;
  @Deprecated('Use ERROR_TM_INITIALIZATION_FAILED instead')
  static const ERROR_TM_INITIALIZATION_FAILED = 6706;
  @Deprecated('Use ERROR_RESOURCEMANAGER_READ_ONLY instead')
  static const ERROR_RESOURCEMANAGER_READ_ONLY = 6707;
  @Deprecated('Use ERROR_TRANSACTION_NOT_JOINED instead')
  static const ERROR_TRANSACTION_NOT_JOINED = 6708;
  @Deprecated('Use ERROR_TRANSACTION_SUPERIOR_EXISTS instead')
  static const ERROR_TRANSACTION_SUPERIOR_EXISTS = 6709;
  @Deprecated('Use ERROR_CRM_PROTOCOL_ALREADY_EXISTS instead')
  static const ERROR_CRM_PROTOCOL_ALREADY_EXISTS = 6710;
  @Deprecated('Use ERROR_TRANSACTION_PROPAGATION_FAILED instead')
  static const ERROR_TRANSACTION_PROPAGATION_FAILED = 6711;
  @Deprecated('Use ERROR_CRM_PROTOCOL_NOT_FOUND instead')
  static const ERROR_CRM_PROTOCOL_NOT_FOUND = 6712;
  @Deprecated('Use ERROR_TRANSACTION_INVALID_MARSHALL_BUFFER instead')
  static const ERROR_TRANSACTION_INVALID_MARSHALL_BUFFER = 6713;
  @Deprecated('Use ERROR_CURRENT_TRANSACTION_NOT_VALID instead')
  static const ERROR_CURRENT_TRANSACTION_NOT_VALID = 6714;
  @Deprecated('Use ERROR_TRANSACTION_NOT_FOUND instead')
  static const ERROR_TRANSACTION_NOT_FOUND = 6715;
  @Deprecated('Use ERROR_RESOURCEMANAGER_NOT_FOUND instead')
  static const ERROR_RESOURCEMANAGER_NOT_FOUND = 6716;
  @Deprecated('Use ERROR_ENLISTMENT_NOT_FOUND instead')
  static const ERROR_ENLISTMENT_NOT_FOUND = 6717;
  @Deprecated('Use ERROR_TRANSACTIONMANAGER_NOT_FOUND instead')
  static const ERROR_TRANSACTIONMANAGER_NOT_FOUND = 6718;
  @Deprecated('Use ERROR_TRANSACTIONMANAGER_NOT_ONLINE instead')
  static const ERROR_TRANSACTIONMANAGER_NOT_ONLINE = 6719;
  @Deprecated('Use ERROR_TRANSACTIONMANAGER_RECOVERY_NAME_COLLISION instead')
  static const ERROR_TRANSACTIONMANAGER_RECOVERY_NAME_COLLISION = WIN32_ERROR(
    6720,
  );
  @Deprecated('Use ERROR_TRANSACTION_NOT_ROOT instead')
  static const ERROR_TRANSACTION_NOT_ROOT = 6721;
  @Deprecated('Use ERROR_TRANSACTION_OBJECT_EXPIRED instead')
  static const ERROR_TRANSACTION_OBJECT_EXPIRED = 6722;
  @Deprecated('Use ERROR_TRANSACTION_RESPONSE_NOT_ENLISTED instead')
  static const ERROR_TRANSACTION_RESPONSE_NOT_ENLISTED = 6723;
  @Deprecated('Use ERROR_TRANSACTION_RECORD_TOO_LONG instead')
  static const ERROR_TRANSACTION_RECORD_TOO_LONG = 6724;
  @Deprecated('Use ERROR_IMPLICIT_TRANSACTION_NOT_SUPPORTED instead')
  static const ERROR_IMPLICIT_TRANSACTION_NOT_SUPPORTED = 6725;
  @Deprecated('Use ERROR_TRANSACTION_INTEGRITY_VIOLATED instead')
  static const ERROR_TRANSACTION_INTEGRITY_VIOLATED = 6726;
  @Deprecated('Use ERROR_TRANSACTIONMANAGER_IDENTITY_MISMATCH instead')
  static const ERROR_TRANSACTIONMANAGER_IDENTITY_MISMATCH = 6727;
  @Deprecated('Use ERROR_RM_CANNOT_BE_FROZEN_FOR_SNAPSHOT instead')
  static const ERROR_RM_CANNOT_BE_FROZEN_FOR_SNAPSHOT = 6728;
  @Deprecated('Use ERROR_TRANSACTION_MUST_WRITETHROUGH instead')
  static const ERROR_TRANSACTION_MUST_WRITETHROUGH = 6729;
  @Deprecated('Use ERROR_TRANSACTION_NO_SUPERIOR instead')
  static const ERROR_TRANSACTION_NO_SUPERIOR = 6730;
  @Deprecated('Use ERROR_HEURISTIC_DAMAGE_POSSIBLE instead')
  static const ERROR_HEURISTIC_DAMAGE_POSSIBLE = 6731;
  @Deprecated('Use ERROR_TRANSACTIONAL_CONFLICT instead')
  static const ERROR_TRANSACTIONAL_CONFLICT = 6800;
  @Deprecated('Use ERROR_RM_NOT_ACTIVE instead')
  static const ERROR_RM_NOT_ACTIVE = 6801;
  @Deprecated('Use ERROR_RM_METADATA_CORRUPT instead')
  static const ERROR_RM_METADATA_CORRUPT = 6802;
  @Deprecated('Use ERROR_DIRECTORY_NOT_RM instead')
  static const ERROR_DIRECTORY_NOT_RM = 6803;
  @Deprecated('Use ERROR_TRANSACTIONS_UNSUPPORTED_REMOTE instead')
  static const ERROR_TRANSACTIONS_UNSUPPORTED_REMOTE = 6805;
  @Deprecated('Use ERROR_LOG_RESIZE_INVALID_SIZE instead')
  static const ERROR_LOG_RESIZE_INVALID_SIZE = 6806;
  @Deprecated('Use ERROR_OBJECT_NO_LONGER_EXISTS instead')
  static const ERROR_OBJECT_NO_LONGER_EXISTS = 6807;
  @Deprecated('Use ERROR_STREAM_MINIVERSION_NOT_FOUND instead')
  static const ERROR_STREAM_MINIVERSION_NOT_FOUND = 6808;
  @Deprecated('Use ERROR_STREAM_MINIVERSION_NOT_VALID instead')
  static const ERROR_STREAM_MINIVERSION_NOT_VALID = 6809;
  @Deprecated(
    'Use ERROR_MINIVERSION_INACCESSIBLE_FROM_SPECIFIED_TRANSACTION instead',
  )
  static const ERROR_MINIVERSION_INACCESSIBLE_FROM_SPECIFIED_TRANSACTION =
      WIN32_ERROR(6810);
  @Deprecated('Use ERROR_CANT_OPEN_MINIVERSION_WITH_MODIFY_INTENT instead')
  static const ERROR_CANT_OPEN_MINIVERSION_WITH_MODIFY_INTENT = WIN32_ERROR(
    6811,
  );
  @Deprecated('Use ERROR_CANT_CREATE_MORE_STREAM_MINIVERSIONS instead')
  static const ERROR_CANT_CREATE_MORE_STREAM_MINIVERSIONS = 6812;
  @Deprecated('Use ERROR_REMOTE_FILE_VERSION_MISMATCH instead')
  static const ERROR_REMOTE_FILE_VERSION_MISMATCH = 6814;
  @Deprecated('Use ERROR_HANDLE_NO_LONGER_VALID instead')
  static const ERROR_HANDLE_NO_LONGER_VALID = 6815;
  @Deprecated('Use ERROR_NO_TXF_METADATA instead')
  static const ERROR_NO_TXF_METADATA = 6816;
  @Deprecated('Use ERROR_LOG_CORRUPTION_DETECTED instead')
  static const ERROR_LOG_CORRUPTION_DETECTED = 6817;
  @Deprecated('Use ERROR_CANT_RECOVER_WITH_HANDLE_OPEN instead')
  static const ERROR_CANT_RECOVER_WITH_HANDLE_OPEN = 6818;
  @Deprecated('Use ERROR_RM_DISCONNECTED instead')
  static const ERROR_RM_DISCONNECTED = 6819;
  @Deprecated('Use ERROR_ENLISTMENT_NOT_SUPERIOR instead')
  static const ERROR_ENLISTMENT_NOT_SUPERIOR = 6820;
  @Deprecated('Use ERROR_RECOVERY_NOT_NEEDED instead')
  static const ERROR_RECOVERY_NOT_NEEDED = 6821;
  @Deprecated('Use ERROR_RM_ALREADY_STARTED instead')
  static const ERROR_RM_ALREADY_STARTED = 6822;
  @Deprecated('Use ERROR_FILE_IDENTITY_NOT_PERSISTENT instead')
  static const ERROR_FILE_IDENTITY_NOT_PERSISTENT = 6823;
  @Deprecated('Use ERROR_CANT_BREAK_TRANSACTIONAL_DEPENDENCY instead')
  static const ERROR_CANT_BREAK_TRANSACTIONAL_DEPENDENCY = 6824;
  @Deprecated('Use ERROR_CANT_CROSS_RM_BOUNDARY instead')
  static const ERROR_CANT_CROSS_RM_BOUNDARY = 6825;
  @Deprecated('Use ERROR_TXF_DIR_NOT_EMPTY instead')
  static const ERROR_TXF_DIR_NOT_EMPTY = 6826;
  @Deprecated('Use ERROR_INDOUBT_TRANSACTIONS_EXIST instead')
  static const ERROR_INDOUBT_TRANSACTIONS_EXIST = 6827;
  @Deprecated('Use ERROR_TM_VOLATILE instead')
  static const ERROR_TM_VOLATILE = 6828;
  @Deprecated('Use ERROR_ROLLBACK_TIMER_EXPIRED instead')
  static const ERROR_ROLLBACK_TIMER_EXPIRED = 6829;
  @Deprecated('Use ERROR_TXF_ATTRIBUTE_CORRUPT instead')
  static const ERROR_TXF_ATTRIBUTE_CORRUPT = 6830;
  @Deprecated('Use ERROR_EFS_NOT_ALLOWED_IN_TRANSACTION instead')
  static const ERROR_EFS_NOT_ALLOWED_IN_TRANSACTION = 6831;
  @Deprecated('Use ERROR_TRANSACTIONAL_OPEN_NOT_ALLOWED instead')
  static const ERROR_TRANSACTIONAL_OPEN_NOT_ALLOWED = 6832;
  @Deprecated('Use ERROR_LOG_GROWTH_FAILED instead')
  static const ERROR_LOG_GROWTH_FAILED = 6833;
  @Deprecated('Use ERROR_TRANSACTED_MAPPING_UNSUPPORTED_REMOTE instead')
  static const ERROR_TRANSACTED_MAPPING_UNSUPPORTED_REMOTE = 6834;
  @Deprecated('Use ERROR_TXF_METADATA_ALREADY_PRESENT instead')
  static const ERROR_TXF_METADATA_ALREADY_PRESENT = 6835;
  @Deprecated('Use ERROR_TRANSACTION_SCOPE_CALLBACKS_NOT_SET instead')
  static const ERROR_TRANSACTION_SCOPE_CALLBACKS_NOT_SET = 6836;
  @Deprecated('Use ERROR_TRANSACTION_REQUIRED_PROMOTION instead')
  static const ERROR_TRANSACTION_REQUIRED_PROMOTION = 6837;
  @Deprecated('Use ERROR_CANNOT_EXECUTE_FILE_IN_TRANSACTION instead')
  static const ERROR_CANNOT_EXECUTE_FILE_IN_TRANSACTION = 6838;
  @Deprecated('Use ERROR_TRANSACTIONS_NOT_FROZEN instead')
  static const ERROR_TRANSACTIONS_NOT_FROZEN = 6839;
  @Deprecated('Use ERROR_TRANSACTION_FREEZE_IN_PROGRESS instead')
  static const ERROR_TRANSACTION_FREEZE_IN_PROGRESS = 6840;
  @Deprecated('Use ERROR_NOT_SNAPSHOT_VOLUME instead')
  static const ERROR_NOT_SNAPSHOT_VOLUME = 6841;
  @Deprecated('Use ERROR_NO_SAVEPOINT_WITH_OPEN_FILES instead')
  static const ERROR_NO_SAVEPOINT_WITH_OPEN_FILES = 6842;
  @Deprecated('Use ERROR_DATA_LOST_REPAIR instead')
  static const ERROR_DATA_LOST_REPAIR = 6843;
  @Deprecated('Use ERROR_SPARSE_NOT_ALLOWED_IN_TRANSACTION instead')
  static const ERROR_SPARSE_NOT_ALLOWED_IN_TRANSACTION = 6844;
  @Deprecated('Use ERROR_TM_IDENTITY_MISMATCH instead')
  static const ERROR_TM_IDENTITY_MISMATCH = 6845;
  @Deprecated('Use ERROR_FLOATED_SECTION instead')
  static const ERROR_FLOATED_SECTION = 6846;
  @Deprecated('Use ERROR_CANNOT_ACCEPT_TRANSACTED_WORK instead')
  static const ERROR_CANNOT_ACCEPT_TRANSACTED_WORK = 6847;
  @Deprecated('Use ERROR_CANNOT_ABORT_TRANSACTIONS instead')
  static const ERROR_CANNOT_ABORT_TRANSACTIONS = 6848;
  @Deprecated('Use ERROR_BAD_CLUSTERS instead')
  static const ERROR_BAD_CLUSTERS = 6849;
  @Deprecated('Use ERROR_COMPRESSION_NOT_ALLOWED_IN_TRANSACTION instead')
  static const ERROR_COMPRESSION_NOT_ALLOWED_IN_TRANSACTION = 6850;
  @Deprecated('Use ERROR_VOLUME_DIRTY instead')
  static const ERROR_VOLUME_DIRTY = 6851;
  @Deprecated('Use ERROR_NO_LINK_TRACKING_IN_TRANSACTION instead')
  static const ERROR_NO_LINK_TRACKING_IN_TRANSACTION = 6852;
  @Deprecated('Use ERROR_OPERATION_NOT_SUPPORTED_IN_TRANSACTION instead')
  static const ERROR_OPERATION_NOT_SUPPORTED_IN_TRANSACTION = 6853;
  @Deprecated('Use ERROR_EXPIRED_HANDLE instead')
  static const ERROR_EXPIRED_HANDLE = 6854;
  @Deprecated('Use ERROR_TRANSACTION_NOT_ENLISTED instead')
  static const ERROR_TRANSACTION_NOT_ENLISTED = 6855;
  @Deprecated('Use ERROR_CTX_WINSTATION_NAME_INVALID instead')
  static const ERROR_CTX_WINSTATION_NAME_INVALID = 7001;
  @Deprecated('Use ERROR_CTX_INVALID_PD instead')
  static const ERROR_CTX_INVALID_PD = 7002;
  @Deprecated('Use ERROR_CTX_PD_NOT_FOUND instead')
  static const ERROR_CTX_PD_NOT_FOUND = 7003;
  @Deprecated('Use ERROR_CTX_WD_NOT_FOUND instead')
  static const ERROR_CTX_WD_NOT_FOUND = 7004;
  @Deprecated('Use ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY instead')
  static const ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY = 7005;
  @Deprecated('Use ERROR_CTX_SERVICE_NAME_COLLISION instead')
  static const ERROR_CTX_SERVICE_NAME_COLLISION = 7006;
  @Deprecated('Use ERROR_CTX_CLOSE_PENDING instead')
  static const ERROR_CTX_CLOSE_PENDING = 7007;
  @Deprecated('Use ERROR_CTX_NO_OUTBUF instead')
  static const ERROR_CTX_NO_OUTBUF = 7008;
  @Deprecated('Use ERROR_CTX_MODEM_INF_NOT_FOUND instead')
  static const ERROR_CTX_MODEM_INF_NOT_FOUND = 7009;
  @Deprecated('Use ERROR_CTX_INVALID_MODEMNAME instead')
  static const ERROR_CTX_INVALID_MODEMNAME = 7010;
  @Deprecated('Use ERROR_CTX_MODEM_RESPONSE_ERROR instead')
  static const ERROR_CTX_MODEM_RESPONSE_ERROR = 7011;
  @Deprecated('Use ERROR_CTX_MODEM_RESPONSE_TIMEOUT instead')
  static const ERROR_CTX_MODEM_RESPONSE_TIMEOUT = 7012;
  @Deprecated('Use ERROR_CTX_MODEM_RESPONSE_NO_CARRIER instead')
  static const ERROR_CTX_MODEM_RESPONSE_NO_CARRIER = 7013;
  @Deprecated('Use ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE instead')
  static const ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE = 7014;
  @Deprecated('Use ERROR_CTX_MODEM_RESPONSE_BUSY instead')
  static const ERROR_CTX_MODEM_RESPONSE_BUSY = 7015;
  @Deprecated('Use ERROR_CTX_MODEM_RESPONSE_VOICE instead')
  static const ERROR_CTX_MODEM_RESPONSE_VOICE = 7016;
  @Deprecated('Use ERROR_CTX_TD_ERROR instead')
  static const ERROR_CTX_TD_ERROR = 7017;
  @Deprecated('Use ERROR_CTX_WINSTATION_NOT_FOUND instead')
  static const ERROR_CTX_WINSTATION_NOT_FOUND = 7022;
  @Deprecated('Use ERROR_CTX_WINSTATION_ALREADY_EXISTS instead')
  static const ERROR_CTX_WINSTATION_ALREADY_EXISTS = 7023;
  @Deprecated('Use ERROR_CTX_WINSTATION_BUSY instead')
  static const ERROR_CTX_WINSTATION_BUSY = 7024;
  @Deprecated('Use ERROR_CTX_BAD_VIDEO_MODE instead')
  static const ERROR_CTX_BAD_VIDEO_MODE = 7025;
  @Deprecated('Use ERROR_CTX_GRAPHICS_INVALID instead')
  static const ERROR_CTX_GRAPHICS_INVALID = 7035;
  @Deprecated('Use ERROR_CTX_LOGON_DISABLED instead')
  static const ERROR_CTX_LOGON_DISABLED = 7037;
  @Deprecated('Use ERROR_CTX_NOT_CONSOLE instead')
  static const ERROR_CTX_NOT_CONSOLE = 7038;
  @Deprecated('Use ERROR_CTX_CLIENT_QUERY_TIMEOUT instead')
  static const ERROR_CTX_CLIENT_QUERY_TIMEOUT = 7040;
  @Deprecated('Use ERROR_CTX_CONSOLE_DISCONNECT instead')
  static const ERROR_CTX_CONSOLE_DISCONNECT = 7041;
  @Deprecated('Use ERROR_CTX_CONSOLE_CONNECT instead')
  static const ERROR_CTX_CONSOLE_CONNECT = 7042;
  @Deprecated('Use ERROR_CTX_SHADOW_DENIED instead')
  static const ERROR_CTX_SHADOW_DENIED = 7044;
  @Deprecated('Use ERROR_CTX_WINSTATION_ACCESS_DENIED instead')
  static const ERROR_CTX_WINSTATION_ACCESS_DENIED = 7045;
  @Deprecated('Use ERROR_CTX_INVALID_WD instead')
  static const ERROR_CTX_INVALID_WD = 7049;
  @Deprecated('Use ERROR_CTX_SHADOW_INVALID instead')
  static const ERROR_CTX_SHADOW_INVALID = 7050;
  @Deprecated('Use ERROR_CTX_SHADOW_DISABLED instead')
  static const ERROR_CTX_SHADOW_DISABLED = 7051;
  @Deprecated('Use ERROR_CTX_CLIENT_LICENSE_IN_USE instead')
  static const ERROR_CTX_CLIENT_LICENSE_IN_USE = 7052;
  @Deprecated('Use ERROR_CTX_CLIENT_LICENSE_NOT_SET instead')
  static const ERROR_CTX_CLIENT_LICENSE_NOT_SET = 7053;
  @Deprecated('Use ERROR_CTX_LICENSE_NOT_AVAILABLE instead')
  static const ERROR_CTX_LICENSE_NOT_AVAILABLE = 7054;
  @Deprecated('Use ERROR_CTX_LICENSE_CLIENT_INVALID instead')
  static const ERROR_CTX_LICENSE_CLIENT_INVALID = 7055;
  @Deprecated('Use ERROR_CTX_LICENSE_EXPIRED instead')
  static const ERROR_CTX_LICENSE_EXPIRED = 7056;
  @Deprecated('Use ERROR_CTX_SHADOW_NOT_RUNNING instead')
  static const ERROR_CTX_SHADOW_NOT_RUNNING = 7057;
  @Deprecated('Use ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE instead')
  static const ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE = 7058;
  @Deprecated('Use ERROR_ACTIVATION_COUNT_EXCEEDED instead')
  static const ERROR_ACTIVATION_COUNT_EXCEEDED = 7059;
  @Deprecated('Use ERROR_CTX_WINSTATIONS_DISABLED instead')
  static const ERROR_CTX_WINSTATIONS_DISABLED = 7060;
  @Deprecated('Use ERROR_CTX_ENCRYPTION_LEVEL_REQUIRED instead')
  static const ERROR_CTX_ENCRYPTION_LEVEL_REQUIRED = 7061;
  @Deprecated('Use ERROR_CTX_SESSION_IN_USE instead')
  static const ERROR_CTX_SESSION_IN_USE = 7062;
  @Deprecated('Use ERROR_CTX_NO_FORCE_LOGOFF instead')
  static const ERROR_CTX_NO_FORCE_LOGOFF = 7063;
  @Deprecated('Use ERROR_CTX_ACCOUNT_RESTRICTION instead')
  static const ERROR_CTX_ACCOUNT_RESTRICTION = 7064;
  @Deprecated('Use ERROR_RDP_PROTOCOL_ERROR instead')
  static const ERROR_RDP_PROTOCOL_ERROR = 7065;
  @Deprecated('Use ERROR_CTX_CDM_CONNECT instead')
  static const ERROR_CTX_CDM_CONNECT = 7066;
  @Deprecated('Use ERROR_CTX_CDM_DISCONNECT instead')
  static const ERROR_CTX_CDM_DISCONNECT = 7067;
  @Deprecated('Use ERROR_CTX_SECURITY_LAYER_ERROR instead')
  static const ERROR_CTX_SECURITY_LAYER_ERROR = 7068;
  @Deprecated('Use ERROR_TS_INCOMPATIBLE_SESSIONS instead')
  static const ERROR_TS_INCOMPATIBLE_SESSIONS = 7069;
  @Deprecated('Use ERROR_TS_VIDEO_SUBSYSTEM_ERROR instead')
  static const ERROR_TS_VIDEO_SUBSYSTEM_ERROR = 7070;
  @Deprecated('Use ERROR_DS_NOT_INSTALLED instead')
  static const ERROR_DS_NOT_INSTALLED = 8200;
  @Deprecated('Use ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY instead')
  static const ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY = 8201;
  @Deprecated('Use ERROR_DS_NO_ATTRIBUTE_OR_VALUE instead')
  static const ERROR_DS_NO_ATTRIBUTE_OR_VALUE = 8202;
  @Deprecated('Use ERROR_DS_INVALID_ATTRIBUTE_SYNTAX instead')
  static const ERROR_DS_INVALID_ATTRIBUTE_SYNTAX = 8203;
  @Deprecated('Use ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED instead')
  static const ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED = 8204;
  @Deprecated('Use ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS instead')
  static const ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS = 8205;
  @Deprecated('Use ERROR_DS_BUSY instead')
  static const ERROR_DS_BUSY = 8206;
  @Deprecated('Use ERROR_DS_UNAVAILABLE instead')
  static const ERROR_DS_UNAVAILABLE = 8207;
  @Deprecated('Use ERROR_DS_NO_RIDS_ALLOCATED instead')
  static const ERROR_DS_NO_RIDS_ALLOCATED = 8208;
  @Deprecated('Use ERROR_DS_NO_MORE_RIDS instead')
  static const ERROR_DS_NO_MORE_RIDS = 8209;
  @Deprecated('Use ERROR_DS_INCORRECT_ROLE_OWNER instead')
  static const ERROR_DS_INCORRECT_ROLE_OWNER = 8210;
  @Deprecated('Use ERROR_DS_RIDMGR_INIT_ERROR instead')
  static const ERROR_DS_RIDMGR_INIT_ERROR = 8211;
  @Deprecated('Use ERROR_DS_OBJ_CLASS_VIOLATION instead')
  static const ERROR_DS_OBJ_CLASS_VIOLATION = 8212;
  @Deprecated('Use ERROR_DS_CANT_ON_NON_LEAF instead')
  static const ERROR_DS_CANT_ON_NON_LEAF = 8213;
  @Deprecated('Use ERROR_DS_CANT_ON_RDN instead')
  static const ERROR_DS_CANT_ON_RDN = 8214;
  @Deprecated('Use ERROR_DS_CANT_MOD_OBJ_CLASS instead')
  static const ERROR_DS_CANT_MOD_OBJ_CLASS = 8215;
  @Deprecated('Use ERROR_DS_CROSS_DOM_MOVE_ERROR instead')
  static const ERROR_DS_CROSS_DOM_MOVE_ERROR = 8216;
  @Deprecated('Use ERROR_DS_GC_NOT_AVAILABLE instead')
  static const ERROR_DS_GC_NOT_AVAILABLE = 8217;
  @Deprecated('Use ERROR_SHARED_POLICY instead')
  static const ERROR_SHARED_POLICY = 8218;
  @Deprecated('Use ERROR_POLICY_OBJECT_NOT_FOUND instead')
  static const ERROR_POLICY_OBJECT_NOT_FOUND = 8219;
  @Deprecated('Use ERROR_POLICY_ONLY_IN_DS instead')
  static const ERROR_POLICY_ONLY_IN_DS = 8220;
  @Deprecated('Use ERROR_PROMOTION_ACTIVE instead')
  static const ERROR_PROMOTION_ACTIVE = 8221;
  @Deprecated('Use ERROR_NO_PROMOTION_ACTIVE instead')
  static const ERROR_NO_PROMOTION_ACTIVE = 8222;
  @Deprecated('Use ERROR_DS_OPERATIONS_ERROR instead')
  static const ERROR_DS_OPERATIONS_ERROR = 8224;
  @Deprecated('Use ERROR_DS_PROTOCOL_ERROR instead')
  static const ERROR_DS_PROTOCOL_ERROR = 8225;
  @Deprecated('Use ERROR_DS_TIMELIMIT_EXCEEDED instead')
  static const ERROR_DS_TIMELIMIT_EXCEEDED = 8226;
  @Deprecated('Use ERROR_DS_SIZELIMIT_EXCEEDED instead')
  static const ERROR_DS_SIZELIMIT_EXCEEDED = 8227;
  @Deprecated('Use ERROR_DS_ADMIN_LIMIT_EXCEEDED instead')
  static const ERROR_DS_ADMIN_LIMIT_EXCEEDED = 8228;
  @Deprecated('Use ERROR_DS_COMPARE_FALSE instead')
  static const ERROR_DS_COMPARE_FALSE = 8229;
  @Deprecated('Use ERROR_DS_COMPARE_TRUE instead')
  static const ERROR_DS_COMPARE_TRUE = 8230;
  @Deprecated('Use ERROR_DS_AUTH_METHOD_NOT_SUPPORTED instead')
  static const ERROR_DS_AUTH_METHOD_NOT_SUPPORTED = 8231;
  @Deprecated('Use ERROR_DS_STRONG_AUTH_REQUIRED instead')
  static const ERROR_DS_STRONG_AUTH_REQUIRED = 8232;
  @Deprecated('Use ERROR_DS_INAPPROPRIATE_AUTH instead')
  static const ERROR_DS_INAPPROPRIATE_AUTH = 8233;
  @Deprecated('Use ERROR_DS_AUTH_UNKNOWN instead')
  static const ERROR_DS_AUTH_UNKNOWN = 8234;
  @Deprecated('Use ERROR_DS_REFERRAL instead')
  static const ERROR_DS_REFERRAL = 8235;
  @Deprecated('Use ERROR_DS_UNAVAILABLE_CRIT_EXTENSION instead')
  static const ERROR_DS_UNAVAILABLE_CRIT_EXTENSION = 8236;
  @Deprecated('Use ERROR_DS_CONFIDENTIALITY_REQUIRED instead')
  static const ERROR_DS_CONFIDENTIALITY_REQUIRED = 8237;
  @Deprecated('Use ERROR_DS_INAPPROPRIATE_MATCHING instead')
  static const ERROR_DS_INAPPROPRIATE_MATCHING = 8238;
  @Deprecated('Use ERROR_DS_CONSTRAINT_VIOLATION instead')
  static const ERROR_DS_CONSTRAINT_VIOLATION = 8239;
  @Deprecated('Use ERROR_DS_NO_SUCH_OBJECT instead')
  static const ERROR_DS_NO_SUCH_OBJECT = 8240;
  @Deprecated('Use ERROR_DS_ALIAS_PROBLEM instead')
  static const ERROR_DS_ALIAS_PROBLEM = 8241;
  @Deprecated('Use ERROR_DS_INVALID_DN_SYNTAX instead')
  static const ERROR_DS_INVALID_DN_SYNTAX = 8242;
  @Deprecated('Use ERROR_DS_IS_LEAF instead')
  static const ERROR_DS_IS_LEAF = 8243;
  @Deprecated('Use ERROR_DS_ALIAS_DEREF_PROBLEM instead')
  static const ERROR_DS_ALIAS_DEREF_PROBLEM = 8244;
  @Deprecated('Use ERROR_DS_UNWILLING_TO_PERFORM instead')
  static const ERROR_DS_UNWILLING_TO_PERFORM = 8245;
  @Deprecated('Use ERROR_DS_LOOP_DETECT instead')
  static const ERROR_DS_LOOP_DETECT = 8246;
  @Deprecated('Use ERROR_DS_NAMING_VIOLATION instead')
  static const ERROR_DS_NAMING_VIOLATION = 8247;
  @Deprecated('Use ERROR_DS_OBJECT_RESULTS_TOO_LARGE instead')
  static const ERROR_DS_OBJECT_RESULTS_TOO_LARGE = 8248;
  @Deprecated('Use ERROR_DS_AFFECTS_MULTIPLE_DSAS instead')
  static const ERROR_DS_AFFECTS_MULTIPLE_DSAS = 8249;
  @Deprecated('Use ERROR_DS_SERVER_DOWN instead')
  static const ERROR_DS_SERVER_DOWN = 8250;
  @Deprecated('Use ERROR_DS_LOCAL_ERROR instead')
  static const ERROR_DS_LOCAL_ERROR = 8251;
  @Deprecated('Use ERROR_DS_ENCODING_ERROR instead')
  static const ERROR_DS_ENCODING_ERROR = 8252;
  @Deprecated('Use ERROR_DS_DECODING_ERROR instead')
  static const ERROR_DS_DECODING_ERROR = 8253;
  @Deprecated('Use ERROR_DS_FILTER_UNKNOWN instead')
  static const ERROR_DS_FILTER_UNKNOWN = 8254;
  @Deprecated('Use ERROR_DS_PARAM_ERROR instead')
  static const ERROR_DS_PARAM_ERROR = 8255;
  @Deprecated('Use ERROR_DS_NOT_SUPPORTED instead')
  static const ERROR_DS_NOT_SUPPORTED = 8256;
  @Deprecated('Use ERROR_DS_NO_RESULTS_RETURNED instead')
  static const ERROR_DS_NO_RESULTS_RETURNED = 8257;
  @Deprecated('Use ERROR_DS_CONTROL_NOT_FOUND instead')
  static const ERROR_DS_CONTROL_NOT_FOUND = 8258;
  @Deprecated('Use ERROR_DS_CLIENT_LOOP instead')
  static const ERROR_DS_CLIENT_LOOP = 8259;
  @Deprecated('Use ERROR_DS_REFERRAL_LIMIT_EXCEEDED instead')
  static const ERROR_DS_REFERRAL_LIMIT_EXCEEDED = 8260;
  @Deprecated('Use ERROR_DS_SORT_CONTROL_MISSING instead')
  static const ERROR_DS_SORT_CONTROL_MISSING = 8261;
  @Deprecated('Use ERROR_DS_OFFSET_RANGE_ERROR instead')
  static const ERROR_DS_OFFSET_RANGE_ERROR = 8262;
  @Deprecated('Use ERROR_DS_RIDMGR_DISABLED instead')
  static const ERROR_DS_RIDMGR_DISABLED = 8263;
  @Deprecated('Use ERROR_DS_ROOT_MUST_BE_NC instead')
  static const ERROR_DS_ROOT_MUST_BE_NC = 8301;
  @Deprecated('Use ERROR_DS_ADD_REPLICA_INHIBITED instead')
  static const ERROR_DS_ADD_REPLICA_INHIBITED = 8302;
  @Deprecated('Use ERROR_DS_ATT_NOT_DEF_IN_SCHEMA instead')
  static const ERROR_DS_ATT_NOT_DEF_IN_SCHEMA = 8303;
  @Deprecated('Use ERROR_DS_MAX_OBJ_SIZE_EXCEEDED instead')
  static const ERROR_DS_MAX_OBJ_SIZE_EXCEEDED = 8304;
  @Deprecated('Use ERROR_DS_OBJ_STRING_NAME_EXISTS instead')
  static const ERROR_DS_OBJ_STRING_NAME_EXISTS = 8305;
  @Deprecated('Use ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA instead')
  static const ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA = 8306;
  @Deprecated('Use ERROR_DS_RDN_DOESNT_MATCH_SCHEMA instead')
  static const ERROR_DS_RDN_DOESNT_MATCH_SCHEMA = 8307;
  @Deprecated('Use ERROR_DS_NO_REQUESTED_ATTS_FOUND instead')
  static const ERROR_DS_NO_REQUESTED_ATTS_FOUND = 8308;
  @Deprecated('Use ERROR_DS_USER_BUFFER_TO_SMALL instead')
  static const ERROR_DS_USER_BUFFER_TO_SMALL = 8309;
  @Deprecated('Use ERROR_DS_ATT_IS_NOT_ON_OBJ instead')
  static const ERROR_DS_ATT_IS_NOT_ON_OBJ = 8310;
  @Deprecated('Use ERROR_DS_ILLEGAL_MOD_OPERATION instead')
  static const ERROR_DS_ILLEGAL_MOD_OPERATION = 8311;
  @Deprecated('Use ERROR_DS_OBJ_TOO_LARGE instead')
  static const ERROR_DS_OBJ_TOO_LARGE = 8312;
  @Deprecated('Use ERROR_DS_BAD_INSTANCE_TYPE instead')
  static const ERROR_DS_BAD_INSTANCE_TYPE = 8313;
  @Deprecated('Use ERROR_DS_MASTERDSA_REQUIRED instead')
  static const ERROR_DS_MASTERDSA_REQUIRED = 8314;
  @Deprecated('Use ERROR_DS_OBJECT_CLASS_REQUIRED instead')
  static const ERROR_DS_OBJECT_CLASS_REQUIRED = 8315;
  @Deprecated('Use ERROR_DS_MISSING_REQUIRED_ATT instead')
  static const ERROR_DS_MISSING_REQUIRED_ATT = 8316;
  @Deprecated('Use ERROR_DS_ATT_NOT_DEF_FOR_CLASS instead')
  static const ERROR_DS_ATT_NOT_DEF_FOR_CLASS = 8317;
  @Deprecated('Use ERROR_DS_ATT_ALREADY_EXISTS instead')
  static const ERROR_DS_ATT_ALREADY_EXISTS = 8318;
  @Deprecated('Use ERROR_DS_CANT_ADD_ATT_VALUES instead')
  static const ERROR_DS_CANT_ADD_ATT_VALUES = 8320;
  @Deprecated('Use ERROR_DS_SINGLE_VALUE_CONSTRAINT instead')
  static const ERROR_DS_SINGLE_VALUE_CONSTRAINT = 8321;
  @Deprecated('Use ERROR_DS_RANGE_CONSTRAINT instead')
  static const ERROR_DS_RANGE_CONSTRAINT = 8322;
  @Deprecated('Use ERROR_DS_ATT_VAL_ALREADY_EXISTS instead')
  static const ERROR_DS_ATT_VAL_ALREADY_EXISTS = 8323;
  @Deprecated('Use ERROR_DS_CANT_REM_MISSING_ATT instead')
  static const ERROR_DS_CANT_REM_MISSING_ATT = 8324;
  @Deprecated('Use ERROR_DS_CANT_REM_MISSING_ATT_VAL instead')
  static const ERROR_DS_CANT_REM_MISSING_ATT_VAL = 8325;
  @Deprecated('Use ERROR_DS_ROOT_CANT_BE_SUBREF instead')
  static const ERROR_DS_ROOT_CANT_BE_SUBREF = 8326;
  @Deprecated('Use ERROR_DS_NO_CHAINING instead')
  static const ERROR_DS_NO_CHAINING = 8327;
  @Deprecated('Use ERROR_DS_NO_CHAINED_EVAL instead')
  static const ERROR_DS_NO_CHAINED_EVAL = 8328;
  @Deprecated('Use ERROR_DS_NO_PARENT_OBJECT instead')
  static const ERROR_DS_NO_PARENT_OBJECT = 8329;
  @Deprecated('Use ERROR_DS_PARENT_IS_AN_ALIAS instead')
  static const ERROR_DS_PARENT_IS_AN_ALIAS = 8330;
  @Deprecated('Use ERROR_DS_CANT_MIX_MASTER_AND_REPS instead')
  static const ERROR_DS_CANT_MIX_MASTER_AND_REPS = 8331;
  @Deprecated('Use ERROR_DS_CHILDREN_EXIST instead')
  static const ERROR_DS_CHILDREN_EXIST = 8332;
  @Deprecated('Use ERROR_DS_OBJ_NOT_FOUND instead')
  static const ERROR_DS_OBJ_NOT_FOUND = 8333;
  @Deprecated('Use ERROR_DS_ALIASED_OBJ_MISSING instead')
  static const ERROR_DS_ALIASED_OBJ_MISSING = 8334;
  @Deprecated('Use ERROR_DS_BAD_NAME_SYNTAX instead')
  static const ERROR_DS_BAD_NAME_SYNTAX = 8335;
  @Deprecated('Use ERROR_DS_ALIAS_POINTS_TO_ALIAS instead')
  static const ERROR_DS_ALIAS_POINTS_TO_ALIAS = 8336;
  @Deprecated('Use ERROR_DS_CANT_DEREF_ALIAS instead')
  static const ERROR_DS_CANT_DEREF_ALIAS = 8337;
  @Deprecated('Use ERROR_DS_OUT_OF_SCOPE instead')
  static const ERROR_DS_OUT_OF_SCOPE = 8338;
  @Deprecated('Use ERROR_DS_OBJECT_BEING_REMOVED instead')
  static const ERROR_DS_OBJECT_BEING_REMOVED = 8339;
  @Deprecated('Use ERROR_DS_CANT_DELETE_DSA_OBJ instead')
  static const ERROR_DS_CANT_DELETE_DSA_OBJ = 8340;
  @Deprecated('Use ERROR_DS_GENERIC_ERROR instead')
  static const ERROR_DS_GENERIC_ERROR = 8341;
  @Deprecated('Use ERROR_DS_DSA_MUST_BE_INT_MASTER instead')
  static const ERROR_DS_DSA_MUST_BE_INT_MASTER = 8342;
  @Deprecated('Use ERROR_DS_CLASS_NOT_DSA instead')
  static const ERROR_DS_CLASS_NOT_DSA = 8343;
  @Deprecated('Use ERROR_DS_INSUFF_ACCESS_RIGHTS instead')
  static const ERROR_DS_INSUFF_ACCESS_RIGHTS = 8344;
  @Deprecated('Use ERROR_DS_ILLEGAL_SUPERIOR instead')
  static const ERROR_DS_ILLEGAL_SUPERIOR = 8345;
  @Deprecated('Use ERROR_DS_ATTRIBUTE_OWNED_BY_SAM instead')
  static const ERROR_DS_ATTRIBUTE_OWNED_BY_SAM = 8346;
  @Deprecated('Use ERROR_DS_NAME_TOO_MANY_PARTS instead')
  static const ERROR_DS_NAME_TOO_MANY_PARTS = 8347;
  @Deprecated('Use ERROR_DS_NAME_TOO_LONG instead')
  static const ERROR_DS_NAME_TOO_LONG = 8348;
  @Deprecated('Use ERROR_DS_NAME_VALUE_TOO_LONG instead')
  static const ERROR_DS_NAME_VALUE_TOO_LONG = 8349;
  @Deprecated('Use ERROR_DS_NAME_UNPARSEABLE instead')
  static const ERROR_DS_NAME_UNPARSEABLE = 8350;
  @Deprecated('Use ERROR_DS_NAME_TYPE_UNKNOWN instead')
  static const ERROR_DS_NAME_TYPE_UNKNOWN = 8351;
  @Deprecated('Use ERROR_DS_NOT_AN_OBJECT instead')
  static const ERROR_DS_NOT_AN_OBJECT = 8352;
  @Deprecated('Use ERROR_DS_SEC_DESC_TOO_SHORT instead')
  static const ERROR_DS_SEC_DESC_TOO_SHORT = 8353;
  @Deprecated('Use ERROR_DS_SEC_DESC_INVALID instead')
  static const ERROR_DS_SEC_DESC_INVALID = 8354;
  @Deprecated('Use ERROR_DS_NO_DELETED_NAME instead')
  static const ERROR_DS_NO_DELETED_NAME = 8355;
  @Deprecated('Use ERROR_DS_SUBREF_MUST_HAVE_PARENT instead')
  static const ERROR_DS_SUBREF_MUST_HAVE_PARENT = 8356;
  @Deprecated('Use ERROR_DS_NCNAME_MUST_BE_NC instead')
  static const ERROR_DS_NCNAME_MUST_BE_NC = 8357;
  @Deprecated('Use ERROR_DS_CANT_ADD_SYSTEM_ONLY instead')
  static const ERROR_DS_CANT_ADD_SYSTEM_ONLY = 8358;
  @Deprecated('Use ERROR_DS_CLASS_MUST_BE_CONCRETE instead')
  static const ERROR_DS_CLASS_MUST_BE_CONCRETE = 8359;
  @Deprecated('Use ERROR_DS_INVALID_DMD instead')
  static const ERROR_DS_INVALID_DMD = 8360;
  @Deprecated('Use ERROR_DS_OBJ_GUID_EXISTS instead')
  static const ERROR_DS_OBJ_GUID_EXISTS = 8361;
  @Deprecated('Use ERROR_DS_NOT_ON_BACKLINK instead')
  static const ERROR_DS_NOT_ON_BACKLINK = 8362;
  @Deprecated('Use ERROR_DS_NO_CROSSREF_FOR_NC instead')
  static const ERROR_DS_NO_CROSSREF_FOR_NC = 8363;
  @Deprecated('Use ERROR_DS_SHUTTING_DOWN instead')
  static const ERROR_DS_SHUTTING_DOWN = 8364;
  @Deprecated('Use ERROR_DS_UNKNOWN_OPERATION instead')
  static const ERROR_DS_UNKNOWN_OPERATION = 8365;
  @Deprecated('Use ERROR_DS_INVALID_ROLE_OWNER instead')
  static const ERROR_DS_INVALID_ROLE_OWNER = 8366;
  @Deprecated('Use ERROR_DS_COULDNT_CONTACT_FSMO instead')
  static const ERROR_DS_COULDNT_CONTACT_FSMO = 8367;
  @Deprecated('Use ERROR_DS_CROSS_NC_DN_RENAME instead')
  static const ERROR_DS_CROSS_NC_DN_RENAME = 8368;
  @Deprecated('Use ERROR_DS_CANT_MOD_SYSTEM_ONLY instead')
  static const ERROR_DS_CANT_MOD_SYSTEM_ONLY = 8369;
  @Deprecated('Use ERROR_DS_REPLICATOR_ONLY instead')
  static const ERROR_DS_REPLICATOR_ONLY = 8370;
  @Deprecated('Use ERROR_DS_OBJ_CLASS_NOT_DEFINED instead')
  static const ERROR_DS_OBJ_CLASS_NOT_DEFINED = 8371;
  @Deprecated('Use ERROR_DS_OBJ_CLASS_NOT_SUBCLASS instead')
  static const ERROR_DS_OBJ_CLASS_NOT_SUBCLASS = 8372;
  @Deprecated('Use ERROR_DS_NAME_REFERENCE_INVALID instead')
  static const ERROR_DS_NAME_REFERENCE_INVALID = 8373;
  @Deprecated('Use ERROR_DS_CROSS_REF_EXISTS instead')
  static const ERROR_DS_CROSS_REF_EXISTS = 8374;
  @Deprecated('Use ERROR_DS_CANT_DEL_MASTER_CROSSREF instead')
  static const ERROR_DS_CANT_DEL_MASTER_CROSSREF = 8375;
  @Deprecated('Use ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD instead')
  static const ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD = 8376;
  @Deprecated('Use ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX instead')
  static const ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX = 8377;
  @Deprecated('Use ERROR_DS_DUP_RDN instead')
  static const ERROR_DS_DUP_RDN = 8378;
  @Deprecated('Use ERROR_DS_DUP_OID instead')
  static const ERROR_DS_DUP_OID = 8379;
  @Deprecated('Use ERROR_DS_DUP_MAPI_ID instead')
  static const ERROR_DS_DUP_MAPI_ID = 8380;
  @Deprecated('Use ERROR_DS_DUP_SCHEMA_ID_GUID instead')
  static const ERROR_DS_DUP_SCHEMA_ID_GUID = 8381;
  @Deprecated('Use ERROR_DS_DUP_LDAP_DISPLAY_NAME instead')
  static const ERROR_DS_DUP_LDAP_DISPLAY_NAME = 8382;
  @Deprecated('Use ERROR_DS_SEMANTIC_ATT_TEST instead')
  static const ERROR_DS_SEMANTIC_ATT_TEST = 8383;
  @Deprecated('Use ERROR_DS_SYNTAX_MISMATCH instead')
  static const ERROR_DS_SYNTAX_MISMATCH = 8384;
  @Deprecated('Use ERROR_DS_EXISTS_IN_MUST_HAVE instead')
  static const ERROR_DS_EXISTS_IN_MUST_HAVE = 8385;
  @Deprecated('Use ERROR_DS_EXISTS_IN_MAY_HAVE instead')
  static const ERROR_DS_EXISTS_IN_MAY_HAVE = 8386;
  @Deprecated('Use ERROR_DS_NONEXISTENT_MAY_HAVE instead')
  static const ERROR_DS_NONEXISTENT_MAY_HAVE = 8387;
  @Deprecated('Use ERROR_DS_NONEXISTENT_MUST_HAVE instead')
  static const ERROR_DS_NONEXISTENT_MUST_HAVE = 8388;
  @Deprecated('Use ERROR_DS_AUX_CLS_TEST_FAIL instead')
  static const ERROR_DS_AUX_CLS_TEST_FAIL = 8389;
  @Deprecated('Use ERROR_DS_NONEXISTENT_POSS_SUP instead')
  static const ERROR_DS_NONEXISTENT_POSS_SUP = 8390;
  @Deprecated('Use ERROR_DS_SUB_CLS_TEST_FAIL instead')
  static const ERROR_DS_SUB_CLS_TEST_FAIL = 8391;
  @Deprecated('Use ERROR_DS_BAD_RDN_ATT_ID_SYNTAX instead')
  static const ERROR_DS_BAD_RDN_ATT_ID_SYNTAX = 8392;
  @Deprecated('Use ERROR_DS_EXISTS_IN_AUX_CLS instead')
  static const ERROR_DS_EXISTS_IN_AUX_CLS = 8393;
  @Deprecated('Use ERROR_DS_EXISTS_IN_SUB_CLS instead')
  static const ERROR_DS_EXISTS_IN_SUB_CLS = 8394;
  @Deprecated('Use ERROR_DS_EXISTS_IN_POSS_SUP instead')
  static const ERROR_DS_EXISTS_IN_POSS_SUP = 8395;
  @Deprecated('Use ERROR_DS_RECALCSCHEMA_FAILED instead')
  static const ERROR_DS_RECALCSCHEMA_FAILED = 8396;
  @Deprecated('Use ERROR_DS_TREE_DELETE_NOT_FINISHED instead')
  static const ERROR_DS_TREE_DELETE_NOT_FINISHED = 8397;
  @Deprecated('Use ERROR_DS_CANT_DELETE instead')
  static const ERROR_DS_CANT_DELETE = 8398;
  @Deprecated('Use ERROR_DS_ATT_SCHEMA_REQ_ID instead')
  static const ERROR_DS_ATT_SCHEMA_REQ_ID = 8399;
  @Deprecated('Use ERROR_DS_BAD_ATT_SCHEMA_SYNTAX instead')
  static const ERROR_DS_BAD_ATT_SCHEMA_SYNTAX = 8400;
  @Deprecated('Use ERROR_DS_CANT_CACHE_ATT instead')
  static const ERROR_DS_CANT_CACHE_ATT = 8401;
  @Deprecated('Use ERROR_DS_CANT_CACHE_CLASS instead')
  static const ERROR_DS_CANT_CACHE_CLASS = 8402;
  @Deprecated('Use ERROR_DS_CANT_REMOVE_ATT_CACHE instead')
  static const ERROR_DS_CANT_REMOVE_ATT_CACHE = 8403;
  @Deprecated('Use ERROR_DS_CANT_REMOVE_CLASS_CACHE instead')
  static const ERROR_DS_CANT_REMOVE_CLASS_CACHE = 8404;
  @Deprecated('Use ERROR_DS_CANT_RETRIEVE_DN instead')
  static const ERROR_DS_CANT_RETRIEVE_DN = 8405;
  @Deprecated('Use ERROR_DS_MISSING_SUPREF instead')
  static const ERROR_DS_MISSING_SUPREF = 8406;
  @Deprecated('Use ERROR_DS_CANT_RETRIEVE_INSTANCE instead')
  static const ERROR_DS_CANT_RETRIEVE_INSTANCE = 8407;
  @Deprecated('Use ERROR_DS_CODE_INCONSISTENCY instead')
  static const ERROR_DS_CODE_INCONSISTENCY = 8408;
  @Deprecated('Use ERROR_DS_DATABASE_ERROR instead')
  static const ERROR_DS_DATABASE_ERROR = 8409;
  @Deprecated('Use ERROR_DS_GOVERNSID_MISSING instead')
  static const ERROR_DS_GOVERNSID_MISSING = 8410;
  @Deprecated('Use ERROR_DS_MISSING_EXPECTED_ATT instead')
  static const ERROR_DS_MISSING_EXPECTED_ATT = 8411;
  @Deprecated('Use ERROR_DS_NCNAME_MISSING_CR_REF instead')
  static const ERROR_DS_NCNAME_MISSING_CR_REF = 8412;
  @Deprecated('Use ERROR_DS_SECURITY_CHECKING_ERROR instead')
  static const ERROR_DS_SECURITY_CHECKING_ERROR = 8413;
  @Deprecated('Use ERROR_DS_SCHEMA_NOT_LOADED instead')
  static const ERROR_DS_SCHEMA_NOT_LOADED = 8414;
  @Deprecated('Use ERROR_DS_SCHEMA_ALLOC_FAILED instead')
  static const ERROR_DS_SCHEMA_ALLOC_FAILED = 8415;
  @Deprecated('Use ERROR_DS_ATT_SCHEMA_REQ_SYNTAX instead')
  static const ERROR_DS_ATT_SCHEMA_REQ_SYNTAX = 8416;
  @Deprecated('Use ERROR_DS_GCVERIFY_ERROR instead')
  static const ERROR_DS_GCVERIFY_ERROR = 8417;
  @Deprecated('Use ERROR_DS_DRA_SCHEMA_MISMATCH instead')
  static const ERROR_DS_DRA_SCHEMA_MISMATCH = 8418;
  @Deprecated('Use ERROR_DS_CANT_FIND_DSA_OBJ instead')
  static const ERROR_DS_CANT_FIND_DSA_OBJ = 8419;
  @Deprecated('Use ERROR_DS_CANT_FIND_EXPECTED_NC instead')
  static const ERROR_DS_CANT_FIND_EXPECTED_NC = 8420;
  @Deprecated('Use ERROR_DS_CANT_FIND_NC_IN_CACHE instead')
  static const ERROR_DS_CANT_FIND_NC_IN_CACHE = 8421;
  @Deprecated('Use ERROR_DS_CANT_RETRIEVE_CHILD instead')
  static const ERROR_DS_CANT_RETRIEVE_CHILD = 8422;
  @Deprecated('Use ERROR_DS_SECURITY_ILLEGAL_MODIFY instead')
  static const ERROR_DS_SECURITY_ILLEGAL_MODIFY = 8423;
  @Deprecated('Use ERROR_DS_CANT_REPLACE_HIDDEN_REC instead')
  static const ERROR_DS_CANT_REPLACE_HIDDEN_REC = 8424;
  @Deprecated('Use ERROR_DS_BAD_HIERARCHY_FILE instead')
  static const ERROR_DS_BAD_HIERARCHY_FILE = 8425;
  @Deprecated('Use ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED instead')
  static const ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED = 8426;
  @Deprecated('Use ERROR_DS_CONFIG_PARAM_MISSING instead')
  static const ERROR_DS_CONFIG_PARAM_MISSING = 8427;
  @Deprecated('Use ERROR_DS_COUNTING_AB_INDICES_FAILED instead')
  static const ERROR_DS_COUNTING_AB_INDICES_FAILED = 8428;
  @Deprecated('Use ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED instead')
  static const ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED = 8429;
  @Deprecated('Use ERROR_DS_INTERNAL_FAILURE instead')
  static const ERROR_DS_INTERNAL_FAILURE = 8430;
  @Deprecated('Use ERROR_DS_UNKNOWN_ERROR instead')
  static const ERROR_DS_UNKNOWN_ERROR = 8431;
  @Deprecated('Use ERROR_DS_ROOT_REQUIRES_CLASS_TOP instead')
  static const ERROR_DS_ROOT_REQUIRES_CLASS_TOP = 8432;
  @Deprecated('Use ERROR_DS_REFUSING_FSMO_ROLES instead')
  static const ERROR_DS_REFUSING_FSMO_ROLES = 8433;
  @Deprecated('Use ERROR_DS_MISSING_FSMO_SETTINGS instead')
  static const ERROR_DS_MISSING_FSMO_SETTINGS = 8434;
  @Deprecated('Use ERROR_DS_UNABLE_TO_SURRENDER_ROLES instead')
  static const ERROR_DS_UNABLE_TO_SURRENDER_ROLES = 8435;
  @Deprecated('Use ERROR_DS_DRA_GENERIC instead')
  static const ERROR_DS_DRA_GENERIC = 8436;
  @Deprecated('Use ERROR_DS_DRA_INVALID_PARAMETER instead')
  static const ERROR_DS_DRA_INVALID_PARAMETER = 8437;
  @Deprecated('Use ERROR_DS_DRA_BUSY instead')
  static const ERROR_DS_DRA_BUSY = 8438;
  @Deprecated('Use ERROR_DS_DRA_BAD_DN instead')
  static const ERROR_DS_DRA_BAD_DN = 8439;
  @Deprecated('Use ERROR_DS_DRA_BAD_NC instead')
  static const ERROR_DS_DRA_BAD_NC = 8440;
  @Deprecated('Use ERROR_DS_DRA_DN_EXISTS instead')
  static const ERROR_DS_DRA_DN_EXISTS = 8441;
  @Deprecated('Use ERROR_DS_DRA_INTERNAL_ERROR instead')
  static const ERROR_DS_DRA_INTERNAL_ERROR = 8442;
  @Deprecated('Use ERROR_DS_DRA_INCONSISTENT_DIT instead')
  static const ERROR_DS_DRA_INCONSISTENT_DIT = 8443;
  @Deprecated('Use ERROR_DS_DRA_CONNECTION_FAILED instead')
  static const ERROR_DS_DRA_CONNECTION_FAILED = 8444;
  @Deprecated('Use ERROR_DS_DRA_BAD_INSTANCE_TYPE instead')
  static const ERROR_DS_DRA_BAD_INSTANCE_TYPE = 8445;
  @Deprecated('Use ERROR_DS_DRA_OUT_OF_MEM instead')
  static const ERROR_DS_DRA_OUT_OF_MEM = 8446;
  @Deprecated('Use ERROR_DS_DRA_MAIL_PROBLEM instead')
  static const ERROR_DS_DRA_MAIL_PROBLEM = 8447;
  @Deprecated('Use ERROR_DS_DRA_REF_ALREADY_EXISTS instead')
  static const ERROR_DS_DRA_REF_ALREADY_EXISTS = 8448;
  @Deprecated('Use ERROR_DS_DRA_REF_NOT_FOUND instead')
  static const ERROR_DS_DRA_REF_NOT_FOUND = 8449;
  @Deprecated('Use ERROR_DS_DRA_OBJ_IS_REP_SOURCE instead')
  static const ERROR_DS_DRA_OBJ_IS_REP_SOURCE = 8450;
  @Deprecated('Use ERROR_DS_DRA_DB_ERROR instead')
  static const ERROR_DS_DRA_DB_ERROR = 8451;
  @Deprecated('Use ERROR_DS_DRA_NO_REPLICA instead')
  static const ERROR_DS_DRA_NO_REPLICA = 8452;
  @Deprecated('Use ERROR_DS_DRA_ACCESS_DENIED instead')
  static const ERROR_DS_DRA_ACCESS_DENIED = 8453;
  @Deprecated('Use ERROR_DS_DRA_NOT_SUPPORTED instead')
  static const ERROR_DS_DRA_NOT_SUPPORTED = 8454;
  @Deprecated('Use ERROR_DS_DRA_RPC_CANCELLED instead')
  static const ERROR_DS_DRA_RPC_CANCELLED = 8455;
  @Deprecated('Use ERROR_DS_DRA_SOURCE_DISABLED instead')
  static const ERROR_DS_DRA_SOURCE_DISABLED = 8456;
  @Deprecated('Use ERROR_DS_DRA_SINK_DISABLED instead')
  static const ERROR_DS_DRA_SINK_DISABLED = 8457;
  @Deprecated('Use ERROR_DS_DRA_NAME_COLLISION instead')
  static const ERROR_DS_DRA_NAME_COLLISION = 8458;
  @Deprecated('Use ERROR_DS_DRA_SOURCE_REINSTALLED instead')
  static const ERROR_DS_DRA_SOURCE_REINSTALLED = 8459;
  @Deprecated('Use ERROR_DS_DRA_MISSING_PARENT instead')
  static const ERROR_DS_DRA_MISSING_PARENT = 8460;
  @Deprecated('Use ERROR_DS_DRA_PREEMPTED instead')
  static const ERROR_DS_DRA_PREEMPTED = 8461;
  @Deprecated('Use ERROR_DS_DRA_ABANDON_SYNC instead')
  static const ERROR_DS_DRA_ABANDON_SYNC = 8462;
  @Deprecated('Use ERROR_DS_DRA_SHUTDOWN instead')
  static const ERROR_DS_DRA_SHUTDOWN = 8463;
  @Deprecated('Use ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET instead')
  static const ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET = 8464;
  @Deprecated('Use ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA instead')
  static const ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA = 8465;
  @Deprecated('Use ERROR_DS_DRA_EXTN_CONNECTION_FAILED instead')
  static const ERROR_DS_DRA_EXTN_CONNECTION_FAILED = 8466;
  @Deprecated('Use ERROR_DS_INSTALL_SCHEMA_MISMATCH instead')
  static const ERROR_DS_INSTALL_SCHEMA_MISMATCH = 8467;
  @Deprecated('Use ERROR_DS_DUP_LINK_ID instead')
  static const ERROR_DS_DUP_LINK_ID = 8468;
  @Deprecated('Use ERROR_DS_NAME_ERROR_RESOLVING instead')
  static const ERROR_DS_NAME_ERROR_RESOLVING = 8469;
  @Deprecated('Use ERROR_DS_NAME_ERROR_NOT_FOUND instead')
  static const ERROR_DS_NAME_ERROR_NOT_FOUND = 8470;
  @Deprecated('Use ERROR_DS_NAME_ERROR_NOT_UNIQUE instead')
  static const ERROR_DS_NAME_ERROR_NOT_UNIQUE = 8471;
  @Deprecated('Use ERROR_DS_NAME_ERROR_NO_MAPPING instead')
  static const ERROR_DS_NAME_ERROR_NO_MAPPING = 8472;
  @Deprecated('Use ERROR_DS_NAME_ERROR_DOMAIN_ONLY instead')
  static const ERROR_DS_NAME_ERROR_DOMAIN_ONLY = 8473;
  @Deprecated('Use ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING instead')
  static const ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING = 8474;
  @Deprecated('Use ERROR_DS_CONSTRUCTED_ATT_MOD instead')
  static const ERROR_DS_CONSTRUCTED_ATT_MOD = 8475;
  @Deprecated('Use ERROR_DS_WRONG_OM_OBJ_CLASS instead')
  static const ERROR_DS_WRONG_OM_OBJ_CLASS = 8476;
  @Deprecated('Use ERROR_DS_DRA_REPL_PENDING instead')
  static const ERROR_DS_DRA_REPL_PENDING = 8477;
  @Deprecated('Use ERROR_DS_DS_REQUIRED instead')
  static const ERROR_DS_DS_REQUIRED = 8478;
  @Deprecated('Use ERROR_DS_INVALID_LDAP_DISPLAY_NAME instead')
  static const ERROR_DS_INVALID_LDAP_DISPLAY_NAME = 8479;
  @Deprecated('Use ERROR_DS_NON_BASE_SEARCH instead')
  static const ERROR_DS_NON_BASE_SEARCH = 8480;
  @Deprecated('Use ERROR_DS_CANT_RETRIEVE_ATTS instead')
  static const ERROR_DS_CANT_RETRIEVE_ATTS = 8481;
  @Deprecated('Use ERROR_DS_BACKLINK_WITHOUT_LINK instead')
  static const ERROR_DS_BACKLINK_WITHOUT_LINK = 8482;
  @Deprecated('Use ERROR_DS_EPOCH_MISMATCH instead')
  static const ERROR_DS_EPOCH_MISMATCH = 8483;
  @Deprecated('Use ERROR_DS_SRC_NAME_MISMATCH instead')
  static const ERROR_DS_SRC_NAME_MISMATCH = 8484;
  @Deprecated('Use ERROR_DS_SRC_AND_DST_NC_IDENTICAL instead')
  static const ERROR_DS_SRC_AND_DST_NC_IDENTICAL = 8485;
  @Deprecated('Use ERROR_DS_DST_NC_MISMATCH instead')
  static const ERROR_DS_DST_NC_MISMATCH = 8486;
  @Deprecated('Use ERROR_DS_NOT_AUTHORITIVE_FOR_DST_NC instead')
  static const ERROR_DS_NOT_AUTHORITIVE_FOR_DST_NC = 8487;
  @Deprecated('Use ERROR_DS_SRC_GUID_MISMATCH instead')
  static const ERROR_DS_SRC_GUID_MISMATCH = 8488;
  @Deprecated('Use ERROR_DS_CANT_MOVE_DELETED_OBJECT instead')
  static const ERROR_DS_CANT_MOVE_DELETED_OBJECT = 8489;
  @Deprecated('Use ERROR_DS_PDC_OPERATION_IN_PROGRESS instead')
  static const ERROR_DS_PDC_OPERATION_IN_PROGRESS = 8490;
  @Deprecated('Use ERROR_DS_CROSS_DOMAIN_CLEANUP_REQD instead')
  static const ERROR_DS_CROSS_DOMAIN_CLEANUP_REQD = 8491;
  @Deprecated('Use ERROR_DS_ILLEGAL_XDOM_MOVE_OPERATION instead')
  static const ERROR_DS_ILLEGAL_XDOM_MOVE_OPERATION = 8492;
  @Deprecated('Use ERROR_DS_CANT_WITH_ACCT_GROUP_MEMBERSHPS instead')
  static const ERROR_DS_CANT_WITH_ACCT_GROUP_MEMBERSHPS = 8493;
  @Deprecated('Use ERROR_DS_NC_MUST_HAVE_NC_PARENT instead')
  static const ERROR_DS_NC_MUST_HAVE_NC_PARENT = 8494;
  @Deprecated('Use ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE instead')
  static const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE = 8495;
  @Deprecated('Use ERROR_DS_DST_DOMAIN_NOT_NATIVE instead')
  static const ERROR_DS_DST_DOMAIN_NOT_NATIVE = 8496;
  @Deprecated('Use ERROR_DS_MISSING_INFRASTRUCTURE_CONTAINER instead')
  static const ERROR_DS_MISSING_INFRASTRUCTURE_CONTAINER = 8497;
  @Deprecated('Use ERROR_DS_CANT_MOVE_ACCOUNT_GROUP instead')
  static const ERROR_DS_CANT_MOVE_ACCOUNT_GROUP = 8498;
  @Deprecated('Use ERROR_DS_CANT_MOVE_RESOURCE_GROUP instead')
  static const ERROR_DS_CANT_MOVE_RESOURCE_GROUP = 8499;
  @Deprecated('Use ERROR_DS_INVALID_SEARCH_FLAG instead')
  static const ERROR_DS_INVALID_SEARCH_FLAG = 8500;
  @Deprecated('Use ERROR_DS_NO_TREE_DELETE_ABOVE_NC instead')
  static const ERROR_DS_NO_TREE_DELETE_ABOVE_NC = 8501;
  @Deprecated('Use ERROR_DS_COULDNT_LOCK_TREE_FOR_DELETE instead')
  static const ERROR_DS_COULDNT_LOCK_TREE_FOR_DELETE = 8502;
  @Deprecated('Use ERROR_DS_COULDNT_IDENTIFY_OBJECTS_FOR_TREE_DELETE instead')
  static const ERROR_DS_COULDNT_IDENTIFY_OBJECTS_FOR_TREE_DELETE = WIN32_ERROR(
    8503,
  );
  @Deprecated('Use ERROR_DS_SAM_INIT_FAILURE instead')
  static const ERROR_DS_SAM_INIT_FAILURE = 8504;
  @Deprecated('Use ERROR_DS_SENSITIVE_GROUP_VIOLATION instead')
  static const ERROR_DS_SENSITIVE_GROUP_VIOLATION = 8505;
  @Deprecated('Use ERROR_DS_CANT_MOD_PRIMARYGROUPID instead')
  static const ERROR_DS_CANT_MOD_PRIMARYGROUPID = 8506;
  @Deprecated('Use ERROR_DS_ILLEGAL_BASE_SCHEMA_MOD instead')
  static const ERROR_DS_ILLEGAL_BASE_SCHEMA_MOD = 8507;
  @Deprecated('Use ERROR_DS_NONSAFE_SCHEMA_CHANGE instead')
  static const ERROR_DS_NONSAFE_SCHEMA_CHANGE = 8508;
  @Deprecated('Use ERROR_DS_SCHEMA_UPDATE_DISALLOWED instead')
  static const ERROR_DS_SCHEMA_UPDATE_DISALLOWED = 8509;
  @Deprecated('Use ERROR_DS_CANT_CREATE_UNDER_SCHEMA instead')
  static const ERROR_DS_CANT_CREATE_UNDER_SCHEMA = 8510;
  @Deprecated('Use ERROR_DS_INSTALL_NO_SRC_SCH_VERSION instead')
  static const ERROR_DS_INSTALL_NO_SRC_SCH_VERSION = 8511;
  @Deprecated('Use ERROR_DS_INSTALL_NO_SCH_VERSION_IN_INIFILE instead')
  static const ERROR_DS_INSTALL_NO_SCH_VERSION_IN_INIFILE = 8512;
  @Deprecated('Use ERROR_DS_INVALID_GROUP_TYPE instead')
  static const ERROR_DS_INVALID_GROUP_TYPE = 8513;
  @Deprecated('Use ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN instead')
  static const ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN = 8514;
  @Deprecated('Use ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN instead')
  static const ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN = 8515;
  @Deprecated('Use ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER instead')
  static const ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER = 8516;
  @Deprecated('Use ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER instead')
  static const ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER = 8517;
  @Deprecated('Use ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER instead')
  static const ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER = 8518;
  @Deprecated('Use ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER instead')
  static const ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER = 8519;
  @Deprecated('Use ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER instead')
  static const ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER = WIN32_ERROR(
    8520,
  );
  @Deprecated('Use ERROR_DS_HAVE_PRIMARY_MEMBERS instead')
  static const ERROR_DS_HAVE_PRIMARY_MEMBERS = 8521;
  @Deprecated('Use ERROR_DS_STRING_SD_CONVERSION_FAILED instead')
  static const ERROR_DS_STRING_SD_CONVERSION_FAILED = 8522;
  @Deprecated('Use ERROR_DS_NAMING_MASTER_GC instead')
  static const ERROR_DS_NAMING_MASTER_GC = 8523;
  @Deprecated('Use ERROR_DS_DNS_LOOKUP_FAILURE instead')
  static const ERROR_DS_DNS_LOOKUP_FAILURE = 8524;
  @Deprecated('Use ERROR_DS_COULDNT_UPDATE_SPNS instead')
  static const ERROR_DS_COULDNT_UPDATE_SPNS = 8525;
  @Deprecated('Use ERROR_DS_CANT_RETRIEVE_SD instead')
  static const ERROR_DS_CANT_RETRIEVE_SD = 8526;
  @Deprecated('Use ERROR_DS_KEY_NOT_UNIQUE instead')
  static const ERROR_DS_KEY_NOT_UNIQUE = 8527;
  @Deprecated('Use ERROR_DS_WRONG_LINKED_ATT_SYNTAX instead')
  static const ERROR_DS_WRONG_LINKED_ATT_SYNTAX = 8528;
  @Deprecated('Use ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD instead')
  static const ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD = 8529;
  @Deprecated('Use ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY instead')
  static const ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY = 8530;
  @Deprecated('Use ERROR_DS_CANT_START instead')
  static const ERROR_DS_CANT_START = 8531;
  @Deprecated('Use ERROR_DS_INIT_FAILURE instead')
  static const ERROR_DS_INIT_FAILURE = 8532;
  @Deprecated('Use ERROR_DS_NO_PKT_PRIVACY_ON_CONNECTION instead')
  static const ERROR_DS_NO_PKT_PRIVACY_ON_CONNECTION = 8533;
  @Deprecated('Use ERROR_DS_SOURCE_DOMAIN_IN_FOREST instead')
  static const ERROR_DS_SOURCE_DOMAIN_IN_FOREST = 8534;
  @Deprecated('Use ERROR_DS_DESTINATION_DOMAIN_NOT_IN_FOREST instead')
  static const ERROR_DS_DESTINATION_DOMAIN_NOT_IN_FOREST = 8535;
  @Deprecated('Use ERROR_DS_DESTINATION_AUDITING_NOT_ENABLED instead')
  static const ERROR_DS_DESTINATION_AUDITING_NOT_ENABLED = 8536;
  @Deprecated('Use ERROR_DS_CANT_FIND_DC_FOR_SRC_DOMAIN instead')
  static const ERROR_DS_CANT_FIND_DC_FOR_SRC_DOMAIN = 8537;
  @Deprecated('Use ERROR_DS_SRC_OBJ_NOT_GROUP_OR_USER instead')
  static const ERROR_DS_SRC_OBJ_NOT_GROUP_OR_USER = 8538;
  @Deprecated('Use ERROR_DS_SRC_SID_EXISTS_IN_FOREST instead')
  static const ERROR_DS_SRC_SID_EXISTS_IN_FOREST = 8539;
  @Deprecated('Use ERROR_DS_SRC_AND_DST_OBJECT_CLASS_MISMATCH instead')
  static const ERROR_DS_SRC_AND_DST_OBJECT_CLASS_MISMATCH = 8540;
  @Deprecated('Use ERROR_SAM_INIT_FAILURE instead')
  static const ERROR_SAM_INIT_FAILURE = 8541;
  @Deprecated('Use ERROR_DS_DRA_SCHEMA_INFO_SHIP instead')
  static const ERROR_DS_DRA_SCHEMA_INFO_SHIP = 8542;
  @Deprecated('Use ERROR_DS_DRA_SCHEMA_CONFLICT instead')
  static const ERROR_DS_DRA_SCHEMA_CONFLICT = 8543;
  @Deprecated('Use ERROR_DS_DRA_EARLIER_SCHEMA_CONFLICT instead')
  static const ERROR_DS_DRA_EARLIER_SCHEMA_CONFLICT = 8544;
  @Deprecated('Use ERROR_DS_DRA_OBJ_NC_MISMATCH instead')
  static const ERROR_DS_DRA_OBJ_NC_MISMATCH = 8545;
  @Deprecated('Use ERROR_DS_NC_STILL_HAS_DSAS instead')
  static const ERROR_DS_NC_STILL_HAS_DSAS = 8546;
  @Deprecated('Use ERROR_DS_GC_REQUIRED instead')
  static const ERROR_DS_GC_REQUIRED = 8547;
  @Deprecated('Use ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY instead')
  static const ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY = 8548;
  @Deprecated('Use ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS instead')
  static const ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS = 8549;
  @Deprecated('Use ERROR_DS_CANT_ADD_TO_GC instead')
  static const ERROR_DS_CANT_ADD_TO_GC = 8550;
  @Deprecated('Use ERROR_DS_NO_CHECKPOINT_WITH_PDC instead')
  static const ERROR_DS_NO_CHECKPOINT_WITH_PDC = 8551;
  @Deprecated('Use ERROR_DS_SOURCE_AUDITING_NOT_ENABLED instead')
  static const ERROR_DS_SOURCE_AUDITING_NOT_ENABLED = 8552;
  @Deprecated('Use ERROR_DS_CANT_CREATE_IN_NONDOMAIN_NC instead')
  static const ERROR_DS_CANT_CREATE_IN_NONDOMAIN_NC = 8553;
  @Deprecated('Use ERROR_DS_INVALID_NAME_FOR_SPN instead')
  static const ERROR_DS_INVALID_NAME_FOR_SPN = 8554;
  @Deprecated('Use ERROR_DS_FILTER_USES_CONTRUCTED_ATTRS instead')
  static const ERROR_DS_FILTER_USES_CONTRUCTED_ATTRS = 8555;
  @Deprecated('Use ERROR_DS_UNICODEPWD_NOT_IN_QUOTES instead')
  static const ERROR_DS_UNICODEPWD_NOT_IN_QUOTES = 8556;
  @Deprecated('Use ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED instead')
  static const ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED = 8557;
  @Deprecated('Use ERROR_DS_MUST_BE_RUN_ON_DST_DC instead')
  static const ERROR_DS_MUST_BE_RUN_ON_DST_DC = 8558;
  @Deprecated('Use ERROR_DS_SRC_DC_MUST_BE_SP4_OR_GREATER instead')
  static const ERROR_DS_SRC_DC_MUST_BE_SP4_OR_GREATER = 8559;
  @Deprecated('Use ERROR_DS_CANT_TREE_DELETE_CRITICAL_OBJ instead')
  static const ERROR_DS_CANT_TREE_DELETE_CRITICAL_OBJ = 8560;
  @Deprecated('Use ERROR_DS_INIT_FAILURE_CONSOLE instead')
  static const ERROR_DS_INIT_FAILURE_CONSOLE = 8561;
  @Deprecated('Use ERROR_DS_SAM_INIT_FAILURE_CONSOLE instead')
  static const ERROR_DS_SAM_INIT_FAILURE_CONSOLE = 8562;
  @Deprecated('Use ERROR_DS_FOREST_VERSION_TOO_HIGH instead')
  static const ERROR_DS_FOREST_VERSION_TOO_HIGH = 8563;
  @Deprecated('Use ERROR_DS_DOMAIN_VERSION_TOO_HIGH instead')
  static const ERROR_DS_DOMAIN_VERSION_TOO_HIGH = 8564;
  @Deprecated('Use ERROR_DS_FOREST_VERSION_TOO_LOW instead')
  static const ERROR_DS_FOREST_VERSION_TOO_LOW = 8565;
  @Deprecated('Use ERROR_DS_DOMAIN_VERSION_TOO_LOW instead')
  static const ERROR_DS_DOMAIN_VERSION_TOO_LOW = 8566;
  @Deprecated('Use ERROR_DS_INCOMPATIBLE_VERSION instead')
  static const ERROR_DS_INCOMPATIBLE_VERSION = 8567;
  @Deprecated('Use ERROR_DS_LOW_DSA_VERSION instead')
  static const ERROR_DS_LOW_DSA_VERSION = 8568;
  @Deprecated('Use ERROR_DS_NO_BEHAVIOR_VERSION_IN_MIXEDDOMAIN instead')
  static const ERROR_DS_NO_BEHAVIOR_VERSION_IN_MIXEDDOMAIN = 8569;
  @Deprecated('Use ERROR_DS_NOT_SUPPORTED_SORT_ORDER instead')
  static const ERROR_DS_NOT_SUPPORTED_SORT_ORDER = 8570;
  @Deprecated('Use ERROR_DS_NAME_NOT_UNIQUE instead')
  static const ERROR_DS_NAME_NOT_UNIQUE = 8571;
  @Deprecated('Use ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4 instead')
  static const ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4 = 8572;
  @Deprecated('Use ERROR_DS_OUT_OF_VERSION_STORE instead')
  static const ERROR_DS_OUT_OF_VERSION_STORE = 8573;
  @Deprecated('Use ERROR_DS_INCOMPATIBLE_CONTROLS_USED instead')
  static const ERROR_DS_INCOMPATIBLE_CONTROLS_USED = 8574;
  @Deprecated('Use ERROR_DS_NO_REF_DOMAIN instead')
  static const ERROR_DS_NO_REF_DOMAIN = 8575;
  @Deprecated('Use ERROR_DS_RESERVED_LINK_ID instead')
  static const ERROR_DS_RESERVED_LINK_ID = 8576;
  @Deprecated('Use ERROR_DS_LINK_ID_NOT_AVAILABLE instead')
  static const ERROR_DS_LINK_ID_NOT_AVAILABLE = 8577;
  @Deprecated('Use ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER instead')
  static const ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER = 8578;
  @Deprecated('Use ERROR_DS_MODIFYDN_DISALLOWED_BY_INSTANCE_TYPE instead')
  static const ERROR_DS_MODIFYDN_DISALLOWED_BY_INSTANCE_TYPE = WIN32_ERROR(
    8579,
  );
  @Deprecated('Use ERROR_DS_NO_OBJECT_MOVE_IN_SCHEMA_NC instead')
  static const ERROR_DS_NO_OBJECT_MOVE_IN_SCHEMA_NC = 8580;
  @Deprecated('Use ERROR_DS_MODIFYDN_DISALLOWED_BY_FLAG instead')
  static const ERROR_DS_MODIFYDN_DISALLOWED_BY_FLAG = 8581;
  @Deprecated('Use ERROR_DS_MODIFYDN_WRONG_GRANDPARENT instead')
  static const ERROR_DS_MODIFYDN_WRONG_GRANDPARENT = 8582;
  @Deprecated('Use ERROR_DS_NAME_ERROR_TRUST_REFERRAL instead')
  static const ERROR_DS_NAME_ERROR_TRUST_REFERRAL = 8583;
  @Deprecated('Use ERROR_NOT_SUPPORTED_ON_STANDARD_SERVER instead')
  static const ERROR_NOT_SUPPORTED_ON_STANDARD_SERVER = 8584;
  @Deprecated('Use ERROR_DS_CANT_ACCESS_REMOTE_PART_OF_AD instead')
  static const ERROR_DS_CANT_ACCESS_REMOTE_PART_OF_AD = 8585;
  @Deprecated('Use ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE_V2 instead')
  static const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE_V2 = 8586;
  @Deprecated('Use ERROR_DS_THREAD_LIMIT_EXCEEDED instead')
  static const ERROR_DS_THREAD_LIMIT_EXCEEDED = 8587;
  @Deprecated('Use ERROR_DS_NOT_CLOSEST instead')
  static const ERROR_DS_NOT_CLOSEST = 8588;
  @Deprecated('Use ERROR_DS_CANT_DERIVE_SPN_WITHOUT_SERVER_REF instead')
  static const ERROR_DS_CANT_DERIVE_SPN_WITHOUT_SERVER_REF = 8589;
  @Deprecated('Use ERROR_DS_SINGLE_USER_MODE_FAILED instead')
  static const ERROR_DS_SINGLE_USER_MODE_FAILED = 8590;
  @Deprecated('Use ERROR_DS_NTDSCRIPT_SYNTAX_ERROR instead')
  static const ERROR_DS_NTDSCRIPT_SYNTAX_ERROR = 8591;
  @Deprecated('Use ERROR_DS_NTDSCRIPT_PROCESS_ERROR instead')
  static const ERROR_DS_NTDSCRIPT_PROCESS_ERROR = 8592;
  @Deprecated('Use ERROR_DS_DIFFERENT_REPL_EPOCHS instead')
  static const ERROR_DS_DIFFERENT_REPL_EPOCHS = 8593;
  @Deprecated('Use ERROR_DS_DRS_EXTENSIONS_CHANGED instead')
  static const ERROR_DS_DRS_EXTENSIONS_CHANGED = 8594;
  @Deprecated(
    'Use ERROR_DS_REPLICA_SET_CHANGE_NOT_ALLOWED_ON_DISABLED_CR instead',
  )
  static const ERROR_DS_REPLICA_SET_CHANGE_NOT_ALLOWED_ON_DISABLED_CR =
      WIN32_ERROR(8595);
  @Deprecated('Use ERROR_DS_NO_MSDS_INTID instead')
  static const ERROR_DS_NO_MSDS_INTID = 8596;
  @Deprecated('Use ERROR_DS_DUP_MSDS_INTID instead')
  static const ERROR_DS_DUP_MSDS_INTID = 8597;
  @Deprecated('Use ERROR_DS_EXISTS_IN_RDNATTID instead')
  static const ERROR_DS_EXISTS_IN_RDNATTID = 8598;
  @Deprecated('Use ERROR_DS_AUTHORIZATION_FAILED instead')
  static const ERROR_DS_AUTHORIZATION_FAILED = 8599;
  @Deprecated('Use ERROR_DS_INVALID_SCRIPT instead')
  static const ERROR_DS_INVALID_SCRIPT = 8600;
  @Deprecated('Use ERROR_DS_REMOTE_CROSSREF_OP_FAILED instead')
  static const ERROR_DS_REMOTE_CROSSREF_OP_FAILED = 8601;
  @Deprecated('Use ERROR_DS_CROSS_REF_BUSY instead')
  static const ERROR_DS_CROSS_REF_BUSY = 8602;
  @Deprecated('Use ERROR_DS_CANT_DERIVE_SPN_FOR_DELETED_DOMAIN instead')
  static const ERROR_DS_CANT_DERIVE_SPN_FOR_DELETED_DOMAIN = 8603;
  @Deprecated('Use ERROR_DS_CANT_DEMOTE_WITH_WRITEABLE_NC instead')
  static const ERROR_DS_CANT_DEMOTE_WITH_WRITEABLE_NC = 8604;
  @Deprecated('Use ERROR_DS_DUPLICATE_ID_FOUND instead')
  static const ERROR_DS_DUPLICATE_ID_FOUND = 8605;
  @Deprecated('Use ERROR_DS_INSUFFICIENT_ATTR_TO_CREATE_OBJECT instead')
  static const ERROR_DS_INSUFFICIENT_ATTR_TO_CREATE_OBJECT = 8606;
  @Deprecated('Use ERROR_DS_GROUP_CONVERSION_ERROR instead')
  static const ERROR_DS_GROUP_CONVERSION_ERROR = 8607;
  @Deprecated('Use ERROR_DS_CANT_MOVE_APP_BASIC_GROUP instead')
  static const ERROR_DS_CANT_MOVE_APP_BASIC_GROUP = 8608;
  @Deprecated('Use ERROR_DS_CANT_MOVE_APP_QUERY_GROUP instead')
  static const ERROR_DS_CANT_MOVE_APP_QUERY_GROUP = 8609;
  @Deprecated('Use ERROR_DS_ROLE_NOT_VERIFIED instead')
  static const ERROR_DS_ROLE_NOT_VERIFIED = 8610;
  @Deprecated('Use ERROR_DS_WKO_CONTAINER_CANNOT_BE_SPECIAL instead')
  static const ERROR_DS_WKO_CONTAINER_CANNOT_BE_SPECIAL = 8611;
  @Deprecated('Use ERROR_DS_DOMAIN_RENAME_IN_PROGRESS instead')
  static const ERROR_DS_DOMAIN_RENAME_IN_PROGRESS = 8612;
  @Deprecated('Use ERROR_DS_EXISTING_AD_CHILD_NC instead')
  static const ERROR_DS_EXISTING_AD_CHILD_NC = 8613;
  @Deprecated('Use ERROR_DS_REPL_LIFETIME_EXCEEDED instead')
  static const ERROR_DS_REPL_LIFETIME_EXCEEDED = 8614;
  @Deprecated('Use ERROR_DS_DISALLOWED_IN_SYSTEM_CONTAINER instead')
  static const ERROR_DS_DISALLOWED_IN_SYSTEM_CONTAINER = 8615;
  @Deprecated('Use ERROR_DS_LDAP_SEND_QUEUE_FULL instead')
  static const ERROR_DS_LDAP_SEND_QUEUE_FULL = 8616;
  @Deprecated('Use ERROR_DS_DRA_OUT_SCHEDULE_WINDOW instead')
  static const ERROR_DS_DRA_OUT_SCHEDULE_WINDOW = 8617;
  @Deprecated('Use ERROR_DS_POLICY_NOT_KNOWN instead')
  static const ERROR_DS_POLICY_NOT_KNOWN = 8618;
  @Deprecated('Use ERROR_NO_SITE_SETTINGS_OBJECT instead')
  static const ERROR_NO_SITE_SETTINGS_OBJECT = 8619;
  @Deprecated('Use ERROR_NO_SECRETS instead')
  static const ERROR_NO_SECRETS = 8620;
  @Deprecated('Use ERROR_NO_WRITABLE_DC_FOUND instead')
  static const ERROR_NO_WRITABLE_DC_FOUND = 8621;
  @Deprecated('Use ERROR_DS_NO_SERVER_OBJECT instead')
  static const ERROR_DS_NO_SERVER_OBJECT = 8622;
  @Deprecated('Use ERROR_DS_NO_NTDSA_OBJECT instead')
  static const ERROR_DS_NO_NTDSA_OBJECT = 8623;
  @Deprecated('Use ERROR_DS_NON_ASQ_SEARCH instead')
  static const ERROR_DS_NON_ASQ_SEARCH = 8624;
  @Deprecated('Use ERROR_DS_AUDIT_FAILURE instead')
  static const ERROR_DS_AUDIT_FAILURE = 8625;
  @Deprecated('Use ERROR_DS_INVALID_SEARCH_FLAG_SUBTREE instead')
  static const ERROR_DS_INVALID_SEARCH_FLAG_SUBTREE = 8626;
  @Deprecated('Use ERROR_DS_INVALID_SEARCH_FLAG_TUPLE instead')
  static const ERROR_DS_INVALID_SEARCH_FLAG_TUPLE = 8627;
  @Deprecated('Use ERROR_DS_HIERARCHY_TABLE_TOO_DEEP instead')
  static const ERROR_DS_HIERARCHY_TABLE_TOO_DEEP = 8628;
  @Deprecated('Use ERROR_DS_DRA_CORRUPT_UTD_VECTOR instead')
  static const ERROR_DS_DRA_CORRUPT_UTD_VECTOR = 8629;
  @Deprecated('Use ERROR_DS_DRA_SECRETS_DENIED instead')
  static const ERROR_DS_DRA_SECRETS_DENIED = 8630;
  @Deprecated('Use ERROR_DS_RESERVED_MAPI_ID instead')
  static const ERROR_DS_RESERVED_MAPI_ID = 8631;
  @Deprecated('Use ERROR_DS_MAPI_ID_NOT_AVAILABLE instead')
  static const ERROR_DS_MAPI_ID_NOT_AVAILABLE = 8632;
  @Deprecated('Use ERROR_DS_DRA_MISSING_KRBTGT_SECRET instead')
  static const ERROR_DS_DRA_MISSING_KRBTGT_SECRET = 8633;
  @Deprecated('Use ERROR_DS_DOMAIN_NAME_EXISTS_IN_FOREST instead')
  static const ERROR_DS_DOMAIN_NAME_EXISTS_IN_FOREST = 8634;
  @Deprecated('Use ERROR_DS_FLAT_NAME_EXISTS_IN_FOREST instead')
  static const ERROR_DS_FLAT_NAME_EXISTS_IN_FOREST = 8635;
  @Deprecated('Use ERROR_INVALID_USER_PRINCIPAL_NAME instead')
  static const ERROR_INVALID_USER_PRINCIPAL_NAME = 8636;
  @Deprecated('Use ERROR_DS_OID_MAPPED_GROUP_CANT_HAVE_MEMBERS instead')
  static const ERROR_DS_OID_MAPPED_GROUP_CANT_HAVE_MEMBERS = 8637;
  @Deprecated('Use ERROR_DS_OID_NOT_FOUND instead')
  static const ERROR_DS_OID_NOT_FOUND = 8638;
  @Deprecated('Use ERROR_DS_DRA_RECYCLED_TARGET instead')
  static const ERROR_DS_DRA_RECYCLED_TARGET = 8639;
  @Deprecated('Use ERROR_DS_DISALLOWED_NC_REDIRECT instead')
  static const ERROR_DS_DISALLOWED_NC_REDIRECT = 8640;
  @Deprecated('Use ERROR_DS_HIGH_ADLDS_FFL instead')
  static const ERROR_DS_HIGH_ADLDS_FFL = 8641;
  @Deprecated('Use ERROR_DS_HIGH_DSA_VERSION instead')
  static const ERROR_DS_HIGH_DSA_VERSION = 8642;
  @Deprecated('Use ERROR_DS_LOW_ADLDS_FFL instead')
  static const ERROR_DS_LOW_ADLDS_FFL = 8643;
  @Deprecated('Use ERROR_DOMAIN_SID_SAME_AS_LOCAL_WORKSTATION instead')
  static const ERROR_DOMAIN_SID_SAME_AS_LOCAL_WORKSTATION = 8644;
  @Deprecated('Use ERROR_DS_UNDELETE_SAM_VALIDATION_FAILED instead')
  static const ERROR_DS_UNDELETE_SAM_VALIDATION_FAILED = 8645;
  @Deprecated('Use ERROR_INCORRECT_ACCOUNT_TYPE instead')
  static const ERROR_INCORRECT_ACCOUNT_TYPE = 8646;
  @Deprecated('Use ERROR_DS_SPN_VALUE_NOT_UNIQUE_IN_FOREST instead')
  static const ERROR_DS_SPN_VALUE_NOT_UNIQUE_IN_FOREST = 8647;
  @Deprecated('Use ERROR_DS_UPN_VALUE_NOT_UNIQUE_IN_FOREST instead')
  static const ERROR_DS_UPN_VALUE_NOT_UNIQUE_IN_FOREST = 8648;
  @Deprecated('Use ERROR_DS_MISSING_FOREST_TRUST instead')
  static const ERROR_DS_MISSING_FOREST_TRUST = 8649;
  @Deprecated('Use ERROR_DS_VALUE_KEY_NOT_UNIQUE instead')
  static const ERROR_DS_VALUE_KEY_NOT_UNIQUE = 8650;
  @Deprecated('Use ERROR_WEAK_WHFBKEY_BLOCKED instead')
  static const ERROR_WEAK_WHFBKEY_BLOCKED = 8651;
  @Deprecated('Use ERROR_DS_PER_ATTRIBUTE_AUTHZ_FAILED_DURING_ADD instead')
  static const ERROR_DS_PER_ATTRIBUTE_AUTHZ_FAILED_DURING_ADD = WIN32_ERROR(
    8652,
  );
  @Deprecated('Use ERROR_LOCAL_POLICY_MODIFICATION_NOT_SUPPORTED instead')
  static const ERROR_LOCAL_POLICY_MODIFICATION_NOT_SUPPORTED = WIN32_ERROR(
    8653,
  );
  @Deprecated('Use ERROR_POLICY_CONTROLLED_ACCOUNT instead')
  static const ERROR_POLICY_CONTROLLED_ACCOUNT = 8654;
  @Deprecated('Use ERROR_LAPS_LEGACY_SCHEMA_MISSING instead')
  static const ERROR_LAPS_LEGACY_SCHEMA_MISSING = 8655;
  @Deprecated('Use ERROR_LAPS_SCHEMA_MISSING instead')
  static const ERROR_LAPS_SCHEMA_MISSING = 8656;
  @Deprecated('Use ERROR_LAPS_ENCRYPTION_REQUIRES_2016_DFL instead')
  static const ERROR_LAPS_ENCRYPTION_REQUIRES_2016_DFL = 8657;
  @Deprecated('Use DNS_ERROR_RESPONSE_CODES_BASE instead')
  static const DNS_ERROR_RESPONSE_CODES_BASE = 9000;
  @Deprecated('Use DNS_ERROR_RCODE_NO_ERROR instead')
  static const DNS_ERROR_RCODE_NO_ERROR = 0;
  @Deprecated('Use DNS_ERROR_MASK instead')
  static const DNS_ERROR_MASK = 9000;
  @Deprecated('Use DNS_ERROR_RCODE_FORMAT_ERROR instead')
  static const DNS_ERROR_RCODE_FORMAT_ERROR = 9001;
  @Deprecated('Use DNS_ERROR_RCODE_SERVER_FAILURE instead')
  static const DNS_ERROR_RCODE_SERVER_FAILURE = 9002;
  @Deprecated('Use DNS_ERROR_RCODE_NAME_ERROR instead')
  static const DNS_ERROR_RCODE_NAME_ERROR = 9003;
  @Deprecated('Use DNS_ERROR_RCODE_NOT_IMPLEMENTED instead')
  static const DNS_ERROR_RCODE_NOT_IMPLEMENTED = 9004;
  @Deprecated('Use DNS_ERROR_RCODE_REFUSED instead')
  static const DNS_ERROR_RCODE_REFUSED = 9005;
  @Deprecated('Use DNS_ERROR_RCODE_YXDOMAIN instead')
  static const DNS_ERROR_RCODE_YXDOMAIN = 9006;
  @Deprecated('Use DNS_ERROR_RCODE_YXRRSET instead')
  static const DNS_ERROR_RCODE_YXRRSET = 9007;
  @Deprecated('Use DNS_ERROR_RCODE_NXRRSET instead')
  static const DNS_ERROR_RCODE_NXRRSET = 9008;
  @Deprecated('Use DNS_ERROR_RCODE_NOTAUTH instead')
  static const DNS_ERROR_RCODE_NOTAUTH = 9009;
  @Deprecated('Use DNS_ERROR_RCODE_NOTZONE instead')
  static const DNS_ERROR_RCODE_NOTZONE = 9010;
  @Deprecated('Use DNS_ERROR_RCODE_BADSIG instead')
  static const DNS_ERROR_RCODE_BADSIG = 9016;
  @Deprecated('Use DNS_ERROR_RCODE_BADKEY instead')
  static const DNS_ERROR_RCODE_BADKEY = 9017;
  @Deprecated('Use DNS_ERROR_RCODE_BADTIME instead')
  static const DNS_ERROR_RCODE_BADTIME = 9018;
  @Deprecated('Use DNS_ERROR_RCODE_LAST instead')
  static const DNS_ERROR_RCODE_LAST = 9018;
  @Deprecated('Use DNS_ERROR_DNSSEC_BASE instead')
  static const DNS_ERROR_DNSSEC_BASE = 9100;
  @Deprecated('Use DNS_ERROR_KEYMASTER_REQUIRED instead')
  static const DNS_ERROR_KEYMASTER_REQUIRED = 9101;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_ON_SIGNED_ZONE instead')
  static const DNS_ERROR_NOT_ALLOWED_ON_SIGNED_ZONE = 9102;
  @Deprecated('Use DNS_ERROR_NSEC3_INCOMPATIBLE_WITH_RSA_SHA1 instead')
  static const DNS_ERROR_NSEC3_INCOMPATIBLE_WITH_RSA_SHA1 = 9103;
  @Deprecated('Use DNS_ERROR_NOT_ENOUGH_SIGNING_KEY_DESCRIPTORS instead')
  static const DNS_ERROR_NOT_ENOUGH_SIGNING_KEY_DESCRIPTORS = 9104;
  @Deprecated('Use DNS_ERROR_UNSUPPORTED_ALGORITHM instead')
  static const DNS_ERROR_UNSUPPORTED_ALGORITHM = 9105;
  @Deprecated('Use DNS_ERROR_INVALID_KEY_SIZE instead')
  static const DNS_ERROR_INVALID_KEY_SIZE = 9106;
  @Deprecated('Use DNS_ERROR_SIGNING_KEY_NOT_ACCESSIBLE instead')
  static const DNS_ERROR_SIGNING_KEY_NOT_ACCESSIBLE = 9107;
  @Deprecated('Use DNS_ERROR_KSP_DOES_NOT_SUPPORT_PROTECTION instead')
  static const DNS_ERROR_KSP_DOES_NOT_SUPPORT_PROTECTION = 9108;
  @Deprecated('Use DNS_ERROR_UNEXPECTED_DATA_PROTECTION_ERROR instead')
  static const DNS_ERROR_UNEXPECTED_DATA_PROTECTION_ERROR = 9109;
  @Deprecated('Use DNS_ERROR_UNEXPECTED_CNG_ERROR instead')
  static const DNS_ERROR_UNEXPECTED_CNG_ERROR = 9110;
  @Deprecated('Use DNS_ERROR_UNKNOWN_SIGNING_PARAMETER_VERSION instead')
  static const DNS_ERROR_UNKNOWN_SIGNING_PARAMETER_VERSION = 9111;
  @Deprecated('Use DNS_ERROR_KSP_NOT_ACCESSIBLE instead')
  static const DNS_ERROR_KSP_NOT_ACCESSIBLE = 9112;
  @Deprecated('Use DNS_ERROR_TOO_MANY_SKDS instead')
  static const DNS_ERROR_TOO_MANY_SKDS = 9113;
  @Deprecated('Use DNS_ERROR_INVALID_ROLLOVER_PERIOD instead')
  static const DNS_ERROR_INVALID_ROLLOVER_PERIOD = 9114;
  @Deprecated('Use DNS_ERROR_INVALID_INITIAL_ROLLOVER_OFFSET instead')
  static const DNS_ERROR_INVALID_INITIAL_ROLLOVER_OFFSET = 9115;
  @Deprecated('Use DNS_ERROR_ROLLOVER_IN_PROGRESS instead')
  static const DNS_ERROR_ROLLOVER_IN_PROGRESS = 9116;
  @Deprecated('Use DNS_ERROR_STANDBY_KEY_NOT_PRESENT instead')
  static const DNS_ERROR_STANDBY_KEY_NOT_PRESENT = 9117;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_ON_ZSK instead')
  static const DNS_ERROR_NOT_ALLOWED_ON_ZSK = 9118;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_ON_ACTIVE_SKD instead')
  static const DNS_ERROR_NOT_ALLOWED_ON_ACTIVE_SKD = 9119;
  @Deprecated('Use DNS_ERROR_ROLLOVER_ALREADY_QUEUED instead')
  static const DNS_ERROR_ROLLOVER_ALREADY_QUEUED = 9120;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_ON_UNSIGNED_ZONE instead')
  static const DNS_ERROR_NOT_ALLOWED_ON_UNSIGNED_ZONE = 9121;
  @Deprecated('Use DNS_ERROR_BAD_KEYMASTER instead')
  static const DNS_ERROR_BAD_KEYMASTER = 9122;
  @Deprecated('Use DNS_ERROR_INVALID_SIGNATURE_VALIDITY_PERIOD instead')
  static const DNS_ERROR_INVALID_SIGNATURE_VALIDITY_PERIOD = 9123;
  @Deprecated('Use DNS_ERROR_INVALID_NSEC3_ITERATION_COUNT instead')
  static const DNS_ERROR_INVALID_NSEC3_ITERATION_COUNT = 9124;
  @Deprecated('Use DNS_ERROR_DNSSEC_IS_DISABLED instead')
  static const DNS_ERROR_DNSSEC_IS_DISABLED = 9125;
  @Deprecated('Use DNS_ERROR_INVALID_XML instead')
  static const DNS_ERROR_INVALID_XML = 9126;
  @Deprecated('Use DNS_ERROR_NO_VALID_TRUST_ANCHORS instead')
  static const DNS_ERROR_NO_VALID_TRUST_ANCHORS = 9127;
  @Deprecated('Use DNS_ERROR_ROLLOVER_NOT_POKEABLE instead')
  static const DNS_ERROR_ROLLOVER_NOT_POKEABLE = 9128;
  @Deprecated('Use DNS_ERROR_NSEC3_NAME_COLLISION instead')
  static const DNS_ERROR_NSEC3_NAME_COLLISION = 9129;
  @Deprecated('Use DNS_ERROR_NSEC_INCOMPATIBLE_WITH_NSEC3_RSA_SHA1 instead')
  static const DNS_ERROR_NSEC_INCOMPATIBLE_WITH_NSEC3_RSA_SHA1 = WIN32_ERROR(
    9130,
  );
  @Deprecated('Use DNS_ERROR_PACKET_FMT_BASE instead')
  static const DNS_ERROR_PACKET_FMT_BASE = 9500;
  @Deprecated('Use DNS_ERROR_BAD_PACKET instead')
  static const DNS_ERROR_BAD_PACKET = 9502;
  @Deprecated('Use DNS_ERROR_NO_PACKET instead')
  static const DNS_ERROR_NO_PACKET = 9503;
  @Deprecated('Use DNS_ERROR_RCODE instead')
  static const DNS_ERROR_RCODE = 9504;
  @Deprecated('Use DNS_ERROR_UNSECURE_PACKET instead')
  static const DNS_ERROR_UNSECURE_PACKET = 9505;
  @Deprecated('Use DNS_ERROR_NO_MEMORY instead')
  static const DNS_ERROR_NO_MEMORY = 14;
  @Deprecated('Use DNS_ERROR_INVALID_NAME instead')
  static const DNS_ERROR_INVALID_NAME = 123;
  @Deprecated('Use DNS_ERROR_INVALID_DATA instead')
  static const DNS_ERROR_INVALID_DATA = 13;
  @Deprecated('Use DNS_ERROR_GENERAL_API_BASE instead')
  static const DNS_ERROR_GENERAL_API_BASE = 9550;
  @Deprecated('Use DNS_ERROR_INVALID_TYPE instead')
  static const DNS_ERROR_INVALID_TYPE = 9551;
  @Deprecated('Use DNS_ERROR_INVALID_IP_ADDRESS instead')
  static const DNS_ERROR_INVALID_IP_ADDRESS = 9552;
  @Deprecated('Use DNS_ERROR_INVALID_PROPERTY instead')
  static const DNS_ERROR_INVALID_PROPERTY = 9553;
  @Deprecated('Use DNS_ERROR_TRY_AGAIN_LATER instead')
  static const DNS_ERROR_TRY_AGAIN_LATER = 9554;
  @Deprecated('Use DNS_ERROR_NOT_UNIQUE instead')
  static const DNS_ERROR_NOT_UNIQUE = 9555;
  @Deprecated('Use DNS_ERROR_NON_RFC_NAME instead')
  static const DNS_ERROR_NON_RFC_NAME = 9556;
  @Deprecated('Use DNS_ERROR_INVALID_NAME_CHAR instead')
  static const DNS_ERROR_INVALID_NAME_CHAR = 9560;
  @Deprecated('Use DNS_ERROR_NUMERIC_NAME instead')
  static const DNS_ERROR_NUMERIC_NAME = 9561;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_ON_ROOT_SERVER instead')
  static const DNS_ERROR_NOT_ALLOWED_ON_ROOT_SERVER = 9562;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_UNDER_DELEGATION instead')
  static const DNS_ERROR_NOT_ALLOWED_UNDER_DELEGATION = 9563;
  @Deprecated('Use DNS_ERROR_CANNOT_FIND_ROOT_HINTS instead')
  static const DNS_ERROR_CANNOT_FIND_ROOT_HINTS = 9564;
  @Deprecated('Use DNS_ERROR_INCONSISTENT_ROOT_HINTS instead')
  static const DNS_ERROR_INCONSISTENT_ROOT_HINTS = 9565;
  @Deprecated('Use DNS_ERROR_DWORD_VALUE_TOO_SMALL instead')
  static const DNS_ERROR_DWORD_VALUE_TOO_SMALL = 9566;
  @Deprecated('Use DNS_ERROR_DWORD_VALUE_TOO_LARGE instead')
  static const DNS_ERROR_DWORD_VALUE_TOO_LARGE = 9567;
  @Deprecated('Use DNS_ERROR_BACKGROUND_LOADING instead')
  static const DNS_ERROR_BACKGROUND_LOADING = 9568;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_ON_RODC instead')
  static const DNS_ERROR_NOT_ALLOWED_ON_RODC = 9569;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_UNDER_DNAME instead')
  static const DNS_ERROR_NOT_ALLOWED_UNDER_DNAME = 9570;
  @Deprecated('Use DNS_ERROR_DELEGATION_REQUIRED instead')
  static const DNS_ERROR_DELEGATION_REQUIRED = 9571;
  @Deprecated('Use DNS_ERROR_INVALID_POLICY_TABLE instead')
  static const DNS_ERROR_INVALID_POLICY_TABLE = 9572;
  @Deprecated('Use DNS_ERROR_ADDRESS_REQUIRED instead')
  static const DNS_ERROR_ADDRESS_REQUIRED = 9573;
  @Deprecated('Use DNS_ERROR_ZONE_BASE instead')
  static const DNS_ERROR_ZONE_BASE = 9600;
  @Deprecated('Use DNS_ERROR_ZONE_DOES_NOT_EXIST instead')
  static const DNS_ERROR_ZONE_DOES_NOT_EXIST = 9601;
  @Deprecated('Use DNS_ERROR_NO_ZONE_INFO instead')
  static const DNS_ERROR_NO_ZONE_INFO = 9602;
  @Deprecated('Use DNS_ERROR_INVALID_ZONE_OPERATION instead')
  static const DNS_ERROR_INVALID_ZONE_OPERATION = 9603;
  @Deprecated('Use DNS_ERROR_ZONE_CONFIGURATION_ERROR instead')
  static const DNS_ERROR_ZONE_CONFIGURATION_ERROR = 9604;
  @Deprecated('Use DNS_ERROR_ZONE_HAS_NO_SOA_RECORD instead')
  static const DNS_ERROR_ZONE_HAS_NO_SOA_RECORD = 9605;
  @Deprecated('Use DNS_ERROR_ZONE_HAS_NO_NS_RECORDS instead')
  static const DNS_ERROR_ZONE_HAS_NO_NS_RECORDS = 9606;
  @Deprecated('Use DNS_ERROR_ZONE_LOCKED instead')
  static const DNS_ERROR_ZONE_LOCKED = 9607;
  @Deprecated('Use DNS_ERROR_ZONE_CREATION_FAILED instead')
  static const DNS_ERROR_ZONE_CREATION_FAILED = 9608;
  @Deprecated('Use DNS_ERROR_ZONE_ALREADY_EXISTS instead')
  static const DNS_ERROR_ZONE_ALREADY_EXISTS = 9609;
  @Deprecated('Use DNS_ERROR_AUTOZONE_ALREADY_EXISTS instead')
  static const DNS_ERROR_AUTOZONE_ALREADY_EXISTS = 9610;
  @Deprecated('Use DNS_ERROR_INVALID_ZONE_TYPE instead')
  static const DNS_ERROR_INVALID_ZONE_TYPE = 9611;
  @Deprecated('Use DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP instead')
  static const DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP = 9612;
  @Deprecated('Use DNS_ERROR_ZONE_NOT_SECONDARY instead')
  static const DNS_ERROR_ZONE_NOT_SECONDARY = 9613;
  @Deprecated('Use DNS_ERROR_NEED_SECONDARY_ADDRESSES instead')
  static const DNS_ERROR_NEED_SECONDARY_ADDRESSES = 9614;
  @Deprecated('Use DNS_ERROR_WINS_INIT_FAILED instead')
  static const DNS_ERROR_WINS_INIT_FAILED = 9615;
  @Deprecated('Use DNS_ERROR_NEED_WINS_SERVERS instead')
  static const DNS_ERROR_NEED_WINS_SERVERS = 9616;
  @Deprecated('Use DNS_ERROR_NBSTAT_INIT_FAILED instead')
  static const DNS_ERROR_NBSTAT_INIT_FAILED = 9617;
  @Deprecated('Use DNS_ERROR_SOA_DELETE_INVALID instead')
  static const DNS_ERROR_SOA_DELETE_INVALID = 9618;
  @Deprecated('Use DNS_ERROR_FORWARDER_ALREADY_EXISTS instead')
  static const DNS_ERROR_FORWARDER_ALREADY_EXISTS = 9619;
  @Deprecated('Use DNS_ERROR_ZONE_REQUIRES_MASTER_IP instead')
  static const DNS_ERROR_ZONE_REQUIRES_MASTER_IP = 9620;
  @Deprecated('Use DNS_ERROR_ZONE_IS_SHUTDOWN instead')
  static const DNS_ERROR_ZONE_IS_SHUTDOWN = 9621;
  @Deprecated('Use DNS_ERROR_ZONE_LOCKED_FOR_SIGNING instead')
  static const DNS_ERROR_ZONE_LOCKED_FOR_SIGNING = 9622;
  @Deprecated('Use DNS_ERROR_DATAFILE_BASE instead')
  static const DNS_ERROR_DATAFILE_BASE = 9650;
  @Deprecated('Use DNS_ERROR_PRIMARY_REQUIRES_DATAFILE instead')
  static const DNS_ERROR_PRIMARY_REQUIRES_DATAFILE = 9651;
  @Deprecated('Use DNS_ERROR_INVALID_DATAFILE_NAME instead')
  static const DNS_ERROR_INVALID_DATAFILE_NAME = 9652;
  @Deprecated('Use DNS_ERROR_DATAFILE_OPEN_FAILURE instead')
  static const DNS_ERROR_DATAFILE_OPEN_FAILURE = 9653;
  @Deprecated('Use DNS_ERROR_FILE_WRITEBACK_FAILED instead')
  static const DNS_ERROR_FILE_WRITEBACK_FAILED = 9654;
  @Deprecated('Use DNS_ERROR_DATAFILE_PARSING instead')
  static const DNS_ERROR_DATAFILE_PARSING = 9655;
  @Deprecated('Use DNS_ERROR_DATABASE_BASE instead')
  static const DNS_ERROR_DATABASE_BASE = 9700;
  @Deprecated('Use DNS_ERROR_RECORD_DOES_NOT_EXIST instead')
  static const DNS_ERROR_RECORD_DOES_NOT_EXIST = 9701;
  @Deprecated('Use DNS_ERROR_RECORD_FORMAT instead')
  static const DNS_ERROR_RECORD_FORMAT = 9702;
  @Deprecated('Use DNS_ERROR_NODE_CREATION_FAILED instead')
  static const DNS_ERROR_NODE_CREATION_FAILED = 9703;
  @Deprecated('Use DNS_ERROR_UNKNOWN_RECORD_TYPE instead')
  static const DNS_ERROR_UNKNOWN_RECORD_TYPE = 9704;
  @Deprecated('Use DNS_ERROR_RECORD_TIMED_OUT instead')
  static const DNS_ERROR_RECORD_TIMED_OUT = 9705;
  @Deprecated('Use DNS_ERROR_NAME_NOT_IN_ZONE instead')
  static const DNS_ERROR_NAME_NOT_IN_ZONE = 9706;
  @Deprecated('Use DNS_ERROR_CNAME_LOOP instead')
  static const DNS_ERROR_CNAME_LOOP = 9707;
  @Deprecated('Use DNS_ERROR_NODE_IS_CNAME instead')
  static const DNS_ERROR_NODE_IS_CNAME = 9708;
  @Deprecated('Use DNS_ERROR_CNAME_COLLISION instead')
  static const DNS_ERROR_CNAME_COLLISION = 9709;
  @Deprecated('Use DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT instead')
  static const DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT = 9710;
  @Deprecated('Use DNS_ERROR_RECORD_ALREADY_EXISTS instead')
  static const DNS_ERROR_RECORD_ALREADY_EXISTS = 9711;
  @Deprecated('Use DNS_ERROR_SECONDARY_DATA instead')
  static const DNS_ERROR_SECONDARY_DATA = 9712;
  @Deprecated('Use DNS_ERROR_NO_CREATE_CACHE_DATA instead')
  static const DNS_ERROR_NO_CREATE_CACHE_DATA = 9713;
  @Deprecated('Use DNS_ERROR_NAME_DOES_NOT_EXIST instead')
  static const DNS_ERROR_NAME_DOES_NOT_EXIST = 9714;
  @Deprecated('Use DNS_ERROR_DS_UNAVAILABLE instead')
  static const DNS_ERROR_DS_UNAVAILABLE = 9717;
  @Deprecated('Use DNS_ERROR_DS_ZONE_ALREADY_EXISTS instead')
  static const DNS_ERROR_DS_ZONE_ALREADY_EXISTS = 9718;
  @Deprecated('Use DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE instead')
  static const DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE = 9719;
  @Deprecated('Use DNS_ERROR_NODE_IS_DNAME instead')
  static const DNS_ERROR_NODE_IS_DNAME = 9720;
  @Deprecated('Use DNS_ERROR_DNAME_COLLISION instead')
  static const DNS_ERROR_DNAME_COLLISION = 9721;
  @Deprecated('Use DNS_ERROR_ALIAS_LOOP instead')
  static const DNS_ERROR_ALIAS_LOOP = 9722;
  @Deprecated('Use DNS_ERROR_OPERATION_BASE instead')
  static const DNS_ERROR_OPERATION_BASE = 9750;
  @Deprecated('Use DNS_ERROR_AXFR instead')
  static const DNS_ERROR_AXFR = 9752;
  @Deprecated('Use DNS_ERROR_SECURE_BASE instead')
  static const DNS_ERROR_SECURE_BASE = 9800;
  @Deprecated('Use DNS_ERROR_SETUP_BASE instead')
  static const DNS_ERROR_SETUP_BASE = 9850;
  @Deprecated('Use DNS_ERROR_NO_TCPIP instead')
  static const DNS_ERROR_NO_TCPIP = 9851;
  @Deprecated('Use DNS_ERROR_NO_DNS_SERVERS instead')
  static const DNS_ERROR_NO_DNS_SERVERS = 9852;
  @Deprecated('Use DNS_ERROR_DP_BASE instead')
  static const DNS_ERROR_DP_BASE = 9900;
  @Deprecated('Use DNS_ERROR_DP_DOES_NOT_EXIST instead')
  static const DNS_ERROR_DP_DOES_NOT_EXIST = 9901;
  @Deprecated('Use DNS_ERROR_DP_ALREADY_EXISTS instead')
  static const DNS_ERROR_DP_ALREADY_EXISTS = 9902;
  @Deprecated('Use DNS_ERROR_DP_NOT_ENLISTED instead')
  static const DNS_ERROR_DP_NOT_ENLISTED = 9903;
  @Deprecated('Use DNS_ERROR_DP_ALREADY_ENLISTED instead')
  static const DNS_ERROR_DP_ALREADY_ENLISTED = 9904;
  @Deprecated('Use DNS_ERROR_DP_NOT_AVAILABLE instead')
  static const DNS_ERROR_DP_NOT_AVAILABLE = 9905;
  @Deprecated('Use DNS_ERROR_DP_FSMO_ERROR instead')
  static const DNS_ERROR_DP_FSMO_ERROR = 9906;
  @Deprecated('Use DNS_ERROR_RRL_NOT_ENABLED instead')
  static const DNS_ERROR_RRL_NOT_ENABLED = 9911;
  @Deprecated('Use DNS_ERROR_RRL_INVALID_WINDOW_SIZE instead')
  static const DNS_ERROR_RRL_INVALID_WINDOW_SIZE = 9912;
  @Deprecated('Use DNS_ERROR_RRL_INVALID_IPV4_PREFIX instead')
  static const DNS_ERROR_RRL_INVALID_IPV4_PREFIX = 9913;
  @Deprecated('Use DNS_ERROR_RRL_INVALID_IPV6_PREFIX instead')
  static const DNS_ERROR_RRL_INVALID_IPV6_PREFIX = 9914;
  @Deprecated('Use DNS_ERROR_RRL_INVALID_TC_RATE instead')
  static const DNS_ERROR_RRL_INVALID_TC_RATE = 9915;
  @Deprecated('Use DNS_ERROR_RRL_INVALID_LEAK_RATE instead')
  static const DNS_ERROR_RRL_INVALID_LEAK_RATE = 9916;
  @Deprecated('Use DNS_ERROR_RRL_LEAK_RATE_LESSTHAN_TC_RATE instead')
  static const DNS_ERROR_RRL_LEAK_RATE_LESSTHAN_TC_RATE = 9917;
  @Deprecated('Use DNS_ERROR_VIRTUALIZATION_INSTANCE_ALREADY_EXISTS instead')
  static const DNS_ERROR_VIRTUALIZATION_INSTANCE_ALREADY_EXISTS = WIN32_ERROR(
    9921,
  );
  @Deprecated('Use DNS_ERROR_VIRTUALIZATION_INSTANCE_DOES_NOT_EXIST instead')
  static const DNS_ERROR_VIRTUALIZATION_INSTANCE_DOES_NOT_EXIST = WIN32_ERROR(
    9922,
  );
  @Deprecated('Use DNS_ERROR_VIRTUALIZATION_TREE_LOCKED instead')
  static const DNS_ERROR_VIRTUALIZATION_TREE_LOCKED = 9923;
  @Deprecated('Use DNS_ERROR_INVAILD_VIRTUALIZATION_INSTANCE_NAME instead')
  static const DNS_ERROR_INVAILD_VIRTUALIZATION_INSTANCE_NAME = WIN32_ERROR(
    9924,
  );
  @Deprecated('Use DNS_ERROR_DEFAULT_VIRTUALIZATION_INSTANCE instead')
  static const DNS_ERROR_DEFAULT_VIRTUALIZATION_INSTANCE = 9925;
  @Deprecated('Use DNS_ERROR_ZONESCOPE_ALREADY_EXISTS instead')
  static const DNS_ERROR_ZONESCOPE_ALREADY_EXISTS = 9951;
  @Deprecated('Use DNS_ERROR_ZONESCOPE_DOES_NOT_EXIST instead')
  static const DNS_ERROR_ZONESCOPE_DOES_NOT_EXIST = 9952;
  @Deprecated('Use DNS_ERROR_DEFAULT_ZONESCOPE instead')
  static const DNS_ERROR_DEFAULT_ZONESCOPE = 9953;
  @Deprecated('Use DNS_ERROR_INVALID_ZONESCOPE_NAME instead')
  static const DNS_ERROR_INVALID_ZONESCOPE_NAME = 9954;
  @Deprecated('Use DNS_ERROR_NOT_ALLOWED_WITH_ZONESCOPES instead')
  static const DNS_ERROR_NOT_ALLOWED_WITH_ZONESCOPES = 9955;
  @Deprecated('Use DNS_ERROR_LOAD_ZONESCOPE_FAILED instead')
  static const DNS_ERROR_LOAD_ZONESCOPE_FAILED = 9956;
  @Deprecated('Use DNS_ERROR_ZONESCOPE_FILE_WRITEBACK_FAILED instead')
  static const DNS_ERROR_ZONESCOPE_FILE_WRITEBACK_FAILED = 9957;
  @Deprecated('Use DNS_ERROR_INVALID_SCOPE_NAME instead')
  static const DNS_ERROR_INVALID_SCOPE_NAME = 9958;
  @Deprecated('Use DNS_ERROR_SCOPE_DOES_NOT_EXIST instead')
  static const DNS_ERROR_SCOPE_DOES_NOT_EXIST = 9959;
  @Deprecated('Use DNS_ERROR_DEFAULT_SCOPE instead')
  static const DNS_ERROR_DEFAULT_SCOPE = 9960;
  @Deprecated('Use DNS_ERROR_INVALID_SCOPE_OPERATION instead')
  static const DNS_ERROR_INVALID_SCOPE_OPERATION = 9961;
  @Deprecated('Use DNS_ERROR_SCOPE_LOCKED instead')
  static const DNS_ERROR_SCOPE_LOCKED = 9962;
  @Deprecated('Use DNS_ERROR_SCOPE_ALREADY_EXISTS instead')
  static const DNS_ERROR_SCOPE_ALREADY_EXISTS = 9963;
  @Deprecated('Use DNS_ERROR_POLICY_ALREADY_EXISTS instead')
  static const DNS_ERROR_POLICY_ALREADY_EXISTS = 9971;
  @Deprecated('Use DNS_ERROR_POLICY_DOES_NOT_EXIST instead')
  static const DNS_ERROR_POLICY_DOES_NOT_EXIST = 9972;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_CRITERIA instead')
  static const DNS_ERROR_POLICY_INVALID_CRITERIA = 9973;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_SETTINGS instead')
  static const DNS_ERROR_POLICY_INVALID_SETTINGS = 9974;
  @Deprecated('Use DNS_ERROR_CLIENT_SUBNET_IS_ACCESSED instead')
  static const DNS_ERROR_CLIENT_SUBNET_IS_ACCESSED = 9975;
  @Deprecated('Use DNS_ERROR_CLIENT_SUBNET_DOES_NOT_EXIST instead')
  static const DNS_ERROR_CLIENT_SUBNET_DOES_NOT_EXIST = 9976;
  @Deprecated('Use DNS_ERROR_CLIENT_SUBNET_ALREADY_EXISTS instead')
  static const DNS_ERROR_CLIENT_SUBNET_ALREADY_EXISTS = 9977;
  @Deprecated('Use DNS_ERROR_SUBNET_DOES_NOT_EXIST instead')
  static const DNS_ERROR_SUBNET_DOES_NOT_EXIST = 9978;
  @Deprecated('Use DNS_ERROR_SUBNET_ALREADY_EXISTS instead')
  static const DNS_ERROR_SUBNET_ALREADY_EXISTS = 9979;
  @Deprecated('Use DNS_ERROR_POLICY_LOCKED instead')
  static const DNS_ERROR_POLICY_LOCKED = 9980;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_WEIGHT instead')
  static const DNS_ERROR_POLICY_INVALID_WEIGHT = 9981;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_NAME instead')
  static const DNS_ERROR_POLICY_INVALID_NAME = 9982;
  @Deprecated('Use DNS_ERROR_POLICY_MISSING_CRITERIA instead')
  static const DNS_ERROR_POLICY_MISSING_CRITERIA = 9983;
  @Deprecated('Use DNS_ERROR_INVALID_CLIENT_SUBNET_NAME instead')
  static const DNS_ERROR_INVALID_CLIENT_SUBNET_NAME = 9984;
  @Deprecated('Use DNS_ERROR_POLICY_PROCESSING_ORDER_INVALID instead')
  static const DNS_ERROR_POLICY_PROCESSING_ORDER_INVALID = 9985;
  @Deprecated('Use DNS_ERROR_POLICY_SCOPE_MISSING instead')
  static const DNS_ERROR_POLICY_SCOPE_MISSING = 9986;
  @Deprecated('Use DNS_ERROR_POLICY_SCOPE_NOT_ALLOWED instead')
  static const DNS_ERROR_POLICY_SCOPE_NOT_ALLOWED = 9987;
  @Deprecated('Use DNS_ERROR_SERVERSCOPE_IS_REFERENCED instead')
  static const DNS_ERROR_SERVERSCOPE_IS_REFERENCED = 9988;
  @Deprecated('Use DNS_ERROR_ZONESCOPE_IS_REFERENCED instead')
  static const DNS_ERROR_ZONESCOPE_IS_REFERENCED = 9989;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_CRITERIA_CLIENT_SUBNET instead')
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_CLIENT_SUBNET = WIN32_ERROR(
    9990,
  );
  @Deprecated(
    'Use DNS_ERROR_POLICY_INVALID_CRITERIA_TRANSPORT_PROTOCOL instead',
  )
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_TRANSPORT_PROTOCOL =
      WIN32_ERROR(9991);
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_CRITERIA_NETWORK_PROTOCOL instead')
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_NETWORK_PROTOCOL = WIN32_ERROR(
    9992,
  );
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_CRITERIA_INTERFACE instead')
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_INTERFACE = 9993;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_CRITERIA_FQDN instead')
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_FQDN = 9994;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_CRITERIA_QUERY_TYPE instead')
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_QUERY_TYPE = 9995;
  @Deprecated('Use DNS_ERROR_POLICY_INVALID_CRITERIA_TIME_OF_DAY instead')
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_TIME_OF_DAY = WIN32_ERROR(
    9996,
  );
  @Deprecated('Use ERROR_IPSEC_QM_POLICY_EXISTS instead')
  static const ERROR_IPSEC_QM_POLICY_EXISTS = 13000;
  @Deprecated('Use ERROR_IPSEC_QM_POLICY_NOT_FOUND instead')
  static const ERROR_IPSEC_QM_POLICY_NOT_FOUND = 13001;
  @Deprecated('Use ERROR_IPSEC_QM_POLICY_IN_USE instead')
  static const ERROR_IPSEC_QM_POLICY_IN_USE = 13002;
  @Deprecated('Use ERROR_IPSEC_MM_POLICY_EXISTS instead')
  static const ERROR_IPSEC_MM_POLICY_EXISTS = 13003;
  @Deprecated('Use ERROR_IPSEC_MM_POLICY_NOT_FOUND instead')
  static const ERROR_IPSEC_MM_POLICY_NOT_FOUND = 13004;
  @Deprecated('Use ERROR_IPSEC_MM_POLICY_IN_USE instead')
  static const ERROR_IPSEC_MM_POLICY_IN_USE = 13005;
  @Deprecated('Use ERROR_IPSEC_MM_FILTER_EXISTS instead')
  static const ERROR_IPSEC_MM_FILTER_EXISTS = 13006;
  @Deprecated('Use ERROR_IPSEC_MM_FILTER_NOT_FOUND instead')
  static const ERROR_IPSEC_MM_FILTER_NOT_FOUND = 13007;
  @Deprecated('Use ERROR_IPSEC_TRANSPORT_FILTER_EXISTS instead')
  static const ERROR_IPSEC_TRANSPORT_FILTER_EXISTS = 13008;
  @Deprecated('Use ERROR_IPSEC_TRANSPORT_FILTER_NOT_FOUND instead')
  static const ERROR_IPSEC_TRANSPORT_FILTER_NOT_FOUND = 13009;
  @Deprecated('Use ERROR_IPSEC_MM_AUTH_EXISTS instead')
  static const ERROR_IPSEC_MM_AUTH_EXISTS = 13010;
  @Deprecated('Use ERROR_IPSEC_MM_AUTH_NOT_FOUND instead')
  static const ERROR_IPSEC_MM_AUTH_NOT_FOUND = 13011;
  @Deprecated('Use ERROR_IPSEC_MM_AUTH_IN_USE instead')
  static const ERROR_IPSEC_MM_AUTH_IN_USE = 13012;
  @Deprecated('Use ERROR_IPSEC_DEFAULT_MM_POLICY_NOT_FOUND instead')
  static const ERROR_IPSEC_DEFAULT_MM_POLICY_NOT_FOUND = 13013;
  @Deprecated('Use ERROR_IPSEC_DEFAULT_MM_AUTH_NOT_FOUND instead')
  static const ERROR_IPSEC_DEFAULT_MM_AUTH_NOT_FOUND = 13014;
  @Deprecated('Use ERROR_IPSEC_DEFAULT_QM_POLICY_NOT_FOUND instead')
  static const ERROR_IPSEC_DEFAULT_QM_POLICY_NOT_FOUND = 13015;
  @Deprecated('Use ERROR_IPSEC_TUNNEL_FILTER_EXISTS instead')
  static const ERROR_IPSEC_TUNNEL_FILTER_EXISTS = 13016;
  @Deprecated('Use ERROR_IPSEC_TUNNEL_FILTER_NOT_FOUND instead')
  static const ERROR_IPSEC_TUNNEL_FILTER_NOT_FOUND = 13017;
  @Deprecated('Use ERROR_IPSEC_MM_FILTER_PENDING_DELETION instead')
  static const ERROR_IPSEC_MM_FILTER_PENDING_DELETION = 13018;
  @Deprecated('Use ERROR_IPSEC_TRANSPORT_FILTER_PENDING_DELETION instead')
  static const ERROR_IPSEC_TRANSPORT_FILTER_PENDING_DELETION = WIN32_ERROR(
    13019,
  );
  @Deprecated('Use ERROR_IPSEC_TUNNEL_FILTER_PENDING_DELETION instead')
  static const ERROR_IPSEC_TUNNEL_FILTER_PENDING_DELETION = 13020;
  @Deprecated('Use ERROR_IPSEC_MM_POLICY_PENDING_DELETION instead')
  static const ERROR_IPSEC_MM_POLICY_PENDING_DELETION = 13021;
  @Deprecated('Use ERROR_IPSEC_MM_AUTH_PENDING_DELETION instead')
  static const ERROR_IPSEC_MM_AUTH_PENDING_DELETION = 13022;
  @Deprecated('Use ERROR_IPSEC_QM_POLICY_PENDING_DELETION instead')
  static const ERROR_IPSEC_QM_POLICY_PENDING_DELETION = 13023;
  @Deprecated('Use ERROR_IPSEC_IKE_NEG_STATUS_BEGIN instead')
  static const ERROR_IPSEC_IKE_NEG_STATUS_BEGIN = 13800;
  @Deprecated('Use ERROR_IPSEC_IKE_AUTH_FAIL instead')
  static const ERROR_IPSEC_IKE_AUTH_FAIL = 13801;
  @Deprecated('Use ERROR_IPSEC_IKE_ATTRIB_FAIL instead')
  static const ERROR_IPSEC_IKE_ATTRIB_FAIL = 13802;
  @Deprecated('Use ERROR_IPSEC_IKE_NEGOTIATION_PENDING instead')
  static const ERROR_IPSEC_IKE_NEGOTIATION_PENDING = 13803;
  @Deprecated('Use ERROR_IPSEC_IKE_GENERAL_PROCESSING_ERROR instead')
  static const ERROR_IPSEC_IKE_GENERAL_PROCESSING_ERROR = 13804;
  @Deprecated('Use ERROR_IPSEC_IKE_TIMED_OUT instead')
  static const ERROR_IPSEC_IKE_TIMED_OUT = 13805;
  @Deprecated('Use ERROR_IPSEC_IKE_NO_CERT instead')
  static const ERROR_IPSEC_IKE_NO_CERT = 13806;
  @Deprecated('Use ERROR_IPSEC_IKE_SA_DELETED instead')
  static const ERROR_IPSEC_IKE_SA_DELETED = 13807;
  @Deprecated('Use ERROR_IPSEC_IKE_SA_REAPED instead')
  static const ERROR_IPSEC_IKE_SA_REAPED = 13808;
  @Deprecated('Use ERROR_IPSEC_IKE_MM_ACQUIRE_DROP instead')
  static const ERROR_IPSEC_IKE_MM_ACQUIRE_DROP = 13809;
  @Deprecated('Use ERROR_IPSEC_IKE_QM_ACQUIRE_DROP instead')
  static const ERROR_IPSEC_IKE_QM_ACQUIRE_DROP = 13810;
  @Deprecated('Use ERROR_IPSEC_IKE_QUEUE_DROP_MM instead')
  static const ERROR_IPSEC_IKE_QUEUE_DROP_MM = 13811;
  @Deprecated('Use ERROR_IPSEC_IKE_QUEUE_DROP_NO_MM instead')
  static const ERROR_IPSEC_IKE_QUEUE_DROP_NO_MM = 13812;
  @Deprecated('Use ERROR_IPSEC_IKE_DROP_NO_RESPONSE instead')
  static const ERROR_IPSEC_IKE_DROP_NO_RESPONSE = 13813;
  @Deprecated('Use ERROR_IPSEC_IKE_MM_DELAY_DROP instead')
  static const ERROR_IPSEC_IKE_MM_DELAY_DROP = 13814;
  @Deprecated('Use ERROR_IPSEC_IKE_QM_DELAY_DROP instead')
  static const ERROR_IPSEC_IKE_QM_DELAY_DROP = 13815;
  @Deprecated('Use ERROR_IPSEC_IKE_ERROR instead')
  static const ERROR_IPSEC_IKE_ERROR = 13816;
  @Deprecated('Use ERROR_IPSEC_IKE_CRL_FAILED instead')
  static const ERROR_IPSEC_IKE_CRL_FAILED = 13817;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_KEY_USAGE instead')
  static const ERROR_IPSEC_IKE_INVALID_KEY_USAGE = 13818;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_CERT_TYPE instead')
  static const ERROR_IPSEC_IKE_INVALID_CERT_TYPE = 13819;
  @Deprecated('Use ERROR_IPSEC_IKE_NO_PRIVATE_KEY instead')
  static const ERROR_IPSEC_IKE_NO_PRIVATE_KEY = 13820;
  @Deprecated('Use ERROR_IPSEC_IKE_SIMULTANEOUS_REKEY instead')
  static const ERROR_IPSEC_IKE_SIMULTANEOUS_REKEY = 13821;
  @Deprecated('Use ERROR_IPSEC_IKE_DH_FAIL instead')
  static const ERROR_IPSEC_IKE_DH_FAIL = 13822;
  @Deprecated('Use ERROR_IPSEC_IKE_CRITICAL_PAYLOAD_NOT_RECOGNIZED instead')
  static const ERROR_IPSEC_IKE_CRITICAL_PAYLOAD_NOT_RECOGNIZED = WIN32_ERROR(
    13823,
  );
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_HEADER instead')
  static const ERROR_IPSEC_IKE_INVALID_HEADER = 13824;
  @Deprecated('Use ERROR_IPSEC_IKE_NO_POLICY instead')
  static const ERROR_IPSEC_IKE_NO_POLICY = 13825;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_SIGNATURE instead')
  static const ERROR_IPSEC_IKE_INVALID_SIGNATURE = 13826;
  @Deprecated('Use ERROR_IPSEC_IKE_KERBEROS_ERROR instead')
  static const ERROR_IPSEC_IKE_KERBEROS_ERROR = 13827;
  @Deprecated('Use ERROR_IPSEC_IKE_NO_PUBLIC_KEY instead')
  static const ERROR_IPSEC_IKE_NO_PUBLIC_KEY = 13828;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR = 13829;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_SA instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_SA = 13830;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_PROP instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_PROP = 13831;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_TRANS instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_TRANS = 13832;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_KE instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_KE = 13833;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_ID instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_ID = 13834;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_CERT instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_CERT = 13835;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_CERT_REQ instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_CERT_REQ = 13836;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_HASH instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_HASH = 13837;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_SIG instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_SIG = 13838;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_NONCE instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NONCE = 13839;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_NOTIFY instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NOTIFY = 13840;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_DELETE instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_DELETE = 13841;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_VENDOR instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_VENDOR = 13842;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_PAYLOAD instead')
  static const ERROR_IPSEC_IKE_INVALID_PAYLOAD = 13843;
  @Deprecated('Use ERROR_IPSEC_IKE_LOAD_SOFT_SA instead')
  static const ERROR_IPSEC_IKE_LOAD_SOFT_SA = 13844;
  @Deprecated('Use ERROR_IPSEC_IKE_SOFT_SA_TORN_DOWN instead')
  static const ERROR_IPSEC_IKE_SOFT_SA_TORN_DOWN = 13845;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_COOKIE instead')
  static const ERROR_IPSEC_IKE_INVALID_COOKIE = 13846;
  @Deprecated('Use ERROR_IPSEC_IKE_NO_PEER_CERT instead')
  static const ERROR_IPSEC_IKE_NO_PEER_CERT = 13847;
  @Deprecated('Use ERROR_IPSEC_IKE_PEER_CRL_FAILED instead')
  static const ERROR_IPSEC_IKE_PEER_CRL_FAILED = 13848;
  @Deprecated('Use ERROR_IPSEC_IKE_POLICY_CHANGE instead')
  static const ERROR_IPSEC_IKE_POLICY_CHANGE = 13849;
  @Deprecated('Use ERROR_IPSEC_IKE_NO_MM_POLICY instead')
  static const ERROR_IPSEC_IKE_NO_MM_POLICY = 13850;
  @Deprecated('Use ERROR_IPSEC_IKE_NOTCBPRIV instead')
  static const ERROR_IPSEC_IKE_NOTCBPRIV = 13851;
  @Deprecated('Use ERROR_IPSEC_IKE_SECLOADFAIL instead')
  static const ERROR_IPSEC_IKE_SECLOADFAIL = 13852;
  @Deprecated('Use ERROR_IPSEC_IKE_FAILSSPINIT instead')
  static const ERROR_IPSEC_IKE_FAILSSPINIT = 13853;
  @Deprecated('Use ERROR_IPSEC_IKE_FAILQUERYSSP instead')
  static const ERROR_IPSEC_IKE_FAILQUERYSSP = 13854;
  @Deprecated('Use ERROR_IPSEC_IKE_SRVACQFAIL instead')
  static const ERROR_IPSEC_IKE_SRVACQFAIL = 13855;
  @Deprecated('Use ERROR_IPSEC_IKE_SRVQUERYCRED instead')
  static const ERROR_IPSEC_IKE_SRVQUERYCRED = 13856;
  @Deprecated('Use ERROR_IPSEC_IKE_GETSPIFAIL instead')
  static const ERROR_IPSEC_IKE_GETSPIFAIL = 13857;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_FILTER instead')
  static const ERROR_IPSEC_IKE_INVALID_FILTER = 13858;
  @Deprecated('Use ERROR_IPSEC_IKE_OUT_OF_MEMORY instead')
  static const ERROR_IPSEC_IKE_OUT_OF_MEMORY = 13859;
  @Deprecated('Use ERROR_IPSEC_IKE_ADD_UPDATE_KEY_FAILED instead')
  static const ERROR_IPSEC_IKE_ADD_UPDATE_KEY_FAILED = 13860;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_POLICY instead')
  static const ERROR_IPSEC_IKE_INVALID_POLICY = 13861;
  @Deprecated('Use ERROR_IPSEC_IKE_UNKNOWN_DOI instead')
  static const ERROR_IPSEC_IKE_UNKNOWN_DOI = 13862;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_SITUATION instead')
  static const ERROR_IPSEC_IKE_INVALID_SITUATION = 13863;
  @Deprecated('Use ERROR_IPSEC_IKE_DH_FAILURE instead')
  static const ERROR_IPSEC_IKE_DH_FAILURE = 13864;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_GROUP instead')
  static const ERROR_IPSEC_IKE_INVALID_GROUP = 13865;
  @Deprecated('Use ERROR_IPSEC_IKE_ENCRYPT instead')
  static const ERROR_IPSEC_IKE_ENCRYPT = 13866;
  @Deprecated('Use ERROR_IPSEC_IKE_DECRYPT instead')
  static const ERROR_IPSEC_IKE_DECRYPT = 13867;
  @Deprecated('Use ERROR_IPSEC_IKE_POLICY_MATCH instead')
  static const ERROR_IPSEC_IKE_POLICY_MATCH = 13868;
  @Deprecated('Use ERROR_IPSEC_IKE_UNSUPPORTED_ID instead')
  static const ERROR_IPSEC_IKE_UNSUPPORTED_ID = 13869;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_HASH instead')
  static const ERROR_IPSEC_IKE_INVALID_HASH = 13870;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_HASH_ALG instead')
  static const ERROR_IPSEC_IKE_INVALID_HASH_ALG = 13871;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_HASH_SIZE instead')
  static const ERROR_IPSEC_IKE_INVALID_HASH_SIZE = 13872;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_ENCRYPT_ALG instead')
  static const ERROR_IPSEC_IKE_INVALID_ENCRYPT_ALG = 13873;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_AUTH_ALG instead')
  static const ERROR_IPSEC_IKE_INVALID_AUTH_ALG = 13874;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_SIG instead')
  static const ERROR_IPSEC_IKE_INVALID_SIG = 13875;
  @Deprecated('Use ERROR_IPSEC_IKE_LOAD_FAILED instead')
  static const ERROR_IPSEC_IKE_LOAD_FAILED = 13876;
  @Deprecated('Use ERROR_IPSEC_IKE_RPC_DELETE instead')
  static const ERROR_IPSEC_IKE_RPC_DELETE = 13877;
  @Deprecated('Use ERROR_IPSEC_IKE_BENIGN_REINIT instead')
  static const ERROR_IPSEC_IKE_BENIGN_REINIT = 13878;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_RESPONDER_LIFETIME_NOTIFY instead')
  static const ERROR_IPSEC_IKE_INVALID_RESPONDER_LIFETIME_NOTIFY = WIN32_ERROR(
    13879,
  );
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_MAJOR_VERSION instead')
  static const ERROR_IPSEC_IKE_INVALID_MAJOR_VERSION = 13880;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_CERT_KEYLEN instead')
  static const ERROR_IPSEC_IKE_INVALID_CERT_KEYLEN = 13881;
  @Deprecated('Use ERROR_IPSEC_IKE_MM_LIMIT instead')
  static const ERROR_IPSEC_IKE_MM_LIMIT = 13882;
  @Deprecated('Use ERROR_IPSEC_IKE_NEGOTIATION_DISABLED instead')
  static const ERROR_IPSEC_IKE_NEGOTIATION_DISABLED = 13883;
  @Deprecated('Use ERROR_IPSEC_IKE_QM_LIMIT instead')
  static const ERROR_IPSEC_IKE_QM_LIMIT = 13884;
  @Deprecated('Use ERROR_IPSEC_IKE_MM_EXPIRED instead')
  static const ERROR_IPSEC_IKE_MM_EXPIRED = 13885;
  @Deprecated('Use ERROR_IPSEC_IKE_PEER_MM_ASSUMED_INVALID instead')
  static const ERROR_IPSEC_IKE_PEER_MM_ASSUMED_INVALID = 13886;
  @Deprecated('Use ERROR_IPSEC_IKE_CERT_CHAIN_POLICY_MISMATCH instead')
  static const ERROR_IPSEC_IKE_CERT_CHAIN_POLICY_MISMATCH = 13887;
  @Deprecated('Use ERROR_IPSEC_IKE_UNEXPECTED_MESSAGE_ID instead')
  static const ERROR_IPSEC_IKE_UNEXPECTED_MESSAGE_ID = 13888;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_AUTH_PAYLOAD instead')
  static const ERROR_IPSEC_IKE_INVALID_AUTH_PAYLOAD = 13889;
  @Deprecated('Use ERROR_IPSEC_IKE_DOS_COOKIE_SENT instead')
  static const ERROR_IPSEC_IKE_DOS_COOKIE_SENT = 13890;
  @Deprecated('Use ERROR_IPSEC_IKE_SHUTTING_DOWN instead')
  static const ERROR_IPSEC_IKE_SHUTTING_DOWN = 13891;
  @Deprecated('Use ERROR_IPSEC_IKE_CGA_AUTH_FAILED instead')
  static const ERROR_IPSEC_IKE_CGA_AUTH_FAILED = 13892;
  @Deprecated('Use ERROR_IPSEC_IKE_PROCESS_ERR_NATOA instead')
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NATOA = 13893;
  @Deprecated('Use ERROR_IPSEC_IKE_INVALID_MM_FOR_QM instead')
  static const ERROR_IPSEC_IKE_INVALID_MM_FOR_QM = 13894;
  @Deprecated('Use ERROR_IPSEC_IKE_QM_EXPIRED instead')
  static const ERROR_IPSEC_IKE_QM_EXPIRED = 13895;
  @Deprecated('Use ERROR_IPSEC_IKE_TOO_MANY_FILTERS instead')
  static const ERROR_IPSEC_IKE_TOO_MANY_FILTERS = 13896;
  @Deprecated('Use ERROR_IPSEC_IKE_NEG_STATUS_END instead')
  static const ERROR_IPSEC_IKE_NEG_STATUS_END = 13897;
  @Deprecated('Use ERROR_IPSEC_IKE_KILL_DUMMY_NAP_TUNNEL instead')
  static const ERROR_IPSEC_IKE_KILL_DUMMY_NAP_TUNNEL = 13898;
  @Deprecated('Use ERROR_IPSEC_IKE_INNER_IP_ASSIGNMENT_FAILURE instead')
  static const ERROR_IPSEC_IKE_INNER_IP_ASSIGNMENT_FAILURE = 13899;
  @Deprecated('Use ERROR_IPSEC_IKE_REQUIRE_CP_PAYLOAD_MISSING instead')
  static const ERROR_IPSEC_IKE_REQUIRE_CP_PAYLOAD_MISSING = 13900;
  @Deprecated(
    'Use ERROR_IPSEC_KEY_MODULE_IMPERSONATION_NEGOTIATION_PENDING instead',
  )
  static const ERROR_IPSEC_KEY_MODULE_IMPERSONATION_NEGOTIATION_PENDING =
      WIN32_ERROR(13901);
  @Deprecated('Use ERROR_IPSEC_IKE_COEXISTENCE_SUPPRESS instead')
  static const ERROR_IPSEC_IKE_COEXISTENCE_SUPPRESS = 13902;
  @Deprecated('Use ERROR_IPSEC_IKE_RATELIMIT_DROP instead')
  static const ERROR_IPSEC_IKE_RATELIMIT_DROP = 13903;
  @Deprecated('Use ERROR_IPSEC_IKE_PEER_DOESNT_SUPPORT_MOBIKE instead')
  static const ERROR_IPSEC_IKE_PEER_DOESNT_SUPPORT_MOBIKE = 13904;
  @Deprecated('Use ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE instead')
  static const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE = 13905;
  @Deprecated('Use ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_FAILURE instead')
  static const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_FAILURE = WIN32_ERROR(
    13906,
  );
  @Deprecated(
    'Use ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE_WITH_OPTIONAL_RETRY instead',
  )
  static const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE_WITH_OPTIONAL_RETRY =
      WIN32_ERROR(13907);
  @Deprecated(
    'Use ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_AND_CERTMAP_FAILURE instead',
  )
  static const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_AND_CERTMAP_FAILURE =
      WIN32_ERROR(13908);
  @Deprecated('Use ERROR_IPSEC_IKE_NEG_STATUS_EXTENDED_END instead')
  static const ERROR_IPSEC_IKE_NEG_STATUS_EXTENDED_END = 13909;
  @Deprecated('Use ERROR_IPSEC_BAD_SPI instead')
  static const ERROR_IPSEC_BAD_SPI = 13910;
  @Deprecated('Use ERROR_IPSEC_SA_LIFETIME_EXPIRED instead')
  static const ERROR_IPSEC_SA_LIFETIME_EXPIRED = 13911;
  @Deprecated('Use ERROR_IPSEC_WRONG_SA instead')
  static const ERROR_IPSEC_WRONG_SA = 13912;
  @Deprecated('Use ERROR_IPSEC_REPLAY_CHECK_FAILED instead')
  static const ERROR_IPSEC_REPLAY_CHECK_FAILED = 13913;
  @Deprecated('Use ERROR_IPSEC_INVALID_PACKET instead')
  static const ERROR_IPSEC_INVALID_PACKET = 13914;
  @Deprecated('Use ERROR_IPSEC_INTEGRITY_CHECK_FAILED instead')
  static const ERROR_IPSEC_INTEGRITY_CHECK_FAILED = 13915;
  @Deprecated('Use ERROR_IPSEC_CLEAR_TEXT_DROP instead')
  static const ERROR_IPSEC_CLEAR_TEXT_DROP = 13916;
  @Deprecated('Use ERROR_IPSEC_AUTH_FIREWALL_DROP instead')
  static const ERROR_IPSEC_AUTH_FIREWALL_DROP = 13917;
  @Deprecated('Use ERROR_IPSEC_THROTTLE_DROP instead')
  static const ERROR_IPSEC_THROTTLE_DROP = 13918;
  @Deprecated('Use ERROR_IPSEC_DOSP_BLOCK instead')
  static const ERROR_IPSEC_DOSP_BLOCK = 13925;
  @Deprecated('Use ERROR_IPSEC_DOSP_RECEIVED_MULTICAST instead')
  static const ERROR_IPSEC_DOSP_RECEIVED_MULTICAST = 13926;
  @Deprecated('Use ERROR_IPSEC_DOSP_INVALID_PACKET instead')
  static const ERROR_IPSEC_DOSP_INVALID_PACKET = 13927;
  @Deprecated('Use ERROR_IPSEC_DOSP_STATE_LOOKUP_FAILED instead')
  static const ERROR_IPSEC_DOSP_STATE_LOOKUP_FAILED = 13928;
  @Deprecated('Use ERROR_IPSEC_DOSP_MAX_ENTRIES instead')
  static const ERROR_IPSEC_DOSP_MAX_ENTRIES = 13929;
  @Deprecated('Use ERROR_IPSEC_DOSP_KEYMOD_NOT_ALLOWED instead')
  static const ERROR_IPSEC_DOSP_KEYMOD_NOT_ALLOWED = 13930;
  @Deprecated('Use ERROR_IPSEC_DOSP_NOT_INSTALLED instead')
  static const ERROR_IPSEC_DOSP_NOT_INSTALLED = 13931;
  @Deprecated('Use ERROR_IPSEC_DOSP_MAX_PER_IP_RATELIMIT_QUEUES instead')
  static const ERROR_IPSEC_DOSP_MAX_PER_IP_RATELIMIT_QUEUES = WIN32_ERROR(
    13932,
  );
  @Deprecated('Use ERROR_SXS_SECTION_NOT_FOUND instead')
  static const ERROR_SXS_SECTION_NOT_FOUND = 14000;
  @Deprecated('Use ERROR_SXS_CANT_GEN_ACTCTX instead')
  static const ERROR_SXS_CANT_GEN_ACTCTX = 14001;
  @Deprecated('Use ERROR_SXS_INVALID_ACTCTXDATA_FORMAT instead')
  static const ERROR_SXS_INVALID_ACTCTXDATA_FORMAT = 14002;
  @Deprecated('Use ERROR_SXS_ASSEMBLY_NOT_FOUND instead')
  static const ERROR_SXS_ASSEMBLY_NOT_FOUND = 14003;
  @Deprecated('Use ERROR_SXS_MANIFEST_FORMAT_ERROR instead')
  static const ERROR_SXS_MANIFEST_FORMAT_ERROR = 14004;
  @Deprecated('Use ERROR_SXS_MANIFEST_PARSE_ERROR instead')
  static const ERROR_SXS_MANIFEST_PARSE_ERROR = 14005;
  @Deprecated('Use ERROR_SXS_ACTIVATION_CONTEXT_DISABLED instead')
  static const ERROR_SXS_ACTIVATION_CONTEXT_DISABLED = 14006;
  @Deprecated('Use ERROR_SXS_KEY_NOT_FOUND instead')
  static const ERROR_SXS_KEY_NOT_FOUND = 14007;
  @Deprecated('Use ERROR_SXS_VERSION_CONFLICT instead')
  static const ERROR_SXS_VERSION_CONFLICT = 14008;
  @Deprecated('Use ERROR_SXS_WRONG_SECTION_TYPE instead')
  static const ERROR_SXS_WRONG_SECTION_TYPE = 14009;
  @Deprecated('Use ERROR_SXS_THREAD_QUERIES_DISABLED instead')
  static const ERROR_SXS_THREAD_QUERIES_DISABLED = 14010;
  @Deprecated('Use ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET instead')
  static const ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET = 14011;
  @Deprecated('Use ERROR_SXS_UNKNOWN_ENCODING_GROUP instead')
  static const ERROR_SXS_UNKNOWN_ENCODING_GROUP = 14012;
  @Deprecated('Use ERROR_SXS_UNKNOWN_ENCODING instead')
  static const ERROR_SXS_UNKNOWN_ENCODING = 14013;
  @Deprecated('Use ERROR_SXS_INVALID_XML_NAMESPACE_URI instead')
  static const ERROR_SXS_INVALID_XML_NAMESPACE_URI = 14014;
  @Deprecated('Use ERROR_SXS_ROOT_MANIFEST_DEPENDENCY_NOT_INSTALLED instead')
  static const ERROR_SXS_ROOT_MANIFEST_DEPENDENCY_NOT_INSTALLED = WIN32_ERROR(
    14015,
  );
  @Deprecated('Use ERROR_SXS_LEAF_MANIFEST_DEPENDENCY_NOT_INSTALLED instead')
  static const ERROR_SXS_LEAF_MANIFEST_DEPENDENCY_NOT_INSTALLED = WIN32_ERROR(
    14016,
  );
  @Deprecated('Use ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE instead')
  static const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE = WIN32_ERROR(
    14017,
  );
  @Deprecated(
    'Use ERROR_SXS_MANIFEST_MISSING_REQUIRED_DEFAULT_NAMESPACE instead',
  )
  static const ERROR_SXS_MANIFEST_MISSING_REQUIRED_DEFAULT_NAMESPACE =
      WIN32_ERROR(14018);
  @Deprecated(
    'Use ERROR_SXS_MANIFEST_INVALID_REQUIRED_DEFAULT_NAMESPACE instead',
  )
  static const ERROR_SXS_MANIFEST_INVALID_REQUIRED_DEFAULT_NAMESPACE =
      WIN32_ERROR(14019);
  @Deprecated(
    'Use ERROR_SXS_PRIVATE_MANIFEST_CROSS_PATH_WITH_REPARSE_POINT instead',
  )
  static const ERROR_SXS_PRIVATE_MANIFEST_CROSS_PATH_WITH_REPARSE_POINT =
      WIN32_ERROR(14020);
  @Deprecated('Use ERROR_SXS_DUPLICATE_DLL_NAME instead')
  static const ERROR_SXS_DUPLICATE_DLL_NAME = 14021;
  @Deprecated('Use ERROR_SXS_DUPLICATE_WINDOWCLASS_NAME instead')
  static const ERROR_SXS_DUPLICATE_WINDOWCLASS_NAME = 14022;
  @Deprecated('Use ERROR_SXS_DUPLICATE_CLSID instead')
  static const ERROR_SXS_DUPLICATE_CLSID = 14023;
  @Deprecated('Use ERROR_SXS_DUPLICATE_IID instead')
  static const ERROR_SXS_DUPLICATE_IID = 14024;
  @Deprecated('Use ERROR_SXS_DUPLICATE_TLBID instead')
  static const ERROR_SXS_DUPLICATE_TLBID = 14025;
  @Deprecated('Use ERROR_SXS_DUPLICATE_PROGID instead')
  static const ERROR_SXS_DUPLICATE_PROGID = 14026;
  @Deprecated('Use ERROR_SXS_DUPLICATE_ASSEMBLY_NAME instead')
  static const ERROR_SXS_DUPLICATE_ASSEMBLY_NAME = 14027;
  @Deprecated('Use ERROR_SXS_FILE_HASH_MISMATCH instead')
  static const ERROR_SXS_FILE_HASH_MISMATCH = 14028;
  @Deprecated('Use ERROR_SXS_POLICY_PARSE_ERROR instead')
  static const ERROR_SXS_POLICY_PARSE_ERROR = 14029;
  @Deprecated('Use ERROR_SXS_XML_E_MISSINGQUOTE instead')
  static const ERROR_SXS_XML_E_MISSINGQUOTE = 14030;
  @Deprecated('Use ERROR_SXS_XML_E_COMMENTSYNTAX instead')
  static const ERROR_SXS_XML_E_COMMENTSYNTAX = 14031;
  @Deprecated('Use ERROR_SXS_XML_E_BADSTARTNAMECHAR instead')
  static const ERROR_SXS_XML_E_BADSTARTNAMECHAR = 14032;
  @Deprecated('Use ERROR_SXS_XML_E_BADNAMECHAR instead')
  static const ERROR_SXS_XML_E_BADNAMECHAR = 14033;
  @Deprecated('Use ERROR_SXS_XML_E_BADCHARINSTRING instead')
  static const ERROR_SXS_XML_E_BADCHARINSTRING = 14034;
  @Deprecated('Use ERROR_SXS_XML_E_XMLDECLSYNTAX instead')
  static const ERROR_SXS_XML_E_XMLDECLSYNTAX = 14035;
  @Deprecated('Use ERROR_SXS_XML_E_BADCHARDATA instead')
  static const ERROR_SXS_XML_E_BADCHARDATA = 14036;
  @Deprecated('Use ERROR_SXS_XML_E_MISSINGWHITESPACE instead')
  static const ERROR_SXS_XML_E_MISSINGWHITESPACE = 14037;
  @Deprecated('Use ERROR_SXS_XML_E_EXPECTINGTAGEND instead')
  static const ERROR_SXS_XML_E_EXPECTINGTAGEND = 14038;
  @Deprecated('Use ERROR_SXS_XML_E_MISSINGSEMICOLON instead')
  static const ERROR_SXS_XML_E_MISSINGSEMICOLON = 14039;
  @Deprecated('Use ERROR_SXS_XML_E_UNBALANCEDPAREN instead')
  static const ERROR_SXS_XML_E_UNBALANCEDPAREN = 14040;
  @Deprecated('Use ERROR_SXS_XML_E_INTERNALERROR instead')
  static const ERROR_SXS_XML_E_INTERNALERROR = 14041;
  @Deprecated('Use ERROR_SXS_XML_E_UNEXPECTED_WHITESPACE instead')
  static const ERROR_SXS_XML_E_UNEXPECTED_WHITESPACE = 14042;
  @Deprecated('Use ERROR_SXS_XML_E_INCOMPLETE_ENCODING instead')
  static const ERROR_SXS_XML_E_INCOMPLETE_ENCODING = 14043;
  @Deprecated('Use ERROR_SXS_XML_E_MISSING_PAREN instead')
  static const ERROR_SXS_XML_E_MISSING_PAREN = 14044;
  @Deprecated('Use ERROR_SXS_XML_E_EXPECTINGCLOSEQUOTE instead')
  static const ERROR_SXS_XML_E_EXPECTINGCLOSEQUOTE = 14045;
  @Deprecated('Use ERROR_SXS_XML_E_MULTIPLE_COLONS instead')
  static const ERROR_SXS_XML_E_MULTIPLE_COLONS = 14046;
  @Deprecated('Use ERROR_SXS_XML_E_INVALID_DECIMAL instead')
  static const ERROR_SXS_XML_E_INVALID_DECIMAL = 14047;
  @Deprecated('Use ERROR_SXS_XML_E_INVALID_HEXIDECIMAL instead')
  static const ERROR_SXS_XML_E_INVALID_HEXIDECIMAL = 14048;
  @Deprecated('Use ERROR_SXS_XML_E_INVALID_UNICODE instead')
  static const ERROR_SXS_XML_E_INVALID_UNICODE = 14049;
  @Deprecated('Use ERROR_SXS_XML_E_WHITESPACEORQUESTIONMARK instead')
  static const ERROR_SXS_XML_E_WHITESPACEORQUESTIONMARK = 14050;
  @Deprecated('Use ERROR_SXS_XML_E_UNEXPECTEDENDTAG instead')
  static const ERROR_SXS_XML_E_UNEXPECTEDENDTAG = 14051;
  @Deprecated('Use ERROR_SXS_XML_E_UNCLOSEDTAG instead')
  static const ERROR_SXS_XML_E_UNCLOSEDTAG = 14052;
  @Deprecated('Use ERROR_SXS_XML_E_DUPLICATEATTRIBUTE instead')
  static const ERROR_SXS_XML_E_DUPLICATEATTRIBUTE = 14053;
  @Deprecated('Use ERROR_SXS_XML_E_MULTIPLEROOTS instead')
  static const ERROR_SXS_XML_E_MULTIPLEROOTS = 14054;
  @Deprecated('Use ERROR_SXS_XML_E_INVALIDATROOTLEVEL instead')
  static const ERROR_SXS_XML_E_INVALIDATROOTLEVEL = 14055;
  @Deprecated('Use ERROR_SXS_XML_E_BADXMLDECL instead')
  static const ERROR_SXS_XML_E_BADXMLDECL = 14056;
  @Deprecated('Use ERROR_SXS_XML_E_MISSINGROOT instead')
  static const ERROR_SXS_XML_E_MISSINGROOT = 14057;
  @Deprecated('Use ERROR_SXS_XML_E_UNEXPECTEDEOF instead')
  static const ERROR_SXS_XML_E_UNEXPECTEDEOF = 14058;
  @Deprecated('Use ERROR_SXS_XML_E_BADPEREFINSUBSET instead')
  static const ERROR_SXS_XML_E_BADPEREFINSUBSET = 14059;
  @Deprecated('Use ERROR_SXS_XML_E_UNCLOSEDSTARTTAG instead')
  static const ERROR_SXS_XML_E_UNCLOSEDSTARTTAG = 14060;
  @Deprecated('Use ERROR_SXS_XML_E_UNCLOSEDENDTAG instead')
  static const ERROR_SXS_XML_E_UNCLOSEDENDTAG = 14061;
  @Deprecated('Use ERROR_SXS_XML_E_UNCLOSEDSTRING instead')
  static const ERROR_SXS_XML_E_UNCLOSEDSTRING = 14062;
  @Deprecated('Use ERROR_SXS_XML_E_UNCLOSEDCOMMENT instead')
  static const ERROR_SXS_XML_E_UNCLOSEDCOMMENT = 14063;
  @Deprecated('Use ERROR_SXS_XML_E_UNCLOSEDDECL instead')
  static const ERROR_SXS_XML_E_UNCLOSEDDECL = 14064;
  @Deprecated('Use ERROR_SXS_XML_E_UNCLOSEDCDATA instead')
  static const ERROR_SXS_XML_E_UNCLOSEDCDATA = 14065;
  @Deprecated('Use ERROR_SXS_XML_E_RESERVEDNAMESPACE instead')
  static const ERROR_SXS_XML_E_RESERVEDNAMESPACE = 14066;
  @Deprecated('Use ERROR_SXS_XML_E_INVALIDENCODING instead')
  static const ERROR_SXS_XML_E_INVALIDENCODING = 14067;
  @Deprecated('Use ERROR_SXS_XML_E_INVALIDSWITCH instead')
  static const ERROR_SXS_XML_E_INVALIDSWITCH = 14068;
  @Deprecated('Use ERROR_SXS_XML_E_BADXMLCASE instead')
  static const ERROR_SXS_XML_E_BADXMLCASE = 14069;
  @Deprecated('Use ERROR_SXS_XML_E_INVALID_STANDALONE instead')
  static const ERROR_SXS_XML_E_INVALID_STANDALONE = 14070;
  @Deprecated('Use ERROR_SXS_XML_E_UNEXPECTED_STANDALONE instead')
  static const ERROR_SXS_XML_E_UNEXPECTED_STANDALONE = 14071;
  @Deprecated('Use ERROR_SXS_XML_E_INVALID_VERSION instead')
  static const ERROR_SXS_XML_E_INVALID_VERSION = 14072;
  @Deprecated('Use ERROR_SXS_XML_E_MISSINGEQUALS instead')
  static const ERROR_SXS_XML_E_MISSINGEQUALS = 14073;
  @Deprecated('Use ERROR_SXS_PROTECTION_RECOVERY_FAILED instead')
  static const ERROR_SXS_PROTECTION_RECOVERY_FAILED = 14074;
  @Deprecated('Use ERROR_SXS_PROTECTION_PUBLIC_KEY_TOO_SHORT instead')
  static const ERROR_SXS_PROTECTION_PUBLIC_KEY_TOO_SHORT = 14075;
  @Deprecated('Use ERROR_SXS_PROTECTION_CATALOG_NOT_VALID instead')
  static const ERROR_SXS_PROTECTION_CATALOG_NOT_VALID = 14076;
  @Deprecated('Use ERROR_SXS_UNTRANSLATABLE_HRESULT instead')
  static const ERROR_SXS_UNTRANSLATABLE_HRESULT = 14077;
  @Deprecated('Use ERROR_SXS_PROTECTION_CATALOG_FILE_MISSING instead')
  static const ERROR_SXS_PROTECTION_CATALOG_FILE_MISSING = 14078;
  @Deprecated('Use ERROR_SXS_MISSING_ASSEMBLY_IDENTITY_ATTRIBUTE instead')
  static const ERROR_SXS_MISSING_ASSEMBLY_IDENTITY_ATTRIBUTE = WIN32_ERROR(
    14079,
  );
  @Deprecated('Use ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME instead')
  static const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME = WIN32_ERROR(
    14080,
  );
  @Deprecated('Use ERROR_SXS_ASSEMBLY_MISSING instead')
  static const ERROR_SXS_ASSEMBLY_MISSING = 14081;
  @Deprecated('Use ERROR_SXS_CORRUPT_ACTIVATION_STACK instead')
  static const ERROR_SXS_CORRUPT_ACTIVATION_STACK = 14082;
  @Deprecated('Use ERROR_SXS_CORRUPTION instead')
  static const ERROR_SXS_CORRUPTION = 14083;
  @Deprecated('Use ERROR_SXS_EARLY_DEACTIVATION instead')
  static const ERROR_SXS_EARLY_DEACTIVATION = 14084;
  @Deprecated('Use ERROR_SXS_INVALID_DEACTIVATION instead')
  static const ERROR_SXS_INVALID_DEACTIVATION = 14085;
  @Deprecated('Use ERROR_SXS_MULTIPLE_DEACTIVATION instead')
  static const ERROR_SXS_MULTIPLE_DEACTIVATION = 14086;
  @Deprecated('Use ERROR_SXS_PROCESS_TERMINATION_REQUESTED instead')
  static const ERROR_SXS_PROCESS_TERMINATION_REQUESTED = 14087;
  @Deprecated('Use ERROR_SXS_RELEASE_ACTIVATION_CONTEXT instead')
  static const ERROR_SXS_RELEASE_ACTIVATION_CONTEXT = 14088;
  @Deprecated('Use ERROR_SXS_SYSTEM_DEFAULT_ACTIVATION_CONTEXT_EMPTY instead')
  static const ERROR_SXS_SYSTEM_DEFAULT_ACTIVATION_CONTEXT_EMPTY = WIN32_ERROR(
    14089,
  );
  @Deprecated('Use ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_VALUE instead')
  static const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_VALUE = 14090;
  @Deprecated('Use ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_NAME instead')
  static const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_NAME = 14091;
  @Deprecated('Use ERROR_SXS_IDENTITY_DUPLICATE_ATTRIBUTE instead')
  static const ERROR_SXS_IDENTITY_DUPLICATE_ATTRIBUTE = 14092;
  @Deprecated('Use ERROR_SXS_IDENTITY_PARSE_ERROR instead')
  static const ERROR_SXS_IDENTITY_PARSE_ERROR = 14093;
  @Deprecated('Use ERROR_MALFORMED_SUBSTITUTION_STRING instead')
  static const ERROR_MALFORMED_SUBSTITUTION_STRING = 14094;
  @Deprecated('Use ERROR_SXS_INCORRECT_PUBLIC_KEY_TOKEN instead')
  static const ERROR_SXS_INCORRECT_PUBLIC_KEY_TOKEN = 14095;
  @Deprecated('Use ERROR_UNMAPPED_SUBSTITUTION_STRING instead')
  static const ERROR_UNMAPPED_SUBSTITUTION_STRING = 14096;
  @Deprecated('Use ERROR_SXS_ASSEMBLY_NOT_LOCKED instead')
  static const ERROR_SXS_ASSEMBLY_NOT_LOCKED = 14097;
  @Deprecated('Use ERROR_SXS_COMPONENT_STORE_CORRUPT instead')
  static const ERROR_SXS_COMPONENT_STORE_CORRUPT = 14098;
  @Deprecated('Use ERROR_ADVANCED_INSTALLER_FAILED instead')
  static const ERROR_ADVANCED_INSTALLER_FAILED = 14099;
  @Deprecated('Use ERROR_XML_ENCODING_MISMATCH instead')
  static const ERROR_XML_ENCODING_MISMATCH = 14100;
  @Deprecated(
    'Use ERROR_SXS_MANIFEST_IDENTITY_SAME_BUT_CONTENTS_DIFFERENT instead',
  )
  static const ERROR_SXS_MANIFEST_IDENTITY_SAME_BUT_CONTENTS_DIFFERENT =
      WIN32_ERROR(14101);
  @Deprecated('Use ERROR_SXS_IDENTITIES_DIFFERENT instead')
  static const ERROR_SXS_IDENTITIES_DIFFERENT = 14102;
  @Deprecated('Use ERROR_SXS_ASSEMBLY_IS_NOT_A_DEPLOYMENT instead')
  static const ERROR_SXS_ASSEMBLY_IS_NOT_A_DEPLOYMENT = 14103;
  @Deprecated('Use ERROR_SXS_FILE_NOT_PART_OF_ASSEMBLY instead')
  static const ERROR_SXS_FILE_NOT_PART_OF_ASSEMBLY = 14104;
  @Deprecated('Use ERROR_SXS_MANIFEST_TOO_BIG instead')
  static const ERROR_SXS_MANIFEST_TOO_BIG = 14105;
  @Deprecated('Use ERROR_SXS_SETTING_NOT_REGISTERED instead')
  static const ERROR_SXS_SETTING_NOT_REGISTERED = 14106;
  @Deprecated('Use ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE instead')
  static const ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE = 14107;
  @Deprecated('Use ERROR_SMI_PRIMITIVE_INSTALLER_FAILED instead')
  static const ERROR_SMI_PRIMITIVE_INSTALLER_FAILED = 14108;
  @Deprecated('Use ERROR_GENERIC_COMMAND_FAILED instead')
  static const ERROR_GENERIC_COMMAND_FAILED = 14109;
  @Deprecated('Use ERROR_SXS_FILE_HASH_MISSING instead')
  static const ERROR_SXS_FILE_HASH_MISSING = 14110;
  @Deprecated('Use ERROR_SXS_DUPLICATE_ACTIVATABLE_CLASS instead')
  static const ERROR_SXS_DUPLICATE_ACTIVATABLE_CLASS = 14111;
  @Deprecated('Use ERROR_EVT_INVALID_CHANNEL_PATH instead')
  static const ERROR_EVT_INVALID_CHANNEL_PATH = 15000;
  @Deprecated('Use ERROR_EVT_INVALID_QUERY instead')
  static const ERROR_EVT_INVALID_QUERY = 15001;
  @Deprecated('Use ERROR_EVT_PUBLISHER_METADATA_NOT_FOUND instead')
  static const ERROR_EVT_PUBLISHER_METADATA_NOT_FOUND = 15002;
  @Deprecated('Use ERROR_EVT_EVENT_TEMPLATE_NOT_FOUND instead')
  static const ERROR_EVT_EVENT_TEMPLATE_NOT_FOUND = 15003;
  @Deprecated('Use ERROR_EVT_INVALID_PUBLISHER_NAME instead')
  static const ERROR_EVT_INVALID_PUBLISHER_NAME = 15004;
  @Deprecated('Use ERROR_EVT_INVALID_EVENT_DATA instead')
  static const ERROR_EVT_INVALID_EVENT_DATA = 15005;
  @Deprecated('Use ERROR_EVT_CHANNEL_NOT_FOUND instead')
  static const ERROR_EVT_CHANNEL_NOT_FOUND = 15007;
  @Deprecated('Use ERROR_EVT_MALFORMED_XML_TEXT instead')
  static const ERROR_EVT_MALFORMED_XML_TEXT = 15008;
  @Deprecated('Use ERROR_EVT_SUBSCRIPTION_TO_DIRECT_CHANNEL instead')
  static const ERROR_EVT_SUBSCRIPTION_TO_DIRECT_CHANNEL = 15009;
  @Deprecated('Use ERROR_EVT_CONFIGURATION_ERROR instead')
  static const ERROR_EVT_CONFIGURATION_ERROR = 15010;
  @Deprecated('Use ERROR_EVT_QUERY_RESULT_STALE instead')
  static const ERROR_EVT_QUERY_RESULT_STALE = 15011;
  @Deprecated('Use ERROR_EVT_QUERY_RESULT_INVALID_POSITION instead')
  static const ERROR_EVT_QUERY_RESULT_INVALID_POSITION = 15012;
  @Deprecated('Use ERROR_EVT_NON_VALIDATING_MSXML instead')
  static const ERROR_EVT_NON_VALIDATING_MSXML = 15013;
  @Deprecated('Use ERROR_EVT_FILTER_ALREADYSCOPED instead')
  static const ERROR_EVT_FILTER_ALREADYSCOPED = 15014;
  @Deprecated('Use ERROR_EVT_FILTER_NOTELTSET instead')
  static const ERROR_EVT_FILTER_NOTELTSET = 15015;
  @Deprecated('Use ERROR_EVT_FILTER_INVARG instead')
  static const ERROR_EVT_FILTER_INVARG = 15016;
  @Deprecated('Use ERROR_EVT_FILTER_INVTEST instead')
  static const ERROR_EVT_FILTER_INVTEST = 15017;
  @Deprecated('Use ERROR_EVT_FILTER_INVTYPE instead')
  static const ERROR_EVT_FILTER_INVTYPE = 15018;
  @Deprecated('Use ERROR_EVT_FILTER_PARSEERR instead')
  static const ERROR_EVT_FILTER_PARSEERR = 15019;
  @Deprecated('Use ERROR_EVT_FILTER_UNSUPPORTEDOP instead')
  static const ERROR_EVT_FILTER_UNSUPPORTEDOP = 15020;
  @Deprecated('Use ERROR_EVT_FILTER_UNEXPECTEDTOKEN instead')
  static const ERROR_EVT_FILTER_UNEXPECTEDTOKEN = 15021;
  @Deprecated(
    'Use ERROR_EVT_INVALID_OPERATION_OVER_ENABLED_DIRECT_CHANNEL instead',
  )
  static const ERROR_EVT_INVALID_OPERATION_OVER_ENABLED_DIRECT_CHANNEL =
      WIN32_ERROR(15022);
  @Deprecated('Use ERROR_EVT_INVALID_CHANNEL_PROPERTY_VALUE instead')
  static const ERROR_EVT_INVALID_CHANNEL_PROPERTY_VALUE = 15023;
  @Deprecated('Use ERROR_EVT_INVALID_PUBLISHER_PROPERTY_VALUE instead')
  static const ERROR_EVT_INVALID_PUBLISHER_PROPERTY_VALUE = 15024;
  @Deprecated('Use ERROR_EVT_CHANNEL_CANNOT_ACTIVATE instead')
  static const ERROR_EVT_CHANNEL_CANNOT_ACTIVATE = 15025;
  @Deprecated('Use ERROR_EVT_FILTER_TOO_COMPLEX instead')
  static const ERROR_EVT_FILTER_TOO_COMPLEX = 15026;
  @Deprecated('Use ERROR_EVT_MESSAGE_NOT_FOUND instead')
  static const ERROR_EVT_MESSAGE_NOT_FOUND = 15027;
  @Deprecated('Use ERROR_EVT_MESSAGE_ID_NOT_FOUND instead')
  static const ERROR_EVT_MESSAGE_ID_NOT_FOUND = 15028;
  @Deprecated('Use ERROR_EVT_UNRESOLVED_VALUE_INSERT instead')
  static const ERROR_EVT_UNRESOLVED_VALUE_INSERT = 15029;
  @Deprecated('Use ERROR_EVT_UNRESOLVED_PARAMETER_INSERT instead')
  static const ERROR_EVT_UNRESOLVED_PARAMETER_INSERT = 15030;
  @Deprecated('Use ERROR_EVT_MAX_INSERTS_REACHED instead')
  static const ERROR_EVT_MAX_INSERTS_REACHED = 15031;
  @Deprecated('Use ERROR_EVT_EVENT_DEFINITION_NOT_FOUND instead')
  static const ERROR_EVT_EVENT_DEFINITION_NOT_FOUND = 15032;
  @Deprecated('Use ERROR_EVT_MESSAGE_LOCALE_NOT_FOUND instead')
  static const ERROR_EVT_MESSAGE_LOCALE_NOT_FOUND = 15033;
  @Deprecated('Use ERROR_EVT_VERSION_TOO_OLD instead')
  static const ERROR_EVT_VERSION_TOO_OLD = 15034;
  @Deprecated('Use ERROR_EVT_VERSION_TOO_NEW instead')
  static const ERROR_EVT_VERSION_TOO_NEW = 15035;
  @Deprecated('Use ERROR_EVT_CANNOT_OPEN_CHANNEL_OF_QUERY instead')
  static const ERROR_EVT_CANNOT_OPEN_CHANNEL_OF_QUERY = 15036;
  @Deprecated('Use ERROR_EVT_PUBLISHER_DISABLED instead')
  static const ERROR_EVT_PUBLISHER_DISABLED = 15037;
  @Deprecated('Use ERROR_EVT_FILTER_OUT_OF_RANGE instead')
  static const ERROR_EVT_FILTER_OUT_OF_RANGE = 15038;
  @Deprecated('Use ERROR_EC_SUBSCRIPTION_CANNOT_ACTIVATE instead')
  static const ERROR_EC_SUBSCRIPTION_CANNOT_ACTIVATE = 15080;
  @Deprecated('Use ERROR_EC_LOG_DISABLED instead')
  static const ERROR_EC_LOG_DISABLED = 15081;
  @Deprecated('Use ERROR_EC_CIRCULAR_FORWARDING instead')
  static const ERROR_EC_CIRCULAR_FORWARDING = 15082;
  @Deprecated('Use ERROR_EC_CREDSTORE_FULL instead')
  static const ERROR_EC_CREDSTORE_FULL = 15083;
  @Deprecated('Use ERROR_EC_CRED_NOT_FOUND instead')
  static const ERROR_EC_CRED_NOT_FOUND = 15084;
  @Deprecated('Use ERROR_EC_NO_ACTIVE_CHANNEL instead')
  static const ERROR_EC_NO_ACTIVE_CHANNEL = 15085;
  @Deprecated('Use ERROR_MUI_FILE_NOT_FOUND instead')
  static const ERROR_MUI_FILE_NOT_FOUND = 15100;
  @Deprecated('Use ERROR_MUI_INVALID_FILE instead')
  static const ERROR_MUI_INVALID_FILE = 15101;
  @Deprecated('Use ERROR_MUI_INVALID_RC_CONFIG instead')
  static const ERROR_MUI_INVALID_RC_CONFIG = 15102;
  @Deprecated('Use ERROR_MUI_INVALID_LOCALE_NAME instead')
  static const ERROR_MUI_INVALID_LOCALE_NAME = 15103;
  @Deprecated('Use ERROR_MUI_INVALID_ULTIMATEFALLBACK_NAME instead')
  static const ERROR_MUI_INVALID_ULTIMATEFALLBACK_NAME = 15104;
  @Deprecated('Use ERROR_MUI_FILE_NOT_LOADED instead')
  static const ERROR_MUI_FILE_NOT_LOADED = 15105;
  @Deprecated('Use ERROR_RESOURCE_ENUM_USER_STOP instead')
  static const ERROR_RESOURCE_ENUM_USER_STOP = 15106;
  @Deprecated('Use ERROR_MUI_INTLSETTINGS_UILANG_NOT_INSTALLED instead')
  static const ERROR_MUI_INTLSETTINGS_UILANG_NOT_INSTALLED = 15107;
  @Deprecated('Use ERROR_MUI_INTLSETTINGS_INVALID_LOCALE_NAME instead')
  static const ERROR_MUI_INTLSETTINGS_INVALID_LOCALE_NAME = 15108;
  @Deprecated('Use ERROR_MRM_RUNTIME_NO_DEFAULT_OR_NEUTRAL_RESOURCE instead')
  static const ERROR_MRM_RUNTIME_NO_DEFAULT_OR_NEUTRAL_RESOURCE = WIN32_ERROR(
    15110,
  );
  @Deprecated('Use ERROR_MRM_INVALID_PRICONFIG instead')
  static const ERROR_MRM_INVALID_PRICONFIG = 15111;
  @Deprecated('Use ERROR_MRM_INVALID_FILE_TYPE instead')
  static const ERROR_MRM_INVALID_FILE_TYPE = 15112;
  @Deprecated('Use ERROR_MRM_UNKNOWN_QUALIFIER instead')
  static const ERROR_MRM_UNKNOWN_QUALIFIER = 15113;
  @Deprecated('Use ERROR_MRM_INVALID_QUALIFIER_VALUE instead')
  static const ERROR_MRM_INVALID_QUALIFIER_VALUE = 15114;
  @Deprecated('Use ERROR_MRM_NO_CANDIDATE instead')
  static const ERROR_MRM_NO_CANDIDATE = 15115;
  @Deprecated('Use ERROR_MRM_NO_MATCH_OR_DEFAULT_CANDIDATE instead')
  static const ERROR_MRM_NO_MATCH_OR_DEFAULT_CANDIDATE = 15116;
  @Deprecated('Use ERROR_MRM_RESOURCE_TYPE_MISMATCH instead')
  static const ERROR_MRM_RESOURCE_TYPE_MISMATCH = 15117;
  @Deprecated('Use ERROR_MRM_DUPLICATE_MAP_NAME instead')
  static const ERROR_MRM_DUPLICATE_MAP_NAME = 15118;
  @Deprecated('Use ERROR_MRM_DUPLICATE_ENTRY instead')
  static const ERROR_MRM_DUPLICATE_ENTRY = 15119;
  @Deprecated('Use ERROR_MRM_INVALID_RESOURCE_IDENTIFIER instead')
  static const ERROR_MRM_INVALID_RESOURCE_IDENTIFIER = 15120;
  @Deprecated('Use ERROR_MRM_FILEPATH_TOO_LONG instead')
  static const ERROR_MRM_FILEPATH_TOO_LONG = 15121;
  @Deprecated('Use ERROR_MRM_UNSUPPORTED_DIRECTORY_TYPE instead')
  static const ERROR_MRM_UNSUPPORTED_DIRECTORY_TYPE = 15122;
  @Deprecated('Use ERROR_MRM_INVALID_PRI_FILE instead')
  static const ERROR_MRM_INVALID_PRI_FILE = 15126;
  @Deprecated('Use ERROR_MRM_NAMED_RESOURCE_NOT_FOUND instead')
  static const ERROR_MRM_NAMED_RESOURCE_NOT_FOUND = 15127;
  @Deprecated('Use ERROR_MRM_MAP_NOT_FOUND instead')
  static const ERROR_MRM_MAP_NOT_FOUND = 15135;
  @Deprecated('Use ERROR_MRM_UNSUPPORTED_PROFILE_TYPE instead')
  static const ERROR_MRM_UNSUPPORTED_PROFILE_TYPE = 15136;
  @Deprecated('Use ERROR_MRM_INVALID_QUALIFIER_OPERATOR instead')
  static const ERROR_MRM_INVALID_QUALIFIER_OPERATOR = 15137;
  @Deprecated('Use ERROR_MRM_INDETERMINATE_QUALIFIER_VALUE instead')
  static const ERROR_MRM_INDETERMINATE_QUALIFIER_VALUE = 15138;
  @Deprecated('Use ERROR_MRM_AUTOMERGE_ENABLED instead')
  static const ERROR_MRM_AUTOMERGE_ENABLED = 15139;
  @Deprecated('Use ERROR_MRM_TOO_MANY_RESOURCES instead')
  static const ERROR_MRM_TOO_MANY_RESOURCES = 15140;
  @Deprecated('Use ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_MERGE instead')
  static const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_MERGE = 15141;
  @Deprecated(
    'Use ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_LOAD_UNLOAD_PRI_FILE instead',
  )
  static const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_LOAD_UNLOAD_PRI_FILE =
      WIN32_ERROR(15142);
  @Deprecated('Use ERROR_MRM_NO_CURRENT_VIEW_ON_THREAD instead')
  static const ERROR_MRM_NO_CURRENT_VIEW_ON_THREAD = 15143;
  @Deprecated('Use ERROR_DIFFERENT_PROFILE_RESOURCE_MANAGER_EXIST instead')
  static const ERROR_DIFFERENT_PROFILE_RESOURCE_MANAGER_EXIST = WIN32_ERROR(
    15144,
  );
  @Deprecated('Use ERROR_OPERATION_NOT_ALLOWED_FROM_SYSTEM_COMPONENT instead')
  static const ERROR_OPERATION_NOT_ALLOWED_FROM_SYSTEM_COMPONENT = WIN32_ERROR(
    15145,
  );
  @Deprecated('Use ERROR_MRM_DIRECT_REF_TO_NON_DEFAULT_RESOURCE instead')
  static const ERROR_MRM_DIRECT_REF_TO_NON_DEFAULT_RESOURCE = WIN32_ERROR(
    15146,
  );
  @Deprecated('Use ERROR_MRM_GENERATION_COUNT_MISMATCH instead')
  static const ERROR_MRM_GENERATION_COUNT_MISMATCH = 15147;
  @Deprecated('Use ERROR_PRI_MERGE_VERSION_MISMATCH instead')
  static const ERROR_PRI_MERGE_VERSION_MISMATCH = 15148;
  @Deprecated('Use ERROR_PRI_MERGE_MISSING_SCHEMA instead')
  static const ERROR_PRI_MERGE_MISSING_SCHEMA = 15149;
  @Deprecated('Use ERROR_PRI_MERGE_LOAD_FILE_FAILED instead')
  static const ERROR_PRI_MERGE_LOAD_FILE_FAILED = 15150;
  @Deprecated('Use ERROR_PRI_MERGE_ADD_FILE_FAILED instead')
  static const ERROR_PRI_MERGE_ADD_FILE_FAILED = 15151;
  @Deprecated('Use ERROR_PRI_MERGE_WRITE_FILE_FAILED instead')
  static const ERROR_PRI_MERGE_WRITE_FILE_FAILED = 15152;
  @Deprecated(
    'Use ERROR_PRI_MERGE_MULTIPLE_PACKAGE_FAMILIES_NOT_ALLOWED instead',
  )
  static const ERROR_PRI_MERGE_MULTIPLE_PACKAGE_FAMILIES_NOT_ALLOWED =
      WIN32_ERROR(15153);
  @Deprecated('Use ERROR_PRI_MERGE_MULTIPLE_MAIN_PACKAGES_NOT_ALLOWED instead')
  static const ERROR_PRI_MERGE_MULTIPLE_MAIN_PACKAGES_NOT_ALLOWED = WIN32_ERROR(
    15154,
  );
  @Deprecated('Use ERROR_PRI_MERGE_BUNDLE_PACKAGES_NOT_ALLOWED instead')
  static const ERROR_PRI_MERGE_BUNDLE_PACKAGES_NOT_ALLOWED = 15155;
  @Deprecated('Use ERROR_PRI_MERGE_MAIN_PACKAGE_REQUIRED instead')
  static const ERROR_PRI_MERGE_MAIN_PACKAGE_REQUIRED = 15156;
  @Deprecated('Use ERROR_PRI_MERGE_RESOURCE_PACKAGE_REQUIRED instead')
  static const ERROR_PRI_MERGE_RESOURCE_PACKAGE_REQUIRED = 15157;
  @Deprecated('Use ERROR_PRI_MERGE_INVALID_FILE_NAME instead')
  static const ERROR_PRI_MERGE_INVALID_FILE_NAME = 15158;
  @Deprecated('Use ERROR_MRM_PACKAGE_NOT_FOUND instead')
  static const ERROR_MRM_PACKAGE_NOT_FOUND = 15159;
  @Deprecated('Use ERROR_MRM_MISSING_DEFAULT_LANGUAGE instead')
  static const ERROR_MRM_MISSING_DEFAULT_LANGUAGE = 15160;
  @Deprecated('Use ERROR_MRM_SCOPE_ITEM_CONFLICT instead')
  static const ERROR_MRM_SCOPE_ITEM_CONFLICT = 15161;
  @Deprecated('Use ERROR_MCA_INVALID_CAPABILITIES_STRING instead')
  static const ERROR_MCA_INVALID_CAPABILITIES_STRING = 15200;
  @Deprecated('Use ERROR_MCA_INVALID_VCP_VERSION instead')
  static const ERROR_MCA_INVALID_VCP_VERSION = 15201;
  @Deprecated('Use ERROR_MCA_MONITOR_VIOLATES_MCCS_SPECIFICATION instead')
  static const ERROR_MCA_MONITOR_VIOLATES_MCCS_SPECIFICATION = WIN32_ERROR(
    15202,
  );
  @Deprecated('Use ERROR_MCA_MCCS_VERSION_MISMATCH instead')
  static const ERROR_MCA_MCCS_VERSION_MISMATCH = 15203;
  @Deprecated('Use ERROR_MCA_UNSUPPORTED_MCCS_VERSION instead')
  static const ERROR_MCA_UNSUPPORTED_MCCS_VERSION = 15204;
  @Deprecated('Use ERROR_MCA_INTERNAL_ERROR instead')
  static const ERROR_MCA_INTERNAL_ERROR = 15205;
  @Deprecated('Use ERROR_MCA_INVALID_TECHNOLOGY_TYPE_RETURNED instead')
  static const ERROR_MCA_INVALID_TECHNOLOGY_TYPE_RETURNED = 15206;
  @Deprecated('Use ERROR_MCA_UNSUPPORTED_COLOR_TEMPERATURE instead')
  static const ERROR_MCA_UNSUPPORTED_COLOR_TEMPERATURE = 15207;
  @Deprecated('Use ERROR_AMBIGUOUS_SYSTEM_DEVICE instead')
  static const ERROR_AMBIGUOUS_SYSTEM_DEVICE = 15250;
  @Deprecated('Use ERROR_SYSTEM_DEVICE_NOT_FOUND instead')
  static const ERROR_SYSTEM_DEVICE_NOT_FOUND = 15299;
  @Deprecated('Use ERROR_HASH_NOT_SUPPORTED instead')
  static const ERROR_HASH_NOT_SUPPORTED = 15300;
  @Deprecated('Use ERROR_HASH_NOT_PRESENT instead')
  static const ERROR_HASH_NOT_PRESENT = 15301;
  @Deprecated('Use ERROR_SECONDARY_IC_PROVIDER_NOT_REGISTERED instead')
  static const ERROR_SECONDARY_IC_PROVIDER_NOT_REGISTERED = 15321;
  @Deprecated('Use ERROR_GPIO_CLIENT_INFORMATION_INVALID instead')
  static const ERROR_GPIO_CLIENT_INFORMATION_INVALID = 15322;
  @Deprecated('Use ERROR_GPIO_VERSION_NOT_SUPPORTED instead')
  static const ERROR_GPIO_VERSION_NOT_SUPPORTED = 15323;
  @Deprecated('Use ERROR_GPIO_INVALID_REGISTRATION_PACKET instead')
  static const ERROR_GPIO_INVALID_REGISTRATION_PACKET = 15324;
  @Deprecated('Use ERROR_GPIO_OPERATION_DENIED instead')
  static const ERROR_GPIO_OPERATION_DENIED = 15325;
  @Deprecated('Use ERROR_GPIO_INCOMPATIBLE_CONNECT_MODE instead')
  static const ERROR_GPIO_INCOMPATIBLE_CONNECT_MODE = 15326;
  @Deprecated('Use ERROR_GPIO_INTERRUPT_ALREADY_UNMASKED instead')
  static const ERROR_GPIO_INTERRUPT_ALREADY_UNMASKED = 15327;
  @Deprecated('Use ERROR_CANNOT_SWITCH_RUNLEVEL instead')
  static const ERROR_CANNOT_SWITCH_RUNLEVEL = 15400;
  @Deprecated('Use ERROR_INVALID_RUNLEVEL_SETTING instead')
  static const ERROR_INVALID_RUNLEVEL_SETTING = 15401;
  @Deprecated('Use ERROR_RUNLEVEL_SWITCH_TIMEOUT instead')
  static const ERROR_RUNLEVEL_SWITCH_TIMEOUT = 15402;
  @Deprecated('Use ERROR_RUNLEVEL_SWITCH_AGENT_TIMEOUT instead')
  static const ERROR_RUNLEVEL_SWITCH_AGENT_TIMEOUT = 15403;
  @Deprecated('Use ERROR_RUNLEVEL_SWITCH_IN_PROGRESS instead')
  static const ERROR_RUNLEVEL_SWITCH_IN_PROGRESS = 15404;
  @Deprecated('Use ERROR_SERVICES_FAILED_AUTOSTART instead')
  static const ERROR_SERVICES_FAILED_AUTOSTART = 15405;
  @Deprecated('Use ERROR_COM_TASK_STOP_PENDING instead')
  static const ERROR_COM_TASK_STOP_PENDING = 15501;
  @Deprecated('Use ERROR_INSTALL_OPEN_PACKAGE_FAILED instead')
  static const ERROR_INSTALL_OPEN_PACKAGE_FAILED = 15600;
  @Deprecated('Use ERROR_INSTALL_PACKAGE_NOT_FOUND instead')
  static const ERROR_INSTALL_PACKAGE_NOT_FOUND = 15601;
  @Deprecated('Use ERROR_INSTALL_INVALID_PACKAGE instead')
  static const ERROR_INSTALL_INVALID_PACKAGE = 15602;
  @Deprecated('Use ERROR_INSTALL_RESOLVE_DEPENDENCY_FAILED instead')
  static const ERROR_INSTALL_RESOLVE_DEPENDENCY_FAILED = 15603;
  @Deprecated('Use ERROR_INSTALL_OUT_OF_DISK_SPACE instead')
  static const ERROR_INSTALL_OUT_OF_DISK_SPACE = 15604;
  @Deprecated('Use ERROR_INSTALL_NETWORK_FAILURE instead')
  static const ERROR_INSTALL_NETWORK_FAILURE = 15605;
  @Deprecated('Use ERROR_INSTALL_REGISTRATION_FAILURE instead')
  static const ERROR_INSTALL_REGISTRATION_FAILURE = 15606;
  @Deprecated('Use ERROR_INSTALL_DEREGISTRATION_FAILURE instead')
  static const ERROR_INSTALL_DEREGISTRATION_FAILURE = 15607;
  @Deprecated('Use ERROR_INSTALL_CANCEL instead')
  static const ERROR_INSTALL_CANCEL = 15608;
  @Deprecated('Use ERROR_INSTALL_FAILED instead')
  static const ERROR_INSTALL_FAILED = 15609;
  @Deprecated('Use ERROR_REMOVE_FAILED instead')
  static const ERROR_REMOVE_FAILED = 15610;
  @Deprecated('Use ERROR_PACKAGE_ALREADY_EXISTS instead')
  static const ERROR_PACKAGE_ALREADY_EXISTS = 15611;
  @Deprecated('Use ERROR_NEEDS_REMEDIATION instead')
  static const ERROR_NEEDS_REMEDIATION = 15612;
  @Deprecated('Use ERROR_INSTALL_PREREQUISITE_FAILED instead')
  static const ERROR_INSTALL_PREREQUISITE_FAILED = 15613;
  @Deprecated('Use ERROR_PACKAGE_REPOSITORY_CORRUPTED instead')
  static const ERROR_PACKAGE_REPOSITORY_CORRUPTED = 15614;
  @Deprecated('Use ERROR_INSTALL_POLICY_FAILURE instead')
  static const ERROR_INSTALL_POLICY_FAILURE = 15615;
  @Deprecated('Use ERROR_PACKAGE_UPDATING instead')
  static const ERROR_PACKAGE_UPDATING = 15616;
  @Deprecated('Use ERROR_DEPLOYMENT_BLOCKED_BY_POLICY instead')
  static const ERROR_DEPLOYMENT_BLOCKED_BY_POLICY = 15617;
  @Deprecated('Use ERROR_PACKAGES_IN_USE instead')
  static const ERROR_PACKAGES_IN_USE = 15618;
  @Deprecated('Use ERROR_RECOVERY_FILE_CORRUPT instead')
  static const ERROR_RECOVERY_FILE_CORRUPT = 15619;
  @Deprecated('Use ERROR_INVALID_STAGED_SIGNATURE instead')
  static const ERROR_INVALID_STAGED_SIGNATURE = 15620;
  @Deprecated(
    'Use ERROR_DELETING_EXISTING_APPLICATIONDATA_STORE_FAILED instead',
  )
  static const ERROR_DELETING_EXISTING_APPLICATIONDATA_STORE_FAILED =
      WIN32_ERROR(15621);
  @Deprecated('Use ERROR_INSTALL_PACKAGE_DOWNGRADE instead')
  static const ERROR_INSTALL_PACKAGE_DOWNGRADE = 15622;
  @Deprecated('Use ERROR_SYSTEM_NEEDS_REMEDIATION instead')
  static const ERROR_SYSTEM_NEEDS_REMEDIATION = 15623;
  @Deprecated('Use ERROR_APPX_INTEGRITY_FAILURE_CLR_NGEN instead')
  static const ERROR_APPX_INTEGRITY_FAILURE_CLR_NGEN = 15624;
  @Deprecated('Use ERROR_RESILIENCY_FILE_CORRUPT instead')
  static const ERROR_RESILIENCY_FILE_CORRUPT = 15625;
  @Deprecated('Use ERROR_INSTALL_FIREWALL_SERVICE_NOT_RUNNING instead')
  static const ERROR_INSTALL_FIREWALL_SERVICE_NOT_RUNNING = 15626;
  @Deprecated('Use ERROR_PACKAGE_MOVE_FAILED instead')
  static const ERROR_PACKAGE_MOVE_FAILED = 15627;
  @Deprecated('Use ERROR_INSTALL_VOLUME_NOT_EMPTY instead')
  static const ERROR_INSTALL_VOLUME_NOT_EMPTY = 15628;
  @Deprecated('Use ERROR_INSTALL_VOLUME_OFFLINE instead')
  static const ERROR_INSTALL_VOLUME_OFFLINE = 15629;
  @Deprecated('Use ERROR_INSTALL_VOLUME_CORRUPT instead')
  static const ERROR_INSTALL_VOLUME_CORRUPT = 15630;
  @Deprecated('Use ERROR_NEEDS_REGISTRATION instead')
  static const ERROR_NEEDS_REGISTRATION = 15631;
  @Deprecated('Use ERROR_INSTALL_WRONG_PROCESSOR_ARCHITECTURE instead')
  static const ERROR_INSTALL_WRONG_PROCESSOR_ARCHITECTURE = 15632;
  @Deprecated('Use ERROR_DEV_SIDELOAD_LIMIT_EXCEEDED instead')
  static const ERROR_DEV_SIDELOAD_LIMIT_EXCEEDED = 15633;
  @Deprecated(
    'Use ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE instead',
  )
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE =
      WIN32_ERROR(15634);
  @Deprecated('Use ERROR_PACKAGE_NOT_SUPPORTED_ON_FILESYSTEM instead')
  static const ERROR_PACKAGE_NOT_SUPPORTED_ON_FILESYSTEM = 15635;
  @Deprecated('Use ERROR_PACKAGE_MOVE_BLOCKED_BY_STREAMING instead')
  static const ERROR_PACKAGE_MOVE_BLOCKED_BY_STREAMING = 15636;
  @Deprecated(
    'Use ERROR_INSTALL_OPTIONAL_PACKAGE_APPLICATIONID_NOT_UNIQUE instead',
  )
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_APPLICATIONID_NOT_UNIQUE =
      WIN32_ERROR(15637);
  @Deprecated('Use ERROR_PACKAGE_STAGING_ONHOLD instead')
  static const ERROR_PACKAGE_STAGING_ONHOLD = 15638;
  @Deprecated('Use ERROR_INSTALL_INVALID_RELATED_SET_UPDATE instead')
  static const ERROR_INSTALL_INVALID_RELATED_SET_UPDATE = 15639;
  @Deprecated(
    'Use ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY instead',
  )
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
      WIN32_ERROR(15640);
  @Deprecated('Use ERROR_DEPLOYMENT_BLOCKED_BY_USER_LOG_OFF instead')
  static const ERROR_DEPLOYMENT_BLOCKED_BY_USER_LOG_OFF = 15641;
  @Deprecated(
    'Use ERROR_PROVISION_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_PROVISIONED instead',
  )
  static const ERROR_PROVISION_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_PROVISIONED =
      WIN32_ERROR(15642);
  @Deprecated('Use ERROR_PACKAGES_REPUTATION_CHECK_FAILED instead')
  static const ERROR_PACKAGES_REPUTATION_CHECK_FAILED = 15643;
  @Deprecated('Use ERROR_PACKAGES_REPUTATION_CHECK_TIMEDOUT instead')
  static const ERROR_PACKAGES_REPUTATION_CHECK_TIMEDOUT = 15644;
  @Deprecated('Use ERROR_DEPLOYMENT_OPTION_NOT_SUPPORTED instead')
  static const ERROR_DEPLOYMENT_OPTION_NOT_SUPPORTED = 15645;
  @Deprecated('Use ERROR_APPINSTALLER_ACTIVATION_BLOCKED instead')
  static const ERROR_APPINSTALLER_ACTIVATION_BLOCKED = 15646;
  @Deprecated('Use ERROR_REGISTRATION_FROM_REMOTE_DRIVE_NOT_SUPPORTED instead')
  static const ERROR_REGISTRATION_FROM_REMOTE_DRIVE_NOT_SUPPORTED = WIN32_ERROR(
    15647,
  );
  @Deprecated('Use ERROR_APPX_RAW_DATA_WRITE_FAILED instead')
  static const ERROR_APPX_RAW_DATA_WRITE_FAILED = 15648;
  @Deprecated('Use ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_PACKAGE instead')
  static const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_PACKAGE = WIN32_ERROR(
    15649,
  );
  @Deprecated('Use ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_MACHINE instead')
  static const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_MACHINE = WIN32_ERROR(
    15650,
  );
  @Deprecated('Use ERROR_DEPLOYMENT_BLOCKED_BY_PROFILE_POLICY instead')
  static const ERROR_DEPLOYMENT_BLOCKED_BY_PROFILE_POLICY = 15651;
  @Deprecated(
    'Use ERROR_DEPLOYMENT_FAILED_CONFLICTING_MUTABLE_PACKAGE_DIRECTORY instead',
  )
  static const ERROR_DEPLOYMENT_FAILED_CONFLICTING_MUTABLE_PACKAGE_DIRECTORY =
      WIN32_ERROR(15652);
  @Deprecated('Use ERROR_SINGLETON_RESOURCE_INSTALLED_IN_ACTIVE_USER instead')
  static const ERROR_SINGLETON_RESOURCE_INSTALLED_IN_ACTIVE_USER = WIN32_ERROR(
    15653,
  );
  @Deprecated(
    'Use ERROR_DIFFERENT_VERSION_OF_PACKAGED_SERVICE_INSTALLED instead',
  )
  static const ERROR_DIFFERENT_VERSION_OF_PACKAGED_SERVICE_INSTALLED =
      WIN32_ERROR(15654);
  @Deprecated('Use ERROR_SERVICE_EXISTS_AS_NON_PACKAGED_SERVICE instead')
  static const ERROR_SERVICE_EXISTS_AS_NON_PACKAGED_SERVICE = WIN32_ERROR(
    15655,
  );
  @Deprecated('Use ERROR_PACKAGED_SERVICE_REQUIRES_ADMIN_PRIVILEGES instead')
  static const ERROR_PACKAGED_SERVICE_REQUIRES_ADMIN_PRIVILEGES = WIN32_ERROR(
    15656,
  );
  @Deprecated('Use ERROR_REDIRECTION_TO_DEFAULT_ACCOUNT_NOT_ALLOWED instead')
  static const ERROR_REDIRECTION_TO_DEFAULT_ACCOUNT_NOT_ALLOWED = WIN32_ERROR(
    15657,
  );
  @Deprecated('Use ERROR_PACKAGE_LACKS_CAPABILITY_TO_DEPLOY_ON_HOST instead')
  static const ERROR_PACKAGE_LACKS_CAPABILITY_TO_DEPLOY_ON_HOST = WIN32_ERROR(
    15658,
  );
  @Deprecated('Use ERROR_UNSIGNED_PACKAGE_INVALID_CONTENT instead')
  static const ERROR_UNSIGNED_PACKAGE_INVALID_CONTENT = 15659;
  @Deprecated('Use ERROR_UNSIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE instead')
  static const ERROR_UNSIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE = WIN32_ERROR(
    15660,
  );
  @Deprecated('Use ERROR_SIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE instead')
  static const ERROR_SIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE = WIN32_ERROR(
    15661,
  );
  @Deprecated('Use ERROR_PACKAGE_EXTERNAL_LOCATION_NOT_ALLOWED instead')
  static const ERROR_PACKAGE_EXTERNAL_LOCATION_NOT_ALLOWED = 15662;
  @Deprecated(
    'Use ERROR_INSTALL_FULLTRUST_HOSTRUNTIME_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY instead',
  )
  static const ERROR_INSTALL_FULLTRUST_HOSTRUNTIME_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
      WIN32_ERROR(15663);
  @Deprecated(
    'Use ERROR_PACKAGE_LACKS_CAPABILITY_FOR_MANDATORY_STARTUPTASKS instead',
  )
  static const ERROR_PACKAGE_LACKS_CAPABILITY_FOR_MANDATORY_STARTUPTASKS =
      WIN32_ERROR(15664);
  @Deprecated('Use ERROR_INSTALL_RESOLVE_HOSTRUNTIME_DEPENDENCY_FAILED instead')
  static const ERROR_INSTALL_RESOLVE_HOSTRUNTIME_DEPENDENCY_FAILED =
      WIN32_ERROR(15665);
  @Deprecated('Use ERROR_MACHINE_SCOPE_NOT_ALLOWED instead')
  static const ERROR_MACHINE_SCOPE_NOT_ALLOWED = 15666;
  @Deprecated('Use ERROR_CLASSIC_COMPAT_MODE_NOT_ALLOWED instead')
  static const ERROR_CLASSIC_COMPAT_MODE_NOT_ALLOWED = 15667;
  @Deprecated('Use ERROR_STAGEFROMUPDATEAGENT_PACKAGE_NOT_APPLICABLE instead')
  static const ERROR_STAGEFROMUPDATEAGENT_PACKAGE_NOT_APPLICABLE = WIN32_ERROR(
    15668,
  );
  @Deprecated('Use ERROR_PACKAGE_NOT_REGISTERED_FOR_USER instead')
  static const ERROR_PACKAGE_NOT_REGISTERED_FOR_USER = 15669;
  @Deprecated('Use ERROR_PACKAGE_NAME_MISMATCH instead')
  static const ERROR_PACKAGE_NAME_MISMATCH = 15670;
  @Deprecated('Use ERROR_APPINSTALLER_URI_IN_USE instead')
  static const ERROR_APPINSTALLER_URI_IN_USE = 15671;
  @Deprecated('Use ERROR_APPINSTALLER_IS_MANAGED_BY_SYSTEM instead')
  static const ERROR_APPINSTALLER_IS_MANAGED_BY_SYSTEM = 15672;
  @Deprecated('Use APPMODEL_ERROR_NO_PACKAGE instead')
  static const APPMODEL_ERROR_NO_PACKAGE = 15700;
  @Deprecated('Use APPMODEL_ERROR_PACKAGE_RUNTIME_CORRUPT instead')
  static const APPMODEL_ERROR_PACKAGE_RUNTIME_CORRUPT = 15701;
  @Deprecated('Use APPMODEL_ERROR_PACKAGE_IDENTITY_CORRUPT instead')
  static const APPMODEL_ERROR_PACKAGE_IDENTITY_CORRUPT = 15702;
  @Deprecated('Use APPMODEL_ERROR_NO_APPLICATION instead')
  static const APPMODEL_ERROR_NO_APPLICATION = 15703;
  @Deprecated('Use APPMODEL_ERROR_DYNAMIC_PROPERTY_READ_FAILED instead')
  static const APPMODEL_ERROR_DYNAMIC_PROPERTY_READ_FAILED = 15704;
  @Deprecated('Use APPMODEL_ERROR_DYNAMIC_PROPERTY_INVALID instead')
  static const APPMODEL_ERROR_DYNAMIC_PROPERTY_INVALID = 15705;
  @Deprecated('Use APPMODEL_ERROR_PACKAGE_NOT_AVAILABLE instead')
  static const APPMODEL_ERROR_PACKAGE_NOT_AVAILABLE = 15706;
  @Deprecated('Use APPMODEL_ERROR_NO_MUTABLE_DIRECTORY instead')
  static const APPMODEL_ERROR_NO_MUTABLE_DIRECTORY = 15707;
  @Deprecated('Use ERROR_STATE_LOAD_STORE_FAILED instead')
  static const ERROR_STATE_LOAD_STORE_FAILED = 15800;
  @Deprecated('Use ERROR_STATE_GET_VERSION_FAILED instead')
  static const ERROR_STATE_GET_VERSION_FAILED = 15801;
  @Deprecated('Use ERROR_STATE_SET_VERSION_FAILED instead')
  static const ERROR_STATE_SET_VERSION_FAILED = 15802;
  @Deprecated('Use ERROR_STATE_STRUCTURED_RESET_FAILED instead')
  static const ERROR_STATE_STRUCTURED_RESET_FAILED = 15803;
  @Deprecated('Use ERROR_STATE_OPEN_CONTAINER_FAILED instead')
  static const ERROR_STATE_OPEN_CONTAINER_FAILED = 15804;
  @Deprecated('Use ERROR_STATE_CREATE_CONTAINER_FAILED instead')
  static const ERROR_STATE_CREATE_CONTAINER_FAILED = 15805;
  @Deprecated('Use ERROR_STATE_DELETE_CONTAINER_FAILED instead')
  static const ERROR_STATE_DELETE_CONTAINER_FAILED = 15806;
  @Deprecated('Use ERROR_STATE_READ_SETTING_FAILED instead')
  static const ERROR_STATE_READ_SETTING_FAILED = 15807;
  @Deprecated('Use ERROR_STATE_WRITE_SETTING_FAILED instead')
  static const ERROR_STATE_WRITE_SETTING_FAILED = 15808;
  @Deprecated('Use ERROR_STATE_DELETE_SETTING_FAILED instead')
  static const ERROR_STATE_DELETE_SETTING_FAILED = 15809;
  @Deprecated('Use ERROR_STATE_QUERY_SETTING_FAILED instead')
  static const ERROR_STATE_QUERY_SETTING_FAILED = 15810;
  @Deprecated('Use ERROR_STATE_READ_COMPOSITE_SETTING_FAILED instead')
  static const ERROR_STATE_READ_COMPOSITE_SETTING_FAILED = 15811;
  @Deprecated('Use ERROR_STATE_WRITE_COMPOSITE_SETTING_FAILED instead')
  static const ERROR_STATE_WRITE_COMPOSITE_SETTING_FAILED = 15812;
  @Deprecated('Use ERROR_STATE_ENUMERATE_CONTAINER_FAILED instead')
  static const ERROR_STATE_ENUMERATE_CONTAINER_FAILED = 15813;
  @Deprecated('Use ERROR_STATE_ENUMERATE_SETTINGS_FAILED instead')
  static const ERROR_STATE_ENUMERATE_SETTINGS_FAILED = 15814;
  @Deprecated(
    'Use ERROR_STATE_COMPOSITE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED instead',
  )
  static const ERROR_STATE_COMPOSITE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(15815);
  @Deprecated('Use ERROR_STATE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED instead')
  static const ERROR_STATE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED = WIN32_ERROR(
    15816,
  );
  @Deprecated('Use ERROR_STATE_SETTING_NAME_SIZE_LIMIT_EXCEEDED instead')
  static const ERROR_STATE_SETTING_NAME_SIZE_LIMIT_EXCEEDED = WIN32_ERROR(
    15817,
  );
  @Deprecated('Use ERROR_STATE_CONTAINER_NAME_SIZE_LIMIT_EXCEEDED instead')
  static const ERROR_STATE_CONTAINER_NAME_SIZE_LIMIT_EXCEEDED = WIN32_ERROR(
    15818,
  );
  @Deprecated('Use ERROR_API_UNAVAILABLE instead')
  static const ERROR_API_UNAVAILABLE = 15841;
  @Deprecated('Use ERROR_NDIS_INTERFACE_CLOSING instead')
  static const ERROR_NDIS_INTERFACE_CLOSING = 2150891522;
  @Deprecated('Use ERROR_NDIS_BAD_VERSION instead')
  static const ERROR_NDIS_BAD_VERSION = 2150891524;
  @Deprecated('Use ERROR_NDIS_BAD_CHARACTERISTICS instead')
  static const ERROR_NDIS_BAD_CHARACTERISTICS = 2150891525;
  @Deprecated('Use ERROR_NDIS_ADAPTER_NOT_FOUND instead')
  static const ERROR_NDIS_ADAPTER_NOT_FOUND = 2150891526;
  @Deprecated('Use ERROR_NDIS_OPEN_FAILED instead')
  static const ERROR_NDIS_OPEN_FAILED = 2150891527;
  @Deprecated('Use ERROR_NDIS_DEVICE_FAILED instead')
  static const ERROR_NDIS_DEVICE_FAILED = 2150891528;
  @Deprecated('Use ERROR_NDIS_MULTICAST_FULL instead')
  static const ERROR_NDIS_MULTICAST_FULL = 2150891529;
  @Deprecated('Use ERROR_NDIS_MULTICAST_EXISTS instead')
  static const ERROR_NDIS_MULTICAST_EXISTS = 2150891530;
  @Deprecated('Use ERROR_NDIS_MULTICAST_NOT_FOUND instead')
  static const ERROR_NDIS_MULTICAST_NOT_FOUND = 2150891531;
  @Deprecated('Use ERROR_NDIS_REQUEST_ABORTED instead')
  static const ERROR_NDIS_REQUEST_ABORTED = 2150891532;
  @Deprecated('Use ERROR_NDIS_RESET_IN_PROGRESS instead')
  static const ERROR_NDIS_RESET_IN_PROGRESS = 2150891533;
  @Deprecated('Use ERROR_NDIS_NOT_SUPPORTED instead')
  static const ERROR_NDIS_NOT_SUPPORTED = 2150891707;
  @Deprecated('Use ERROR_NDIS_INVALID_PACKET instead')
  static const ERROR_NDIS_INVALID_PACKET = 2150891535;
  @Deprecated('Use ERROR_NDIS_ADAPTER_NOT_READY instead')
  static const ERROR_NDIS_ADAPTER_NOT_READY = 2150891537;
  @Deprecated('Use ERROR_NDIS_INVALID_LENGTH instead')
  static const ERROR_NDIS_INVALID_LENGTH = 2150891540;
  @Deprecated('Use ERROR_NDIS_INVALID_DATA instead')
  static const ERROR_NDIS_INVALID_DATA = 2150891541;
  @Deprecated('Use ERROR_NDIS_BUFFER_TOO_SHORT instead')
  static const ERROR_NDIS_BUFFER_TOO_SHORT = 2150891542;
  @Deprecated('Use ERROR_NDIS_INVALID_OID instead')
  static const ERROR_NDIS_INVALID_OID = 2150891543;
  @Deprecated('Use ERROR_NDIS_ADAPTER_REMOVED instead')
  static const ERROR_NDIS_ADAPTER_REMOVED = 2150891544;
  @Deprecated('Use ERROR_NDIS_UNSUPPORTED_MEDIA instead')
  static const ERROR_NDIS_UNSUPPORTED_MEDIA = 2150891545;
  @Deprecated('Use ERROR_NDIS_GROUP_ADDRESS_IN_USE instead')
  static const ERROR_NDIS_GROUP_ADDRESS_IN_USE = 2150891546;
  @Deprecated('Use ERROR_NDIS_FILE_NOT_FOUND instead')
  static const ERROR_NDIS_FILE_NOT_FOUND = 2150891547;
  @Deprecated('Use ERROR_NDIS_ERROR_READING_FILE instead')
  static const ERROR_NDIS_ERROR_READING_FILE = 2150891548;
  @Deprecated('Use ERROR_NDIS_ALREADY_MAPPED instead')
  static const ERROR_NDIS_ALREADY_MAPPED = 2150891549;
  @Deprecated('Use ERROR_NDIS_RESOURCE_CONFLICT instead')
  static const ERROR_NDIS_RESOURCE_CONFLICT = 2150891550;
  @Deprecated('Use ERROR_NDIS_MEDIA_DISCONNECTED instead')
  static const ERROR_NDIS_MEDIA_DISCONNECTED = 2150891551;
  @Deprecated('Use ERROR_NDIS_INVALID_ADDRESS instead')
  static const ERROR_NDIS_INVALID_ADDRESS = 2150891554;
  @Deprecated('Use ERROR_NDIS_INVALID_DEVICE_REQUEST instead')
  static const ERROR_NDIS_INVALID_DEVICE_REQUEST = 2150891536;
  @Deprecated('Use ERROR_NDIS_PAUSED instead')
  static const ERROR_NDIS_PAUSED = 2150891562;
  @Deprecated('Use ERROR_NDIS_INTERFACE_NOT_FOUND instead')
  static const ERROR_NDIS_INTERFACE_NOT_FOUND = 2150891563;
  @Deprecated('Use ERROR_NDIS_UNSUPPORTED_REVISION instead')
  static const ERROR_NDIS_UNSUPPORTED_REVISION = 2150891564;
  @Deprecated('Use ERROR_NDIS_INVALID_PORT instead')
  static const ERROR_NDIS_INVALID_PORT = 2150891565;
  @Deprecated('Use ERROR_NDIS_INVALID_PORT_STATE instead')
  static const ERROR_NDIS_INVALID_PORT_STATE = 2150891566;
  @Deprecated('Use ERROR_NDIS_LOW_POWER_STATE instead')
  static const ERROR_NDIS_LOW_POWER_STATE = 2150891567;
  @Deprecated('Use ERROR_NDIS_REINIT_REQUIRED instead')
  static const ERROR_NDIS_REINIT_REQUIRED = 2150891568;
  @Deprecated('Use ERROR_NDIS_NO_QUEUES instead')
  static const ERROR_NDIS_NO_QUEUES = 2150891569;
  @Deprecated('Use ERROR_NDIS_DOT11_AUTO_CONFIG_ENABLED instead')
  static const ERROR_NDIS_DOT11_AUTO_CONFIG_ENABLED = 2150899712;
  @Deprecated('Use ERROR_NDIS_DOT11_MEDIA_IN_USE instead')
  static const ERROR_NDIS_DOT11_MEDIA_IN_USE = 2150899713;
  @Deprecated('Use ERROR_NDIS_DOT11_POWER_STATE_INVALID instead')
  static const ERROR_NDIS_DOT11_POWER_STATE_INVALID = 2150899714;
  @Deprecated('Use ERROR_NDIS_PM_WOL_PATTERN_LIST_FULL instead')
  static const ERROR_NDIS_PM_WOL_PATTERN_LIST_FULL = 2150899715;
  @Deprecated('Use ERROR_NDIS_PM_PROTOCOL_OFFLOAD_LIST_FULL instead')
  static const ERROR_NDIS_PM_PROTOCOL_OFFLOAD_LIST_FULL = WIN32_ERROR(
    2150899716,
  );
  @Deprecated('Use ERROR_NDIS_DOT11_AP_CHANNEL_CURRENTLY_NOT_AVAILABLE instead')
  static const ERROR_NDIS_DOT11_AP_CHANNEL_CURRENTLY_NOT_AVAILABLE =
      WIN32_ERROR(2150899717);
  @Deprecated('Use ERROR_NDIS_DOT11_AP_BAND_CURRENTLY_NOT_AVAILABLE instead')
  static const ERROR_NDIS_DOT11_AP_BAND_CURRENTLY_NOT_AVAILABLE = WIN32_ERROR(
    2150899718,
  );
  @Deprecated('Use ERROR_NDIS_DOT11_AP_CHANNEL_NOT_ALLOWED instead')
  static const ERROR_NDIS_DOT11_AP_CHANNEL_NOT_ALLOWED = WIN32_ERROR(
    2150899719,
  );
  @Deprecated('Use ERROR_NDIS_DOT11_AP_BAND_NOT_ALLOWED instead')
  static const ERROR_NDIS_DOT11_AP_BAND_NOT_ALLOWED = 2150899720;
  @Deprecated('Use ERROR_NDIS_INDICATION_REQUIRED instead')
  static const ERROR_NDIS_INDICATION_REQUIRED = 3407873;
  @Deprecated('Use ERROR_NDIS_OFFLOAD_POLICY instead')
  static const ERROR_NDIS_OFFLOAD_POLICY = 3224637455;
  @Deprecated('Use ERROR_NDIS_OFFLOAD_CONNECTION_REJECTED instead')
  static const ERROR_NDIS_OFFLOAD_CONNECTION_REJECTED = 3224637458;
  @Deprecated('Use ERROR_NDIS_OFFLOAD_PATH_REJECTED instead')
  static const ERROR_NDIS_OFFLOAD_PATH_REJECTED = 3224637459;
  @Deprecated('Use ERROR_HV_INVALID_HYPERCALL_CODE instead')
  static const ERROR_HV_INVALID_HYPERCALL_CODE = 3224698882;
  @Deprecated('Use ERROR_HV_INVALID_HYPERCALL_INPUT instead')
  static const ERROR_HV_INVALID_HYPERCALL_INPUT = 3224698883;
  @Deprecated('Use ERROR_HV_INVALID_ALIGNMENT instead')
  static const ERROR_HV_INVALID_ALIGNMENT = 3224698884;
  @Deprecated('Use ERROR_HV_INVALID_PARAMETER instead')
  static const ERROR_HV_INVALID_PARAMETER = 3224698885;
  @Deprecated('Use ERROR_HV_ACCESS_DENIED instead')
  static const ERROR_HV_ACCESS_DENIED = 3224698886;
  @Deprecated('Use ERROR_HV_INVALID_PARTITION_STATE instead')
  static const ERROR_HV_INVALID_PARTITION_STATE = 3224698887;
  @Deprecated('Use ERROR_HV_OPERATION_DENIED instead')
  static const ERROR_HV_OPERATION_DENIED = 3224698888;
  @Deprecated('Use ERROR_HV_UNKNOWN_PROPERTY instead')
  static const ERROR_HV_UNKNOWN_PROPERTY = 3224698889;
  @Deprecated('Use ERROR_HV_PROPERTY_VALUE_OUT_OF_RANGE instead')
  static const ERROR_HV_PROPERTY_VALUE_OUT_OF_RANGE = 3224698890;
  @Deprecated('Use ERROR_HV_INSUFFICIENT_MEMORY instead')
  static const ERROR_HV_INSUFFICIENT_MEMORY = 3224698891;
  @Deprecated('Use ERROR_HV_PARTITION_TOO_DEEP instead')
  static const ERROR_HV_PARTITION_TOO_DEEP = 3224698892;
  @Deprecated('Use ERROR_HV_INVALID_PARTITION_ID instead')
  static const ERROR_HV_INVALID_PARTITION_ID = 3224698893;
  @Deprecated('Use ERROR_HV_INVALID_VP_INDEX instead')
  static const ERROR_HV_INVALID_VP_INDEX = 3224698894;
  @Deprecated('Use ERROR_HV_INVALID_PORT_ID instead')
  static const ERROR_HV_INVALID_PORT_ID = 3224698897;
  @Deprecated('Use ERROR_HV_INVALID_CONNECTION_ID instead')
  static const ERROR_HV_INVALID_CONNECTION_ID = 3224698898;
  @Deprecated('Use ERROR_HV_INSUFFICIENT_BUFFERS instead')
  static const ERROR_HV_INSUFFICIENT_BUFFERS = 3224698899;
  @Deprecated('Use ERROR_HV_NOT_ACKNOWLEDGED instead')
  static const ERROR_HV_NOT_ACKNOWLEDGED = 3224698900;
  @Deprecated('Use ERROR_HV_INVALID_VP_STATE instead')
  static const ERROR_HV_INVALID_VP_STATE = 3224698901;
  @Deprecated('Use ERROR_HV_ACKNOWLEDGED instead')
  static const ERROR_HV_ACKNOWLEDGED = 3224698902;
  @Deprecated('Use ERROR_HV_INVALID_SAVE_RESTORE_STATE instead')
  static const ERROR_HV_INVALID_SAVE_RESTORE_STATE = 3224698903;
  @Deprecated('Use ERROR_HV_INVALID_SYNIC_STATE instead')
  static const ERROR_HV_INVALID_SYNIC_STATE = 3224698904;
  @Deprecated('Use ERROR_HV_OBJECT_IN_USE instead')
  static const ERROR_HV_OBJECT_IN_USE = 3224698905;
  @Deprecated('Use ERROR_HV_INVALID_PROXIMITY_DOMAIN_INFO instead')
  static const ERROR_HV_INVALID_PROXIMITY_DOMAIN_INFO = 3224698906;
  @Deprecated('Use ERROR_HV_NO_DATA instead')
  static const ERROR_HV_NO_DATA = 3224698907;
  @Deprecated('Use ERROR_HV_INACTIVE instead')
  static const ERROR_HV_INACTIVE = 3224698908;
  @Deprecated('Use ERROR_HV_NO_RESOURCES instead')
  static const ERROR_HV_NO_RESOURCES = 3224698909;
  @Deprecated('Use ERROR_HV_FEATURE_UNAVAILABLE instead')
  static const ERROR_HV_FEATURE_UNAVAILABLE = 3224698910;
  @Deprecated('Use ERROR_HV_INSUFFICIENT_BUFFER instead')
  static const ERROR_HV_INSUFFICIENT_BUFFER = 3224698931;
  @Deprecated('Use ERROR_HV_INSUFFICIENT_DEVICE_DOMAINS instead')
  static const ERROR_HV_INSUFFICIENT_DEVICE_DOMAINS = 3224698936;
  @Deprecated('Use ERROR_HV_CPUID_FEATURE_VALIDATION instead')
  static const ERROR_HV_CPUID_FEATURE_VALIDATION = 3224698940;
  @Deprecated('Use ERROR_HV_CPUID_XSAVE_FEATURE_VALIDATION instead')
  static const ERROR_HV_CPUID_XSAVE_FEATURE_VALIDATION = WIN32_ERROR(
    3224698941,
  );
  @Deprecated('Use ERROR_HV_PROCESSOR_STARTUP_TIMEOUT instead')
  static const ERROR_HV_PROCESSOR_STARTUP_TIMEOUT = 3224698942;
  @Deprecated('Use ERROR_HV_SMX_ENABLED instead')
  static const ERROR_HV_SMX_ENABLED = 3224698943;
  @Deprecated('Use ERROR_HV_INVALID_LP_INDEX instead')
  static const ERROR_HV_INVALID_LP_INDEX = 3224698945;
  @Deprecated('Use ERROR_HV_INVALID_REGISTER_VALUE instead')
  static const ERROR_HV_INVALID_REGISTER_VALUE = 3224698960;
  @Deprecated('Use ERROR_HV_INVALID_VTL_STATE instead')
  static const ERROR_HV_INVALID_VTL_STATE = 3224698961;
  @Deprecated('Use ERROR_HV_NX_NOT_DETECTED instead')
  static const ERROR_HV_NX_NOT_DETECTED = 3224698965;
  @Deprecated('Use ERROR_HV_INVALID_DEVICE_ID instead')
  static const ERROR_HV_INVALID_DEVICE_ID = 3224698967;
  @Deprecated('Use ERROR_HV_INVALID_DEVICE_STATE instead')
  static const ERROR_HV_INVALID_DEVICE_STATE = 3224698968;
  @Deprecated('Use ERROR_HV_PENDING_PAGE_REQUESTS instead')
  static const ERROR_HV_PENDING_PAGE_REQUESTS = 3473497;
  @Deprecated('Use ERROR_HV_PAGE_REQUEST_INVALID instead')
  static const ERROR_HV_PAGE_REQUEST_INVALID = 3224698976;
  @Deprecated('Use ERROR_HV_INVALID_CPU_GROUP_ID instead')
  static const ERROR_HV_INVALID_CPU_GROUP_ID = 3224698991;
  @Deprecated('Use ERROR_HV_INVALID_CPU_GROUP_STATE instead')
  static const ERROR_HV_INVALID_CPU_GROUP_STATE = 3224698992;
  @Deprecated('Use ERROR_HV_OPERATION_FAILED instead')
  static const ERROR_HV_OPERATION_FAILED = 3224698993;
  @Deprecated('Use ERROR_HV_NOT_ALLOWED_WITH_NESTED_VIRT_ACTIVE instead')
  static const ERROR_HV_NOT_ALLOWED_WITH_NESTED_VIRT_ACTIVE = WIN32_ERROR(
    3224698994,
  );
  @Deprecated('Use ERROR_HV_INSUFFICIENT_ROOT_MEMORY instead')
  static const ERROR_HV_INSUFFICIENT_ROOT_MEMORY = 3224698995;
  @Deprecated('Use ERROR_HV_EVENT_BUFFER_ALREADY_FREED instead')
  static const ERROR_HV_EVENT_BUFFER_ALREADY_FREED = 3224698996;
  @Deprecated('Use ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY instead')
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY = WIN32_ERROR(
    3224698997,
  );
  @Deprecated('Use ERROR_HV_DEVICE_NOT_IN_DOMAIN instead')
  static const ERROR_HV_DEVICE_NOT_IN_DOMAIN = 3224698998;
  @Deprecated('Use ERROR_HV_NESTED_VM_EXIT instead')
  static const ERROR_HV_NESTED_VM_EXIT = 3224698999;
  @Deprecated('Use ERROR_HV_MSR_ACCESS_FAILED instead')
  static const ERROR_HV_MSR_ACCESS_FAILED = 3224699008;
  @Deprecated('Use ERROR_HV_INSUFFICIENT_MEMORY_MIRRORING instead')
  static const ERROR_HV_INSUFFICIENT_MEMORY_MIRRORING = 3224699009;
  @Deprecated('Use ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY_MIRRORING instead')
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY_MIRRORING = WIN32_ERROR(
    3224699010,
  );
  @Deprecated('Use ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY instead')
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY = WIN32_ERROR(
    3224699011,
  );
  @Deprecated('Use ERROR_HV_INSUFFICIENT_ROOT_MEMORY_MIRRORING instead')
  static const ERROR_HV_INSUFFICIENT_ROOT_MEMORY_MIRRORING = WIN32_ERROR(
    3224699012,
  );
  @Deprecated(
    'Use ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY_MIRRORING instead',
  )
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY_MIRRORING =
      WIN32_ERROR(3224699013);
  @Deprecated('Use ERROR_HV_NOT_PRESENT instead')
  static const ERROR_HV_NOT_PRESENT = 3224702976;
  @Deprecated('Use ERROR_VID_DUPLICATE_HANDLER instead')
  static const ERROR_VID_DUPLICATE_HANDLER = 3224829953;
  @Deprecated('Use ERROR_VID_TOO_MANY_HANDLERS instead')
  static const ERROR_VID_TOO_MANY_HANDLERS = 3224829954;
  @Deprecated('Use ERROR_VID_QUEUE_FULL instead')
  static const ERROR_VID_QUEUE_FULL = 3224829955;
  @Deprecated('Use ERROR_VID_HANDLER_NOT_PRESENT instead')
  static const ERROR_VID_HANDLER_NOT_PRESENT = 3224829956;
  @Deprecated('Use ERROR_VID_INVALID_OBJECT_NAME instead')
  static const ERROR_VID_INVALID_OBJECT_NAME = 3224829957;
  @Deprecated('Use ERROR_VID_PARTITION_NAME_TOO_LONG instead')
  static const ERROR_VID_PARTITION_NAME_TOO_LONG = 3224829958;
  @Deprecated('Use ERROR_VID_MESSAGE_QUEUE_NAME_TOO_LONG instead')
  static const ERROR_VID_MESSAGE_QUEUE_NAME_TOO_LONG = 3224829959;
  @Deprecated('Use ERROR_VID_PARTITION_ALREADY_EXISTS instead')
  static const ERROR_VID_PARTITION_ALREADY_EXISTS = 3224829960;
  @Deprecated('Use ERROR_VID_PARTITION_DOES_NOT_EXIST instead')
  static const ERROR_VID_PARTITION_DOES_NOT_EXIST = 3224829961;
  @Deprecated('Use ERROR_VID_PARTITION_NAME_NOT_FOUND instead')
  static const ERROR_VID_PARTITION_NAME_NOT_FOUND = 3224829962;
  @Deprecated('Use ERROR_VID_MESSAGE_QUEUE_ALREADY_EXISTS instead')
  static const ERROR_VID_MESSAGE_QUEUE_ALREADY_EXISTS = 3224829963;
  @Deprecated('Use ERROR_VID_EXCEEDED_MBP_ENTRY_MAP_LIMIT instead')
  static const ERROR_VID_EXCEEDED_MBP_ENTRY_MAP_LIMIT = 3224829964;
  @Deprecated('Use ERROR_VID_MB_STILL_REFERENCED instead')
  static const ERROR_VID_MB_STILL_REFERENCED = 3224829965;
  @Deprecated('Use ERROR_VID_CHILD_GPA_PAGE_SET_CORRUPTED instead')
  static const ERROR_VID_CHILD_GPA_PAGE_SET_CORRUPTED = 3224829966;
  @Deprecated('Use ERROR_VID_INVALID_NUMA_SETTINGS instead')
  static const ERROR_VID_INVALID_NUMA_SETTINGS = 3224829967;
  @Deprecated('Use ERROR_VID_INVALID_NUMA_NODE_INDEX instead')
  static const ERROR_VID_INVALID_NUMA_NODE_INDEX = 3224829968;
  @Deprecated('Use ERROR_VID_NOTIFICATION_QUEUE_ALREADY_ASSOCIATED instead')
  static const ERROR_VID_NOTIFICATION_QUEUE_ALREADY_ASSOCIATED = WIN32_ERROR(
    3224829969,
  );
  @Deprecated('Use ERROR_VID_INVALID_MEMORY_BLOCK_HANDLE instead')
  static const ERROR_VID_INVALID_MEMORY_BLOCK_HANDLE = 3224829970;
  @Deprecated('Use ERROR_VID_PAGE_RANGE_OVERFLOW instead')
  static const ERROR_VID_PAGE_RANGE_OVERFLOW = 3224829971;
  @Deprecated('Use ERROR_VID_INVALID_MESSAGE_QUEUE_HANDLE instead')
  static const ERROR_VID_INVALID_MESSAGE_QUEUE_HANDLE = 3224829972;
  @Deprecated('Use ERROR_VID_INVALID_GPA_RANGE_HANDLE instead')
  static const ERROR_VID_INVALID_GPA_RANGE_HANDLE = 3224829973;
  @Deprecated('Use ERROR_VID_NO_MEMORY_BLOCK_NOTIFICATION_QUEUE instead')
  static const ERROR_VID_NO_MEMORY_BLOCK_NOTIFICATION_QUEUE = WIN32_ERROR(
    3224829974,
  );
  @Deprecated('Use ERROR_VID_MEMORY_BLOCK_LOCK_COUNT_EXCEEDED instead')
  static const ERROR_VID_MEMORY_BLOCK_LOCK_COUNT_EXCEEDED = WIN32_ERROR(
    3224829975,
  );
  @Deprecated('Use ERROR_VID_INVALID_PPM_HANDLE instead')
  static const ERROR_VID_INVALID_PPM_HANDLE = 3224829976;
  @Deprecated('Use ERROR_VID_MBPS_ARE_LOCKED instead')
  static const ERROR_VID_MBPS_ARE_LOCKED = 3224829977;
  @Deprecated('Use ERROR_VID_MESSAGE_QUEUE_CLOSED instead')
  static const ERROR_VID_MESSAGE_QUEUE_CLOSED = 3224829978;
  @Deprecated('Use ERROR_VID_VIRTUAL_PROCESSOR_LIMIT_EXCEEDED instead')
  static const ERROR_VID_VIRTUAL_PROCESSOR_LIMIT_EXCEEDED = WIN32_ERROR(
    3224829979,
  );
  @Deprecated('Use ERROR_VID_STOP_PENDING instead')
  static const ERROR_VID_STOP_PENDING = 3224829980;
  @Deprecated('Use ERROR_VID_INVALID_PROCESSOR_STATE instead')
  static const ERROR_VID_INVALID_PROCESSOR_STATE = 3224829981;
  @Deprecated('Use ERROR_VID_EXCEEDED_KM_CONTEXT_COUNT_LIMIT instead')
  static const ERROR_VID_EXCEEDED_KM_CONTEXT_COUNT_LIMIT = WIN32_ERROR(
    3224829982,
  );
  @Deprecated('Use ERROR_VID_KM_INTERFACE_ALREADY_INITIALIZED instead')
  static const ERROR_VID_KM_INTERFACE_ALREADY_INITIALIZED = WIN32_ERROR(
    3224829983,
  );
  @Deprecated('Use ERROR_VID_MB_PROPERTY_ALREADY_SET_RESET instead')
  static const ERROR_VID_MB_PROPERTY_ALREADY_SET_RESET = WIN32_ERROR(
    3224829984,
  );
  @Deprecated('Use ERROR_VID_MMIO_RANGE_DESTROYED instead')
  static const ERROR_VID_MMIO_RANGE_DESTROYED = 3224829985;
  @Deprecated('Use ERROR_VID_INVALID_CHILD_GPA_PAGE_SET instead')
  static const ERROR_VID_INVALID_CHILD_GPA_PAGE_SET = 3224829986;
  @Deprecated('Use ERROR_VID_RESERVE_PAGE_SET_IS_BEING_USED instead')
  static const ERROR_VID_RESERVE_PAGE_SET_IS_BEING_USED = WIN32_ERROR(
    3224829987,
  );
  @Deprecated('Use ERROR_VID_RESERVE_PAGE_SET_TOO_SMALL instead')
  static const ERROR_VID_RESERVE_PAGE_SET_TOO_SMALL = 3224829988;
  @Deprecated('Use ERROR_VID_MBP_ALREADY_LOCKED_USING_RESERVED_PAGE instead')
  static const ERROR_VID_MBP_ALREADY_LOCKED_USING_RESERVED_PAGE = WIN32_ERROR(
    3224829989,
  );
  @Deprecated('Use ERROR_VID_MBP_COUNT_EXCEEDED_LIMIT instead')
  static const ERROR_VID_MBP_COUNT_EXCEEDED_LIMIT = 3224829990;
  @Deprecated('Use ERROR_VID_SAVED_STATE_CORRUPT instead')
  static const ERROR_VID_SAVED_STATE_CORRUPT = 3224829991;
  @Deprecated('Use ERROR_VID_SAVED_STATE_UNRECOGNIZED_ITEM instead')
  static const ERROR_VID_SAVED_STATE_UNRECOGNIZED_ITEM = WIN32_ERROR(
    3224829992,
  );
  @Deprecated('Use ERROR_VID_SAVED_STATE_INCOMPATIBLE instead')
  static const ERROR_VID_SAVED_STATE_INCOMPATIBLE = 3224829993;
  @Deprecated('Use ERROR_VID_VTL_ACCESS_DENIED instead')
  static const ERROR_VID_VTL_ACCESS_DENIED = 3224829994;
  @Deprecated('Use ERROR_VID_INSUFFICIENT_RESOURCES_RESERVE instead')
  static const ERROR_VID_INSUFFICIENT_RESOURCES_RESERVE = WIN32_ERROR(
    3224829995,
  );
  @Deprecated('Use ERROR_VID_INSUFFICIENT_RESOURCES_PHYSICAL_BUFFER instead')
  static const ERROR_VID_INSUFFICIENT_RESOURCES_PHYSICAL_BUFFER = WIN32_ERROR(
    3224829996,
  );
  @Deprecated('Use ERROR_VID_INSUFFICIENT_RESOURCES_HV_DEPOSIT instead')
  static const ERROR_VID_INSUFFICIENT_RESOURCES_HV_DEPOSIT = WIN32_ERROR(
    3224829997,
  );
  @Deprecated('Use ERROR_VID_MEMORY_TYPE_NOT_SUPPORTED instead')
  static const ERROR_VID_MEMORY_TYPE_NOT_SUPPORTED = 3224829998;
  @Deprecated('Use ERROR_VID_INSUFFICIENT_RESOURCES_WITHDRAW instead')
  static const ERROR_VID_INSUFFICIENT_RESOURCES_WITHDRAW = WIN32_ERROR(
    3224829999,
  );
  @Deprecated('Use ERROR_VID_PROCESS_ALREADY_SET instead')
  static const ERROR_VID_PROCESS_ALREADY_SET = 3224830000;
  @Deprecated('Use ERROR_VMCOMPUTE_TERMINATED_DURING_START instead')
  static const ERROR_VMCOMPUTE_TERMINATED_DURING_START = WIN32_ERROR(
    3224830208,
  );
  @Deprecated('Use ERROR_VMCOMPUTE_IMAGE_MISMATCH instead')
  static const ERROR_VMCOMPUTE_IMAGE_MISMATCH = 3224830209;
  @Deprecated('Use ERROR_VMCOMPUTE_HYPERV_NOT_INSTALLED instead')
  static const ERROR_VMCOMPUTE_HYPERV_NOT_INSTALLED = 3224830210;
  @Deprecated('Use ERROR_VMCOMPUTE_OPERATION_PENDING instead')
  static const ERROR_VMCOMPUTE_OPERATION_PENDING = 3224830211;
  @Deprecated('Use ERROR_VMCOMPUTE_TOO_MANY_NOTIFICATIONS instead')
  static const ERROR_VMCOMPUTE_TOO_MANY_NOTIFICATIONS = 3224830212;
  @Deprecated('Use ERROR_VMCOMPUTE_INVALID_STATE instead')
  static const ERROR_VMCOMPUTE_INVALID_STATE = 3224830213;
  @Deprecated('Use ERROR_VMCOMPUTE_UNEXPECTED_EXIT instead')
  static const ERROR_VMCOMPUTE_UNEXPECTED_EXIT = 3224830214;
  @Deprecated('Use ERROR_VMCOMPUTE_TERMINATED instead')
  static const ERROR_VMCOMPUTE_TERMINATED = 3224830215;
  @Deprecated('Use ERROR_VMCOMPUTE_CONNECT_FAILED instead')
  static const ERROR_VMCOMPUTE_CONNECT_FAILED = 3224830216;
  @Deprecated('Use ERROR_VMCOMPUTE_TIMEOUT instead')
  static const ERROR_VMCOMPUTE_TIMEOUT = 3224830217;
  @Deprecated('Use ERROR_VMCOMPUTE_CONNECTION_CLOSED instead')
  static const ERROR_VMCOMPUTE_CONNECTION_CLOSED = 3224830218;
  @Deprecated('Use ERROR_VMCOMPUTE_UNKNOWN_MESSAGE instead')
  static const ERROR_VMCOMPUTE_UNKNOWN_MESSAGE = 3224830219;
  @Deprecated('Use ERROR_VMCOMPUTE_UNSUPPORTED_PROTOCOL_VERSION instead')
  static const ERROR_VMCOMPUTE_UNSUPPORTED_PROTOCOL_VERSION = WIN32_ERROR(
    3224830220,
  );
  @Deprecated('Use ERROR_VMCOMPUTE_INVALID_JSON instead')
  static const ERROR_VMCOMPUTE_INVALID_JSON = 3224830221;
  @Deprecated('Use ERROR_VMCOMPUTE_SYSTEM_NOT_FOUND instead')
  static const ERROR_VMCOMPUTE_SYSTEM_NOT_FOUND = 3224830222;
  @Deprecated('Use ERROR_VMCOMPUTE_SYSTEM_ALREADY_EXISTS instead')
  static const ERROR_VMCOMPUTE_SYSTEM_ALREADY_EXISTS = 3224830223;
  @Deprecated('Use ERROR_VMCOMPUTE_SYSTEM_ALREADY_STOPPED instead')
  static const ERROR_VMCOMPUTE_SYSTEM_ALREADY_STOPPED = 3224830224;
  @Deprecated('Use ERROR_VMCOMPUTE_PROTOCOL_ERROR instead')
  static const ERROR_VMCOMPUTE_PROTOCOL_ERROR = 3224830225;
  @Deprecated('Use ERROR_VMCOMPUTE_INVALID_LAYER instead')
  static const ERROR_VMCOMPUTE_INVALID_LAYER = 3224830226;
  @Deprecated('Use ERROR_VMCOMPUTE_WINDOWS_INSIDER_REQUIRED instead')
  static const ERROR_VMCOMPUTE_WINDOWS_INSIDER_REQUIRED = WIN32_ERROR(
    3224830227,
  );
  @Deprecated('Use ERROR_VNET_VIRTUAL_SWITCH_NAME_NOT_FOUND instead')
  static const ERROR_VNET_VIRTUAL_SWITCH_NAME_NOT_FOUND = WIN32_ERROR(
    3224830464,
  );
  @Deprecated('Use ERROR_VID_REMOTE_NODE_PARENT_GPA_PAGES_USED instead')
  static const ERROR_VID_REMOTE_NODE_PARENT_GPA_PAGES_USED = WIN32_ERROR(
    2151088129,
  );
  @Deprecated('Use ERROR_VSMB_SAVED_STATE_FILE_NOT_FOUND instead')
  static const ERROR_VSMB_SAVED_STATE_FILE_NOT_FOUND = 3224830976;
  @Deprecated('Use ERROR_VSMB_SAVED_STATE_CORRUPT instead')
  static const ERROR_VSMB_SAVED_STATE_CORRUPT = 3224830977;
  @Deprecated('Use ERROR_VOLMGR_INCOMPLETE_REGENERATION instead')
  static const ERROR_VOLMGR_INCOMPLETE_REGENERATION = 2151153665;
  @Deprecated('Use ERROR_VOLMGR_INCOMPLETE_DISK_MIGRATION instead')
  static const ERROR_VOLMGR_INCOMPLETE_DISK_MIGRATION = 2151153666;
  @Deprecated('Use ERROR_VOLMGR_DATABASE_FULL instead')
  static const ERROR_VOLMGR_DATABASE_FULL = 3224895489;
  @Deprecated('Use ERROR_VOLMGR_DISK_CONFIGURATION_CORRUPTED instead')
  static const ERROR_VOLMGR_DISK_CONFIGURATION_CORRUPTED = WIN32_ERROR(
    3224895490,
  );
  @Deprecated('Use ERROR_VOLMGR_DISK_CONFIGURATION_NOT_IN_SYNC instead')
  static const ERROR_VOLMGR_DISK_CONFIGURATION_NOT_IN_SYNC = WIN32_ERROR(
    3224895491,
  );
  @Deprecated('Use ERROR_VOLMGR_PACK_CONFIG_UPDATE_FAILED instead')
  static const ERROR_VOLMGR_PACK_CONFIG_UPDATE_FAILED = 3224895492;
  @Deprecated('Use ERROR_VOLMGR_DISK_CONTAINS_NON_SIMPLE_VOLUME instead')
  static const ERROR_VOLMGR_DISK_CONTAINS_NON_SIMPLE_VOLUME = WIN32_ERROR(
    3224895493,
  );
  @Deprecated('Use ERROR_VOLMGR_DISK_DUPLICATE instead')
  static const ERROR_VOLMGR_DISK_DUPLICATE = 3224895494;
  @Deprecated('Use ERROR_VOLMGR_DISK_DYNAMIC instead')
  static const ERROR_VOLMGR_DISK_DYNAMIC = 3224895495;
  @Deprecated('Use ERROR_VOLMGR_DISK_ID_INVALID instead')
  static const ERROR_VOLMGR_DISK_ID_INVALID = 3224895496;
  @Deprecated('Use ERROR_VOLMGR_DISK_INVALID instead')
  static const ERROR_VOLMGR_DISK_INVALID = 3224895497;
  @Deprecated('Use ERROR_VOLMGR_DISK_LAST_VOTER instead')
  static const ERROR_VOLMGR_DISK_LAST_VOTER = 3224895498;
  @Deprecated('Use ERROR_VOLMGR_DISK_LAYOUT_INVALID instead')
  static const ERROR_VOLMGR_DISK_LAYOUT_INVALID = 3224895499;
  @Deprecated(
    'Use ERROR_VOLMGR_DISK_LAYOUT_NON_BASIC_BETWEEN_BASIC_PARTITIONS instead',
  )
  static const ERROR_VOLMGR_DISK_LAYOUT_NON_BASIC_BETWEEN_BASIC_PARTITIONS =
      WIN32_ERROR(3224895500);
  @Deprecated('Use ERROR_VOLMGR_DISK_LAYOUT_NOT_CYLINDER_ALIGNED instead')
  static const ERROR_VOLMGR_DISK_LAYOUT_NOT_CYLINDER_ALIGNED = WIN32_ERROR(
    3224895501,
  );
  @Deprecated('Use ERROR_VOLMGR_DISK_LAYOUT_PARTITIONS_TOO_SMALL instead')
  static const ERROR_VOLMGR_DISK_LAYOUT_PARTITIONS_TOO_SMALL = WIN32_ERROR(
    3224895502,
  );
  @Deprecated(
    'Use ERROR_VOLMGR_DISK_LAYOUT_PRIMARY_BETWEEN_LOGICAL_PARTITIONS instead',
  )
  static const ERROR_VOLMGR_DISK_LAYOUT_PRIMARY_BETWEEN_LOGICAL_PARTITIONS =
      WIN32_ERROR(3224895503);
  @Deprecated('Use ERROR_VOLMGR_DISK_LAYOUT_TOO_MANY_PARTITIONS instead')
  static const ERROR_VOLMGR_DISK_LAYOUT_TOO_MANY_PARTITIONS = WIN32_ERROR(
    3224895504,
  );
  @Deprecated('Use ERROR_VOLMGR_DISK_MISSING instead')
  static const ERROR_VOLMGR_DISK_MISSING = 3224895505;
  @Deprecated('Use ERROR_VOLMGR_DISK_NOT_EMPTY instead')
  static const ERROR_VOLMGR_DISK_NOT_EMPTY = 3224895506;
  @Deprecated('Use ERROR_VOLMGR_DISK_NOT_ENOUGH_SPACE instead')
  static const ERROR_VOLMGR_DISK_NOT_ENOUGH_SPACE = 3224895507;
  @Deprecated('Use ERROR_VOLMGR_DISK_REVECTORING_FAILED instead')
  static const ERROR_VOLMGR_DISK_REVECTORING_FAILED = 3224895508;
  @Deprecated('Use ERROR_VOLMGR_DISK_SECTOR_SIZE_INVALID instead')
  static const ERROR_VOLMGR_DISK_SECTOR_SIZE_INVALID = 3224895509;
  @Deprecated('Use ERROR_VOLMGR_DISK_SET_NOT_CONTAINED instead')
  static const ERROR_VOLMGR_DISK_SET_NOT_CONTAINED = 3224895510;
  @Deprecated('Use ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_MEMBERS instead')
  static const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_MEMBERS = WIN32_ERROR(
    3224895511,
  );
  @Deprecated('Use ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_PLEXES instead')
  static const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_PLEXES = WIN32_ERROR(
    3224895512,
  );
  @Deprecated('Use ERROR_VOLMGR_DYNAMIC_DISK_NOT_SUPPORTED instead')
  static const ERROR_VOLMGR_DYNAMIC_DISK_NOT_SUPPORTED = WIN32_ERROR(
    3224895513,
  );
  @Deprecated('Use ERROR_VOLMGR_EXTENT_ALREADY_USED instead')
  static const ERROR_VOLMGR_EXTENT_ALREADY_USED = 3224895514;
  @Deprecated('Use ERROR_VOLMGR_EXTENT_NOT_CONTIGUOUS instead')
  static const ERROR_VOLMGR_EXTENT_NOT_CONTIGUOUS = 3224895515;
  @Deprecated('Use ERROR_VOLMGR_EXTENT_NOT_IN_PUBLIC_REGION instead')
  static const ERROR_VOLMGR_EXTENT_NOT_IN_PUBLIC_REGION = WIN32_ERROR(
    3224895516,
  );
  @Deprecated('Use ERROR_VOLMGR_EXTENT_NOT_SECTOR_ALIGNED instead')
  static const ERROR_VOLMGR_EXTENT_NOT_SECTOR_ALIGNED = 3224895517;
  @Deprecated('Use ERROR_VOLMGR_EXTENT_OVERLAPS_EBR_PARTITION instead')
  static const ERROR_VOLMGR_EXTENT_OVERLAPS_EBR_PARTITION = WIN32_ERROR(
    3224895518,
  );
  @Deprecated('Use ERROR_VOLMGR_EXTENT_VOLUME_LENGTHS_DO_NOT_MATCH instead')
  static const ERROR_VOLMGR_EXTENT_VOLUME_LENGTHS_DO_NOT_MATCH = WIN32_ERROR(
    3224895519,
  );
  @Deprecated('Use ERROR_VOLMGR_FAULT_TOLERANT_NOT_SUPPORTED instead')
  static const ERROR_VOLMGR_FAULT_TOLERANT_NOT_SUPPORTED = WIN32_ERROR(
    3224895520,
  );
  @Deprecated('Use ERROR_VOLMGR_INTERLEAVE_LENGTH_INVALID instead')
  static const ERROR_VOLMGR_INTERLEAVE_LENGTH_INVALID = 3224895521;
  @Deprecated('Use ERROR_VOLMGR_MAXIMUM_REGISTERED_USERS instead')
  static const ERROR_VOLMGR_MAXIMUM_REGISTERED_USERS = 3224895522;
  @Deprecated('Use ERROR_VOLMGR_MEMBER_IN_SYNC instead')
  static const ERROR_VOLMGR_MEMBER_IN_SYNC = 3224895523;
  @Deprecated('Use ERROR_VOLMGR_MEMBER_INDEX_DUPLICATE instead')
  static const ERROR_VOLMGR_MEMBER_INDEX_DUPLICATE = 3224895524;
  @Deprecated('Use ERROR_VOLMGR_MEMBER_INDEX_INVALID instead')
  static const ERROR_VOLMGR_MEMBER_INDEX_INVALID = 3224895525;
  @Deprecated('Use ERROR_VOLMGR_MEMBER_MISSING instead')
  static const ERROR_VOLMGR_MEMBER_MISSING = 3224895526;
  @Deprecated('Use ERROR_VOLMGR_MEMBER_NOT_DETACHED instead')
  static const ERROR_VOLMGR_MEMBER_NOT_DETACHED = 3224895527;
  @Deprecated('Use ERROR_VOLMGR_MEMBER_REGENERATING instead')
  static const ERROR_VOLMGR_MEMBER_REGENERATING = 3224895528;
  @Deprecated('Use ERROR_VOLMGR_ALL_DISKS_FAILED instead')
  static const ERROR_VOLMGR_ALL_DISKS_FAILED = 3224895529;
  @Deprecated('Use ERROR_VOLMGR_NO_REGISTERED_USERS instead')
  static const ERROR_VOLMGR_NO_REGISTERED_USERS = 3224895530;
  @Deprecated('Use ERROR_VOLMGR_NO_SUCH_USER instead')
  static const ERROR_VOLMGR_NO_SUCH_USER = 3224895531;
  @Deprecated('Use ERROR_VOLMGR_NOTIFICATION_RESET instead')
  static const ERROR_VOLMGR_NOTIFICATION_RESET = 3224895532;
  @Deprecated('Use ERROR_VOLMGR_NUMBER_OF_MEMBERS_INVALID instead')
  static const ERROR_VOLMGR_NUMBER_OF_MEMBERS_INVALID = 3224895533;
  @Deprecated('Use ERROR_VOLMGR_NUMBER_OF_PLEXES_INVALID instead')
  static const ERROR_VOLMGR_NUMBER_OF_PLEXES_INVALID = 3224895534;
  @Deprecated('Use ERROR_VOLMGR_PACK_DUPLICATE instead')
  static const ERROR_VOLMGR_PACK_DUPLICATE = 3224895535;
  @Deprecated('Use ERROR_VOLMGR_PACK_ID_INVALID instead')
  static const ERROR_VOLMGR_PACK_ID_INVALID = 3224895536;
  @Deprecated('Use ERROR_VOLMGR_PACK_INVALID instead')
  static const ERROR_VOLMGR_PACK_INVALID = 3224895537;
  @Deprecated('Use ERROR_VOLMGR_PACK_NAME_INVALID instead')
  static const ERROR_VOLMGR_PACK_NAME_INVALID = 3224895538;
  @Deprecated('Use ERROR_VOLMGR_PACK_OFFLINE instead')
  static const ERROR_VOLMGR_PACK_OFFLINE = 3224895539;
  @Deprecated('Use ERROR_VOLMGR_PACK_HAS_QUORUM instead')
  static const ERROR_VOLMGR_PACK_HAS_QUORUM = 3224895540;
  @Deprecated('Use ERROR_VOLMGR_PACK_WITHOUT_QUORUM instead')
  static const ERROR_VOLMGR_PACK_WITHOUT_QUORUM = 3224895541;
  @Deprecated('Use ERROR_VOLMGR_PARTITION_STYLE_INVALID instead')
  static const ERROR_VOLMGR_PARTITION_STYLE_INVALID = 3224895542;
  @Deprecated('Use ERROR_VOLMGR_PARTITION_UPDATE_FAILED instead')
  static const ERROR_VOLMGR_PARTITION_UPDATE_FAILED = 3224895543;
  @Deprecated('Use ERROR_VOLMGR_PLEX_IN_SYNC instead')
  static const ERROR_VOLMGR_PLEX_IN_SYNC = 3224895544;
  @Deprecated('Use ERROR_VOLMGR_PLEX_INDEX_DUPLICATE instead')
  static const ERROR_VOLMGR_PLEX_INDEX_DUPLICATE = 3224895545;
  @Deprecated('Use ERROR_VOLMGR_PLEX_INDEX_INVALID instead')
  static const ERROR_VOLMGR_PLEX_INDEX_INVALID = 3224895546;
  @Deprecated('Use ERROR_VOLMGR_PLEX_LAST_ACTIVE instead')
  static const ERROR_VOLMGR_PLEX_LAST_ACTIVE = 3224895547;
  @Deprecated('Use ERROR_VOLMGR_PLEX_MISSING instead')
  static const ERROR_VOLMGR_PLEX_MISSING = 3224895548;
  @Deprecated('Use ERROR_VOLMGR_PLEX_REGENERATING instead')
  static const ERROR_VOLMGR_PLEX_REGENERATING = 3224895549;
  @Deprecated('Use ERROR_VOLMGR_PLEX_TYPE_INVALID instead')
  static const ERROR_VOLMGR_PLEX_TYPE_INVALID = 3224895550;
  @Deprecated('Use ERROR_VOLMGR_PLEX_NOT_RAID5 instead')
  static const ERROR_VOLMGR_PLEX_NOT_RAID5 = 3224895551;
  @Deprecated('Use ERROR_VOLMGR_PLEX_NOT_SIMPLE instead')
  static const ERROR_VOLMGR_PLEX_NOT_SIMPLE = 3224895552;
  @Deprecated('Use ERROR_VOLMGR_STRUCTURE_SIZE_INVALID instead')
  static const ERROR_VOLMGR_STRUCTURE_SIZE_INVALID = 3224895553;
  @Deprecated('Use ERROR_VOLMGR_TOO_MANY_NOTIFICATION_REQUESTS instead')
  static const ERROR_VOLMGR_TOO_MANY_NOTIFICATION_REQUESTS = WIN32_ERROR(
    3224895554,
  );
  @Deprecated('Use ERROR_VOLMGR_TRANSACTION_IN_PROGRESS instead')
  static const ERROR_VOLMGR_TRANSACTION_IN_PROGRESS = 3224895555;
  @Deprecated('Use ERROR_VOLMGR_UNEXPECTED_DISK_LAYOUT_CHANGE instead')
  static const ERROR_VOLMGR_UNEXPECTED_DISK_LAYOUT_CHANGE = WIN32_ERROR(
    3224895556,
  );
  @Deprecated('Use ERROR_VOLMGR_VOLUME_CONTAINS_MISSING_DISK instead')
  static const ERROR_VOLMGR_VOLUME_CONTAINS_MISSING_DISK = WIN32_ERROR(
    3224895557,
  );
  @Deprecated('Use ERROR_VOLMGR_VOLUME_ID_INVALID instead')
  static const ERROR_VOLMGR_VOLUME_ID_INVALID = 3224895558;
  @Deprecated('Use ERROR_VOLMGR_VOLUME_LENGTH_INVALID instead')
  static const ERROR_VOLMGR_VOLUME_LENGTH_INVALID = 3224895559;
  @Deprecated('Use ERROR_VOLMGR_VOLUME_LENGTH_NOT_SECTOR_SIZE_MULTIPLE instead')
  static const ERROR_VOLMGR_VOLUME_LENGTH_NOT_SECTOR_SIZE_MULTIPLE =
      WIN32_ERROR(3224895560);
  @Deprecated('Use ERROR_VOLMGR_VOLUME_NOT_MIRRORED instead')
  static const ERROR_VOLMGR_VOLUME_NOT_MIRRORED = 3224895561;
  @Deprecated('Use ERROR_VOLMGR_VOLUME_NOT_RETAINED instead')
  static const ERROR_VOLMGR_VOLUME_NOT_RETAINED = 3224895562;
  @Deprecated('Use ERROR_VOLMGR_VOLUME_OFFLINE instead')
  static const ERROR_VOLMGR_VOLUME_OFFLINE = 3224895563;
  @Deprecated('Use ERROR_VOLMGR_VOLUME_RETAINED instead')
  static const ERROR_VOLMGR_VOLUME_RETAINED = 3224895564;
  @Deprecated('Use ERROR_VOLMGR_NUMBER_OF_EXTENTS_INVALID instead')
  static const ERROR_VOLMGR_NUMBER_OF_EXTENTS_INVALID = 3224895565;
  @Deprecated('Use ERROR_VOLMGR_DIFFERENT_SECTOR_SIZE instead')
  static const ERROR_VOLMGR_DIFFERENT_SECTOR_SIZE = 3224895566;
  @Deprecated('Use ERROR_VOLMGR_BAD_BOOT_DISK instead')
  static const ERROR_VOLMGR_BAD_BOOT_DISK = 3224895567;
  @Deprecated('Use ERROR_VOLMGR_PACK_CONFIG_OFFLINE instead')
  static const ERROR_VOLMGR_PACK_CONFIG_OFFLINE = 3224895568;
  @Deprecated('Use ERROR_VOLMGR_PACK_CONFIG_ONLINE instead')
  static const ERROR_VOLMGR_PACK_CONFIG_ONLINE = 3224895569;
  @Deprecated('Use ERROR_VOLMGR_NOT_PRIMARY_PACK instead')
  static const ERROR_VOLMGR_NOT_PRIMARY_PACK = 3224895570;
  @Deprecated('Use ERROR_VOLMGR_PACK_LOG_UPDATE_FAILED instead')
  static const ERROR_VOLMGR_PACK_LOG_UPDATE_FAILED = 3224895571;
  @Deprecated('Use ERROR_VOLMGR_NUMBER_OF_DISKS_IN_PLEX_INVALID instead')
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_PLEX_INVALID = WIN32_ERROR(
    3224895572,
  );
  @Deprecated('Use ERROR_VOLMGR_NUMBER_OF_DISKS_IN_MEMBER_INVALID instead')
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_MEMBER_INVALID = WIN32_ERROR(
    3224895573,
  );
  @Deprecated('Use ERROR_VOLMGR_VOLUME_MIRRORED instead')
  static const ERROR_VOLMGR_VOLUME_MIRRORED = 3224895574;
  @Deprecated('Use ERROR_VOLMGR_PLEX_NOT_SIMPLE_SPANNED instead')
  static const ERROR_VOLMGR_PLEX_NOT_SIMPLE_SPANNED = 3224895575;
  @Deprecated('Use ERROR_VOLMGR_NO_VALID_LOG_COPIES instead')
  static const ERROR_VOLMGR_NO_VALID_LOG_COPIES = 3224895576;
  @Deprecated('Use ERROR_VOLMGR_PRIMARY_PACK_PRESENT instead')
  static const ERROR_VOLMGR_PRIMARY_PACK_PRESENT = 3224895577;
  @Deprecated('Use ERROR_VOLMGR_NUMBER_OF_DISKS_INVALID instead')
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_INVALID = 3224895578;
  @Deprecated('Use ERROR_VOLMGR_MIRROR_NOT_SUPPORTED instead')
  static const ERROR_VOLMGR_MIRROR_NOT_SUPPORTED = 3224895579;
  @Deprecated('Use ERROR_VOLMGR_RAID5_NOT_SUPPORTED instead')
  static const ERROR_VOLMGR_RAID5_NOT_SUPPORTED = 3224895580;
  @Deprecated('Use ERROR_BCD_NOT_ALL_ENTRIES_IMPORTED instead')
  static const ERROR_BCD_NOT_ALL_ENTRIES_IMPORTED = 2151219201;
  @Deprecated('Use ERROR_BCD_TOO_MANY_ELEMENTS instead')
  static const ERROR_BCD_TOO_MANY_ELEMENTS = 3224961026;
  @Deprecated('Use ERROR_BCD_NOT_ALL_ENTRIES_SYNCHRONIZED instead')
  static const ERROR_BCD_NOT_ALL_ENTRIES_SYNCHRONIZED = 2151219203;
  @Deprecated('Use ERROR_VHD_DRIVE_FOOTER_MISSING instead')
  static const ERROR_VHD_DRIVE_FOOTER_MISSING = 3225026561;
  @Deprecated('Use ERROR_VHD_DRIVE_FOOTER_CHECKSUM_MISMATCH instead')
  static const ERROR_VHD_DRIVE_FOOTER_CHECKSUM_MISMATCH = WIN32_ERROR(
    3225026562,
  );
  @Deprecated('Use ERROR_VHD_DRIVE_FOOTER_CORRUPT instead')
  static const ERROR_VHD_DRIVE_FOOTER_CORRUPT = 3225026563;
  @Deprecated('Use ERROR_VHD_FORMAT_UNKNOWN instead')
  static const ERROR_VHD_FORMAT_UNKNOWN = 3225026564;
  @Deprecated('Use ERROR_VHD_FORMAT_UNSUPPORTED_VERSION instead')
  static const ERROR_VHD_FORMAT_UNSUPPORTED_VERSION = 3225026565;
  @Deprecated('Use ERROR_VHD_SPARSE_HEADER_CHECKSUM_MISMATCH instead')
  static const ERROR_VHD_SPARSE_HEADER_CHECKSUM_MISMATCH = WIN32_ERROR(
    3225026566,
  );
  @Deprecated('Use ERROR_VHD_SPARSE_HEADER_UNSUPPORTED_VERSION instead')
  static const ERROR_VHD_SPARSE_HEADER_UNSUPPORTED_VERSION = WIN32_ERROR(
    3225026567,
  );
  @Deprecated('Use ERROR_VHD_SPARSE_HEADER_CORRUPT instead')
  static const ERROR_VHD_SPARSE_HEADER_CORRUPT = 3225026568;
  @Deprecated('Use ERROR_VHD_BLOCK_ALLOCATION_FAILURE instead')
  static const ERROR_VHD_BLOCK_ALLOCATION_FAILURE = 3225026569;
  @Deprecated('Use ERROR_VHD_BLOCK_ALLOCATION_TABLE_CORRUPT instead')
  static const ERROR_VHD_BLOCK_ALLOCATION_TABLE_CORRUPT = WIN32_ERROR(
    3225026570,
  );
  @Deprecated('Use ERROR_VHD_INVALID_BLOCK_SIZE instead')
  static const ERROR_VHD_INVALID_BLOCK_SIZE = 3225026571;
  @Deprecated('Use ERROR_VHD_BITMAP_MISMATCH instead')
  static const ERROR_VHD_BITMAP_MISMATCH = 3225026572;
  @Deprecated('Use ERROR_VHD_PARENT_VHD_NOT_FOUND instead')
  static const ERROR_VHD_PARENT_VHD_NOT_FOUND = 3225026573;
  @Deprecated('Use ERROR_VHD_CHILD_PARENT_ID_MISMATCH instead')
  static const ERROR_VHD_CHILD_PARENT_ID_MISMATCH = 3225026574;
  @Deprecated('Use ERROR_VHD_CHILD_PARENT_TIMESTAMP_MISMATCH instead')
  static const ERROR_VHD_CHILD_PARENT_TIMESTAMP_MISMATCH = WIN32_ERROR(
    3225026575,
  );
  @Deprecated('Use ERROR_VHD_METADATA_READ_FAILURE instead')
  static const ERROR_VHD_METADATA_READ_FAILURE = 3225026576;
  @Deprecated('Use ERROR_VHD_METADATA_WRITE_FAILURE instead')
  static const ERROR_VHD_METADATA_WRITE_FAILURE = 3225026577;
  @Deprecated('Use ERROR_VHD_INVALID_SIZE instead')
  static const ERROR_VHD_INVALID_SIZE = 3225026578;
  @Deprecated('Use ERROR_VHD_INVALID_FILE_SIZE instead')
  static const ERROR_VHD_INVALID_FILE_SIZE = 3225026579;
  @Deprecated('Use ERROR_VIRTDISK_PROVIDER_NOT_FOUND instead')
  static const ERROR_VIRTDISK_PROVIDER_NOT_FOUND = 3225026580;
  @Deprecated('Use ERROR_VIRTDISK_NOT_VIRTUAL_DISK instead')
  static const ERROR_VIRTDISK_NOT_VIRTUAL_DISK = 3225026581;
  @Deprecated('Use ERROR_VHD_PARENT_VHD_ACCESS_DENIED instead')
  static const ERROR_VHD_PARENT_VHD_ACCESS_DENIED = 3225026582;
  @Deprecated('Use ERROR_VHD_CHILD_PARENT_SIZE_MISMATCH instead')
  static const ERROR_VHD_CHILD_PARENT_SIZE_MISMATCH = 3225026583;
  @Deprecated('Use ERROR_VHD_DIFFERENCING_CHAIN_CYCLE_DETECTED instead')
  static const ERROR_VHD_DIFFERENCING_CHAIN_CYCLE_DETECTED = WIN32_ERROR(
    3225026584,
  );
  @Deprecated('Use ERROR_VHD_DIFFERENCING_CHAIN_ERROR_IN_PARENT instead')
  static const ERROR_VHD_DIFFERENCING_CHAIN_ERROR_IN_PARENT = WIN32_ERROR(
    3225026585,
  );
  @Deprecated('Use ERROR_VIRTUAL_DISK_LIMITATION instead')
  static const ERROR_VIRTUAL_DISK_LIMITATION = 3225026586;
  @Deprecated('Use ERROR_VHD_INVALID_TYPE instead')
  static const ERROR_VHD_INVALID_TYPE = 3225026587;
  @Deprecated('Use ERROR_VHD_INVALID_STATE instead')
  static const ERROR_VHD_INVALID_STATE = 3225026588;
  @Deprecated('Use ERROR_VIRTDISK_UNSUPPORTED_DISK_SECTOR_SIZE instead')
  static const ERROR_VIRTDISK_UNSUPPORTED_DISK_SECTOR_SIZE = WIN32_ERROR(
    3225026589,
  );
  @Deprecated('Use ERROR_VIRTDISK_DISK_ALREADY_OWNED instead')
  static const ERROR_VIRTDISK_DISK_ALREADY_OWNED = 3225026590;
  @Deprecated('Use ERROR_VIRTDISK_DISK_ONLINE_AND_WRITABLE instead')
  static const ERROR_VIRTDISK_DISK_ONLINE_AND_WRITABLE = WIN32_ERROR(
    3225026591,
  );
  @Deprecated('Use ERROR_CTLOG_TRACKING_NOT_INITIALIZED instead')
  static const ERROR_CTLOG_TRACKING_NOT_INITIALIZED = 3225026592;
  @Deprecated('Use ERROR_CTLOG_LOGFILE_SIZE_EXCEEDED_MAXSIZE instead')
  static const ERROR_CTLOG_LOGFILE_SIZE_EXCEEDED_MAXSIZE = WIN32_ERROR(
    3225026593,
  );
  @Deprecated('Use ERROR_CTLOG_VHD_CHANGED_OFFLINE instead')
  static const ERROR_CTLOG_VHD_CHANGED_OFFLINE = 3225026594;
  @Deprecated('Use ERROR_CTLOG_INVALID_TRACKING_STATE instead')
  static const ERROR_CTLOG_INVALID_TRACKING_STATE = 3225026595;
  @Deprecated('Use ERROR_CTLOG_INCONSISTENT_TRACKING_FILE instead')
  static const ERROR_CTLOG_INCONSISTENT_TRACKING_FILE = 3225026596;
  @Deprecated('Use ERROR_VHD_RESIZE_WOULD_TRUNCATE_DATA instead')
  static const ERROR_VHD_RESIZE_WOULD_TRUNCATE_DATA = 3225026597;
  @Deprecated('Use ERROR_VHD_COULD_NOT_COMPUTE_MINIMUM_VIRTUAL_SIZE instead')
  static const ERROR_VHD_COULD_NOT_COMPUTE_MINIMUM_VIRTUAL_SIZE = WIN32_ERROR(
    3225026598,
  );
  @Deprecated('Use ERROR_VHD_ALREADY_AT_OR_BELOW_MINIMUM_VIRTUAL_SIZE instead')
  static const ERROR_VHD_ALREADY_AT_OR_BELOW_MINIMUM_VIRTUAL_SIZE = WIN32_ERROR(
    3225026599,
  );
  @Deprecated('Use ERROR_VHD_METADATA_FULL instead')
  static const ERROR_VHD_METADATA_FULL = 3225026600;
  @Deprecated('Use ERROR_VHD_INVALID_CHANGE_TRACKING_ID instead')
  static const ERROR_VHD_INVALID_CHANGE_TRACKING_ID = 3225026601;
  @Deprecated('Use ERROR_VHD_CHANGE_TRACKING_DISABLED instead')
  static const ERROR_VHD_CHANGE_TRACKING_DISABLED = 3225026602;
  @Deprecated('Use ERROR_VHD_MISSING_CHANGE_TRACKING_INFORMATION instead')
  static const ERROR_VHD_MISSING_CHANGE_TRACKING_INFORMATION = WIN32_ERROR(
    3225026608,
  );
  @Deprecated('Use ERROR_VHD_UNEXPECTED_ID instead')
  static const ERROR_VHD_UNEXPECTED_ID = 3225026612;
  @Deprecated('Use ERROR_QUERY_STORAGE_ERROR instead')
  static const ERROR_QUERY_STORAGE_ERROR = 2151284737;
}

/// {@category enum}
extension type const WINDOWPLACEMENT_FLAGS(int _) implements int {
  @Deprecated('Use WPF_ASYNCWINDOWPLACEMENT instead')
  static const WPF_ASYNCWINDOWPLACEMENT = 4;
  @Deprecated('Use WPF_RESTORETOMAXIMIZED instead')
  static const WPF_RESTORETOMAXIMIZED = 2;
  @Deprecated('Use WPF_SETMINPOSITION instead')
  static const WPF_SETMINPOSITION = 1;
}

/// {@category enum}
extension type const WINDOWS_HOOK_ID(int _) implements int {
  @Deprecated('Use WH_CALLWNDPROC instead')
  static const WH_CALLWNDPROC = 4;
  @Deprecated('Use WH_CALLWNDPROCRET instead')
  static const WH_CALLWNDPROCRET = 12;
  @Deprecated('Use WH_CBT instead')
  static const WH_CBT = 5;
  @Deprecated('Use WH_DEBUG instead')
  static const WH_DEBUG = 9;
  @Deprecated('Use WH_FOREGROUNDIDLE instead')
  static const WH_FOREGROUNDIDLE = 11;
  @Deprecated('Use WH_GETMESSAGE instead')
  static const WH_GETMESSAGE = 3;
  @Deprecated('Use WH_JOURNALPLAYBACK instead')
  static const WH_JOURNALPLAYBACK = 1;
  @Deprecated('Use WH_JOURNALRECORD instead')
  static const WH_JOURNALRECORD = 0;
  @Deprecated('Use WH_KEYBOARD instead')
  static const WH_KEYBOARD = 2;
  @Deprecated('Use WH_KEYBOARD_LL instead')
  static const WH_KEYBOARD_LL = 13;
  @Deprecated('Use WH_MOUSE instead')
  static const WH_MOUSE = 7;
  @Deprecated('Use WH_MOUSE_LL instead')
  static const WH_MOUSE_LL = 14;
  @Deprecated('Use WH_MSGFILTER instead')
  static const WH_MSGFILTER = WINDOWS_HOOK_ID(-1);
  @Deprecated('Use WH_SHELL instead')
  static const WH_SHELL = 10;
  @Deprecated('Use WH_SYSMSGFILTER instead')
  static const WH_SYSMSGFILTER = 6;
}

/// {@category enum}
extension type const WINDOW_DISPLAY_AFFINITY(int _) implements int {
  @Deprecated('Use WDA_NONE instead')
  static const WDA_NONE = 0;
  @Deprecated('Use WDA_MONITOR instead')
  static const WDA_MONITOR = 1;
  @Deprecated('Use WDA_EXCLUDEFROMCAPTURE instead')
  static const WDA_EXCLUDEFROMCAPTURE = 17;
}

/// {@category enum}
extension type const WINDOW_EX_STYLE(int _) implements int {
  @Deprecated('Use WS_EX_DLGMODALFRAME instead')
  static const WS_EX_DLGMODALFRAME = 1;
  @Deprecated('Use WS_EX_NOPARENTNOTIFY instead')
  static const WS_EX_NOPARENTNOTIFY = 4;
  @Deprecated('Use WS_EX_TOPMOST instead')
  static const WS_EX_TOPMOST = 8;
  @Deprecated('Use WS_EX_ACCEPTFILES instead')
  static const WS_EX_ACCEPTFILES = 16;
  @Deprecated('Use WS_EX_TRANSPARENT instead')
  static const WS_EX_TRANSPARENT = 32;
  @Deprecated('Use WS_EX_MDICHILD instead')
  static const WS_EX_MDICHILD = 64;
  @Deprecated('Use WS_EX_TOOLWINDOW instead')
  static const WS_EX_TOOLWINDOW = 128;
  @Deprecated('Use WS_EX_WINDOWEDGE instead')
  static const WS_EX_WINDOWEDGE = 256;
  @Deprecated('Use WS_EX_CLIENTEDGE instead')
  static const WS_EX_CLIENTEDGE = 512;
  @Deprecated('Use WS_EX_CONTEXTHELP instead')
  static const WS_EX_CONTEXTHELP = 1024;
  @Deprecated('Use WS_EX_RIGHT instead')
  static const WS_EX_RIGHT = 4096;
  @Deprecated('Use WS_EX_LEFT instead')
  static const WS_EX_LEFT = 0;
  @Deprecated('Use WS_EX_RTLREADING instead')
  static const WS_EX_RTLREADING = 8192;
  @Deprecated('Use WS_EX_LTRREADING instead')
  static const WS_EX_LTRREADING = 0;
  @Deprecated('Use WS_EX_LEFTSCROLLBAR instead')
  static const WS_EX_LEFTSCROLLBAR = 16384;
  @Deprecated('Use WS_EX_RIGHTSCROLLBAR instead')
  static const WS_EX_RIGHTSCROLLBAR = 0;
  @Deprecated('Use WS_EX_CONTROLPARENT instead')
  static const WS_EX_CONTROLPARENT = 65536;
  @Deprecated('Use WS_EX_STATICEDGE instead')
  static const WS_EX_STATICEDGE = 131072;
  @Deprecated('Use WS_EX_APPWINDOW instead')
  static const WS_EX_APPWINDOW = 262144;
  @Deprecated('Use WS_EX_OVERLAPPEDWINDOW instead')
  static const WS_EX_OVERLAPPEDWINDOW = 768;
  @Deprecated('Use WS_EX_PALETTEWINDOW instead')
  static const WS_EX_PALETTEWINDOW = 392;
  @Deprecated('Use WS_EX_LAYERED instead')
  static const WS_EX_LAYERED = 524288;
  @Deprecated('Use WS_EX_NOINHERITLAYOUT instead')
  static const WS_EX_NOINHERITLAYOUT = 1048576;
  @Deprecated('Use WS_EX_NOREDIRECTIONBITMAP instead')
  static const WS_EX_NOREDIRECTIONBITMAP = 2097152;
  @Deprecated('Use WS_EX_LAYOUTRTL instead')
  static const WS_EX_LAYOUTRTL = 4194304;
  @Deprecated('Use WS_EX_COMPOSITED instead')
  static const WS_EX_COMPOSITED = 33554432;
  @Deprecated('Use WS_EX_NOACTIVATE instead')
  static const WS_EX_NOACTIVATE = 134217728;
}

/// {@category enum}
extension type const WINDOW_LONG_PTR_INDEX(int _) implements int {
  @Deprecated('Use GWL_EXSTYLE instead')
  static const GWL_EXSTYLE = WINDOW_LONG_PTR_INDEX(-20);
  @Deprecated('Use GWLP_HINSTANCE instead')
  static const GWLP_HINSTANCE = WINDOW_LONG_PTR_INDEX(-6);
  @Deprecated('Use GWLP_HWNDPARENT instead')
  static const GWLP_HWNDPARENT = WINDOW_LONG_PTR_INDEX(-8);
  @Deprecated('Use GWLP_ID instead')
  static const GWLP_ID = WINDOW_LONG_PTR_INDEX(-12);
  @Deprecated('Use GWL_STYLE instead')
  static const GWL_STYLE = WINDOW_LONG_PTR_INDEX(-16);
  @Deprecated('Use GWLP_USERDATA instead')
  static const GWLP_USERDATA = WINDOW_LONG_PTR_INDEX(-21);
  @Deprecated('Use GWLP_WNDPROC instead')
  static const GWLP_WNDPROC = WINDOW_LONG_PTR_INDEX(-4);
  @Deprecated('Use GWL_HINSTANCE instead')
  static const GWL_HINSTANCE = WINDOW_LONG_PTR_INDEX(-6);
  @Deprecated('Use GWL_ID instead')
  static const GWL_ID = WINDOW_LONG_PTR_INDEX(-12);
  @Deprecated('Use GWL_USERDATA instead')
  static const GWL_USERDATA = WINDOW_LONG_PTR_INDEX(-21);
  @Deprecated('Use GWL_WNDPROC instead')
  static const GWL_WNDPROC = WINDOW_LONG_PTR_INDEX(-4);
  @Deprecated('Use GWL_HWNDPARENT instead')
  static const GWL_HWNDPARENT = WINDOW_LONG_PTR_INDEX(-8);
}

/// {@category enum}
extension type const WINDOW_MESSAGE_FILTER_ACTION(int _) implements int {
  @Deprecated('Use MSGFLT_ALLOW instead')
  static const MSGFLT_ALLOW = 1;
  @Deprecated('Use MSGFLT_DISALLOW instead')
  static const MSGFLT_DISALLOW = 2;
  @Deprecated('Use MSGFLT_RESET instead')
  static const MSGFLT_RESET = 0;
}

/// {@category enum}
extension type const WINDOW_STYLE(int _) implements int {
  @Deprecated('Use WS_OVERLAPPED instead')
  static const WS_OVERLAPPED = 0;
  @Deprecated('Use WS_POPUP instead')
  static const WS_POPUP = 2147483648;
  @Deprecated('Use WS_CHILD instead')
  static const WS_CHILD = 1073741824;
  @Deprecated('Use WS_MINIMIZE instead')
  static const WS_MINIMIZE = 536870912;
  @Deprecated('Use WS_VISIBLE instead')
  static const WS_VISIBLE = 268435456;
  @Deprecated('Use WS_DISABLED instead')
  static const WS_DISABLED = 134217728;
  @Deprecated('Use WS_CLIPSIBLINGS instead')
  static const WS_CLIPSIBLINGS = 67108864;
  @Deprecated('Use WS_CLIPCHILDREN instead')
  static const WS_CLIPCHILDREN = 33554432;
  @Deprecated('Use WS_MAXIMIZE instead')
  static const WS_MAXIMIZE = 16777216;
  @Deprecated('Use WS_CAPTION instead')
  static const WS_CAPTION = 12582912;
  @Deprecated('Use WS_BORDER instead')
  static const WS_BORDER = 8388608;
  @Deprecated('Use WS_DLGFRAME instead')
  static const WS_DLGFRAME = 4194304;
  @Deprecated('Use WS_VSCROLL instead')
  static const WS_VSCROLL = 2097152;
  @Deprecated('Use WS_HSCROLL instead')
  static const WS_HSCROLL = 1048576;
  @Deprecated('Use WS_SYSMENU instead')
  static const WS_SYSMENU = 524288;
  @Deprecated('Use WS_THICKFRAME instead')
  static const WS_THICKFRAME = 262144;
  @Deprecated('Use WS_GROUP instead')
  static const WS_GROUP = 131072;
  @Deprecated('Use WS_TABSTOP instead')
  static const WS_TABSTOP = 65536;
  @Deprecated('Use WS_MINIMIZEBOX instead')
  static const WS_MINIMIZEBOX = 131072;
  @Deprecated('Use WS_MAXIMIZEBOX instead')
  static const WS_MAXIMIZEBOX = 65536;
  @Deprecated('Use WS_TILED instead')
  static const WS_TILED = 0;
  @Deprecated('Use WS_ICONIC instead')
  static const WS_ICONIC = 536870912;
  @Deprecated('Use WS_SIZEBOX instead')
  static const WS_SIZEBOX = 262144;
  @Deprecated('Use WS_TILEDWINDOW instead')
  static const WS_TILEDWINDOW = 13565952;
  @Deprecated('Use WS_OVERLAPPEDWINDOW instead')
  static const WS_OVERLAPPEDWINDOW = 13565952;
  @Deprecated('Use WS_POPUPWINDOW instead')
  static const WS_POPUPWINDOW = 2156396544;
  @Deprecated('Use WS_CHILDWINDOW instead')
  static const WS_CHILDWINDOW = 1073741824;
  @Deprecated('Use WS_ACTIVECAPTION instead')
  static const WS_ACTIVECAPTION = 1;
}

/// {@category enum}
extension type const WINSOCK_SHUTDOWN_HOW(int _) implements int {
  @Deprecated('Use SD_RECEIVE instead')
  static const SD_RECEIVE = 0;
  @Deprecated('Use SD_SEND instead')
  static const SD_SEND = 1;
  @Deprecated('Use SD_BOTH instead')
  static const SD_BOTH = 2;
}

/// {@category enum}
extension type const WINSOCK_SOCKET_TYPE(int _) implements int {
  @Deprecated('Use SOCK_STREAM instead')
  static const SOCK_STREAM = 1;
  @Deprecated('Use SOCK_DGRAM instead')
  static const SOCK_DGRAM = 2;
  @Deprecated('Use SOCK_RAW instead')
  static const SOCK_RAW = 3;
  @Deprecated('Use SOCK_RDM instead')
  static const SOCK_RDM = 4;
  @Deprecated('Use SOCK_SEQPACKET instead')
  static const SOCK_SEQPACKET = 5;
}

/// Specifies an automatic configuration parameter.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_autoconf_opcode~r1>.
///
/// {@category enum}
extension type const WLAN_AUTOCONF_OPCODE(int _) implements int {
  @Deprecated('Use wlan_autoconf_opcode_start instead')
  static const wlan_autoconf_opcode_start = 0;

  /// The opcode used to set or query the parameter specifying whether user and
  /// group policy denied networks will be included in the available networks
  /// list.
  @Deprecated('Use wlan_autoconf_opcode_show_denied_networks instead')
  static const wlan_autoconf_opcode_show_denied_networks = WLAN_AUTOCONF_OPCODE(
    1,
  );

  /// The opcode used to query the power settings.
  @Deprecated('Use wlan_autoconf_opcode_power_setting instead')
  static const wlan_autoconf_opcode_power_setting = 2;

  /// The opcode used to query whether profiles not created by group policy can
  /// be used to connect to an allowed network with a matching group policy
  /// profile.
  @Deprecated(
    'Use wlan_autoconf_opcode_only_use_gp_profiles_for_allowed_networks instead',
  )
  static const wlan_autoconf_opcode_only_use_gp_profiles_for_allowed_networks =
      WLAN_AUTOCONF_OPCODE(3);

  /// The opcode used to set or query whether the current wireless interface has
  /// shared user credentials allowed.
  @Deprecated('Use wlan_autoconf_opcode_allow_explicit_creds instead')
  static const wlan_autoconf_opcode_allow_explicit_creds = WLAN_AUTOCONF_OPCODE(
    4,
  );

  /// The opcode used to set or query the blocked period setting for the current
  /// wireless interface.
  @Deprecated('Use wlan_autoconf_opcode_block_period instead')
  static const wlan_autoconf_opcode_block_period = 5;

  /// The opcode used to set or query whether extensibility on a virtual station
  /// is allowed.
  @Deprecated(
    'Use wlan_autoconf_opcode_allow_virtual_station_extensibility instead',
  )
  static const wlan_autoconf_opcode_allow_virtual_station_extensibility =
      WLAN_AUTOCONF_OPCODE(6);
  @Deprecated('Use wlan_autoconf_opcode_end instead')
  static const wlan_autoconf_opcode_end = 7;
}

/// Defines the mode of connection.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_connection_mode>.
///
/// {@category enum}
extension type const WLAN_CONNECTION_MODE(int _) implements int {
  /// A profile will be used to make the connection.
  @Deprecated('Use wlan_connection_mode_profile instead')
  static const wlan_connection_mode_profile = 0;

  /// A temporary profile will be used to make the connection.
  @Deprecated('Use wlan_connection_mode_temporary_profile instead')
  static const wlan_connection_mode_temporary_profile = 1;

  /// Secure discovery will be used to make the connection.
  @Deprecated('Use wlan_connection_mode_discovery_secure instead')
  static const wlan_connection_mode_discovery_secure = 2;

  /// Unsecure discovery will be used to make the connection.
  @Deprecated('Use wlan_connection_mode_discovery_unsecure instead')
  static const wlan_connection_mode_discovery_unsecure = WLAN_CONNECTION_MODE(
    3,
  );

  /// The connection is initiated by the wireless service automatically using a
  /// persistent profile.
  @Deprecated('Use wlan_connection_mode_auto instead')
  static const wlan_connection_mode_auto = 4;
  @Deprecated('Use wlan_connection_mode_invalid instead')
  static const wlan_connection_mode_invalid = 5;
}

/// {@category enum}
extension type const WLAN_CONNECTION_NOTIFICATION_FLAGS(int _) implements int {
  @Deprecated('Use WLAN_CONNECTION_NOTIFICATION_ADHOC_NETWORK_FORMED instead')
  static const WLAN_CONNECTION_NOTIFICATION_ADHOC_NETWORK_FORMED =
      WLAN_CONNECTION_NOTIFICATION_FLAGS(1);
  @Deprecated('Use WLAN_CONNECTION_NOTIFICATION_CONSOLE_USER_PROFILE instead')
  static const WLAN_CONNECTION_NOTIFICATION_CONSOLE_USER_PROFILE =
      WLAN_CONNECTION_NOTIFICATION_FLAGS(4);
}

/// Indicates types of filter lists.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_filter_list_type>.
///
/// {@category enum}
extension type const WLAN_FILTER_LIST_TYPE(int _) implements int {
  /// Group policy permit list.
  @Deprecated('Use wlan_filter_list_type_gp_permit instead')
  static const wlan_filter_list_type_gp_permit = 0;

  /// Group policy deny list.
  @Deprecated('Use wlan_filter_list_type_gp_deny instead')
  static const wlan_filter_list_type_gp_deny = 1;

  /// User permit list.
  @Deprecated('Use wlan_filter_list_type_user_permit instead')
  static const wlan_filter_list_type_user_permit = 2;

  /// User deny list.
  @Deprecated('Use wlan_filter_list_type_user_deny instead')
  static const wlan_filter_list_type_user_deny = 3;
}

/// Specifies the possible values of the operation code for the properties to
/// query or set on the wireless Hosted Network.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_opcode>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_OPCODE(int _) implements int {
  /// The opcode used to query or set the wireless Hosted Network connection
  /// settings.
  @Deprecated('Use wlan_hosted_network_opcode_connection_settings instead')
  static const wlan_hosted_network_opcode_connection_settings =
      WLAN_HOSTED_NETWORK_OPCODE(0);

  /// The opcode used to query the wireless Hosted Network security settings.
  @Deprecated('Use wlan_hosted_network_opcode_security_settings instead')
  static const wlan_hosted_network_opcode_security_settings =
      WLAN_HOSTED_NETWORK_OPCODE(1);

  /// The opcode used to query the wireless Hosted Network station profile.
  @Deprecated('Use wlan_hosted_network_opcode_station_profile instead')
  static const wlan_hosted_network_opcode_station_profile =
      WLAN_HOSTED_NETWORK_OPCODE(2);

  /// The opcode used to query or set the wireless Hosted Network enabled flag.
  @Deprecated('Use wlan_hosted_network_opcode_enable instead')
  static const wlan_hosted_network_opcode_enable = WLAN_HOSTED_NETWORK_OPCODE(
    3,
  );
}

/// Specifies the possible values for the authentication state of a peer on the
/// wireless Hosted Network.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_peer_auth_state>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(int _) implements int {
  /// An invalid peer state.
  @Deprecated('Use wlan_hosted_network_peer_state_invalid instead')
  static const wlan_hosted_network_peer_state_invalid =
      WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(0);

  /// The peer is authenticated.
  @Deprecated('Use wlan_hosted_network_peer_state_authenticated instead')
  static const wlan_hosted_network_peer_state_authenticated =
      WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(1);
}

/// Specifies the possible values for the result of a wireless Hosted Network
/// function call.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_reason>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_REASON(int _) implements int {
  /// The operation was successful.
  @Deprecated('Use wlan_hosted_network_reason_success instead')
  static const wlan_hosted_network_reason_success = WLAN_HOSTED_NETWORK_REASON(
    0,
  );

  /// Unknown error.
  @Deprecated('Use wlan_hosted_network_reason_unspecified instead')
  static const wlan_hosted_network_reason_unspecified =
      WLAN_HOSTED_NETWORK_REASON(1);

  /// Bad parameters.
  @Deprecated('Use wlan_hosted_network_reason_bad_parameters instead')
  static const wlan_hosted_network_reason_bad_parameters =
      WLAN_HOSTED_NETWORK_REASON(2);

  /// Service is shutting down.
  @Deprecated('Use wlan_hosted_network_reason_service_shutting_down instead')
  static const wlan_hosted_network_reason_service_shutting_down =
      WLAN_HOSTED_NETWORK_REASON(3);

  /// Service is out of resources.
  @Deprecated('Use wlan_hosted_network_reason_insufficient_resources instead')
  static const wlan_hosted_network_reason_insufficient_resources =
      WLAN_HOSTED_NETWORK_REASON(4);

  /// This operation requires elevation.
  @Deprecated('Use wlan_hosted_network_reason_elevation_required instead')
  static const wlan_hosted_network_reason_elevation_required =
      WLAN_HOSTED_NETWORK_REASON(5);

  /// An attempt was made to write read-only data.
  @Deprecated('Use wlan_hosted_network_reason_read_only instead')
  static const wlan_hosted_network_reason_read_only =
      WLAN_HOSTED_NETWORK_REASON(6);

  /// Data persistence failed.
  @Deprecated('Use wlan_hosted_network_reason_persistence_failed instead')
  static const wlan_hosted_network_reason_persistence_failed =
      WLAN_HOSTED_NETWORK_REASON(7);

  /// A cryptographic error occurred.
  @Deprecated('Use wlan_hosted_network_reason_crypt_error instead')
  static const wlan_hosted_network_reason_crypt_error =
      WLAN_HOSTED_NETWORK_REASON(8);

  /// User impersonation failed.
  @Deprecated('Use wlan_hosted_network_reason_impersonation instead')
  static const wlan_hosted_network_reason_impersonation =
      WLAN_HOSTED_NETWORK_REASON(9);

  /// An incorrect function call sequence was made.
  @Deprecated('Use wlan_hosted_network_reason_stop_before_start instead')
  static const wlan_hosted_network_reason_stop_before_start =
      WLAN_HOSTED_NETWORK_REASON(10);

  /// A wireless interface has become available.
  @Deprecated('Use wlan_hosted_network_reason_interface_available instead')
  static const wlan_hosted_network_reason_interface_available =
      WLAN_HOSTED_NETWORK_REASON(11);

  /// A wireless interface has become unavailable.
  @Deprecated('Use wlan_hosted_network_reason_interface_unavailable instead')
  static const wlan_hosted_network_reason_interface_unavailable =
      WLAN_HOSTED_NETWORK_REASON(12);

  /// The wireless miniport driver stopped the Hosted Network.
  @Deprecated('Use wlan_hosted_network_reason_miniport_stopped instead')
  static const wlan_hosted_network_reason_miniport_stopped =
      WLAN_HOSTED_NETWORK_REASON(13);

  /// The wireless miniport driver status changed.
  @Deprecated('Use wlan_hosted_network_reason_miniport_started instead')
  static const wlan_hosted_network_reason_miniport_started =
      WLAN_HOSTED_NETWORK_REASON(14);

  /// An incompatible connection started.
  @Deprecated(
    'Use wlan_hosted_network_reason_incompatible_connection_started instead',
  )
  static const wlan_hosted_network_reason_incompatible_connection_started =
      WLAN_HOSTED_NETWORK_REASON(15);

  /// An incompatible connection stopped.
  @Deprecated(
    'Use wlan_hosted_network_reason_incompatible_connection_stopped instead',
  )
  static const wlan_hosted_network_reason_incompatible_connection_stopped =
      WLAN_HOSTED_NETWORK_REASON(16);

  /// A state change occurred that was caused by explicit user action.
  @Deprecated('Use wlan_hosted_network_reason_user_action instead')
  static const wlan_hosted_network_reason_user_action =
      WLAN_HOSTED_NETWORK_REASON(17);

  /// A state change occurred that was caused by client abort.
  @Deprecated('Use wlan_hosted_network_reason_client_abort instead')
  static const wlan_hosted_network_reason_client_abort =
      WLAN_HOSTED_NETWORK_REASON(18);

  /// The driver for the wireless Hosted Network failed to start.
  @Deprecated('Use wlan_hosted_network_reason_ap_start_failed instead')
  static const wlan_hosted_network_reason_ap_start_failed =
      WLAN_HOSTED_NETWORK_REASON(19);

  /// A peer connected to the wireless Hosted Network.
  @Deprecated('Use wlan_hosted_network_reason_peer_arrived instead')
  static const wlan_hosted_network_reason_peer_arrived =
      WLAN_HOSTED_NETWORK_REASON(20);

  /// A peer disconnected from the wireless Hosted Network.
  @Deprecated('Use wlan_hosted_network_reason_peer_departed instead')
  static const wlan_hosted_network_reason_peer_departed =
      WLAN_HOSTED_NETWORK_REASON(21);

  /// A peer timed out.
  @Deprecated('Use wlan_hosted_network_reason_peer_timeout instead')
  static const wlan_hosted_network_reason_peer_timeout =
      WLAN_HOSTED_NETWORK_REASON(22);

  /// The operation was denied by group policy.
  @Deprecated('Use wlan_hosted_network_reason_gp_denied instead')
  static const wlan_hosted_network_reason_gp_denied =
      WLAN_HOSTED_NETWORK_REASON(23);

  /// The Wireless LAN service is not running.
  @Deprecated('Use wlan_hosted_network_reason_service_unavailable instead')
  static const wlan_hosted_network_reason_service_unavailable =
      WLAN_HOSTED_NETWORK_REASON(24);

  /// The wireless adapter used by the wireless Hosted Network changed.
  @Deprecated('Use wlan_hosted_network_reason_device_change instead')
  static const wlan_hosted_network_reason_device_change =
      WLAN_HOSTED_NETWORK_REASON(25);

  /// The properties of the wireless Hosted Network changed.
  @Deprecated('Use wlan_hosted_network_reason_properties_change instead')
  static const wlan_hosted_network_reason_properties_change =
      WLAN_HOSTED_NETWORK_REASON(26);

  /// A virtual station is active and blocking operation.
  @Deprecated(
    'Use wlan_hosted_network_reason_virtual_station_blocking_use instead',
  )
  static const wlan_hosted_network_reason_virtual_station_blocking_use =
      WLAN_HOSTED_NETWORK_REASON(27);

  /// An identical service is available on a virtual station.
  @Deprecated(
    'Use wlan_hosted_network_reason_service_available_on_virtual_station instead',
  )
  static const wlan_hosted_network_reason_service_available_on_virtual_station =
      WLAN_HOSTED_NETWORK_REASON(28);
}

/// Specifies the possible values for the network state of the wireless Hosted
/// Network.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_state>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_STATE(int _) implements int {
  /// The wireless Hosted Network is unavailable.
  @Deprecated('Use wlan_hosted_network_unavailable instead')
  static const wlan_hosted_network_unavailable = 0;

  /// The wireless Hosted Network is idle.
  @Deprecated('Use wlan_hosted_network_idle instead')
  static const wlan_hosted_network_idle = 1;

  /// The wireless Hosted Network is active.
  @Deprecated('Use wlan_hosted_network_active instead')
  static const wlan_hosted_network_active = 2;
}

/// Specifies the type of software bypassed by a vendor-specific method.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_ihv_control_type~r1>.
///
/// {@category enum}
extension type const WLAN_IHV_CONTROL_TYPE(int _) implements int {
  /// Bypasses a WLAN service.
  @Deprecated('Use wlan_ihv_control_type_service instead')
  static const wlan_ihv_control_type_service = 0;

  /// Bypasses a WLAN driver.
  @Deprecated('Use wlan_ihv_control_type_driver instead')
  static const wlan_ihv_control_type_driver = 1;
}

/// Indicates the state of an interface.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_state~r1>.
///
/// {@category enum}
extension type const WLAN_INTERFACE_STATE(int _) implements int {
  /// The interface is not ready to operate.
  @Deprecated('Use wlan_interface_state_not_ready instead')
  static const wlan_interface_state_not_ready = 0;

  /// The interface is connected to a network.
  @Deprecated('Use wlan_interface_state_connected instead')
  static const wlan_interface_state_connected = 1;

  /// The interface is the first node in an ad hoc network.
  @Deprecated('Use wlan_interface_state_ad_hoc_network_formed instead')
  static const wlan_interface_state_ad_hoc_network_formed =
      WLAN_INTERFACE_STATE(2);

  /// The interface is disconnecting from the current network.
  @Deprecated('Use wlan_interface_state_disconnecting instead')
  static const wlan_interface_state_disconnecting = 3;

  /// The interface is not connected to any network.
  @Deprecated('Use wlan_interface_state_disconnected instead')
  static const wlan_interface_state_disconnected = 4;

  /// The interface is attempting to associate with a network.
  @Deprecated('Use wlan_interface_state_associating instead')
  static const wlan_interface_state_associating = 5;

  /// Auto configuration is discovering the settings for the network.
  @Deprecated('Use wlan_interface_state_discovering instead')
  static const wlan_interface_state_discovering = 6;

  /// The interface is in the process of authenticating.
  @Deprecated('Use wlan_interface_state_authenticating instead')
  static const wlan_interface_state_authenticating = 7;
}

/// Specifies the wireless interface type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_type>.
///
/// {@category enum}
extension type const WLAN_INTERFACE_TYPE(int _) implements int {
  /// Specifies an emulated 802.11 interface.
  @Deprecated('Use wlan_interface_type_emulated_802_11 instead')
  static const wlan_interface_type_emulated_802_11 = 0;

  /// Specifies a native 802.11 interface.
  @Deprecated('Use wlan_interface_type_native_802_11 instead')
  static const wlan_interface_type_native_802_11 = 1;

  /// The interface specified is invalid.
  @Deprecated('Use wlan_interface_type_invalid instead')
  static const wlan_interface_type_invalid = 2;
}

/// Defines various opcodes used to set and query parameters on a wireless
/// interface.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_intf_opcode~r1>.
///
/// {@category enum}
extension type const WLAN_INTF_OPCODE(int _) implements int {
  @Deprecated('Use wlan_intf_opcode_autoconf_start instead')
  static const wlan_intf_opcode_autoconf_start = 0;

  /// The opcode used to set or query whether auto config is enabled.
  @Deprecated('Use wlan_intf_opcode_autoconf_enabled instead')
  static const wlan_intf_opcode_autoconf_enabled = 1;

  /// The opcode used to set or query whether background scan is enabled.
  @Deprecated('Use wlan_intf_opcode_background_scan_enabled instead')
  static const wlan_intf_opcode_background_scan_enabled = 2;

  /// The opcode used to set or query the media streaming mode of the driver.
  @Deprecated('Use wlan_intf_opcode_media_streaming_mode instead')
  static const wlan_intf_opcode_media_streaming_mode = 3;

  /// The opcode used to set or query the radio state.
  @Deprecated('Use wlan_intf_opcode_radio_state instead')
  static const wlan_intf_opcode_radio_state = 4;

  /// The opcode used to set or query the BSS type of the interface.
  @Deprecated('Use wlan_intf_opcode_bss_type instead')
  static const wlan_intf_opcode_bss_type = 5;

  /// The opcode used to query the state of the interface.
  @Deprecated('Use wlan_intf_opcode_interface_state instead')
  static const wlan_intf_opcode_interface_state = 6;

  /// The opcode used to query information about the current connection of the
  /// interface.
  @Deprecated('Use wlan_intf_opcode_current_connection instead')
  static const wlan_intf_opcode_current_connection = 7;

  /// The opcode used to query the current channel on which the wireless
  /// interface is operating.
  @Deprecated('Use wlan_intf_opcode_channel_number instead')
  static const wlan_intf_opcode_channel_number = 8;

  /// The opcode used to query the supported auth/cipher pairs for
  /// infrastructure mode.
  @Deprecated(
    'Use wlan_intf_opcode_supported_infrastructure_auth_cipher_pairs instead',
  )
  static const wlan_intf_opcode_supported_infrastructure_auth_cipher_pairs =
      WLAN_INTF_OPCODE(9);

  /// The opcode used to query the supported auth/cipher pairs for ad hoc mode.
  @Deprecated('Use wlan_intf_opcode_supported_adhoc_auth_cipher_pairs instead')
  static const wlan_intf_opcode_supported_adhoc_auth_cipher_pairs =
      WLAN_INTF_OPCODE(10);

  /// The opcode used to query the list of supported country or region strings.
  @Deprecated(
    'Use wlan_intf_opcode_supported_country_or_region_string_list instead',
  )
  static const wlan_intf_opcode_supported_country_or_region_string_list =
      WLAN_INTF_OPCODE(11);

  /// The opcode used to set or query the current operation mode of the wireless
  /// interface.
  @Deprecated('Use wlan_intf_opcode_current_operation_mode instead')
  static const wlan_intf_opcode_current_operation_mode = 12;

  /// The opcode used to query whether the miniport/NIC combination supports
  /// Federal Information Processing Standards (FIPS) mode.
  @Deprecated('Use wlan_intf_opcode_supported_safe_mode instead')
  static const wlan_intf_opcode_supported_safe_mode = 13;

  /// The opcode used to query whether the miniport/NIC combination is FIPS
  /// certified.
  @Deprecated('Use wlan_intf_opcode_certified_safe_mode instead')
  static const wlan_intf_opcode_certified_safe_mode = 14;

  /// The opcode used to query for Hosted Network support in the device driver
  /// associated with the Wireless interface.
  @Deprecated('Use wlan_intf_opcode_hosted_network_capable instead')
  static const wlan_intf_opcode_hosted_network_capable = 15;

  /// The opcode used to query whether Management Frame Protection (MFP) is
  /// supported in the device driver associated with the Wireless interface.
  @Deprecated(
    'Use wlan_intf_opcode_management_frame_protection_capable instead',
  )
  static const wlan_intf_opcode_management_frame_protection_capable =
      WLAN_INTF_OPCODE(16);
  @Deprecated('Use wlan_intf_opcode_secondary_sta_interfaces instead')
  static const wlan_intf_opcode_secondary_sta_interfaces = 17;
  @Deprecated(
    'Use wlan_intf_opcode_secondary_sta_synchronized_connections instead',
  )
  static const wlan_intf_opcode_secondary_sta_synchronized_connections =
      WLAN_INTF_OPCODE(18);
  @Deprecated('Use wlan_intf_opcode_autoconf_end instead')
  static const wlan_intf_opcode_autoconf_end = 268435455;
  @Deprecated('Use wlan_intf_opcode_msm_start instead')
  static const wlan_intf_opcode_msm_start = 268435712;

  /// The opcode used to query driver statistics.
  @Deprecated('Use wlan_intf_opcode_statistics instead')
  static const wlan_intf_opcode_statistics = 268435713;

  /// Opcode used to query the received signal strength.
  @Deprecated('Use wlan_intf_opcode_rssi instead')
  static const wlan_intf_opcode_rssi = 268435714;
  @Deprecated('Use wlan_intf_opcode_msm_end instead')
  static const wlan_intf_opcode_msm_end = 536870911;
  @Deprecated('Use wlan_intf_opcode_security_start instead')
  static const wlan_intf_opcode_security_start = 536936448;
  @Deprecated('Use wlan_intf_opcode_security_end instead')
  static const wlan_intf_opcode_security_end = 805306367;
  @Deprecated('Use wlan_intf_opcode_ihv_start instead')
  static const wlan_intf_opcode_ihv_start = 805306368;
  @Deprecated('Use wlan_intf_opcode_ihv_end instead')
  static const wlan_intf_opcode_ihv_end = 1073741823;
}

/// {@category enum}
extension type const WLAN_NOTIFICATION_SOURCES(int _) implements int {
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_NONE instead')
  static const WLAN_NOTIFICATION_SOURCE_NONE = 0;
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_ALL instead')
  static const WLAN_NOTIFICATION_SOURCE_ALL = 65535;
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_ACM instead')
  static const WLAN_NOTIFICATION_SOURCE_ACM = 8;
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_MSM instead')
  static const WLAN_NOTIFICATION_SOURCE_MSM = 16;
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_SECURITY instead')
  static const WLAN_NOTIFICATION_SOURCE_SECURITY = WLAN_NOTIFICATION_SOURCES(
    32,
  );
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_IHV instead')
  static const WLAN_NOTIFICATION_SOURCE_IHV = 64;
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_HNWK instead')
  static const WLAN_NOTIFICATION_SOURCE_HNWK = 128;
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_ONEX instead')
  static const WLAN_NOTIFICATION_SOURCE_ONEX = 4;
  @Deprecated('Use WLAN_NOTIFICATION_SOURCE_DEVICE_SERVICE instead')
  static const WLAN_NOTIFICATION_SOURCE_DEVICE_SERVICE =
      WLAN_NOTIFICATION_SOURCES(2048);
}

/// Specifies the origin of automatic configuration (auto config) settings.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_opcode_value_type~r1>.
///
/// {@category enum}
extension type const WLAN_OPCODE_VALUE_TYPE(int _) implements int {
  /// The auto config settings were queried, but the origin of the settings was
  /// not determined.
  @Deprecated('Use wlan_opcode_value_type_query_only instead')
  static const wlan_opcode_value_type_query_only = 0;

  /// The auto config settings were set by group policy.
  @Deprecated('Use wlan_opcode_value_type_set_by_group_policy instead')
  static const wlan_opcode_value_type_set_by_group_policy =
      WLAN_OPCODE_VALUE_TYPE(1);

  /// The auto config settings were set by the user.
  @Deprecated('Use wlan_opcode_value_type_set_by_user instead')
  static const wlan_opcode_value_type_set_by_user = 2;

  /// The auto config settings are invalid.
  @Deprecated('Use wlan_opcode_value_type_invalid instead')
  static const wlan_opcode_value_type_invalid = 3;
}

/// Defines the securable objects used by Native Wifi Functions.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_securable_object>.
///
/// {@category enum}
extension type const WLAN_SECURABLE_OBJECT(int _) implements int {
  /// The permissions for modifying the permit list for user profiles.
  @Deprecated('Use wlan_secure_permit_list instead')
  static const wlan_secure_permit_list = 0;

  /// The permissions for modifying the deny list for user profiles.
  @Deprecated('Use wlan_secure_deny_list instead')
  static const wlan_secure_deny_list = 1;

  /// The permissions for enabling the auto config service.
  @Deprecated('Use wlan_secure_ac_enabled instead')
  static const wlan_secure_ac_enabled = 2;

  /// The permissions for enabling background scans.
  @Deprecated('Use wlan_secure_bc_scan_enabled instead')
  static const wlan_secure_bc_scan_enabled = 3;

  /// The permissions for altering the basic service set type.
  @Deprecated('Use wlan_secure_bss_type instead')
  static const wlan_secure_bss_type = 4;

  /// The permissions for modifying whether networks on the deny list appear in
  /// the available networks list.
  @Deprecated('Use wlan_secure_show_denied instead')
  static const wlan_secure_show_denied = 5;

  /// The permissions for changing interface properties.
  @Deprecated('Use wlan_secure_interface_properties instead')
  static const wlan_secure_interface_properties = 6;

  /// The permissions for using the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/nf-wlanapi-wlanihvcontrol">WlanIhvControl</a>
  /// function for independent hardware vendor (IHV) control of WLAN drivers or
  /// services.
  @Deprecated('Use wlan_secure_ihv_control instead')
  static const wlan_secure_ihv_control = 7;

  /// The permissions for modifying the order of all-user profiles.
  @Deprecated('Use wlan_secure_all_user_profiles_order instead')
  static const wlan_secure_all_user_profiles_order = 8;

  /// The permissions for adding new all-user profiles.
  @Deprecated('Use wlan_secure_add_new_all_user_profiles instead')
  static const wlan_secure_add_new_all_user_profiles = 9;

  /// The permissions for adding new per-user profiles.
  @Deprecated('Use wlan_secure_add_new_per_user_profiles instead')
  static const wlan_secure_add_new_per_user_profiles = WLAN_SECURABLE_OBJECT(
    10,
  );

  /// The permissions for setting or querying the media streaming mode.
  @Deprecated('Use wlan_secure_media_streaming_mode_enabled instead')
  static const wlan_secure_media_streaming_mode_enabled = WLAN_SECURABLE_OBJECT(
    11,
  );

  /// The permissions for setting or querying the operation mode of the wireless
  /// interface.
  @Deprecated('Use wlan_secure_current_operation_mode instead')
  static const wlan_secure_current_operation_mode = 12;

  /// The permissions for retrieving the plain text key from a wireless profile.
  @Deprecated('Use wlan_secure_get_plaintext_key instead')
  static const wlan_secure_get_plaintext_key = 13;

  /// The permissions that have elevated access to call the privileged Hosted
  /// Network functions.
  @Deprecated('Use wlan_secure_hosted_network_elevated_access instead')
  static const wlan_secure_hosted_network_elevated_access =
      WLAN_SECURABLE_OBJECT(14);
  @Deprecated('Use wlan_secure_virtual_station_extensibility instead')
  static const wlan_secure_virtual_station_extensibility =
      WLAN_SECURABLE_OBJECT(15);

  /// This value is reserved for internal use by the Wi-Fi Direct service.
  @Deprecated('Use wlan_secure_wfd_elevated_access instead')
  static const wlan_secure_wfd_elevated_access = 16;
  @Deprecated('Use WLAN_SECURABLE_OBJECT_COUNT instead')
  static const WLAN_SECURABLE_OBJECT_COUNT = 17;
}

/// {@category enum}
extension type const WLAN_SET_EAPHOST_FLAGS(int _) implements int {
  @Deprecated('Use WLAN_SET_EAPHOST_DATA_ALL_USERS instead')
  static const WLAN_SET_EAPHOST_DATA_ALL_USERS = 1;
}

/// {@category enum}
extension type const WNDCLASS_STYLES(int _) implements int {
  @Deprecated('Use CS_VREDRAW instead')
  static const CS_VREDRAW = 1;
  @Deprecated('Use CS_HREDRAW instead')
  static const CS_HREDRAW = 2;
  @Deprecated('Use CS_DBLCLKS instead')
  static const CS_DBLCLKS = 8;
  @Deprecated('Use CS_OWNDC instead')
  static const CS_OWNDC = 32;
  @Deprecated('Use CS_CLASSDC instead')
  static const CS_CLASSDC = 64;
  @Deprecated('Use CS_PARENTDC instead')
  static const CS_PARENTDC = 128;
  @Deprecated('Use CS_NOCLOSE instead')
  static const CS_NOCLOSE = 512;
  @Deprecated('Use CS_SAVEBITS instead')
  static const CS_SAVEBITS = 2048;
  @Deprecated('Use CS_BYTEALIGNCLIENT instead')
  static const CS_BYTEALIGNCLIENT = 4096;
  @Deprecated('Use CS_BYTEALIGNWINDOW instead')
  static const CS_BYTEALIGNWINDOW = 8192;
  @Deprecated('Use CS_GLOBALCLASS instead')
  static const CS_GLOBALCLASS = 16384;
  @Deprecated('Use CS_IME instead')
  static const CS_IME = 65536;
  @Deprecated('Use CS_DROPSHADOW instead')
  static const CS_DROPSHADOW = 131072;
}

/// {@category enum}
extension type const XINPUT_CAPABILITIES_FLAGS(int _) implements int {
  @Deprecated('Use XINPUT_CAPS_VOICE_SUPPORTED instead')
  static const XINPUT_CAPS_VOICE_SUPPORTED = 4;
  @Deprecated('Use XINPUT_CAPS_FFB_SUPPORTED instead')
  static const XINPUT_CAPS_FFB_SUPPORTED = 1;
  @Deprecated('Use XINPUT_CAPS_WIRELESS instead')
  static const XINPUT_CAPS_WIRELESS = 2;
  @Deprecated('Use XINPUT_CAPS_PMD_SUPPORTED instead')
  static const XINPUT_CAPS_PMD_SUPPORTED = 8;
  @Deprecated('Use XINPUT_CAPS_NO_NAVIGATION instead')
  static const XINPUT_CAPS_NO_NAVIGATION = 16;
}

/// {@category enum}
extension type const XINPUT_DEVSUBTYPE(int _) implements int {
  @Deprecated('Use XINPUT_DEVSUBTYPE_GAMEPAD instead')
  static const XINPUT_DEVSUBTYPE_GAMEPAD = 1;
  @Deprecated('Use XINPUT_DEVSUBTYPE_UNKNOWN instead')
  static const XINPUT_DEVSUBTYPE_UNKNOWN = 0;
  @Deprecated('Use XINPUT_DEVSUBTYPE_WHEEL instead')
  static const XINPUT_DEVSUBTYPE_WHEEL = 2;
  @Deprecated('Use XINPUT_DEVSUBTYPE_ARCADE_STICK instead')
  static const XINPUT_DEVSUBTYPE_ARCADE_STICK = 3;
  @Deprecated('Use XINPUT_DEVSUBTYPE_FLIGHT_STICK instead')
  static const XINPUT_DEVSUBTYPE_FLIGHT_STICK = 4;
  @Deprecated('Use XINPUT_DEVSUBTYPE_DANCE_PAD instead')
  static const XINPUT_DEVSUBTYPE_DANCE_PAD = 5;
  @Deprecated('Use XINPUT_DEVSUBTYPE_GUITAR instead')
  static const XINPUT_DEVSUBTYPE_GUITAR = 6;
  @Deprecated('Use XINPUT_DEVSUBTYPE_GUITAR_ALTERNATE instead')
  static const XINPUT_DEVSUBTYPE_GUITAR_ALTERNATE = 7;
  @Deprecated('Use XINPUT_DEVSUBTYPE_DRUM_KIT instead')
  static const XINPUT_DEVSUBTYPE_DRUM_KIT = 8;
  @Deprecated('Use XINPUT_DEVSUBTYPE_GUITAR_BASS instead')
  static const XINPUT_DEVSUBTYPE_GUITAR_BASS = 11;
  @Deprecated('Use XINPUT_DEVSUBTYPE_ARCADE_PAD instead')
  static const XINPUT_DEVSUBTYPE_ARCADE_PAD = 19;
}

/// {@category enum}
extension type const XINPUT_DEVTYPE(int _) implements int {
  @Deprecated('Use XINPUT_DEVTYPE_GAMEPAD instead')
  static const XINPUT_DEVTYPE_GAMEPAD = 1;
}

/// {@category enum}
extension type const XINPUT_FLAG(int _) implements int {
  @Deprecated('Use XINPUT_FLAG_ALL instead')
  static const XINPUT_FLAG_ALL = 0;
  @Deprecated('Use XINPUT_FLAG_GAMEPAD instead')
  static const XINPUT_FLAG_GAMEPAD = 1;
}

/// {@category enum}
extension type const XINPUT_GAMEPAD_BUTTON_FLAGS(int _) implements int {
  @Deprecated('Use XINPUT_GAMEPAD_DPAD_UP instead')
  static const XINPUT_GAMEPAD_DPAD_UP = 1;
  @Deprecated('Use XINPUT_GAMEPAD_DPAD_DOWN instead')
  static const XINPUT_GAMEPAD_DPAD_DOWN = 2;
  @Deprecated('Use XINPUT_GAMEPAD_DPAD_LEFT instead')
  static const XINPUT_GAMEPAD_DPAD_LEFT = 4;
  @Deprecated('Use XINPUT_GAMEPAD_DPAD_RIGHT instead')
  static const XINPUT_GAMEPAD_DPAD_RIGHT = 8;
  @Deprecated('Use XINPUT_GAMEPAD_START instead')
  static const XINPUT_GAMEPAD_START = 16;
  @Deprecated('Use XINPUT_GAMEPAD_BACK instead')
  static const XINPUT_GAMEPAD_BACK = 32;
  @Deprecated('Use XINPUT_GAMEPAD_LEFT_THUMB instead')
  static const XINPUT_GAMEPAD_LEFT_THUMB = 64;
  @Deprecated('Use XINPUT_GAMEPAD_RIGHT_THUMB instead')
  static const XINPUT_GAMEPAD_RIGHT_THUMB = 128;
  @Deprecated('Use XINPUT_GAMEPAD_LEFT_SHOULDER instead')
  static const XINPUT_GAMEPAD_LEFT_SHOULDER = 256;
  @Deprecated('Use XINPUT_GAMEPAD_RIGHT_SHOULDER instead')
  static const XINPUT_GAMEPAD_RIGHT_SHOULDER = 512;
  @Deprecated('Use XINPUT_GAMEPAD_A instead')
  static const XINPUT_GAMEPAD_A = 4096;
  @Deprecated('Use XINPUT_GAMEPAD_B instead')
  static const XINPUT_GAMEPAD_B = 8192;
  @Deprecated('Use XINPUT_GAMEPAD_X instead')
  static const XINPUT_GAMEPAD_X = 16384;
  @Deprecated('Use XINPUT_GAMEPAD_Y instead')
  static const XINPUT_GAMEPAD_Y = 32768;
  @Deprecated('Use XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE instead')
  static const XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE = XINPUT_GAMEPAD_BUTTON_FLAGS(
    7849,
  );
  @Deprecated('Use XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE instead')
  static const XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE =
      XINPUT_GAMEPAD_BUTTON_FLAGS(8689);
  @Deprecated('Use XINPUT_GAMEPAD_TRIGGER_THRESHOLD instead')
  static const XINPUT_GAMEPAD_TRIGGER_THRESHOLD = XINPUT_GAMEPAD_BUTTON_FLAGS(
    30,
  );
}

/// {@category enum}
extension type const XINPUT_KEYSTROKE_FLAGS(int _) implements int {
  @Deprecated('Use XINPUT_KEYSTROKE_KEYDOWN instead')
  static const XINPUT_KEYSTROKE_KEYDOWN = 1;
  @Deprecated('Use XINPUT_KEYSTROKE_KEYUP instead')
  static const XINPUT_KEYSTROKE_KEYUP = 2;
  @Deprecated('Use XINPUT_KEYSTROKE_REPEAT instead')
  static const XINPUT_KEYSTROKE_REPEAT = 4;
}

/// {@category enum}
extension type const XINPUT_VIRTUAL_KEY(int _) implements int {
  @Deprecated('Use VK_PAD_A instead')
  static const VK_PAD_A = 22528;
  @Deprecated('Use VK_PAD_B instead')
  static const VK_PAD_B = 22529;
  @Deprecated('Use VK_PAD_X instead')
  static const VK_PAD_X = 22530;
  @Deprecated('Use VK_PAD_Y instead')
  static const VK_PAD_Y = 22531;
  @Deprecated('Use VK_PAD_RSHOULDER instead')
  static const VK_PAD_RSHOULDER = 22532;
  @Deprecated('Use VK_PAD_LSHOULDER instead')
  static const VK_PAD_LSHOULDER = 22533;
  @Deprecated('Use VK_PAD_LTRIGGER instead')
  static const VK_PAD_LTRIGGER = 22534;
  @Deprecated('Use VK_PAD_RTRIGGER instead')
  static const VK_PAD_RTRIGGER = 22535;
  @Deprecated('Use VK_PAD_DPAD_UP instead')
  static const VK_PAD_DPAD_UP = 22544;
  @Deprecated('Use VK_PAD_DPAD_DOWN instead')
  static const VK_PAD_DPAD_DOWN = 22545;
  @Deprecated('Use VK_PAD_DPAD_LEFT instead')
  static const VK_PAD_DPAD_LEFT = 22546;
  @Deprecated('Use VK_PAD_DPAD_RIGHT instead')
  static const VK_PAD_DPAD_RIGHT = 22547;
  @Deprecated('Use VK_PAD_START instead')
  static const VK_PAD_START = 22548;
  @Deprecated('Use VK_PAD_BACK instead')
  static const VK_PAD_BACK = 22549;
  @Deprecated('Use VK_PAD_LTHUMB_PRESS instead')
  static const VK_PAD_LTHUMB_PRESS = 22550;
  @Deprecated('Use VK_PAD_RTHUMB_PRESS instead')
  static const VK_PAD_RTHUMB_PRESS = 22551;
  @Deprecated('Use VK_PAD_LTHUMB_UP instead')
  static const VK_PAD_LTHUMB_UP = 22560;
  @Deprecated('Use VK_PAD_LTHUMB_DOWN instead')
  static const VK_PAD_LTHUMB_DOWN = 22561;
  @Deprecated('Use VK_PAD_LTHUMB_RIGHT instead')
  static const VK_PAD_LTHUMB_RIGHT = 22562;
  @Deprecated('Use VK_PAD_LTHUMB_LEFT instead')
  static const VK_PAD_LTHUMB_LEFT = 22563;
  @Deprecated('Use VK_PAD_LTHUMB_UPLEFT instead')
  static const VK_PAD_LTHUMB_UPLEFT = 22564;
  @Deprecated('Use VK_PAD_LTHUMB_UPRIGHT instead')
  static const VK_PAD_LTHUMB_UPRIGHT = 22565;
  @Deprecated('Use VK_PAD_LTHUMB_DOWNRIGHT instead')
  static const VK_PAD_LTHUMB_DOWNRIGHT = 22566;
  @Deprecated('Use VK_PAD_LTHUMB_DOWNLEFT instead')
  static const VK_PAD_LTHUMB_DOWNLEFT = 22567;
  @Deprecated('Use VK_PAD_RTHUMB_UP instead')
  static const VK_PAD_RTHUMB_UP = 22576;
  @Deprecated('Use VK_PAD_RTHUMB_DOWN instead')
  static const VK_PAD_RTHUMB_DOWN = 22577;
  @Deprecated('Use VK_PAD_RTHUMB_RIGHT instead')
  static const VK_PAD_RTHUMB_RIGHT = 22578;
  @Deprecated('Use VK_PAD_RTHUMB_LEFT instead')
  static const VK_PAD_RTHUMB_LEFT = 22579;
  @Deprecated('Use VK_PAD_RTHUMB_UPLEFT instead')
  static const VK_PAD_RTHUMB_UPLEFT = 22580;
  @Deprecated('Use VK_PAD_RTHUMB_UPRIGHT instead')
  static const VK_PAD_RTHUMB_UPRIGHT = 22581;
  @Deprecated('Use VK_PAD_RTHUMB_DOWNRIGHT instead')
  static const VK_PAD_RTHUMB_DOWNRIGHT = 22582;
  @Deprecated('Use VK_PAD_RTHUMB_DOWNLEFT instead')
  static const VK_PAD_RTHUMB_DOWNLEFT = 22583;
}

/// Contains possible values for the IUIAutomationTransformPattern2::ZoomByUnit
/// method, which zooms the viewport of a control by the specified unit.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-zoomunit>.
///
/// {@category enum}
extension type const ZoomUnit(int _) implements int {
  /// No increase or decrease in zoom.
  @Deprecated('Use ZoomUnit_NoAmount instead')
  static const ZoomUnit_NoAmount = 0;

  /// Decrease zoom by a large decrement.
  @Deprecated('Use ZoomUnit_LargeDecrement instead')
  static const ZoomUnit_LargeDecrement = 1;

  /// Decrease zoom by a small decrement.
  @Deprecated('Use ZoomUnit_SmallDecrement instead')
  static const ZoomUnit_SmallDecrement = 2;

  /// Increase zoom by a large increment.
  @Deprecated('Use ZoomUnit_LargeIncrement instead')
  static const ZoomUnit_LargeIncrement = 3;

  /// Increase zoom by a small increment.
  @Deprecated('Use ZoomUnit_SmallIncrement instead')
  static const ZoomUnit_SmallIncrement = 4;
}
