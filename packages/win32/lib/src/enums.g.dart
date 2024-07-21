// Dart representations of common enums used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_types, constant_identifier_names

/// {@category enum}
extension type const ACCEL_VIRT_FLAGS(int _) implements int {
  static const FVIRTKEY = 1;
  static const FNOINVERT = 2;
  static const FSHIFT = 4;
  static const FCONTROL = 8;
  static const FALT = 16;
}

/// {@category enum}
extension type const ACTIVATE_KEYBOARD_LAYOUT_FLAGS(int _) implements int {
  static const KLF_REORDER = 8;
  static const KLF_RESET = 1073741824;
  static const KLF_SETFORPROCESS = 256;
  static const KLF_SHIFTLOCK = 65536;
  static const KLF_ACTIVATE = 1;
  static const KLF_NOTELLSHELL = 128;
  static const KLF_REPLACELANG = 16;
  static const KLF_SUBSTITUTE_OK = 2;
}

/// {@category enum}
extension type const ADDRESS_FAMILY(int _) implements int {
  static const AF_INET = 2;
  static const AF_INET6 = 23;
  static const AF_UNSPEC = 0;
}

/// {@category enum}
extension type const ADVANCED_FEATURE_FLAGS(int _) implements int {
  static const FADF_AUTO = 1;
  static const FADF_STATIC = 2;
  static const FADF_EMBEDDED = 4;
  static const FADF_FIXEDSIZE = 16;
  static const FADF_RECORD = 32;
  static const FADF_HAVEIID = 64;
  static const FADF_HAVEVARTYPE = 128;
  static const FADF_BSTR = 256;
  static const FADF_UNKNOWN = 512;
  static const FADF_DISPATCH = 1024;
  static const FADF_VARIANT = 2048;
  static const FADF_RESERVED = 61448;
}

/// {@category enum}
extension type const ANIMATE_WINDOW_FLAGS(int _) implements int {
  static const AW_ACTIVATE = 131072;
  static const AW_BLEND = 524288;
  static const AW_CENTER = 16;
  static const AW_HIDE = 65536;
  static const AW_HOR_POSITIVE = 1;
  static const AW_HOR_NEGATIVE = 2;
  static const AW_SLIDE = 262144;
  static const AW_VER_POSITIVE = 4;
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
  static const APPX_CAPABILITY_INTERNET_CLIENT = 1;

  /// Your Internet connection, including incoming unsolicited connections from
  /// the Internet – the app can send information to or from your computer
  /// through a firewall.
  static const APPX_CAPABILITY_INTERNET_CLIENT_SERVER = 2;

  /// A home or work network – the app can send information to or from your
  /// computer and other computers on the same network.
  static const APPX_CAPABILITY_PRIVATE_NETWORK_CLIENT_SERVER =
      APPX_CAPABILITIES(4);

  /// Your documents library, including the capability to add, change, or delete
  /// files.
  static const APPX_CAPABILITY_DOCUMENTS_LIBRARY = 8;

  /// Your pictures library, including the capability to add, change, or delete
  /// files.
  static const APPX_CAPABILITY_PICTURES_LIBRARY = 16;

  /// Your videos library, including the capability to add, change, or delete
  /// files.
  static const APPX_CAPABILITY_VIDEOS_LIBRARY = 32;

  /// Your music library and playlists, including the capability to add, change,
  /// or delete files.
  static const APPX_CAPABILITY_MUSIC_LIBRARY = 64;

  /// Your Windows credentials, for access to a corporate intranet.
  static const APPX_CAPABILITY_ENTERPRISE_AUTHENTICATION =
      APPX_CAPABILITIES(128);

  /// Software and hardware certificates or a smart card – used to identify you
  /// in the app.
  static const APPX_CAPABILITY_SHARED_USER_CERTIFICATES =
      APPX_CAPABILITIES(256);

  /// Removable storage, such as an external hard drive or USB flash drive, or
  /// MTP portable device, including the capability to add, change, or delete
  /// specific files.
  static const APPX_CAPABILITY_REMOVABLE_STORAGE = 512;

  static const APPX_CAPABILITY_APPOINTMENTS = 1024;

  static const APPX_CAPABILITY_CONTACTS = 2048;
}

/// {@category enum}
extension type const APPX_CAPABILITY_CLASS_TYPE(int _) implements int {
  static const APPX_CAPABILITY_CLASS_DEFAULT = 0;
  static const APPX_CAPABILITY_CLASS_GENERAL = 1;
  static const APPX_CAPABILITY_CLASS_RESTRICTED = 2;
  static const APPX_CAPABILITY_CLASS_WINDOWS = 4;
  static const APPX_CAPABILITY_CLASS_ALL = 7;
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
  static const APPX_COMPRESSION_OPTION_NONE = 0;

  /// Normal compression.
  static const APPX_COMPRESSION_OPTION_NORMAL = 1;

  /// Maximum compression.
  static const APPX_COMPRESSION_OPTION_MAXIMUM = 2;

  /// Fast compression.
  static const APPX_COMPRESSION_OPTION_FAST = 3;

  /// Super-fast compression.
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
  static const APPX_FOOTPRINT_FILE_TYPE_MANIFEST = 0;

  /// The package block map.
  static const APPX_FOOTPRINT_FILE_TYPE_BLOCKMAP = 1;

  /// The package signature.
  static const APPX_FOOTPRINT_FILE_TYPE_SIGNATURE = 2;

  /// The code signing catalog file used for code integrity checks.
  static const APPX_FOOTPRINT_FILE_TYPE_CODEINTEGRITY =
      APPX_FOOTPRINT_FILE_TYPE(3);

  /// The content group map used for streaming install.
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
  static const APPX_PACKAGE_ARCHITECTURE_X86 = 0;

  /// The ARM processor architecture.
  static const APPX_PACKAGE_ARCHITECTURE_ARM = 5;

  /// The x64 processor architecture.
  static const APPX_PACKAGE_ARCHITECTURE_X64 = 9;

  /// Any processor architecture.
  static const APPX_PACKAGE_ARCHITECTURE_NEUTRAL =
      APPX_PACKAGE_ARCHITECTURE(11);

  /// The 64-bit ARM processor architecture.
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
  static const AUDIO_DUCKING_OPTIONS_DEFAULT = 0;

  /// The associated audio stream should not cause other streams to be ducked.
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
  static const AudioCategory_Other = 0;

  /// Media that will only stream when the app is in the foreground.
  static const AudioCategory_ForegroundOnlyMedia = 1;

  /// Real-time communications, such as VOIP or chat.
  static const AudioCategory_Communications = 3;

  /// Alert sounds.
  static const AudioCategory_Alerts = 4;

  /// Sound effects.
  static const AudioCategory_SoundEffects = 5;

  /// Game sound effects.
  static const AudioCategory_GameEffects = 6;

  /// Background audio for games.
  static const AudioCategory_GameMedia = 7;

  /// Game chat audio.
  static const AudioCategory_GameChat = 8;

  /// Speech.
  static const AudioCategory_Speech = 9;

  /// Stream that includes audio with dialog.
  static const AudioCategory_Movie = 10;

  /// Stream that includes audio without dialog.
  static const AudioCategory_Media = 11;

  /// Media is audio captured with the intent of capturing voice sources located
  /// in the ‘far field’.
  static const AudioCategory_FarFieldSpeech = 12;

  /// Media is captured audio that requires consistent speech processing for the
  /// captured audio stream across all Windows devices.
  static const AudioCategory_UniformSpeech = 13;

  /// Media is audio captured with the intent of enabling dictation or typing by
  /// voice.
  static const AudioCategory_VoiceTyping = 14;
}

/// {@category enum}
extension type const AUTHENTICATION_REQUIREMENTS(int _) implements int {
  static const MITMProtectionNotRequired = 0;
  static const MITMProtectionRequired = 1;
  static const MITMProtectionNotRequiredBonding =
      AUTHENTICATION_REQUIREMENTS(2);
  static const MITMProtectionRequiredBonding = 3;
  static const MITMProtectionNotRequiredGeneralBonding =
      AUTHENTICATION_REQUIREMENTS(4);
  static const MITMProtectionRequiredGeneralBonding =
      AUTHENTICATION_REQUIREMENTS(5);
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
  static const AudioSessionStateInactive = 0;

  /// The audio session is active.
  static const AudioSessionStateActive = 1;

  /// The audio session has expired.
  static const AudioSessionStateExpired = 2;
}

/// {@category enum}
extension type const BACKGROUND_MODE(int _) implements int {
  static const OPAQUE = 2;
  static const TRANSPARENT = 1;
}

/// {@category enum}
extension type const BATTERY_DEVTYPE(int _) implements int {
  static const BATTERY_DEVTYPE_GAMEPAD = 0;
  static const BATTERY_DEVTYPE_HEADSET = 1;
}

/// {@category enum}
extension type const BATTERY_LEVEL(int _) implements int {
  static const BATTERY_LEVEL_EMPTY = 0;
  static const BATTERY_LEVEL_LOW = 1;
  static const BATTERY_LEVEL_MEDIUM = 2;
  static const BATTERY_LEVEL_FULL = 3;
}

/// {@category enum}
extension type const BATTERY_TYPE(int _) implements int {
  static const BATTERY_TYPE_DISCONNECTED = 0;
  static const BATTERY_TYPE_WIRED = 1;
  static const BATTERY_TYPE_ALKALINE = 2;
  static const BATTERY_TYPE_NIMH = 3;
  static const BATTERY_TYPE_UNKNOWN = 255;
}

/// {@category enum}
extension type const BI_COMPRESSION(int _) implements int {
  static const BI_RGB = 0;
  static const BI_RLE8 = 1;
  static const BI_RLE4 = 2;
  static const BI_BITFIELDS = 3;
  static const BI_JPEG = 4;
  static const BI_PNG = 5;
}

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_FLAGS(int _) implements int {
  static const BSF_ALLOWSFW = 128;
  static const BSF_FLUSHDISK = 4;
  static const BSF_FORCEIFHUNG = 32;
  static const BSF_IGNORECURRENTTASK = 2;
  static const BSF_NOHANG = 8;
  static const BSF_NOTIMEOUTIFNOTHUNG = 64;
  static const BSF_POSTMESSAGE = 16;
  static const BSF_QUERY = 1;
  static const BSF_SENDNOTIFYMESSAGE = 256;
  static const BSF_LUID = 1024;
  static const BSF_RETURNHDESK = 512;
}

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_INFO(int _) implements int {
  static const BSM_ALLCOMPONENTS = 0;
  static const BSM_ALLDESKTOPS = 16;
  static const BSM_APPLICATIONS = 8;
}

/// {@category enum}
extension type const BRUSH_STYLE(int _) implements int {
  static const BS_SOLID = 0;
  static const BS_NULL = 1;
  static const BS_HOLLOW = 1;
  static const BS_HATCHED = 2;
  static const BS_PATTERN = 3;
  static const BS_INDEXED = 4;
  static const BS_DIBPATTERN = 5;
  static const BS_DIBPATTERNPT = 6;
  static const BS_PATTERN8X8 = 7;
  static const BS_DIBPATTERN8X8 = 8;
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
  static const CharacteristicExtendedProperties =
      BTH_LE_GATT_DESCRIPTOR_TYPE(0);

  /// The characteristic value contains a UTF-8 string of variable size that is
  /// a user textual description.
  static const CharacteristicUserDescription = 1;

  /// The characteristic value may be configured by the client.
  static const ClientCharacteristicConfiguration =
      BTH_LE_GATT_DESCRIPTOR_TYPE(2);

  /// The characteristic value may be configured for the server.
  static const ServerCharacteristicConfiguration =
      BTH_LE_GATT_DESCRIPTOR_TYPE(3);

  /// The format of the characteristic value.
  static const CharacteristicFormat = 4;

  /// The format of an aggregated characteristic value.
  static const CharacteristicAggregateFormat = 5;

  /// The characteristic value is customized.
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
  static const CC_FASTCALL = 0;

  static const CC_CDECL = 1;

  static const CC_MSCPASCAL = 2;

  static const CC_PASCAL = 2;

  static const CC_MACPASCAL = 3;

  static const CC_STDCALL = 4;

  static const CC_FPFASTCALL = 5;

  static const CC_SYSCALL = 6;

  static const CC_MPWCDECL = 7;

  static const CC_MPWPASCAL = 8;

  static const CC_MAX = 9;
}

/// {@category enum}
extension type const CASCADE_WINDOWS_HOW(int _) implements int {
  static const MDITILE_SKIPDISABLED = 2;
  static const MDITILE_ZORDER = 4;
}

/// {@category enum}
extension type const CDCONTROLSTATEF(int _) implements int {
  static const CDCS_INACTIVE = 0;
  static const CDCS_ENABLED = 1;
  static const CDCS_VISIBLE = 2;
  static const CDCS_ENABLEDVISIBLE = 3;
}

/// {@category enum}
extension type const CDS_TYPE(int _) implements int {
  static const CDS_FULLSCREEN = 4;
  static const CDS_GLOBAL = 8;
  static const CDS_NORESET = 268435456;
  static const CDS_RESET = 1073741824;
  static const CDS_SET_PRIMARY = 16;
  static const CDS_TEST = 2;
  static const CDS_UPDATEREGISTRY = 1;
  static const CDS_VIDEOPARAMETERS = 32;
  static const CDS_ENABLE_UNSAFE_MODES = 256;
  static const CDS_DISABLE_UNSAFE_MODES = 512;
  static const CDS_RESET_EX = 536870912;
}

/// {@category enum}
extension type const CERT_QUERY_ENCODING_TYPE(int _) implements int {
  static const X509_ASN_ENCODING = 1;
  static const PKCS_7_ASN_ENCODING = 65536;
}

/// {@category enum}
extension type const CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(int _) implements int {
  static const MSGFLT_ADD = 1;
  static const MSGFLT_REMOVE = 2;
}

/// {@category enum}
extension type const CHOOSECOLOR_FLAGS(int _) implements int {
  static const CC_RGBINIT = 1;
  static const CC_FULLOPEN = 2;
  static const CC_PREVENTFULLOPEN = 4;
  static const CC_SHOWHELP = 8;
  static const CC_ENABLEHOOK = 16;
  static const CC_ENABLETEMPLATE = 32;
  static const CC_ENABLETEMPLATEHANDLE = 64;
  static const CC_SOLIDCOLOR = 128;
  static const CC_ANYCOLOR = 256;
}

/// {@category enum}
extension type const CHOOSEFONT_FLAGS(int _) implements int {
  static const CF_APPLY = 512;
  static const CF_ANSIONLY = 1024;
  static const CF_BOTH = 3;
  static const CF_EFFECTS = 256;
  static const CF_ENABLEHOOK = 8;
  static const CF_ENABLETEMPLATE = 16;
  static const CF_ENABLETEMPLATEHANDLE = 32;
  static const CF_FIXEDPITCHONLY = 16384;
  static const CF_FORCEFONTEXIST = 65536;
  static const CF_INACTIVEFONTS = 33554432;
  static const CF_INITTOLOGFONTSTRUCT = 64;
  static const CF_LIMITSIZE = 8192;
  static const CF_NOOEMFONTS = 2048;
  static const CF_NOFACESEL = 524288;
  static const CF_NOSCRIPTSEL = 8388608;
  static const CF_NOSIMULATIONS = 4096;
  static const CF_NOSIZESEL = 2097152;
  static const CF_NOSTYLESEL = 1048576;
  static const CF_NOVECTORFONTS = 2048;
  static const CF_NOVERTFONTS = 16777216;
  static const CF_PRINTERFONTS = 2;
  static const CF_SCALABLEONLY = 131072;
  static const CF_SCREENFONTS = 1;
  static const CF_SCRIPTSONLY = 1024;
  static const CF_SELECTSCRIPT = 4194304;
  static const CF_SHOWHELP = 4;
  static const CF_TTONLY = 262144;
  static const CF_USESTYLE = 128;
  static const CF_WYSIWYG = 32768;
}

/// {@category enum}
extension type const CHOOSEFONT_FONT_TYPE(int _) implements int {
  static const BOLD_FONTTYPE = 256;
  static const ITALIC_FONTTYPE = 512;
  static const PRINTER_FONTTYPE = 16384;
  static const REGULAR_FONTTYPE = 1024;
  static const SCREEN_FONTTYPE = 8192;
  static const SIMULATED_FONTTYPE = 32768;
}

/// {@category enum}
extension type const CLEAR_COMM_ERROR_FLAGS(int _) implements int {
  static const CE_BREAK = 16;
  static const CE_FRAME = 8;
  static const CE_OVERRUN = 2;
  static const CE_RXOVER = 1;
  static const CE_RXPARITY = 4;
}

/// {@category enum}
extension type const CLIPBOARD_FORMAT(int _) implements int {
  static const CF_TEXT = 1;
  static const CF_BITMAP = 2;
  static const CF_METAFILEPICT = 3;
  static const CF_SYLK = 4;
  static const CF_DIF = 5;
  static const CF_TIFF = 6;
  static const CF_OEMTEXT = 7;
  static const CF_DIB = 8;
  static const CF_PALETTE = 9;
  static const CF_PENDATA = 10;
  static const CF_RIFF = 11;
  static const CF_WAVE = 12;
  static const CF_UNICODETEXT = 13;
  static const CF_ENHMETAFILE = 14;
  static const CF_HDROP = 15;
  static const CF_LOCALE = 16;
  static const CF_DIBV5 = 17;
  static const CF_MAX = 18;
  static const CF_OWNERDISPLAY = 128;
  static const CF_DSPTEXT = 129;
  static const CF_DSPBITMAP = 130;
  static const CF_DSPMETAFILEPICT = 131;
  static const CF_DSPENHMETAFILE = 142;
  static const CF_PRIVATEFIRST = 512;
  static const CF_PRIVATELAST = 767;
  static const CF_GDIOBJFIRST = 768;
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
  static const CLSCTX_INPROC_SERVER = 1;

  /// The code that manages objects of this class is an in-process handler.
  static const CLSCTX_INPROC_HANDLER = 2;

  /// The EXE code that creates and manages objects of this class runs on same
  /// machine but is loaded in a separate process space.
  static const CLSCTX_LOCAL_SERVER = 4;

  /// Obsolete.
  static const CLSCTX_INPROC_SERVER16 = 8;

  /// A remote context.
  static const CLSCTX_REMOTE_SERVER = 16;

  /// Obsolete.
  static const CLSCTX_INPROC_HANDLER16 = 32;

  /// Reserved.
  static const CLSCTX_RESERVED1 = 64;

  /// Reserved.
  static const CLSCTX_RESERVED2 = 128;

  /// Reserved.
  static const CLSCTX_RESERVED3 = 256;

  /// Reserved.
  static const CLSCTX_RESERVED4 = 512;

  /// Disables the downloading of code from the directory service or the
  /// Internet.
  static const CLSCTX_NO_CODE_DOWNLOAD = 1024;

  /// Reserved.
  static const CLSCTX_RESERVED5 = 2048;

  /// Specify if you want the activation to fail if it uses custom marshalling.
  static const CLSCTX_NO_CUSTOM_MARSHAL = 4096;

  /// Enables the downloading of code from the directory service or the
  /// Internet.
  static const CLSCTX_ENABLE_CODE_DOWNLOAD = 8192;

  /// The CLSCTX_NO_FAILURE_LOG can be used to override the logging of failures
  /// in <a
  /// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cocreateinstanceex">CoCreateInstanceEx</a>.
  static const CLSCTX_NO_FAILURE_LOG = 16384;

  /// Disables activate-as-activator (AAA) activations for this activation only.
  static const CLSCTX_DISABLE_AAA = 32768;

  /// Enables activate-as-activator (AAA) activations for this activation only.
  static const CLSCTX_ENABLE_AAA = 65536;

  /// Begin this activation from the default context of the current apartment.
  static const CLSCTX_FROM_DEFAULT_CONTEXT = 131072;

  static const CLSCTX_ACTIVATE_X86_SERVER = 262144;

  /// Activate or connect to a 32-bit version of the server; fail if one is not
  /// registered.
  static const CLSCTX_ACTIVATE_32_BIT_SERVER = 262144;

  /// Activate or connect to a 64 bit version of the server; fail if one is not
  /// registered.
  static const CLSCTX_ACTIVATE_64_BIT_SERVER = 524288;

  /// When this flag is specified, COM uses the impersonation token of the
  /// thread, if one is present, for the activation request made by the thread.
  static const CLSCTX_ENABLE_CLOAKING = 1048576;

  /// Indicates activation is for an app container.
  static const CLSCTX_APPCONTAINER = 4194304;

  /// Specify this flag for Interactive User activation behavior for
  /// As-Activator servers.
  static const CLSCTX_ACTIVATE_AAA_AS_IU = 8388608;

  static const CLSCTX_RESERVED6 = 16777216;

  static const CLSCTX_ACTIVATE_ARM32_SERVER = 33554432;
  static const CLSCTX_ALLOW_LOWER_TRUST_REGISTRATION = 67108864;

  /// Used for loading Proxy/Stub DLLs.
  static const CLSCTX_PS_DLL = 2147483648;
  static const CLSCTX_ALL = 23;
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
  static const COINIT_APARTMENTTHREADED = 2;

  /// Initializes the thread for multithreaded object concurrency.
  static const COINIT_MULTITHREADED = 0;

  /// Disables DDE for OLE1 support.
  static const COINIT_DISABLE_OLE1DDE = 4;

  /// Increase memory usage in an attempt to increase performance.
  static const COINIT_SPEED_OVER_MEMORY = 8;
}

/// {@category enum}
extension type const COINITBASE(int _) implements int {
  /// Initializes the thread for multithreaded object concurrency.
  static const COINITBASE_MULTITHREADED = 0;
}

/// {@category enum}
extension type const COMMPROP_STOP_PARITY(int _) implements int {
  static const STOPBITS_10 = 1;
  static const STOPBITS_15 = 2;
  static const STOPBITS_20 = 4;
  static const PARITY_NONE = 256;
  static const PARITY_ODD = 512;
  static const PARITY_EVEN = 1024;
  static const PARITY_MARK = 2048;
  static const PARITY_SPACE = 4096;
}

/// {@category enum}
extension type const COMM_EVENT_MASK(int _) implements int {
  static const EV_BREAK = 64;
  static const EV_CTS = 8;
  static const EV_DSR = 16;
  static const EV_ERR = 128;
  static const EV_EVENT1 = 2048;
  static const EV_EVENT2 = 4096;
  static const EV_PERR = 512;
  static const EV_RING = 256;
  static const EV_RLSD = 32;
  static const EV_RX80FULL = 1024;
  static const EV_RXCHAR = 1;
  static const EV_RXFLAG = 2;
  static const EV_TXEMPTY = 4;
}

/// {@category enum}
extension type const CONSOLE_CHARACTER_ATTRIBUTES(int _) implements int {
  static const FOREGROUND_BLUE = 1;
  static const FOREGROUND_GREEN = 2;
  static const FOREGROUND_RED = 4;
  static const FOREGROUND_INTENSITY = 8;
  static const BACKGROUND_BLUE = 16;
  static const BACKGROUND_GREEN = 32;
  static const BACKGROUND_RED = 64;
  static const BACKGROUND_INTENSITY = 128;
  static const COMMON_LVB_LEADING_BYTE = 256;
  static const COMMON_LVB_TRAILING_BYTE = 512;
  static const COMMON_LVB_GRID_HORIZONTAL = 1024;
  static const COMMON_LVB_GRID_LVERTICAL = 2048;
  static const COMMON_LVB_GRID_RVERTICAL = 4096;
  static const COMMON_LVB_REVERSE_VIDEO = 16384;
  static const COMMON_LVB_UNDERSCORE = 32768;
  static const COMMON_LVB_SBCSDBCS = 768;
}

/// {@category enum}
extension type const CONSOLE_MODE(int _) implements int {
  static const ENABLE_PROCESSED_INPUT = 1;
  static const ENABLE_LINE_INPUT = 2;
  static const ENABLE_ECHO_INPUT = 4;
  static const ENABLE_WINDOW_INPUT = 8;
  static const ENABLE_MOUSE_INPUT = 16;
  static const ENABLE_INSERT_MODE = 32;
  static const ENABLE_QUICK_EDIT_MODE = 64;
  static const ENABLE_EXTENDED_FLAGS = 128;
  static const ENABLE_AUTO_POSITION = 256;
  static const ENABLE_VIRTUAL_TERMINAL_INPUT = 512;
  static const ENABLE_PROCESSED_OUTPUT = 1;
  static const ENABLE_WRAP_AT_EOL_OUTPUT = 2;
  static const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 4;
  static const DISABLE_NEWLINE_AUTO_RETURN = 8;
  static const ENABLE_LVB_GRID_WORLDWIDE = 16;
}

/// {@category enum}
extension type const CREATE_EVENT(int _) implements int {
  static const CREATE_EVENT_INITIAL_SET = 2;
  static const CREATE_EVENT_MANUAL_RESET = 1;
}

/// {@category enum}
extension type const CRED_FLAGS(int _) implements int {
  static const CRED_FLAGS_PASSWORD_FOR_CERT = 1;
  static const CRED_FLAGS_PROMPT_NOW = 2;
  static const CRED_FLAGS_USERNAME_TARGET = 4;
  static const CRED_FLAGS_OWF_CRED_BLOB = 8;
  static const CRED_FLAGS_REQUIRE_CONFIRMATION = 16;
  static const CRED_FLAGS_WILDCARD_MATCH = 32;
  static const CRED_FLAGS_VSM_PROTECTED = 64;
  static const CRED_FLAGS_NGC_CERT = 128;
  static const CRED_FLAGS_VALID_FLAGS = 61695;
  static const CRED_FLAGS_VALID_INPUT_FLAGS = 61599;
}

/// {@category enum}
extension type const CRED_PERSIST(int _) implements int {
  static const CRED_PERSIST_NONE = 0;
  static const CRED_PERSIST_SESSION = 1;
  static const CRED_PERSIST_LOCAL_MACHINE = 2;
  static const CRED_PERSIST_ENTERPRISE = 3;
}

/// {@category enum}
extension type const CRED_TYPE(int _) implements int {
  static const CRED_TYPE_GENERIC = 1;
  static const CRED_TYPE_DOMAIN_PASSWORD = 2;
  static const CRED_TYPE_DOMAIN_CERTIFICATE = 3;
  static const CRED_TYPE_DOMAIN_VISIBLE_PASSWORD = 4;
  static const CRED_TYPE_GENERIC_CERTIFICATE = 5;
  static const CRED_TYPE_DOMAIN_EXTENDED = 6;
  static const CRED_TYPE_MAXIMUM = 7;
  static const CRED_TYPE_MAXIMUM_EX = 1007;
}

/// {@category enum}
extension type const CURSORINFO_FLAGS(int _) implements int {
  static const CURSOR_SHOWING = 1;
  static const CURSOR_SUPPRESSED = 2;
}

/// {@category enum}
extension type const CWP_FLAGS(int _) implements int {
  static const CWP_ALL = 0;
  static const CWP_SKIPINVISIBLE = 1;
  static const CWP_SKIPDISABLED = 2;
  static const CWP_SKIPTRANSPARENT = 4;
}

/// {@category enum}
extension type const DCB_PARITY(int _) implements int {
  static const EVENPARITY = 2;
  static const MARKPARITY = 3;
  static const NOPARITY = 0;
  static const ODDPARITY = 1;
  static const SPACEPARITY = 4;
}

/// {@category enum}
extension type const DCB_STOP_BITS(int _) implements int {
  static const ONESTOPBIT = 0;
  static const ONE5STOPBITS = 1;
  static const TWOSTOPBITS = 2;
}

/// {@category enum}
extension type const DEFINE_DOS_DEVICE_FLAGS(int _) implements int {
  static const DDD_RAW_TARGET_PATH = 1;
  static const DDD_REMOVE_DEFINITION = 2;
  static const DDD_EXACT_MATCH_ON_REMOVE = 4;
  static const DDD_NO_BROADCAST_SYSTEM = 8;
  static const DDD_LUID_BROADCAST_DRIVE = 16;
}

/// {@category enum}
extension type const DESKTOP_ACCESS_FLAGS(int _) implements int {
  static const DESKTOP_DELETE = 65536;
  static const DESKTOP_READ_CONTROL = 131072;
  static const DESKTOP_WRITE_DAC = 262144;
  static const DESKTOP_WRITE_OWNER = 524288;
  static const DESKTOP_SYNCHRONIZE = 1048576;
  static const DESKTOP_READOBJECTS = 1;
  static const DESKTOP_CREATEWINDOW = 2;
  static const DESKTOP_CREATEMENU = 4;
  static const DESKTOP_HOOKCONTROL = 8;
  static const DESKTOP_JOURNALRECORD = 16;
  static const DESKTOP_JOURNALPLAYBACK = 32;
  static const DESKTOP_ENUMERATE = 64;
  static const DESKTOP_WRITEOBJECTS = 128;
  static const DESKTOP_SWITCHDESKTOP = 256;
}

/// {@category enum}
extension type const DESKTOP_CONTROL_FLAGS(int _) implements int {
  static const DF_ALLOWOTHERACCOUNTHOOK = 1;
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
  static const DEVICE_SCALE_FACTOR_INVALID = 0;

  /// 100%.
  static const SCALE_100_PERCENT = 100;

  /// 120%.
  static const SCALE_120_PERCENT = 120;

  static const SCALE_125_PERCENT = 125;

  /// 140%.
  static const SCALE_140_PERCENT = 140;

  /// 150%.
  static const SCALE_150_PERCENT = 150;

  /// 160%.
  static const SCALE_160_PERCENT = 160;

  static const SCALE_175_PERCENT = 175;

  /// 180%.
  static const SCALE_180_PERCENT = 180;

  static const SCALE_200_PERCENT = 200;

  /// 225%.
  static const SCALE_225_PERCENT = 225;

  static const SCALE_250_PERCENT = 250;

  static const SCALE_300_PERCENT = 300;

  static const SCALE_350_PERCENT = 350;

  static const SCALE_400_PERCENT = 400;

  static const SCALE_450_PERCENT = 450;

  static const SCALE_500_PERCENT = 500;
}

/// {@category enum}
extension type const DEVICE_STATE(int _) implements int {
  static const DEVICE_STATE_ACTIVE = 1;
  static const DEVICE_STATE_DISABLED = 2;
  static const DEVICE_STATE_NOTPRESENT = 4;
  static const DEVICE_STATE_UNPLUGGED = 8;
}

/// {@category enum}
extension type const DEVMODE_COLLATE(int _) implements int {
  static const DMCOLLATE_FALSE = 0;
  static const DMCOLLATE_TRUE = 1;
}

/// {@category enum}
extension type const DEVMODE_COLOR(int _) implements int {
  static const DMCOLOR_MONOCHROME = 1;
  static const DMCOLOR_COLOR = 2;
}

/// {@category enum}
extension type const DEVMODE_DISPLAY_FIXED_OUTPUT(int _) implements int {
  static const DMDFO_DEFAULT = 0;
  static const DMDFO_STRETCH = 1;
  static const DMDFO_CENTER = 2;
}

/// {@category enum}
extension type const DEVMODE_DISPLAY_ORIENTATION(int _) implements int {
  static const DMDO_DEFAULT = 0;
  static const DMDO_90 = 1;
  static const DMDO_180 = 2;
  static const DMDO_270 = 3;
}

/// {@category enum}
extension type const DEVMODE_DUPLEX(int _) implements int {
  static const DMDUP_SIMPLEX = 1;
  static const DMDUP_VERTICAL = 2;
  static const DMDUP_HORIZONTAL = 3;
}

/// {@category enum}
extension type const DEVMODE_FIELD_FLAGS(int _) implements int {
  static const DM_SPECVERSION = 1025;
  static const DM_ORIENTATION = 1;
  static const DM_PAPERSIZE = 2;
  static const DM_PAPERLENGTH = 4;
  static const DM_PAPERWIDTH = 8;
  static const DM_SCALE = 16;
  static const DM_POSITION = 32;
  static const DM_NUP = 64;
  static const DM_DISPLAYORIENTATION = 128;
  static const DM_COPIES = 256;
  static const DM_DEFAULTSOURCE = 512;
  static const DM_PRINTQUALITY = 1024;
  static const DM_COLOR = 2048;
  static const DM_DUPLEX = 4096;
  static const DM_YRESOLUTION = 8192;
  static const DM_TTOPTION = 16384;
  static const DM_COLLATE = 32768;
  static const DM_FORMNAME = 65536;
  static const DM_LOGPIXELS = 131072;
  static const DM_BITSPERPEL = 262144;
  static const DM_PELSWIDTH = 524288;
  static const DM_PELSHEIGHT = 1048576;
  static const DM_DISPLAYFLAGS = 2097152;
  static const DM_DISPLAYFREQUENCY = 4194304;
  static const DM_ICMMETHOD = 8388608;
  static const DM_ICMINTENT = 16777216;
  static const DM_MEDIATYPE = 33554432;
  static const DM_DITHERTYPE = 67108864;
  static const DM_PANNINGWIDTH = 134217728;
  static const DM_PANNINGHEIGHT = 268435456;
  static const DM_DISPLAYFIXEDOUTPUT = 536870912;
  static const DM_INTERLACED = 2;
  static const DM_UPDATE = 1;
  static const DM_COPY = 2;
  static const DM_PROMPT = 4;
  static const DM_MODIFY = 8;
  static const DM_IN_BUFFER = 8;
  static const DM_IN_PROMPT = 4;
  static const DM_OUT_BUFFER = 2;
  static const DM_OUT_DEFAULT = 1;
}

/// {@category enum}
extension type const DEVMODE_TRUETYPE_OPTION(int _) implements int {
  static const DMTT_BITMAP = 1;
  static const DMTT_DOWNLOAD = 2;
  static const DMTT_SUBDEV = 3;
  static const DMTT_DOWNLOAD_OUTLINE = 4;
}

/// {@category enum}
extension type const DFCS_STATE(int _) implements int {
  static const DFCS_CAPTIONCLOSE = 0;
  static const DFCS_CAPTIONMIN = 1;
  static const DFCS_CAPTIONMAX = 2;
  static const DFCS_CAPTIONRESTORE = 3;
  static const DFCS_CAPTIONHELP = 4;
  static const DFCS_MENUARROW = 0;
  static const DFCS_MENUCHECK = 1;
  static const DFCS_MENUBULLET = 2;
  static const DFCS_MENUARROWRIGHT = 4;
  static const DFCS_SCROLLUP = 0;
  static const DFCS_SCROLLDOWN = 1;
  static const DFCS_SCROLLLEFT = 2;
  static const DFCS_SCROLLRIGHT = 3;
  static const DFCS_SCROLLCOMBOBOX = 5;
  static const DFCS_SCROLLSIZEGRIP = 8;
  static const DFCS_SCROLLSIZEGRIPRIGHT = 16;
  static const DFCS_BUTTONCHECK = 0;
  static const DFCS_BUTTONRADIOIMAGE = 1;
  static const DFCS_BUTTONRADIOMASK = 2;
  static const DFCS_BUTTONRADIO = 4;
  static const DFCS_BUTTON3STATE = 8;
  static const DFCS_BUTTONPUSH = 16;
  static const DFCS_INACTIVE = 256;
  static const DFCS_PUSHED = 512;
  static const DFCS_CHECKED = 1024;
  static const DFCS_TRANSPARENT = 2048;
  static const DFCS_HOT = 4096;
  static const DFCS_ADJUSTRECT = 8192;
  static const DFCS_FLAT = 16384;
  static const DFCS_MONO = 32768;
}

/// {@category enum}
extension type const DFC_TYPE(int _) implements int {
  static const DFC_CAPTION = 1;
  static const DFC_MENU = 2;
  static const DFC_SCROLL = 3;
  static const DFC_BUTTON = 4;
  static const DFC_POPUPMENU = 5;
}

/// {@category enum}
extension type const DIB_USAGE(int _) implements int {
  static const DIB_RGB_COLORS = 0;
  static const DIB_PAL_COLORS = 1;
}

/// {@category enum}
extension type const DISPATCH_FLAGS(int _) implements int {
  static const DISPATCH_METHOD = 1;
  static const DISPATCH_PROPERTYGET = 2;
  static const DISPATCH_PROPERTYPUT = 4;
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
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SOURCE_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(1);

  /// Specifies information about the monitor.
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(2);

  /// Specifies information about the preferred mode of a monitor.
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_PREFERRED_MODE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(3);

  /// Specifies the graphics adapter name.
  static const DISPLAYCONFIG_DEVICE_INFO_GET_ADAPTER_NAME =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(4);

  /// Specifies how to set the monitor.
  static const DISPLAYCONFIG_DEVICE_INFO_SET_TARGET_PERSISTENCE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(5);

  /// Specifies how to set the base output technology for a given target ID.
  static const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_BASE_TYPE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(6);

  /// Specifies the state of virtual mode support.
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SUPPORT_VIRTUAL_RESOLUTION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(7);

  /// Specifies how to set the state of virtual mode support.
  static const DISPLAYCONFIG_DEVICE_INFO_SET_SUPPORT_VIRTUAL_RESOLUTION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(8);

  static const DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(9);

  static const DISPLAYCONFIG_DEVICE_INFO_SET_ADVANCED_COLOR_STATE =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(10);

  /// Specifies the current SDR white level for an HDR monitor.
  static const DISPLAYCONFIG_DEVICE_INFO_GET_SDR_WHITE_LEVEL =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(11);
  static const DISPLAYCONFIG_DEVICE_INFO_GET_MONITOR_SPECIALIZATION =
      DISPLAYCONFIG_DEVICE_INFO_TYPE(12);
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
  static const DISPLAYCONFIG_MODE_INFO_TYPE_SOURCE =
      DISPLAYCONFIG_MODE_INFO_TYPE(1);

  /// Indicates that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
  /// structure contains target mode information.
  static const DISPLAYCONFIG_MODE_INFO_TYPE_TARGET =
      DISPLAYCONFIG_MODE_INFO_TYPE(2);

  /// Indicates that the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
  /// structure contains a valid <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_desktop_image_info">DISPLAYCONFIG_DESKTOP_IMAGE_INFO</a>
  /// structure.
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
  static const DISPLAYCONFIG_PIXELFORMAT_8BPP = 1;

  /// Indicates 16 BPP format.
  static const DISPLAYCONFIG_PIXELFORMAT_16BPP = 2;

  /// Indicates 24 BPP format.
  static const DISPLAYCONFIG_PIXELFORMAT_24BPP = 3;

  /// Indicates 32 BPP format.
  static const DISPLAYCONFIG_PIXELFORMAT_32BPP = 4;

  /// Indicates that the current display is not an 8, 16, 24, or 32 BPP GDI
  /// desktop mode.
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
  static const DISPLAYCONFIG_ROTATION_IDENTITY = 1;

  /// Indicates that rotation is 90 degrees clockwise—portrait mode.
  static const DISPLAYCONFIG_ROTATION_ROTATE90 = 2;

  /// Indicates that rotation is 180 degrees clockwise—inverted landscape mode.
  static const DISPLAYCONFIG_ROTATION_ROTATE180 = 3;

  /// Indicates that rotation is 270 degrees clockwise—inverted portrait mode.
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
  static const DISPLAYCONFIG_SCALING_IDENTITY = 1;

  /// Indicates the centering transformation; the source content is presented
  /// unscaled, centered with respect to the spatial resolution of the target
  /// mode.
  static const DISPLAYCONFIG_SCALING_CENTERED = 2;

  /// Indicates the content is scaled to fit the path's target.
  static const DISPLAYCONFIG_SCALING_STRETCHED = 3;

  /// Indicates the aspect-ratio centering transformation.
  static const DISPLAYCONFIG_SCALING_ASPECTRATIOCENTEREDMAX =
      DISPLAYCONFIG_SCALING(4);

  /// Indicates that the caller requests a custom scaling that the caller cannot
  /// describe with any of the other DISPLAYCONFIG_SCALING_XXX values.
  static const DISPLAYCONFIG_SCALING_CUSTOM = 5;

  /// Indicates that the caller does not have any preference for the scaling.
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
  static const DISPLAYCONFIG_SCANLINE_ORDERING_UNSPECIFIED =
      DISPLAYCONFIG_SCANLINE_ORDERING(0);

  /// Indicates that the output is a progressive image.
  static const DISPLAYCONFIG_SCANLINE_ORDERING_PROGRESSIVE =
      DISPLAYCONFIG_SCANLINE_ORDERING(1);

  /// Indicates that the output is an interlaced image that is created beginning
  /// with the upper field.
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED =
      DISPLAYCONFIG_SCANLINE_ORDERING(2);

  /// Indicates that the output is an interlaced image that is created beginning
  /// with the upper field.
  static const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_UPPERFIELDFIRST =
      DISPLAYCONFIG_SCANLINE_ORDERING(2);

  /// Indicates that the output is an interlaced image that is created beginning
  /// with the lower field.
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
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_OTHER =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(-1);

  /// Indicates an HD15 (VGA) connector.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HD15 =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0);

  /// Indicates an S-video connector.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SVIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(1);

  /// Indicates a composite video connector group.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPOSITE_VIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(2);

  /// Indicates a component video connector group.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPONENT_VIDEO =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(3);

  /// Indicates a Digital Video Interface (DVI) connector.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DVI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(4);

  /// Indicates a High-Definition Multimedia Interface (HDMI) connector.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HDMI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(5);

  /// Indicates a Low Voltage Differential Swing (LVDS) connector.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_LVDS =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(6);

  /// Indicates a Japanese D connector.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_D_JPN =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(8);

  /// Indicates an SDI connector.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDI =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(9);

  /// Indicates an external display port, which is a display port that connects
  /// externally to a display device.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EXTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(10);

  /// Indicates an embedded display port that connects internally to a display
  /// device.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EMBEDDED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(11);

  /// Indicates an external Unified Display Interface (UDI), which is a UDI that
  /// connects externally to a display device.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EXTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(12);

  /// Indicates an embedded UDI that connects internally to a display device.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EMBEDDED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(13);

  /// Indicates a dongle cable that supports standard definition television
  /// (SDTV).
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDTVDONGLE =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(14);

  /// Indicates that the VidPN target is a Miracast wireless display device.
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_MIRACAST =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(15);

  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_WIRED =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(16);

  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_VIRTUAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(17);
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_USB_TUNNEL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(18);

  /// Indicates that the video output device connects internally to a display
  /// device (for example, the internal connection in a laptop computer).
  static const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INTERNAL =
      DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(-2147483648);
}

/// {@category enum}
extension type const DISP_CHANGE(int _) implements int {
  static const DISP_CHANGE_SUCCESSFUL = 0;
  static const DISP_CHANGE_RESTART = 1;
  static const DISP_CHANGE_FAILED = DISP_CHANGE(-1);
  static const DISP_CHANGE_BADMODE = DISP_CHANGE(-2);
  static const DISP_CHANGE_NOTUPDATED = DISP_CHANGE(-3);
  static const DISP_CHANGE_BADFLAGS = DISP_CHANGE(-4);
  static const DISP_CHANGE_BADPARAM = DISP_CHANGE(-5);
  static const DISP_CHANGE_BADDUALVIEW = DISP_CHANGE(-6);
}

/// {@category enum}
extension type const DLG_BUTTON_CHECK_STATE(int _) implements int {
  static const BST_CHECKED = 1;
  static const BST_INDETERMINATE = 2;
  static const BST_UNCHECKED = 0;
}

/// Defines a wireless LAN authentication algorithm.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-auth-algorithm>.
///
/// {@category enum}
extension type const DOT11_AUTH_ALGORITHM(int _) implements int {
  static const DOT11_AUTH_ALGO_80211_OPEN = 1;
  static const DOT11_AUTH_ALGO_80211_SHARED_KEY = 2;
  static const DOT11_AUTH_ALGO_WPA = 3;
  static const DOT11_AUTH_ALGO_WPA_PSK = 4;
  static const DOT11_AUTH_ALGO_WPA_NONE = 5;
  static const DOT11_AUTH_ALGO_RSNA = 6;
  static const DOT11_AUTH_ALGO_RSNA_PSK = 7;
  static const DOT11_AUTH_ALGO_WPA3 = 8;
  static const DOT11_AUTH_ALGO_WPA3_ENT_192 = 8;
  static const DOT11_AUTH_ALGO_WPA3_SAE = 9;
  static const DOT11_AUTH_ALGO_OWE = 10;
  static const DOT11_AUTH_ALGO_WPA3_ENT = 11;
  static const DOT11_AUTH_ALGO_IHV_START = DOT11_AUTH_ALGORITHM(-2147483648);
  static const DOT11_AUTH_ALGO_IHV_END = DOT11_AUTH_ALGORITHM(-1);
}

/// Defines a basic service set (BSS) network type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-bss-type>.
///
/// {@category enum}
extension type const DOT11_BSS_TYPE(int _) implements int {
  static const dot11_BSS_type_infrastructure = 1;
  static const dot11_BSS_type_independent = 2;
  static const dot11_BSS_type_any = 3;
}

/// Defines a cipher algorithm for data encryption and decryption.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-cipher-algorithm>.
///
/// {@category enum}
extension type const DOT11_CIPHER_ALGORITHM(int _) implements int {
  static const DOT11_CIPHER_ALGO_NONE = 0;
  static const DOT11_CIPHER_ALGO_WEP40 = 1;
  static const DOT11_CIPHER_ALGO_TKIP = 2;
  static const DOT11_CIPHER_ALGO_CCMP = 4;
  static const DOT11_CIPHER_ALGO_WEP104 = 5;
  static const DOT11_CIPHER_ALGO_BIP = 6;
  static const DOT11_CIPHER_ALGO_GCMP = 8;
  static const DOT11_CIPHER_ALGO_GCMP_256 = 9;
  static const DOT11_CIPHER_ALGO_CCMP_256 = 10;
  static const DOT11_CIPHER_ALGO_BIP_GMAC_128 = 11;
  static const DOT11_CIPHER_ALGO_BIP_GMAC_256 = 12;
  static const DOT11_CIPHER_ALGO_BIP_CMAC_256 = 13;
  static const DOT11_CIPHER_ALGO_WPA_USE_GROUP = 256;
  static const DOT11_CIPHER_ALGO_RSN_USE_GROUP = 256;
  static const DOT11_CIPHER_ALGO_WEP = 257;
  static const DOT11_CIPHER_ALGO_IHV_START =
      DOT11_CIPHER_ALGORITHM(-2147483648);
  static const DOT11_CIPHER_ALGO_IHV_END = DOT11_CIPHER_ALGORITHM(-1);
}

/// Defines an 802.11 PHY and media type.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-phy-type>.
///
/// {@category enum}
extension type const DOT11_PHY_TYPE(int _) implements int {
  static const dot11_phy_type_unknown = 0;
  static const dot11_phy_type_any = 0;
  static const dot11_phy_type_fhss = 1;
  static const dot11_phy_type_dsss = 2;
  static const dot11_phy_type_irbaseband = 3;
  static const dot11_phy_type_ofdm = 4;
  static const dot11_phy_type_hrdsss = 5;
  static const dot11_phy_type_erp = 6;
  static const dot11_phy_type_ht = 7;
  static const dot11_phy_type_vht = 8;
  static const dot11_phy_type_dmg = 9;
  static const dot11_phy_type_he = 10;
  static const dot11_phy_type_eht = 11;
  static const dot11_phy_type_IHV_start = DOT11_PHY_TYPE(-2147483648);
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
  static const dot11_radio_state_unknown = 0;

  /// The radio is on.
  static const dot11_radio_state_on = 1;

  /// The radio is off.
  static const dot11_radio_state_off = 2;
}

/// {@category enum}
extension type const DRAWEDGE_FLAGS(int _) implements int {
  static const BDR_RAISEDOUTER = 1;
  static const BDR_SUNKENOUTER = 2;
  static const BDR_RAISEDINNER = 4;
  static const BDR_SUNKENINNER = 8;
  static const BDR_OUTER = 3;
  static const BDR_INNER = 12;
  static const BDR_RAISED = 5;
  static const BDR_SUNKEN = 10;
  static const EDGE_RAISED = 5;
  static const EDGE_SUNKEN = 10;
  static const EDGE_ETCHED = 6;
  static const EDGE_BUMP = 9;
}

/// {@category enum}
extension type const DRAWSTATE_FLAGS(int _) implements int {
  static const DST_COMPLEX = 0;
  static const DST_TEXT = 1;
  static const DST_PREFIXTEXT = 2;
  static const DST_ICON = 3;
  static const DST_BITMAP = 4;
  static const DSS_NORMAL = 0;
  static const DSS_UNION = 16;
  static const DSS_DISABLED = 32;
  static const DSS_MONO = 128;
  static const DSS_HIDEPREFIX = 512;
  static const DSS_PREFIXONLY = 1024;
  static const DSS_RIGHT = 32768;
}

/// {@category enum}
extension type const DRAW_CAPTION_FLAGS(int _) implements int {
  static const DC_ACTIVE = 1;
  static const DC_BUTTONS = 4096;
  static const DC_GRADIENT = 32;
  static const DC_ICON = 4;
  static const DC_INBUTTON = 16;
  static const DC_SMALLCAP = 2;
  static const DC_TEXT = 8;
}

/// {@category enum}
extension type const DRAW_EDGE_FLAGS(int _) implements int {
  static const BF_ADJUST = 8192;
  static const BF_BOTTOM = 8;
  static const BF_BOTTOMLEFT = 9;
  static const BF_BOTTOMRIGHT = 12;
  static const BF_DIAGONAL = 16;
  static const BF_DIAGONAL_ENDBOTTOMLEFT = 25;
  static const BF_DIAGONAL_ENDBOTTOMRIGHT = 28;
  static const BF_DIAGONAL_ENDTOPLEFT = 19;
  static const BF_DIAGONAL_ENDTOPRIGHT = 22;
  static const BF_FLAT = 16384;
  static const BF_LEFT = 1;
  static const BF_MIDDLE = 2048;
  static const BF_MONO = 32768;
  static const BF_RECT = 15;
  static const BF_RIGHT = 4;
  static const BF_SOFT = 4096;
  static const BF_TOP = 2;
  static const BF_TOPLEFT = 3;
  static const BF_TOPRIGHT = 6;
}

/// {@category enum}
extension type const DRAW_TEXT_FORMAT(int _) implements int {
  static const DT_BOTTOM = 8;
  static const DT_CALCRECT = 1024;
  static const DT_CENTER = 1;
  static const DT_EDITCONTROL = 8192;
  static const DT_END_ELLIPSIS = 32768;
  static const DT_EXPANDTABS = 64;
  static const DT_EXTERNALLEADING = 512;
  static const DT_HIDEPREFIX = 1048576;
  static const DT_INTERNAL = 4096;
  static const DT_LEFT = 0;
  static const DT_MODIFYSTRING = 65536;
  static const DT_NOCLIP = 256;
  static const DT_NOFULLWIDTHCHARBREAK = 524288;
  static const DT_NOPREFIX = 2048;
  static const DT_PATH_ELLIPSIS = 16384;
  static const DT_PREFIXONLY = 2097152;
  static const DT_RIGHT = 2;
  static const DT_RTLREADING = 131072;
  static const DT_SINGLELINE = 32;
  static const DT_TABSTOP = 128;
  static const DT_TOP = 0;
  static const DT_VCENTER = 4;
  static const DT_WORDBREAK = 16;
  static const DT_WORD_ELLIPSIS = 262144;
}

/// {@category enum}
extension type const DRAW_THEME_PARENT_BACKGROUND_FLAGS(int _) implements int {
  static const DTPB_WINDOWDC = 1;
  static const DTPB_USECTLCOLORSTATIC = 2;
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
  static const DSREG_UNKNOWN_JOIN = 0;

  /// The device is joined to Azure Active Directory (Azure AD).
  static const DSREG_DEVICE_JOIN = 1;

  /// The device is registered to Azure Active Directory (Azure AD), meaning an
  /// Azure AD work account is added on the device.
  static const DSREG_WORKPLACE_JOIN = 2;
}

/// {@category enum}
extension type const DTTOPTS_FLAGS(int _) implements int {
  static const DTT_TEXTCOLOR = 1;
  static const DTT_BORDERCOLOR = 2;
  static const DTT_SHADOWCOLOR = 4;
  static const DTT_SHADOWTYPE = 8;
  static const DTT_SHADOWOFFSET = 16;
  static const DTT_BORDERSIZE = 32;
  static const DTT_FONTPROP = 64;
  static const DTT_COLORPROP = 128;
  static const DTT_STATEID = 256;
  static const DTT_CALCRECT = 512;
  static const DTT_APPLYOVERLAY = 1024;
  static const DTT_GLOWSIZE = 2048;
  static const DTT_CALLBACK = 4096;
  static const DTT_COMPOSITED = 8192;
  static const DTT_VALIDBITS = 12287;
}

/// {@category enum}
extension type const DUPLICATE_HANDLE_OPTIONS(int _) implements int {
  static const DUPLICATE_CLOSE_SOURCE = 1;
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
  static const DWMSC_DOWN = 1;

  /// Up.
  static const DWMSC_UP = 2;

  /// Drag.
  static const DWMSC_DRAG = 4;

  /// Hold.
  static const DWMSC_HOLD = 8;

  /// Pen barrel.
  static const DWMSC_PENBARREL = 16;

  /// None.
  static const DWMSC_NONE = 0;

  /// All.
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
  static const DockPosition_Top = 0;

  /// The window is docked at the left.
  static const DockPosition_Left = 1;

  /// The window is docked at the bottom.
  static const DockPosition_Bottom = 2;

  /// The window is docked at the right.
  static const DockPosition_Right = 3;

  /// The window is docked on all four sides.
  static const DockPosition_Fill = 4;

  /// The window is not docked.
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
  static const eRender = 0;

  /// Audio capture stream.
  static const eCapture = 1;

  /// Audio rendering or capture stream.
  static const eAll = 2;

  /// The number of members in the <a
  /// href="https://docs.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-edataflow">EDataFlow</a>
  /// enumeration (not counting the EDataFlow_enum_count member).
  static const EDataFlow_enum_count = 3;
}

/// {@category enum}
extension type const ENABLE_SCROLL_BAR_ARROWS(int _) implements int {
  static const ESB_DISABLE_BOTH = 3;
  static const ESB_DISABLE_DOWN = 2;
  static const ESB_DISABLE_LEFT = 1;
  static const ESB_DISABLE_LTUP = 1;
  static const ESB_DISABLE_RIGHT = 2;
  static const ESB_DISABLE_RTDN = 2;
  static const ESB_DISABLE_UP = 1;
  static const ESB_ENABLE_BOTH = 0;
}

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_FLAGS(int _) implements int {
  static const EDS_RAWMODE = 2;
  static const EDS_ROTATEDMODE = 4;
}

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_MODE(int _) implements int {
  static const ENUM_CURRENT_SETTINGS = 4294967295;
  static const ENUM_REGISTRY_SETTINGS = 4294967294;
}

/// {@category enum}
extension type const ENUM_PROCESS_MODULES_EX_FLAGS(int _) implements int {
  static const LIST_MODULES_ALL = 3;
  static const LIST_MODULES_DEFAULT = 0;
  static const LIST_MODULES_32BIT = 1;
  static const LIST_MODULES_64BIT = 2;
}

/// {@category enum}
extension type const ENUM_SERVICE_STATE(int _) implements int {
  static const SERVICE_ACTIVE = 1;
  static const SERVICE_INACTIVE = 2;
  static const SERVICE_STATE_ALL = 3;
}

/// {@category enum}
extension type const ENUM_SERVICE_TYPE(int _) implements int {
  static const SERVICE_DRIVER = 11;
  static const SERVICE_KERNEL_DRIVER = 1;
  static const SERVICE_WIN32 = 48;
  static const SERVICE_WIN32_SHARE_PROCESS = 32;
  static const SERVICE_ADAPTER = 4;
  static const SERVICE_FILE_SYSTEM_DRIVER = 2;
  static const SERVICE_RECOGNIZER_DRIVER = 8;
  static const SERVICE_WIN32_OWN_PROCESS = 16;
  static const SERVICE_USER_OWN_PROCESS = 80;
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
  static const kJobProduction = 1;
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
  static const kAddingDocumentSequence = 0;
  static const kDocumentSequenceAdded = 1;
  static const kAddingFixedDocument = 2;
  static const kFixedDocumentAdded = 3;
  static const kAddingFixedPage = 4;
  static const kFixedPageAdded = 5;
  static const kResourceAdded = 6;
  static const kFontAdded = 7;
  static const kImageAdded = 8;
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
  static const eConsole = 0;

  /// Music, movies, narration, and live music recording.
  static const eMultimedia = 1;

  /// Voice communications (talking to another person).
  static const eCommunications = 2;

  /// The number of members in the <a
  /// href="https://docs.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-erole">ERole</a>
  /// enumeration (not counting the ERole_enum_count member).
  static const ERole_enum_count = 3;
}

/// {@category enum}
extension type const ESCAPE_COMM_FUNCTION(int _) implements int {
  static const CLRBREAK = 9;
  static const CLRDTR = 6;
  static const CLRRTS = 4;
  static const SETBREAK = 8;
  static const SETDTR = 5;
  static const SETRTS = 3;
  static const SETXOFF = 1;
  static const SETXON = 2;
}

/// {@category enum}
extension type const ETO_OPTIONS(int _) implements int {
  static const ETO_OPAQUE = 2;
  static const ETO_CLIPPED = 4;
  static const ETO_GLYPH_INDEX = 16;
  static const ETO_RTLREADING = 128;
  static const ETO_NUMERICSLOCAL = 1024;
  static const ETO_NUMERICSLATIN = 2048;
  static const ETO_IGNORELANGUAGE = 4096;
  static const ETO_PDY = 8192;
  static const ETO_REVERSE_INDEX_MAP = 65536;
}

/// {@category enum}
extension type const EXECUTION_STATE(int _) implements int {
  static const ES_AWAYMODE_REQUIRED = 64;
  static const ES_CONTINUOUS = 2147483648;
  static const ES_DISPLAY_REQUIRED = 2;
  static const ES_SYSTEM_REQUIRED = 1;
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
  static const ExpandCollapseState_Collapsed = 0;

  /// All children are visible.
  static const ExpandCollapseState_Expanded = 1;

  /// Some, but not all, children are visible.
  static const ExpandCollapseState_PartiallyExpanded = 2;

  /// The element does not expand or collapse.
  static const ExpandCollapseState_LeafNode = 3;
}

/// {@category enum}
extension type const FACILITY_CODE(int _) implements int {
  static const FACILITY_NULL = 0;
  static const FACILITY_RPC = 1;
  static const FACILITY_DISPATCH = 2;
  static const FACILITY_STORAGE = 3;
  static const FACILITY_ITF = 4;
  static const FACILITY_WIN32 = 7;
  static const FACILITY_WINDOWS = 8;
  static const FACILITY_SSPI = 9;
  static const FACILITY_SECURITY = 9;
  static const FACILITY_CONTROL = 10;
  static const FACILITY_CERT = 11;
  static const FACILITY_INTERNET = 12;
  static const FACILITY_MEDIASERVER = 13;
  static const FACILITY_MSMQ = 14;
  static const FACILITY_SETUPAPI = 15;
  static const FACILITY_SCARD = 16;
  static const FACILITY_COMPLUS = 17;
  static const FACILITY_AAF = 18;
  static const FACILITY_URT = 19;
  static const FACILITY_ACS = 20;
  static const FACILITY_DPLAY = 21;
  static const FACILITY_UMI = 22;
  static const FACILITY_SXS = 23;
  static const FACILITY_WINDOWS_CE = 24;
  static const FACILITY_HTTP = 25;
  static const FACILITY_USERMODE_COMMONLOG = 26;
  static const FACILITY_WER = 27;
  static const FACILITY_USERMODE_FILTER_MANAGER = 31;
  static const FACILITY_BACKGROUNDCOPY = 32;
  static const FACILITY_CONFIGURATION = 33;
  static const FACILITY_WIA = 33;
  static const FACILITY_STATE_MANAGEMENT = 34;
  static const FACILITY_METADIRECTORY = 35;
  static const FACILITY_WINDOWSUPDATE = 36;
  static const FACILITY_DIRECTORYSERVICE = 37;
  static const FACILITY_GRAPHICS = 38;
  static const FACILITY_SHELL = 39;
  static const FACILITY_NAP = 39;
  static const FACILITY_TPM_SERVICES = 40;
  static const FACILITY_TPM_SOFTWARE = 41;
  static const FACILITY_UI = 42;
  static const FACILITY_XAML = 43;
  static const FACILITY_ACTION_QUEUE = 44;
  static const FACILITY_PLA = 48;
  static const FACILITY_WINDOWS_SETUP = 48;
  static const FACILITY_FVE = 49;
  static const FACILITY_FWP = 50;
  static const FACILITY_WINRM = 51;
  static const FACILITY_NDIS = 52;
  static const FACILITY_USERMODE_HYPERVISOR = 53;
  static const FACILITY_CMI = 54;
  static const FACILITY_USERMODE_VIRTUALIZATION = 55;
  static const FACILITY_USERMODE_VOLMGR = 56;
  static const FACILITY_BCD = 57;
  static const FACILITY_USERMODE_VHD = 58;
  static const FACILITY_USERMODE_HNS = 59;
  static const FACILITY_SDIAG = 60;
  static const FACILITY_WEBSERVICES = 61;
  static const FACILITY_WINPE = 61;
  static const FACILITY_WPN = 62;
  static const FACILITY_WINDOWS_STORE = 63;
  static const FACILITY_INPUT = 64;
  static const FACILITY_QUIC = 65;
  static const FACILITY_EAP = 66;
  static const FACILITY_IORING = 70;
  static const FACILITY_WINDOWS_DEFENDER = 80;
  static const FACILITY_OPC = 81;
  static const FACILITY_XPS = 82;
  static const FACILITY_MBN = 84;
  static const FACILITY_POWERSHELL = 84;
  static const FACILITY_RAS = 83;
  static const FACILITY_P2P_INT = 98;
  static const FACILITY_P2P = 99;
  static const FACILITY_DAF = 100;
  static const FACILITY_BLUETOOTH_ATT = 101;
  static const FACILITY_AUDIO = 102;
  static const FACILITY_STATEREPOSITORY = 103;
  static const FACILITY_VISUALCPP = 109;
  static const FACILITY_SCRIPT = 112;
  static const FACILITY_PARSE = 113;
  static const FACILITY_BLB = 120;
  static const FACILITY_BLB_CLI = 121;
  static const FACILITY_WSBAPP = 122;
  static const FACILITY_BLBUI = 128;
  static const FACILITY_USN = 129;
  static const FACILITY_USERMODE_VOLSNAP = 130;
  static const FACILITY_TIERING = 131;
  static const FACILITY_WSB_ONLINE = 133;
  static const FACILITY_ONLINE_ID = 134;
  static const FACILITY_DEVICE_UPDATE_AGENT = 135;
  static const FACILITY_DRVSERVICING = 136;
  static const FACILITY_DLS = 153;
  static const FACILITY_DELIVERY_OPTIMIZATION = 208;
  static const FACILITY_USERMODE_SPACES = 231;
  static const FACILITY_USER_MODE_SECURITY_CORE = 232;
  static const FACILITY_USERMODE_LICENSING = 234;
  static const FACILITY_SOS = 160;
  static const FACILITY_OCP_UPDATE_AGENT = 173;
  static const FACILITY_DEBUGGERS = 176;
  static const FACILITY_SPP = 256;
  static const FACILITY_RESTORE = 256;
  static const FACILITY_DMSERVER = 256;
  static const FACILITY_DEPLOYMENT_SERVICES_SERVER = 257;
  static const FACILITY_DEPLOYMENT_SERVICES_IMAGING = 258;
  static const FACILITY_DEPLOYMENT_SERVICES_MANAGEMENT = 259;
  static const FACILITY_DEPLOYMENT_SERVICES_UTIL = 260;
  static const FACILITY_DEPLOYMENT_SERVICES_BINLSVC = 261;
  static const FACILITY_DEPLOYMENT_SERVICES_PXE = 263;
  static const FACILITY_DEPLOYMENT_SERVICES_TFTP = 264;
  static const FACILITY_DEPLOYMENT_SERVICES_TRANSPORT_MANAGEMENT = 272;
  static const FACILITY_DEPLOYMENT_SERVICES_DRIVER_PROVISIONING = 278;
  static const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_SERVER = 289;
  static const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_CLIENT = 290;
  static const FACILITY_DEPLOYMENT_SERVICES_CONTENT_PROVIDER = 293;
  static const FACILITY_HSP_SERVICES = 296;
  static const FACILITY_HSP_SOFTWARE = 297;
  static const FACILITY_LINGUISTIC_SERVICES = 305;
  static const FACILITY_AUDIOSTREAMING = 1094;
  static const FACILITY_TTD = 1490;
  static const FACILITY_ACCELERATOR = 1536;
  static const FACILITY_WMAAECMA = 1996;
  static const FACILITY_DIRECTMUSIC = 2168;
  static const FACILITY_DIRECT3D10 = 2169;
  static const FACILITY_DXGI = 2170;
  static const FACILITY_DXGI_DDI = 2171;
  static const FACILITY_DIRECT3D11 = 2172;
  static const FACILITY_DIRECT3D11_DEBUG = 2173;
  static const FACILITY_DIRECT3D12 = 2174;
  static const FACILITY_DIRECT3D12_DEBUG = 2175;
  static const FACILITY_DXCORE = 2176;
  static const FACILITY_PRESENTATION = 2177;
  static const FACILITY_LEAP = 2184;
  static const FACILITY_AUDCLNT = 2185;
  static const FACILITY_WINCODEC_DWRITE_DWM = 2200;
  static const FACILITY_WINML = 2192;
  static const FACILITY_DIRECT2D = 2201;
  static const FACILITY_DEFRAG = 2304;
  static const FACILITY_USERMODE_SDBUS = 2305;
  static const FACILITY_JSCRIPT = 2306;
  static const FACILITY_PIDGENX = 2561;
  static const FACILITY_EAS = 85;
  static const FACILITY_WEB = 885;
  static const FACILITY_WEB_SOCKET = 886;
  static const FACILITY_MOBILE = 1793;
  static const FACILITY_SQLITE = 1967;
  static const FACILITY_SERVICE_FABRIC = 1968;
  static const FACILITY_UTC = 1989;
  static const FACILITY_WEP = 2049;
  static const FACILITY_SYNCENGINE = 2050;
  static const FACILITY_XBOX = 2339;
  static const FACILITY_GAME = 2340;
  static const FACILITY_PIX = 2748;
  static const FACILITY_NT_BIT = 268435456;
}

/// {@category enum}
extension type const FILEOPERATION_FLAGS(int _) implements int {
  static const FOFX_NOSKIPJUNCTIONS = 65536;
  static const FOFX_PREFERHARDLINK = 131072;
  static const FOFX_SHOWELEVATIONPROMPT = 262144;
  static const FOFX_RECYCLEONDELETE = 524288;
  static const FOFX_EARLYFAILURE = 1048576;
  static const FOFX_PRESERVEFILEEXTENSIONS = 2097152;
  static const FOFX_KEEPNEWERFILE = 4194304;
  static const FOFX_NOCOPYHOOKS = 8388608;
  static const FOFX_NOMINIMIZEBOX = 16777216;
  static const FOFX_MOVEACLSACROSSVOLUMES = 33554432;
  static const FOFX_DONTDISPLAYSOURCEPATH = 67108864;
  static const FOFX_DONTDISPLAYDESTPATH = 134217728;
  static const FOFX_REQUIREELEVATION = 268435456;
  static const FOFX_ADDUNDORECORD = 536870912;
  static const FOFX_COPYASDOWNLOAD = 1073741824;
  static const FOFX_DONTDISPLAYLOCATIONS = 2147483648;
  static const FOF_MULTIDESTFILES = 1;
  static const FOF_CONFIRMMOUSE = 2;
  static const FOF_SILENT = 4;
  static const FOF_RENAMEONCOLLISION = 8;
  static const FOF_NOCONFIRMATION = 16;
  static const FOF_WANTMAPPINGHANDLE = 32;
  static const FOF_ALLOWUNDO = 64;
  static const FOF_FILESONLY = 128;
  static const FOF_SIMPLEPROGRESS = 256;
  static const FOF_NOCONFIRMMKDIR = 512;
  static const FOF_NOERRORUI = 1024;
  static const FOF_NOCOPYSECURITYATTRIBS = 2048;
  static const FOF_NORECURSION = 4096;
  static const FOF_NO_CONNECTED_ELEMENTS = 8192;
  static const FOF_WANTNUKEWARNING = 16384;
  static const FOF_NORECURSEREPARSE = 32768;
  static const FOF_NO_UI = 1556;
}

/// {@category enum}
extension type const FILE_ACCESS_RIGHTS(int _) implements int {
  static const FILE_READ_DATA = 1;
  static const FILE_LIST_DIRECTORY = 1;
  static const FILE_WRITE_DATA = 2;
  static const FILE_ADD_FILE = 2;
  static const FILE_APPEND_DATA = 4;
  static const FILE_ADD_SUBDIRECTORY = 4;
  static const FILE_CREATE_PIPE_INSTANCE = 4;
  static const FILE_READ_EA = 8;
  static const FILE_WRITE_EA = 16;
  static const FILE_EXECUTE = 32;
  static const FILE_TRAVERSE = 32;
  static const FILE_DELETE_CHILD = 64;
  static const FILE_READ_ATTRIBUTES = 128;
  static const FILE_WRITE_ATTRIBUTES = 256;
  static const DELETE = 65536;
  static const READ_CONTROL = 131072;
  static const WRITE_DAC = 262144;
  static const WRITE_OWNER = 524288;
  static const SYNCHRONIZE = 1048576;
  static const STANDARD_RIGHTS_REQUIRED = 983040;
  static const STANDARD_RIGHTS_READ = 131072;
  static const STANDARD_RIGHTS_WRITE = 131072;
  static const STANDARD_RIGHTS_EXECUTE = 131072;
  static const STANDARD_RIGHTS_ALL = 2031616;
  static const SPECIFIC_RIGHTS_ALL = 65535;
  static const FILE_ALL_ACCESS = 2032127;
  static const FILE_GENERIC_READ = 1179785;
  static const FILE_GENERIC_WRITE = 1179926;
  static const FILE_GENERIC_EXECUTE = 1179808;
}

/// {@category enum}
extension type const FILE_ACTION(int _) implements int {
  static const FILE_ACTION_ADDED = 1;
  static const FILE_ACTION_REMOVED = 2;
  static const FILE_ACTION_MODIFIED = 3;
  static const FILE_ACTION_RENAMED_OLD_NAME = 4;
  static const FILE_ACTION_RENAMED_NEW_NAME = 5;
}

/// {@category enum}
extension type const FILE_CREATION_DISPOSITION(int _) implements int {
  static const CREATE_NEW = 1;
  static const CREATE_ALWAYS = 2;
  static const OPEN_EXISTING = 3;
  static const OPEN_ALWAYS = 4;
  static const TRUNCATE_EXISTING = 5;
}

/// {@category enum}
extension type const FILE_FLAGS_AND_ATTRIBUTES(int _) implements int {
  static const FILE_ATTRIBUTE_READONLY = 1;
  static const FILE_ATTRIBUTE_HIDDEN = 2;
  static const FILE_ATTRIBUTE_SYSTEM = 4;
  static const FILE_ATTRIBUTE_DIRECTORY = 16;
  static const FILE_ATTRIBUTE_ARCHIVE = 32;
  static const FILE_ATTRIBUTE_DEVICE = 64;
  static const FILE_ATTRIBUTE_NORMAL = 128;
  static const FILE_ATTRIBUTE_TEMPORARY = 256;
  static const FILE_ATTRIBUTE_SPARSE_FILE = 512;
  static const FILE_ATTRIBUTE_REPARSE_POINT = 1024;
  static const FILE_ATTRIBUTE_COMPRESSED = 2048;
  static const FILE_ATTRIBUTE_OFFLINE = 4096;
  static const FILE_ATTRIBUTE_NOT_CONTENT_INDEXED =
      FILE_FLAGS_AND_ATTRIBUTES(8192);
  static const FILE_ATTRIBUTE_ENCRYPTED = 16384;
  static const FILE_ATTRIBUTE_INTEGRITY_STREAM =
      FILE_FLAGS_AND_ATTRIBUTES(32768);
  static const FILE_ATTRIBUTE_VIRTUAL = 65536;
  static const FILE_ATTRIBUTE_NO_SCRUB_DATA = 131072;
  static const FILE_ATTRIBUTE_EA = 262144;
  static const FILE_ATTRIBUTE_PINNED = 524288;
  static const FILE_ATTRIBUTE_UNPINNED = 1048576;
  static const FILE_ATTRIBUTE_RECALL_ON_OPEN =
      FILE_FLAGS_AND_ATTRIBUTES(262144);
  static const FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS =
      FILE_FLAGS_AND_ATTRIBUTES(4194304);
  static const FILE_FLAG_WRITE_THROUGH = 2147483648;
  static const FILE_FLAG_OVERLAPPED = 1073741824;
  static const FILE_FLAG_NO_BUFFERING = 536870912;
  static const FILE_FLAG_RANDOM_ACCESS = 268435456;
  static const FILE_FLAG_SEQUENTIAL_SCAN = 134217728;
  static const FILE_FLAG_DELETE_ON_CLOSE = 67108864;
  static const FILE_FLAG_BACKUP_SEMANTICS = 33554432;
  static const FILE_FLAG_POSIX_SEMANTICS = 16777216;
  static const FILE_FLAG_SESSION_AWARE = 8388608;
  static const FILE_FLAG_OPEN_REPARSE_POINT =
      FILE_FLAGS_AND_ATTRIBUTES(2097152);
  static const FILE_FLAG_OPEN_NO_RECALL = 1048576;
  static const FILE_FLAG_FIRST_PIPE_INSTANCE =
      FILE_FLAGS_AND_ATTRIBUTES(524288);
  static const PIPE_ACCESS_DUPLEX = 3;
  static const PIPE_ACCESS_INBOUND = 1;
  static const PIPE_ACCESS_OUTBOUND = 2;
  static const SECURITY_ANONYMOUS = 0;
  static const SECURITY_IDENTIFICATION = 65536;
  static const SECURITY_IMPERSONATION = 131072;
  static const SECURITY_DELEGATION = 196608;
  static const SECURITY_CONTEXT_TRACKING = 262144;
  static const SECURITY_EFFECTIVE_ONLY = 524288;
  static const SECURITY_SQOS_PRESENT = 1048576;
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
  static const FileBasicInfo = 0;

  /// Extended information for the file should be retrieved.
  static const FileStandardInfo = 1;

  /// The file name should be retrieved.
  static const FileNameInfo = 2;

  /// The file name should be changed.
  static const FileRenameInfo = 3;

  /// The file should be deleted.
  static const FileDispositionInfo = 4;

  /// The file allocation information should be changed.
  static const FileAllocationInfo = 5;

  /// The end of the file should be set.
  static const FileEndOfFileInfo = 6;

  /// File stream information for the specified file should be retrieved.
  static const FileStreamInfo = 7;

  /// File compression information should be retrieved.
  static const FileCompressionInfo = 8;

  /// File attribute information should be retrieved.
  static const FileAttributeTagInfo = 9;

  /// Files in the specified directory should be retrieved.
  static const FileIdBothDirectoryInfo = 10;

  /// Identical to <b>FileIdBothDirectoryInfo</b>, but forces the enumeration
  /// operation to start again from the beginning.
  static const FileIdBothDirectoryRestartInfo = 11;

  /// Priority hint information should be set.
  static const FileIoPriorityHintInfo = 12;

  /// File remote protocol information should be retrieved.
  static const FileRemoteProtocolInfo = 13;

  /// Files in the specified directory should be retrieved.
  static const FileFullDirectoryInfo = 14;

  /// Identical to <b>FileFullDirectoryInfo</b>, but forces the enumeration
  /// operation to start again from the beginning.
  static const FileFullDirectoryRestartInfo = 15;

  /// File storage information should be retrieved.
  static const FileStorageInfo = 16;

  /// File alignment information should be retrieved.
  static const FileAlignmentInfo = 17;

  /// File information should be retrieved.
  static const FileIdInfo = 18;

  /// Files in the specified directory should be retrieved.
  static const FileIdExtdDirectoryInfo = 19;

  /// Identical to <b>FileIdExtdDirectoryInfo</b>, but forces the enumeration
  /// operation to start again from the beginning.
  static const FileIdExtdDirectoryRestartInfo = 20;

  static const FileDispositionInfoEx = 21;

  static const FileRenameInfoEx = 22;
  static const FileCaseSensitiveInfo = 23;
  static const FileNormalizedNameInfo = 24;

  /// This value is used for validation.
  static const MaximumFileInfoByHandleClass = 25;
}

/// {@category enum}
extension type const FILE_NOTIFY_CHANGE(int _) implements int {
  static const FILE_NOTIFY_CHANGE_FILE_NAME = 1;
  static const FILE_NOTIFY_CHANGE_DIR_NAME = 2;
  static const FILE_NOTIFY_CHANGE_ATTRIBUTES = 4;
  static const FILE_NOTIFY_CHANGE_SIZE = 8;
  static const FILE_NOTIFY_CHANGE_LAST_WRITE = 16;
  static const FILE_NOTIFY_CHANGE_LAST_ACCESS = 32;
  static const FILE_NOTIFY_CHANGE_CREATION = 64;
  static const FILE_NOTIFY_CHANGE_SECURITY = 256;
}

/// {@category enum}
extension type const FILE_SHARE_MODE(int _) implements int {
  static const FILE_SHARE_NONE = 0;
  static const FILE_SHARE_DELETE = 4;
  static const FILE_SHARE_READ = 1;
  static const FILE_SHARE_WRITE = 2;
}

/// {@category enum}
extension type const FILE_TYPE(int _) implements int {
  static const FILE_TYPE_UNKNOWN = 0;
  static const FILE_TYPE_DISK = 1;
  static const FILE_TYPE_CHAR = 2;
  static const FILE_TYPE_PIPE = 3;
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
  static const FUT_PLAYING = 0;

  /// The file is being edited by the process that has it open.
  static const FUT_EDITING = 1;

  /// The file is open in the process for an unspecified action or an action
  /// that does not readily fit into the other two categories.
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
  static const FindExInfoStandard = 0;

  /// The <a
  /// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-findfirstfileexa">FindFirstFileEx</a>
  /// function does not query the short file name, improving overall enumeration
  /// speed.
  static const FindExInfoBasic = 1;

  /// This value is used for validation.
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
  static const FindExSearchNameMatch = 0;

  /// This is an advisory flag.
  static const FindExSearchLimitToDirectories = 1;

  /// This filtering type is not available.
  static const FindExSearchLimitToDevices = 2;

  static const FindExSearchMaxSearchOp = 3;
}

/// {@category enum}
extension type const FINDREPLACE_FLAGS(int _) implements int {
  static const FR_DOWN = 1;
  static const FR_WHOLEWORD = 2;
  static const FR_MATCHCASE = 4;
  static const FR_FINDNEXT = 8;
  static const FR_REPLACE = 16;
  static const FR_REPLACEALL = 32;
  static const FR_DIALOGTERM = 64;
  static const FR_SHOWHELP = 128;
  static const FR_ENABLEHOOK = 256;
  static const FR_ENABLETEMPLATE = 512;
  static const FR_NOUPDOWN = 1024;
  static const FR_NOMATCHCASE = 2048;
  static const FR_NOWHOLEWORD = 4096;
  static const FR_ENABLETEMPLATEHANDLE = 8192;
  static const FR_HIDEUPDOWN = 16384;
  static const FR_HIDEMATCHCASE = 32768;
  static const FR_HIDEWHOLEWORD = 65536;
  static const FR_RAW = 131072;
  static const FR_SHOWWRAPAROUND = 262144;
  static const FR_NOWRAPAROUND = 524288;
  static const FR_WRAPAROUND = 1048576;
  static const FR_MATCHDIAC = 536870912;
  static const FR_MATCHKASHIDA = 1073741824;
  static const FR_MATCHALEFHAMZA = 2147483648;
}

/// {@category enum}
extension type const FIND_FIRST_EX_FLAGS(int _) implements int {
  static const FIND_FIRST_EX_CASE_SENSITIVE = 1;
  static const FIND_FIRST_EX_LARGE_FETCH = 2;
  static const FIND_FIRST_EX_ON_DISK_ENTRIES_ONLY = 4;
}

/// {@category enum}
extension type const FIRMWARE_TABLE_PROVIDER(int _) implements int {
  static const ACPI = 1094930505;
  static const FIRM = 1179210317;
  static const RSMB = 1381190978;
}

/// {@category enum}
extension type const FONT_CHARSET(int _) implements int {
  static const ANSI_CHARSET = 0;
  static const DEFAULT_CHARSET = 1;
  static const SYMBOL_CHARSET = 2;
  static const SHIFTJIS_CHARSET = 128;
  static const HANGEUL_CHARSET = 129;
  static const HANGUL_CHARSET = 129;
  static const GB2312_CHARSET = 134;
  static const CHINESEBIG5_CHARSET = 136;
  static const OEM_CHARSET = 255;
  static const JOHAB_CHARSET = 130;
  static const HEBREW_CHARSET = 177;
  static const ARABIC_CHARSET = 178;
  static const GREEK_CHARSET = 161;
  static const TURKISH_CHARSET = 162;
  static const VIETNAMESE_CHARSET = 163;
  static const THAI_CHARSET = 222;
  static const EASTEUROPE_CHARSET = 238;
  static const RUSSIAN_CHARSET = 204;
  static const MAC_CHARSET = 77;
  static const BALTIC_CHARSET = 186;
}

/// {@category enum}
extension type const FONT_CLIP_PRECISION(int _) implements int {
  static const CLIP_DEFAULT_PRECIS = 0;
  static const CLIP_CHARACTER_PRECIS = 1;
  static const CLIP_STROKE_PRECIS = 2;
  static const CLIP_MASK = 15;
  static const CLIP_LH_ANGLES = 16;
  static const CLIP_TT_ALWAYS = 32;
  static const CLIP_DFA_DISABLE = 64;
  static const CLIP_EMBEDDED = 128;
  static const CLIP_DFA_OVERRIDE = 64;
}

/// {@category enum}
extension type const FONT_OUTPUT_PRECISION(int _) implements int {
  static const OUT_DEFAULT_PRECIS = 0;
  static const OUT_STRING_PRECIS = 1;
  static const OUT_CHARACTER_PRECIS = 2;
  static const OUT_STROKE_PRECIS = 3;
  static const OUT_TT_PRECIS = 4;
  static const OUT_DEVICE_PRECIS = 5;
  static const OUT_RASTER_PRECIS = 6;
  static const OUT_TT_ONLY_PRECIS = 7;
  static const OUT_OUTLINE_PRECIS = 8;
  static const OUT_SCREEN_OUTLINE_PRECIS = 9;
  static const OUT_PS_ONLY_PRECIS = 10;
}

/// {@category enum}
extension type const FONT_QUALITY(int _) implements int {
  static const DEFAULT_QUALITY = 0;
  static const DRAFT_QUALITY = 1;
  static const PROOF_QUALITY = 2;
  static const NONANTIALIASED_QUALITY = 3;
  static const ANTIALIASED_QUALITY = 4;
  static const CLEARTYPE_QUALITY = 5;
}

/// {@category enum}
extension type const FONT_RESOURCE_CHARACTERISTICS(int _) implements int {
  static const FR_PRIVATE = 16;
  static const FR_NOT_ENUM = 32;
}

/// {@category enum}
extension type const FOREGROUND_WINDOW_LOCK_CODE(int _) implements int {
  static const LSFW_LOCK = 1;
  static const LSFW_UNLOCK = 2;
}

/// {@category enum}
extension type const FORMAT_MESSAGE_OPTIONS(int _) implements int {
  static const FORMAT_MESSAGE_ALLOCATE_BUFFER = 256;
  static const FORMAT_MESSAGE_ARGUMENT_ARRAY = 8192;
  static const FORMAT_MESSAGE_FROM_HMODULE = 2048;
  static const FORMAT_MESSAGE_FROM_STRING = 1024;
  static const FORMAT_MESSAGE_FROM_SYSTEM = 4096;
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
  static const FUNCFLAG_FRESTRICTED = 1;

  /// The function returns an object that is a source of events.
  static const FUNCFLAG_FSOURCE = 2;

  /// The function that supports data binding.
  static const FUNCFLAG_FBINDABLE = 4;

  /// When set, any call to a method that sets the property results first in a
  /// call to <b>IPropertyNotifySink::OnRequestEdit</b>.
  static const FUNCFLAG_FREQUESTEDIT = 8;

  /// The function that is displayed to the user as bindable.
  static const FUNCFLAG_FDISPLAYBIND = 16;

  /// The function that best represents the object.
  static const FUNCFLAG_FDEFAULTBIND = 32;

  /// The function should not be displayed to the user, although it exists and
  /// is bindable.
  static const FUNCFLAG_FHIDDEN = 64;

  /// The function supports <b>GetLastError</b>.
  static const FUNCFLAG_FUSESGETLASTERROR = 128;

  /// Permits an optimization in which the compiler looks for a member named xyz
  /// on the type of abc.
  static const FUNCFLAG_FDEFAULTCOLLELEM = 256;

  /// The type information member is the default member for display in the user
  /// interface.
  static const FUNCFLAG_FUIDEFAULT = 512;

  /// The property appears in an object browser, but not in a properties
  /// browser.
  static const FUNCFLAG_FNONBROWSABLE = 1024;

  /// Tags the interface as having default behaviors.
  static const FUNCFLAG_FREPLACEABLE = 2048;

  /// Mapped as individual bindable properties.
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
  static const FUNC_VIRTUAL = 0;

  /// The function is accessed through the virtual function table (VTBL), and
  /// takes an implicit this pointer.
  static const FUNC_PUREVIRTUAL = 1;

  /// The function is accessed by static address and takes an implicit this
  /// pointer.
  static const FUNC_NONVIRTUAL = 2;

  /// The function is accessed by static address and does not take an implicit
  /// this pointer.
  static const FUNC_STATIC = 3;

  /// The function can be accessed only through <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nn-oaidl-idispatch">IDispatch</a>.
  static const FUNC_DISPATCH = 4;
}

/// {@category enum}
extension type const GDI_IMAGE_TYPE(int _) implements int {
  static const IMAGE_BITMAP = 0;
  static const IMAGE_CURSOR = 2;
  static const IMAGE_ICON = 1;
}

/// {@category enum}
extension type const GDI_REGION_TYPE(int _) implements int {
  static const RGN_ERROR = 0;
  static const NULLREGION = 1;
  static const SIMPLEREGION = 2;
  static const COMPLEXREGION = 3;
}

/// {@category enum}
extension type const GENERIC_ACCESS_RIGHTS(int _) implements int {
  static const GENERIC_READ = 2147483648;
  static const GENERIC_WRITE = 1073741824;
  static const GENERIC_EXECUTE = 536870912;
  static const GENERIC_ALL = 268435456;
}

/// {@category enum}
extension type const GESTURECONFIG_ID(int _) implements int {
  static const GID_BEGIN = 1;
  static const GID_END = 2;
  static const GID_ZOOM = 3;
  static const GID_PAN = 4;
  static const GID_ROTATE = 5;
  static const GID_TWOFINGERTAP = 6;
  static const GID_PRESSANDTAP = 7;
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
  static const GT_PEN_TAP = 0;

  /// A pen double tap.
  static const GT_PEN_DOUBLETAP = 1;

  /// A pen right tap.
  static const GT_PEN_RIGHTTAP = 2;

  /// A pen press and hold.
  static const GT_PEN_PRESSANDHOLD = 3;

  /// An abort of the pen press and hold.
  static const GT_PEN_PRESSANDHOLDABORT = 4;

  /// A touch tap.
  static const GT_TOUCH_TAP = 5;

  /// A touch double tap.
  static const GT_TOUCH_DOUBLETAP = 6;

  /// A touch right tap.
  static const GT_TOUCH_RIGHTTAP = 7;

  /// A touch press and hold.
  static const GT_TOUCH_PRESSANDHOLD = 8;

  /// An abort of the pen press and hold.
  static const GT_TOUCH_PRESSANDHOLDABORT = 9;

  /// A touch press and tap.
  static const GT_TOUCH_PRESSANDTAP = 10;
}

/// {@category enum}
extension type const GETFINALPATHNAMEBYHANDLE_FLAGS(int _) implements int {
  static const VOLUME_NAME_DOS = 0;
  static const VOLUME_NAME_GUID = 1;
  static const VOLUME_NAME_NT = 2;
  static const VOLUME_NAME_NONE = 4;
  static const FILE_NAME_NORMALIZED = 0;
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
  static const GPS_DEFAULT = 0;

  /// Meaning to a calling process: Include only properties directly from the
  /// property handler, which opens the file on the disk, network, or device.
  static const GPS_HANDLERPROPERTIESONLY = 1;

  /// Meaning to a calling process: Can write properties to the item.
  static const GPS_READWRITE = 2;

  /// Meaning to a calling process: Provides a writable store, with no initial
  /// properties, that exists for the lifetime of the Shell item instance;
  /// basically, a property bag attached to the item instance.
  static const GPS_TEMPORARY = 4;

  /// Meaning to a calling process: Provides a store that does not involve
  /// reading from the disk or network.
  static const GPS_FASTPROPERTIESONLY = 8;

  /// Meaning to a calling process: Open a slow item (offline file) if
  /// necessary.
  static const GPS_OPENSLOWITEM = 16;

  /// Meaning to a calling process: Delay memory-intensive operations, such as
  /// file access, until a property is requested that requires such access.
  static const GPS_DELAYCREATION = 32;

  /// Meaning to a calling process: Succeed at getting the store, even if some
  /// properties are not returned.
  static const GPS_BESTEFFORT = 64;

  static const GPS_NO_OPLOCK = 128;

  static const GPS_PREFERQUERYPROPERTIES = 256;

  /// Include properties from the file's secondary stream.
  static const GPS_EXTRINSICPROPERTIES = 512;

  /// Include only properties from the file's secondary stream.
  static const GPS_EXTRINSICPROPERTIESONLY = 1024;

  static const GPS_VOLATILEPROPERTIES = 2048;

  static const GPS_VOLATILEPROPERTIESONLY = 4096;

  /// Mask for valid <a
  /// href="https://docs.microsoft.com/windows/desktop/api/propsys/ne-propsys-getpropertystoreflags">GETPROPERTYSTOREFLAGS</a>
  /// values.
  static const GPS_MASK_VALID = 8191;
}

/// {@category enum}
extension type const GET_ADAPTERS_ADDRESSES_FLAGS(int _) implements int {
  static const GAA_FLAG_SKIP_UNICAST = 1;
  static const GAA_FLAG_SKIP_ANYCAST = 2;
  static const GAA_FLAG_SKIP_MULTICAST = 4;
  static const GAA_FLAG_SKIP_DNS_SERVER = 8;
  static const GAA_FLAG_INCLUDE_PREFIX = 16;
  static const GAA_FLAG_SKIP_FRIENDLY_NAME = 32;
  static const GAA_FLAG_INCLUDE_WINS_INFO = 64;
  static const GAA_FLAG_INCLUDE_GATEWAYS = 128;
  static const GAA_FLAG_INCLUDE_ALL_INTERFACES =
      GET_ADAPTERS_ADDRESSES_FLAGS(256);
  static const GAA_FLAG_INCLUDE_ALL_COMPARTMENTS =
      GET_ADAPTERS_ADDRESSES_FLAGS(512);
  static const GAA_FLAG_INCLUDE_TUNNEL_BINDINGORDER =
      GET_ADAPTERS_ADDRESSES_FLAGS(1024);
}

/// {@category enum}
extension type const GET_ANCESTOR_FLAGS(int _) implements int {
  static const GA_PARENT = 1;
  static const GA_ROOT = 2;
  static const GA_ROOTOWNER = 3;
}

/// {@category enum}
extension type const GET_CLASS_LONG_INDEX(int _) implements int {
  static const GCW_ATOM = GET_CLASS_LONG_INDEX(-32);
  static const GCL_CBCLSEXTRA = GET_CLASS_LONG_INDEX(-20);
  static const GCL_CBWNDEXTRA = GET_CLASS_LONG_INDEX(-18);
  static const GCL_HBRBACKGROUND = GET_CLASS_LONG_INDEX(-10);
  static const GCL_HCURSOR = GET_CLASS_LONG_INDEX(-12);
  static const GCL_HICON = GET_CLASS_LONG_INDEX(-14);
  static const GCL_HICONSM = GET_CLASS_LONG_INDEX(-34);
  static const GCL_HMODULE = GET_CLASS_LONG_INDEX(-16);
  static const GCL_MENUNAME = GET_CLASS_LONG_INDEX(-8);
  static const GCL_STYLE = GET_CLASS_LONG_INDEX(-26);
  static const GCL_WNDPROC = GET_CLASS_LONG_INDEX(-24);
  static const GCLP_HBRBACKGROUND = GET_CLASS_LONG_INDEX(-10);
  static const GCLP_HCURSOR = GET_CLASS_LONG_INDEX(-12);
  static const GCLP_HICON = GET_CLASS_LONG_INDEX(-14);
  static const GCLP_HICONSM = GET_CLASS_LONG_INDEX(-34);
  static const GCLP_HMODULE = GET_CLASS_LONG_INDEX(-16);
  static const GCLP_MENUNAME = GET_CLASS_LONG_INDEX(-8);
  static const GCLP_WNDPROC = GET_CLASS_LONG_INDEX(-24);
}

/// {@category enum}
extension type const GET_DCX_FLAGS(int _) implements int {
  static const DCX_WINDOW = 1;
  static const DCX_CACHE = 2;
  static const DCX_PARENTCLIP = 32;
  static const DCX_CLIPSIBLINGS = 16;
  static const DCX_CLIPCHILDREN = 8;
  static const DCX_NORESETATTRS = 4;
  static const DCX_LOCKWINDOWUPDATE = 1024;
  static const DCX_EXCLUDERGN = 64;
  static const DCX_INTERSECTRGN = 128;
  static const DCX_INTERSECTUPDATE = 512;
  static const DCX_VALIDATE = 2097152;
}

/// {@category enum}
extension type const GET_DEVICE_CAPS_INDEX(int _) implements int {
  static const DRIVERVERSION = 0;
  static const TECHNOLOGY = 2;
  static const HORZSIZE = 4;
  static const VERTSIZE = 6;
  static const HORZRES = 8;
  static const VERTRES = 10;
  static const BITSPIXEL = 12;
  static const PLANES = 14;
  static const NUMBRUSHES = 16;
  static const NUMPENS = 18;
  static const NUMMARKERS = 20;
  static const NUMFONTS = 22;
  static const NUMCOLORS = 24;
  static const PDEVICESIZE = 26;
  static const CURVECAPS = 28;
  static const LINECAPS = 30;
  static const POLYGONALCAPS = 32;
  static const TEXTCAPS = 34;
  static const CLIPCAPS = 36;
  static const RASTERCAPS = 38;
  static const ASPECTX = 40;
  static const ASPECTY = 42;
  static const ASPECTXY = 44;
  static const LOGPIXELSX = 88;
  static const LOGPIXELSY = 90;
  static const SIZEPALETTE = 104;
  static const NUMRESERVED = 106;
  static const COLORRES = 108;
  static const PHYSICALWIDTH = 110;
  static const PHYSICALHEIGHT = 111;
  static const PHYSICALOFFSETX = 112;
  static const PHYSICALOFFSETY = 113;
  static const SCALINGFACTORX = 114;
  static const SCALINGFACTORY = 115;
  static const VREFRESH = 116;
  static const DESKTOPVERTRES = 117;
  static const DESKTOPHORZRES = 118;
  static const BLTALIGNMENT = 119;
  static const SHADEBLENDCAPS = 120;
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
  static const GetFileExInfoStandard = 0;

  /// One greater than the maximum value.
  static const GetFileExMaxInfoLevel = 1;
}

/// {@category enum}
extension type const GET_FILE_VERSION_INFO_FLAGS(int _) implements int {
  static const FILE_VER_GET_LOCALISED = 1;
  static const FILE_VER_GET_NEUTRAL = 2;
  static const FILE_VER_GET_PREFETCHED = 4;
}

/// {@category enum}
extension type const GET_MENU_DEFAULT_ITEM_FLAGS(int _) implements int {
  static const GMDI_GOINTOPOPUPS = 2;
  static const GMDI_USEDISABLED = 1;
}

/// {@category enum}
extension type const GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(int _) implements int {
  static const GMMP_USE_DISPLAY_POINTS = 1;
  static const GMMP_USE_HIGH_RESOLUTION_POINTS =
      GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(2);
}

/// {@category enum}
extension type const GET_STOCK_OBJECT_FLAGS(int _) implements int {
  static const BLACK_BRUSH = 4;
  static const DKGRAY_BRUSH = 3;
  static const DC_BRUSH = 18;
  static const GRAY_BRUSH = 2;
  static const HOLLOW_BRUSH = 5;
  static const LTGRAY_BRUSH = 1;
  static const NULL_BRUSH = 5;
  static const WHITE_BRUSH = 0;
  static const BLACK_PEN = 7;
  static const DC_PEN = 19;
  static const NULL_PEN = 8;
  static const WHITE_PEN = 6;
  static const ANSI_FIXED_FONT = 11;
  static const ANSI_VAR_FONT = 12;
  static const DEVICE_DEFAULT_FONT = 14;
  static const DEFAULT_GUI_FONT = 17;
  static const OEM_FIXED_FONT = 10;
  static const SYSTEM_FONT = 13;
  static const SYSTEM_FIXED_FONT = 16;
  static const DEFAULT_PALETTE = 15;
}

/// {@category enum}
extension type const GET_WINDOW_CMD(int _) implements int {
  static const GW_CHILD = 5;
  static const GW_ENABLEDPOPUP = 6;
  static const GW_HWNDFIRST = 0;
  static const GW_HWNDLAST = 1;
  static const GW_HWNDNEXT = 2;
  static const GW_HWNDPREV = 3;
  static const GW_OWNER = 4;
}

/// {@category enum}
extension type const GLOBAL_ALLOC_FLAGS(int _) implements int {
  static const GHND = 66;
  static const GMEM_FIXED = 0;
  static const GMEM_MOVEABLE = 2;
  static const GMEM_ZEROINIT = 64;
  static const GPTR = 64;
}

/// {@category enum}
extension type const GUITHREADINFO_FLAGS(int _) implements int {
  static const GUI_CARETBLINKING = 1;
  static const GUI_INMENUMODE = 4;
  static const GUI_INMOVESIZE = 2;
  static const GUI_POPUPMENUMODE = 16;
  static const GUI_SYSTEMMENUMODE = 8;
}

/// {@category enum}
extension type const HANDLE_FLAGS(int _) implements int {
  static const HANDLE_FLAG_INHERIT = 1;
  static const HANDLE_FLAG_PROTECT_FROM_CLOSE = 2;
}

/// {@category enum}
extension type const HATCH_BRUSH_STYLE(int _) implements int {
  static const HS_BDIAGONAL = 3;
  static const HS_CROSS = 4;
  static const HS_DIAGCROSS = 5;
  static const HS_FDIAGONAL = 2;
  static const HS_HORIZONTAL = 0;
  static const HS_VERTICAL = 1;
}

/// {@category enum}
extension type const HDC_MAP_MODE(int _) implements int {
  static const MM_ANISOTROPIC = 8;
  static const MM_HIENGLISH = 5;
  static const MM_HIMETRIC = 3;
  static const MM_ISOTROPIC = 7;
  static const MM_LOENGLISH = 4;
  static const MM_LOMETRIC = 2;
  static const MM_TEXT = 1;
  static const MM_TWIPS = 6;
}

/// {@category enum}
extension type const HEAP_FLAGS(int _) implements int {
  static const HEAP_NONE = 0;
  static const HEAP_NO_SERIALIZE = 1;
  static const HEAP_GROWABLE = 2;
  static const HEAP_GENERATE_EXCEPTIONS = 4;
  static const HEAP_ZERO_MEMORY = 8;
  static const HEAP_REALLOC_IN_PLACE_ONLY = 16;
  static const HEAP_TAIL_CHECKING_ENABLED = 32;
  static const HEAP_FREE_CHECKING_ENABLED = 64;
  static const HEAP_DISABLE_COALESCE_ON_FREE = 128;
  static const HEAP_CREATE_ALIGN_16 = 65536;
  static const HEAP_CREATE_ENABLE_TRACING = 131072;
  static const HEAP_CREATE_ENABLE_EXECUTE = 262144;
  static const HEAP_MAXIMUM_TAG = 4095;
  static const HEAP_PSEUDO_TAG_FLAG = 32768;
  static const HEAP_TAG_SHIFT = 18;
  static const HEAP_CREATE_SEGMENT_HEAP = 256;
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
  static const HeapCompatibilityInformation = 0;

  /// The terminate-on-corruption feature.
  static const HeapEnableTerminationOnCorruption = 1;

  static const HeapOptimizeResources = 3;
  static const HeapTag = 7;
}

/// {@category enum}
extension type const HOT_KEY_MODIFIERS(int _) implements int {
  static const MOD_ALT = 1;
  static const MOD_CONTROL = 2;
  static const MOD_NOREPEAT = 16384;
  static const MOD_SHIFT = 4;
  static const MOD_WIN = 8;
}

/// {@category enum}
extension type const IDLFLAGS(int _) implements int {
  static const IDLFLAG_NONE = 0;
  static const IDLFLAG_FIN = 1;
  static const IDLFLAG_FOUT = 2;
  static const IDLFLAG_FLCID = 4;
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
  static const IfOperStatusUp = 1;

  /// The interface is not down and not operational.
  static const IfOperStatusDown = 2;

  /// The interface is being tested.
  static const IfOperStatusTesting = 3;

  /// The interface status is unknown.
  static const IfOperStatusUnknown = 4;

  /// The interface is not in a condition to pass packets.
  static const IfOperStatusDormant = 5;

  /// This state is a refinement on the down state which indicates that the
  /// interface is down specifically because some component (for example, a
  /// hardware component) is not present in the system.
  static const IfOperStatusNotPresent = 6;

  /// This state is a refinement on the down state.
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
  static const SYMOPT_EX_DISABLEACCESSTIMEUPDATE = 0;
  static const SYMOPT_EX_LASTVALIDDEBUGDIRECTORY = 1;
  static const SYMOPT_EX_NOIMPLICITPATTERNSEARCH = 2;
  static const SYMOPT_EX_NEVERLOADSYMBOLS = 3;

  static const SYMOPT_EX_MAX = 4;
}

/// {@category enum}
extension type const IMAGE_FILE_MACHINE(int _) implements int {
  static const IMAGE_FILE_MACHINE_AXP64 = 644;
  static const IMAGE_FILE_MACHINE_I386 = 332;
  static const IMAGE_FILE_MACHINE_IA64 = 512;
  static const IMAGE_FILE_MACHINE_AMD64 = 34404;
  static const IMAGE_FILE_MACHINE_UNKNOWN = 0;
  static const IMAGE_FILE_MACHINE_TARGET_HOST = 1;
  static const IMAGE_FILE_MACHINE_R3000 = 354;
  static const IMAGE_FILE_MACHINE_R4000 = 358;
  static const IMAGE_FILE_MACHINE_R10000 = 360;
  static const IMAGE_FILE_MACHINE_WCEMIPSV2 = 361;
  static const IMAGE_FILE_MACHINE_ALPHA = 388;
  static const IMAGE_FILE_MACHINE_SH3 = 418;
  static const IMAGE_FILE_MACHINE_SH3DSP = 419;
  static const IMAGE_FILE_MACHINE_SH3E = 420;
  static const IMAGE_FILE_MACHINE_SH4 = 422;
  static const IMAGE_FILE_MACHINE_SH5 = 424;
  static const IMAGE_FILE_MACHINE_ARM = 448;
  static const IMAGE_FILE_MACHINE_THUMB = 450;
  static const IMAGE_FILE_MACHINE_ARMNT = 452;
  static const IMAGE_FILE_MACHINE_AM33 = 467;
  static const IMAGE_FILE_MACHINE_POWERPC = 496;
  static const IMAGE_FILE_MACHINE_POWERPCFP = 497;
  static const IMAGE_FILE_MACHINE_MIPS16 = 614;
  static const IMAGE_FILE_MACHINE_ALPHA64 = 644;
  static const IMAGE_FILE_MACHINE_MIPSFPU = 870;
  static const IMAGE_FILE_MACHINE_MIPSFPU16 = 1126;
  static const IMAGE_FILE_MACHINE_TRICORE = 1312;
  static const IMAGE_FILE_MACHINE_CEF = 3311;
  static const IMAGE_FILE_MACHINE_EBC = 3772;
  static const IMAGE_FILE_MACHINE_M32R = 36929;
  static const IMAGE_FILE_MACHINE_ARM64 = 43620;
  static const IMAGE_FILE_MACHINE_CEE = 49390;
}

/// {@category enum}
extension type const IMAGE_FLAGS(int _) implements int {
  static const LR_CREATEDIBSECTION = 8192;
  static const LR_DEFAULTCOLOR = 0;
  static const LR_DEFAULTSIZE = 64;
  static const LR_LOADFROMFILE = 16;
  static const LR_LOADMAP3DCOLORS = 4096;
  static const LR_LOADTRANSPARENT = 32;
  static const LR_MONOCHROME = 1;
  static const LR_SHARED = 32768;
  static const LR_VGACOLOR = 128;
  static const LR_COPYDELETEORG = 8;
  static const LR_COPYFROMRESOURCE = 16384;
  static const LR_COPYRETURNORG = 4;
}

/// {@category enum}
extension type const IMPLTYPEFLAGS(int _) implements int {
  static const IMPLTYPEFLAG_FDEFAULT = 1;
  static const IMPLTYPEFLAG_FSOURCE = 2;
  static const IMPLTYPEFLAG_FRESTRICTED = 4;
  static const IMPLTYPEFLAG_FDEFAULTVTABLE = 8;
}

/// {@category enum}
extension type const INITCOMMONCONTROLSEX_ICC(int _) implements int {
  static const ICC_ANIMATE_CLASS = 128;
  static const ICC_BAR_CLASSES = 4;
  static const ICC_COOL_CLASSES = 1024;
  static const ICC_DATE_CLASSES = 256;
  static const ICC_HOTKEY_CLASS = 64;
  static const ICC_INTERNET_CLASSES = 2048;
  static const ICC_LINK_CLASS = 32768;
  static const ICC_LISTVIEW_CLASSES = 1;
  static const ICC_NATIVEFNTCTL_CLASS = 8192;
  static const ICC_PAGESCROLLER_CLASS = 4096;
  static const ICC_PROGRESS_CLASS = 32;
  static const ICC_STANDARD_CLASSES = 16384;
  static const ICC_TAB_CLASSES = 8;
  static const ICC_TREEVIEW_CLASSES = 2;
  static const ICC_UPDOWN_CLASS = 16;
  static const ICC_USEREX_CLASSES = 512;
  static const ICC_WIN95_CLASSES = 255;
}

/// {@category enum}
extension type const INPUT_TYPE(int _) implements int {
  static const INPUT_MOUSE = 0;
  static const INPUT_KEYBOARD = 1;
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
  static const INVOKE_FUNC = 1;

  /// The function is invoked using a normal property-access syntax.
  static const INVOKE_PROPERTYGET = 2;

  /// The function is invoked using a property value assignment syntax.
  static const INVOKE_PROPERTYPUT = 4;

  /// The function is invoked using a property reference assignment syntax.
  static const INVOKE_PROPERTYPUTREF = 8;
}

/// {@category enum}
extension type const JOBOBJECTINFOCLASS(int _) implements int {
  static const JobObjectBasicAccountingInformation = 1;
  static const JobObjectBasicLimitInformation = 2;
  static const JobObjectBasicProcessIdList = 3;
  static const JobObjectBasicUIRestrictions = 4;
  static const JobObjectSecurityLimitInformation = 5;
  static const JobObjectEndOfJobTimeInformation = 6;
  static const JobObjectAssociateCompletionPortInformation =
      JOBOBJECTINFOCLASS(7);
  static const JobObjectBasicAndIoAccountingInformation = 8;
  static const JobObjectExtendedLimitInformation = 9;
  static const JobObjectJobSetInformation = 10;
  static const JobObjectGroupInformation = 11;
  static const JobObjectNotificationLimitInformation = 12;
  static const JobObjectLimitViolationInformation = 13;
  static const JobObjectGroupInformationEx = 14;
  static const JobObjectCpuRateControlInformation = 15;
  static const JobObjectCompletionFilter = 16;
  static const JobObjectCompletionCounter = 17;
  static const JobObjectReserved1Information = 18;
  static const JobObjectReserved2Information = 19;
  static const JobObjectReserved3Information = 20;
  static const JobObjectReserved4Information = 21;
  static const JobObjectReserved5Information = 22;
  static const JobObjectReserved6Information = 23;
  static const JobObjectReserved7Information = 24;
  static const JobObjectReserved8Information = 25;
  static const JobObjectReserved9Information = 26;
  static const JobObjectReserved10Information = 27;
  static const JobObjectReserved11Information = 28;
  static const JobObjectReserved12Information = 29;
  static const JobObjectReserved13Information = 30;
  static const JobObjectReserved14Information = 31;
  static const JobObjectNetRateControlInformation = 32;
  static const JobObjectNotificationLimitInformation2 = 33;
  static const JobObjectLimitViolationInformation2 = 34;
  static const JobObjectCreateSilo = 35;
  static const JobObjectSiloBasicInformation = 36;
  static const JobObjectReserved15Information = 37;
  static const JobObjectReserved16Information = 38;
  static const JobObjectReserved17Information = 39;
  static const JobObjectReserved18Information = 40;
  static const JobObjectReserved19Information = 41;
  static const JobObjectReserved20Information = 42;
  static const JobObjectReserved21Information = 43;
  static const JobObjectReserved22Information = 44;
  static const JobObjectReserved23Information = 45;
  static const JobObjectReserved24Information = 46;
  static const JobObjectReserved25Information = 47;
  static const JobObjectReserved26Information = 48;
  static const JobObjectReserved27Information = 49;
  static const MaxJobObjectInfoClass = 50;
}

/// {@category enum}
extension type const KBDLLHOOKSTRUCT_FLAGS(int _) implements int {
  static const LLKHF_EXTENDED = 1;
  static const LLKHF_ALTDOWN = 32;
  static const LLKHF_UP = 128;
  static const LLKHF_INJECTED = 16;
  static const LLKHF_LOWER_IL_INJECTED = 2;
}

/// {@category enum}
extension type const KEYBD_EVENT_FLAGS(int _) implements int {
  static const KEYEVENTF_EXTENDEDKEY = 1;
  static const KEYEVENTF_KEYUP = 2;
  static const KEYEVENTF_SCANCODE = 8;
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
  static const KF_FLAG_DEFAULT = 0;

  static const KF_FLAG_FORCE_APP_DATA_REDIRECTION = 524288;

  static const KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = 262144;

  static const KF_FLAG_FORCE_PACKAGE_REDIRECTION = 131072;

  static const KF_FLAG_NO_PACKAGE_REDIRECTION = 65536;

  static const KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = 131072;

  static const KF_FLAG_NO_APPCONTAINER_REDIRECTION = 65536;

  /// Specifies to force the creation of the specified folder if that folder
  /// doesn't already exist.
  static const KF_FLAG_CREATE = 32768;

  /// Specifies not to verify the folder's existence before attempting to
  /// retrieve the path or IDList.
  static const KF_FLAG_DONT_VERIFY = 16384;

  /// Specfies to store the full path in the registry without using environment
  /// strings.
  static const KF_FLAG_DONT_UNEXPAND = 8192;

  /// Specifies to retrieve the true system path for the folder, free of any
  /// aliased placeholders such as `%USERPROFILE%`, returned by
  /// `SHGetKnownFolderIDList` and
  /// [IKnownFolder::GetIDList](/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getidlist).
  static const KF_FLAG_NO_ALIAS = 4096;

  /// Specifies to initialize the folder using its `Desktop.ini` settings.
  static const KF_FLAG_INIT = 2048;

  /// Specifies to retrieve the default path for a known folder.
  static const KF_FLAG_DEFAULT_PATH = 1024;

  /// Specifies to retrieve the folder's default path independent of the current
  /// location of its parent.
  static const KF_FLAG_NOT_PARENT_RELATIVE = 512;

  /// Specifies to build a simple IDList (PIDL).
  static const KF_FLAG_SIMPLE_IDLIST = 256;

  static const KF_FLAG_ALIAS_ONLY = -2147483648;
}

/// {@category enum}
extension type const LAYERED_WINDOW_ATTRIBUTES_FLAGS(int _) implements int {
  static const LWA_ALPHA = 2;
  static const LWA_COLORKEY = 1;
}

/// {@category enum}
extension type const LOAD_LIBRARY_FLAGS(int _) implements int {
  static const DONT_RESOLVE_DLL_REFERENCES = 1;
  static const LOAD_LIBRARY_AS_DATAFILE = 2;
  static const LOAD_WITH_ALTERED_SEARCH_PATH = 8;
  static const LOAD_IGNORE_CODE_AUTHZ_LEVEL = 16;
  static const LOAD_LIBRARY_AS_IMAGE_RESOURCE = 32;
  static const LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 64;
  static const LOAD_LIBRARY_REQUIRE_SIGNED_TARGET = 128;
  static const LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 256;
  static const LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 512;
  static const LOAD_LIBRARY_SEARCH_USER_DIRS = 1024;
  static const LOAD_LIBRARY_SEARCH_SYSTEM32 = 2048;
  static const LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 4096;
  static const LOAD_LIBRARY_SAFE_CURRENT_DIRS = 8192;
  static const LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER =
      LOAD_LIBRARY_FLAGS(16384);
}

/// {@category enum}
extension type const LOCK_FILE_FLAGS(int _) implements int {
  static const LOCKFILE_EXCLUSIVE_LOCK = 2;
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
  static const RelationProcessorCore = 0;

  /// The specified logical processors are part of the same NUMA node.
  static const RelationNumaNode = 1;

  /// The specified logical processors share a cache.
  static const RelationCache = 2;

  /// The specified logical processors share a physical package (a single
  /// package socketed or soldered onto a motherboard may contain multiple
  /// processor cores or threads, each of which is treated as a separate
  /// processor by the operating system).
  static const RelationProcessorPackage = 3;

  /// The specified logical processors share a single <a
  /// href="https://docs.microsoft.com/windows/desktop/ProcThread/processor-groups">processor
  /// group</a>.
  static const RelationGroup = 4;

  /// The specified logical processors share a single processor die.
  static const RelationProcessorDie = 5;

  /// Requests that the full affinity be returned.
  static const RelationNumaNodeEx = 6;
  static const RelationProcessorModule = 7;

  /// On input, retrieves information about all possible relationship types.
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
  static const Off = 0;

  static const Polite = 1;

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
  static const UserEnabled = 1;

  /// The specified architecture of code can run in kernel mode.
  static const KernelEnabled = 2;

  /// The specified architecture of code runs by relying on WOW64's namespace
  /// `File System Redirector` and `Registry Redirector`.
  static const Wow64Container = 4;
}

/// {@category enum}
extension type const MAP_VIRTUAL_KEY_TYPE(int _) implements int {
  static const MAPVK_VK_TO_VSC = 0;
  static const MAPVK_VSC_TO_VK = 1;
  static const MAPVK_VK_TO_CHAR = 2;
  static const MAPVK_VSC_TO_VK_EX = 3;
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
  static const Unknown = 0;

  /// A 5.25" floppy, with 1.2MB and 512 bytes/sector.
  static const F5_1Pt2_512 = 1;

  /// A 3.5" floppy, with 1.44MB and 512 bytes/sector.
  static const F3_1Pt44_512 = 2;

  /// A 3.5" floppy, with 2.88MB and 512 bytes/sector.
  static const F3_2Pt88_512 = 3;

  /// A 3.5" floppy, with 20.8MB and 512 bytes/sector.
  static const F3_20Pt8_512 = 4;

  /// A 3.5" floppy, with 720KB and 512 bytes/sector.
  static const F3_720_512 = 5;

  /// A 5.25" floppy, with 360KB and 512 bytes/sector.
  static const F5_360_512 = 6;

  /// A 5.25" floppy, with 320KB and 512 bytes/sector.
  static const F5_320_512 = 7;

  /// A 5.25" floppy, with 320KB and 1024 bytes/sector.
  static const F5_320_1024 = 8;

  /// A 5.25" floppy, with 180KB and 512 bytes/sector.
  static const F5_180_512 = 9;

  /// A 5.25" floppy, with 160KB and 512 bytes/sector.
  static const F5_160_512 = 10;

  /// Removable media other than floppy.
  static const RemovableMedia = 11;

  /// Fixed hard disk media.
  static const FixedMedia = 12;

  /// A 3.5" floppy, with 120MB and 512 bytes/sector.
  static const F3_120M_512 = 13;

  /// A 3.5" floppy, with 640KB and 512 bytes/sector.
  static const F3_640_512 = 14;

  /// A 5.25" floppy, with 640KB and 512 bytes/sector.
  static const F5_640_512 = 15;

  /// A 5.25" floppy, with 720KB and 512 bytes/sector.
  static const F5_720_512 = 16;

  /// A 3.5" floppy, with 1.2MB and 512 bytes/sector.
  static const F3_1Pt2_512 = 17;

  /// A 3.5" floppy, with 1.23MB and 1024 bytes/sector.
  static const F3_1Pt23_1024 = 18;

  /// A 5.25" floppy, with 1.23MB and 1024 bytes/sector.
  static const F5_1Pt23_1024 = 19;

  /// A 3.5" floppy, with 128MB and 512 bytes/sector.
  static const F3_128Mb_512 = 20;

  /// A 3.5" floppy, with 230MB and 512 bytes/sector.
  static const F3_230Mb_512 = 21;

  /// An 8" floppy, with 256KB and 128 bytes/sector.
  static const F8_256_128 = 22;

  /// A 3.5" floppy, with 200MB and 512 bytes/sector.
  static const F3_200Mb_512 = 23;

  /// A 3.5" floppy, with 240MB and 512 bytes/sector.
  static const F3_240M_512 = 24;

  /// A 3.5" floppy, with 32MB and 512 bytes/sector.
  static const F3_32M_512 = 25;
}

/// {@category enum}
extension type const MENUINFO_MASK(int _) implements int {
  static const MIM_APPLYTOSUBMENUS = 2147483648;
  static const MIM_BACKGROUND = 2;
  static const MIM_HELPID = 4;
  static const MIM_MAXHEIGHT = 1;
  static const MIM_MENUDATA = 8;
  static const MIM_STYLE = 16;
}

/// {@category enum}
extension type const MENUINFO_STYLE(int _) implements int {
  static const MNS_AUTODISMISS = 268435456;
  static const MNS_CHECKORBMP = 67108864;
  static const MNS_DRAGDROP = 536870912;
  static const MNS_MODELESS = 1073741824;
  static const MNS_NOCHECK = 2147483648;
  static const MNS_NOTIFYBYPOS = 134217728;
}

/// {@category enum}
extension type const MENU_ITEM_FLAGS(int _) implements int {
  static const MF_BYCOMMAND = 0;
  static const MF_BYPOSITION = 1024;
  static const MF_BITMAP = 4;
  static const MF_CHECKED = 8;
  static const MF_DISABLED = 2;
  static const MF_ENABLED = 0;
  static const MF_GRAYED = 1;
  static const MF_MENUBARBREAK = 32;
  static const MF_MENUBREAK = 64;
  static const MF_OWNERDRAW = 256;
  static const MF_POPUP = 16;
  static const MF_SEPARATOR = 2048;
  static const MF_STRING = 0;
  static const MF_UNCHECKED = 0;
  static const MF_INSERT = 0;
  static const MF_CHANGE = 128;
  static const MF_APPEND = 256;
  static const MF_DELETE = 512;
  static const MF_REMOVE = 4096;
  static const MF_USECHECKBITMAPS = 512;
  static const MF_UNHILITE = 0;
  static const MF_HILITE = 128;
  static const MF_DEFAULT = 4096;
  static const MF_SYSMENU = 8192;
  static const MF_HELP = 16384;
  static const MF_RIGHTJUSTIFY = 16384;
  static const MF_MOUSESELECT = 32768;
  static const MF_END = 128;
}

/// {@category enum}
extension type const MENU_ITEM_MASK(int _) implements int {
  static const MIIM_BITMAP = 128;
  static const MIIM_CHECKMARKS = 8;
  static const MIIM_DATA = 32;
  static const MIIM_FTYPE = 256;
  static const MIIM_ID = 2;
  static const MIIM_STATE = 1;
  static const MIIM_STRING = 64;
  static const MIIM_SUBMENU = 4;
  static const MIIM_TYPE = 16;
}

/// {@category enum}
extension type const MENU_ITEM_STATE(int _) implements int {
  static const MFS_GRAYED = 3;
  static const MFS_DISABLED = 3;
  static const MFS_CHECKED = 8;
  static const MFS_HILITE = 128;
  static const MFS_ENABLED = 0;
  static const MFS_UNCHECKED = 0;
  static const MFS_UNHILITE = 0;
  static const MFS_DEFAULT = 4096;
}

/// {@category enum}
extension type const MENU_ITEM_TYPE(int _) implements int {
  static const MFT_BITMAP = 4;
  static const MFT_MENUBARBREAK = 32;
  static const MFT_MENUBREAK = 64;
  static const MFT_OWNERDRAW = 256;
  static const MFT_RADIOCHECK = 512;
  static const MFT_RIGHTJUSTIFY = 16384;
  static const MFT_RIGHTORDER = 8192;
  static const MFT_SEPARATOR = 2048;
  static const MFT_STRING = 0;
}

/// {@category enum}
extension type const MESSAGEBOX_RESULT(int _) implements int {
  static const IDOK = 1;
  static const IDCANCEL = 2;
  static const IDABORT = 3;
  static const IDRETRY = 4;
  static const IDIGNORE = 5;
  static const IDYES = 6;
  static const IDNO = 7;
  static const IDCLOSE = 8;
  static const IDHELP = 9;
  static const IDTRYAGAIN = 10;
  static const IDCONTINUE = 11;
  static const IDASYNC = 32001;
  static const IDTIMEOUT = 32000;
}

/// {@category enum}
extension type const MESSAGEBOX_STYLE(int _) implements int {
  static const MB_ABORTRETRYIGNORE = 2;
  static const MB_CANCELTRYCONTINUE = 6;
  static const MB_HELP = 16384;
  static const MB_OK = 0;
  static const MB_OKCANCEL = 1;
  static const MB_RETRYCANCEL = 5;
  static const MB_YESNO = 4;
  static const MB_YESNOCANCEL = 3;
  static const MB_ICONHAND = 16;
  static const MB_ICONQUESTION = 32;
  static const MB_ICONEXCLAMATION = 48;
  static const MB_ICONASTERISK = 64;
  static const MB_USERICON = 128;
  static const MB_ICONWARNING = 48;
  static const MB_ICONERROR = 16;
  static const MB_ICONINFORMATION = 64;
  static const MB_ICONSTOP = 16;
  static const MB_DEFBUTTON1 = 0;
  static const MB_DEFBUTTON2 = 256;
  static const MB_DEFBUTTON3 = 512;
  static const MB_DEFBUTTON4 = 768;
  static const MB_APPLMODAL = 0;
  static const MB_SYSTEMMODAL = 4096;
  static const MB_TASKMODAL = 8192;
  static const MB_NOFOCUS = 32768;
  static const MB_SETFOREGROUND = 65536;
  static const MB_DEFAULT_DESKTOP_ONLY = 131072;
  static const MB_TOPMOST = 262144;
  static const MB_RIGHT = 524288;
  static const MB_RTLREADING = 1048576;
  static const MB_SERVICE_NOTIFICATION = 2097152;
  static const MB_SERVICE_NOTIFICATION_NT3X = 262144;
  static const MB_TYPEMASK = 15;
  static const MB_ICONMASK = 240;
  static const MB_DEFMASK = 3840;
  static const MB_MODEMASK = 12288;
  static const MB_MISCMASK = 49152;
}

/// {@category enum}
extension type const MIDI_WAVE_OPEN_TYPE(int _) implements int {
  static const CALLBACK_TYPEMASK = 458752;
  static const CALLBACK_NULL = 0;
  static const CALLBACK_WINDOW = 65536;
  static const CALLBACK_TASK = 131072;
  static const CALLBACK_FUNCTION = 196608;
  static const CALLBACK_THREAD = 131072;
  static const CALLBACK_EVENT = 327680;
  static const WAVE_FORMAT_QUERY = 1;
  static const WAVE_ALLOWSYNC = 2;
  static const WAVE_MAPPED = 4;
  static const WAVE_FORMAT_DIRECT = 8;
  static const WAVE_FORMAT_DIRECT_QUERY = 9;
  static const WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE =
      MIDI_WAVE_OPEN_TYPE(16);
  static const MIDI_IO_STATUS = 32;
}

/// {@category enum}
extension type const MODEMDEVCAPS_DIAL_OPTIONS(int _) implements int {
  static const DIALOPTION_BILLING = 64;
  static const DIALOPTION_DIALTONE = 256;
  static const DIALOPTION_QUIET = 128;
}

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_MODE(int _) implements int {
  static const MDMSPKRFLAG_CALLSETUP = 8;
  static const MDMSPKRFLAG_DIAL = 2;
  static const MDMSPKRFLAG_OFF = 1;
  static const MDMSPKRFLAG_ON = 4;
}

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_VOLUME(int _) implements int {
  static const MDMVOLFLAG_HIGH = 4;
  static const MDMVOLFLAG_LOW = 1;
  static const MDMVOLFLAG_MEDIUM = 2;
}

/// {@category enum}
extension type const MODEMSETTINGS_SPEAKER_MODE(int _) implements int {
  static const MDMSPKR_CALLSETUP = 8;
  static const MDMSPKR_DIAL = 2;
  static const MDMSPKR_OFF = 1;
  static const MDMSPKR_ON = 4;
}

/// {@category enum}
extension type const MODEM_SPEAKER_VOLUME(int _) implements int {
  static const MDMVOL_HIGH = 2;
  static const MDMVOL_LOW = 0;
  static const MDMVOL_MEDIUM = 1;
}

/// {@category enum}
extension type const MODEM_STATUS_FLAGS(int _) implements int {
  static const MS_CTS_ON = 16;
  static const MS_DSR_ON = 32;
  static const MS_RING_ON = 64;
  static const MS_RLSD_ON = 128;
}

/// {@category enum}
extension type const MODLOAD_DATA_TYPE(int _) implements int {
  static const DBHHEADER_DEBUGDIRS = 1;
  static const DBHHEADER_CVMISC = 2;
}

/// {@category enum}
extension type const MONITOR_FROM_FLAGS(int _) implements int {
  static const MONITOR_DEFAULTTONEAREST = 2;
  static const MONITOR_DEFAULTTONULL = 0;
  static const MONITOR_DEFAULTTOPRIMARY = 1;
}

/// {@category enum}
extension type const MOUSE_EVENT_FLAGS(int _) implements int {
  static const MOUSEEVENTF_ABSOLUTE = 32768;
  static const MOUSEEVENTF_LEFTDOWN = 2;
  static const MOUSEEVENTF_LEFTUP = 4;
  static const MOUSEEVENTF_MIDDLEDOWN = 32;
  static const MOUSEEVENTF_MIDDLEUP = 64;
  static const MOUSEEVENTF_MOVE = 1;
  static const MOUSEEVENTF_RIGHTDOWN = 8;
  static const MOUSEEVENTF_RIGHTUP = 16;
  static const MOUSEEVENTF_WHEEL = 2048;
  static const MOUSEEVENTF_XDOWN = 128;
  static const MOUSEEVENTF_XUP = 256;
  static const MOUSEEVENTF_HWHEEL = 4096;
  static const MOUSEEVENTF_MOVE_NOCOALESCE = 8192;
  static const MOUSEEVENTF_VIRTUALDESK = 16384;
}

/// {@category enum}
extension type const MOUSE_STATE(int _) implements int {
  static const MOUSE_MOVE_RELATIVE = 0;
  static const MOUSE_MOVE_ABSOLUTE = 1;
  static const MOUSE_VIRTUAL_DESKTOP = 2;
  static const MOUSE_ATTRIBUTES_CHANGED = 4;
  static const MOUSE_MOVE_NOCOALESCE = 8;
}

/// {@category enum}
extension type const MSGFLTINFO_STATUS(int _) implements int {
  static const MSGFLTINFO_NONE = 0;
  static const MSGFLTINFO_ALLOWED_HIGHER = 3;
  static const MSGFLTINFO_ALREADYALLOWED_FORWND = 1;
  static const MSGFLTINFO_ALREADYDISALLOWED_FORWND = 2;
}

/// {@category enum}
extension type const MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(int _)
    implements int {
  static const MWMO_NONE = 0;
  static const MWMO_ALERTABLE = 2;
  static const MWMO_INPUTAVAILABLE = 4;
  static const MWMO_WAITALL = 1;
}

/// {@category enum}
extension type const MW_FILTERMODE(int _) implements int {
  static const MW_FILTERMODE_EXCLUDE = 0;
  static const MW_FILTERMODE_INCLUDE = 1;
}

/// {@category enum}
extension type const NAMED_PIPE_MODE(int _) implements int {
  static const PIPE_WAIT = 0;
  static const PIPE_NOWAIT = 1;
  static const PIPE_READMODE_BYTE = 0;
  static const PIPE_READMODE_MESSAGE = 2;
  static const PIPE_CLIENT_END = 0;
  static const PIPE_SERVER_END = 1;
  static const PIPE_TYPE_BYTE = 0;
  static const PIPE_TYPE_MESSAGE = 4;
  static const PIPE_ACCEPT_REMOTE_CLIENTS = 0;
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
  static const NET_IF_CONNECTION_DEDICATED = 1;

  /// Specifies the passive connection type.
  static const NET_IF_CONNECTION_PASSIVE = 2;

  /// Specifies the demand-dial connection type.
  static const NET_IF_CONNECTION_DEMAND = 3;

  /// A maximum value for testing purposes.
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
  static const NLM_CONNECTION_COST_UNKNOWN = 0;

  /// The connection is unlimited and is considered to be unrestricted of usage
  /// charges and capacity constraints.
  static const NLM_CONNECTION_COST_UNRESTRICTED = 1;

  /// The use of this connection is unrestricted up to a specific data transfer
  /// limit.
  static const NLM_CONNECTION_COST_FIXED = 2;

  /// This connection is regulated on a per byte basis.
  static const NLM_CONNECTION_COST_VARIABLE = 4;

  /// The connection is currently in an OverDataLimit state as it has exceeded
  /// the carrier specified data transfer limit.
  static const NLM_CONNECTION_COST_OVERDATALIMIT = 65536;

  /// The network is experiencing high traffic load and is congested.
  static const NLM_CONNECTION_COST_CONGESTED = 131072;

  /// The connection is roaming outside the network and affiliates of the home
  /// provider.
  static const NLM_CONNECTION_COST_ROAMING = 262144;

  /// The connection is approaching the data limit specified by the carrier.
  static const NLM_CONNECTION_COST_APPROACHINGDATALIMIT =
      NLM_CONNECTION_COST(524288);
}

/// A set of flags that specify the domain type of a network.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_domain_type>.
///
/// {@category enum}
extension type const NLM_DOMAIN_TYPE(int _) implements int {
  /// The Network is not an Active Directory Network.
  static const NLM_DOMAIN_TYPE_NON_DOMAIN_NETWORK = 0;

  /// The Network is an Active Directory Network, but this machine is not
  /// authenticated against it.
  static const NLM_DOMAIN_TYPE_DOMAIN_NETWORK = 1;

  /// The Network is an Active Directory Network, and this machine is
  /// authenticated against it.
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
  static const NLM_NETWORK_CATEGORY_PUBLIC = 0;

  /// The network is a private (trusted) network.
  static const NLM_NETWORK_CATEGORY_PRIVATE = 1;

  /// The network is authenticated against an Active Directory domain.
  static const NLM_NETWORK_CATEGORY_DOMAIN_AUTHENTICATED =
      NLM_NETWORK_CATEGORY(2);
}

/// Specifies information about the duplicate address detection (DAD) state for
/// an IPv4 or IPv6 address.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/nldef/ne-nldef-nl_dad_state>.
///
/// {@category enum}
extension type const NL_DAD_STATE(int _) implements int {
  static const NldsInvalid = 0;

  static const NldsTentative = 1;

  static const NldsDuplicate = 2;

  static const NldsDeprecated = 3;

  static const NldsPreferred = 4;

  /// The DAD state is invalid.
  static const IpDadStateInvalid = 0;

  /// The DAD state is tentative.
  static const IpDadStateTentative = 1;

  /// A duplicate IP address has been detected.
  static const IpDadStateDuplicate = 2;

  /// The IP address has been deprecated.
  static const IpDadStateDeprecated = 3;

  /// The IP address is the preferred address.
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
  static const IpPrefixOriginOther = 0;

  /// The IP address prefix was manually specified.
  static const IpPrefixOriginManual = 1;

  /// The IP address prefix is from a well known source.
  static const IpPrefixOriginWellKnown = 2;

  /// The IP address prefix was provided by DHCP settings.
  static const IpPrefixOriginDhcp = 3;

  /// The IP address prefix was obtained through a router advertisement (RA).
  static const IpPrefixOriginRouterAdvertisement = 4;

  /// The IP address prefix should be unchanged.
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
  static const NlsoOther = 0;

  static const NlsoManual = 1;

  static const NlsoWellKnown = 2;

  static const NlsoDhcp = 3;

  static const NlsoLinkLayerAddress = 4;

  static const NlsoRandom = 5;

  /// The IP address suffix was provided by a source other than those defined in
  /// this enumeration.
  static const IpSuffixOriginOther = 0;

  /// The IP address suffix was manually specified.
  static const IpSuffixOriginManual = 1;

  /// The IP address suffix is from a well-known source.
  static const IpSuffixOriginWellKnown = 2;

  /// The IP address suffix was provided by DHCP settings.
  static const IpSuffixOriginDhcp = 3;

  /// The IP address suffix was obtained from the link-layer address.
  static const IpSuffixOriginLinkLayerAddress = 4;

  /// The IP address suffix was obtained from a random source.
  static const IpSuffixOriginRandom = 5;

  /// The IP address suffix should be unchanged.
  static const IpSuffixOriginUnchanged = 16;
}

/// {@category enum}
extension type const NOTIFY_ICON_DATA_FLAGS(int _) implements int {
  static const NIF_MESSAGE = 1;
  static const NIF_ICON = 2;
  static const NIF_TIP = 4;
  static const NIF_STATE = 8;
  static const NIF_INFO = 16;
  static const NIF_GUID = 32;
  static const NIF_REALTIME = 64;
  static const NIF_SHOWTIP = 128;
}

/// {@category enum}
extension type const NOTIFY_ICON_INFOTIP_FLAGS(int _) implements int {
  static const NIIF_NONE = 0;
  static const NIIF_INFO = 1;
  static const NIIF_WARNING = 2;
  static const NIIF_ERROR = 3;
  static const NIIF_USER = 4;
  static const NIIF_ICON_MASK = 15;
  static const NIIF_NOSOUND = 16;
  static const NIIF_LARGE_ICON = 32;
  static const NIIF_RESPECT_QUIET_TIME = 128;
}

/// {@category enum}
extension type const NOTIFY_ICON_MESSAGE(int _) implements int {
  static const NIM_ADD = 0;
  static const NIM_MODIFY = 1;
  static const NIM_DELETE = 2;
  static const NIM_SETFOCUS = 3;
  static const NIM_SETVERSION = 4;
}

/// {@category enum}
extension type const NOTIFY_ICON_STATE(int _) implements int {
  static const NIS_HIDDEN = 1;
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
  static const NavigateDirection_Parent = 0;

  /// The navigation direction is to the next sibling.
  static const NavigateDirection_NextSibling = 1;

  /// The navigation direction is to the previous sibling.
  static const NavigateDirection_PreviousSibling = 2;

  /// The navigation direction is to the first child.
  static const NavigateDirection_FirstChild = 3;

  /// The navigation direction is to the last child.
  static const NavigateDirection_LastChild = 4;
}

/// {@category enum}
extension type const OBJECT_IDENTIFIER(int _) implements int {
  static const OBJID_WINDOW = 0;
  static const OBJID_SYSMENU = OBJECT_IDENTIFIER(-1);
  static const OBJID_TITLEBAR = OBJECT_IDENTIFIER(-2);
  static const OBJID_MENU = OBJECT_IDENTIFIER(-3);
  static const OBJID_CLIENT = OBJECT_IDENTIFIER(-4);
  static const OBJID_VSCROLL = OBJECT_IDENTIFIER(-5);
  static const OBJID_HSCROLL = OBJECT_IDENTIFIER(-6);
  static const OBJID_SIZEGRIP = OBJECT_IDENTIFIER(-7);
  static const OBJID_CARET = OBJECT_IDENTIFIER(-8);
  static const OBJID_CURSOR = OBJECT_IDENTIFIER(-9);
  static const OBJID_ALERT = OBJECT_IDENTIFIER(-10);
  static const OBJID_SOUND = OBJECT_IDENTIFIER(-11);
  static const OBJID_QUERYCLASSNAMEIDX = OBJECT_IDENTIFIER(-12);
  static const OBJID_NATIVEOM = OBJECT_IDENTIFIER(-16);
}

/// {@category enum}
extension type const OBJECT_SECURITY_INFORMATION(int _) implements int {
  static const ATTRIBUTE_SECURITY_INFORMATION = 32;
  static const BACKUP_SECURITY_INFORMATION = 65536;
  static const DACL_SECURITY_INFORMATION = 4;
  static const GROUP_SECURITY_INFORMATION = 2;
  static const LABEL_SECURITY_INFORMATION = 16;
  static const OWNER_SECURITY_INFORMATION = 1;
  static const PROTECTED_DACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(2147483648);
  static const PROTECTED_SACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(1073741824);
  static const SACL_SECURITY_INFORMATION = 8;
  static const SCOPE_SECURITY_INFORMATION = 64;
  static const UNPROTECTED_DACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(536870912);
  static const UNPROTECTED_SACL_SECURITY_INFORMATION =
      OBJECT_SECURITY_INFORMATION(268435456);
}

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS(int _) implements int {
  static const OFN_READONLY = 1;
  static const OFN_OVERWRITEPROMPT = 2;
  static const OFN_HIDEREADONLY = 4;
  static const OFN_NOCHANGEDIR = 8;
  static const OFN_SHOWHELP = 16;
  static const OFN_ENABLEHOOK = 32;
  static const OFN_ENABLETEMPLATE = 64;
  static const OFN_ENABLETEMPLATEHANDLE = 128;
  static const OFN_NOVALIDATE = 256;
  static const OFN_ALLOWMULTISELECT = 512;
  static const OFN_EXTENSIONDIFFERENT = 1024;
  static const OFN_PATHMUSTEXIST = 2048;
  static const OFN_FILEMUSTEXIST = 4096;
  static const OFN_CREATEPROMPT = 8192;
  static const OFN_SHAREAWARE = 16384;
  static const OFN_NOREADONLYRETURN = 32768;
  static const OFN_NOTESTFILECREATE = 65536;
  static const OFN_NONETWORKBUTTON = 131072;
  static const OFN_NOLONGNAMES = 262144;
  static const OFN_EXPLORER = 524288;
  static const OFN_NODEREFERENCELINKS = 1048576;
  static const OFN_LONGNAMES = 2097152;
  static const OFN_ENABLEINCLUDENOTIFY = 4194304;
  static const OFN_ENABLESIZING = 8388608;
  static const OFN_DONTADDTORECENT = 33554432;
  static const OFN_FORCESHOWHIDDEN = 268435456;
}

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS_EX(int _) implements int {
  static const OFN_EX_NONE = 0;
  static const OFN_EX_NOPLACESBAR = 1;
}

/// {@category enum}
extension type const OPEN_THEME_DATA_FLAGS(int _) implements int {
  static const OTD_FORCE_RECT_SIZING = 1;
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
  static const ORIENTATION_PREFERENCE_NONE = 0;

  /// The process represents a desktop app that can be used in landscape mode.
  static const ORIENTATION_PREFERENCE_LANDSCAPE = 1;

  /// The process represents a desktop app that can be used in portrait mode.
  static const ORIENTATION_PREFERENCE_PORTRAIT = 2;

  /// The process represents a desktop app that can be used in flipped landscape
  /// mode.
  static const ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED =
      ORIENTATION_PREFERENCE(4);

  /// The process represents a desktop app that can be used in flipped portrait
  /// mode.
  static const ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED =
      ORIENTATION_PREFERENCE(8);
}

/// {@category enum}
extension type const OS_PRODUCT_TYPE(int _) implements int {
  static const PRODUCT_BUSINESS = 6;
  static const PRODUCT_BUSINESS_N = 16;
  static const PRODUCT_CLUSTER_SERVER = 18;
  static const PRODUCT_CLUSTER_SERVER_V = 64;
  static const PRODUCT_CORE = 101;
  static const PRODUCT_CORE_COUNTRYSPECIFIC = 99;
  static const PRODUCT_CORE_N = 98;
  static const PRODUCT_CORE_SINGLELANGUAGE = 100;
  static const PRODUCT_DATACENTER_EVALUATION_SERVER = 80;
  static const PRODUCT_DATACENTER_A_SERVER_CORE = 145;
  static const PRODUCT_STANDARD_A_SERVER_CORE = 146;
  static const PRODUCT_DATACENTER_SERVER = 8;
  static const PRODUCT_DATACENTER_SERVER_CORE = 12;
  static const PRODUCT_DATACENTER_SERVER_CORE_V = 39;
  static const PRODUCT_DATACENTER_SERVER_V = 37;
  static const PRODUCT_EDUCATION = 121;
  static const PRODUCT_EDUCATION_N = 122;
  static const PRODUCT_ENTERPRISE = 4;
  static const PRODUCT_ENTERPRISE_E = 70;
  static const PRODUCT_ENTERPRISE_EVALUATION = 72;
  static const PRODUCT_ENTERPRISE_N = 27;
  static const PRODUCT_ENTERPRISE_N_EVALUATION = 84;
  static const PRODUCT_ENTERPRISE_S = 125;
  static const PRODUCT_ENTERPRISE_S_EVALUATION = 129;
  static const PRODUCT_ENTERPRISE_S_N = 126;
  static const PRODUCT_ENTERPRISE_S_N_EVALUATION = 130;
  static const PRODUCT_ENTERPRISE_SERVER = 10;
  static const PRODUCT_ENTERPRISE_SERVER_CORE = 14;
  static const PRODUCT_ENTERPRISE_SERVER_CORE_V = 41;
  static const PRODUCT_ENTERPRISE_SERVER_IA64 = 15;
  static const PRODUCT_ENTERPRISE_SERVER_V = 38;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL = 60;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC = 62;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT = 59;
  static const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC = 61;
  static const PRODUCT_HOME_BASIC = 2;
  static const PRODUCT_HOME_BASIC_E = 67;
  static const PRODUCT_HOME_BASIC_N = 5;
  static const PRODUCT_HOME_PREMIUM = 3;
  static const PRODUCT_HOME_PREMIUM_E = 68;
  static const PRODUCT_HOME_PREMIUM_N = 26;
  static const PRODUCT_HOME_PREMIUM_SERVER = 34;
  static const PRODUCT_HOME_SERVER = 19;
  static const PRODUCT_HYPERV = 42;
  static const PRODUCT_IOTUAP = 123;
  static const PRODUCT_IOTUAPCOMMERCIAL = 131;
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT = 30;
  static const PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING = 32;
  static const PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY = 31;
  static const PRODUCT_MOBILE_CORE = 104;
  static const PRODUCT_MOBILE_ENTERPRISE = 133;
  static const PRODUCT_MULTIPOINT_PREMIUM_SERVER = 77;
  static const PRODUCT_MULTIPOINT_STANDARD_SERVER = 76;
  static const PRODUCT_PRO_WORKSTATION = 161;
  static const PRODUCT_PRO_WORKSTATION_N = 162;
  static const PRODUCT_PROFESSIONAL = 48;
  static const PRODUCT_PROFESSIONAL_E = 69;
  static const PRODUCT_PROFESSIONAL_N = 49;
  static const PRODUCT_PROFESSIONAL_WMC = 103;
  static const PRODUCT_SB_SOLUTION_SERVER = 50;
  static const PRODUCT_SB_SOLUTION_SERVER_EM = 54;
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS = 51;
  static const PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM = 55;
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS = 24;
  static const PRODUCT_SERVER_FOR_SMALLBUSINESS_V = 35;
  static const PRODUCT_SERVER_FOUNDATION = 33;
  static const PRODUCT_SMALLBUSINESS_SERVER = 9;
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM = 25;
  static const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE = 63;
  static const PRODUCT_SOLUTION_EMBEDDEDSERVER = 56;
  static const PRODUCT_STANDARD_EVALUATION_SERVER = 79;
  static const PRODUCT_STANDARD_SERVER = 7;
  static const PRODUCT_STANDARD_SERVER_CORE_ = 13;
  static const PRODUCT_STANDARD_SERVER_CORE_V = 40;
  static const PRODUCT_STANDARD_SERVER_V = 36;
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS = 52;
  static const PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE = 53;
  static const PRODUCT_STARTER = 11;
  static const PRODUCT_STARTER_E = 66;
  static const PRODUCT_STARTER_N = 47;
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER = 23;
  static const PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE = 46;
  static const PRODUCT_STORAGE_EXPRESS_SERVER = 20;
  static const PRODUCT_STORAGE_EXPRESS_SERVER_CORE = 43;
  static const PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER = 96;
  static const PRODUCT_STORAGE_STANDARD_SERVER = 21;
  static const PRODUCT_STORAGE_STANDARD_SERVER_CORE = 44;
  static const PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER =
      OS_PRODUCT_TYPE(95);
  static const PRODUCT_STORAGE_WORKGROUP_SERVER = 22;
  static const PRODUCT_STORAGE_WORKGROUP_SERVER_CORE = 45;
  static const PRODUCT_ULTIMATE = 1;
  static const PRODUCT_ULTIMATE_E = 71;
  static const PRODUCT_ULTIMATE_N = 28;
  static const PRODUCT_UNDEFINED = 0;
  static const PRODUCT_WEB_SERVER = 17;
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
  static const OrientationType_None = 0;

  /// The control has horizontal orientation.
  static const OrientationType_Horizontal = 1;

  /// The control has vertical orientation.
  static const OrientationType_Vertical = 2;
}

/// {@category enum}
extension type const PAGE_PROTECTION_FLAGS(int _) implements int {
  static const PAGE_NOACCESS = 1;
  static const PAGE_READONLY = 2;
  static const PAGE_READWRITE = 4;
  static const PAGE_WRITECOPY = 8;
  static const PAGE_EXECUTE = 16;
  static const PAGE_EXECUTE_READ = 32;
  static const PAGE_EXECUTE_READWRITE = 64;
  static const PAGE_EXECUTE_WRITECOPY = 128;
  static const PAGE_GUARD = 256;
  static const PAGE_NOCACHE = 512;
  static const PAGE_WRITECOMBINE = 1024;
  static const PAGE_GRAPHICS_NOACCESS = 2048;
  static const PAGE_GRAPHICS_READONLY = 4096;
  static const PAGE_GRAPHICS_READWRITE = 8192;
  static const PAGE_GRAPHICS_EXECUTE = 16384;
  static const PAGE_GRAPHICS_EXECUTE_READ = 32768;
  static const PAGE_GRAPHICS_EXECUTE_READWRITE = 65536;
  static const PAGE_GRAPHICS_COHERENT = 131072;
  static const PAGE_GRAPHICS_NOCACHE = 262144;
  static const PAGE_ENCLAVE_THREAD_CONTROL = 2147483648;
  static const PAGE_REVERT_TO_FILE_MAP = 2147483648;
  static const PAGE_TARGETS_NO_UPDATE = 1073741824;
  static const PAGE_TARGETS_INVALID = 1073741824;
  static const PAGE_ENCLAVE_UNVALIDATED = 536870912;
  static const PAGE_ENCLAVE_MASK = 268435456;
  static const PAGE_ENCLAVE_DECOMMIT = 268435456;
  static const PAGE_ENCLAVE_SS_FIRST = 268435457;
  static const PAGE_ENCLAVE_SS_REST = 268435458;
  static const SEC_PARTITION_OWNER_HANDLE = 262144;
  static const SEC_64K_PAGES = 524288;
  static const SEC_FILE = 8388608;
  static const SEC_IMAGE = 16777216;
  static const SEC_PROTECTED_IMAGE = 33554432;
  static const SEC_RESERVE = 67108864;
  static const SEC_COMMIT = 134217728;
  static const SEC_NOCACHE = 268435456;
  static const SEC_WRITECOMBINE = 1073741824;
  static const SEC_LARGE_PAGES = 2147483648;
  static const SEC_IMAGE_NO_EXECUTE = 285212672;
}

/// {@category enum}
extension type const PAGE_TYPE(int _) implements int {
  static const MEM_PRIVATE = 131072;
  static const MEM_MAPPED = 262144;
  static const MEM_IMAGE = 16777216;
}

/// {@category enum}
extension type const PARAMFLAGS(int _) implements int {
  static const PARAMFLAG_NONE = 0;
  static const PARAMFLAG_FIN = 1;
  static const PARAMFLAG_FOUT = 2;
  static const PARAMFLAG_FLCID = 4;
  static const PARAMFLAG_FRETVAL = 8;
  static const PARAMFLAG_FOPT = 16;
  static const PARAMFLAG_FHASDEFAULT = 32;
  static const PARAMFLAG_FHASCUSTDATA = 64;
}

/// {@category enum}
extension type const PEEK_MESSAGE_REMOVE_TYPE(int _) implements int {
  static const PM_NOREMOVE = 0;
  static const PM_REMOVE = 1;
  static const PM_NOYIELD = 2;
  static const PM_QS_INPUT = 67567616;
  static const PM_QS_POSTMESSAGE = 9961472;
  static const PM_QS_PAINT = 2097152;
  static const PM_QS_SENDMESSAGE = 4194304;
}

/// {@category enum}
extension type const PEN_STYLE(int _) implements int {
  static const PS_GEOMETRIC = 65536;
  static const PS_COSMETIC = 0;
  static const PS_SOLID = 0;
  static const PS_DASH = 1;
  static const PS_DOT = 2;
  static const PS_DASHDOT = 3;
  static const PS_DASHDOTDOT = 4;
  static const PS_NULL = 5;
  static const PS_INSIDEFRAME = 6;
  static const PS_USERSTYLE = 7;
  static const PS_ALTERNATE = 8;
  static const PS_STYLE_MASK = 15;
  static const PS_ENDCAP_ROUND = 0;
  static const PS_ENDCAP_SQUARE = 256;
  static const PS_ENDCAP_FLAT = 512;
  static const PS_ENDCAP_MASK = 3840;
  static const PS_JOIN_ROUND = 0;
  static const PS_JOIN_BEVEL = 4096;
  static const PS_JOIN_MITER = 8192;
  static const PS_JOIN_MASK = 61440;
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
  static const POINTER_CHANGE_NONE = 0;

  /// The first button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIRSTBUTTON</a>)
  /// transitioned to a pressed state.
  static const POINTER_CHANGE_FIRSTBUTTON_DOWN = 1;

  /// The first button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIRSTBUTTON</a>)
  /// transitioned to a released state.
  static const POINTER_CHANGE_FIRSTBUTTON_UP = 2;

  /// The second button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_SECONDBUTTON</a>)
  /// transitioned to a pressed state.
  static const POINTER_CHANGE_SECONDBUTTON_DOWN = 3;

  /// The second button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_SECONDBUTTON</a>)
  /// transitioned to a released state.
  static const POINTER_CHANGE_SECONDBUTTON_UP = 4;

  /// The third button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_THIRDBUTTON</a>)
  /// transitioned to a pressed state.
  static const POINTER_CHANGE_THIRDBUTTON_DOWN = 5;

  /// The third button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_THIRDBUTTON</a>)
  /// transitioned to a released state.
  static const POINTER_CHANGE_THIRDBUTTON_UP = 6;

  /// The fourth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FOURTHBUTTON</a>)
  /// transitioned to a pressed state.
  static const POINTER_CHANGE_FOURTHBUTTON_DOWN = 7;

  /// The fourth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FOURTHBUTTON</a>)
  /// transitioned to a released state.
  static const POINTER_CHANGE_FOURTHBUTTON_UP = 8;

  /// The fifth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIFTHBUTTON</a>)
  /// transitioned to a pressed state.
  static const POINTER_CHANGE_FIFTHBUTTON_DOWN = 9;

  /// The fifth button (see <a
  /// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIFTHBUTTON</a>)
  /// transitioned to a released state.
  static const POINTER_CHANGE_FIFTHBUTTON_UP = 10;
}

/// {@category enum}
extension type const POINTER_FLAGS(int _) implements int {
  static const POINTER_FLAG_NONE = 0;
  static const POINTER_FLAG_NEW = 1;
  static const POINTER_FLAG_INRANGE = 2;
  static const POINTER_FLAG_INCONTACT = 4;
  static const POINTER_FLAG_FIRSTBUTTON = 16;
  static const POINTER_FLAG_SECONDBUTTON = 32;
  static const POINTER_FLAG_THIRDBUTTON = 64;
  static const POINTER_FLAG_FOURTHBUTTON = 128;
  static const POINTER_FLAG_FIFTHBUTTON = 256;
  static const POINTER_FLAG_PRIMARY = 8192;
  static const POINTER_FLAG_CONFIDENCE = 16384;
  static const POINTER_FLAG_CANCELED = 32768;
  static const POINTER_FLAG_DOWN = 65536;
  static const POINTER_FLAG_UPDATE = 131072;
  static const POINTER_FLAG_UP = 262144;
  static const POINTER_FLAG_WHEEL = 524288;
  static const POINTER_FLAG_HWHEEL = 1048576;
  static const POINTER_FLAG_CAPTURECHANGED = 2097152;
  static const POINTER_FLAG_HASTRANSFORM = 4194304;
}

/// {@category enum}
extension type const POINTER_INPUT_TYPE(int _) implements int {
  static const PT_POINTER = 1;
  static const PT_TOUCH = 2;
  static const PT_PEN = 3;
  static const PT_MOUSE = 4;
  static const PT_TOUCHPAD = 5;
}

/// {@category enum}
extension type const PRINTER_ACCESS_RIGHTS(int _) implements int {
  static const PRINTER_ALL_ACCESS = 983052;
  static const PRINTER_READ = 131080;
  static const PRINTER_WRITE = 131080;
  static const PRINTER_EXECUTE = 131080;
  static const SERVER_ALL_ACCESS = 983043;
  static const SERVER_READ = 131074;
  static const SERVER_WRITE = 131075;
  static const SERVER_EXECUTE = 131074;
  static const PRINTER_DELETE = 65536;
  static const PRINTER_READ_CONTROL = 131072;
  static const PRINTER_WRITE_DAC = 262144;
  static const PRINTER_WRITE_OWNER = 524288;
  static const PRINTER_SYNCHRONIZE = 1048576;
  static const PRINTER_STANDARD_RIGHTS_REQUIRED = 983040;
  static const PRINTER_STANDARD_RIGHTS_READ = 131072;
  static const PRINTER_STANDARD_RIGHTS_WRITE = 131072;
  static const PRINTER_STANDARD_RIGHTS_EXECUTE = 131072;
  static const SERVER_ACCESS_ADMINISTER = 1;
  static const SERVER_ACCESS_ENUMERATE = 2;
  static const PRINTER_ACCESS_ADMINISTER = 4;
  static const PRINTER_ACCESS_USE = 8;
  static const PRINTER_ACCESS_MANAGE_LIMITED = 64;
}

/// Represents the execution context when GetPrintExecutionData is called.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/printdocs/print-execution-context>.
///
/// {@category enum}
extension type const PRINT_EXECUTION_CONTEXT(int _) implements int {
  static const PRINT_EXECUTION_CONTEXT_APPLICATION = 0;
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE =
      PRINT_EXECUTION_CONTEXT(1);
  static const PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST =
      PRINT_EXECUTION_CONTEXT(2);
  static const PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE =
      PRINT_EXECUTION_CONTEXT(3);
  static const PRINT_EXECUTION_CONTEXT_WOW64 = 4;
}

/// {@category enum}
extension type const PRINT_WINDOW_FLAGS(int _) implements int {
  static const PW_CLIENTONLY = 1;
}

/// {@category enum}
extension type const PROCESSOR_ARCHITECTURE(int _) implements int {
  static const PROCESSOR_ARCHITECTURE_INTEL = 0;
  static const PROCESSOR_ARCHITECTURE_MIPS = 1;
  static const PROCESSOR_ARCHITECTURE_ALPHA = 2;
  static const PROCESSOR_ARCHITECTURE_PPC = 3;
  static const PROCESSOR_ARCHITECTURE_SHX = 4;
  static const PROCESSOR_ARCHITECTURE_ARM = 5;
  static const PROCESSOR_ARCHITECTURE_IA64 = 6;
  static const PROCESSOR_ARCHITECTURE_ALPHA64 = 7;
  static const PROCESSOR_ARCHITECTURE_MSIL = 8;
  static const PROCESSOR_ARCHITECTURE_AMD64 = 9;
  static const PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 =
      PROCESSOR_ARCHITECTURE(10);
  static const PROCESSOR_ARCHITECTURE_NEUTRAL = 11;
  static const PROCESSOR_ARCHITECTURE_ARM64 = 12;
  static const PROCESSOR_ARCHITECTURE_ARM32_ON_WIN64 =
      PROCESSOR_ARCHITECTURE(13);
  static const PROCESSOR_ARCHITECTURE_IA32_ON_ARM64 =
      PROCESSOR_ARCHITECTURE(14);
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
  static const CacheUnified = 0;

  /// The cache is for processor instructions.
  static const CacheInstruction = 1;

  /// The cache is for data.
  static const CacheData = 2;

  /// The cache is for traces.
  static const CacheTrace = 3;
}

/// {@category enum}
extension type const PROCESS_ACCESS_RIGHTS(int _) implements int {
  static const PROCESS_TERMINATE = 1;
  static const PROCESS_CREATE_THREAD = 2;
  static const PROCESS_SET_SESSIONID = 4;
  static const PROCESS_VM_OPERATION = 8;
  static const PROCESS_VM_READ = 16;
  static const PROCESS_VM_WRITE = 32;
  static const PROCESS_DUP_HANDLE = 64;
  static const PROCESS_CREATE_PROCESS = 128;
  static const PROCESS_SET_QUOTA = 256;
  static const PROCESS_SET_INFORMATION = 512;
  static const PROCESS_QUERY_INFORMATION = 1024;
  static const PROCESS_SUSPEND_RESUME = 2048;
  static const PROCESS_QUERY_LIMITED_INFORMATION = 4096;
  static const PROCESS_SET_LIMITED_INFORMATION = 8192;
  static const PROCESS_ALL_ACCESS = 2097151;
  static const PROCESS_DELETE = 65536;
  static const PROCESS_READ_CONTROL = 131072;
  static const PROCESS_WRITE_DAC = 262144;
  static const PROCESS_WRITE_OWNER = 524288;
  static const PROCESS_SYNCHRONIZE = 1048576;
  static const PROCESS_STANDARD_RIGHTS_REQUIRED = 983040;
}

/// {@category enum}
extension type const PROCESS_CREATION_FLAGS(int _) implements int {
  static const DEBUG_PROCESS = 1;
  static const DEBUG_ONLY_THIS_PROCESS = 2;
  static const CREATE_SUSPENDED = 4;
  static const DETACHED_PROCESS = 8;
  static const CREATE_NEW_CONSOLE = 16;
  static const NORMAL_PRIORITY_CLASS = 32;
  static const IDLE_PRIORITY_CLASS = 64;
  static const HIGH_PRIORITY_CLASS = 128;
  static const REALTIME_PRIORITY_CLASS = 256;
  static const CREATE_NEW_PROCESS_GROUP = 512;
  static const CREATE_UNICODE_ENVIRONMENT = 1024;
  static const CREATE_SEPARATE_WOW_VDM = 2048;
  static const CREATE_SHARED_WOW_VDM = 4096;
  static const CREATE_FORCEDOS = 8192;
  static const BELOW_NORMAL_PRIORITY_CLASS = 16384;
  static const ABOVE_NORMAL_PRIORITY_CLASS = 32768;
  static const INHERIT_PARENT_AFFINITY = 65536;
  static const INHERIT_CALLER_PRIORITY = 131072;
  static const CREATE_PROTECTED_PROCESS = 262144;
  static const EXTENDED_STARTUPINFO_PRESENT = 524288;
  static const PROCESS_MODE_BACKGROUND_BEGIN = 1048576;
  static const PROCESS_MODE_BACKGROUND_END = 2097152;
  static const CREATE_SECURE_PROCESS = 4194304;
  static const CREATE_BREAKAWAY_FROM_JOB = 16777216;
  static const CREATE_PRESERVE_CODE_AUTHZ_LEVEL =
      PROCESS_CREATION_FLAGS(33554432);
  static const CREATE_DEFAULT_ERROR_MODE = 67108864;
  static const CREATE_NO_WINDOW = 134217728;
  static const PROFILE_USER = 268435456;
  static const PROFILE_KERNEL = 536870912;
  static const PROFILE_SERVER = 1073741824;
  static const CREATE_IGNORE_SYSTEM_DEFAULT =
      PROCESS_CREATION_FLAGS(2147483648);
}

/// {@category enum}
extension type const PROCESS_NAME_FORMAT(int _) implements int {
  static const PROCESS_NAME_WIN32 = 0;
  static const PROCESS_NAME_NATIVE = 1;
}

/// {@category enum}
extension type const PROPSPEC_KIND(int _) implements int {
  static const PRSPEC_LPWSTR = 0;
  static const PRSPEC_PROPID = 1;
}

/// {@category enum}
extension type const PURGE_COMM_FLAGS(int _) implements int {
  static const PURGE_RXABORT = 2;
  static const PURGE_RXCLEAR = 8;
  static const PURGE_TXABORT = 1;
  static const PURGE_TXCLEAR = 4;
}

/// {@category enum}
extension type const QUEUE_STATUS_FLAGS(int _) implements int {
  static const QS_ALLEVENTS = 1215;
  static const QS_ALLINPUT = 1279;
  static const QS_ALLPOSTMESSAGE = 256;
  static const QS_HOTKEY = 128;
  static const QS_INPUT = 1031;
  static const QS_KEY = 1;
  static const QS_MOUSE = 6;
  static const QS_MOUSEBUTTON = 4;
  static const QS_MOUSEMOVE = 2;
  static const QS_PAINT = 32;
  static const QS_POSTMESSAGE = 8;
  static const QS_RAWINPUT = 1024;
  static const QS_SENDMESSAGE = 64;
  static const QS_TIMER = 16;
}

/// {@category enum}
extension type const RAWINPUTDEVICE_FLAGS(int _) implements int {
  static const RIDEV_REMOVE = 1;
  static const RIDEV_EXCLUDE = 16;
  static const RIDEV_PAGEONLY = 32;
  static const RIDEV_NOLEGACY = 48;
  static const RIDEV_INPUTSINK = 256;
  static const RIDEV_CAPTUREMOUSE = 512;
  static const RIDEV_NOHOTKEYS = 512;
  static const RIDEV_APPKEYS = 1024;
  static const RIDEV_EXINPUTSINK = 4096;
  static const RIDEV_DEVNOTIFY = 8192;
}

/// {@category enum}
extension type const RAW_INPUT_DATA_COMMAND_FLAGS(int _) implements int {
  static const RID_HEADER = 268435461;
  static const RID_INPUT = 268435459;
}

/// {@category enum}
extension type const RAW_INPUT_DEVICE_INFO_COMMAND(int _) implements int {
  static const RIDI_PREPARSEDDATA = 536870917;
  static const RIDI_DEVICENAME = 536870919;
  static const RIDI_DEVICEINFO = 536870923;
}

/// {@category enum}
extension type const REDRAW_WINDOW_FLAGS(int _) implements int {
  static const RDW_INVALIDATE = 1;
  static const RDW_INTERNALPAINT = 2;
  static const RDW_ERASE = 4;
  static const RDW_VALIDATE = 8;
  static const RDW_NOINTERNALPAINT = 16;
  static const RDW_NOERASE = 32;
  static const RDW_NOCHILDREN = 64;
  static const RDW_ALLCHILDREN = 128;
  static const RDW_UPDATENOW = 256;
  static const RDW_ERASENOW = 512;
  static const RDW_FRAME = 1024;
  static const RDW_NOFRAME = 2048;
}

/// {@category enum}
extension type const REGISTER_NOTIFICATION_FLAGS(int _) implements int {
  static const DEVICE_NOTIFY_SERVICE_HANDLE = 1;
  static const DEVICE_NOTIFY_CALLBACK = 2;
  static const DEVICE_NOTIFY_WINDOW_HANDLE = 0;
  static const DEVICE_NOTIFY_ALL_INTERFACE_CLASSES =
      REGISTER_NOTIFICATION_FLAGS(4);
}

/// {@category enum}
extension type const REGISTER_TOUCH_WINDOW_FLAGS(int _) implements int {
  static const TWF_FINETOUCH = 1;
  static const TWF_WANTPALM = 2;
}

/// {@category enum}
extension type const REG_CREATE_KEY_DISPOSITION(int _) implements int {
  static const REG_CREATED_NEW_KEY = 1;
  static const REG_OPENED_EXISTING_KEY = 2;
}

/// {@category enum}
extension type const REG_NOTIFY_FILTER(int _) implements int {
  static const REG_NOTIFY_CHANGE_NAME = 1;
  static const REG_NOTIFY_CHANGE_ATTRIBUTES = 2;
  static const REG_NOTIFY_CHANGE_LAST_SET = 4;
  static const REG_NOTIFY_CHANGE_SECURITY = 8;
  static const REG_NOTIFY_THREAD_AGNOSTIC = 268435456;
}

/// {@category enum}
extension type const REG_OPEN_CREATE_OPTIONS(int _) implements int {
  static const REG_OPTION_RESERVED = 0;
  static const REG_OPTION_NON_VOLATILE = 0;
  static const REG_OPTION_VOLATILE = 1;
  static const REG_OPTION_CREATE_LINK = 2;
  static const REG_OPTION_BACKUP_RESTORE = 4;
  static const REG_OPTION_OPEN_LINK = 8;
  static const REG_OPTION_DONT_VIRTUALIZE = 16;
}

/// {@category enum}
extension type const REG_ROUTINE_FLAGS(int _) implements int {
  static const RRF_RT_DWORD = 24;
  static const RRF_RT_QWORD = 72;
  static const RRF_RT_REG_NONE = 1;
  static const RRF_RT_REG_SZ = 2;
  static const RRF_RT_REG_EXPAND_SZ = 4;
  static const RRF_RT_REG_BINARY = 8;
  static const RRF_RT_REG_DWORD = 16;
  static const RRF_RT_REG_MULTI_SZ = 32;
  static const RRF_RT_REG_QWORD = 64;
  static const RRF_RT_ANY = 65535;
  static const RRF_SUBKEY_WOW6464KEY = 65536;
  static const RRF_SUBKEY_WOW6432KEY = 131072;
  static const RRF_WOW64_MASK = 196608;
  static const RRF_NOEXPAND = 268435456;
  static const RRF_ZEROONFAILURE = 536870912;
}

/// {@category enum}
extension type const REG_SAM_FLAGS(int _) implements int {
  static const KEY_QUERY_VALUE = 1;
  static const KEY_SET_VALUE = 2;
  static const KEY_CREATE_SUB_KEY = 4;
  static const KEY_ENUMERATE_SUB_KEYS = 8;
  static const KEY_NOTIFY = 16;
  static const KEY_CREATE_LINK = 32;
  static const KEY_WOW64_32KEY = 512;
  static const KEY_WOW64_64KEY = 256;
  static const KEY_WOW64_RES = 768;
  static const KEY_READ = 131097;
  static const KEY_WRITE = 131078;
  static const KEY_EXECUTE = 131097;
  static const KEY_ALL_ACCESS = 983103;
}

/// {@category enum}
extension type const REG_SAVE_FORMAT(int _) implements int {
  static const REG_STANDARD_FORMAT = 1;
  static const REG_LATEST_FORMAT = 2;
  static const REG_NO_COMPRESSION = 4;
}

/// {@category enum}
extension type const REG_VALUE_TYPE(int _) implements int {
  static const REG_NONE = 0;
  static const REG_SZ = 1;
  static const REG_EXPAND_SZ = 2;
  static const REG_BINARY = 3;
  static const REG_DWORD = 4;
  static const REG_DWORD_LITTLE_ENDIAN = 4;
  static const REG_DWORD_BIG_ENDIAN = 5;
  static const REG_LINK = 6;
  static const REG_MULTI_SZ = 7;
  static const REG_RESOURCE_LIST = 8;
  static const REG_FULL_RESOURCE_DESCRIPTOR = 9;
  static const REG_RESOURCE_REQUIREMENTS_LIST = 10;
  static const REG_QWORD = 11;
  static const REG_QWORD_LITTLE_ENDIAN = 11;
}

/// {@category enum}
extension type const RGN_COMBINE_MODE(int _) implements int {
  static const RGN_AND = 1;
  static const RGN_OR = 2;
  static const RGN_XOR = 3;
  static const RGN_DIFF = 4;
  static const RGN_COPY = 5;
  static const RGN_MIN = 1;
  static const RGN_MAX = 5;
}

/// {@category enum}
extension type const RID_DEVICE_INFO_TYPE(int _) implements int {
  static const RIM_TYPEMOUSE = 0;
  static const RIM_TYPEKEYBOARD = 1;
  static const RIM_TYPEHID = 2;
}

/// {@category enum}
extension type const ROP_CODE(int _) implements int {
  static const BLACKNESS = 66;
  static const NOTSRCERASE = 1114278;
  static const NOTSRCCOPY = 3342344;
  static const SRCERASE = 4457256;
  static const DSTINVERT = 5570569;
  static const PATINVERT = 5898313;
  static const SRCINVERT = 6684742;
  static const SRCAND = 8913094;
  static const MERGEPAINT = 12255782;
  static const MERGECOPY = 12583114;
  static const SRCCOPY = 13369376;
  static const SRCPAINT = 15597702;
  static const PATCOPY = 15728673;
  static const PATPAINT = 16452105;
  static const WHITENESS = 16711778;
  static const CAPTUREBLT = 1073741824;
  static const NOMIRRORBITMAP = 2147483648;
}

/// {@category enum}
extension type const ROT_FLAGS(int _) implements int {
  static const ROTFLAGS_REGISTRATIONKEEPSALIVE = 1;
  static const ROTFLAGS_ALLOWANYCLIENT = 2;
}

/// {@category enum}
extension type const RPC_C_AUTHN_LEVEL(int _) implements int {
  static const RPC_C_AUTHN_LEVEL_DEFAULT = 0;
  static const RPC_C_AUTHN_LEVEL_NONE = 1;
  static const RPC_C_AUTHN_LEVEL_CONNECT = 2;
  static const RPC_C_AUTHN_LEVEL_CALL = 3;
  static const RPC_C_AUTHN_LEVEL_PKT = 4;
  static const RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = 5;
  static const RPC_C_AUTHN_LEVEL_PKT_PRIVACY = 6;
}

/// {@category enum}
extension type const RPC_C_IMP_LEVEL(int _) implements int {
  static const RPC_C_IMP_LEVEL_DEFAULT = 0;
  static const RPC_C_IMP_LEVEL_ANONYMOUS = 1;
  static const RPC_C_IMP_LEVEL_IDENTIFY = 2;
  static const RPC_C_IMP_LEVEL_IMPERSONATE = 3;
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
  static const RowOrColumnMajor_RowMajor = 0;

  /// Data in the table should be read column by column.
  static const RowOrColumnMajor_ColumnMajor = 1;

  /// The best way to present the data is indeterminate.
  static const RowOrColumnMajor_Indeterminate = 2;
}

/// {@category enum}
extension type const SCARD_SCOPE(int _) implements int {
  static const SCARD_SCOPE_USER = 0;
  static const SCARD_SCOPE_SYSTEM = 2;
}

/// {@category enum}
extension type const SCARD_STATE(int _) implements int {
  static const SCARD_STATE_UNAWARE = 0;
  static const SCARD_STATE_IGNORE = 1;
  static const SCARD_STATE_UNAVAILABLE = 8;
  static const SCARD_STATE_EMPTY = 16;
  static const SCARD_STATE_PRESENT = 32;
  static const SCARD_STATE_ATRMATCH = 64;
  static const SCARD_STATE_EXCLUSIVE = 128;
  static const SCARD_STATE_INUSE = 256;
  static const SCARD_STATE_MUTE = 512;
  static const SCARD_STATE_CHANGED = 2;
  static const SCARD_STATE_UNKNOWN = 4;
}

/// {@category enum}
extension type const SCROLLBAR_COMMAND(int _) implements int {
  static const SB_LINEUP = 0;
  static const SB_LINELEFT = 0;
  static const SB_LINEDOWN = 1;
  static const SB_LINERIGHT = 1;
  static const SB_PAGEUP = 2;
  static const SB_PAGELEFT = 2;
  static const SB_PAGEDOWN = 3;
  static const SB_PAGERIGHT = 3;
  static const SB_THUMBPOSITION = 4;
  static const SB_THUMBTRACK = 5;
  static const SB_TOP = 6;
  static const SB_LEFT = 6;
  static const SB_RIGHT = 7;
  static const SB_BOTTOM = 7;
  static const SB_ENDSCROLL = 8;
}

/// {@category enum}
extension type const SCROLLBAR_CONSTANTS(int _) implements int {
  static const SB_CTL = 2;
  static const SB_HORZ = 0;
  static const SB_VERT = 1;
  static const SB_BOTH = 3;
}

/// {@category enum}
extension type const SCROLLINFO_MASK(int _) implements int {
  static const SIF_ALL = 23;
  static const SIF_DISABLENOSCROLL = 8;
  static const SIF_PAGE = 2;
  static const SIF_POS = 4;
  static const SIF_RANGE = 1;
  static const SIF_TRACKPOS = 16;
}

/// {@category enum}
extension type const SCROLL_WINDOW_FLAGS(int _) implements int {
  static const SW_SCROLLCHILDREN = 1;
  static const SW_INVALIDATE = 2;
  static const SW_ERASE = 4;
  static const SW_SMOOTHSCROLL = 16;
}

/// {@category enum}
extension type const SC_ACTION_TYPE(int _) implements int {
  static const SC_ACTION_NONE = 0;
  static const SC_ACTION_RESTART = 1;
  static const SC_ACTION_REBOOT = 2;
  static const SC_ACTION_RUN_COMMAND = 3;
  static const SC_ACTION_OWN_RESTART = 4;
}

/// {@category enum}
extension type const SC_ENUM_TYPE(int _) implements int {
  static const SC_ENUM_PROCESS_INFO = 0;
}

/// {@category enum}
extension type const SC_STATUS_TYPE(int _) implements int {
  static const SC_STATUS_PROCESS_INFO = 0;
}

/// {@category enum}
extension type const SDP_SPECIFICTYPE(int _) implements int {
  static const SDP_ST_NONE = 0;
  static const SDP_ST_UINT8 = 16;
  static const SDP_ST_UINT16 = 272;
  static const SDP_ST_UINT32 = 528;
  static const SDP_ST_UINT64 = 784;
  static const SDP_ST_UINT128 = 1040;
  static const SDP_ST_INT8 = 32;
  static const SDP_ST_INT16 = 288;
  static const SDP_ST_INT32 = 544;
  static const SDP_ST_INT64 = 800;
  static const SDP_ST_INT128 = 1056;
  static const SDP_ST_UUID16 = 304;
  static const SDP_ST_UUID32 = 544;
  static const SDP_ST_UUID128 = 1072;
}

/// {@category enum}
extension type const SDP_TYPE(int _) implements int {
  static const SDP_TYPE_NIL = 0;
  static const SDP_TYPE_UINT = 1;
  static const SDP_TYPE_INT = 2;
  static const SDP_TYPE_UUID = 3;
  static const SDP_TYPE_STRING = 4;
  static const SDP_TYPE_BOOLEAN = 5;
  static const SDP_TYPE_SEQUENCE = 6;
  static const SDP_TYPE_ALTERNATIVE = 7;
  static const SDP_TYPE_URL = 8;
  static const SDP_TYPE_CONTAINER = 32;
}

/// {@category enum}
extension type const SECURITY_DESCRIPTOR_CONTROL(int _) implements int {
  static const SE_OWNER_DEFAULTED = 1;
  static const SE_GROUP_DEFAULTED = 2;
  static const SE_DACL_PRESENT = 4;
  static const SE_DACL_DEFAULTED = 8;
  static const SE_SACL_PRESENT = 16;
  static const SE_SACL_DEFAULTED = 32;
  static const SE_DACL_AUTO_INHERIT_REQ = 256;
  static const SE_SACL_AUTO_INHERIT_REQ = 512;
  static const SE_DACL_AUTO_INHERITED = 1024;
  static const SE_SACL_AUTO_INHERITED = 2048;
  static const SE_DACL_PROTECTED = 4096;
  static const SE_SACL_PROTECTED = 8192;
  static const SE_RM_CONTROL_VALID = 16384;
  static const SE_SELF_RELATIVE = 32768;
}

/// {@category enum}
extension type const SEND_MESSAGE_TIMEOUT_FLAGS(int _) implements int {
  static const SMTO_ABORTIFHUNG = 2;
  static const SMTO_BLOCK = 1;
  static const SMTO_NORMAL = 0;
  static const SMTO_NOTIMEOUTIFNOTHUNG = 8;
  static const SMTO_ERRORONEXIT = 32;
}

/// {@category enum}
extension type const SEND_RECV_FLAGS(int _) implements int {
  static const MSG_OOB = 1;
  static const MSG_PEEK = 2;
  static const MSG_DONTROUTE = 4;
  static const MSG_WAITALL = 8;
  static const MSG_PUSH_IMMEDIATE = 32;
}

/// {@category enum}
extension type const SERVICE_CONFIG(int _) implements int {
  static const SERVICE_CONFIG_DELAYED_AUTO_START_INFO = 3;
  static const SERVICE_CONFIG_DESCRIPTION = 1;
  static const SERVICE_CONFIG_FAILURE_ACTIONS = 2;
  static const SERVICE_CONFIG_FAILURE_ACTIONS_FLAG = 4;
  static const SERVICE_CONFIG_PREFERRED_NODE = 9;
  static const SERVICE_CONFIG_PRESHUTDOWN_INFO = 7;
  static const SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO = 6;
  static const SERVICE_CONFIG_SERVICE_SID_INFO = 5;
  static const SERVICE_CONFIG_TRIGGER_INFO = 8;
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
  static const ServiceDirectoryPersistentState = 0;

  /// Reserved.
  static const ServiceDirectoryTypeMax = 1;
}

/// {@category enum}
extension type const SERVICE_ERROR(int _) implements int {
  static const SERVICE_ERROR_CRITICAL = 3;
  static const SERVICE_ERROR_IGNORE = 0;
  static const SERVICE_ERROR_NORMAL = 1;
  static const SERVICE_ERROR_SEVERE = 2;
}

/// {@category enum}
extension type const SERVICE_NOTIFY(int _) implements int {
  static const SERVICE_NOTIFY_CREATED = 128;
  static const SERVICE_NOTIFY_CONTINUE_PENDING = 16;
  static const SERVICE_NOTIFY_DELETE_PENDING = 512;
  static const SERVICE_NOTIFY_DELETED = 256;
  static const SERVICE_NOTIFY_PAUSE_PENDING = 32;
  static const SERVICE_NOTIFY_PAUSED = 64;
  static const SERVICE_NOTIFY_RUNNING = 8;
  static const SERVICE_NOTIFY_START_PENDING = 2;
  static const SERVICE_NOTIFY_STOP_PENDING = 4;
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
  static const ServiceRegistryStateParameters = 0;

  /// Mutable, persistent service state.
  static const ServiceRegistryStatePersistent = 1;

  /// Reserved.
  static const MaxServiceRegistryStateType = 2;
}

/// {@category enum}
extension type const SERVICE_RUNS_IN_PROCESS(int _) implements int {
  static const SERVICE_RUNS_IN_NON_SYSTEM_OR_NOT_RUNNING =
      SERVICE_RUNS_IN_PROCESS(0);
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
  static const ServiceSharedRegistryPersistentState =
      SERVICE_SHARED_REGISTRY_STATE_TYPE(0);
}

/// {@category enum}
extension type const SERVICE_START_TYPE(int _) implements int {
  static const SERVICE_AUTO_START = 2;
  static const SERVICE_BOOT_START = 0;
  static const SERVICE_DEMAND_START = 3;
  static const SERVICE_DISABLED = 4;
  static const SERVICE_SYSTEM_START = 1;
}

/// {@category enum}
extension type const SERVICE_STATUS_CURRENT_STATE(int _) implements int {
  static const SERVICE_CONTINUE_PENDING = 5;
  static const SERVICE_PAUSE_PENDING = 6;
  static const SERVICE_PAUSED = 7;
  static const SERVICE_RUNNING = 4;
  static const SERVICE_START_PENDING = 2;
  static const SERVICE_STOP_PENDING = 3;
  static const SERVICE_STOPPED = 1;
}

/// {@category enum}
extension type const SERVICE_TRIGGER_ACTION(int _) implements int {
  static const SERVICE_TRIGGER_ACTION_SERVICE_START = 1;
  static const SERVICE_TRIGGER_ACTION_SERVICE_STOP = 2;
}

/// {@category enum}
extension type const SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(int _)
    implements int {
  static const SERVICE_TRIGGER_DATA_TYPE_BINARY =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(1);
  static const SERVICE_TRIGGER_DATA_TYPE_STRING =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(2);
  static const SERVICE_TRIGGER_DATA_TYPE_LEVEL =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(3);
  static const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ANY =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(4);
  static const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ALL =
      SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(5);
}

/// {@category enum}
extension type const SERVICE_TRIGGER_TYPE(int _) implements int {
  static const SERVICE_TRIGGER_TYPE_CUSTOM = 20;
  static const SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL =
      SERVICE_TRIGGER_TYPE(1);
  static const SERVICE_TRIGGER_TYPE_DOMAIN_JOIN = 3;
  static const SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT =
      SERVICE_TRIGGER_TYPE(4);
  static const SERVICE_TRIGGER_TYPE_GROUP_POLICY = 5;
  static const SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY =
      SERVICE_TRIGGER_TYPE(2);
  static const SERVICE_TRIGGER_TYPE_NETWORK_ENDPOINT = 6;
}

/// {@category enum}
extension type const SETUP_DI_GET_CLASS_DEVS_FLAGS(int _) implements int {
  static const DIGCF_DEFAULT = 1;
  static const DIGCF_PRESENT = 2;
  static const DIGCF_ALLCLASSES = 4;
  static const DIGCF_PROFILE = 8;
  static const DIGCF_DEVICEINTERFACE = 16;
  static const DIGCF_INTERFACEDEVICE = 16;
}

/// {@category enum}
extension type const SETUP_DI_PROPERTY_CHANGE_SCOPE(int _) implements int {
  static const DICS_FLAG_GLOBAL = 1;
  static const DICS_FLAG_CONFIGSPECIFIC = 2;
  static const DICS_FLAG_CONFIGGENERAL = 4;
}

/// {@category enum}
extension type const SETUP_DI_REGISTRY_PROPERTY(int _) implements int {
  static const SPDRP_DEVICEDESC = 0;
  static const SPDRP_HARDWAREID = 1;
  static const SPDRP_COMPATIBLEIDS = 2;
  static const SPDRP_UNUSED0 = 3;
  static const SPDRP_SERVICE = 4;
  static const SPDRP_UNUSED1 = 5;
  static const SPDRP_UNUSED2 = 6;
  static const SPDRP_CLASS = 7;
  static const SPDRP_CLASSGUID = 8;
  static const SPDRP_DRIVER = 9;
  static const SPDRP_CONFIGFLAGS = 10;
  static const SPDRP_MFG = 11;
  static const SPDRP_FRIENDLYNAME = 12;
  static const SPDRP_LOCATION_INFORMATION = 13;
  static const SPDRP_PHYSICAL_DEVICE_OBJECT_NAME =
      SETUP_DI_REGISTRY_PROPERTY(14);
  static const SPDRP_CAPABILITIES = 15;
  static const SPDRP_UI_NUMBER = 16;
  static const SPDRP_UPPERFILTERS = 17;
  static const SPDRP_LOWERFILTERS = 18;
  static const SPDRP_BUSTYPEGUID = 19;
  static const SPDRP_LEGACYBUSTYPE = 20;
  static const SPDRP_BUSNUMBER = 21;
  static const SPDRP_ENUMERATOR_NAME = 22;
  static const SPDRP_SECURITY = 23;
  static const SPDRP_SECURITY_SDS = 24;
  static const SPDRP_DEVTYPE = 25;
  static const SPDRP_EXCLUSIVE = 26;
  static const SPDRP_CHARACTERISTICS = 27;
  static const SPDRP_ADDRESS = 28;
  static const SPDRP_UI_NUMBER_DESC_FORMAT = 29;
  static const SPDRP_DEVICE_POWER_DATA = 30;
  static const SPDRP_REMOVAL_POLICY = 31;
  static const SPDRP_REMOVAL_POLICY_HW_DEFAULT = 32;
  static const SPDRP_REMOVAL_POLICY_OVERRIDE = 33;
  static const SPDRP_INSTALL_STATE = 34;
  static const SPDRP_LOCATION_PATHS = 35;
  static const SPDRP_BASE_CONTAINERID = 36;
  static const SPDRP_MAXIMUM_PROPERTY = 37;
}

/// {@category enum}
extension type const SET_DISPLAY_CONFIG_FLAGS(int _) implements int {
  static const SDC_USE_DATABASE_CURRENT = 15;
  static const SDC_TOPOLOGY_INTERNAL = 1;
  static const SDC_TOPOLOGY_CLONE = 2;
  static const SDC_TOPOLOGY_EXTEND = 4;
  static const SDC_TOPOLOGY_EXTERNAL = 8;
  static const SDC_TOPOLOGY_SUPPLIED = 16;
  static const SDC_USE_SUPPLIED_DISPLAY_CONFIG = 32;
  static const SDC_VALIDATE = 64;
  static const SDC_APPLY = 128;
  static const SDC_NO_OPTIMIZATION = 256;
  static const SDC_SAVE_TO_DATABASE = 512;
  static const SDC_ALLOW_CHANGES = 1024;
  static const SDC_PATH_PERSIST_IF_REQUIRED = 2048;
  static const SDC_FORCE_MODE_ENUMERATION = 4096;
  static const SDC_ALLOW_PATH_ORDER_CHANGES = 8192;
  static const SDC_VIRTUAL_MODE_AWARE = 32768;
  static const SDC_VIRTUAL_REFRESH_RATE_AWARE =
      SET_DISPLAY_CONFIG_FLAGS(131072);
}

/// {@category enum}
extension type const SET_FILE_POINTER_MOVE_METHOD(int _) implements int {
  static const FILE_BEGIN = 0;
  static const FILE_CURRENT = 1;
  static const FILE_END = 2;
}

/// {@category enum}
extension type const SET_THEME_APP_PROPERTIES_FLAGS(int _) implements int {
  static const ALLOW_NONCLIENT = 1;
  static const ALLOW_CONTROLS = 2;
  static const ALLOW_WEBCONTENT = 4;
  static const VALIDBITS = 7;
}

/// {@category enum}
extension type const SET_WINDOW_POS_FLAGS(int _) implements int {
  static const SWP_ASYNCWINDOWPOS = 16384;
  static const SWP_DEFERERASE = 8192;
  static const SWP_DRAWFRAME = 32;
  static const SWP_FRAMECHANGED = 32;
  static const SWP_HIDEWINDOW = 128;
  static const SWP_NOACTIVATE = 16;
  static const SWP_NOCOPYBITS = 256;
  static const SWP_NOMOVE = 2;
  static const SWP_NOOWNERZORDER = 512;
  static const SWP_NOREDRAW = 8;
  static const SWP_NOREPOSITION = 512;
  static const SWP_NOSENDCHANGING = 1024;
  static const SWP_NOSIZE = 1;
  static const SWP_NOZORDER = 4;
  static const SWP_SHOWWINDOW = 64;
}

/// {@category enum}
extension type const SFGAO_FLAGS(int _) implements int {
  static const SFGAO_CANCOPY = 1;
  static const SFGAO_CANMOVE = 2;
  static const SFGAO_CANLINK = 4;
  static const SFGAO_STORAGE = 8;
  static const SFGAO_CANRENAME = 16;
  static const SFGAO_CANDELETE = 32;
  static const SFGAO_HASPROPSHEET = 64;
  static const SFGAO_DROPTARGET = 256;
  static const SFGAO_CAPABILITYMASK = 375;
  static const SFGAO_PLACEHOLDER = 2048;
  static const SFGAO_SYSTEM = 4096;
  static const SFGAO_ENCRYPTED = 8192;
  static const SFGAO_ISSLOW = 16384;
  static const SFGAO_GHOSTED = 32768;
  static const SFGAO_LINK = 65536;
  static const SFGAO_SHARE = 131072;
  static const SFGAO_READONLY = 262144;
  static const SFGAO_HIDDEN = 524288;
  static const SFGAO_DISPLAYATTRMASK = 1032192;
  static const SFGAO_FILESYSANCESTOR = 268435456;
  static const SFGAO_FOLDER = 536870912;
  static const SFGAO_FILESYSTEM = 1073741824;
  static const SFGAO_HASSUBFOLDER = 2147483648;
  static const SFGAO_CONTENTSMASK = 2147483648;
  static const SFGAO_VALIDATE = 16777216;
  static const SFGAO_REMOVABLE = 33554432;
  static const SFGAO_COMPRESSED = 67108864;
  static const SFGAO_BROWSABLE = 134217728;
  static const SFGAO_NONENUMERATED = 1048576;
  static const SFGAO_NEWCONTENT = 2097152;
  static const SFGAO_CANMONIKER = 4194304;
  static const SFGAO_HASSTORAGE = 4194304;
  static const SFGAO_STREAM = 4194304;
  static const SFGAO_STORAGEANCESTOR = 8388608;
  static const SFGAO_STORAGECAPMASK = 1891958792;
  static const SFGAO_PKEYSFGAOMASK = 2164539392;
}

/// {@category enum}
extension type const SHGDNF(int _) implements int {
  static const SHGDN_NORMAL = 0;
  static const SHGDN_INFOLDER = 1;
  static const SHGDN_FOREDITING = 4096;
  static const SHGDN_FORADDRESSBAR = 16384;
  static const SHGDN_FORPARSING = 32768;
}

/// {@category enum}
extension type const SHGFI_FLAGS(int _) implements int {
  static const SHGFI_ADDOVERLAYS = 32;
  static const SHGFI_ATTR_SPECIFIED = 131072;
  static const SHGFI_ATTRIBUTES = 2048;
  static const SHGFI_DISPLAYNAME = 512;
  static const SHGFI_EXETYPE = 8192;
  static const SHGFI_ICON = 256;
  static const SHGFI_ICONLOCATION = 4096;
  static const SHGFI_LARGEICON = 0;
  static const SHGFI_LINKOVERLAY = 32768;
  static const SHGFI_OPENICON = 2;
  static const SHGFI_OVERLAYINDEX = 64;
  static const SHGFI_PIDL = 8;
  static const SHGFI_SELECTED = 65536;
  static const SHGFI_SHELLICONSIZE = 4;
  static const SHGFI_SMALLICON = 1;
  static const SHGFI_SYSICONINDEX = 16384;
  static const SHGFI_TYPENAME = 1024;
  static const SHGFI_USEFILEATTRIBUTES = 16;
}

/// {@category enum}
extension type const SHOW_WINDOW_CMD(int _) implements int {
  static const SW_HIDE = 0;
  static const SW_SHOWNORMAL = 1;
  static const SW_NORMAL = 1;
  static const SW_SHOWMINIMIZED = 2;
  static const SW_SHOWMAXIMIZED = 3;
  static const SW_MAXIMIZE = 3;
  static const SW_SHOWNOACTIVATE = 4;
  static const SW_SHOW = 5;
  static const SW_MINIMIZE = 6;
  static const SW_SHOWMINNOACTIVE = 7;
  static const SW_SHOWNA = 8;
  static const SW_RESTORE = 9;
  static const SW_SHOWDEFAULT = 10;
  static const SW_FORCEMINIMIZE = 11;
  static const SW_MAX = 11;
}

/// {@category enum}
extension type const SHUTDOWN_FLAGS(int _) implements int {
  static const SHUTDOWN_FORCE_OTHERS = 1;
  static const SHUTDOWN_FORCE_SELF = 2;
  static const SHUTDOWN_RESTART = 4;
  static const SHUTDOWN_POWEROFF = 8;
  static const SHUTDOWN_NOREBOOT = 16;
  static const SHUTDOWN_GRACE_OVERRIDE = 32;
  static const SHUTDOWN_INSTALL_UPDATES = 64;
  static const SHUTDOWN_RESTARTAPPS = 128;
  static const SHUTDOWN_SKIP_SVC_PRESHUTDOWN = 256;
  static const SHUTDOWN_HYBRID = 512;
  static const SHUTDOWN_RESTART_BOOTOPTIONS = 1024;
  static const SHUTDOWN_SOFT_REBOOT = 2048;
  static const SHUTDOWN_MOBILE_UI = 4096;
  static const SHUTDOWN_ARSO = 8192;
  static const SHUTDOWN_CHECK_SAFE_FOR_SERVER = 16384;
  static const SHUTDOWN_VAIL_CONTAINER = 32768;
  static const SHUTDOWN_SYSTEM_INITIATED = 65536;
}

/// {@category enum}
extension type const SHUTDOWN_REASON(int _) implements int {
  static const SHTDN_REASON_NONE = 0;
  static const SHTDN_REASON_FLAG_COMMENT_REQUIRED = 16777216;
  static const SHTDN_REASON_FLAG_DIRTY_PROBLEM_ID_REQUIRED =
      SHUTDOWN_REASON(33554432);
  static const SHTDN_REASON_FLAG_CLEAN_UI = 67108864;
  static const SHTDN_REASON_FLAG_DIRTY_UI = 134217728;
  static const SHTDN_REASON_FLAG_MOBILE_UI_RESERVED =
      SHUTDOWN_REASON(268435456);
  static const SHTDN_REASON_FLAG_USER_DEFINED = 1073741824;
  static const SHTDN_REASON_FLAG_PLANNED = 2147483648;
  static const SHTDN_REASON_MAJOR_OTHER = 0;
  static const SHTDN_REASON_MAJOR_NONE = 0;
  static const SHTDN_REASON_MAJOR_HARDWARE = 65536;
  static const SHTDN_REASON_MAJOR_OPERATINGSYSTEM = 131072;
  static const SHTDN_REASON_MAJOR_SOFTWARE = 196608;
  static const SHTDN_REASON_MAJOR_APPLICATION = 262144;
  static const SHTDN_REASON_MAJOR_SYSTEM = 327680;
  static const SHTDN_REASON_MAJOR_POWER = 393216;
  static const SHTDN_REASON_MAJOR_LEGACY_API = 458752;
  static const SHTDN_REASON_MINOR_OTHER = 0;
  static const SHTDN_REASON_MINOR_NONE = 255;
  static const SHTDN_REASON_MINOR_MAINTENANCE = 1;
  static const SHTDN_REASON_MINOR_INSTALLATION = 2;
  static const SHTDN_REASON_MINOR_UPGRADE = 3;
  static const SHTDN_REASON_MINOR_RECONFIG = 4;
  static const SHTDN_REASON_MINOR_HUNG = 5;
  static const SHTDN_REASON_MINOR_UNSTABLE = 6;
  static const SHTDN_REASON_MINOR_DISK = 7;
  static const SHTDN_REASON_MINOR_PROCESSOR = 8;
  static const SHTDN_REASON_MINOR_NETWORKCARD = 9;
  static const SHTDN_REASON_MINOR_POWER_SUPPLY = 10;
  static const SHTDN_REASON_MINOR_CORDUNPLUGGED = 11;
  static const SHTDN_REASON_MINOR_ENVIRONMENT = 12;
  static const SHTDN_REASON_MINOR_HARDWARE_DRIVER = 13;
  static const SHTDN_REASON_MINOR_OTHERDRIVER = 14;
  static const SHTDN_REASON_MINOR_BLUESCREEN = 15;
  static const SHTDN_REASON_MINOR_SERVICEPACK = 16;
  static const SHTDN_REASON_MINOR_HOTFIX = 17;
  static const SHTDN_REASON_MINOR_SECURITYFIX = 18;
  static const SHTDN_REASON_MINOR_SECURITY = 19;
  static const SHTDN_REASON_MINOR_NETWORK_CONNECTIVITY = 20;
  static const SHTDN_REASON_MINOR_WMI = 21;
  static const SHTDN_REASON_MINOR_SERVICEPACK_UNINSTALL = 22;
  static const SHTDN_REASON_MINOR_HOTFIX_UNINSTALL = 23;
  static const SHTDN_REASON_MINOR_SECURITYFIX_UNINSTALL = 24;
  static const SHTDN_REASON_MINOR_MMC = 25;
  static const SHTDN_REASON_MINOR_SYSTEMRESTORE = 26;
  static const SHTDN_REASON_MINOR_TERMSRV = 32;
  static const SHTDN_REASON_MINOR_DC_PROMOTION = 33;
  static const SHTDN_REASON_MINOR_DC_DEMOTION = 34;
  static const SHTDN_REASON_UNKNOWN = 255;
  static const SHTDN_REASON_LEGACY_API = 2147942400;
  static const SHTDN_REASON_VALID_BIT_MASK = 3238002687;
}

/// {@category enum}
extension type const SIATTRIBFLAGS(int _) implements int {
  static const SIATTRIBFLAGS_AND = 1;
  static const SIATTRIBFLAGS_OR = 2;
  static const SIATTRIBFLAGS_APPCOMPAT = 3;
  static const SIATTRIBFLAGS_MASK = 3;
  static const SIATTRIBFLAGS_ALLITEMS = 16384;
}

/// {@category enum}
extension type const SIIGBF(int _) implements int {
  static const SIIGBF_RESIZETOFIT = 0;
  static const SIIGBF_BIGGERSIZEOK = 1;
  static const SIIGBF_MEMORYONLY = 2;
  static const SIIGBF_ICONONLY = 4;
  static const SIIGBF_THUMBNAILONLY = 8;
  static const SIIGBF_INCACHEONLY = 16;
  static const SIIGBF_CROPTOSQUARE = 32;
  static const SIIGBF_WIDETHUMBNAILS = 64;
  static const SIIGBF_ICONBACKGROUND = 128;
  static const SIIGBF_SCALEUP = 256;
}

/// {@category enum}
extension type const SND_FLAGS(int _) implements int {
  static const SND_APPLICATION = 128;
  static const SND_ALIAS = 65536;
  static const SND_ALIAS_ID = 1114112;
  static const SND_FILENAME = 131072;
  static const SND_RESOURCE = 262148;
  static const SND_ASYNC = 1;
  static const SND_NODEFAULT = 2;
  static const SND_LOOP = 8;
  static const SND_MEMORY = 4;
  static const SND_NOSTOP = 16;
  static const SND_NOWAIT = 8192;
  static const SND_PURGE = 64;
  static const SND_SENTRY = 524288;
  static const SND_SYNC = 0;
  static const SND_SYSTEM = 2097152;
}

/// {@category enum}
extension type const SPEVENTENUM(int _) implements int {
  static const SPEI_UNDEFINED = 0;
  static const SPEI_START_INPUT_STREAM = 1;
  static const SPEI_END_INPUT_STREAM = 2;
  static const SPEI_VOICE_CHANGE = 3;
  static const SPEI_TTS_BOOKMARK = 4;
  static const SPEI_WORD_BOUNDARY = 5;
  static const SPEI_PHONEME = 6;
  static const SPEI_SENTENCE_BOUNDARY = 7;
  static const SPEI_VISEME = 8;
  static const SPEI_TTS_AUDIO_LEVEL = 9;
  static const SPEI_TTS_PRIVATE = 15;
  static const SPEI_MIN_TTS = 1;
  static const SPEI_MAX_TTS = 15;
  static const SPEI_END_SR_STREAM = 34;
  static const SPEI_SOUND_START = 35;
  static const SPEI_SOUND_END = 36;
  static const SPEI_PHRASE_START = 37;
  static const SPEI_RECOGNITION = 38;
  static const SPEI_HYPOTHESIS = 39;
  static const SPEI_SR_BOOKMARK = 40;
  static const SPEI_PROPERTY_NUM_CHANGE = 41;
  static const SPEI_PROPERTY_STRING_CHANGE = 42;
  static const SPEI_FALSE_RECOGNITION = 43;
  static const SPEI_INTERFERENCE = 44;
  static const SPEI_REQUEST_UI = 45;
  static const SPEI_RECO_STATE_CHANGE = 46;
  static const SPEI_ADAPTATION = 47;
  static const SPEI_START_SR_STREAM = 48;
  static const SPEI_RECO_OTHER_CONTEXT = 49;
  static const SPEI_SR_AUDIO_LEVEL = 50;
  static const SPEI_SR_RETAINEDAUDIO = 51;
  static const SPEI_SR_PRIVATE = 52;
  static const SPEI_RESERVED4 = 53;
  static const SPEI_RESERVED5 = 54;
  static const SPEI_RESERVED6 = 55;
  static const SPEI_MIN_SR = 34;
  static const SPEI_MAX_SR = 55;
  static const SPEI_RESERVED1 = 30;
  static const SPEI_RESERVED2 = 33;
  static const SPEI_RESERVED3 = 63;
}

/// {@category enum}
extension type const SPVISEMES(int _) implements int {
  static const SP_VISEME_0 = 0;
  static const SP_VISEME_1 = 1;
  static const SP_VISEME_2 = 2;
  static const SP_VISEME_3 = 3;
  static const SP_VISEME_4 = 4;
  static const SP_VISEME_5 = 5;
  static const SP_VISEME_6 = 6;
  static const SP_VISEME_7 = 7;
  static const SP_VISEME_8 = 8;
  static const SP_VISEME_9 = 9;
  static const SP_VISEME_10 = 10;
  static const SP_VISEME_11 = 11;
  static const SP_VISEME_12 = 12;
  static const SP_VISEME_13 = 13;
  static const SP_VISEME_14 = 14;
  static const SP_VISEME_15 = 15;
  static const SP_VISEME_16 = 16;
  static const SP_VISEME_17 = 17;
  static const SP_VISEME_18 = 18;
  static const SP_VISEME_19 = 19;
  static const SP_VISEME_20 = 20;
  static const SP_VISEME_21 = 21;
}

/// {@category enum}
extension type const SPVPRIORITY(int _) implements int {
  static const SPVPRI_NORMAL = 0;
  static const SPVPRI_ALERT = 1;
  static const SPVPRI_OVER = 2;
}

/// {@category enum}
extension type const STARTUPINFOW_FLAGS(int _) implements int {
  static const STARTF_FORCEONFEEDBACK = 64;
  static const STARTF_FORCEOFFFEEDBACK = 128;
  static const STARTF_PREVENTPINNING = 8192;
  static const STARTF_RUNFULLSCREEN = 32;
  static const STARTF_TITLEISAPPID = 4096;
  static const STARTF_TITLEISLINKNAME = 2048;
  static const STARTF_UNTRUSTEDSOURCE = 32768;
  static const STARTF_USECOUNTCHARS = 8;
  static const STARTF_USEFILLATTRIBUTE = 16;
  static const STARTF_USEHOTKEY = 512;
  static const STARTF_USEPOSITION = 4;
  static const STARTF_USESHOWWINDOW = 1;
  static const STARTF_USESIZE = 2;
  static const STARTF_USESTDHANDLES = 256;
}

/// {@category enum}
extension type const STATIC_STYLES(int _) implements int {
  static const SS_LEFT = 0;
  static const SS_CENTER = 1;
  static const SS_RIGHT = 2;
  static const SS_ICON = 3;
  static const SS_BLACKRECT = 4;
  static const SS_GRAYRECT = 5;
  static const SS_WHITERECT = 6;
  static const SS_BLACKFRAME = 7;
  static const SS_GRAYFRAME = 8;
  static const SS_WHITEFRAME = 9;
  static const SS_USERITEM = 10;
  static const SS_SIMPLE = 11;
  static const SS_LEFTNOWORDWRAP = 12;
  static const SS_OWNERDRAW = 13;
  static const SS_BITMAP = 14;
  static const SS_ENHMETAFILE = 15;
  static const SS_ETCHEDHORZ = 16;
  static const SS_ETCHEDVERT = 17;
  static const SS_ETCHEDFRAME = 18;
  static const SS_TYPEMASK = 31;
  static const SS_REALSIZECONTROL = 64;
  static const SS_NOPREFIX = 128;
  static const SS_NOTIFY = 256;
  static const SS_CENTERIMAGE = 512;
  static const SS_RIGHTJUST = 1024;
  static const SS_REALSIZEIMAGE = 2048;
  static const SS_SUNKEN = 4096;
  static const SS_EDITCONTROL = 8192;
  static const SS_ENDELLIPSIS = 16384;
  static const SS_PATHELLIPSIS = 32768;
  static const SS_WORDELLIPSIS = 49152;
  static const SS_ELLIPSISMASK = 49152;
}

/// {@category enum}
extension type const STD_HANDLE(int _) implements int {
  static const STD_INPUT_HANDLE = 4294967286;
  static const STD_OUTPUT_HANDLE = 4294967285;
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
  static const FindStreamInfoStandard = 0;

  /// Used to determine valid enumeration values.
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
  static const STREAM_SEEK_SET = 0;

  /// The new seek pointer is an offset relative to the current seek pointer
  /// location.
  static const STREAM_SEEK_CUR = 1;

  /// The new seek pointer is an offset relative to the end of the stream.
  static const STREAM_SEEK_END = 2;
}

/// {@category enum}
extension type const STRETCH_BLT_MODE(int _) implements int {
  static const BLACKONWHITE = 1;
  static const COLORONCOLOR = 3;
  static const HALFTONE = 4;
  static const STRETCH_ANDSCANS = 1;
  static const STRETCH_DELETESCANS = 3;
  static const STRETCH_HALFTONE = 4;
  static const STRETCH_ORSCANS = 2;
  static const WHITEONBLACK = 2;
}

/// {@category enum}
extension type const SYMBOL_INFO_FLAGS(int _) implements int {
  static const SYMFLAG_CLR_TOKEN = 262144;
  static const SYMFLAG_CONSTANT = 256;
  static const SYMFLAG_EXPORT = 512;
  static const SYMFLAG_FORWARDER = 1024;
  static const SYMFLAG_FRAMEREL = 32;
  static const SYMFLAG_FUNCTION = 2048;
  static const SYMFLAG_ILREL = 65536;
  static const SYMFLAG_LOCAL = 128;
  static const SYMFLAG_METADATA = 131072;
  static const SYMFLAG_PARAMETER = 64;
  static const SYMFLAG_REGISTER = 8;
  static const SYMFLAG_REGREL = 16;
  static const SYMFLAG_SLOT = 32768;
  static const SYMFLAG_THUNK = 8192;
  static const SYMFLAG_TLSREL = 16384;
  static const SYMFLAG_VALUEPRESENT = 1;
  static const SYMFLAG_VIRTUAL = 4096;
}

/// {@category enum}
extension type const SYM_LOAD_FLAGS(int _) implements int {
  static const SLMFLAG_NONE = 0;
  static const SLMFLAG_VIRTUAL = 1;
  static const SLMFLAG_ALT_INDEX = 2;
  static const SLMFLAG_NO_SYMBOLS = 4;
}

/// {@category enum}
extension type const SYNCHRONIZATION_ACCESS_RIGHTS(int _) implements int {
  static const EVENT_ALL_ACCESS = 2031619;
  static const EVENT_MODIFY_STATE = 2;
  static const MUTEX_ALL_ACCESS = 2031617;
  static const MUTEX_MODIFY_STATE = 1;
  static const SEMAPHORE_ALL_ACCESS = 2031619;
  static const SEMAPHORE_MODIFY_STATE = 2;
  static const TIMER_ALL_ACCESS = 2031619;
  static const TIMER_MODIFY_STATE = 2;
  static const TIMER_QUERY_STATE = 1;
  static const SYNCHRONIZATION_DELETE = 65536;
  static const SYNCHRONIZATION_READ_CONTROL =
      SYNCHRONIZATION_ACCESS_RIGHTS(131072);
  static const SYNCHRONIZATION_WRITE_DAC =
      SYNCHRONIZATION_ACCESS_RIGHTS(262144);
  static const SYNCHRONIZATION_WRITE_OWNER =
      SYNCHRONIZATION_ACCESS_RIGHTS(524288);
  static const SYNCHRONIZATION_SYNCHRONIZE =
      SYNCHRONIZATION_ACCESS_RIGHTS(1048576);
}

/// {@category enum}
extension type const SYSTEM_CURSOR_ID(int _) implements int {
  static const OCR_APPSTARTING = 32650;
  static const OCR_NORMAL = 32512;
  static const OCR_CROSS = 32515;
  static const OCR_HAND = 32649;
  static const OCR_HELP = 32651;
  static const OCR_IBEAM = 32513;
  static const OCR_NO = 32648;
  static const OCR_SIZEALL = 32646;
  static const OCR_SIZENESW = 32643;
  static const OCR_SIZENS = 32645;
  static const OCR_SIZENWSE = 32642;
  static const OCR_SIZEWE = 32644;
  static const OCR_UP = 32516;
  static const OCR_WAIT = 32514;
}

/// {@category enum}
extension type const SYSTEM_METRICS_INDEX(int _) implements int {
  static const SM_ARRANGE = 56;
  static const SM_CLEANBOOT = 67;
  static const SM_CMONITORS = 80;
  static const SM_CMOUSEBUTTONS = 43;
  static const SM_CONVERTIBLESLATEMODE = 8195;
  static const SM_CXBORDER = 5;
  static const SM_CXCURSOR = 13;
  static const SM_CXDLGFRAME = 7;
  static const SM_CXDOUBLECLK = 36;
  static const SM_CXDRAG = 68;
  static const SM_CXEDGE = 45;
  static const SM_CXFIXEDFRAME = 7;
  static const SM_CXFOCUSBORDER = 83;
  static const SM_CXFRAME = 32;
  static const SM_CXFULLSCREEN = 16;
  static const SM_CXHSCROLL = 21;
  static const SM_CXHTHUMB = 10;
  static const SM_CXICON = 11;
  static const SM_CXICONSPACING = 38;
  static const SM_CXMAXIMIZED = 61;
  static const SM_CXMAXTRACK = 59;
  static const SM_CXMENUCHECK = 71;
  static const SM_CXMENUSIZE = 54;
  static const SM_CXMIN = 28;
  static const SM_CXMINIMIZED = 57;
  static const SM_CXMINSPACING = 47;
  static const SM_CXMINTRACK = 34;
  static const SM_CXPADDEDBORDER = 92;
  static const SM_CXSCREEN = 0;
  static const SM_CXSIZE = 30;
  static const SM_CXSIZEFRAME = 32;
  static const SM_CXSMICON = 49;
  static const SM_CXSMSIZE = 52;
  static const SM_CXVIRTUALSCREEN = 78;
  static const SM_CXVSCROLL = 2;
  static const SM_CYBORDER = 6;
  static const SM_CYCAPTION = 4;
  static const SM_CYCURSOR = 14;
  static const SM_CYDLGFRAME = 8;
  static const SM_CYDOUBLECLK = 37;
  static const SM_CYDRAG = 69;
  static const SM_CYEDGE = 46;
  static const SM_CYFIXEDFRAME = 8;
  static const SM_CYFOCUSBORDER = 84;
  static const SM_CYFRAME = 33;
  static const SM_CYFULLSCREEN = 17;
  static const SM_CYHSCROLL = 3;
  static const SM_CYICON = 12;
  static const SM_CYICONSPACING = 39;
  static const SM_CYKANJIWINDOW = 18;
  static const SM_CYMAXIMIZED = 62;
  static const SM_CYMAXTRACK = 60;
  static const SM_CYMENU = 15;
  static const SM_CYMENUCHECK = 72;
  static const SM_CYMENUSIZE = 55;
  static const SM_CYMIN = 29;
  static const SM_CYMINIMIZED = 58;
  static const SM_CYMINSPACING = 48;
  static const SM_CYMINTRACK = 35;
  static const SM_CYSCREEN = 1;
  static const SM_CYSIZE = 31;
  static const SM_CYSIZEFRAME = 33;
  static const SM_CYSMCAPTION = 51;
  static const SM_CYSMICON = 50;
  static const SM_CYSMSIZE = 53;
  static const SM_CYVIRTUALSCREEN = 79;
  static const SM_CYVSCROLL = 20;
  static const SM_CYVTHUMB = 9;
  static const SM_DBCSENABLED = 42;
  static const SM_DEBUG = 22;
  static const SM_DIGITIZER = 94;
  static const SM_IMMENABLED = 82;
  static const SM_MAXIMUMTOUCHES = 95;
  static const SM_MEDIACENTER = 87;
  static const SM_MENUDROPALIGNMENT = 40;
  static const SM_MIDEASTENABLED = 74;
  static const SM_MOUSEPRESENT = 19;
  static const SM_MOUSEHORIZONTALWHEELPRESENT = 91;
  static const SM_MOUSEWHEELPRESENT = 75;
  static const SM_NETWORK = 63;
  static const SM_PENWINDOWS = 41;
  static const SM_REMOTECONTROL = 8193;
  static const SM_REMOTESESSION = 4096;
  static const SM_SAMEDISPLAYFORMAT = 81;
  static const SM_SECURE = 44;
  static const SM_SERVERR2 = 89;
  static const SM_SHOWSOUNDS = 70;
  static const SM_SHUTTINGDOWN = 8192;
  static const SM_SLOWMACHINE = 73;
  static const SM_STARTER = 88;
  static const SM_SWAPBUTTON = 23;
  static const SM_SYSTEMDOCKED = 8196;
  static const SM_TABLETPC = 86;
  static const SM_XVIRTUALSCREEN = 76;
  static const SM_YVIRTUALSCREEN = 77;
}

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_ACTION(int _) implements int {
  static const SPI_GETBEEP = 1;
  static const SPI_SETBEEP = 2;
  static const SPI_GETMOUSE = 3;
  static const SPI_SETMOUSE = 4;
  static const SPI_GETBORDER = 5;
  static const SPI_SETBORDER = 6;
  static const SPI_GETKEYBOARDSPEED = 10;
  static const SPI_SETKEYBOARDSPEED = 11;
  static const SPI_LANGDRIVER = 12;
  static const SPI_ICONHORIZONTALSPACING = 13;
  static const SPI_GETSCREENSAVETIMEOUT = 14;
  static const SPI_SETSCREENSAVETIMEOUT = 15;
  static const SPI_GETSCREENSAVEACTIVE = 16;
  static const SPI_SETSCREENSAVEACTIVE = 17;
  static const SPI_GETGRIDGRANULARITY = 18;
  static const SPI_SETGRIDGRANULARITY = 19;
  static const SPI_SETDESKWALLPAPER = 20;
  static const SPI_SETDESKPATTERN = 21;
  static const SPI_GETKEYBOARDDELAY = 22;
  static const SPI_SETKEYBOARDDELAY = 23;
  static const SPI_ICONVERTICALSPACING = 24;
  static const SPI_GETICONTITLEWRAP = 25;
  static const SPI_SETICONTITLEWRAP = 26;
  static const SPI_GETMENUDROPALIGNMENT = 27;
  static const SPI_SETMENUDROPALIGNMENT = 28;
  static const SPI_SETDOUBLECLKWIDTH = 29;
  static const SPI_SETDOUBLECLKHEIGHT = 30;
  static const SPI_GETICONTITLELOGFONT = 31;
  static const SPI_SETDOUBLECLICKTIME = 32;
  static const SPI_SETMOUSEBUTTONSWAP = 33;
  static const SPI_SETICONTITLELOGFONT = 34;
  static const SPI_GETFASTTASKSWITCH = 35;
  static const SPI_SETFASTTASKSWITCH = 36;
  static const SPI_SETDRAGFULLWINDOWS = 37;
  static const SPI_GETDRAGFULLWINDOWS = 38;
  static const SPI_GETNONCLIENTMETRICS = 41;
  static const SPI_SETNONCLIENTMETRICS = 42;
  static const SPI_GETMINIMIZEDMETRICS = 43;
  static const SPI_SETMINIMIZEDMETRICS = 44;
  static const SPI_GETICONMETRICS = 45;
  static const SPI_SETICONMETRICS = 46;
  static const SPI_SETWORKAREA = 47;
  static const SPI_GETWORKAREA = 48;
  static const SPI_SETPENWINDOWS = 49;
  static const SPI_GETHIGHCONTRAST = 66;
  static const SPI_SETHIGHCONTRAST = 67;
  static const SPI_GETKEYBOARDPREF = 68;
  static const SPI_SETKEYBOARDPREF = 69;
  static const SPI_GETSCREENREADER = 70;
  static const SPI_SETSCREENREADER = 71;
  static const SPI_GETANIMATION = 72;
  static const SPI_SETANIMATION = 73;
  static const SPI_GETFONTSMOOTHING = 74;
  static const SPI_SETFONTSMOOTHING = 75;
  static const SPI_SETDRAGWIDTH = 76;
  static const SPI_SETDRAGHEIGHT = 77;
  static const SPI_SETHANDHELD = 78;
  static const SPI_GETLOWPOWERTIMEOUT = 79;
  static const SPI_GETPOWEROFFTIMEOUT = 80;
  static const SPI_SETLOWPOWERTIMEOUT = 81;
  static const SPI_SETPOWEROFFTIMEOUT = 82;
  static const SPI_GETLOWPOWERACTIVE = 83;
  static const SPI_GETPOWEROFFACTIVE = 84;
  static const SPI_SETLOWPOWERACTIVE = 85;
  static const SPI_SETPOWEROFFACTIVE = 86;
  static const SPI_SETCURSORS = 87;
  static const SPI_SETICONS = 88;
  static const SPI_GETDEFAULTINPUTLANG = 89;
  static const SPI_SETDEFAULTINPUTLANG = 90;
  static const SPI_SETLANGTOGGLE = 91;
  static const SPI_GETWINDOWSEXTENSION = 92;
  static const SPI_SETMOUSETRAILS = 93;
  static const SPI_GETMOUSETRAILS = 94;
  static const SPI_SETSCREENSAVERRUNNING = 97;
  static const SPI_SCREENSAVERRUNNING = 97;
  static const SPI_GETFILTERKEYS = 50;
  static const SPI_SETFILTERKEYS = 51;
  static const SPI_GETTOGGLEKEYS = 52;
  static const SPI_SETTOGGLEKEYS = 53;
  static const SPI_GETMOUSEKEYS = 54;
  static const SPI_SETMOUSEKEYS = 55;
  static const SPI_GETSHOWSOUNDS = 56;
  static const SPI_SETSHOWSOUNDS = 57;
  static const SPI_GETSTICKYKEYS = 58;
  static const SPI_SETSTICKYKEYS = 59;
  static const SPI_GETACCESSTIMEOUT = 60;
  static const SPI_SETACCESSTIMEOUT = 61;
  static const SPI_GETSERIALKEYS = 62;
  static const SPI_SETSERIALKEYS = 63;
  static const SPI_GETSOUNDSENTRY = 64;
  static const SPI_SETSOUNDSENTRY = 65;
  static const SPI_GETSNAPTODEFBUTTON = 95;
  static const SPI_SETSNAPTODEFBUTTON = 96;
  static const SPI_GETMOUSEHOVERWIDTH = 98;
  static const SPI_SETMOUSEHOVERWIDTH = 99;
  static const SPI_GETMOUSEHOVERHEIGHT = 100;
  static const SPI_SETMOUSEHOVERHEIGHT = 101;
  static const SPI_GETMOUSEHOVERTIME = 102;
  static const SPI_SETMOUSEHOVERTIME = 103;
  static const SPI_GETWHEELSCROLLLINES = 104;
  static const SPI_SETWHEELSCROLLLINES = 105;
  static const SPI_GETMENUSHOWDELAY = 106;
  static const SPI_SETMENUSHOWDELAY = 107;
  static const SPI_GETWHEELSCROLLCHARS = 108;
  static const SPI_SETWHEELSCROLLCHARS = 109;
  static const SPI_GETSHOWIMEUI = 110;
  static const SPI_SETSHOWIMEUI = 111;
  static const SPI_GETMOUSESPEED = 112;
  static const SPI_SETMOUSESPEED = 113;
  static const SPI_GETSCREENSAVERRUNNING = 114;
  static const SPI_GETDESKWALLPAPER = 115;
  static const SPI_GETAUDIODESCRIPTION = 116;
  static const SPI_SETAUDIODESCRIPTION = 117;
  static const SPI_GETSCREENSAVESECURE = 118;
  static const SPI_SETSCREENSAVESECURE = 119;
  static const SPI_GETHUNGAPPTIMEOUT = 120;
  static const SPI_SETHUNGAPPTIMEOUT = 121;
  static const SPI_GETWAITTOKILLTIMEOUT = 122;
  static const SPI_SETWAITTOKILLTIMEOUT = 123;
  static const SPI_GETWAITTOKILLSERVICETIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(124);
  static const SPI_SETWAITTOKILLSERVICETIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(125);
  static const SPI_GETMOUSEDOCKTHRESHOLD = 126;
  static const SPI_SETMOUSEDOCKTHRESHOLD = 127;
  static const SPI_GETPENDOCKTHRESHOLD = 128;
  static const SPI_SETPENDOCKTHRESHOLD = 129;
  static const SPI_GETWINARRANGING = 130;
  static const SPI_SETWINARRANGING = 131;
  static const SPI_GETMOUSEDRAGOUTTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(132);
  static const SPI_SETMOUSEDRAGOUTTHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(133);
  static const SPI_GETPENDRAGOUTTHRESHOLD = 134;
  static const SPI_SETPENDRAGOUTTHRESHOLD = 135;
  static const SPI_GETMOUSESIDEMOVETHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(136);
  static const SPI_SETMOUSESIDEMOVETHRESHOLD =
      SYSTEM_PARAMETERS_INFO_ACTION(137);
  static const SPI_GETPENSIDEMOVETHRESHOLD = 138;
  static const SPI_SETPENSIDEMOVETHRESHOLD = 139;
  static const SPI_GETDRAGFROMMAXIMIZE = 140;
  static const SPI_SETDRAGFROMMAXIMIZE = 141;
  static const SPI_GETSNAPSIZING = 142;
  static const SPI_SETSNAPSIZING = 143;
  static const SPI_GETDOCKMOVING = 144;
  static const SPI_SETDOCKMOVING = 145;
  static const SPI_GETTOUCHPREDICTIONPARAMETERS =
      SYSTEM_PARAMETERS_INFO_ACTION(156);
  static const SPI_SETTOUCHPREDICTIONPARAMETERS =
      SYSTEM_PARAMETERS_INFO_ACTION(157);
  static const SPI_GETLOGICALDPIOVERRIDE = 158;
  static const SPI_SETLOGICALDPIOVERRIDE = 159;
  static const SPI_GETMENURECT = 162;
  static const SPI_SETMENURECT = 163;
  static const SPI_GETACTIVEWINDOWTRACKING =
      SYSTEM_PARAMETERS_INFO_ACTION(4096);
  static const SPI_SETACTIVEWINDOWTRACKING =
      SYSTEM_PARAMETERS_INFO_ACTION(4097);
  static const SPI_GETMENUANIMATION = 4098;
  static const SPI_SETMENUANIMATION = 4099;
  static const SPI_GETCOMBOBOXANIMATION = 4100;
  static const SPI_SETCOMBOBOXANIMATION = 4101;
  static const SPI_GETLISTBOXSMOOTHSCROLLING =
      SYSTEM_PARAMETERS_INFO_ACTION(4102);
  static const SPI_SETLISTBOXSMOOTHSCROLLING =
      SYSTEM_PARAMETERS_INFO_ACTION(4103);
  static const SPI_GETGRADIENTCAPTIONS = 4104;
  static const SPI_SETGRADIENTCAPTIONS = 4105;
  static const SPI_GETKEYBOARDCUES = 4106;
  static const SPI_SETKEYBOARDCUES = 4107;
  static const SPI_GETMENUUNDERLINES = 4106;
  static const SPI_SETMENUUNDERLINES = 4107;
  static const SPI_GETACTIVEWNDTRKZORDER = 4108;
  static const SPI_SETACTIVEWNDTRKZORDER = 4109;
  static const SPI_GETHOTTRACKING = 4110;
  static const SPI_SETHOTTRACKING = 4111;
  static const SPI_GETMENUFADE = 4114;
  static const SPI_SETMENUFADE = 4115;
  static const SPI_GETSELECTIONFADE = 4116;
  static const SPI_SETSELECTIONFADE = 4117;
  static const SPI_GETTOOLTIPANIMATION = 4118;
  static const SPI_SETTOOLTIPANIMATION = 4119;
  static const SPI_GETTOOLTIPFADE = 4120;
  static const SPI_SETTOOLTIPFADE = 4121;
  static const SPI_GETCURSORSHADOW = 4122;
  static const SPI_SETCURSORSHADOW = 4123;
  static const SPI_GETMOUSESONAR = 4124;
  static const SPI_SETMOUSESONAR = 4125;
  static const SPI_GETMOUSECLICKLOCK = 4126;
  static const SPI_SETMOUSECLICKLOCK = 4127;
  static const SPI_GETMOUSEVANISH = 4128;
  static const SPI_SETMOUSEVANISH = 4129;
  static const SPI_GETFLATMENU = 4130;
  static const SPI_SETFLATMENU = 4131;
  static const SPI_GETDROPSHADOW = 4132;
  static const SPI_SETDROPSHADOW = 4133;
  static const SPI_GETBLOCKSENDINPUTRESETS =
      SYSTEM_PARAMETERS_INFO_ACTION(4134);
  static const SPI_SETBLOCKSENDINPUTRESETS =
      SYSTEM_PARAMETERS_INFO_ACTION(4135);
  static const SPI_GETUIEFFECTS = 4158;
  static const SPI_SETUIEFFECTS = 4159;
  static const SPI_GETDISABLEOVERLAPPEDCONTENT =
      SYSTEM_PARAMETERS_INFO_ACTION(4160);
  static const SPI_SETDISABLEOVERLAPPEDCONTENT =
      SYSTEM_PARAMETERS_INFO_ACTION(4161);
  static const SPI_GETCLIENTAREAANIMATION = 4162;
  static const SPI_SETCLIENTAREAANIMATION = 4163;
  static const SPI_GETCLEARTYPE = 4168;
  static const SPI_SETCLEARTYPE = 4169;
  static const SPI_GETSPEECHRECOGNITION = 4170;
  static const SPI_SETSPEECHRECOGNITION = 4171;
  static const SPI_GETCARETBROWSING = 4172;
  static const SPI_SETCARETBROWSING = 4173;
  static const SPI_GETTHREADLOCALINPUTSETTINGS =
      SYSTEM_PARAMETERS_INFO_ACTION(4174);
  static const SPI_SETTHREADLOCALINPUTSETTINGS =
      SYSTEM_PARAMETERS_INFO_ACTION(4175);
  static const SPI_GETSYSTEMLANGUAGEBAR = 4176;
  static const SPI_SETSYSTEMLANGUAGEBAR = 4177;
  static const SPI_GETFOREGROUNDLOCKTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(8192);
  static const SPI_SETFOREGROUNDLOCKTIMEOUT =
      SYSTEM_PARAMETERS_INFO_ACTION(8193);
  static const SPI_GETACTIVEWNDTRKTIMEOUT = 8194;
  static const SPI_SETACTIVEWNDTRKTIMEOUT = 8195;
  static const SPI_GETFOREGROUNDFLASHCOUNT =
      SYSTEM_PARAMETERS_INFO_ACTION(8196);
  static const SPI_SETFOREGROUNDFLASHCOUNT =
      SYSTEM_PARAMETERS_INFO_ACTION(8197);
  static const SPI_GETCARETWIDTH = 8198;
  static const SPI_SETCARETWIDTH = 8199;
  static const SPI_GETMOUSECLICKLOCKTIME = 8200;
  static const SPI_SETMOUSECLICKLOCKTIME = 8201;
  static const SPI_GETFONTSMOOTHINGTYPE = 8202;
  static const SPI_SETFONTSMOOTHINGTYPE = 8203;
  static const SPI_GETFONTSMOOTHINGCONTRAST =
      SYSTEM_PARAMETERS_INFO_ACTION(8204);
  static const SPI_SETFONTSMOOTHINGCONTRAST =
      SYSTEM_PARAMETERS_INFO_ACTION(8205);
  static const SPI_GETFOCUSBORDERWIDTH = 8206;
  static const SPI_SETFOCUSBORDERWIDTH = 8207;
  static const SPI_GETFOCUSBORDERHEIGHT = 8208;
  static const SPI_SETFOCUSBORDERHEIGHT = 8209;
  static const SPI_GETFONTSMOOTHINGORIENTATION =
      SYSTEM_PARAMETERS_INFO_ACTION(8210);
  static const SPI_SETFONTSMOOTHINGORIENTATION =
      SYSTEM_PARAMETERS_INFO_ACTION(8211);
  static const SPI_GETMINIMUMHITRADIUS = 8212;
  static const SPI_SETMINIMUMHITRADIUS = 8213;
  static const SPI_GETMESSAGEDURATION = 8214;
  static const SPI_SETMESSAGEDURATION = 8215;
  static const SPI_GETCONTACTVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(8216);
  static const SPI_SETCONTACTVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(8217);
  static const SPI_GETGESTUREVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(8218);
  static const SPI_SETGESTUREVISUALIZATION =
      SYSTEM_PARAMETERS_INFO_ACTION(8219);
  static const SPI_GETMOUSEWHEELROUTING = 8220;
  static const SPI_SETMOUSEWHEELROUTING = 8221;
  static const SPI_GETPENVISUALIZATION = 8222;
  static const SPI_SETPENVISUALIZATION = 8223;
  static const SPI_GETPENARBITRATIONTYPE = 8224;
  static const SPI_SETPENARBITRATIONTYPE = 8225;
  static const SPI_GETCARETTIMEOUT = 8226;
  static const SPI_SETCARETTIMEOUT = 8227;
  static const SPI_GETHANDEDNESS = 8228;
  static const SPI_SETHANDEDNESS = 8229;
}

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(int _) implements int {
  static const SPIF_UPDATEINIFILE = 1;
  static const SPIF_SENDCHANGE = 2;
  static const SPIF_SENDWININICHANGE = 2;
}

/// {@category enum}
extension type const SYS_COLOR_INDEX(int _) implements int {
  static const COLOR_SCROLLBAR = 0;
  static const COLOR_BACKGROUND = 1;
  static const COLOR_ACTIVECAPTION = 2;
  static const COLOR_INACTIVECAPTION = 3;
  static const COLOR_MENU = 4;
  static const COLOR_WINDOW = 5;
  static const COLOR_WINDOWFRAME = 6;
  static const COLOR_MENUTEXT = 7;
  static const COLOR_WINDOWTEXT = 8;
  static const COLOR_CAPTIONTEXT = 9;
  static const COLOR_ACTIVEBORDER = 10;
  static const COLOR_INACTIVEBORDER = 11;
  static const COLOR_APPWORKSPACE = 12;
  static const COLOR_HIGHLIGHT = 13;
  static const COLOR_HIGHLIGHTTEXT = 14;
  static const COLOR_BTNFACE = 15;
  static const COLOR_BTNSHADOW = 16;
  static const COLOR_GRAYTEXT = 17;
  static const COLOR_BTNTEXT = 18;
  static const COLOR_INACTIVECAPTIONTEXT = 19;
  static const COLOR_BTNHIGHLIGHT = 20;
  static const COLOR_3DDKSHADOW = 21;
  static const COLOR_3DLIGHT = 22;
  static const COLOR_INFOTEXT = 23;
  static const COLOR_INFOBK = 24;
  static const COLOR_HOTLIGHT = 26;
  static const COLOR_GRADIENTACTIVECAPTION = 27;
  static const COLOR_GRADIENTINACTIVECAPTION = 28;
  static const COLOR_MENUHILIGHT = 29;
  static const COLOR_MENUBAR = 30;
  static const COLOR_DESKTOP = 1;
  static const COLOR_3DFACE = 15;
  static const COLOR_3DSHADOW = 16;
  static const COLOR_3DHIGHLIGHT = 20;
  static const COLOR_3DHILIGHT = 20;
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
  static const SENSOR_STATE_MIN = 0;

  /// Ready to send sensor data.
  static const SENSOR_STATE_READY = 0;

  /// The sensor is not available for use.
  static const SENSOR_STATE_NOT_AVAILABLE = 1;

  /// The sensor is available but does not have data.
  static const SENSOR_STATE_NO_DATA = 2;

  /// The sensor is available, but performing initialization.
  static const SENSOR_STATE_INITIALIZING = 3;

  /// The sensor is available, but the user account does not have permission to
  /// access the sensor data.
  static const SENSOR_STATE_ACCESS_DENIED = 4;

  /// The sensor has raised an error.
  static const SENSOR_STATE_ERROR = 5;

  /// Maximum enumerated sensor state.
  static const SENSOR_STATE_MAX = 5;
}

/// {@category enum}
extension type const SpeechTokenContext(int _) implements int {
  static const STCInprocServer = 1;
  static const STCInprocHandler = 2;
  static const STCLocalServer = 4;
  static const STCRemoteServer = 16;
  static const STCAll = 23;
}

/// {@category enum}
extension type const SpeechTokenShellFolder(int _) implements int {
  static const STSF_AppData = 26;
  static const STSF_LocalAppData = 28;
  static const STSF_CommonAppData = 35;
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
  static const SupportedTextSelection_None = 0;

  /// Supports a single, continuous text selection.
  static const SupportedTextSelection_Single = 1;

  /// Supports multiple, disjoint text selections.
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
  static const SynchronizedInputType_KeyUp = 1;

  /// A key has been pressed.
  static const SynchronizedInputType_KeyDown = 2;

  /// The left mouse button has been released.
  static const SynchronizedInputType_LeftMouseUp = 4;

  /// The left mouse button has been pressed.
  static const SynchronizedInputType_LeftMouseDown = 8;

  /// The right mouse button has been released.
  static const SynchronizedInputType_RightMouseUp = 16;

  /// The right mouse button has been pressed.
  static const SynchronizedInputType_RightMouseDown = 32;
}

/// {@category enum}
extension type const THREAD_CREATION_FLAGS(int _) implements int {
  static const THREAD_CREATE_RUN_IMMEDIATELY = 0;
  static const THREAD_CREATE_SUSPENDED = 4;
  static const STACK_SIZE_PARAM_IS_A_RESERVATION = 65536;
}

/// {@category enum}
extension type const THREAD_ERROR_MODE(int _) implements int {
  static const SEM_ALL_ERRORS = 0;
  static const SEM_FAILCRITICALERRORS = 1;
  static const SEM_NOGPFAULTERRORBOX = 2;
  static const SEM_NOOPENFILEERRORBOX = 32768;
  static const SEM_NOALIGNMENTFAULTEXCEPT = 4;
}

/// {@category enum}
extension type const TILE_WINDOWS_HOW(int _) implements int {
  static const MDITILE_HORIZONTAL = 1;
  static const MDITILE_VERTICAL = 0;
}

/// {@category enum}
extension type const TMPF_FLAGS(int _) implements int {
  static const TMPF_FIXED_PITCH = 1;
  static const TMPF_VECTOR = 2;
  static const TMPF_DEVICE = 8;
  static const TMPF_TRUETYPE = 4;
}

/// {@category enum}
extension type const TOKEN_ACCESS_MASK(int _) implements int {
  static const TOKEN_DELETE = 65536;
  static const TOKEN_READ_CONTROL = 131072;
  static const TOKEN_WRITE_DAC = 262144;
  static const TOKEN_WRITE_OWNER = 524288;
  static const TOKEN_ACCESS_SYSTEM_SECURITY = 16777216;
  static const TOKEN_ASSIGN_PRIMARY = 1;
  static const TOKEN_DUPLICATE = 2;
  static const TOKEN_IMPERSONATE = 4;
  static const TOKEN_QUERY = 8;
  static const TOKEN_QUERY_SOURCE = 16;
  static const TOKEN_ADJUST_PRIVILEGES = 32;
  static const TOKEN_ADJUST_GROUPS = 64;
  static const TOKEN_ADJUST_DEFAULT = 128;
  static const TOKEN_ADJUST_SESSIONID = 256;
  static const TOKEN_READ = 131080;
  static const TOKEN_WRITE = 131296;
  static const TOKEN_EXECUTE = 131072;
  static const TOKEN_TRUST_CONSTRAINT_MASK = 131096;
  static const TOKEN_ACCESS_PSEUDO_HANDLE_WIN8 = 24;
  static const TOKEN_ACCESS_PSEUDO_HANDLE = 24;
  static const TOKEN_ALL_ACCESS = 983551;
}

/// {@category enum}
extension type const TOUCHEVENTF_FLAGS(int _) implements int {
  static const TOUCHEVENTF_MOVE = 1;
  static const TOUCHEVENTF_DOWN = 2;
  static const TOUCHEVENTF_UP = 4;
  static const TOUCHEVENTF_INRANGE = 8;
  static const TOUCHEVENTF_PRIMARY = 16;
  static const TOUCHEVENTF_NOCOALESCE = 32;
  static const TOUCHEVENTF_PEN = 64;
  static const TOUCHEVENTF_PALM = 128;
}

/// {@category enum}
extension type const TOUCHINPUTMASKF_MASK(int _) implements int {
  static const TOUCHINPUTMASKF_TIMEFROMSYSTEM = 1;
  static const TOUCHINPUTMASKF_EXTRAINFO = 2;
  static const TOUCHINPUTMASKF_CONTACTAREA = 4;
}

/// {@category enum}
extension type const TRACK_POPUP_MENU_FLAGS(int _) implements int {
  static const TPM_LEFTBUTTON = 0;
  static const TPM_RIGHTBUTTON = 2;
  static const TPM_LEFTALIGN = 0;
  static const TPM_CENTERALIGN = 4;
  static const TPM_RIGHTALIGN = 8;
  static const TPM_TOPALIGN = 0;
  static const TPM_VCENTERALIGN = 16;
  static const TPM_BOTTOMALIGN = 32;
  static const TPM_HORIZONTAL = 0;
  static const TPM_VERTICAL = 64;
  static const TPM_NONOTIFY = 128;
  static const TPM_RETURNCMD = 256;
  static const TPM_RECURSE = 1;
  static const TPM_HORPOSANIMATION = 1024;
  static const TPM_HORNEGANIMATION = 2048;
  static const TPM_VERPOSANIMATION = 4096;
  static const TPM_VERNEGANIMATION = 8192;
  static const TPM_NOANIMATION = 16384;
  static const TPM_LAYOUTRTL = 32768;
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
  static const TUNNEL_TYPE_NONE = 0;

  /// Indicates that none of the following tunnel types is specified.
  static const TUNNEL_TYPE_OTHER = 1;

  /// Specifies that a packet is encapsulated directly within a normal IP
  /// header, with no intermediate header, and the packet is sent unicast to the
  /// remote tunnel endpoint.
  static const TUNNEL_TYPE_DIRECT = 2;

  /// Specifies that an IPv6 packet is encapsulated directly within an IPv4
  /// header, with no intermediate header, and the packet is sent unicast to the
  /// destination determined by the 6to4 protocol.
  static const TUNNEL_TYPE_6TO4 = 11;

  /// Specifies that an IPv6 packet is encapsulated directly within an IPv4
  /// header, with no intermediate header, and the packet is sent unicast to the
  /// destination determined by the ISATAP protocol.
  static const TUNNEL_TYPE_ISATAP = 13;

  /// Specifies that the tunnel uses Teredo encapsulation.
  static const TUNNEL_TYPE_TEREDO = 14;

  /// Specifies that the tunnel uses IP over Hypertext Transfer Protocol Secure
  /// (HTTPS).
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
  static const TKIND_ENUM = 0;

  /// A structure with no methods.
  static const TKIND_RECORD = 1;

  /// A module that can only have static functions and data (for example, a
  /// DLL).
  static const TKIND_MODULE = 2;

  /// A type that has virtual and pure functions.
  static const TKIND_INTERFACE = 3;

  /// A set of methods and properties that are accessible through <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nf-oaidl-idispatch-invoke">IDispatch::Invoke</a>.
  static const TKIND_DISPATCH = 4;

  /// A set of implemented component object interfaces.
  static const TKIND_COCLASS = 5;

  /// A type that is an alias for another type.
  static const TKIND_ALIAS = 6;

  /// A union, all of whose members have an offset of zero.
  static const TKIND_UNION = 7;

  /// End of enum marker.
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
  static const TextEditChangeType_None = 0;

  /// Change is from an auto-correct action performed by a control.
  static const TextEditChangeType_AutoCorrect = 1;

  /// Change is from an IME active composition within a control.
  static const TextEditChangeType_Composition = 2;

  /// Change is from an IME composition going from active to finalized state
  /// within a control.
  static const TextEditChangeType_CompositionFinalized = 3;

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
  static const TextPatternRangeEndpoint_Start = 0;

  /// The ending endpoint of the range.
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
  static const TextUnit_Character = 0;

  /// Format.
  static const TextUnit_Format = 1;

  /// Word.
  static const TextUnit_Word = 2;

  /// Line.
  static const TextUnit_Line = 3;

  /// Paragraph.
  static const TextUnit_Paragraph = 4;

  /// Page.
  static const TextUnit_Page = 5;

  /// Document.
  static const TextUnit_Document = 6;
}

/// {@category enum}
extension type const THEME_PROPERTY_SYMBOL_ID(int _) implements int {
  static const TMT_RESERVEDLOW = 0;
  static const TMT_RESERVEDHIGH = 7999;
  static const TMT_DIBDATA = 2;
  static const TMT_GLYPHDIBDATA = 8;
  static const TMT_ENUM = 200;
  static const TMT_STRING = 201;
  static const TMT_INT = 202;
  static const TMT_BOOL = 203;
  static const TMT_COLOR = 204;
  static const TMT_MARGINS = 205;
  static const TMT_FILENAME = 206;
  static const TMT_SIZE = 207;
  static const TMT_POSITION = 208;
  static const TMT_RECT = 209;
  static const TMT_FONT = 210;
  static const TMT_INTLIST = 211;
  static const TMT_HBITMAP = 212;
  static const TMT_DISKSTREAM = 213;
  static const TMT_STREAM = 214;
  static const TMT_BITMAPREF = 215;
  static const TMT_FLOAT = 216;
  static const TMT_FLOATLIST = 217;
  static const TMT_COLORSCHEMES = 401;
  static const TMT_SIZES = 402;
  static const TMT_CHARSET = 403;
  static const TMT_NAME = 600;
  static const TMT_DISPLAYNAME = 601;
  static const TMT_TOOLTIP = 602;
  static const TMT_COMPANY = 603;
  static const TMT_AUTHOR = 604;
  static const TMT_COPYRIGHT = 605;
  static const TMT_URL = 606;
  static const TMT_VERSION = 607;
  static const TMT_DESCRIPTION = 608;
  static const TMT_FIRST_RCSTRING_NAME = 601;
  static const TMT_LAST_RCSTRING_NAME = 608;
  static const TMT_CAPTIONFONT = 801;
  static const TMT_SMALLCAPTIONFONT = 802;
  static const TMT_MENUFONT = 803;
  static const TMT_STATUSFONT = 804;
  static const TMT_MSGBOXFONT = 805;
  static const TMT_ICONTITLEFONT = 806;
  static const TMT_HEADING1FONT = 807;
  static const TMT_HEADING2FONT = 808;
  static const TMT_BODYFONT = 809;
  static const TMT_FIRSTFONT = 801;
  static const TMT_LASTFONT = 809;
  static const TMT_FLATMENUS = 1001;
  static const TMT_FIRSTBOOL = 1001;
  static const TMT_LASTBOOL = 1001;
  static const TMT_SIZINGBORDERWIDTH = 1201;
  static const TMT_SCROLLBARWIDTH = 1202;
  static const TMT_SCROLLBARHEIGHT = 1203;
  static const TMT_CAPTIONBARWIDTH = 1204;
  static const TMT_CAPTIONBARHEIGHT = 1205;
  static const TMT_SMCAPTIONBARWIDTH = 1206;
  static const TMT_SMCAPTIONBARHEIGHT = 1207;
  static const TMT_MENUBARWIDTH = 1208;
  static const TMT_MENUBARHEIGHT = 1209;
  static const TMT_PADDEDBORDERWIDTH = 1210;
  static const TMT_FIRSTSIZE = 1201;
  static const TMT_LASTSIZE = 1210;
  static const TMT_MINCOLORDEPTH = 1301;
  static const TMT_FIRSTINT = 1301;
  static const TMT_LASTINT = 1301;
  static const TMT_CSSNAME = 1401;
  static const TMT_XMLNAME = 1402;
  static const TMT_LASTUPDATED = 1403;
  static const TMT_ALIAS = 1404;
  static const TMT_FIRSTSTRING = 1401;
  static const TMT_LASTSTRING = 1404;
  static const TMT_SCROLLBAR = 1601;
  static const TMT_BACKGROUND = 1602;
  static const TMT_ACTIVECAPTION = 1603;
  static const TMT_INACTIVECAPTION = 1604;
  static const TMT_MENU = 1605;
  static const TMT_WINDOW = 1606;
  static const TMT_WINDOWFRAME = 1607;
  static const TMT_MENUTEXT = 1608;
  static const TMT_WINDOWTEXT = 1609;
  static const TMT_CAPTIONTEXT = 1610;
  static const TMT_ACTIVEBORDER = 1611;
  static const TMT_INACTIVEBORDER = 1612;
  static const TMT_APPWORKSPACE = 1613;
  static const TMT_HIGHLIGHT = 1614;
  static const TMT_HIGHLIGHTTEXT = 1615;
  static const TMT_BTNFACE = 1616;
  static const TMT_BTNSHADOW = 1617;
  static const TMT_GRAYTEXT = 1618;
  static const TMT_BTNTEXT = 1619;
  static const TMT_INACTIVECAPTIONTEXT = 1620;
  static const TMT_BTNHIGHLIGHT = 1621;
  static const TMT_DKSHADOW3D = 1622;
  static const TMT_LIGHT3D = 1623;
  static const TMT_INFOTEXT = 1624;
  static const TMT_INFOBK = 1625;
  static const TMT_BUTTONALTERNATEFACE = 1626;
  static const TMT_HOTTRACKING = 1627;
  static const TMT_GRADIENTACTIVECAPTION = 1628;
  static const TMT_GRADIENTINACTIVECAPTION = 1629;
  static const TMT_MENUHILIGHT = 1630;
  static const TMT_MENUBAR = 1631;
  static const TMT_FIRSTCOLOR = 1601;
  static const TMT_LASTCOLOR = 1631;
  static const TMT_FROMHUE1 = 1801;
  static const TMT_FROMHUE2 = 1802;
  static const TMT_FROMHUE3 = 1803;
  static const TMT_FROMHUE4 = 1804;
  static const TMT_FROMHUE5 = 1805;
  static const TMT_TOHUE1 = 1806;
  static const TMT_TOHUE2 = 1807;
  static const TMT_TOHUE3 = 1808;
  static const TMT_TOHUE4 = 1809;
  static const TMT_TOHUE5 = 1810;
  static const TMT_FROMCOLOR1 = 2001;
  static const TMT_FROMCOLOR2 = 2002;
  static const TMT_FROMCOLOR3 = 2003;
  static const TMT_FROMCOLOR4 = 2004;
  static const TMT_FROMCOLOR5 = 2005;
  static const TMT_TOCOLOR1 = 2006;
  static const TMT_TOCOLOR2 = 2007;
  static const TMT_TOCOLOR3 = 2008;
  static const TMT_TOCOLOR4 = 2009;
  static const TMT_TOCOLOR5 = 2010;
  static const TMT_TRANSPARENT = 2201;
  static const TMT_AUTOSIZE = 2202;
  static const TMT_BORDERONLY = 2203;
  static const TMT_COMPOSITED = 2204;
  static const TMT_BGFILL = 2205;
  static const TMT_GLYPHTRANSPARENT = 2206;
  static const TMT_GLYPHONLY = 2207;
  static const TMT_ALWAYSSHOWSIZINGBAR = 2208;
  static const TMT_MIRRORIMAGE = 2209;
  static const TMT_UNIFORMSIZING = 2210;
  static const TMT_INTEGRALSIZING = 2211;
  static const TMT_SOURCEGROW = 2212;
  static const TMT_SOURCESHRINK = 2213;
  static const TMT_DRAWBORDERS = 2214;
  static const TMT_NOETCHEDEFFECT = 2215;
  static const TMT_TEXTAPPLYOVERLAY = 2216;
  static const TMT_TEXTGLOW = 2217;
  static const TMT_TEXTITALIC = 2218;
  static const TMT_COMPOSITEDOPAQUE = 2219;
  static const TMT_LOCALIZEDMIRRORIMAGE = 2220;
  static const TMT_IMAGECOUNT = 2401;
  static const TMT_ALPHALEVEL = 2402;
  static const TMT_BORDERSIZE = 2403;
  static const TMT_ROUNDCORNERWIDTH = 2404;
  static const TMT_ROUNDCORNERHEIGHT = 2405;
  static const TMT_GRADIENTRATIO1 = 2406;
  static const TMT_GRADIENTRATIO2 = 2407;
  static const TMT_GRADIENTRATIO3 = 2408;
  static const TMT_GRADIENTRATIO4 = 2409;
  static const TMT_GRADIENTRATIO5 = 2410;
  static const TMT_PROGRESSCHUNKSIZE = 2411;
  static const TMT_PROGRESSSPACESIZE = 2412;
  static const TMT_SATURATION = 2413;
  static const TMT_TEXTBORDERSIZE = 2414;
  static const TMT_ALPHATHRESHOLD = 2415;
  static const TMT_WIDTH = 2416;
  static const TMT_HEIGHT = 2417;
  static const TMT_GLYPHINDEX = 2418;
  static const TMT_TRUESIZESTRETCHMARK = 2419;
  static const TMT_MINDPI1 = 2420;
  static const TMT_MINDPI2 = 2421;
  static const TMT_MINDPI3 = 2422;
  static const TMT_MINDPI4 = 2423;
  static const TMT_MINDPI5 = 2424;
  static const TMT_TEXTGLOWSIZE = 2425;
  static const TMT_FRAMESPERSECOND = 2426;
  static const TMT_PIXELSPERFRAME = 2427;
  static const TMT_ANIMATIONDELAY = 2428;
  static const TMT_GLOWINTENSITY = 2429;
  static const TMT_OPACITY = 2430;
  static const TMT_COLORIZATIONCOLOR = 2431;
  static const TMT_COLORIZATIONOPACITY = 2432;
  static const TMT_MINDPI6 = 2433;
  static const TMT_MINDPI7 = 2434;
  static const TMT_GLYPHFONT = 2601;
  static const TMT_IMAGEFILE = 3001;
  static const TMT_IMAGEFILE1 = 3002;
  static const TMT_IMAGEFILE2 = 3003;
  static const TMT_IMAGEFILE3 = 3004;
  static const TMT_IMAGEFILE4 = 3005;
  static const TMT_IMAGEFILE5 = 3006;
  static const TMT_GLYPHIMAGEFILE = 3008;
  static const TMT_IMAGEFILE6 = 3009;
  static const TMT_IMAGEFILE7 = 3010;
  static const TMT_TEXT = 3201;
  static const TMT_CLASSICVALUE = 3202;
  static const TMT_OFFSET = 3401;
  static const TMT_TEXTSHADOWOFFSET = 3402;
  static const TMT_MINSIZE = 3403;
  static const TMT_MINSIZE1 = 3404;
  static const TMT_MINSIZE2 = 3405;
  static const TMT_MINSIZE3 = 3406;
  static const TMT_MINSIZE4 = 3407;
  static const TMT_MINSIZE5 = 3408;
  static const TMT_NORMALSIZE = 3409;
  static const TMT_MINSIZE6 = 3410;
  static const TMT_MINSIZE7 = 3411;
  static const TMT_SIZINGMARGINS = 3601;
  static const TMT_CONTENTMARGINS = 3602;
  static const TMT_CAPTIONMARGINS = 3603;
  static const TMT_BORDERCOLOR = 3801;
  static const TMT_FILLCOLOR = 3802;
  static const TMT_TEXTCOLOR = 3803;
  static const TMT_EDGELIGHTCOLOR = 3804;
  static const TMT_EDGEHIGHLIGHTCOLOR = 3805;
  static const TMT_EDGESHADOWCOLOR = 3806;
  static const TMT_EDGEDKSHADOWCOLOR = 3807;
  static const TMT_EDGEFILLCOLOR = 3808;
  static const TMT_TRANSPARENTCOLOR = 3809;
  static const TMT_GRADIENTCOLOR1 = 3810;
  static const TMT_GRADIENTCOLOR2 = 3811;
  static const TMT_GRADIENTCOLOR3 = 3812;
  static const TMT_GRADIENTCOLOR4 = 3813;
  static const TMT_GRADIENTCOLOR5 = 3814;
  static const TMT_SHADOWCOLOR = 3815;
  static const TMT_GLOWCOLOR = 3816;
  static const TMT_TEXTBORDERCOLOR = 3817;
  static const TMT_TEXTSHADOWCOLOR = 3818;
  static const TMT_GLYPHTEXTCOLOR = 3819;
  static const TMT_GLYPHTRANSPARENTCOLOR = 3820;
  static const TMT_FILLCOLORHINT = 3821;
  static const TMT_BORDERCOLORHINT = 3822;
  static const TMT_ACCENTCOLORHINT = 3823;
  static const TMT_TEXTCOLORHINT = 3824;
  static const TMT_HEADING1TEXTCOLOR = 3825;
  static const TMT_HEADING2TEXTCOLOR = 3826;
  static const TMT_BODYTEXTCOLOR = 3827;
  static const TMT_BGTYPE = 4001;
  static const TMT_BORDERTYPE = 4002;
  static const TMT_FILLTYPE = 4003;
  static const TMT_SIZINGTYPE = 4004;
  static const TMT_HALIGN = 4005;
  static const TMT_CONTENTALIGNMENT = 4006;
  static const TMT_VALIGN = 4007;
  static const TMT_OFFSETTYPE = 4008;
  static const TMT_ICONEFFECT = 4009;
  static const TMT_TEXTSHADOWTYPE = 4010;
  static const TMT_IMAGELAYOUT = 4011;
  static const TMT_GLYPHTYPE = 4012;
  static const TMT_IMAGESELECTTYPE = 4013;
  static const TMT_GLYPHFONTSIZINGTYPE = 4014;
  static const TMT_TRUESIZESCALINGTYPE = 4015;
  static const TMT_USERPICTURE = 5001;
  static const TMT_DEFAULTPANESIZE = 5002;
  static const TMT_BLENDCOLOR = 5003;
  static const TMT_CUSTOMSPLITRECT = 5004;
  static const TMT_ANIMATIONBUTTONRECT = 5005;
  static const TMT_ANIMATIONDURATION = 5006;
  static const TMT_TRANSITIONDURATIONS = 6000;
  static const TMT_SCALEDBACKGROUND = 7001;
  static const TMT_ATLASIMAGE = 8000;
  static const TMT_ATLASINPUTIMAGE = 8001;
  static const TMT_ATLASRECT = 8002;
}

/// {@category enum}
extension type const UIA_ANNOTATIONTYPE(int _) implements int {
  static const AnnotationType_Unknown = 60000;
  static const AnnotationType_SpellingError = 60001;
  static const AnnotationType_GrammarError = 60002;
  static const AnnotationType_Comment = 60003;
  static const AnnotationType_FormulaError = 60004;
  static const AnnotationType_TrackChanges = 60005;
  static const AnnotationType_Header = 60006;
  static const AnnotationType_Footer = 60007;
  static const AnnotationType_Highlighted = 60008;
  static const AnnotationType_Endnote = 60009;
  static const AnnotationType_Footnote = 60010;
  static const AnnotationType_InsertionChange = 60011;
  static const AnnotationType_DeletionChange = 60012;
  static const AnnotationType_MoveChange = 60013;
  static const AnnotationType_FormatChange = 60014;
  static const AnnotationType_UnsyncedChange = 60015;
  static const AnnotationType_EditingLockedChange = 60016;
  static const AnnotationType_ExternalChange = 60017;
  static const AnnotationType_ConflictingChange = 60018;
  static const AnnotationType_Author = 60019;
  static const AnnotationType_AdvancedProofingIssue = 60020;
  static const AnnotationType_DataValidationError = 60021;
  static const AnnotationType_CircularReferenceError =
      UIA_ANNOTATIONTYPE(60022);
  static const AnnotationType_Mathematics = 60023;
  static const AnnotationType_Sensitive = 60024;
}

/// {@category enum}
extension type const UIA_CONTROLTYPE_ID(int _) implements int {
  static const UIA_ButtonControlTypeId = 50000;
  static const UIA_CalendarControlTypeId = 50001;
  static const UIA_CheckBoxControlTypeId = 50002;
  static const UIA_ComboBoxControlTypeId = 50003;
  static const UIA_EditControlTypeId = 50004;
  static const UIA_HyperlinkControlTypeId = 50005;
  static const UIA_ImageControlTypeId = 50006;
  static const UIA_ListItemControlTypeId = 50007;
  static const UIA_ListControlTypeId = 50008;
  static const UIA_MenuControlTypeId = 50009;
  static const UIA_MenuBarControlTypeId = 50010;
  static const UIA_MenuItemControlTypeId = 50011;
  static const UIA_ProgressBarControlTypeId = 50012;
  static const UIA_RadioButtonControlTypeId = 50013;
  static const UIA_ScrollBarControlTypeId = 50014;
  static const UIA_SliderControlTypeId = 50015;
  static const UIA_SpinnerControlTypeId = 50016;
  static const UIA_StatusBarControlTypeId = 50017;
  static const UIA_TabControlTypeId = 50018;
  static const UIA_TabItemControlTypeId = 50019;
  static const UIA_TextControlTypeId = 50020;
  static const UIA_ToolBarControlTypeId = 50021;
  static const UIA_ToolTipControlTypeId = 50022;
  static const UIA_TreeControlTypeId = 50023;
  static const UIA_TreeItemControlTypeId = 50024;
  static const UIA_CustomControlTypeId = 50025;
  static const UIA_GroupControlTypeId = 50026;
  static const UIA_ThumbControlTypeId = 50027;
  static const UIA_DataGridControlTypeId = 50028;
  static const UIA_DataItemControlTypeId = 50029;
  static const UIA_DocumentControlTypeId = 50030;
  static const UIA_SplitButtonControlTypeId = 50031;
  static const UIA_WindowControlTypeId = 50032;
  static const UIA_PaneControlTypeId = 50033;
  static const UIA_HeaderControlTypeId = 50034;
  static const UIA_HeaderItemControlTypeId = 50035;
  static const UIA_TableControlTypeId = 50036;
  static const UIA_TitleBarControlTypeId = 50037;
  static const UIA_SeparatorControlTypeId = 50038;
  static const UIA_SemanticZoomControlTypeId = 50039;
  static const UIA_AppBarControlTypeId = 50040;
}

/// {@category enum}
extension type const UIA_EVENT_ID(int _) implements int {
  static const UIA_ToolTipOpenedEventId = 20000;
  static const UIA_ToolTipClosedEventId = 20001;
  static const UIA_StructureChangedEventId = 20002;
  static const UIA_MenuOpenedEventId = 20003;
  static const UIA_AutomationPropertyChangedEventId = 20004;
  static const UIA_AutomationFocusChangedEventId = 20005;
  static const UIA_AsyncContentLoadedEventId = 20006;
  static const UIA_MenuClosedEventId = 20007;
  static const UIA_LayoutInvalidatedEventId = 20008;
  static const UIA_Invoke_InvokedEventId = 20009;
  static const UIA_SelectionItem_ElementAddedToSelectionEventId =
      UIA_EVENT_ID(20010);
  static const UIA_SelectionItem_ElementRemovedFromSelectionEventId =
      UIA_EVENT_ID(20011);
  static const UIA_SelectionItem_ElementSelectedEventId = 20012;
  static const UIA_Selection_InvalidatedEventId = 20013;
  static const UIA_Text_TextSelectionChangedEventId = 20014;
  static const UIA_Text_TextChangedEventId = 20015;
  static const UIA_Window_WindowOpenedEventId = 20016;
  static const UIA_Window_WindowClosedEventId = 20017;
  static const UIA_MenuModeStartEventId = 20018;
  static const UIA_MenuModeEndEventId = 20019;
  static const UIA_InputReachedTargetEventId = 20020;
  static const UIA_InputReachedOtherElementEventId = 20021;
  static const UIA_InputDiscardedEventId = 20022;
  static const UIA_SystemAlertEventId = 20023;
  static const UIA_LiveRegionChangedEventId = 20024;
  static const UIA_HostedFragmentRootsInvalidatedEventId = 20025;
  static const UIA_Drag_DragStartEventId = 20026;
  static const UIA_Drag_DragCancelEventId = 20027;
  static const UIA_Drag_DragCompleteEventId = 20028;
  static const UIA_DropTarget_DragEnterEventId = 20029;
  static const UIA_DropTarget_DragLeaveEventId = 20030;
  static const UIA_DropTarget_DroppedEventId = 20031;
  static const UIA_TextEdit_TextChangedEventId = 20032;
  static const UIA_TextEdit_ConversionTargetChangedEventId =
      UIA_EVENT_ID(20033);
  static const UIA_ChangesEventId = 20034;
  static const UIA_NotificationEventId = 20035;
  static const UIA_ActiveTextPositionChangedEventId = 20036;
}

/// {@category enum}
extension type const UIA_HEADINGLEVEL_ID(int _) implements int {
  static const HeadingLevel_None = 80050;
  static const HeadingLevel1 = 80051;
  static const HeadingLevel2 = 80052;
  static const HeadingLevel3 = 80053;
  static const HeadingLevel4 = 80054;
  static const HeadingLevel5 = 80055;
  static const HeadingLevel6 = 80056;
  static const HeadingLevel7 = 80057;
  static const HeadingLevel8 = 80058;
  static const HeadingLevel9 = 80059;
}

/// {@category enum}
extension type const UIA_LANDMARKTYPE_ID(int _) implements int {
  static const UIA_CustomLandmarkTypeId = 80000;
  static const UIA_FormLandmarkTypeId = 80001;
  static const UIA_MainLandmarkTypeId = 80002;
  static const UIA_NavigationLandmarkTypeId = 80003;
  static const UIA_SearchLandmarkTypeId = 80004;
}

/// {@category enum}
extension type const UIA_METADATA_ID(int _) implements int {
  static const UIA_SayAsInterpretAsMetadataId = 100000;
}

/// {@category enum}
extension type const UIA_PATTERN_ID(int _) implements int {
  static const UIA_InvokePatternId = 10000;
  static const UIA_SelectionPatternId = 10001;
  static const UIA_ValuePatternId = 10002;
  static const UIA_RangeValuePatternId = 10003;
  static const UIA_ScrollPatternId = 10004;
  static const UIA_ExpandCollapsePatternId = 10005;
  static const UIA_GridPatternId = 10006;
  static const UIA_GridItemPatternId = 10007;
  static const UIA_MultipleViewPatternId = 10008;
  static const UIA_WindowPatternId = 10009;
  static const UIA_SelectionItemPatternId = 10010;
  static const UIA_DockPatternId = 10011;
  static const UIA_TablePatternId = 10012;
  static const UIA_TableItemPatternId = 10013;
  static const UIA_TextPatternId = 10014;
  static const UIA_TogglePatternId = 10015;
  static const UIA_TransformPatternId = 10016;
  static const UIA_ScrollItemPatternId = 10017;
  static const UIA_LegacyIAccessiblePatternId = 10018;
  static const UIA_ItemContainerPatternId = 10019;
  static const UIA_VirtualizedItemPatternId = 10020;
  static const UIA_SynchronizedInputPatternId = 10021;
  static const UIA_ObjectModelPatternId = 10022;
  static const UIA_AnnotationPatternId = 10023;
  static const UIA_TextPattern2Id = 10024;
  static const UIA_StylesPatternId = 10025;
  static const UIA_SpreadsheetPatternId = 10026;
  static const UIA_SpreadsheetItemPatternId = 10027;
  static const UIA_TransformPattern2Id = 10028;
  static const UIA_TextChildPatternId = 10029;
  static const UIA_DragPatternId = 10030;
  static const UIA_DropTargetPatternId = 10031;
  static const UIA_TextEditPatternId = 10032;
  static const UIA_CustomNavigationPatternId = 10033;
  static const UIA_SelectionPattern2Id = 10034;
}

/// {@category enum}
extension type const UIA_PROPERTY_ID(int _) implements int {
  static const UIA_RuntimeIdPropertyId = 30000;
  static const UIA_BoundingRectanglePropertyId = 30001;
  static const UIA_ProcessIdPropertyId = 30002;
  static const UIA_ControlTypePropertyId = 30003;
  static const UIA_LocalizedControlTypePropertyId = 30004;
  static const UIA_NamePropertyId = 30005;
  static const UIA_AcceleratorKeyPropertyId = 30006;
  static const UIA_AccessKeyPropertyId = 30007;
  static const UIA_HasKeyboardFocusPropertyId = 30008;
  static const UIA_IsKeyboardFocusablePropertyId = 30009;
  static const UIA_IsEnabledPropertyId = 30010;
  static const UIA_AutomationIdPropertyId = 30011;
  static const UIA_ClassNamePropertyId = 30012;
  static const UIA_HelpTextPropertyId = 30013;
  static const UIA_ClickablePointPropertyId = 30014;
  static const UIA_CulturePropertyId = 30015;
  static const UIA_IsControlElementPropertyId = 30016;
  static const UIA_IsContentElementPropertyId = 30017;
  static const UIA_LabeledByPropertyId = 30018;
  static const UIA_IsPasswordPropertyId = 30019;
  static const UIA_NativeWindowHandlePropertyId = 30020;
  static const UIA_ItemTypePropertyId = 30021;
  static const UIA_IsOffscreenPropertyId = 30022;
  static const UIA_OrientationPropertyId = 30023;
  static const UIA_FrameworkIdPropertyId = 30024;
  static const UIA_IsRequiredForFormPropertyId = 30025;
  static const UIA_ItemStatusPropertyId = 30026;
  static const UIA_IsDockPatternAvailablePropertyId = 30027;
  static const UIA_IsExpandCollapsePatternAvailablePropertyId =
      UIA_PROPERTY_ID(30028);
  static const UIA_IsGridItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30029);
  static const UIA_IsGridPatternAvailablePropertyId = 30030;
  static const UIA_IsInvokePatternAvailablePropertyId = 30031;
  static const UIA_IsMultipleViewPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30032);
  static const UIA_IsRangeValuePatternAvailablePropertyId =
      UIA_PROPERTY_ID(30033);
  static const UIA_IsScrollPatternAvailablePropertyId = 30034;
  static const UIA_IsScrollItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30035);
  static const UIA_IsSelectionItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30036);
  static const UIA_IsSelectionPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30037);
  static const UIA_IsTablePatternAvailablePropertyId = 30038;
  static const UIA_IsTableItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30039);
  static const UIA_IsTextPatternAvailablePropertyId = 30040;
  static const UIA_IsTogglePatternAvailablePropertyId = 30041;
  static const UIA_IsTransformPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30042);
  static const UIA_IsValuePatternAvailablePropertyId = 30043;
  static const UIA_IsWindowPatternAvailablePropertyId = 30044;
  static const UIA_ValueValuePropertyId = 30045;
  static const UIA_ValueIsReadOnlyPropertyId = 30046;
  static const UIA_RangeValueValuePropertyId = 30047;
  static const UIA_RangeValueIsReadOnlyPropertyId = 30048;
  static const UIA_RangeValueMinimumPropertyId = 30049;
  static const UIA_RangeValueMaximumPropertyId = 30050;
  static const UIA_RangeValueLargeChangePropertyId = 30051;
  static const UIA_RangeValueSmallChangePropertyId = 30052;
  static const UIA_ScrollHorizontalScrollPercentPropertyId =
      UIA_PROPERTY_ID(30053);
  static const UIA_ScrollHorizontalViewSizePropertyId = 30054;
  static const UIA_ScrollVerticalScrollPercentPropertyId =
      UIA_PROPERTY_ID(30055);
  static const UIA_ScrollVerticalViewSizePropertyId = 30056;
  static const UIA_ScrollHorizontallyScrollablePropertyId =
      UIA_PROPERTY_ID(30057);
  static const UIA_ScrollVerticallyScrollablePropertyId =
      UIA_PROPERTY_ID(30058);
  static const UIA_SelectionSelectionPropertyId = 30059;
  static const UIA_SelectionCanSelectMultiplePropertyId =
      UIA_PROPERTY_ID(30060);
  static const UIA_SelectionIsSelectionRequiredPropertyId =
      UIA_PROPERTY_ID(30061);
  static const UIA_GridRowCountPropertyId = 30062;
  static const UIA_GridColumnCountPropertyId = 30063;
  static const UIA_GridItemRowPropertyId = 30064;
  static const UIA_GridItemColumnPropertyId = 30065;
  static const UIA_GridItemRowSpanPropertyId = 30066;
  static const UIA_GridItemColumnSpanPropertyId = 30067;
  static const UIA_GridItemContainingGridPropertyId = 30068;
  static const UIA_DockDockPositionPropertyId = 30069;
  static const UIA_ExpandCollapseExpandCollapseStatePropertyId =
      UIA_PROPERTY_ID(30070);
  static const UIA_MultipleViewCurrentViewPropertyId = 30071;
  static const UIA_MultipleViewSupportedViewsPropertyId =
      UIA_PROPERTY_ID(30072);
  static const UIA_WindowCanMaximizePropertyId = 30073;
  static const UIA_WindowCanMinimizePropertyId = 30074;
  static const UIA_WindowWindowVisualStatePropertyId = 30075;
  static const UIA_WindowWindowInteractionStatePropertyId =
      UIA_PROPERTY_ID(30076);
  static const UIA_WindowIsModalPropertyId = 30077;
  static const UIA_WindowIsTopmostPropertyId = 30078;
  static const UIA_SelectionItemIsSelectedPropertyId = 30079;
  static const UIA_SelectionItemSelectionContainerPropertyId =
      UIA_PROPERTY_ID(30080);
  static const UIA_TableRowHeadersPropertyId = 30081;
  static const UIA_TableColumnHeadersPropertyId = 30082;
  static const UIA_TableRowOrColumnMajorPropertyId = 30083;
  static const UIA_TableItemRowHeaderItemsPropertyId = 30084;
  static const UIA_TableItemColumnHeaderItemsPropertyId =
      UIA_PROPERTY_ID(30085);
  static const UIA_ToggleToggleStatePropertyId = 30086;
  static const UIA_TransformCanMovePropertyId = 30087;
  static const UIA_TransformCanResizePropertyId = 30088;
  static const UIA_TransformCanRotatePropertyId = 30089;
  static const UIA_IsLegacyIAccessiblePatternAvailablePropertyId =
      UIA_PROPERTY_ID(30090);
  static const UIA_LegacyIAccessibleChildIdPropertyId = 30091;
  static const UIA_LegacyIAccessibleNamePropertyId = 30092;
  static const UIA_LegacyIAccessibleValuePropertyId = 30093;
  static const UIA_LegacyIAccessibleDescriptionPropertyId =
      UIA_PROPERTY_ID(30094);
  static const UIA_LegacyIAccessibleRolePropertyId = 30095;
  static const UIA_LegacyIAccessibleStatePropertyId = 30096;
  static const UIA_LegacyIAccessibleHelpPropertyId = 30097;
  static const UIA_LegacyIAccessibleKeyboardShortcutPropertyId =
      UIA_PROPERTY_ID(30098);
  static const UIA_LegacyIAccessibleSelectionPropertyId =
      UIA_PROPERTY_ID(30099);
  static const UIA_LegacyIAccessibleDefaultActionPropertyId =
      UIA_PROPERTY_ID(30100);
  static const UIA_AriaRolePropertyId = 30101;
  static const UIA_AriaPropertiesPropertyId = 30102;
  static const UIA_IsDataValidForFormPropertyId = 30103;
  static const UIA_ControllerForPropertyId = 30104;
  static const UIA_DescribedByPropertyId = 30105;
  static const UIA_FlowsToPropertyId = 30106;
  static const UIA_ProviderDescriptionPropertyId = 30107;
  static const UIA_IsItemContainerPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30108);
  static const UIA_IsVirtualizedItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30109);
  static const UIA_IsSynchronizedInputPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30110);
  static const UIA_OptimizeForVisualContentPropertyId = 30111;
  static const UIA_IsObjectModelPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30112);
  static const UIA_AnnotationAnnotationTypeIdPropertyId =
      UIA_PROPERTY_ID(30113);
  static const UIA_AnnotationAnnotationTypeNamePropertyId =
      UIA_PROPERTY_ID(30114);
  static const UIA_AnnotationAuthorPropertyId = 30115;
  static const UIA_AnnotationDateTimePropertyId = 30116;
  static const UIA_AnnotationTargetPropertyId = 30117;
  static const UIA_IsAnnotationPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30118);
  static const UIA_IsTextPattern2AvailablePropertyId = 30119;
  static const UIA_StylesStyleIdPropertyId = 30120;
  static const UIA_StylesStyleNamePropertyId = 30121;
  static const UIA_StylesFillColorPropertyId = 30122;
  static const UIA_StylesFillPatternStylePropertyId = 30123;
  static const UIA_StylesShapePropertyId = 30124;
  static const UIA_StylesFillPatternColorPropertyId = 30125;
  static const UIA_StylesExtendedPropertiesPropertyId = 30126;
  static const UIA_IsStylesPatternAvailablePropertyId = 30127;
  static const UIA_IsSpreadsheetPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30128);
  static const UIA_SpreadsheetItemFormulaPropertyId = 30129;
  static const UIA_SpreadsheetItemAnnotationObjectsPropertyId =
      UIA_PROPERTY_ID(30130);
  static const UIA_SpreadsheetItemAnnotationTypesPropertyId =
      UIA_PROPERTY_ID(30131);
  static const UIA_IsSpreadsheetItemPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30132);
  static const UIA_Transform2CanZoomPropertyId = 30133;
  static const UIA_IsTransformPattern2AvailablePropertyId =
      UIA_PROPERTY_ID(30134);
  static const UIA_LiveSettingPropertyId = 30135;
  static const UIA_IsTextChildPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30136);
  static const UIA_IsDragPatternAvailablePropertyId = 30137;
  static const UIA_DragIsGrabbedPropertyId = 30138;
  static const UIA_DragDropEffectPropertyId = 30139;
  static const UIA_DragDropEffectsPropertyId = 30140;
  static const UIA_IsDropTargetPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30141);
  static const UIA_DropTargetDropTargetEffectPropertyId =
      UIA_PROPERTY_ID(30142);
  static const UIA_DropTargetDropTargetEffectsPropertyId =
      UIA_PROPERTY_ID(30143);
  static const UIA_DragGrabbedItemsPropertyId = 30144;
  static const UIA_Transform2ZoomLevelPropertyId = 30145;
  static const UIA_Transform2ZoomMinimumPropertyId = 30146;
  static const UIA_Transform2ZoomMaximumPropertyId = 30147;
  static const UIA_FlowsFromPropertyId = 30148;
  static const UIA_IsTextEditPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30149);
  static const UIA_IsPeripheralPropertyId = 30150;
  static const UIA_IsCustomNavigationPatternAvailablePropertyId =
      UIA_PROPERTY_ID(30151);
  static const UIA_PositionInSetPropertyId = 30152;
  static const UIA_SizeOfSetPropertyId = 30153;
  static const UIA_LevelPropertyId = 30154;
  static const UIA_AnnotationTypesPropertyId = 30155;
  static const UIA_AnnotationObjectsPropertyId = 30156;
  static const UIA_LandmarkTypePropertyId = 30157;
  static const UIA_LocalizedLandmarkTypePropertyId = 30158;
  static const UIA_FullDescriptionPropertyId = 30159;
  static const UIA_FillColorPropertyId = 30160;
  static const UIA_OutlineColorPropertyId = 30161;
  static const UIA_FillTypePropertyId = 30162;
  static const UIA_VisualEffectsPropertyId = 30163;
  static const UIA_OutlineThicknessPropertyId = 30164;
  static const UIA_CenterPointPropertyId = 30165;
  static const UIA_RotationPropertyId = 30166;
  static const UIA_SizePropertyId = 30167;
  static const UIA_IsSelectionPattern2AvailablePropertyId =
      UIA_PROPERTY_ID(30168);
  static const UIA_Selection2FirstSelectedItemPropertyId =
      UIA_PROPERTY_ID(30169);
  static const UIA_Selection2LastSelectedItemPropertyId =
      UIA_PROPERTY_ID(30170);
  static const UIA_Selection2CurrentSelectedItemPropertyId =
      UIA_PROPERTY_ID(30171);
  static const UIA_Selection2ItemCountPropertyId = 30172;
  static const UIA_HeadingLevelPropertyId = 30173;
  static const UIA_IsDialogPropertyId = 30174;
}

/// {@category enum}
extension type const UIA_STYLE_ID(int _) implements int {
  static const StyleId_Custom = 70000;
  static const StyleId_Heading1 = 70001;
  static const StyleId_Heading2 = 70002;
  static const StyleId_Heading3 = 70003;
  static const StyleId_Heading4 = 70004;
  static const StyleId_Heading5 = 70005;
  static const StyleId_Heading6 = 70006;
  static const StyleId_Heading7 = 70007;
  static const StyleId_Heading8 = 70008;
  static const StyleId_Heading9 = 70009;
  static const StyleId_Title = 70010;
  static const StyleId_Subtitle = 70011;
  static const StyleId_Normal = 70012;
  static const StyleId_Emphasis = 70013;
  static const StyleId_Quote = 70014;
  static const StyleId_BulletedList = 70015;
  static const StyleId_NumberedList = 70016;
}

/// {@category enum}
extension type const UIA_TEXTATTRIBUTE_ID(int _) implements int {
  static const UIA_AnimationStyleAttributeId = 40000;
  static const UIA_BackgroundColorAttributeId = 40001;
  static const UIA_BulletStyleAttributeId = 40002;
  static const UIA_CapStyleAttributeId = 40003;
  static const UIA_CultureAttributeId = 40004;
  static const UIA_FontNameAttributeId = 40005;
  static const UIA_FontSizeAttributeId = 40006;
  static const UIA_FontWeightAttributeId = 40007;
  static const UIA_ForegroundColorAttributeId = 40008;
  static const UIA_HorizontalTextAlignmentAttributeId =
      UIA_TEXTATTRIBUTE_ID(40009);
  static const UIA_IndentationFirstLineAttributeId =
      UIA_TEXTATTRIBUTE_ID(40010);
  static const UIA_IndentationLeadingAttributeId = 40011;
  static const UIA_IndentationTrailingAttributeId = 40012;
  static const UIA_IsHiddenAttributeId = 40013;
  static const UIA_IsItalicAttributeId = 40014;
  static const UIA_IsReadOnlyAttributeId = 40015;
  static const UIA_IsSubscriptAttributeId = 40016;
  static const UIA_IsSuperscriptAttributeId = 40017;
  static const UIA_MarginBottomAttributeId = 40018;
  static const UIA_MarginLeadingAttributeId = 40019;
  static const UIA_MarginTopAttributeId = 40020;
  static const UIA_MarginTrailingAttributeId = 40021;
  static const UIA_OutlineStylesAttributeId = 40022;
  static const UIA_OverlineColorAttributeId = 40023;
  static const UIA_OverlineStyleAttributeId = 40024;
  static const UIA_StrikethroughColorAttributeId = 40025;
  static const UIA_StrikethroughStyleAttributeId = 40026;
  static const UIA_TabsAttributeId = 40027;
  static const UIA_TextFlowDirectionsAttributeId = 40028;
  static const UIA_UnderlineColorAttributeId = 40029;
  static const UIA_UnderlineStyleAttributeId = 40030;
  static const UIA_AnnotationTypesAttributeId = 40031;
  static const UIA_AnnotationObjectsAttributeId = 40032;
  static const UIA_StyleNameAttributeId = 40033;
  static const UIA_StyleIdAttributeId = 40034;
  static const UIA_LinkAttributeId = 40035;
  static const UIA_IsActiveAttributeId = 40036;
  static const UIA_SelectionActiveEndAttributeId = 40037;
  static const UIA_CaretPositionAttributeId = 40038;
  static const UIA_CaretBidiModeAttributeId = 40039;
  static const UIA_LineSpacingAttributeId = 40040;
  static const UIA_BeforeParagraphSpacingAttributeId =
      UIA_TEXTATTRIBUTE_ID(40041);
  static const UIA_AfterParagraphSpacingAttributeId =
      UIA_TEXTATTRIBUTE_ID(40042);
  static const UIA_SayAsInterpretAsAttributeId = 40043;
}

/// {@category enum}
extension type const UNMAP_VIEW_OF_FILE_FLAGS(int _) implements int {
  static const MEM_UNMAP_NONE = 0;
  static const MEM_UNMAP_WITH_TRANSIENT_BOOST = 1;
  static const MEM_PRESERVE_PLACEHOLDER = 2;
}

/// {@category enum}
extension type const UPDATE_LAYERED_WINDOW_FLAGS(int _) implements int {
  static const ULW_ALPHA = 2;
  static const ULW_COLORKEY = 1;
  static const ULW_OPAQUE = 4;
  static const ULW_EX_NORESIZE = 8;
}

/// {@category enum}
extension type const USER_OBJECT_INFORMATION_INDEX(int _) implements int {
  static const UOI_FLAGS = 1;
  static const UOI_HEAPSIZE = 5;
  static const UOI_IO = 6;
  static const UOI_NAME = 2;
  static const UOI_TYPE = 3;
  static const UOI_USER_SID = 4;
}

/// {@category enum}
extension type const Uri_PROPERTY(int _) implements int {
  static const Uri_PROPERTY_ABSOLUTE_URI = 0;
  static const Uri_PROPERTY_STRING_START = 0;
  static const Uri_PROPERTY_AUTHORITY = 1;
  static const Uri_PROPERTY_DISPLAY_URI = 2;
  static const Uri_PROPERTY_DOMAIN = 3;
  static const Uri_PROPERTY_EXTENSION = 4;
  static const Uri_PROPERTY_FRAGMENT = 5;
  static const Uri_PROPERTY_HOST = 6;
  static const Uri_PROPERTY_PASSWORD = 7;
  static const Uri_PROPERTY_PATH = 8;
  static const Uri_PROPERTY_PATH_AND_QUERY = 9;
  static const Uri_PROPERTY_QUERY = 10;
  static const Uri_PROPERTY_RAW_URI = 11;
  static const Uri_PROPERTY_SCHEME_NAME = 12;
  static const Uri_PROPERTY_USER_INFO = 13;
  static const Uri_PROPERTY_USER_NAME = 14;
  static const Uri_PROPERTY_STRING_LAST = 14;
  static const Uri_PROPERTY_HOST_TYPE = 15;
  static const Uri_PROPERTY_DWORD_START = 15;
  static const Uri_PROPERTY_PORT = 16;
  static const Uri_PROPERTY_SCHEME = 17;
  static const Uri_PROPERTY_ZONE = 18;
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
  static const VARFLAG_FREADONLY = 1;

  /// The variable returns an object that is a source of events.
  static const VARFLAG_FSOURCE = 2;

  /// The variable supports data binding.
  static const VARFLAG_FBINDABLE = 4;

  /// When set, any attempt to directly change the property results in a call to
  /// <b>IPropertyNotifySink::OnRequestEdit</b>.
  static const VARFLAG_FREQUESTEDIT = 8;

  /// The variable is displayed to the user as bindable.
  static const VARFLAG_FDISPLAYBIND = 16;

  /// The variable is the single property that best represents the object.
  static const VARFLAG_FDEFAULTBIND = 32;

  /// The variable should not be displayed to the user in a browser, although it
  /// exists and is bindable.
  static const VARFLAG_FHIDDEN = 64;

  /// The variable should not be accessible from macro languages.
  static const VARFLAG_FRESTRICTED = 128;

  /// Permits an optimization in which the compiler looks for a member named
  /// "xyz" on the type of abc.
  static const VARFLAG_FDEFAULTCOLLELEM = 256;

  /// The variable is the default display in the user interface.
  static const VARFLAG_FUIDEFAULT = 512;

  /// The variable appears in an object browser, but not in a properties
  /// browser.
  static const VARFLAG_FNONBROWSABLE = 1024;

  /// Tags the interface as having default behaviors.
  static const VARFLAG_FREPLACEABLE = 2048;

  /// The variable is mapped as individual bindable properties.
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
  static const VAR_PERINSTANCE = 0;

  /// There is only one instance of the variable.
  static const VAR_STATIC = 1;

  /// The VARDESC describes a symbolic constant.
  static const VAR_CONST = 2;

  /// The variable can only be accessed through <a
  /// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nf-oaidl-idispatch-invoke">IDispatch::Invoke</a>.
  static const VAR_DISPATCH = 3;
}

/// {@category enum}
extension type const VAR_CHANGE_FLAGS(int _) implements int {
  static const VARIANT_NOVALUEPROP = 1;
  static const VARIANT_ALPHABOOL = 2;
  static const VARIANT_NOUSEROVERRIDE = 4;
  static const VARIANT_CALENDAR_HIJRI = 8;
  static const VARIANT_LOCALBOOL = 16;
  static const VARIANT_CALENDAR_THAI = 32;
  static const VARIANT_CALENDAR_GREGORIAN = 64;
  static const VARIANT_USE_NLS = 128;
}

/// {@category enum}
extension type const VER_FIND_FILE_FLAGS(int _) implements int {
  static const VFFF_ISSHAREDFILE = 1;
}

/// {@category enum}
extension type const VER_FIND_FILE_STATUS(int _) implements int {
  static const VFF_CURNEDEST = 1;
  static const VFF_FILEINUSE = 2;
  static const VFF_BUFFTOOSMALL = 4;
}

/// {@category enum}
extension type const VER_FLAGS(int _) implements int {
  static const VER_MINORVERSION = 1;
  static const VER_MAJORVERSION = 2;
  static const VER_BUILDNUMBER = 4;
  static const VER_PLATFORMID = 8;
  static const VER_SERVICEPACKMINOR = 16;
  static const VER_SERVICEPACKMAJOR = 32;
  static const VER_SUITENAME = 64;
  static const VER_PRODUCT_TYPE = 128;
}

/// {@category enum}
extension type const VER_INSTALL_FILE_FLAGS(int _) implements int {
  static const VIFF_FORCEINSTALL = 1;
  static const VIFF_DONTDELETEOLD = 2;
}

/// {@category enum}
extension type const VER_INSTALL_FILE_STATUS(int _) implements int {
  static const VIF_TEMPFILE = 1;
  static const VIF_MISMATCH = 2;
  static const VIF_SRCOLD = 4;
  static const VIF_DIFFLANG = 8;
  static const VIF_DIFFCODEPG = 16;
  static const VIF_DIFFTYPE = 32;
  static const VIF_WRITEPROT = 64;
  static const VIF_FILEINUSE = 128;
  static const VIF_OUTOFSPACE = 256;
  static const VIF_ACCESSVIOLATION = 512;
  static const VIF_SHARINGVIOLATION = 1024;
  static const VIF_CANNOTCREATE = 2048;
  static const VIF_CANNOTDELETE = 4096;
  static const VIF_CANNOTRENAME = 8192;
  static const VIF_CANNOTDELETECUR = 16384;
  static const VIF_OUTOFMEMORY = 32768;
  static const VIF_CANNOTREADSRC = 65536;
  static const VIF_CANNOTREADDST = 131072;
  static const VIF_BUFFTOOSMALL = 262144;
  static const VIF_CANNOTLOADLZ32 = 524288;
  static const VIF_CANNOTLOADCABINET = 1048576;
}

/// {@category enum}
extension type const VIRTUAL_ALLOCATION_TYPE(int _) implements int {
  static const MEM_COMMIT = 4096;
  static const MEM_RESERVE = 8192;
  static const MEM_RESET = 524288;
  static const MEM_RESET_UNDO = 16777216;
  static const MEM_REPLACE_PLACEHOLDER = 16384;
  static const MEM_LARGE_PAGES = 536870912;
  static const MEM_RESERVE_PLACEHOLDER = 262144;
  static const MEM_FREE = 65536;
}

/// {@category enum}
extension type const VIRTUAL_FREE_TYPE(int _) implements int {
  static const MEM_DECOMMIT = 16384;
  static const MEM_RELEASE = 32768;
}

/// {@category enum}
extension type const VIRTUAL_KEY(int _) implements int {
  static const VK_0 = 48;
  static const VK_1 = 49;
  static const VK_2 = 50;
  static const VK_3 = 51;
  static const VK_4 = 52;
  static const VK_5 = 53;
  static const VK_6 = 54;
  static const VK_7 = 55;
  static const VK_8 = 56;
  static const VK_9 = 57;
  static const VK_A = 65;
  static const VK_B = 66;
  static const VK_C = 67;
  static const VK_D = 68;
  static const VK_E = 69;
  static const VK_F = 70;
  static const VK_G = 71;
  static const VK_H = 72;
  static const VK_I = 73;
  static const VK_J = 74;
  static const VK_K = 75;
  static const VK_L = 76;
  static const VK_M = 77;
  static const VK_N = 78;
  static const VK_O = 79;
  static const VK_P = 80;
  static const VK_Q = 81;
  static const VK_R = 82;
  static const VK_S = 83;
  static const VK_T = 84;
  static const VK_U = 85;
  static const VK_V = 86;
  static const VK_W = 87;
  static const VK_X = 88;
  static const VK_Y = 89;
  static const VK_Z = 90;
  static const VK_ABNT_C1 = 193;
  static const VK_ABNT_C2 = 194;
  static const VK_DBE_ALPHANUMERIC = 240;
  static const VK_DBE_CODEINPUT = 250;
  static const VK_DBE_DBCSCHAR = 244;
  static const VK_DBE_DETERMINESTRING = 252;
  static const VK_DBE_ENTERDLGCONVERSIONMODE = 253;
  static const VK_DBE_ENTERIMECONFIGMODE = 248;
  static const VK_DBE_ENTERWORDREGISTERMODE = 247;
  static const VK_DBE_FLUSHSTRING = 249;
  static const VK_DBE_HIRAGANA = 242;
  static const VK_DBE_KATAKANA = 241;
  static const VK_DBE_NOCODEINPUT = 251;
  static const VK_DBE_NOROMAN = 246;
  static const VK_DBE_ROMAN = 245;
  static const VK_DBE_SBCSCHAR = 243;
  static const VK__none_ = 255;
  static const VK_LBUTTON = 1;
  static const VK_RBUTTON = 2;
  static const VK_CANCEL = 3;
  static const VK_MBUTTON = 4;
  static const VK_XBUTTON1 = 5;
  static const VK_XBUTTON2 = 6;
  static const VK_BACK = 8;
  static const VK_TAB = 9;
  static const VK_CLEAR = 12;
  static const VK_RETURN = 13;
  static const VK_SHIFT = 16;
  static const VK_CONTROL = 17;
  static const VK_MENU = 18;
  static const VK_PAUSE = 19;
  static const VK_CAPITAL = 20;
  static const VK_KANA = 21;
  static const VK_HANGEUL = 21;
  static const VK_HANGUL = 21;
  static const VK_IME_ON = 22;
  static const VK_JUNJA = 23;
  static const VK_FINAL = 24;
  static const VK_HANJA = 25;
  static const VK_KANJI = 25;
  static const VK_IME_OFF = 26;
  static const VK_ESCAPE = 27;
  static const VK_CONVERT = 28;
  static const VK_NONCONVERT = 29;
  static const VK_ACCEPT = 30;
  static const VK_MODECHANGE = 31;
  static const VK_SPACE = 32;
  static const VK_PRIOR = 33;
  static const VK_NEXT = 34;
  static const VK_END = 35;
  static const VK_HOME = 36;
  static const VK_LEFT = 37;
  static const VK_UP = 38;
  static const VK_RIGHT = 39;
  static const VK_DOWN = 40;
  static const VK_SELECT = 41;
  static const VK_PRINT = 42;
  static const VK_EXECUTE = 43;
  static const VK_SNAPSHOT = 44;
  static const VK_INSERT = 45;
  static const VK_DELETE = 46;
  static const VK_HELP = 47;
  static const VK_LWIN = 91;
  static const VK_RWIN = 92;
  static const VK_APPS = 93;
  static const VK_SLEEP = 95;
  static const VK_NUMPAD0 = 96;
  static const VK_NUMPAD1 = 97;
  static const VK_NUMPAD2 = 98;
  static const VK_NUMPAD3 = 99;
  static const VK_NUMPAD4 = 100;
  static const VK_NUMPAD5 = 101;
  static const VK_NUMPAD6 = 102;
  static const VK_NUMPAD7 = 103;
  static const VK_NUMPAD8 = 104;
  static const VK_NUMPAD9 = 105;
  static const VK_MULTIPLY = 106;
  static const VK_ADD = 107;
  static const VK_SEPARATOR = 108;
  static const VK_SUBTRACT = 109;
  static const VK_DECIMAL = 110;
  static const VK_DIVIDE = 111;
  static const VK_F1 = 112;
  static const VK_F2 = 113;
  static const VK_F3 = 114;
  static const VK_F4 = 115;
  static const VK_F5 = 116;
  static const VK_F6 = 117;
  static const VK_F7 = 118;
  static const VK_F8 = 119;
  static const VK_F9 = 120;
  static const VK_F10 = 121;
  static const VK_F11 = 122;
  static const VK_F12 = 123;
  static const VK_F13 = 124;
  static const VK_F14 = 125;
  static const VK_F15 = 126;
  static const VK_F16 = 127;
  static const VK_F17 = 128;
  static const VK_F18 = 129;
  static const VK_F19 = 130;
  static const VK_F20 = 131;
  static const VK_F21 = 132;
  static const VK_F22 = 133;
  static const VK_F23 = 134;
  static const VK_F24 = 135;
  static const VK_NAVIGATION_VIEW = 136;
  static const VK_NAVIGATION_MENU = 137;
  static const VK_NAVIGATION_UP = 138;
  static const VK_NAVIGATION_DOWN = 139;
  static const VK_NAVIGATION_LEFT = 140;
  static const VK_NAVIGATION_RIGHT = 141;
  static const VK_NAVIGATION_ACCEPT = 142;
  static const VK_NAVIGATION_CANCEL = 143;
  static const VK_NUMLOCK = 144;
  static const VK_SCROLL = 145;
  static const VK_OEM_NEC_EQUAL = 146;
  static const VK_OEM_FJ_JISHO = 146;
  static const VK_OEM_FJ_MASSHOU = 147;
  static const VK_OEM_FJ_TOUROKU = 148;
  static const VK_OEM_FJ_LOYA = 149;
  static const VK_OEM_FJ_ROYA = 150;
  static const VK_LSHIFT = 160;
  static const VK_RSHIFT = 161;
  static const VK_LCONTROL = 162;
  static const VK_RCONTROL = 163;
  static const VK_LMENU = 164;
  static const VK_RMENU = 165;
  static const VK_BROWSER_BACK = 166;
  static const VK_BROWSER_FORWARD = 167;
  static const VK_BROWSER_REFRESH = 168;
  static const VK_BROWSER_STOP = 169;
  static const VK_BROWSER_SEARCH = 170;
  static const VK_BROWSER_FAVORITES = 171;
  static const VK_BROWSER_HOME = 172;
  static const VK_VOLUME_MUTE = 173;
  static const VK_VOLUME_DOWN = 174;
  static const VK_VOLUME_UP = 175;
  static const VK_MEDIA_NEXT_TRACK = 176;
  static const VK_MEDIA_PREV_TRACK = 177;
  static const VK_MEDIA_STOP = 178;
  static const VK_MEDIA_PLAY_PAUSE = 179;
  static const VK_LAUNCH_MAIL = 180;
  static const VK_LAUNCH_MEDIA_SELECT = 181;
  static const VK_LAUNCH_APP1 = 182;
  static const VK_LAUNCH_APP2 = 183;
  static const VK_OEM_1 = 186;
  static const VK_OEM_PLUS = 187;
  static const VK_OEM_COMMA = 188;
  static const VK_OEM_MINUS = 189;
  static const VK_OEM_PERIOD = 190;
  static const VK_OEM_2 = 191;
  static const VK_OEM_3 = 192;
  static const VK_GAMEPAD_A = 195;
  static const VK_GAMEPAD_B = 196;
  static const VK_GAMEPAD_X = 197;
  static const VK_GAMEPAD_Y = 198;
  static const VK_GAMEPAD_RIGHT_SHOULDER = 199;
  static const VK_GAMEPAD_LEFT_SHOULDER = 200;
  static const VK_GAMEPAD_LEFT_TRIGGER = 201;
  static const VK_GAMEPAD_RIGHT_TRIGGER = 202;
  static const VK_GAMEPAD_DPAD_UP = 203;
  static const VK_GAMEPAD_DPAD_DOWN = 204;
  static const VK_GAMEPAD_DPAD_LEFT = 205;
  static const VK_GAMEPAD_DPAD_RIGHT = 206;
  static const VK_GAMEPAD_MENU = 207;
  static const VK_GAMEPAD_VIEW = 208;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON = 209;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON = 210;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_UP = 211;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_DOWN = 212;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT = 213;
  static const VK_GAMEPAD_LEFT_THUMBSTICK_LEFT = 214;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_UP = 215;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN = 216;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT = 217;
  static const VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT = 218;
  static const VK_OEM_4 = 219;
  static const VK_OEM_5 = 220;
  static const VK_OEM_6 = 221;
  static const VK_OEM_7 = 222;
  static const VK_OEM_8 = 223;
  static const VK_OEM_AX = 225;
  static const VK_OEM_102 = 226;
  static const VK_ICO_HELP = 227;
  static const VK_ICO_00 = 228;
  static const VK_PROCESSKEY = 229;
  static const VK_ICO_CLEAR = 230;
  static const VK_PACKET = 231;
  static const VK_OEM_RESET = 233;
  static const VK_OEM_JUMP = 234;
  static const VK_OEM_PA1 = 235;
  static const VK_OEM_PA2 = 236;
  static const VK_OEM_PA3 = 237;
  static const VK_OEM_WSCTRL = 238;
  static const VK_OEM_CUSEL = 239;
  static const VK_OEM_ATTN = 240;
  static const VK_OEM_FINISH = 241;
  static const VK_OEM_COPY = 242;
  static const VK_OEM_AUTO = 243;
  static const VK_OEM_ENLW = 244;
  static const VK_OEM_BACKTAB = 245;
  static const VK_ATTN = 246;
  static const VK_CRSEL = 247;
  static const VK_EXSEL = 248;
  static const VK_EREOF = 249;
  static const VK_PLAY = 250;
  static const VK_ZOOM = 251;
  static const VK_NONAME = 252;
  static const VK_PA1 = 253;
  static const VK_OEM_CLEAR = 254;
}

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_FLAGS(int _) implements int {
  static const VS_FF_DEBUG = 1;
  static const VS_FF_PRERELEASE = 2;
  static const VS_FF_PATCHED = 4;
  static const VS_FF_PRIVATEBUILD = 8;
  static const VS_FF_INFOINFERRED = 16;
  static const VS_FF_SPECIALBUILD = 32;
}

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_OS(int _) implements int {
  static const VOS_UNKNOWN = 0;
  static const VOS_DOS = 65536;
  static const VOS_OS216 = 131072;
  static const VOS_OS232 = 196608;
  static const VOS_NT = 262144;
  static const VOS_WINCE = 327680;
  static const VOS__BASE = 0;
  static const VOS__WINDOWS16 = 1;
  static const VOS__PM16 = 2;
  static const VOS__PM32 = 3;
  static const VOS__WINDOWS32 = 4;
  static const VOS_DOS_WINDOWS16 = 65537;
  static const VOS_DOS_WINDOWS32 = 65540;
  static const VOS_OS216_PM16 = 131074;
  static const VOS_OS232_PM32 = 196611;
  static const VOS_NT_WINDOWS32 = 262148;
}

/// {@category enum}
extension type const WAIT_EVENT(int _) implements int {
  static const WAIT_OBJECT_0 = 0;
  static const WAIT_ABANDONED = 128;
  static const WAIT_ABANDONED_0 = 128;
  static const WAIT_IO_COMPLETION = 192;
  static const WAIT_TIMEOUT = 258;
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
  static const WBEM_COMPARISON_INCLUDE_ALL = 0;

  /// Ignore all qualifiers (including <b>Key</b> and <b>Dynamic</b>) in
  /// comparison.
  static const WBEM_FLAG_IGNORE_QUALIFIERS = 1;

  /// Ignore the source of the objects, namely the server and the namespace they
  /// came from, in comparison to other objects.
  static const WBEM_FLAG_IGNORE_OBJECT_SOURCE = 2;

  /// Ignore default values of properties.
  static const WBEM_FLAG_IGNORE_DEFAULT_VALUES = 4;

  /// Assume that the objects being compared are instances of the same class.
  static const WBEM_FLAG_IGNORE_CLASS = 8;

  /// Compare string values in a case-insensitive manner.
  static const WBEM_FLAG_IGNORE_CASE = 16;

  /// Ignore qualifier flavors.
  static const WBEM_FLAG_IGNORE_FLAVOR = 32;
}

/// Contains flags used with the IWbemClassObject::GetNames method.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/ne-wbemcli-wbem_condition_flag_type>.
///
/// {@category enum}
extension type const WBEM_CONDITION_FLAG_TYPE(int _) implements int {
  static const WBEM_FLAG_ALWAYS = 0;

  static const WBEM_FLAG_ONLY_IF_TRUE = 1;

  static const WBEM_FLAG_ONLY_IF_FALSE = 2;

  static const WBEM_FLAG_ONLY_IF_IDENTICAL = 3;

  static const WBEM_MASK_PRIMARY_CONDITION = 3;

  static const WBEM_FLAG_KEYS_ONLY = 4;

  static const WBEM_FLAG_REFS_ONLY = 8;

  static const WBEM_FLAG_LOCAL_ONLY = 16;

  static const WBEM_FLAG_PROPAGATED_ONLY = 32;

  static const WBEM_FLAG_SYSTEM_ONLY = 48;

  static const WBEM_FLAG_NONSYSTEM_ONLY = 64;

  static const WBEM_MASK_CONDITION_ORIGIN = 112;

  static const WBEM_FLAG_CLASS_OVERRIDES_ONLY = 256;

  static const WBEM_FLAG_CLASS_LOCAL_AND_OVERRIDES =
      WBEM_CONDITION_FLAG_TYPE(512);

  static const WBEM_MASK_CLASS_CONDITION = 768;
}

/// {@category enum}
extension type const WIN32_ERROR(int _) implements int {
  static const NO_ERROR = 0;
  static const ERROR_EXPECTED_SECTION_NAME = 3758096384;
  static const ERROR_BAD_SECTION_NAME_LINE = 3758096385;
  static const ERROR_SECTION_NAME_TOO_LONG = 3758096386;
  static const ERROR_GENERAL_SYNTAX = 3758096387;
  static const ERROR_WRONG_INF_STYLE = 3758096640;
  static const ERROR_SECTION_NOT_FOUND = 3758096641;
  static const ERROR_LINE_NOT_FOUND = 3758096642;
  static const ERROR_NO_BACKUP = 3758096643;
  static const ERROR_NO_ASSOCIATED_CLASS = 3758096896;
  static const ERROR_CLASS_MISMATCH = 3758096897;
  static const ERROR_DUPLICATE_FOUND = 3758096898;
  static const ERROR_NO_DRIVER_SELECTED = 3758096899;
  static const ERROR_KEY_DOES_NOT_EXIST = 3758096900;
  static const ERROR_INVALID_DEVINST_NAME = 3758096901;
  static const ERROR_INVALID_CLASS = 3758096902;
  static const ERROR_DEVINST_ALREADY_EXISTS = 3758096903;
  static const ERROR_DEVINFO_NOT_REGISTERED = 3758096904;
  static const ERROR_INVALID_REG_PROPERTY = 3758096905;
  static const ERROR_NO_INF = 3758096906;
  static const ERROR_NO_SUCH_DEVINST = 3758096907;
  static const ERROR_CANT_LOAD_CLASS_ICON = 3758096908;
  static const ERROR_INVALID_CLASS_INSTALLER = 3758096909;
  static const ERROR_DI_DO_DEFAULT = 3758096910;
  static const ERROR_DI_NOFILECOPY = 3758096911;
  static const ERROR_INVALID_HWPROFILE = 3758096912;
  static const ERROR_NO_DEVICE_SELECTED = 3758096913;
  static const ERROR_DEVINFO_LIST_LOCKED = 3758096914;
  static const ERROR_DEVINFO_DATA_LOCKED = 3758096915;
  static const ERROR_DI_BAD_PATH = 3758096916;
  static const ERROR_NO_CLASSINSTALL_PARAMS = 3758096917;
  static const ERROR_FILEQUEUE_LOCKED = 3758096918;
  static const ERROR_BAD_SERVICE_INSTALLSECT = 3758096919;
  static const ERROR_NO_CLASS_DRIVER_LIST = 3758096920;
  static const ERROR_NO_ASSOCIATED_SERVICE = 3758096921;
  static const ERROR_NO_DEFAULT_DEVICE_INTERFACE = 3758096922;
  static const ERROR_DEVICE_INTERFACE_ACTIVE = 3758096923;
  static const ERROR_DEVICE_INTERFACE_REMOVED = 3758096924;
  static const ERROR_BAD_INTERFACE_INSTALLSECT = 3758096925;
  static const ERROR_NO_SUCH_INTERFACE_CLASS = 3758096926;
  static const ERROR_INVALID_REFERENCE_STRING = 3758096927;
  static const ERROR_INVALID_MACHINENAME = 3758096928;
  static const ERROR_REMOTE_COMM_FAILURE = 3758096929;
  static const ERROR_MACHINE_UNAVAILABLE = 3758096930;
  static const ERROR_NO_CONFIGMGR_SERVICES = 3758096931;
  static const ERROR_INVALID_PROPPAGE_PROVIDER = 3758096932;
  static const ERROR_NO_SUCH_DEVICE_INTERFACE = 3758096933;
  static const ERROR_DI_POSTPROCESSING_REQUIRED = 3758096934;
  static const ERROR_INVALID_COINSTALLER = 3758096935;
  static const ERROR_NO_COMPAT_DRIVERS = 3758096936;
  static const ERROR_NO_DEVICE_ICON = 3758096937;
  static const ERROR_INVALID_INF_LOGCONFIG = 3758096938;
  static const ERROR_DI_DONT_INSTALL = 3758096939;
  static const ERROR_INVALID_FILTER_DRIVER = 3758096940;
  static const ERROR_NON_WINDOWS_NT_DRIVER = 3758096941;
  static const ERROR_NON_WINDOWS_DRIVER = 3758096942;
  static const ERROR_NO_CATALOG_FOR_OEM_INF = 3758096943;
  static const ERROR_DEVINSTALL_QUEUE_NONNATIVE = 3758096944;
  static const ERROR_NOT_DISABLEABLE = 3758096945;
  static const ERROR_CANT_REMOVE_DEVINST = 3758096946;
  static const ERROR_INVALID_TARGET = 3758096947;
  static const ERROR_DRIVER_NONNATIVE = 3758096948;
  static const ERROR_IN_WOW64 = 3758096949;
  static const ERROR_SET_SYSTEM_RESTORE_POINT = 3758096950;
  static const ERROR_SCE_DISABLED = 3758096952;
  static const ERROR_UNKNOWN_EXCEPTION = 3758096953;
  static const ERROR_PNP_REGISTRY_ERROR = 3758096954;
  static const ERROR_REMOTE_REQUEST_UNSUPPORTED = 3758096955;
  static const ERROR_NOT_AN_INSTALLED_OEM_INF = 3758096956;
  static const ERROR_INF_IN_USE_BY_DEVICES = 3758096957;
  static const ERROR_DI_FUNCTION_OBSOLETE = 3758096958;
  static const ERROR_NO_AUTHENTICODE_CATALOG = 3758096959;
  static const ERROR_AUTHENTICODE_DISALLOWED = 3758096960;
  static const ERROR_AUTHENTICODE_TRUSTED_PUBLISHER = 3758096961;
  static const ERROR_AUTHENTICODE_TRUST_NOT_ESTABLISHED =
      WIN32_ERROR(3758096962);
  static const ERROR_AUTHENTICODE_PUBLISHER_NOT_TRUSTED =
      WIN32_ERROR(3758096963);
  static const ERROR_SIGNATURE_OSATTRIBUTE_MISMATCH = 3758096964;
  static const ERROR_ONLY_VALIDATE_VIA_AUTHENTICODE = 3758096965;
  static const ERROR_DEVICE_INSTALLER_NOT_READY = 3758096966;
  static const ERROR_DRIVER_STORE_ADD_FAILED = 3758096967;
  static const ERROR_DEVICE_INSTALL_BLOCKED = 3758096968;
  static const ERROR_DRIVER_INSTALL_BLOCKED = 3758096969;
  static const ERROR_WRONG_INF_TYPE = 3758096970;
  static const ERROR_FILE_HASH_NOT_IN_CATALOG = 3758096971;
  static const ERROR_DRIVER_STORE_DELETE_FAILED = 3758096972;
  static const ERROR_UNRECOVERABLE_STACK_OVERFLOW = 3758097152;
  static const ERROR_NO_DEFAULT_INTERFACE_DEVICE = 3758096922;
  static const ERROR_INTERFACE_DEVICE_ACTIVE = 3758096923;
  static const ERROR_INTERFACE_DEVICE_REMOVED = 3758096924;
  static const ERROR_NO_SUCH_INTERFACE_DEVICE = 3758096933;
  static const ERROR_NOT_INSTALLED = 3758100480;
  static const ERROR_SUCCESS = 0;
  static const ERROR_INVALID_FUNCTION = 1;
  static const ERROR_FILE_NOT_FOUND = 2;
  static const ERROR_PATH_NOT_FOUND = 3;
  static const ERROR_TOO_MANY_OPEN_FILES = 4;
  static const ERROR_ACCESS_DENIED = 5;
  static const ERROR_INVALID_HANDLE = 6;
  static const ERROR_ARENA_TRASHED = 7;
  static const ERROR_NOT_ENOUGH_MEMORY = 8;
  static const ERROR_INVALID_BLOCK = 9;
  static const ERROR_BAD_ENVIRONMENT = 10;
  static const ERROR_BAD_FORMAT = 11;
  static const ERROR_INVALID_ACCESS = 12;
  static const ERROR_INVALID_DATA = 13;
  static const ERROR_OUTOFMEMORY = 14;
  static const ERROR_INVALID_DRIVE = 15;
  static const ERROR_CURRENT_DIRECTORY = 16;
  static const ERROR_NOT_SAME_DEVICE = 17;
  static const ERROR_NO_MORE_FILES = 18;
  static const ERROR_WRITE_PROTECT = 19;
  static const ERROR_BAD_UNIT = 20;
  static const ERROR_NOT_READY = 21;
  static const ERROR_BAD_COMMAND = 22;
  static const ERROR_CRC = 23;
  static const ERROR_BAD_LENGTH = 24;
  static const ERROR_SEEK = 25;
  static const ERROR_NOT_DOS_DISK = 26;
  static const ERROR_SECTOR_NOT_FOUND = 27;
  static const ERROR_OUT_OF_PAPER = 28;
  static const ERROR_WRITE_FAULT = 29;
  static const ERROR_READ_FAULT = 30;
  static const ERROR_GEN_FAILURE = 31;
  static const ERROR_SHARING_VIOLATION = 32;
  static const ERROR_LOCK_VIOLATION = 33;
  static const ERROR_WRONG_DISK = 34;
  static const ERROR_SHARING_BUFFER_EXCEEDED = 36;
  static const ERROR_HANDLE_EOF = 38;
  static const ERROR_HANDLE_DISK_FULL = 39;
  static const ERROR_NOT_SUPPORTED = 50;
  static const ERROR_REM_NOT_LIST = 51;
  static const ERROR_DUP_NAME = 52;
  static const ERROR_BAD_NETPATH = 53;
  static const ERROR_NETWORK_BUSY = 54;
  static const ERROR_DEV_NOT_EXIST = 55;
  static const ERROR_TOO_MANY_CMDS = 56;
  static const ERROR_ADAP_HDW_ERR = 57;
  static const ERROR_BAD_NET_RESP = 58;
  static const ERROR_UNEXP_NET_ERR = 59;
  static const ERROR_BAD_REM_ADAP = 60;
  static const ERROR_PRINTQ_FULL = 61;
  static const ERROR_NO_SPOOL_SPACE = 62;
  static const ERROR_PRINT_CANCELLED = 63;
  static const ERROR_NETNAME_DELETED = 64;
  static const ERROR_NETWORK_ACCESS_DENIED = 65;
  static const ERROR_BAD_DEV_TYPE = 66;
  static const ERROR_BAD_NET_NAME = 67;
  static const ERROR_TOO_MANY_NAMES = 68;
  static const ERROR_TOO_MANY_SESS = 69;
  static const ERROR_SHARING_PAUSED = 70;
  static const ERROR_REQ_NOT_ACCEP = 71;
  static const ERROR_REDIR_PAUSED = 72;
  static const ERROR_FILE_EXISTS = 80;
  static const ERROR_CANNOT_MAKE = 82;
  static const ERROR_FAIL_I24 = 83;
  static const ERROR_OUT_OF_STRUCTURES = 84;
  static const ERROR_ALREADY_ASSIGNED = 85;
  static const ERROR_INVALID_PASSWORD = 86;
  static const ERROR_INVALID_PARAMETER = 87;
  static const ERROR_NET_WRITE_FAULT = 88;
  static const ERROR_NO_PROC_SLOTS = 89;
  static const ERROR_TOO_MANY_SEMAPHORES = 100;
  static const ERROR_EXCL_SEM_ALREADY_OWNED = 101;
  static const ERROR_SEM_IS_SET = 102;
  static const ERROR_TOO_MANY_SEM_REQUESTS = 103;
  static const ERROR_INVALID_AT_INTERRUPT_TIME = 104;
  static const ERROR_SEM_OWNER_DIED = 105;
  static const ERROR_SEM_USER_LIMIT = 106;
  static const ERROR_DISK_CHANGE = 107;
  static const ERROR_DRIVE_LOCKED = 108;
  static const ERROR_BROKEN_PIPE = 109;
  static const ERROR_OPEN_FAILED = 110;
  static const ERROR_BUFFER_OVERFLOW = 111;
  static const ERROR_DISK_FULL = 112;
  static const ERROR_NO_MORE_SEARCH_HANDLES = 113;
  static const ERROR_INVALID_TARGET_HANDLE = 114;
  static const ERROR_INVALID_CATEGORY = 117;
  static const ERROR_INVALID_VERIFY_SWITCH = 118;
  static const ERROR_BAD_DRIVER_LEVEL = 119;
  static const ERROR_CALL_NOT_IMPLEMENTED = 120;
  static const ERROR_SEM_TIMEOUT = 121;
  static const ERROR_INSUFFICIENT_BUFFER = 122;
  static const ERROR_INVALID_NAME = 123;
  static const ERROR_INVALID_LEVEL = 124;
  static const ERROR_NO_VOLUME_LABEL = 125;
  static const ERROR_MOD_NOT_FOUND = 126;
  static const ERROR_PROC_NOT_FOUND = 127;
  static const ERROR_WAIT_NO_CHILDREN = 128;
  static const ERROR_CHILD_NOT_COMPLETE = 129;
  static const ERROR_DIRECT_ACCESS_HANDLE = 130;
  static const ERROR_NEGATIVE_SEEK = 131;
  static const ERROR_SEEK_ON_DEVICE = 132;
  static const ERROR_IS_JOIN_TARGET = 133;
  static const ERROR_IS_JOINED = 134;
  static const ERROR_IS_SUBSTED = 135;
  static const ERROR_NOT_JOINED = 136;
  static const ERROR_NOT_SUBSTED = 137;
  static const ERROR_JOIN_TO_JOIN = 138;
  static const ERROR_SUBST_TO_SUBST = 139;
  static const ERROR_JOIN_TO_SUBST = 140;
  static const ERROR_SUBST_TO_JOIN = 141;
  static const ERROR_BUSY_DRIVE = 142;
  static const ERROR_SAME_DRIVE = 143;
  static const ERROR_DIR_NOT_ROOT = 144;
  static const ERROR_DIR_NOT_EMPTY = 145;
  static const ERROR_IS_SUBST_PATH = 146;
  static const ERROR_IS_JOIN_PATH = 147;
  static const ERROR_PATH_BUSY = 148;
  static const ERROR_IS_SUBST_TARGET = 149;
  static const ERROR_SYSTEM_TRACE = 150;
  static const ERROR_INVALID_EVENT_COUNT = 151;
  static const ERROR_TOO_MANY_MUXWAITERS = 152;
  static const ERROR_INVALID_LIST_FORMAT = 153;
  static const ERROR_LABEL_TOO_LONG = 154;
  static const ERROR_TOO_MANY_TCBS = 155;
  static const ERROR_SIGNAL_REFUSED = 156;
  static const ERROR_DISCARDED = 157;
  static const ERROR_NOT_LOCKED = 158;
  static const ERROR_BAD_THREADID_ADDR = 159;
  static const ERROR_BAD_ARGUMENTS = 160;
  static const ERROR_BAD_PATHNAME = 161;
  static const ERROR_SIGNAL_PENDING = 162;
  static const ERROR_MAX_THRDS_REACHED = 164;
  static const ERROR_LOCK_FAILED = 167;
  static const ERROR_BUSY = 170;
  static const ERROR_DEVICE_SUPPORT_IN_PROGRESS = 171;
  static const ERROR_CANCEL_VIOLATION = 173;
  static const ERROR_ATOMIC_LOCKS_NOT_SUPPORTED = 174;
  static const ERROR_INVALID_SEGMENT_NUMBER = 180;
  static const ERROR_INVALID_ORDINAL = 182;
  static const ERROR_ALREADY_EXISTS = 183;
  static const ERROR_INVALID_FLAG_NUMBER = 186;
  static const ERROR_SEM_NOT_FOUND = 187;
  static const ERROR_INVALID_STARTING_CODESEG = 188;
  static const ERROR_INVALID_STACKSEG = 189;
  static const ERROR_INVALID_MODULETYPE = 190;
  static const ERROR_INVALID_EXE_SIGNATURE = 191;
  static const ERROR_EXE_MARKED_INVALID = 192;
  static const ERROR_BAD_EXE_FORMAT = 193;
  static const ERROR_ITERATED_DATA_EXCEEDS_64k = 194;
  static const ERROR_INVALID_MINALLOCSIZE = 195;
  static const ERROR_DYNLINK_FROM_INVALID_RING = 196;
  static const ERROR_IOPL_NOT_ENABLED = 197;
  static const ERROR_INVALID_SEGDPL = 198;
  static const ERROR_AUTODATASEG_EXCEEDS_64k = 199;
  static const ERROR_RING2SEG_MUST_BE_MOVABLE = 200;
  static const ERROR_RELOC_CHAIN_XEEDS_SEGLIM = 201;
  static const ERROR_INFLOOP_IN_RELOC_CHAIN = 202;
  static const ERROR_ENVVAR_NOT_FOUND = 203;
  static const ERROR_NO_SIGNAL_SENT = 205;
  static const ERROR_FILENAME_EXCED_RANGE = 206;
  static const ERROR_RING2_STACK_IN_USE = 207;
  static const ERROR_META_EXPANSION_TOO_LONG = 208;
  static const ERROR_INVALID_SIGNAL_NUMBER = 209;
  static const ERROR_THREAD_1_INACTIVE = 210;
  static const ERROR_LOCKED = 212;
  static const ERROR_TOO_MANY_MODULES = 214;
  static const ERROR_NESTING_NOT_ALLOWED = 215;
  static const ERROR_EXE_MACHINE_TYPE_MISMATCH = 216;
  static const ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY = 217;
  static const ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY = 218;
  static const ERROR_FILE_CHECKED_OUT = 220;
  static const ERROR_CHECKOUT_REQUIRED = 221;
  static const ERROR_BAD_FILE_TYPE = 222;
  static const ERROR_FILE_TOO_LARGE = 223;
  static const ERROR_FORMS_AUTH_REQUIRED = 224;
  static const ERROR_VIRUS_INFECTED = 225;
  static const ERROR_VIRUS_DELETED = 226;
  static const ERROR_PIPE_LOCAL = 229;
  static const ERROR_BAD_PIPE = 230;
  static const ERROR_PIPE_BUSY = 231;
  static const ERROR_NO_DATA = 232;
  static const ERROR_PIPE_NOT_CONNECTED = 233;
  static const ERROR_MORE_DATA = 234;
  static const ERROR_NO_WORK_DONE = 235;
  static const ERROR_VC_DISCONNECTED = 240;
  static const ERROR_INVALID_EA_NAME = 254;
  static const ERROR_EA_LIST_INCONSISTENT = 255;
  static const ERROR_NO_MORE_ITEMS = 259;
  static const ERROR_CANNOT_COPY = 266;
  static const ERROR_DIRECTORY = 267;
  static const ERROR_EAS_DIDNT_FIT = 275;
  static const ERROR_EA_FILE_CORRUPT = 276;
  static const ERROR_EA_TABLE_FULL = 277;
  static const ERROR_INVALID_EA_HANDLE = 278;
  static const ERROR_EAS_NOT_SUPPORTED = 282;
  static const ERROR_NOT_OWNER = 288;
  static const ERROR_TOO_MANY_POSTS = 298;
  static const ERROR_PARTIAL_COPY = 299;
  static const ERROR_OPLOCK_NOT_GRANTED = 300;
  static const ERROR_INVALID_OPLOCK_PROTOCOL = 301;
  static const ERROR_DISK_TOO_FRAGMENTED = 302;
  static const ERROR_DELETE_PENDING = 303;
  static const ERROR_INCOMPATIBLE_WITH_GLOBAL_SHORT_NAME_REGISTRY_SETTING =
      WIN32_ERROR(304);
  static const ERROR_SHORT_NAMES_NOT_ENABLED_ON_VOLUME = 305;
  static const ERROR_SECURITY_STREAM_IS_INCONSISTENT = 306;
  static const ERROR_INVALID_LOCK_RANGE = 307;
  static const ERROR_IMAGE_SUBSYSTEM_NOT_PRESENT = 308;
  static const ERROR_NOTIFICATION_GUID_ALREADY_DEFINED = 309;
  static const ERROR_INVALID_EXCEPTION_HANDLER = 310;
  static const ERROR_DUPLICATE_PRIVILEGES = 311;
  static const ERROR_NO_RANGES_PROCESSED = 312;
  static const ERROR_NOT_ALLOWED_ON_SYSTEM_FILE = 313;
  static const ERROR_DISK_RESOURCES_EXHAUSTED = 314;
  static const ERROR_INVALID_TOKEN = 315;
  static const ERROR_DEVICE_FEATURE_NOT_SUPPORTED = 316;
  static const ERROR_MR_MID_NOT_FOUND = 317;
  static const ERROR_SCOPE_NOT_FOUND = 318;
  static const ERROR_UNDEFINED_SCOPE = 319;
  static const ERROR_INVALID_CAP = 320;
  static const ERROR_DEVICE_UNREACHABLE = 321;
  static const ERROR_DEVICE_NO_RESOURCES = 322;
  static const ERROR_DATA_CHECKSUM_ERROR = 323;
  static const ERROR_INTERMIXED_KERNEL_EA_OPERATION = 324;
  static const ERROR_FILE_LEVEL_TRIM_NOT_SUPPORTED = 326;
  static const ERROR_OFFSET_ALIGNMENT_VIOLATION = 327;
  static const ERROR_INVALID_FIELD_IN_PARAMETER_LIST = 328;
  static const ERROR_OPERATION_IN_PROGRESS = 329;
  static const ERROR_BAD_DEVICE_PATH = 330;
  static const ERROR_TOO_MANY_DESCRIPTORS = 331;
  static const ERROR_SCRUB_DATA_DISABLED = 332;
  static const ERROR_NOT_REDUNDANT_STORAGE = 333;
  static const ERROR_RESIDENT_FILE_NOT_SUPPORTED = 334;
  static const ERROR_COMPRESSED_FILE_NOT_SUPPORTED = 335;
  static const ERROR_DIRECTORY_NOT_SUPPORTED = 336;
  static const ERROR_NOT_READ_FROM_COPY = 337;
  static const ERROR_FT_WRITE_FAILURE = 338;
  static const ERROR_FT_DI_SCAN_REQUIRED = 339;
  static const ERROR_INVALID_KERNEL_INFO_VERSION = 340;
  static const ERROR_INVALID_PEP_INFO_VERSION = 341;
  static const ERROR_OBJECT_NOT_EXTERNALLY_BACKED = 342;
  static const ERROR_EXTERNAL_BACKING_PROVIDER_UNKNOWN = 343;
  static const ERROR_COMPRESSION_NOT_BENEFICIAL = 344;
  static const ERROR_STORAGE_TOPOLOGY_ID_MISMATCH = 345;
  static const ERROR_BLOCKED_BY_PARENTAL_CONTROLS = 346;
  static const ERROR_BLOCK_TOO_MANY_REFERENCES = 347;
  static const ERROR_MARKED_TO_DISALLOW_WRITES = 348;
  static const ERROR_ENCLAVE_FAILURE = 349;
  static const ERROR_FAIL_NOACTION_REBOOT = 350;
  static const ERROR_FAIL_SHUTDOWN = 351;
  static const ERROR_FAIL_RESTART = 352;
  static const ERROR_MAX_SESSIONS_REACHED = 353;
  static const ERROR_NETWORK_ACCESS_DENIED_EDP = 354;
  static const ERROR_DEVICE_HINT_NAME_BUFFER_TOO_SMALL = 355;
  static const ERROR_EDP_POLICY_DENIES_OPERATION = 356;
  static const ERROR_EDP_DPL_POLICY_CANT_BE_SATISFIED = 357;
  static const ERROR_CLOUD_FILE_SYNC_ROOT_METADATA_CORRUPT = 358;
  static const ERROR_DEVICE_IN_MAINTENANCE = 359;
  static const ERROR_NOT_SUPPORTED_ON_DAX = 360;
  static const ERROR_DAX_MAPPING_EXISTS = 361;
  static const ERROR_CLOUD_FILE_PROVIDER_NOT_RUNNING = 362;
  static const ERROR_CLOUD_FILE_METADATA_CORRUPT = 363;
  static const ERROR_CLOUD_FILE_METADATA_TOO_LARGE = 364;
  static const ERROR_CLOUD_FILE_PROPERTY_BLOB_TOO_LARGE = 365;
  static const ERROR_CLOUD_FILE_PROPERTY_BLOB_CHECKSUM_MISMATCH =
      WIN32_ERROR(366);
  static const ERROR_CHILD_PROCESS_BLOCKED = 367;
  static const ERROR_STORAGE_LOST_DATA_PERSISTENCE = 368;
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_UNAVAILABLE = 369;
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_METADATA_CORRUPT =
      WIN32_ERROR(370);
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_BUSY = 371;
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_PROVIDER_UNKNOWN =
      WIN32_ERROR(372);
  static const ERROR_GDI_HANDLE_LEAK = 373;
  static const ERROR_CLOUD_FILE_TOO_MANY_PROPERTY_BLOBS = 374;
  static const ERROR_CLOUD_FILE_PROPERTY_VERSION_NOT_SUPPORTED =
      WIN32_ERROR(375);
  static const ERROR_NOT_A_CLOUD_FILE = 376;
  static const ERROR_CLOUD_FILE_NOT_IN_SYNC = 377;
  static const ERROR_CLOUD_FILE_ALREADY_CONNECTED = 378;
  static const ERROR_CLOUD_FILE_NOT_SUPPORTED = 379;
  static const ERROR_CLOUD_FILE_INVALID_REQUEST = 380;
  static const ERROR_CLOUD_FILE_READ_ONLY_VOLUME = 381;
  static const ERROR_CLOUD_FILE_CONNECTED_PROVIDER_ONLY = 382;
  static const ERROR_CLOUD_FILE_VALIDATION_FAILED = 383;
  static const ERROR_SMB1_NOT_AVAILABLE = 384;
  static const ERROR_FILE_SYSTEM_VIRTUALIZATION_INVALID_OPERATION =
      WIN32_ERROR(385);
  static const ERROR_CLOUD_FILE_AUTHENTICATION_FAILED = 386;
  static const ERROR_CLOUD_FILE_INSUFFICIENT_RESOURCES = 387;
  static const ERROR_CLOUD_FILE_NETWORK_UNAVAILABLE = 388;
  static const ERROR_CLOUD_FILE_UNSUCCESSFUL = 389;
  static const ERROR_CLOUD_FILE_NOT_UNDER_SYNC_ROOT = 390;
  static const ERROR_CLOUD_FILE_IN_USE = 391;
  static const ERROR_CLOUD_FILE_PINNED = 392;
  static const ERROR_CLOUD_FILE_REQUEST_ABORTED = 393;
  static const ERROR_CLOUD_FILE_PROPERTY_CORRUPT = 394;
  static const ERROR_CLOUD_FILE_ACCESS_DENIED = 395;
  static const ERROR_CLOUD_FILE_INCOMPATIBLE_HARDLINKS = 396;
  static const ERROR_CLOUD_FILE_PROPERTY_LOCK_CONFLICT = 397;
  static const ERROR_CLOUD_FILE_REQUEST_CANCELED = 398;
  static const ERROR_EXTERNAL_SYSKEY_NOT_SUPPORTED = 399;
  static const ERROR_THREAD_MODE_ALREADY_BACKGROUND = 400;
  static const ERROR_THREAD_MODE_NOT_BACKGROUND = 401;
  static const ERROR_PROCESS_MODE_ALREADY_BACKGROUND = 402;
  static const ERROR_PROCESS_MODE_NOT_BACKGROUND = 403;
  static const ERROR_CLOUD_FILE_PROVIDER_TERMINATED = 404;
  static const ERROR_NOT_A_CLOUD_SYNC_ROOT = 405;
  static const ERROR_FILE_PROTECTED_UNDER_DPL = 406;
  static const ERROR_VOLUME_NOT_CLUSTER_ALIGNED = 407;
  static const ERROR_NO_PHYSICALLY_ALIGNED_FREE_SPACE_FOUND = 408;
  static const ERROR_APPX_FILE_NOT_ENCRYPTED = 409;
  static const ERROR_RWRAW_ENCRYPTED_FILE_NOT_ENCRYPTED = 410;
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILEOFFSET =
      WIN32_ERROR(411);
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILERANGE =
      WIN32_ERROR(412);
  static const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_PARAMETER =
      WIN32_ERROR(413);
  static const ERROR_LINUX_SUBSYSTEM_NOT_PRESENT = 414;
  static const ERROR_FT_READ_FAILURE = 415;
  static const ERROR_STORAGE_RESERVE_ID_INVALID = 416;
  static const ERROR_STORAGE_RESERVE_DOES_NOT_EXIST = 417;
  static const ERROR_STORAGE_RESERVE_ALREADY_EXISTS = 418;
  static const ERROR_STORAGE_RESERVE_NOT_EMPTY = 419;
  static const ERROR_NOT_A_DAX_VOLUME = 420;
  static const ERROR_NOT_DAX_MAPPABLE = 421;
  static const ERROR_TIME_SENSITIVE_THREAD = 422;
  static const ERROR_DPL_NOT_SUPPORTED_FOR_USER = 423;
  static const ERROR_CASE_DIFFERING_NAMES_IN_DIR = 424;
  static const ERROR_FILE_NOT_SUPPORTED = 425;
  static const ERROR_CLOUD_FILE_REQUEST_TIMEOUT = 426;
  static const ERROR_NO_TASK_QUEUE = 427;
  static const ERROR_SRC_SRV_DLL_LOAD_FAILED = 428;
  static const ERROR_NOT_SUPPORTED_WITH_BTT = 429;
  static const ERROR_ENCRYPTION_DISABLED = 430;
  static const ERROR_ENCRYPTING_METADATA_DISALLOWED = 431;
  static const ERROR_CANT_CLEAR_ENCRYPTION_FLAG = 432;
  static const ERROR_NO_SUCH_DEVICE = 433;
  static const ERROR_CLOUD_FILE_DEHYDRATION_DISALLOWED = 434;
  static const ERROR_FILE_SNAP_IN_PROGRESS = 435;
  static const ERROR_FILE_SNAP_USER_SECTION_NOT_SUPPORTED = 436;
  static const ERROR_FILE_SNAP_MODIFY_NOT_SUPPORTED = 437;
  static const ERROR_FILE_SNAP_IO_NOT_COORDINATED = 438;
  static const ERROR_FILE_SNAP_UNEXPECTED_ERROR = 439;
  static const ERROR_FILE_SNAP_INVALID_PARAMETER = 440;
  static const ERROR_UNSATISFIED_DEPENDENCIES = 441;
  static const ERROR_CASE_SENSITIVE_PATH = 442;
  static const ERROR_UNEXPECTED_NTCACHEMANAGER_ERROR = 443;
  static const ERROR_LINUX_SUBSYSTEM_UPDATE_REQUIRED = 444;
  static const ERROR_DLP_POLICY_WARNS_AGAINST_OPERATION = 445;
  static const ERROR_DLP_POLICY_DENIES_OPERATION = 446;
  static const ERROR_SECURITY_DENIES_OPERATION = 447;
  static const ERROR_UNTRUSTED_MOUNT_POINT = 448;
  static const ERROR_DLP_POLICY_SILENTLY_FAIL = 449;
  static const ERROR_CAPAUTHZ_NOT_DEVUNLOCKED = 450;
  static const ERROR_CAPAUTHZ_CHANGE_TYPE = 451;
  static const ERROR_CAPAUTHZ_NOT_PROVISIONED = 452;
  static const ERROR_CAPAUTHZ_NOT_AUTHORIZED = 453;
  static const ERROR_CAPAUTHZ_NO_POLICY = 454;
  static const ERROR_CAPAUTHZ_DB_CORRUPTED = 455;
  static const ERROR_CAPAUTHZ_SCCD_INVALID_CATALOG = 456;
  static const ERROR_CAPAUTHZ_SCCD_NO_AUTH_ENTITY = 457;
  static const ERROR_CAPAUTHZ_SCCD_PARSE_ERROR = 458;
  static const ERROR_CAPAUTHZ_SCCD_DEV_MODE_REQUIRED = 459;
  static const ERROR_CAPAUTHZ_SCCD_NO_CAPABILITY_MATCH = 460;
  static const ERROR_CIMFS_IMAGE_CORRUPT = 470;
  static const ERROR_CIMFS_IMAGE_VERSION_NOT_SUPPORTED = 471;
  static const ERROR_STORAGE_STACK_ACCESS_DENIED = 472;
  static const ERROR_INSUFFICIENT_VIRTUAL_ADDR_RESOURCES = 473;
  static const ERROR_INDEX_OUT_OF_BOUNDS = 474;
  static const ERROR_CLOUD_FILE_US_MESSAGE_TIMEOUT = 475;
  static const ERROR_NOT_A_DEV_VOLUME = 476;
  static const ERROR_FS_GUID_MISMATCH = 477;
  static const ERROR_CANT_ATTACH_TO_DEV_VOLUME = 478;
  static const ERROR_INVALID_CONFIG_VALUE = 479;
  static const ERROR_PNP_QUERY_REMOVE_DEVICE_TIMEOUT = 480;
  static const ERROR_PNP_QUERY_REMOVE_RELATED_DEVICE_TIMEOUT = 481;
  static const ERROR_PNP_QUERY_REMOVE_UNRELATED_DEVICE_TIMEOUT =
      WIN32_ERROR(482);
  static const ERROR_DEVICE_HARDWARE_ERROR = 483;
  static const ERROR_INVALID_ADDRESS = 487;
  static const ERROR_HAS_SYSTEM_CRITICAL_FILES = 488;
  static const ERROR_ENCRYPTED_FILE_NOT_SUPPORTED = 489;
  static const ERROR_SPARSE_FILE_NOT_SUPPORTED = 490;
  static const ERROR_PAGEFILE_NOT_SUPPORTED = 491;
  static const ERROR_VOLUME_NOT_SUPPORTED = 492;
  static const ERROR_NOT_SUPPORTED_WITH_BYPASSIO = 493;
  static const ERROR_NO_BYPASSIO_DRIVER_SUPPORT = 494;
  static const ERROR_NOT_SUPPORTED_WITH_ENCRYPTION = 495;
  static const ERROR_NOT_SUPPORTED_WITH_COMPRESSION = 496;
  static const ERROR_NOT_SUPPORTED_WITH_REPLICATION = 497;
  static const ERROR_NOT_SUPPORTED_WITH_DEDUPLICATION = 498;
  static const ERROR_NOT_SUPPORTED_WITH_AUDITING = 499;
  static const ERROR_USER_PROFILE_LOAD = 500;
  static const ERROR_SESSION_KEY_TOO_SHORT = 501;
  static const ERROR_ACCESS_DENIED_APPDATA = 502;
  static const ERROR_NOT_SUPPORTED_WITH_MONITORING = 503;
  static const ERROR_NOT_SUPPORTED_WITH_SNAPSHOT = 504;
  static const ERROR_NOT_SUPPORTED_WITH_VIRTUALIZATION = 505;
  static const ERROR_BYPASSIO_FLT_NOT_SUPPORTED = 506;
  static const ERROR_DEVICE_RESET_REQUIRED = 507;
  static const ERROR_VOLUME_WRITE_ACCESS_DENIED = 508;
  static const ERROR_NOT_SUPPORTED_WITH_CACHED_HANDLE = 509;
  static const ERROR_FS_METADATA_INCONSISTENT = 510;
  static const ERROR_BLOCK_WEAK_REFERENCE_INVALID = 511;
  static const ERROR_BLOCK_SOURCE_WEAK_REFERENCE_INVALID = 512;
  static const ERROR_BLOCK_TARGET_WEAK_REFERENCE_INVALID = 513;
  static const ERROR_BLOCK_SHARED = 514;
  static const ERROR_VOLUME_UPGRADE_NOT_NEEDED = 515;
  static const ERROR_VOLUME_UPGRADE_PENDING = 516;
  static const ERROR_VOLUME_UPGRADE_DISABLED = 517;
  static const ERROR_VOLUME_UPGRADE_DISABLED_TILL_OS_DOWNGRADE_EXPIRED =
      WIN32_ERROR(518);
  static const ERROR_ARITHMETIC_OVERFLOW = 534;
  static const ERROR_PIPE_CONNECTED = 535;
  static const ERROR_PIPE_LISTENING = 536;
  static const ERROR_VERIFIER_STOP = 537;
  static const ERROR_ABIOS_ERROR = 538;
  static const ERROR_WX86_WARNING = 539;
  static const ERROR_WX86_ERROR = 540;
  static const ERROR_TIMER_NOT_CANCELED = 541;
  static const ERROR_UNWIND = 542;
  static const ERROR_BAD_STACK = 543;
  static const ERROR_INVALID_UNWIND_TARGET = 544;
  static const ERROR_INVALID_PORT_ATTRIBUTES = 545;
  static const ERROR_PORT_MESSAGE_TOO_LONG = 546;
  static const ERROR_INVALID_QUOTA_LOWER = 547;
  static const ERROR_DEVICE_ALREADY_ATTACHED = 548;
  static const ERROR_INSTRUCTION_MISALIGNMENT = 549;
  static const ERROR_PROFILING_NOT_STARTED = 550;
  static const ERROR_PROFILING_NOT_STOPPED = 551;
  static const ERROR_COULD_NOT_INTERPRET = 552;
  static const ERROR_PROFILING_AT_LIMIT = 553;
  static const ERROR_CANT_WAIT = 554;
  static const ERROR_CANT_TERMINATE_SELF = 555;
  static const ERROR_UNEXPECTED_MM_CREATE_ERR = 556;
  static const ERROR_UNEXPECTED_MM_MAP_ERROR = 557;
  static const ERROR_UNEXPECTED_MM_EXTEND_ERR = 558;
  static const ERROR_BAD_FUNCTION_TABLE = 559;
  static const ERROR_NO_GUID_TRANSLATION = 560;
  static const ERROR_INVALID_LDT_SIZE = 561;
  static const ERROR_INVALID_LDT_OFFSET = 563;
  static const ERROR_INVALID_LDT_DESCRIPTOR = 564;
  static const ERROR_TOO_MANY_THREADS = 565;
  static const ERROR_THREAD_NOT_IN_PROCESS = 566;
  static const ERROR_PAGEFILE_QUOTA_EXCEEDED = 567;
  static const ERROR_LOGON_SERVER_CONFLICT = 568;
  static const ERROR_SYNCHRONIZATION_REQUIRED = 569;
  static const ERROR_NET_OPEN_FAILED = 570;
  static const ERROR_IO_PRIVILEGE_FAILED = 571;
  static const ERROR_CONTROL_C_EXIT = 572;
  static const ERROR_MISSING_SYSTEMFILE = 573;
  static const ERROR_UNHANDLED_EXCEPTION = 574;
  static const ERROR_APP_INIT_FAILURE = 575;
  static const ERROR_PAGEFILE_CREATE_FAILED = 576;
  static const ERROR_INVALID_IMAGE_HASH = 577;
  static const ERROR_NO_PAGEFILE = 578;
  static const ERROR_ILLEGAL_FLOAT_CONTEXT = 579;
  static const ERROR_NO_EVENT_PAIR = 580;
  static const ERROR_DOMAIN_CTRLR_CONFIG_ERROR = 581;
  static const ERROR_ILLEGAL_CHARACTER = 582;
  static const ERROR_UNDEFINED_CHARACTER = 583;
  static const ERROR_FLOPPY_VOLUME = 584;
  static const ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT = 585;
  static const ERROR_BACKUP_CONTROLLER = 586;
  static const ERROR_MUTANT_LIMIT_EXCEEDED = 587;
  static const ERROR_FS_DRIVER_REQUIRED = 588;
  static const ERROR_CANNOT_LOAD_REGISTRY_FILE = 589;
  static const ERROR_DEBUG_ATTACH_FAILED = 590;
  static const ERROR_SYSTEM_PROCESS_TERMINATED = 591;
  static const ERROR_DATA_NOT_ACCEPTED = 592;
  static const ERROR_VDM_HARD_ERROR = 593;
  static const ERROR_DRIVER_CANCEL_TIMEOUT = 594;
  static const ERROR_REPLY_MESSAGE_MISMATCH = 595;
  static const ERROR_LOST_WRITEBEHIND_DATA = 596;
  static const ERROR_CLIENT_SERVER_PARAMETERS_INVALID = 597;
  static const ERROR_NOT_TINY_STREAM = 598;
  static const ERROR_STACK_OVERFLOW_READ = 599;
  static const ERROR_CONVERT_TO_LARGE = 600;
  static const ERROR_FOUND_OUT_OF_SCOPE = 601;
  static const ERROR_ALLOCATE_BUCKET = 602;
  static const ERROR_MARSHALL_OVERFLOW = 603;
  static const ERROR_INVALID_VARIANT = 604;
  static const ERROR_BAD_COMPRESSION_BUFFER = 605;
  static const ERROR_AUDIT_FAILED = 606;
  static const ERROR_TIMER_RESOLUTION_NOT_SET = 607;
  static const ERROR_INSUFFICIENT_LOGON_INFO = 608;
  static const ERROR_BAD_DLL_ENTRYPOINT = 609;
  static const ERROR_BAD_SERVICE_ENTRYPOINT = 610;
  static const ERROR_IP_ADDRESS_CONFLICT1 = 611;
  static const ERROR_IP_ADDRESS_CONFLICT2 = 612;
  static const ERROR_REGISTRY_QUOTA_LIMIT = 613;
  static const ERROR_NO_CALLBACK_ACTIVE = 614;
  static const ERROR_PWD_TOO_SHORT = 615;
  static const ERROR_PWD_TOO_RECENT = 616;
  static const ERROR_PWD_HISTORY_CONFLICT = 617;
  static const ERROR_UNSUPPORTED_COMPRESSION = 618;
  static const ERROR_INVALID_HW_PROFILE = 619;
  static const ERROR_INVALID_PLUGPLAY_DEVICE_PATH = 620;
  static const ERROR_QUOTA_LIST_INCONSISTENT = 621;
  static const ERROR_EVALUATION_EXPIRATION = 622;
  static const ERROR_ILLEGAL_DLL_RELOCATION = 623;
  static const ERROR_DLL_INIT_FAILED_LOGOFF = 624;
  static const ERROR_VALIDATE_CONTINUE = 625;
  static const ERROR_NO_MORE_MATCHES = 626;
  static const ERROR_RANGE_LIST_CONFLICT = 627;
  static const ERROR_SERVER_SID_MISMATCH = 628;
  static const ERROR_CANT_ENABLE_DENY_ONLY = 629;
  static const ERROR_FLOAT_MULTIPLE_FAULTS = 630;
  static const ERROR_FLOAT_MULTIPLE_TRAPS = 631;
  static const ERROR_NOINTERFACE = 632;
  static const ERROR_DRIVER_FAILED_SLEEP = 633;
  static const ERROR_CORRUPT_SYSTEM_FILE = 634;
  static const ERROR_COMMITMENT_MINIMUM = 635;
  static const ERROR_PNP_RESTART_ENUMERATION = 636;
  static const ERROR_SYSTEM_IMAGE_BAD_SIGNATURE = 637;
  static const ERROR_PNP_REBOOT_REQUIRED = 638;
  static const ERROR_INSUFFICIENT_POWER = 639;
  static const ERROR_MULTIPLE_FAULT_VIOLATION = 640;
  static const ERROR_SYSTEM_SHUTDOWN = 641;
  static const ERROR_PORT_NOT_SET = 642;
  static const ERROR_DS_VERSION_CHECK_FAILURE = 643;
  static const ERROR_RANGE_NOT_FOUND = 644;
  static const ERROR_NOT_SAFE_MODE_DRIVER = 646;
  static const ERROR_FAILED_DRIVER_ENTRY = 647;
  static const ERROR_DEVICE_ENUMERATION_ERROR = 648;
  static const ERROR_MOUNT_POINT_NOT_RESOLVED = 649;
  static const ERROR_INVALID_DEVICE_OBJECT_PARAMETER = 650;
  static const ERROR_MCA_OCCURED = 651;
  static const ERROR_DRIVER_DATABASE_ERROR = 652;
  static const ERROR_SYSTEM_HIVE_TOO_LARGE = 653;
  static const ERROR_DRIVER_FAILED_PRIOR_UNLOAD = 654;
  static const ERROR_VOLSNAP_PREPARE_HIBERNATE = 655;
  static const ERROR_HIBERNATION_FAILURE = 656;
  static const ERROR_PWD_TOO_LONG = 657;
  static const ERROR_FILE_SYSTEM_LIMITATION = 665;
  static const ERROR_ASSERTION_FAILURE = 668;
  static const ERROR_ACPI_ERROR = 669;
  static const ERROR_WOW_ASSERTION = 670;
  static const ERROR_PNP_BAD_MPS_TABLE = 671;
  static const ERROR_PNP_TRANSLATION_FAILED = 672;
  static const ERROR_PNP_IRQ_TRANSLATION_FAILED = 673;
  static const ERROR_PNP_INVALID_ID = 674;
  static const ERROR_WAKE_SYSTEM_DEBUGGER = 675;
  static const ERROR_HANDLES_CLOSED = 676;
  static const ERROR_EXTRANEOUS_INFORMATION = 677;
  static const ERROR_RXACT_COMMIT_NECESSARY = 678;
  static const ERROR_MEDIA_CHECK = 679;
  static const ERROR_GUID_SUBSTITUTION_MADE = 680;
  static const ERROR_STOPPED_ON_SYMLINK = 681;
  static const ERROR_LONGJUMP = 682;
  static const ERROR_PLUGPLAY_QUERY_VETOED = 683;
  static const ERROR_UNWIND_CONSOLIDATE = 684;
  static const ERROR_REGISTRY_HIVE_RECOVERED = 685;
  static const ERROR_DLL_MIGHT_BE_INSECURE = 686;
  static const ERROR_DLL_MIGHT_BE_INCOMPATIBLE = 687;
  static const ERROR_DBG_EXCEPTION_NOT_HANDLED = 688;
  static const ERROR_DBG_REPLY_LATER = 689;
  static const ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE = 690;
  static const ERROR_DBG_TERMINATE_THREAD = 691;
  static const ERROR_DBG_TERMINATE_PROCESS = 692;
  static const ERROR_DBG_CONTROL_C = 693;
  static const ERROR_DBG_PRINTEXCEPTION_C = 694;
  static const ERROR_DBG_RIPEXCEPTION = 695;
  static const ERROR_DBG_CONTROL_BREAK = 696;
  static const ERROR_DBG_COMMAND_EXCEPTION = 697;
  static const ERROR_OBJECT_NAME_EXISTS = 698;
  static const ERROR_THREAD_WAS_SUSPENDED = 699;
  static const ERROR_IMAGE_NOT_AT_BASE = 700;
  static const ERROR_RXACT_STATE_CREATED = 701;
  static const ERROR_SEGMENT_NOTIFICATION = 702;
  static const ERROR_BAD_CURRENT_DIRECTORY = 703;
  static const ERROR_FT_READ_RECOVERY_FROM_BACKUP = 704;
  static const ERROR_FT_WRITE_RECOVERY = 705;
  static const ERROR_IMAGE_MACHINE_TYPE_MISMATCH = 706;
  static const ERROR_RECEIVE_PARTIAL = 707;
  static const ERROR_RECEIVE_EXPEDITED = 708;
  static const ERROR_RECEIVE_PARTIAL_EXPEDITED = 709;
  static const ERROR_EVENT_DONE = 710;
  static const ERROR_EVENT_PENDING = 711;
  static const ERROR_CHECKING_FILE_SYSTEM = 712;
  static const ERROR_FATAL_APP_EXIT = 713;
  static const ERROR_PREDEFINED_HANDLE = 714;
  static const ERROR_WAS_UNLOCKED = 715;
  static const ERROR_SERVICE_NOTIFICATION = 716;
  static const ERROR_WAS_LOCKED = 717;
  static const ERROR_LOG_HARD_ERROR = 718;
  static const ERROR_ALREADY_WIN32 = 719;
  static const ERROR_IMAGE_MACHINE_TYPE_MISMATCH_EXE = 720;
  static const ERROR_NO_YIELD_PERFORMED = 721;
  static const ERROR_TIMER_RESUME_IGNORED = 722;
  static const ERROR_ARBITRATION_UNHANDLED = 723;
  static const ERROR_CARDBUS_NOT_SUPPORTED = 724;
  static const ERROR_MP_PROCESSOR_MISMATCH = 725;
  static const ERROR_HIBERNATED = 726;
  static const ERROR_RESUME_HIBERNATION = 727;
  static const ERROR_FIRMWARE_UPDATED = 728;
  static const ERROR_DRIVERS_LEAKING_LOCKED_PAGES = 729;
  static const ERROR_WAKE_SYSTEM = 730;
  static const ERROR_WAIT_1 = 731;
  static const ERROR_WAIT_2 = 732;
  static const ERROR_WAIT_3 = 733;
  static const ERROR_WAIT_63 = 734;
  static const ERROR_ABANDONED_WAIT_0 = 735;
  static const ERROR_ABANDONED_WAIT_63 = 736;
  static const ERROR_USER_APC = 737;
  static const ERROR_KERNEL_APC = 738;
  static const ERROR_ALERTED = 739;
  static const ERROR_ELEVATION_REQUIRED = 740;
  static const ERROR_REPARSE = 741;
  static const ERROR_OPLOCK_BREAK_IN_PROGRESS = 742;
  static const ERROR_VOLUME_MOUNTED = 743;
  static const ERROR_RXACT_COMMITTED = 744;
  static const ERROR_NOTIFY_CLEANUP = 745;
  static const ERROR_PRIMARY_TRANSPORT_CONNECT_FAILED = 746;
  static const ERROR_PAGE_FAULT_TRANSITION = 747;
  static const ERROR_PAGE_FAULT_DEMAND_ZERO = 748;
  static const ERROR_PAGE_FAULT_COPY_ON_WRITE = 749;
  static const ERROR_PAGE_FAULT_GUARD_PAGE = 750;
  static const ERROR_PAGE_FAULT_PAGING_FILE = 751;
  static const ERROR_CACHE_PAGE_LOCKED = 752;
  static const ERROR_CRASH_DUMP = 753;
  static const ERROR_BUFFER_ALL_ZEROS = 754;
  static const ERROR_REPARSE_OBJECT = 755;
  static const ERROR_RESOURCE_REQUIREMENTS_CHANGED = 756;
  static const ERROR_TRANSLATION_COMPLETE = 757;
  static const ERROR_NOTHING_TO_TERMINATE = 758;
  static const ERROR_PROCESS_NOT_IN_JOB = 759;
  static const ERROR_PROCESS_IN_JOB = 760;
  static const ERROR_VOLSNAP_HIBERNATE_READY = 761;
  static const ERROR_FSFILTER_OP_COMPLETED_SUCCESSFULLY = 762;
  static const ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED = 763;
  static const ERROR_INTERRUPT_STILL_CONNECTED = 764;
  static const ERROR_WAIT_FOR_OPLOCK = 765;
  static const ERROR_DBG_EXCEPTION_HANDLED = 766;
  static const ERROR_DBG_CONTINUE = 767;
  static const ERROR_CALLBACK_POP_STACK = 768;
  static const ERROR_COMPRESSION_DISABLED = 769;
  static const ERROR_CANTFETCHBACKWARDS = 770;
  static const ERROR_CANTSCROLLBACKWARDS = 771;
  static const ERROR_ROWSNOTRELEASED = 772;
  static const ERROR_BAD_ACCESSOR_FLAGS = 773;
  static const ERROR_ERRORS_ENCOUNTERED = 774;
  static const ERROR_NOT_CAPABLE = 775;
  static const ERROR_REQUEST_OUT_OF_SEQUENCE = 776;
  static const ERROR_VERSION_PARSE_ERROR = 777;
  static const ERROR_BADSTARTPOSITION = 778;
  static const ERROR_MEMORY_HARDWARE = 779;
  static const ERROR_DISK_REPAIR_DISABLED = 780;
  static const ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE =
      WIN32_ERROR(781);
  static const ERROR_SYSTEM_POWERSTATE_TRANSITION = 782;
  static const ERROR_SYSTEM_POWERSTATE_COMPLEX_TRANSITION = 783;
  static const ERROR_MCA_EXCEPTION = 784;
  static const ERROR_ACCESS_AUDIT_BY_POLICY = 785;
  static const ERROR_ACCESS_DISABLED_NO_SAFER_UI_BY_POLICY = 786;
  static const ERROR_ABANDON_HIBERFILE = 787;
  static const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED =
      WIN32_ERROR(788);
  static const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_SERVER_ERROR =
      WIN32_ERROR(789);
  static const ERROR_LOST_WRITEBEHIND_DATA_LOCAL_DISK_ERROR = 790;
  static const ERROR_BAD_MCFG_TABLE = 791;
  static const ERROR_DISK_REPAIR_REDIRECTED = 792;
  static const ERROR_DISK_REPAIR_UNSUCCESSFUL = 793;
  static const ERROR_CORRUPT_LOG_OVERFULL = 794;
  static const ERROR_CORRUPT_LOG_CORRUPTED = 795;
  static const ERROR_CORRUPT_LOG_UNAVAILABLE = 796;
  static const ERROR_CORRUPT_LOG_DELETED_FULL = 797;
  static const ERROR_CORRUPT_LOG_CLEARED = 798;
  static const ERROR_ORPHAN_NAME_EXHAUSTED = 799;
  static const ERROR_OPLOCK_SWITCHED_TO_NEW_HANDLE = 800;
  static const ERROR_CANNOT_GRANT_REQUESTED_OPLOCK = 801;
  static const ERROR_CANNOT_BREAK_OPLOCK = 802;
  static const ERROR_OPLOCK_HANDLE_CLOSED = 803;
  static const ERROR_NO_ACE_CONDITION = 804;
  static const ERROR_INVALID_ACE_CONDITION = 805;
  static const ERROR_FILE_HANDLE_REVOKED = 806;
  static const ERROR_IMAGE_AT_DIFFERENT_BASE = 807;
  static const ERROR_ENCRYPTED_IO_NOT_POSSIBLE = 808;
  static const ERROR_FILE_METADATA_OPTIMIZATION_IN_PROGRESS = 809;
  static const ERROR_QUOTA_ACTIVITY = 810;
  static const ERROR_HANDLE_REVOKED = 811;
  static const ERROR_CALLBACK_INVOKE_INLINE = 812;
  static const ERROR_CPU_SET_INVALID = 813;
  static const ERROR_ENCLAVE_NOT_TERMINATED = 814;
  static const ERROR_ENCLAVE_VIOLATION = 815;
  static const ERROR_SERVER_TRANSPORT_CONFLICT = 816;
  static const ERROR_CERTIFICATE_VALIDATION_PREFERENCE_CONFLICT =
      WIN32_ERROR(817);
  static const ERROR_FT_READ_FROM_COPY_FAILURE = 818;
  static const ERROR_SECTION_DIRECT_MAP_ONLY = 819;
  static const ERROR_EA_ACCESS_DENIED = 994;
  static const ERROR_OPERATION_ABORTED = 995;
  static const ERROR_IO_INCOMPLETE = 996;
  static const ERROR_IO_PENDING = 997;
  static const ERROR_NOACCESS = 998;
  static const ERROR_SWAPERROR = 999;
  static const ERROR_STACK_OVERFLOW = 1001;
  static const ERROR_INVALID_MESSAGE = 1002;
  static const ERROR_CAN_NOT_COMPLETE = 1003;
  static const ERROR_INVALID_FLAGS = 1004;
  static const ERROR_UNRECOGNIZED_VOLUME = 1005;
  static const ERROR_FILE_INVALID = 1006;
  static const ERROR_FULLSCREEN_MODE = 1007;
  static const ERROR_NO_TOKEN = 1008;
  static const ERROR_BADDB = 1009;
  static const ERROR_BADKEY = 1010;
  static const ERROR_CANTOPEN = 1011;
  static const ERROR_CANTREAD = 1012;
  static const ERROR_CANTWRITE = 1013;
  static const ERROR_REGISTRY_RECOVERED = 1014;
  static const ERROR_REGISTRY_CORRUPT = 1015;
  static const ERROR_REGISTRY_IO_FAILED = 1016;
  static const ERROR_NOT_REGISTRY_FILE = 1017;
  static const ERROR_KEY_DELETED = 1018;
  static const ERROR_NO_LOG_SPACE = 1019;
  static const ERROR_KEY_HAS_CHILDREN = 1020;
  static const ERROR_CHILD_MUST_BE_VOLATILE = 1021;
  static const ERROR_NOTIFY_ENUM_DIR = 1022;
  static const ERROR_DEPENDENT_SERVICES_RUNNING = 1051;
  static const ERROR_INVALID_SERVICE_CONTROL = 1052;
  static const ERROR_SERVICE_REQUEST_TIMEOUT = 1053;
  static const ERROR_SERVICE_NO_THREAD = 1054;
  static const ERROR_SERVICE_DATABASE_LOCKED = 1055;
  static const ERROR_SERVICE_ALREADY_RUNNING = 1056;
  static const ERROR_INVALID_SERVICE_ACCOUNT = 1057;
  static const ERROR_SERVICE_DISABLED = 1058;
  static const ERROR_CIRCULAR_DEPENDENCY = 1059;
  static const ERROR_SERVICE_DOES_NOT_EXIST = 1060;
  static const ERROR_SERVICE_CANNOT_ACCEPT_CTRL = 1061;
  static const ERROR_SERVICE_NOT_ACTIVE = 1062;
  static const ERROR_FAILED_SERVICE_CONTROLLER_CONNECT = 1063;
  static const ERROR_EXCEPTION_IN_SERVICE = 1064;
  static const ERROR_DATABASE_DOES_NOT_EXIST = 1065;
  static const ERROR_SERVICE_SPECIFIC_ERROR = 1066;
  static const ERROR_PROCESS_ABORTED = 1067;
  static const ERROR_SERVICE_DEPENDENCY_FAIL = 1068;
  static const ERROR_SERVICE_LOGON_FAILED = 1069;
  static const ERROR_SERVICE_START_HANG = 1070;
  static const ERROR_INVALID_SERVICE_LOCK = 1071;
  static const ERROR_SERVICE_MARKED_FOR_DELETE = 1072;
  static const ERROR_SERVICE_EXISTS = 1073;
  static const ERROR_ALREADY_RUNNING_LKG = 1074;
  static const ERROR_SERVICE_DEPENDENCY_DELETED = 1075;
  static const ERROR_BOOT_ALREADY_ACCEPTED = 1076;
  static const ERROR_SERVICE_NEVER_STARTED = 1077;
  static const ERROR_DUPLICATE_SERVICE_NAME = 1078;
  static const ERROR_DIFFERENT_SERVICE_ACCOUNT = 1079;
  static const ERROR_CANNOT_DETECT_DRIVER_FAILURE = 1080;
  static const ERROR_CANNOT_DETECT_PROCESS_ABORT = 1081;
  static const ERROR_NO_RECOVERY_PROGRAM = 1082;
  static const ERROR_SERVICE_NOT_IN_EXE = 1083;
  static const ERROR_NOT_SAFEBOOT_SERVICE = 1084;
  static const ERROR_END_OF_MEDIA = 1100;
  static const ERROR_FILEMARK_DETECTED = 1101;
  static const ERROR_BEGINNING_OF_MEDIA = 1102;
  static const ERROR_SETMARK_DETECTED = 1103;
  static const ERROR_NO_DATA_DETECTED = 1104;
  static const ERROR_PARTITION_FAILURE = 1105;
  static const ERROR_INVALID_BLOCK_LENGTH = 1106;
  static const ERROR_DEVICE_NOT_PARTITIONED = 1107;
  static const ERROR_UNABLE_TO_LOCK_MEDIA = 1108;
  static const ERROR_UNABLE_TO_UNLOAD_MEDIA = 1109;
  static const ERROR_MEDIA_CHANGED = 1110;
  static const ERROR_BUS_RESET = 1111;
  static const ERROR_NO_MEDIA_IN_DRIVE = 1112;
  static const ERROR_NO_UNICODE_TRANSLATION = 1113;
  static const ERROR_DLL_INIT_FAILED = 1114;
  static const ERROR_SHUTDOWN_IN_PROGRESS = 1115;
  static const ERROR_NO_SHUTDOWN_IN_PROGRESS = 1116;
  static const ERROR_IO_DEVICE = 1117;
  static const ERROR_SERIAL_NO_DEVICE = 1118;
  static const ERROR_IRQ_BUSY = 1119;
  static const ERROR_MORE_WRITES = 1120;
  static const ERROR_COUNTER_TIMEOUT = 1121;
  static const ERROR_FLOPPY_ID_MARK_NOT_FOUND = 1122;
  static const ERROR_FLOPPY_WRONG_CYLINDER = 1123;
  static const ERROR_FLOPPY_UNKNOWN_ERROR = 1124;
  static const ERROR_FLOPPY_BAD_REGISTERS = 1125;
  static const ERROR_DISK_RECALIBRATE_FAILED = 1126;
  static const ERROR_DISK_OPERATION_FAILED = 1127;
  static const ERROR_DISK_RESET_FAILED = 1128;
  static const ERROR_EOM_OVERFLOW = 1129;
  static const ERROR_NOT_ENOUGH_SERVER_MEMORY = 1130;
  static const ERROR_POSSIBLE_DEADLOCK = 1131;
  static const ERROR_MAPPED_ALIGNMENT = 1132;
  static const ERROR_SET_POWER_STATE_VETOED = 1140;
  static const ERROR_SET_POWER_STATE_FAILED = 1141;
  static const ERROR_TOO_MANY_LINKS = 1142;
  static const ERROR_OLD_WIN_VERSION = 1150;
  static const ERROR_APP_WRONG_OS = 1151;
  static const ERROR_SINGLE_INSTANCE_APP = 1152;
  static const ERROR_RMODE_APP = 1153;
  static const ERROR_INVALID_DLL = 1154;
  static const ERROR_NO_ASSOCIATION = 1155;
  static const ERROR_DDE_FAIL = 1156;
  static const ERROR_DLL_NOT_FOUND = 1157;
  static const ERROR_NO_MORE_USER_HANDLES = 1158;
  static const ERROR_MESSAGE_SYNC_ONLY = 1159;
  static const ERROR_SOURCE_ELEMENT_EMPTY = 1160;
  static const ERROR_DESTINATION_ELEMENT_FULL = 1161;
  static const ERROR_ILLEGAL_ELEMENT_ADDRESS = 1162;
  static const ERROR_MAGAZINE_NOT_PRESENT = 1163;
  static const ERROR_DEVICE_REINITIALIZATION_NEEDED = 1164;
  static const ERROR_DEVICE_REQUIRES_CLEANING = 1165;
  static const ERROR_DEVICE_DOOR_OPEN = 1166;
  static const ERROR_DEVICE_NOT_CONNECTED = 1167;
  static const ERROR_NOT_FOUND = 1168;
  static const ERROR_NO_MATCH = 1169;
  static const ERROR_SET_NOT_FOUND = 1170;
  static const ERROR_POINT_NOT_FOUND = 1171;
  static const ERROR_NO_TRACKING_SERVICE = 1172;
  static const ERROR_NO_VOLUME_ID = 1173;
  static const ERROR_UNABLE_TO_REMOVE_REPLACED = 1175;
  static const ERROR_UNABLE_TO_MOVE_REPLACEMENT = 1176;
  static const ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 = 1177;
  static const ERROR_JOURNAL_DELETE_IN_PROGRESS = 1178;
  static const ERROR_JOURNAL_NOT_ACTIVE = 1179;
  static const ERROR_POTENTIAL_FILE_FOUND = 1180;
  static const ERROR_JOURNAL_ENTRY_DELETED = 1181;
  static const ERROR_PARTITION_TERMINATING = 1184;
  static const ERROR_SHUTDOWN_IS_SCHEDULED = 1190;
  static const ERROR_SHUTDOWN_USERS_LOGGED_ON = 1191;
  static const ERROR_SHUTDOWN_DISKS_NOT_IN_MAINTENANCE_MODE = 1192;
  static const ERROR_BAD_DEVICE = 1200;
  static const ERROR_CONNECTION_UNAVAIL = 1201;
  static const ERROR_DEVICE_ALREADY_REMEMBERED = 1202;
  static const ERROR_NO_NET_OR_BAD_PATH = 1203;
  static const ERROR_BAD_PROVIDER = 1204;
  static const ERROR_CANNOT_OPEN_PROFILE = 1205;
  static const ERROR_BAD_PROFILE = 1206;
  static const ERROR_NOT_CONTAINER = 1207;
  static const ERROR_EXTENDED_ERROR = 1208;
  static const ERROR_INVALID_GROUPNAME = 1209;
  static const ERROR_INVALID_COMPUTERNAME = 1210;
  static const ERROR_INVALID_EVENTNAME = 1211;
  static const ERROR_INVALID_DOMAINNAME = 1212;
  static const ERROR_INVALID_SERVICENAME = 1213;
  static const ERROR_INVALID_NETNAME = 1214;
  static const ERROR_INVALID_SHARENAME = 1215;
  static const ERROR_INVALID_PASSWORDNAME = 1216;
  static const ERROR_INVALID_MESSAGENAME = 1217;
  static const ERROR_INVALID_MESSAGEDEST = 1218;
  static const ERROR_SESSION_CREDENTIAL_CONFLICT = 1219;
  static const ERROR_REMOTE_SESSION_LIMIT_EXCEEDED = 1220;
  static const ERROR_DUP_DOMAINNAME = 1221;
  static const ERROR_NO_NETWORK = 1222;
  static const ERROR_CANCELLED = 1223;
  static const ERROR_USER_MAPPED_FILE = 1224;
  static const ERROR_CONNECTION_REFUSED = 1225;
  static const ERROR_GRACEFUL_DISCONNECT = 1226;
  static const ERROR_ADDRESS_ALREADY_ASSOCIATED = 1227;
  static const ERROR_ADDRESS_NOT_ASSOCIATED = 1228;
  static const ERROR_CONNECTION_INVALID = 1229;
  static const ERROR_CONNECTION_ACTIVE = 1230;
  static const ERROR_NETWORK_UNREACHABLE = 1231;
  static const ERROR_HOST_UNREACHABLE = 1232;
  static const ERROR_PROTOCOL_UNREACHABLE = 1233;
  static const ERROR_PORT_UNREACHABLE = 1234;
  static const ERROR_REQUEST_ABORTED = 1235;
  static const ERROR_CONNECTION_ABORTED = 1236;
  static const ERROR_RETRY = 1237;
  static const ERROR_CONNECTION_COUNT_LIMIT = 1238;
  static const ERROR_LOGIN_TIME_RESTRICTION = 1239;
  static const ERROR_LOGIN_WKSTA_RESTRICTION = 1240;
  static const ERROR_INCORRECT_ADDRESS = 1241;
  static const ERROR_ALREADY_REGISTERED = 1242;
  static const ERROR_SERVICE_NOT_FOUND = 1243;
  static const ERROR_NOT_AUTHENTICATED = 1244;
  static const ERROR_NOT_LOGGED_ON = 1245;
  static const ERROR_CONTINUE = 1246;
  static const ERROR_ALREADY_INITIALIZED = 1247;
  static const ERROR_NO_MORE_DEVICES = 1248;
  static const ERROR_NO_SUCH_SITE = 1249;
  static const ERROR_DOMAIN_CONTROLLER_EXISTS = 1250;
  static const ERROR_ONLY_IF_CONNECTED = 1251;
  static const ERROR_OVERRIDE_NOCHANGES = 1252;
  static const ERROR_BAD_USER_PROFILE = 1253;
  static const ERROR_NOT_SUPPORTED_ON_SBS = 1254;
  static const ERROR_SERVER_SHUTDOWN_IN_PROGRESS = 1255;
  static const ERROR_HOST_DOWN = 1256;
  static const ERROR_NON_ACCOUNT_SID = 1257;
  static const ERROR_NON_DOMAIN_SID = 1258;
  static const ERROR_APPHELP_BLOCK = 1259;
  static const ERROR_ACCESS_DISABLED_BY_POLICY = 1260;
  static const ERROR_REG_NAT_CONSUMPTION = 1261;
  static const ERROR_CSCSHARE_OFFLINE = 1262;
  static const ERROR_PKINIT_FAILURE = 1263;
  static const ERROR_SMARTCARD_SUBSYSTEM_FAILURE = 1264;
  static const ERROR_DOWNGRADE_DETECTED = 1265;
  static const ERROR_MACHINE_LOCKED = 1271;
  static const ERROR_SMB_GUEST_LOGON_BLOCKED = 1272;
  static const ERROR_CALLBACK_SUPPLIED_INVALID_DATA = 1273;
  static const ERROR_SYNC_FOREGROUND_REFRESH_REQUIRED = 1274;
  static const ERROR_DRIVER_BLOCKED = 1275;
  static const ERROR_INVALID_IMPORT_OF_NON_DLL = 1276;
  static const ERROR_ACCESS_DISABLED_WEBBLADE = 1277;
  static const ERROR_ACCESS_DISABLED_WEBBLADE_TAMPER = 1278;
  static const ERROR_RECOVERY_FAILURE = 1279;
  static const ERROR_ALREADY_FIBER = 1280;
  static const ERROR_ALREADY_THREAD = 1281;
  static const ERROR_STACK_BUFFER_OVERRUN = 1282;
  static const ERROR_PARAMETER_QUOTA_EXCEEDED = 1283;
  static const ERROR_DEBUGGER_INACTIVE = 1284;
  static const ERROR_DELAY_LOAD_FAILED = 1285;
  static const ERROR_VDM_DISALLOWED = 1286;
  static const ERROR_UNIDENTIFIED_ERROR = 1287;
  static const ERROR_INVALID_CRUNTIME_PARAMETER = 1288;
  static const ERROR_BEYOND_VDL = 1289;
  static const ERROR_INCOMPATIBLE_SERVICE_SID_TYPE = 1290;
  static const ERROR_DRIVER_PROCESS_TERMINATED = 1291;
  static const ERROR_IMPLEMENTATION_LIMIT = 1292;
  static const ERROR_PROCESS_IS_PROTECTED = 1293;
  static const ERROR_SERVICE_NOTIFY_CLIENT_LAGGING = 1294;
  static const ERROR_DISK_QUOTA_EXCEEDED = 1295;
  static const ERROR_CONTENT_BLOCKED = 1296;
  static const ERROR_INCOMPATIBLE_SERVICE_PRIVILEGE = 1297;
  static const ERROR_APP_HANG = 1298;
  static const ERROR_INVALID_LABEL = 1299;
  static const ERROR_NOT_ALL_ASSIGNED = 1300;
  static const ERROR_SOME_NOT_MAPPED = 1301;
  static const ERROR_NO_QUOTAS_FOR_ACCOUNT = 1302;
  static const ERROR_LOCAL_USER_SESSION_KEY = 1303;
  static const ERROR_NULL_LM_PASSWORD = 1304;
  static const ERROR_UNKNOWN_REVISION = 1305;
  static const ERROR_REVISION_MISMATCH = 1306;
  static const ERROR_INVALID_OWNER = 1307;
  static const ERROR_INVALID_PRIMARY_GROUP = 1308;
  static const ERROR_NO_IMPERSONATION_TOKEN = 1309;
  static const ERROR_CANT_DISABLE_MANDATORY = 1310;
  static const ERROR_NO_LOGON_SERVERS = 1311;
  static const ERROR_NO_SUCH_LOGON_SESSION = 1312;
  static const ERROR_NO_SUCH_PRIVILEGE = 1313;
  static const ERROR_PRIVILEGE_NOT_HELD = 1314;
  static const ERROR_INVALID_ACCOUNT_NAME = 1315;
  static const ERROR_USER_EXISTS = 1316;
  static const ERROR_NO_SUCH_USER = 1317;
  static const ERROR_GROUP_EXISTS = 1318;
  static const ERROR_NO_SUCH_GROUP = 1319;
  static const ERROR_MEMBER_IN_GROUP = 1320;
  static const ERROR_MEMBER_NOT_IN_GROUP = 1321;
  static const ERROR_LAST_ADMIN = 1322;
  static const ERROR_WRONG_PASSWORD = 1323;
  static const ERROR_ILL_FORMED_PASSWORD = 1324;
  static const ERROR_PASSWORD_RESTRICTION = 1325;
  static const ERROR_LOGON_FAILURE = 1326;
  static const ERROR_ACCOUNT_RESTRICTION = 1327;
  static const ERROR_INVALID_LOGON_HOURS = 1328;
  static const ERROR_INVALID_WORKSTATION = 1329;
  static const ERROR_PASSWORD_EXPIRED = 1330;
  static const ERROR_ACCOUNT_DISABLED = 1331;
  static const ERROR_NONE_MAPPED = 1332;
  static const ERROR_TOO_MANY_LUIDS_REQUESTED = 1333;
  static const ERROR_LUIDS_EXHAUSTED = 1334;
  static const ERROR_INVALID_SUB_AUTHORITY = 1335;
  static const ERROR_INVALID_ACL = 1336;
  static const ERROR_INVALID_SID = 1337;
  static const ERROR_INVALID_SECURITY_DESCR = 1338;
  static const ERROR_BAD_INHERITANCE_ACL = 1340;
  static const ERROR_SERVER_DISABLED = 1341;
  static const ERROR_SERVER_NOT_DISABLED = 1342;
  static const ERROR_INVALID_ID_AUTHORITY = 1343;
  static const ERROR_ALLOTTED_SPACE_EXCEEDED = 1344;
  static const ERROR_INVALID_GROUP_ATTRIBUTES = 1345;
  static const ERROR_BAD_IMPERSONATION_LEVEL = 1346;
  static const ERROR_CANT_OPEN_ANONYMOUS = 1347;
  static const ERROR_BAD_VALIDATION_CLASS = 1348;
  static const ERROR_BAD_TOKEN_TYPE = 1349;
  static const ERROR_NO_SECURITY_ON_OBJECT = 1350;
  static const ERROR_CANT_ACCESS_DOMAIN_INFO = 1351;
  static const ERROR_INVALID_SERVER_STATE = 1352;
  static const ERROR_INVALID_DOMAIN_STATE = 1353;
  static const ERROR_INVALID_DOMAIN_ROLE = 1354;
  static const ERROR_NO_SUCH_DOMAIN = 1355;
  static const ERROR_DOMAIN_EXISTS = 1356;
  static const ERROR_DOMAIN_LIMIT_EXCEEDED = 1357;
  static const ERROR_INTERNAL_DB_CORRUPTION = 1358;
  static const ERROR_INTERNAL_ERROR = 1359;
  static const ERROR_GENERIC_NOT_MAPPED = 1360;
  static const ERROR_BAD_DESCRIPTOR_FORMAT = 1361;
  static const ERROR_NOT_LOGON_PROCESS = 1362;
  static const ERROR_LOGON_SESSION_EXISTS = 1363;
  static const ERROR_NO_SUCH_PACKAGE = 1364;
  static const ERROR_BAD_LOGON_SESSION_STATE = 1365;
  static const ERROR_LOGON_SESSION_COLLISION = 1366;
  static const ERROR_INVALID_LOGON_TYPE = 1367;
  static const ERROR_CANNOT_IMPERSONATE = 1368;
  static const ERROR_RXACT_INVALID_STATE = 1369;
  static const ERROR_RXACT_COMMIT_FAILURE = 1370;
  static const ERROR_SPECIAL_ACCOUNT = 1371;
  static const ERROR_SPECIAL_GROUP = 1372;
  static const ERROR_SPECIAL_USER = 1373;
  static const ERROR_MEMBERS_PRIMARY_GROUP = 1374;
  static const ERROR_TOKEN_ALREADY_IN_USE = 1375;
  static const ERROR_NO_SUCH_ALIAS = 1376;
  static const ERROR_MEMBER_NOT_IN_ALIAS = 1377;
  static const ERROR_MEMBER_IN_ALIAS = 1378;
  static const ERROR_ALIAS_EXISTS = 1379;
  static const ERROR_LOGON_NOT_GRANTED = 1380;
  static const ERROR_TOO_MANY_SECRETS = 1381;
  static const ERROR_SECRET_TOO_LONG = 1382;
  static const ERROR_INTERNAL_DB_ERROR = 1383;
  static const ERROR_TOO_MANY_CONTEXT_IDS = 1384;
  static const ERROR_LOGON_TYPE_NOT_GRANTED = 1385;
  static const ERROR_NT_CROSS_ENCRYPTION_REQUIRED = 1386;
  static const ERROR_NO_SUCH_MEMBER = 1387;
  static const ERROR_INVALID_MEMBER = 1388;
  static const ERROR_TOO_MANY_SIDS = 1389;
  static const ERROR_LM_CROSS_ENCRYPTION_REQUIRED = 1390;
  static const ERROR_NO_INHERITANCE = 1391;
  static const ERROR_FILE_CORRUPT = 1392;
  static const ERROR_DISK_CORRUPT = 1393;
  static const ERROR_NO_USER_SESSION_KEY = 1394;
  static const ERROR_LICENSE_QUOTA_EXCEEDED = 1395;
  static const ERROR_WRONG_TARGET_NAME = 1396;
  static const ERROR_MUTUAL_AUTH_FAILED = 1397;
  static const ERROR_TIME_SKEW = 1398;
  static const ERROR_CURRENT_DOMAIN_NOT_ALLOWED = 1399;
  static const ERROR_INVALID_WINDOW_HANDLE = 1400;
  static const ERROR_INVALID_MENU_HANDLE = 1401;
  static const ERROR_INVALID_CURSOR_HANDLE = 1402;
  static const ERROR_INVALID_ACCEL_HANDLE = 1403;
  static const ERROR_INVALID_HOOK_HANDLE = 1404;
  static const ERROR_INVALID_DWP_HANDLE = 1405;
  static const ERROR_TLW_WITH_WSCHILD = 1406;
  static const ERROR_CANNOT_FIND_WND_CLASS = 1407;
  static const ERROR_WINDOW_OF_OTHER_THREAD = 1408;
  static const ERROR_HOTKEY_ALREADY_REGISTERED = 1409;
  static const ERROR_CLASS_ALREADY_EXISTS = 1410;
  static const ERROR_CLASS_DOES_NOT_EXIST = 1411;
  static const ERROR_CLASS_HAS_WINDOWS = 1412;
  static const ERROR_INVALID_INDEX = 1413;
  static const ERROR_INVALID_ICON_HANDLE = 1414;
  static const ERROR_PRIVATE_DIALOG_INDEX = 1415;
  static const ERROR_LISTBOX_ID_NOT_FOUND = 1416;
  static const ERROR_NO_WILDCARD_CHARACTERS = 1417;
  static const ERROR_CLIPBOARD_NOT_OPEN = 1418;
  static const ERROR_HOTKEY_NOT_REGISTERED = 1419;
  static const ERROR_WINDOW_NOT_DIALOG = 1420;
  static const ERROR_CONTROL_ID_NOT_FOUND = 1421;
  static const ERROR_INVALID_COMBOBOX_MESSAGE = 1422;
  static const ERROR_WINDOW_NOT_COMBOBOX = 1423;
  static const ERROR_INVALID_EDIT_HEIGHT = 1424;
  static const ERROR_DC_NOT_FOUND = 1425;
  static const ERROR_INVALID_HOOK_FILTER = 1426;
  static const ERROR_INVALID_FILTER_PROC = 1427;
  static const ERROR_HOOK_NEEDS_HMOD = 1428;
  static const ERROR_GLOBAL_ONLY_HOOK = 1429;
  static const ERROR_JOURNAL_HOOK_SET = 1430;
  static const ERROR_HOOK_NOT_INSTALLED = 1431;
  static const ERROR_INVALID_LB_MESSAGE = 1432;
  static const ERROR_SETCOUNT_ON_BAD_LB = 1433;
  static const ERROR_LB_WITHOUT_TABSTOPS = 1434;
  static const ERROR_DESTROY_OBJECT_OF_OTHER_THREAD = 1435;
  static const ERROR_CHILD_WINDOW_MENU = 1436;
  static const ERROR_NO_SYSTEM_MENU = 1437;
  static const ERROR_INVALID_MSGBOX_STYLE = 1438;
  static const ERROR_INVALID_SPI_VALUE = 1439;
  static const ERROR_SCREEN_ALREADY_LOCKED = 1440;
  static const ERROR_HWNDS_HAVE_DIFF_PARENT = 1441;
  static const ERROR_NOT_CHILD_WINDOW = 1442;
  static const ERROR_INVALID_GW_COMMAND = 1443;
  static const ERROR_INVALID_THREAD_ID = 1444;
  static const ERROR_NON_MDICHILD_WINDOW = 1445;
  static const ERROR_POPUP_ALREADY_ACTIVE = 1446;
  static const ERROR_NO_SCROLLBARS = 1447;
  static const ERROR_INVALID_SCROLLBAR_RANGE = 1448;
  static const ERROR_INVALID_SHOWWIN_COMMAND = 1449;
  static const ERROR_NO_SYSTEM_RESOURCES = 1450;
  static const ERROR_NONPAGED_SYSTEM_RESOURCES = 1451;
  static const ERROR_PAGED_SYSTEM_RESOURCES = 1452;
  static const ERROR_WORKING_SET_QUOTA = 1453;
  static const ERROR_PAGEFILE_QUOTA = 1454;
  static const ERROR_COMMITMENT_LIMIT = 1455;
  static const ERROR_MENU_ITEM_NOT_FOUND = 1456;
  static const ERROR_INVALID_KEYBOARD_HANDLE = 1457;
  static const ERROR_HOOK_TYPE_NOT_ALLOWED = 1458;
  static const ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION = 1459;
  static const ERROR_TIMEOUT = 1460;
  static const ERROR_INVALID_MONITOR_HANDLE = 1461;
  static const ERROR_INCORRECT_SIZE = 1462;
  static const ERROR_SYMLINK_CLASS_DISABLED = 1463;
  static const ERROR_SYMLINK_NOT_SUPPORTED = 1464;
  static const ERROR_XML_PARSE_ERROR = 1465;
  static const ERROR_XMLDSIG_ERROR = 1466;
  static const ERROR_RESTART_APPLICATION = 1467;
  static const ERROR_WRONG_COMPARTMENT = 1468;
  static const ERROR_AUTHIP_FAILURE = 1469;
  static const ERROR_NO_NVRAM_RESOURCES = 1470;
  static const ERROR_NOT_GUI_PROCESS = 1471;
  static const ERROR_EVENTLOG_FILE_CORRUPT = 1500;
  static const ERROR_EVENTLOG_CANT_START = 1501;
  static const ERROR_LOG_FILE_FULL = 1502;
  static const ERROR_EVENTLOG_FILE_CHANGED = 1503;
  static const ERROR_CONTAINER_ASSIGNED = 1504;
  static const ERROR_JOB_NO_CONTAINER = 1505;
  static const ERROR_INVALID_TASK_NAME = 1550;
  static const ERROR_INVALID_TASK_INDEX = 1551;
  static const ERROR_THREAD_ALREADY_IN_TASK = 1552;
  static const ERROR_INSTALL_SERVICE_FAILURE = 1601;
  static const ERROR_INSTALL_USEREXIT = 1602;
  static const ERROR_INSTALL_FAILURE = 1603;
  static const ERROR_INSTALL_SUSPEND = 1604;
  static const ERROR_UNKNOWN_PRODUCT = 1605;
  static const ERROR_UNKNOWN_FEATURE = 1606;
  static const ERROR_UNKNOWN_COMPONENT = 1607;
  static const ERROR_UNKNOWN_PROPERTY = 1608;
  static const ERROR_INVALID_HANDLE_STATE = 1609;
  static const ERROR_BAD_CONFIGURATION = 1610;
  static const ERROR_INDEX_ABSENT = 1611;
  static const ERROR_INSTALL_SOURCE_ABSENT = 1612;
  static const ERROR_INSTALL_PACKAGE_VERSION = 1613;
  static const ERROR_PRODUCT_UNINSTALLED = 1614;
  static const ERROR_BAD_QUERY_SYNTAX = 1615;
  static const ERROR_INVALID_FIELD = 1616;
  static const ERROR_DEVICE_REMOVED = 1617;
  static const ERROR_INSTALL_ALREADY_RUNNING = 1618;
  static const ERROR_INSTALL_PACKAGE_OPEN_FAILED = 1619;
  static const ERROR_INSTALL_PACKAGE_INVALID = 1620;
  static const ERROR_INSTALL_UI_FAILURE = 1621;
  static const ERROR_INSTALL_LOG_FAILURE = 1622;
  static const ERROR_INSTALL_LANGUAGE_UNSUPPORTED = 1623;
  static const ERROR_INSTALL_TRANSFORM_FAILURE = 1624;
  static const ERROR_INSTALL_PACKAGE_REJECTED = 1625;
  static const ERROR_FUNCTION_NOT_CALLED = 1626;
  static const ERROR_FUNCTION_FAILED = 1627;
  static const ERROR_INVALID_TABLE = 1628;
  static const ERROR_DATATYPE_MISMATCH = 1629;
  static const ERROR_UNSUPPORTED_TYPE = 1630;
  static const ERROR_CREATE_FAILED = 1631;
  static const ERROR_INSTALL_TEMP_UNWRITABLE = 1632;
  static const ERROR_INSTALL_PLATFORM_UNSUPPORTED = 1633;
  static const ERROR_INSTALL_NOTUSED = 1634;
  static const ERROR_PATCH_PACKAGE_OPEN_FAILED = 1635;
  static const ERROR_PATCH_PACKAGE_INVALID = 1636;
  static const ERROR_PATCH_PACKAGE_UNSUPPORTED = 1637;
  static const ERROR_PRODUCT_VERSION = 1638;
  static const ERROR_INVALID_COMMAND_LINE = 1639;
  static const ERROR_INSTALL_REMOTE_DISALLOWED = 1640;
  static const ERROR_SUCCESS_REBOOT_INITIATED = 1641;
  static const ERROR_PATCH_TARGET_NOT_FOUND = 1642;
  static const ERROR_PATCH_PACKAGE_REJECTED = 1643;
  static const ERROR_INSTALL_TRANSFORM_REJECTED = 1644;
  static const ERROR_INSTALL_REMOTE_PROHIBITED = 1645;
  static const ERROR_PATCH_REMOVAL_UNSUPPORTED = 1646;
  static const ERROR_UNKNOWN_PATCH = 1647;
  static const ERROR_PATCH_NO_SEQUENCE = 1648;
  static const ERROR_PATCH_REMOVAL_DISALLOWED = 1649;
  static const ERROR_INVALID_PATCH_XML = 1650;
  static const ERROR_PATCH_MANAGED_ADVERTISED_PRODUCT = 1651;
  static const ERROR_INSTALL_SERVICE_SAFEBOOT = 1652;
  static const ERROR_FAIL_FAST_EXCEPTION = 1653;
  static const ERROR_INSTALL_REJECTED = 1654;
  static const ERROR_DYNAMIC_CODE_BLOCKED = 1655;
  static const ERROR_NOT_SAME_OBJECT = 1656;
  static const ERROR_STRICT_CFG_VIOLATION = 1657;
  static const ERROR_SET_CONTEXT_DENIED = 1660;
  static const ERROR_CROSS_PARTITION_VIOLATION = 1661;
  static const ERROR_RETURN_ADDRESS_HIJACK_ATTEMPT = 1662;
  static const ERROR_INVALID_USER_BUFFER = 1784;
  static const ERROR_UNRECOGNIZED_MEDIA = 1785;
  static const ERROR_NO_TRUST_LSA_SECRET = 1786;
  static const ERROR_NO_TRUST_SAM_ACCOUNT = 1787;
  static const ERROR_TRUSTED_DOMAIN_FAILURE = 1788;
  static const ERROR_TRUSTED_RELATIONSHIP_FAILURE = 1789;
  static const ERROR_TRUST_FAILURE = 1790;
  static const ERROR_NETLOGON_NOT_STARTED = 1792;
  static const ERROR_ACCOUNT_EXPIRED = 1793;
  static const ERROR_REDIRECTOR_HAS_OPEN_HANDLES = 1794;
  static const ERROR_PRINTER_DRIVER_ALREADY_INSTALLED = 1795;
  static const ERROR_UNKNOWN_PORT = 1796;
  static const ERROR_UNKNOWN_PRINTER_DRIVER = 1797;
  static const ERROR_UNKNOWN_PRINTPROCESSOR = 1798;
  static const ERROR_INVALID_SEPARATOR_FILE = 1799;
  static const ERROR_INVALID_PRIORITY = 1800;
  static const ERROR_INVALID_PRINTER_NAME = 1801;
  static const ERROR_PRINTER_ALREADY_EXISTS = 1802;
  static const ERROR_INVALID_PRINTER_COMMAND = 1803;
  static const ERROR_INVALID_DATATYPE = 1804;
  static const ERROR_INVALID_ENVIRONMENT = 1805;
  static const ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT = 1807;
  static const ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT = 1808;
  static const ERROR_NOLOGON_SERVER_TRUST_ACCOUNT = 1809;
  static const ERROR_DOMAIN_TRUST_INCONSISTENT = 1810;
  static const ERROR_SERVER_HAS_OPEN_HANDLES = 1811;
  static const ERROR_RESOURCE_DATA_NOT_FOUND = 1812;
  static const ERROR_RESOURCE_TYPE_NOT_FOUND = 1813;
  static const ERROR_RESOURCE_NAME_NOT_FOUND = 1814;
  static const ERROR_RESOURCE_LANG_NOT_FOUND = 1815;
  static const ERROR_NOT_ENOUGH_QUOTA = 1816;
  static const ERROR_INVALID_TIME = 1901;
  static const ERROR_INVALID_FORM_NAME = 1902;
  static const ERROR_INVALID_FORM_SIZE = 1903;
  static const ERROR_ALREADY_WAITING = 1904;
  static const ERROR_PRINTER_DELETED = 1905;
  static const ERROR_INVALID_PRINTER_STATE = 1906;
  static const ERROR_PASSWORD_MUST_CHANGE = 1907;
  static const ERROR_DOMAIN_CONTROLLER_NOT_FOUND = 1908;
  static const ERROR_ACCOUNT_LOCKED_OUT = 1909;
  static const ERROR_NO_SITENAME = 1919;
  static const ERROR_CANT_ACCESS_FILE = 1920;
  static const ERROR_CANT_RESOLVE_FILENAME = 1921;
  static const ERROR_KM_DRIVER_BLOCKED = 1930;
  static const ERROR_CONTEXT_EXPIRED = 1931;
  static const ERROR_PER_USER_TRUST_QUOTA_EXCEEDED = 1932;
  static const ERROR_ALL_USER_TRUST_QUOTA_EXCEEDED = 1933;
  static const ERROR_USER_DELETE_TRUST_QUOTA_EXCEEDED = 1934;
  static const ERROR_AUTHENTICATION_FIREWALL_FAILED = 1935;
  static const ERROR_REMOTE_PRINT_CONNECTIONS_BLOCKED = 1936;
  static const ERROR_NTLM_BLOCKED = 1937;
  static const ERROR_PASSWORD_CHANGE_REQUIRED = 1938;
  static const ERROR_LOST_MODE_LOGON_RESTRICTION = 1939;
  static const ERROR_INVALID_PIXEL_FORMAT = 2000;
  static const ERROR_BAD_DRIVER = 2001;
  static const ERROR_INVALID_WINDOW_STYLE = 2002;
  static const ERROR_METAFILE_NOT_SUPPORTED = 2003;
  static const ERROR_TRANSFORM_NOT_SUPPORTED = 2004;
  static const ERROR_CLIPPING_NOT_SUPPORTED = 2005;
  static const ERROR_INVALID_CMM = 2010;
  static const ERROR_INVALID_PROFILE = 2011;
  static const ERROR_TAG_NOT_FOUND = 2012;
  static const ERROR_TAG_NOT_PRESENT = 2013;
  static const ERROR_DUPLICATE_TAG = 2014;
  static const ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE = 2015;
  static const ERROR_PROFILE_NOT_FOUND = 2016;
  static const ERROR_INVALID_COLORSPACE = 2017;
  static const ERROR_ICM_NOT_ENABLED = 2018;
  static const ERROR_DELETING_ICM_XFORM = 2019;
  static const ERROR_INVALID_TRANSFORM = 2020;
  static const ERROR_COLORSPACE_MISMATCH = 2021;
  static const ERROR_INVALID_COLORINDEX = 2022;
  static const ERROR_PROFILE_DOES_NOT_MATCH_DEVICE = 2023;
  static const ERROR_CONNECTED_OTHER_PASSWORD = 2108;
  static const ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT = 2109;
  static const ERROR_BAD_USERNAME = 2202;
  static const ERROR_NOT_CONNECTED = 2250;
  static const ERROR_OPEN_FILES = 2401;
  static const ERROR_ACTIVE_CONNECTIONS = 2402;
  static const ERROR_DEVICE_IN_USE = 2404;
  static const ERROR_UNKNOWN_PRINT_MONITOR = 3000;
  static const ERROR_PRINTER_DRIVER_IN_USE = 3001;
  static const ERROR_SPOOL_FILE_NOT_FOUND = 3002;
  static const ERROR_SPL_NO_STARTDOC = 3003;
  static const ERROR_SPL_NO_ADDJOB = 3004;
  static const ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED = 3005;
  static const ERROR_PRINT_MONITOR_ALREADY_INSTALLED = 3006;
  static const ERROR_INVALID_PRINT_MONITOR = 3007;
  static const ERROR_PRINT_MONITOR_IN_USE = 3008;
  static const ERROR_PRINTER_HAS_JOBS_QUEUED = 3009;
  static const ERROR_SUCCESS_REBOOT_REQUIRED = 3010;
  static const ERROR_SUCCESS_RESTART_REQUIRED = 3011;
  static const ERROR_PRINTER_NOT_FOUND = 3012;
  static const ERROR_PRINTER_DRIVER_WARNED = 3013;
  static const ERROR_PRINTER_DRIVER_BLOCKED = 3014;
  static const ERROR_PRINTER_DRIVER_PACKAGE_IN_USE = 3015;
  static const ERROR_CORE_DRIVER_PACKAGE_NOT_FOUND = 3016;
  static const ERROR_FAIL_REBOOT_REQUIRED = 3017;
  static const ERROR_FAIL_REBOOT_INITIATED = 3018;
  static const ERROR_PRINTER_DRIVER_DOWNLOAD_NEEDED = 3019;
  static const ERROR_PRINT_JOB_RESTART_REQUIRED = 3020;
  static const ERROR_INVALID_PRINTER_DRIVER_MANIFEST = 3021;
  static const ERROR_PRINTER_NOT_SHAREABLE = 3022;
  static const ERROR_SERVER_SERVICE_CALL_REQUIRES_SMB1 = 3023;
  static const ERROR_NETWORK_AUTHENTICATION_PROMPT_CANCELED = 3024;
  static const ERROR_REQUEST_PAUSED = 3050;
  static const ERROR_APPEXEC_CONDITION_NOT_SATISFIED = 3060;
  static const ERROR_APPEXEC_HANDLE_INVALIDATED = 3061;
  static const ERROR_APPEXEC_INVALID_HOST_GENERATION = 3062;
  static const ERROR_APPEXEC_UNEXPECTED_PROCESS_REGISTRATION =
      WIN32_ERROR(3063);
  static const ERROR_APPEXEC_INVALID_HOST_STATE = 3064;
  static const ERROR_APPEXEC_NO_DONOR = 3065;
  static const ERROR_APPEXEC_HOST_ID_MISMATCH = 3066;
  static const ERROR_APPEXEC_UNKNOWN_USER = 3067;
  static const ERROR_APPEXEC_APP_COMPAT_BLOCK = 3068;
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT = 3069;
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_TERMINATION =
      WIN32_ERROR(3070);
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_LICENSING = 3071;
  static const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_RESOURCES = 3072;
  static const ERROR_VRF_VOLATILE_CFG_AND_IO_ENABLED = 3080;
  static const ERROR_VRF_VOLATILE_NOT_STOPPABLE = 3081;
  static const ERROR_VRF_VOLATILE_SAFE_MODE = 3082;
  static const ERROR_VRF_VOLATILE_NOT_RUNNABLE_SYSTEM = 3083;
  static const ERROR_VRF_VOLATILE_NOT_SUPPORTED_RULECLASS = 3084;
  static const ERROR_VRF_VOLATILE_PROTECTED_DRIVER = 3085;
  static const ERROR_VRF_VOLATILE_NMI_REGISTERED = 3086;
  static const ERROR_VRF_VOLATILE_SETTINGS_CONFLICT = 3087;
  static const ERROR_DIF_IOCALLBACK_NOT_REPLACED = 3190;
  static const ERROR_DIF_LIVEDUMP_LIMIT_EXCEEDED = 3191;
  static const ERROR_DIF_VOLATILE_SECTION_NOT_LOCKED = 3192;
  static const ERROR_DIF_VOLATILE_DRIVER_HOTPATCHED = 3193;
  static const ERROR_DIF_VOLATILE_INVALID_INFO = 3194;
  static const ERROR_DIF_VOLATILE_DRIVER_IS_NOT_RUNNING = 3195;
  static const ERROR_DIF_VOLATILE_PLUGIN_IS_NOT_RUNNING = 3196;
  static const ERROR_DIF_VOLATILE_PLUGIN_CHANGE_NOT_ALLOWED = 3197;
  static const ERROR_DIF_VOLATILE_NOT_ALLOWED = 3198;
  static const ERROR_DIF_BINDING_API_NOT_FOUND = 3199;
  static const ERROR_IO_REISSUE_AS_CACHED = 3950;
  static const ERROR_WINS_INTERNAL = 4000;
  static const ERROR_CAN_NOT_DEL_LOCAL_WINS = 4001;
  static const ERROR_STATIC_INIT = 4002;
  static const ERROR_INC_BACKUP = 4003;
  static const ERROR_FULL_BACKUP = 4004;
  static const ERROR_REC_NON_EXISTENT = 4005;
  static const ERROR_RPL_NOT_ALLOWED = 4006;
  static const ERROR_DHCP_ADDRESS_CONFLICT = 4100;
  static const ERROR_WMI_GUID_NOT_FOUND = 4200;
  static const ERROR_WMI_INSTANCE_NOT_FOUND = 4201;
  static const ERROR_WMI_ITEMID_NOT_FOUND = 4202;
  static const ERROR_WMI_TRY_AGAIN = 4203;
  static const ERROR_WMI_DP_NOT_FOUND = 4204;
  static const ERROR_WMI_UNRESOLVED_INSTANCE_REF = 4205;
  static const ERROR_WMI_ALREADY_ENABLED = 4206;
  static const ERROR_WMI_GUID_DISCONNECTED = 4207;
  static const ERROR_WMI_SERVER_UNAVAILABLE = 4208;
  static const ERROR_WMI_DP_FAILED = 4209;
  static const ERROR_WMI_INVALID_MOF = 4210;
  static const ERROR_WMI_INVALID_REGINFO = 4211;
  static const ERROR_WMI_ALREADY_DISABLED = 4212;
  static const ERROR_WMI_READ_ONLY = 4213;
  static const ERROR_WMI_SET_FAILURE = 4214;
  static const ERROR_NOT_APPCONTAINER = 4250;
  static const ERROR_APPCONTAINER_REQUIRED = 4251;
  static const ERROR_NOT_SUPPORTED_IN_APPCONTAINER = 4252;
  static const ERROR_INVALID_PACKAGE_SID_LENGTH = 4253;
  static const ERROR_INVALID_MEDIA = 4300;
  static const ERROR_INVALID_LIBRARY = 4301;
  static const ERROR_INVALID_MEDIA_POOL = 4302;
  static const ERROR_DRIVE_MEDIA_MISMATCH = 4303;
  static const ERROR_MEDIA_OFFLINE = 4304;
  static const ERROR_LIBRARY_OFFLINE = 4305;
  static const ERROR_EMPTY = 4306;
  static const ERROR_NOT_EMPTY = 4307;
  static const ERROR_MEDIA_UNAVAILABLE = 4308;
  static const ERROR_RESOURCE_DISABLED = 4309;
  static const ERROR_INVALID_CLEANER = 4310;
  static const ERROR_UNABLE_TO_CLEAN = 4311;
  static const ERROR_OBJECT_NOT_FOUND = 4312;
  static const ERROR_DATABASE_FAILURE = 4313;
  static const ERROR_DATABASE_FULL = 4314;
  static const ERROR_MEDIA_INCOMPATIBLE = 4315;
  static const ERROR_RESOURCE_NOT_PRESENT = 4316;
  static const ERROR_INVALID_OPERATION = 4317;
  static const ERROR_MEDIA_NOT_AVAILABLE = 4318;
  static const ERROR_DEVICE_NOT_AVAILABLE = 4319;
  static const ERROR_REQUEST_REFUSED = 4320;
  static const ERROR_INVALID_DRIVE_OBJECT = 4321;
  static const ERROR_LIBRARY_FULL = 4322;
  static const ERROR_MEDIUM_NOT_ACCESSIBLE = 4323;
  static const ERROR_UNABLE_TO_LOAD_MEDIUM = 4324;
  static const ERROR_UNABLE_TO_INVENTORY_DRIVE = 4325;
  static const ERROR_UNABLE_TO_INVENTORY_SLOT = 4326;
  static const ERROR_UNABLE_TO_INVENTORY_TRANSPORT = 4327;
  static const ERROR_TRANSPORT_FULL = 4328;
  static const ERROR_CONTROLLING_IEPORT = 4329;
  static const ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA = 4330;
  static const ERROR_CLEANER_SLOT_SET = 4331;
  static const ERROR_CLEANER_SLOT_NOT_SET = 4332;
  static const ERROR_CLEANER_CARTRIDGE_SPENT = 4333;
  static const ERROR_UNEXPECTED_OMID = 4334;
  static const ERROR_CANT_DELETE_LAST_ITEM = 4335;
  static const ERROR_MESSAGE_EXCEEDS_MAX_SIZE = 4336;
  static const ERROR_VOLUME_CONTAINS_SYS_FILES = 4337;
  static const ERROR_INDIGENOUS_TYPE = 4338;
  static const ERROR_NO_SUPPORTING_DRIVES = 4339;
  static const ERROR_CLEANER_CARTRIDGE_INSTALLED = 4340;
  static const ERROR_IEPORT_FULL = 4341;
  static const ERROR_FILE_OFFLINE = 4350;
  static const ERROR_REMOTE_STORAGE_NOT_ACTIVE = 4351;
  static const ERROR_REMOTE_STORAGE_MEDIA_ERROR = 4352;
  static const ERROR_NOT_A_REPARSE_POINT = 4390;
  static const ERROR_REPARSE_ATTRIBUTE_CONFLICT = 4391;
  static const ERROR_INVALID_REPARSE_DATA = 4392;
  static const ERROR_REPARSE_TAG_INVALID = 4393;
  static const ERROR_REPARSE_TAG_MISMATCH = 4394;
  static const ERROR_REPARSE_POINT_ENCOUNTERED = 4395;
  static const ERROR_APP_DATA_NOT_FOUND = 4400;
  static const ERROR_APP_DATA_EXPIRED = 4401;
  static const ERROR_APP_DATA_CORRUPT = 4402;
  static const ERROR_APP_DATA_LIMIT_EXCEEDED = 4403;
  static const ERROR_APP_DATA_REBOOT_REQUIRED = 4404;
  static const ERROR_SECUREBOOT_ROLLBACK_DETECTED = 4420;
  static const ERROR_SECUREBOOT_POLICY_VIOLATION = 4421;
  static const ERROR_SECUREBOOT_INVALID_POLICY = 4422;
  static const ERROR_SECUREBOOT_POLICY_PUBLISHER_NOT_FOUND = 4423;
  static const ERROR_SECUREBOOT_POLICY_NOT_SIGNED = 4424;
  static const ERROR_SECUREBOOT_NOT_ENABLED = 4425;
  static const ERROR_SECUREBOOT_FILE_REPLACED = 4426;
  static const ERROR_SECUREBOOT_POLICY_NOT_AUTHORIZED = 4427;
  static const ERROR_SECUREBOOT_POLICY_UNKNOWN = 4428;
  static const ERROR_SECUREBOOT_POLICY_MISSING_ANTIROLLBACKVERSION =
      WIN32_ERROR(4429);
  static const ERROR_SECUREBOOT_PLATFORM_ID_MISMATCH = 4430;
  static const ERROR_SECUREBOOT_POLICY_ROLLBACK_DETECTED = 4431;
  static const ERROR_SECUREBOOT_POLICY_UPGRADE_MISMATCH = 4432;
  static const ERROR_SECUREBOOT_REQUIRED_POLICY_FILE_MISSING =
      WIN32_ERROR(4433);
  static const ERROR_SECUREBOOT_NOT_BASE_POLICY = 4434;
  static const ERROR_SECUREBOOT_NOT_SUPPLEMENTAL_POLICY = 4435;
  static const ERROR_OFFLOAD_READ_FLT_NOT_SUPPORTED = 4440;
  static const ERROR_OFFLOAD_WRITE_FLT_NOT_SUPPORTED = 4441;
  static const ERROR_OFFLOAD_READ_FILE_NOT_SUPPORTED = 4442;
  static const ERROR_OFFLOAD_WRITE_FILE_NOT_SUPPORTED = 4443;
  static const ERROR_ALREADY_HAS_STREAM_ID = 4444;
  static const ERROR_SMR_GARBAGE_COLLECTION_REQUIRED = 4445;
  static const ERROR_WOF_WIM_HEADER_CORRUPT = 4446;
  static const ERROR_WOF_WIM_RESOURCE_TABLE_CORRUPT = 4447;
  static const ERROR_WOF_FILE_RESOURCE_TABLE_CORRUPT = 4448;
  static const ERROR_OBJECT_IS_IMMUTABLE = 4449;
  static const ERROR_VOLUME_NOT_SIS_ENABLED = 4500;
  static const ERROR_SYSTEM_INTEGRITY_ROLLBACK_DETECTED = 4550;
  static const ERROR_SYSTEM_INTEGRITY_POLICY_VIOLATION = 4551;
  static const ERROR_SYSTEM_INTEGRITY_INVALID_POLICY = 4552;
  static const ERROR_SYSTEM_INTEGRITY_POLICY_NOT_SIGNED = 4553;
  static const ERROR_SYSTEM_INTEGRITY_TOO_MANY_POLICIES = 4554;
  static const ERROR_SYSTEM_INTEGRITY_SUPPLEMENTAL_POLICY_NOT_AUTHORIZED =
      WIN32_ERROR(4555);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_MALICIOUS = 4556;
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_PUA = 4557;
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_DANGEROUS_EXT =
      WIN32_ERROR(4558);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_OFFLINE = 4559;
  static const ERROR_VSM_NOT_INITIALIZED = 4560;
  static const ERROR_VSM_DMA_PROTECTION_NOT_IN_USE = 4561;
  static const ERROR_PLATFORM_MANIFEST_NOT_AUTHORIZED = 4570;
  static const ERROR_PLATFORM_MANIFEST_INVALID = 4571;
  static const ERROR_PLATFORM_MANIFEST_FILE_NOT_AUTHORIZED = 4572;
  static const ERROR_PLATFORM_MANIFEST_CATALOG_NOT_AUTHORIZED =
      WIN32_ERROR(4573);
  static const ERROR_PLATFORM_MANIFEST_BINARY_ID_NOT_FOUND = 4574;
  static const ERROR_PLATFORM_MANIFEST_NOT_ACTIVE = 4575;
  static const ERROR_PLATFORM_MANIFEST_NOT_SIGNED = 4576;
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNFRIENDLY_FILE =
      WIN32_ERROR(4580);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNATTAINABLE =
      WIN32_ERROR(4581);
  static const ERROR_SYSTEM_INTEGRITY_REPUTATION_EXPLICIT_DENY_FILE =
      WIN32_ERROR(4582);
  static const ERROR_DEPENDENT_RESOURCE_EXISTS = 5001;
  static const ERROR_DEPENDENCY_NOT_FOUND = 5002;
  static const ERROR_DEPENDENCY_ALREADY_EXISTS = 5003;
  static const ERROR_RESOURCE_NOT_ONLINE = 5004;
  static const ERROR_HOST_NODE_NOT_AVAILABLE = 5005;
  static const ERROR_RESOURCE_NOT_AVAILABLE = 5006;
  static const ERROR_RESOURCE_NOT_FOUND = 5007;
  static const ERROR_SHUTDOWN_CLUSTER = 5008;
  static const ERROR_CANT_EVICT_ACTIVE_NODE = 5009;
  static const ERROR_OBJECT_ALREADY_EXISTS = 5010;
  static const ERROR_OBJECT_IN_LIST = 5011;
  static const ERROR_GROUP_NOT_AVAILABLE = 5012;
  static const ERROR_GROUP_NOT_FOUND = 5013;
  static const ERROR_GROUP_NOT_ONLINE = 5014;
  static const ERROR_HOST_NODE_NOT_RESOURCE_OWNER = 5015;
  static const ERROR_HOST_NODE_NOT_GROUP_OWNER = 5016;
  static const ERROR_RESMON_CREATE_FAILED = 5017;
  static const ERROR_RESMON_ONLINE_FAILED = 5018;
  static const ERROR_RESOURCE_ONLINE = 5019;
  static const ERROR_QUORUM_RESOURCE = 5020;
  static const ERROR_NOT_QUORUM_CAPABLE = 5021;
  static const ERROR_CLUSTER_SHUTTING_DOWN = 5022;
  static const ERROR_INVALID_STATE = 5023;
  static const ERROR_RESOURCE_PROPERTIES_STORED = 5024;
  static const ERROR_NOT_QUORUM_CLASS = 5025;
  static const ERROR_CORE_RESOURCE = 5026;
  static const ERROR_QUORUM_RESOURCE_ONLINE_FAILED = 5027;
  static const ERROR_QUORUMLOG_OPEN_FAILED = 5028;
  static const ERROR_CLUSTERLOG_CORRUPT = 5029;
  static const ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE = 5030;
  static const ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE = 5031;
  static const ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND = 5032;
  static const ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE = 5033;
  static const ERROR_QUORUM_OWNER_ALIVE = 5034;
  static const ERROR_NETWORK_NOT_AVAILABLE = 5035;
  static const ERROR_NODE_NOT_AVAILABLE = 5036;
  static const ERROR_ALL_NODES_NOT_AVAILABLE = 5037;
  static const ERROR_RESOURCE_FAILED = 5038;
  static const ERROR_CLUSTER_INVALID_NODE = 5039;
  static const ERROR_CLUSTER_NODE_EXISTS = 5040;
  static const ERROR_CLUSTER_JOIN_IN_PROGRESS = 5041;
  static const ERROR_CLUSTER_NODE_NOT_FOUND = 5042;
  static const ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND = 5043;
  static const ERROR_CLUSTER_NETWORK_EXISTS = 5044;
  static const ERROR_CLUSTER_NETWORK_NOT_FOUND = 5045;
  static const ERROR_CLUSTER_NETINTERFACE_EXISTS = 5046;
  static const ERROR_CLUSTER_NETINTERFACE_NOT_FOUND = 5047;
  static const ERROR_CLUSTER_INVALID_REQUEST = 5048;
  static const ERROR_CLUSTER_INVALID_NETWORK_PROVIDER = 5049;
  static const ERROR_CLUSTER_NODE_DOWN = 5050;
  static const ERROR_CLUSTER_NODE_UNREACHABLE = 5051;
  static const ERROR_CLUSTER_NODE_NOT_MEMBER = 5052;
  static const ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS = 5053;
  static const ERROR_CLUSTER_INVALID_NETWORK = 5054;
  static const ERROR_CLUSTER_NODE_UP = 5056;
  static const ERROR_CLUSTER_IPADDR_IN_USE = 5057;
  static const ERROR_CLUSTER_NODE_NOT_PAUSED = 5058;
  static const ERROR_CLUSTER_NO_SECURITY_CONTEXT = 5059;
  static const ERROR_CLUSTER_NETWORK_NOT_INTERNAL = 5060;
  static const ERROR_CLUSTER_NODE_ALREADY_UP = 5061;
  static const ERROR_CLUSTER_NODE_ALREADY_DOWN = 5062;
  static const ERROR_CLUSTER_NETWORK_ALREADY_ONLINE = 5063;
  static const ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE = 5064;
  static const ERROR_CLUSTER_NODE_ALREADY_MEMBER = 5065;
  static const ERROR_CLUSTER_LAST_INTERNAL_NETWORK = 5066;
  static const ERROR_CLUSTER_NETWORK_HAS_DEPENDENTS = 5067;
  static const ERROR_INVALID_OPERATION_ON_QUORUM = 5068;
  static const ERROR_DEPENDENCY_NOT_ALLOWED = 5069;
  static const ERROR_CLUSTER_NODE_PAUSED = 5070;
  static const ERROR_NODE_CANT_HOST_RESOURCE = 5071;
  static const ERROR_CLUSTER_NODE_NOT_READY = 5072;
  static const ERROR_CLUSTER_NODE_SHUTTING_DOWN = 5073;
  static const ERROR_CLUSTER_JOIN_ABORTED = 5074;
  static const ERROR_CLUSTER_INCOMPATIBLE_VERSIONS = 5075;
  static const ERROR_CLUSTER_MAXNUM_OF_RESOURCES_EXCEEDED = 5076;
  static const ERROR_CLUSTER_SYSTEM_CONFIG_CHANGED = 5077;
  static const ERROR_CLUSTER_RESOURCE_TYPE_NOT_FOUND = 5078;
  static const ERROR_CLUSTER_RESTYPE_NOT_SUPPORTED = 5079;
  static const ERROR_CLUSTER_RESNAME_NOT_FOUND = 5080;
  static const ERROR_CLUSTER_NO_RPC_PACKAGES_REGISTERED = 5081;
  static const ERROR_CLUSTER_OWNER_NOT_IN_PREFLIST = 5082;
  static const ERROR_CLUSTER_DATABASE_SEQMISMATCH = 5083;
  static const ERROR_RESMON_INVALID_STATE = 5084;
  static const ERROR_CLUSTER_GUM_NOT_LOCKER = 5085;
  static const ERROR_QUORUM_DISK_NOT_FOUND = 5086;
  static const ERROR_DATABASE_BACKUP_CORRUPT = 5087;
  static const ERROR_CLUSTER_NODE_ALREADY_HAS_DFS_ROOT = 5088;
  static const ERROR_RESOURCE_PROPERTY_UNCHANGEABLE = 5089;
  static const ERROR_NO_ADMIN_ACCESS_POINT = 5090;
  static const ERROR_CLUSTER_MEMBERSHIP_INVALID_STATE = 5890;
  static const ERROR_CLUSTER_QUORUMLOG_NOT_FOUND = 5891;
  static const ERROR_CLUSTER_MEMBERSHIP_HALT = 5892;
  static const ERROR_CLUSTER_INSTANCE_ID_MISMATCH = 5893;
  static const ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP = 5894;
  static const ERROR_CLUSTER_PROPERTY_DATA_TYPE_MISMATCH = 5895;
  static const ERROR_CLUSTER_EVICT_WITHOUT_CLEANUP = 5896;
  static const ERROR_CLUSTER_PARAMETER_MISMATCH = 5897;
  static const ERROR_NODE_CANNOT_BE_CLUSTERED = 5898;
  static const ERROR_CLUSTER_WRONG_OS_VERSION = 5899;
  static const ERROR_CLUSTER_CANT_CREATE_DUP_CLUSTER_NAME = 5900;
  static const ERROR_CLUSCFG_ALREADY_COMMITTED = 5901;
  static const ERROR_CLUSCFG_ROLLBACK_FAILED = 5902;
  static const ERROR_CLUSCFG_SYSTEM_DISK_DRIVE_LETTER_CONFLICT =
      WIN32_ERROR(5903);
  static const ERROR_CLUSTER_OLD_VERSION = 5904;
  static const ERROR_CLUSTER_MISMATCHED_COMPUTER_ACCT_NAME = 5905;
  static const ERROR_CLUSTER_NO_NET_ADAPTERS = 5906;
  static const ERROR_CLUSTER_POISONED = 5907;
  static const ERROR_CLUSTER_GROUP_MOVING = 5908;
  static const ERROR_CLUSTER_RESOURCE_TYPE_BUSY = 5909;
  static const ERROR_RESOURCE_CALL_TIMED_OUT = 5910;
  static const ERROR_INVALID_CLUSTER_IPV6_ADDRESS = 5911;
  static const ERROR_CLUSTER_INTERNAL_INVALID_FUNCTION = 5912;
  static const ERROR_CLUSTER_PARAMETER_OUT_OF_BOUNDS = 5913;
  static const ERROR_CLUSTER_PARTIAL_SEND = 5914;
  static const ERROR_CLUSTER_REGISTRY_INVALID_FUNCTION = 5915;
  static const ERROR_CLUSTER_INVALID_STRING_TERMINATION = 5916;
  static const ERROR_CLUSTER_INVALID_STRING_FORMAT = 5917;
  static const ERROR_CLUSTER_DATABASE_TRANSACTION_IN_PROGRESS =
      WIN32_ERROR(5918);
  static const ERROR_CLUSTER_DATABASE_TRANSACTION_NOT_IN_PROGRESS =
      WIN32_ERROR(5919);
  static const ERROR_CLUSTER_NULL_DATA = 5920;
  static const ERROR_CLUSTER_PARTIAL_READ = 5921;
  static const ERROR_CLUSTER_PARTIAL_WRITE = 5922;
  static const ERROR_CLUSTER_CANT_DESERIALIZE_DATA = 5923;
  static const ERROR_DEPENDENT_RESOURCE_PROPERTY_CONFLICT = 5924;
  static const ERROR_CLUSTER_NO_QUORUM = 5925;
  static const ERROR_CLUSTER_INVALID_IPV6_NETWORK = 5926;
  static const ERROR_CLUSTER_INVALID_IPV6_TUNNEL_NETWORK = 5927;
  static const ERROR_QUORUM_NOT_ALLOWED_IN_THIS_GROUP = 5928;
  static const ERROR_DEPENDENCY_TREE_TOO_COMPLEX = 5929;
  static const ERROR_EXCEPTION_IN_RESOURCE_CALL = 5930;
  static const ERROR_CLUSTER_RHS_FAILED_INITIALIZATION = 5931;
  static const ERROR_CLUSTER_NOT_INSTALLED = 5932;
  static const ERROR_CLUSTER_RESOURCES_MUST_BE_ONLINE_ON_THE_SAME_NODE =
      WIN32_ERROR(5933);
  static const ERROR_CLUSTER_MAX_NODES_IN_CLUSTER = 5934;
  static const ERROR_CLUSTER_TOO_MANY_NODES = 5935;
  static const ERROR_CLUSTER_OBJECT_ALREADY_USED = 5936;
  static const ERROR_NONCORE_GROUPS_FOUND = 5937;
  static const ERROR_FILE_SHARE_RESOURCE_CONFLICT = 5938;
  static const ERROR_CLUSTER_EVICT_INVALID_REQUEST = 5939;
  static const ERROR_CLUSTER_SINGLETON_RESOURCE = 5940;
  static const ERROR_CLUSTER_GROUP_SINGLETON_RESOURCE = 5941;
  static const ERROR_CLUSTER_RESOURCE_PROVIDER_FAILED = 5942;
  static const ERROR_CLUSTER_RESOURCE_CONFIGURATION_ERROR = 5943;
  static const ERROR_CLUSTER_GROUP_BUSY = 5944;
  static const ERROR_CLUSTER_NOT_SHARED_VOLUME = 5945;
  static const ERROR_CLUSTER_INVALID_SECURITY_DESCRIPTOR = 5946;
  static const ERROR_CLUSTER_SHARED_VOLUMES_IN_USE = 5947;
  static const ERROR_CLUSTER_USE_SHARED_VOLUMES_API = 5948;
  static const ERROR_CLUSTER_BACKUP_IN_PROGRESS = 5949;
  static const ERROR_NON_CSV_PATH = 5950;
  static const ERROR_CSV_VOLUME_NOT_LOCAL = 5951;
  static const ERROR_CLUSTER_WATCHDOG_TERMINATING = 5952;
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_INCOMPATIBLE_NODES =
      WIN32_ERROR(5953);
  static const ERROR_CLUSTER_INVALID_NODE_WEIGHT = 5954;
  static const ERROR_CLUSTER_RESOURCE_VETOED_CALL = 5955;
  static const ERROR_RESMON_SYSTEM_RESOURCES_LACKING = 5956;
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_DESTINATION =
      WIN32_ERROR(5957);
  static const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_SOURCE =
      WIN32_ERROR(5958);
  static const ERROR_CLUSTER_GROUP_QUEUED = 5959;
  static const ERROR_CLUSTER_RESOURCE_LOCKED_STATUS = 5960;
  static const ERROR_CLUSTER_SHARED_VOLUME_FAILOVER_NOT_ALLOWED =
      WIN32_ERROR(5961);
  static const ERROR_CLUSTER_NODE_DRAIN_IN_PROGRESS = 5962;
  static const ERROR_CLUSTER_DISK_NOT_CONNECTED = 5963;
  static const ERROR_DISK_NOT_CSV_CAPABLE = 5964;
  static const ERROR_RESOURCE_NOT_IN_AVAILABLE_STORAGE = 5965;
  static const ERROR_CLUSTER_SHARED_VOLUME_REDIRECTED = 5966;
  static const ERROR_CLUSTER_SHARED_VOLUME_NOT_REDIRECTED = 5967;
  static const ERROR_CLUSTER_CANNOT_RETURN_PROPERTIES = 5968;
  static const ERROR_CLUSTER_RESOURCE_CONTAINS_UNSUPPORTED_DIFF_AREA_FOR_SHARED_VOLUMES =
      WIN32_ERROR(5969);
  static const ERROR_CLUSTER_RESOURCE_IS_IN_MAINTENANCE_MODE =
      WIN32_ERROR(5970);
  static const ERROR_CLUSTER_AFFINITY_CONFLICT = 5971;
  static const ERROR_CLUSTER_RESOURCE_IS_REPLICA_VIRTUAL_MACHINE =
      WIN32_ERROR(5972);
  static const ERROR_CLUSTER_UPGRADE_INCOMPATIBLE_VERSIONS = 5973;
  static const ERROR_CLUSTER_UPGRADE_FIX_QUORUM_NOT_SUPPORTED =
      WIN32_ERROR(5974);
  static const ERROR_CLUSTER_UPGRADE_RESTART_REQUIRED = 5975;
  static const ERROR_CLUSTER_UPGRADE_IN_PROGRESS = 5976;
  static const ERROR_CLUSTER_UPGRADE_INCOMPLETE = 5977;
  static const ERROR_CLUSTER_NODE_IN_GRACE_PERIOD = 5978;
  static const ERROR_CLUSTER_CSV_IO_PAUSE_TIMEOUT = 5979;
  static const ERROR_NODE_NOT_ACTIVE_CLUSTER_MEMBER = 5980;
  static const ERROR_CLUSTER_RESOURCE_NOT_MONITORED = 5981;
  static const ERROR_CLUSTER_RESOURCE_DOES_NOT_SUPPORT_UNMONITORED =
      WIN32_ERROR(5982);
  static const ERROR_CLUSTER_RESOURCE_IS_REPLICATED = 5983;
  static const ERROR_CLUSTER_NODE_ISOLATED = 5984;
  static const ERROR_CLUSTER_NODE_QUARANTINED = 5985;
  static const ERROR_CLUSTER_DATABASE_UPDATE_CONDITION_FAILED =
      WIN32_ERROR(5986);
  static const ERROR_CLUSTER_SPACE_DEGRADED = 5987;
  static const ERROR_CLUSTER_TOKEN_DELEGATION_NOT_SUPPORTED = 5988;
  static const ERROR_CLUSTER_CSV_INVALID_HANDLE = 5989;
  static const ERROR_CLUSTER_CSV_SUPPORTED_ONLY_ON_COORDINATOR =
      WIN32_ERROR(5990);
  static const ERROR_GROUPSET_NOT_AVAILABLE = 5991;
  static const ERROR_GROUPSET_NOT_FOUND = 5992;
  static const ERROR_GROUPSET_CANT_PROVIDE = 5993;
  static const ERROR_CLUSTER_FAULT_DOMAIN_PARENT_NOT_FOUND = 5994;
  static const ERROR_CLUSTER_FAULT_DOMAIN_INVALID_HIERARCHY = 5995;
  static const ERROR_CLUSTER_FAULT_DOMAIN_FAILED_S2D_VALIDATION =
      WIN32_ERROR(5996);
  static const ERROR_CLUSTER_FAULT_DOMAIN_S2D_CONNECTIVITY_LOSS =
      WIN32_ERROR(5997);
  static const ERROR_CLUSTER_INVALID_INFRASTRUCTURE_FILESERVER_NAME =
      WIN32_ERROR(5998);
  static const ERROR_CLUSTERSET_MANAGEMENT_CLUSTER_UNREACHABLE =
      WIN32_ERROR(5999);
  static const ERROR_ENCRYPTION_FAILED = 6000;
  static const ERROR_DECRYPTION_FAILED = 6001;
  static const ERROR_FILE_ENCRYPTED = 6002;
  static const ERROR_NO_RECOVERY_POLICY = 6003;
  static const ERROR_NO_EFS = 6004;
  static const ERROR_WRONG_EFS = 6005;
  static const ERROR_NO_USER_KEYS = 6006;
  static const ERROR_FILE_NOT_ENCRYPTED = 6007;
  static const ERROR_NOT_EXPORT_FORMAT = 6008;
  static const ERROR_FILE_READ_ONLY = 6009;
  static const ERROR_DIR_EFS_DISALLOWED = 6010;
  static const ERROR_EFS_SERVER_NOT_TRUSTED = 6011;
  static const ERROR_BAD_RECOVERY_POLICY = 6012;
  static const ERROR_EFS_ALG_BLOB_TOO_BIG = 6013;
  static const ERROR_VOLUME_NOT_SUPPORT_EFS = 6014;
  static const ERROR_EFS_DISABLED = 6015;
  static const ERROR_EFS_VERSION_NOT_SUPPORT = 6016;
  static const ERROR_CS_ENCRYPTION_INVALID_SERVER_RESPONSE = 6017;
  static const ERROR_CS_ENCRYPTION_UNSUPPORTED_SERVER = 6018;
  static const ERROR_CS_ENCRYPTION_EXISTING_ENCRYPTED_FILE = 6019;
  static const ERROR_CS_ENCRYPTION_NEW_ENCRYPTED_FILE = 6020;
  static const ERROR_CS_ENCRYPTION_FILE_NOT_CSE = 6021;
  static const ERROR_ENCRYPTION_POLICY_DENIES_OPERATION = 6022;
  static const ERROR_WIP_ENCRYPTION_FAILED = 6023;
  static const ERROR_NO_BROWSER_SERVERS_FOUND = 6118;
  static const ERROR_CLUSTER_OBJECT_IS_CLUSTER_SET_VM = 6250;
  static const ERROR_LOG_SECTOR_INVALID = 6600;
  static const ERROR_LOG_SECTOR_PARITY_INVALID = 6601;
  static const ERROR_LOG_SECTOR_REMAPPED = 6602;
  static const ERROR_LOG_BLOCK_INCOMPLETE = 6603;
  static const ERROR_LOG_INVALID_RANGE = 6604;
  static const ERROR_LOG_BLOCKS_EXHAUSTED = 6605;
  static const ERROR_LOG_READ_CONTEXT_INVALID = 6606;
  static const ERROR_LOG_RESTART_INVALID = 6607;
  static const ERROR_LOG_BLOCK_VERSION = 6608;
  static const ERROR_LOG_BLOCK_INVALID = 6609;
  static const ERROR_LOG_READ_MODE_INVALID = 6610;
  static const ERROR_LOG_NO_RESTART = 6611;
  static const ERROR_LOG_METADATA_CORRUPT = 6612;
  static const ERROR_LOG_METADATA_INVALID = 6613;
  static const ERROR_LOG_METADATA_INCONSISTENT = 6614;
  static const ERROR_LOG_RESERVATION_INVALID = 6615;
  static const ERROR_LOG_CANT_DELETE = 6616;
  static const ERROR_LOG_CONTAINER_LIMIT_EXCEEDED = 6617;
  static const ERROR_LOG_START_OF_LOG = 6618;
  static const ERROR_LOG_POLICY_ALREADY_INSTALLED = 6619;
  static const ERROR_LOG_POLICY_NOT_INSTALLED = 6620;
  static const ERROR_LOG_POLICY_INVALID = 6621;
  static const ERROR_LOG_POLICY_CONFLICT = 6622;
  static const ERROR_LOG_PINNED_ARCHIVE_TAIL = 6623;
  static const ERROR_LOG_RECORD_NONEXISTENT = 6624;
  static const ERROR_LOG_RECORDS_RESERVED_INVALID = 6625;
  static const ERROR_LOG_SPACE_RESERVED_INVALID = 6626;
  static const ERROR_LOG_TAIL_INVALID = 6627;
  static const ERROR_LOG_FULL = 6628;
  static const ERROR_COULD_NOT_RESIZE_LOG = 6629;
  static const ERROR_LOG_MULTIPLEXED = 6630;
  static const ERROR_LOG_DEDICATED = 6631;
  static const ERROR_LOG_ARCHIVE_NOT_IN_PROGRESS = 6632;
  static const ERROR_LOG_ARCHIVE_IN_PROGRESS = 6633;
  static const ERROR_LOG_EPHEMERAL = 6634;
  static const ERROR_LOG_NOT_ENOUGH_CONTAINERS = 6635;
  static const ERROR_LOG_CLIENT_ALREADY_REGISTERED = 6636;
  static const ERROR_LOG_CLIENT_NOT_REGISTERED = 6637;
  static const ERROR_LOG_FULL_HANDLER_IN_PROGRESS = 6638;
  static const ERROR_LOG_CONTAINER_READ_FAILED = 6639;
  static const ERROR_LOG_CONTAINER_WRITE_FAILED = 6640;
  static const ERROR_LOG_CONTAINER_OPEN_FAILED = 6641;
  static const ERROR_LOG_CONTAINER_STATE_INVALID = 6642;
  static const ERROR_LOG_STATE_INVALID = 6643;
  static const ERROR_LOG_PINNED = 6644;
  static const ERROR_LOG_METADATA_FLUSH_FAILED = 6645;
  static const ERROR_LOG_INCONSISTENT_SECURITY = 6646;
  static const ERROR_LOG_APPENDED_FLUSH_FAILED = 6647;
  static const ERROR_LOG_PINNED_RESERVATION = 6648;
  static const ERROR_INVALID_TRANSACTION = 6700;
  static const ERROR_TRANSACTION_NOT_ACTIVE = 6701;
  static const ERROR_TRANSACTION_REQUEST_NOT_VALID = 6702;
  static const ERROR_TRANSACTION_NOT_REQUESTED = 6703;
  static const ERROR_TRANSACTION_ALREADY_ABORTED = 6704;
  static const ERROR_TRANSACTION_ALREADY_COMMITTED = 6705;
  static const ERROR_TM_INITIALIZATION_FAILED = 6706;
  static const ERROR_RESOURCEMANAGER_READ_ONLY = 6707;
  static const ERROR_TRANSACTION_NOT_JOINED = 6708;
  static const ERROR_TRANSACTION_SUPERIOR_EXISTS = 6709;
  static const ERROR_CRM_PROTOCOL_ALREADY_EXISTS = 6710;
  static const ERROR_TRANSACTION_PROPAGATION_FAILED = 6711;
  static const ERROR_CRM_PROTOCOL_NOT_FOUND = 6712;
  static const ERROR_TRANSACTION_INVALID_MARSHALL_BUFFER = 6713;
  static const ERROR_CURRENT_TRANSACTION_NOT_VALID = 6714;
  static const ERROR_TRANSACTION_NOT_FOUND = 6715;
  static const ERROR_RESOURCEMANAGER_NOT_FOUND = 6716;
  static const ERROR_ENLISTMENT_NOT_FOUND = 6717;
  static const ERROR_TRANSACTIONMANAGER_NOT_FOUND = 6718;
  static const ERROR_TRANSACTIONMANAGER_NOT_ONLINE = 6719;
  static const ERROR_TRANSACTIONMANAGER_RECOVERY_NAME_COLLISION =
      WIN32_ERROR(6720);
  static const ERROR_TRANSACTION_NOT_ROOT = 6721;
  static const ERROR_TRANSACTION_OBJECT_EXPIRED = 6722;
  static const ERROR_TRANSACTION_RESPONSE_NOT_ENLISTED = 6723;
  static const ERROR_TRANSACTION_RECORD_TOO_LONG = 6724;
  static const ERROR_IMPLICIT_TRANSACTION_NOT_SUPPORTED = 6725;
  static const ERROR_TRANSACTION_INTEGRITY_VIOLATED = 6726;
  static const ERROR_TRANSACTIONMANAGER_IDENTITY_MISMATCH = 6727;
  static const ERROR_RM_CANNOT_BE_FROZEN_FOR_SNAPSHOT = 6728;
  static const ERROR_TRANSACTION_MUST_WRITETHROUGH = 6729;
  static const ERROR_TRANSACTION_NO_SUPERIOR = 6730;
  static const ERROR_HEURISTIC_DAMAGE_POSSIBLE = 6731;
  static const ERROR_TRANSACTIONAL_CONFLICT = 6800;
  static const ERROR_RM_NOT_ACTIVE = 6801;
  static const ERROR_RM_METADATA_CORRUPT = 6802;
  static const ERROR_DIRECTORY_NOT_RM = 6803;
  static const ERROR_TRANSACTIONS_UNSUPPORTED_REMOTE = 6805;
  static const ERROR_LOG_RESIZE_INVALID_SIZE = 6806;
  static const ERROR_OBJECT_NO_LONGER_EXISTS = 6807;
  static const ERROR_STREAM_MINIVERSION_NOT_FOUND = 6808;
  static const ERROR_STREAM_MINIVERSION_NOT_VALID = 6809;
  static const ERROR_MINIVERSION_INACCESSIBLE_FROM_SPECIFIED_TRANSACTION =
      WIN32_ERROR(6810);
  static const ERROR_CANT_OPEN_MINIVERSION_WITH_MODIFY_INTENT =
      WIN32_ERROR(6811);
  static const ERROR_CANT_CREATE_MORE_STREAM_MINIVERSIONS = 6812;
  static const ERROR_REMOTE_FILE_VERSION_MISMATCH = 6814;
  static const ERROR_HANDLE_NO_LONGER_VALID = 6815;
  static const ERROR_NO_TXF_METADATA = 6816;
  static const ERROR_LOG_CORRUPTION_DETECTED = 6817;
  static const ERROR_CANT_RECOVER_WITH_HANDLE_OPEN = 6818;
  static const ERROR_RM_DISCONNECTED = 6819;
  static const ERROR_ENLISTMENT_NOT_SUPERIOR = 6820;
  static const ERROR_RECOVERY_NOT_NEEDED = 6821;
  static const ERROR_RM_ALREADY_STARTED = 6822;
  static const ERROR_FILE_IDENTITY_NOT_PERSISTENT = 6823;
  static const ERROR_CANT_BREAK_TRANSACTIONAL_DEPENDENCY = 6824;
  static const ERROR_CANT_CROSS_RM_BOUNDARY = 6825;
  static const ERROR_TXF_DIR_NOT_EMPTY = 6826;
  static const ERROR_INDOUBT_TRANSACTIONS_EXIST = 6827;
  static const ERROR_TM_VOLATILE = 6828;
  static const ERROR_ROLLBACK_TIMER_EXPIRED = 6829;
  static const ERROR_TXF_ATTRIBUTE_CORRUPT = 6830;
  static const ERROR_EFS_NOT_ALLOWED_IN_TRANSACTION = 6831;
  static const ERROR_TRANSACTIONAL_OPEN_NOT_ALLOWED = 6832;
  static const ERROR_LOG_GROWTH_FAILED = 6833;
  static const ERROR_TRANSACTED_MAPPING_UNSUPPORTED_REMOTE = 6834;
  static const ERROR_TXF_METADATA_ALREADY_PRESENT = 6835;
  static const ERROR_TRANSACTION_SCOPE_CALLBACKS_NOT_SET = 6836;
  static const ERROR_TRANSACTION_REQUIRED_PROMOTION = 6837;
  static const ERROR_CANNOT_EXECUTE_FILE_IN_TRANSACTION = 6838;
  static const ERROR_TRANSACTIONS_NOT_FROZEN = 6839;
  static const ERROR_TRANSACTION_FREEZE_IN_PROGRESS = 6840;
  static const ERROR_NOT_SNAPSHOT_VOLUME = 6841;
  static const ERROR_NO_SAVEPOINT_WITH_OPEN_FILES = 6842;
  static const ERROR_DATA_LOST_REPAIR = 6843;
  static const ERROR_SPARSE_NOT_ALLOWED_IN_TRANSACTION = 6844;
  static const ERROR_TM_IDENTITY_MISMATCH = 6845;
  static const ERROR_FLOATED_SECTION = 6846;
  static const ERROR_CANNOT_ACCEPT_TRANSACTED_WORK = 6847;
  static const ERROR_CANNOT_ABORT_TRANSACTIONS = 6848;
  static const ERROR_BAD_CLUSTERS = 6849;
  static const ERROR_COMPRESSION_NOT_ALLOWED_IN_TRANSACTION = 6850;
  static const ERROR_VOLUME_DIRTY = 6851;
  static const ERROR_NO_LINK_TRACKING_IN_TRANSACTION = 6852;
  static const ERROR_OPERATION_NOT_SUPPORTED_IN_TRANSACTION = 6853;
  static const ERROR_EXPIRED_HANDLE = 6854;
  static const ERROR_TRANSACTION_NOT_ENLISTED = 6855;
  static const ERROR_CTX_WINSTATION_NAME_INVALID = 7001;
  static const ERROR_CTX_INVALID_PD = 7002;
  static const ERROR_CTX_PD_NOT_FOUND = 7003;
  static const ERROR_CTX_WD_NOT_FOUND = 7004;
  static const ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY = 7005;
  static const ERROR_CTX_SERVICE_NAME_COLLISION = 7006;
  static const ERROR_CTX_CLOSE_PENDING = 7007;
  static const ERROR_CTX_NO_OUTBUF = 7008;
  static const ERROR_CTX_MODEM_INF_NOT_FOUND = 7009;
  static const ERROR_CTX_INVALID_MODEMNAME = 7010;
  static const ERROR_CTX_MODEM_RESPONSE_ERROR = 7011;
  static const ERROR_CTX_MODEM_RESPONSE_TIMEOUT = 7012;
  static const ERROR_CTX_MODEM_RESPONSE_NO_CARRIER = 7013;
  static const ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE = 7014;
  static const ERROR_CTX_MODEM_RESPONSE_BUSY = 7015;
  static const ERROR_CTX_MODEM_RESPONSE_VOICE = 7016;
  static const ERROR_CTX_TD_ERROR = 7017;
  static const ERROR_CTX_WINSTATION_NOT_FOUND = 7022;
  static const ERROR_CTX_WINSTATION_ALREADY_EXISTS = 7023;
  static const ERROR_CTX_WINSTATION_BUSY = 7024;
  static const ERROR_CTX_BAD_VIDEO_MODE = 7025;
  static const ERROR_CTX_GRAPHICS_INVALID = 7035;
  static const ERROR_CTX_LOGON_DISABLED = 7037;
  static const ERROR_CTX_NOT_CONSOLE = 7038;
  static const ERROR_CTX_CLIENT_QUERY_TIMEOUT = 7040;
  static const ERROR_CTX_CONSOLE_DISCONNECT = 7041;
  static const ERROR_CTX_CONSOLE_CONNECT = 7042;
  static const ERROR_CTX_SHADOW_DENIED = 7044;
  static const ERROR_CTX_WINSTATION_ACCESS_DENIED = 7045;
  static const ERROR_CTX_INVALID_WD = 7049;
  static const ERROR_CTX_SHADOW_INVALID = 7050;
  static const ERROR_CTX_SHADOW_DISABLED = 7051;
  static const ERROR_CTX_CLIENT_LICENSE_IN_USE = 7052;
  static const ERROR_CTX_CLIENT_LICENSE_NOT_SET = 7053;
  static const ERROR_CTX_LICENSE_NOT_AVAILABLE = 7054;
  static const ERROR_CTX_LICENSE_CLIENT_INVALID = 7055;
  static const ERROR_CTX_LICENSE_EXPIRED = 7056;
  static const ERROR_CTX_SHADOW_NOT_RUNNING = 7057;
  static const ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE = 7058;
  static const ERROR_ACTIVATION_COUNT_EXCEEDED = 7059;
  static const ERROR_CTX_WINSTATIONS_DISABLED = 7060;
  static const ERROR_CTX_ENCRYPTION_LEVEL_REQUIRED = 7061;
  static const ERROR_CTX_SESSION_IN_USE = 7062;
  static const ERROR_CTX_NO_FORCE_LOGOFF = 7063;
  static const ERROR_CTX_ACCOUNT_RESTRICTION = 7064;
  static const ERROR_RDP_PROTOCOL_ERROR = 7065;
  static const ERROR_CTX_CDM_CONNECT = 7066;
  static const ERROR_CTX_CDM_DISCONNECT = 7067;
  static const ERROR_CTX_SECURITY_LAYER_ERROR = 7068;
  static const ERROR_TS_INCOMPATIBLE_SESSIONS = 7069;
  static const ERROR_TS_VIDEO_SUBSYSTEM_ERROR = 7070;
  static const ERROR_DS_NOT_INSTALLED = 8200;
  static const ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY = 8201;
  static const ERROR_DS_NO_ATTRIBUTE_OR_VALUE = 8202;
  static const ERROR_DS_INVALID_ATTRIBUTE_SYNTAX = 8203;
  static const ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED = 8204;
  static const ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS = 8205;
  static const ERROR_DS_BUSY = 8206;
  static const ERROR_DS_UNAVAILABLE = 8207;
  static const ERROR_DS_NO_RIDS_ALLOCATED = 8208;
  static const ERROR_DS_NO_MORE_RIDS = 8209;
  static const ERROR_DS_INCORRECT_ROLE_OWNER = 8210;
  static const ERROR_DS_RIDMGR_INIT_ERROR = 8211;
  static const ERROR_DS_OBJ_CLASS_VIOLATION = 8212;
  static const ERROR_DS_CANT_ON_NON_LEAF = 8213;
  static const ERROR_DS_CANT_ON_RDN = 8214;
  static const ERROR_DS_CANT_MOD_OBJ_CLASS = 8215;
  static const ERROR_DS_CROSS_DOM_MOVE_ERROR = 8216;
  static const ERROR_DS_GC_NOT_AVAILABLE = 8217;
  static const ERROR_SHARED_POLICY = 8218;
  static const ERROR_POLICY_OBJECT_NOT_FOUND = 8219;
  static const ERROR_POLICY_ONLY_IN_DS = 8220;
  static const ERROR_PROMOTION_ACTIVE = 8221;
  static const ERROR_NO_PROMOTION_ACTIVE = 8222;
  static const ERROR_DS_OPERATIONS_ERROR = 8224;
  static const ERROR_DS_PROTOCOL_ERROR = 8225;
  static const ERROR_DS_TIMELIMIT_EXCEEDED = 8226;
  static const ERROR_DS_SIZELIMIT_EXCEEDED = 8227;
  static const ERROR_DS_ADMIN_LIMIT_EXCEEDED = 8228;
  static const ERROR_DS_COMPARE_FALSE = 8229;
  static const ERROR_DS_COMPARE_TRUE = 8230;
  static const ERROR_DS_AUTH_METHOD_NOT_SUPPORTED = 8231;
  static const ERROR_DS_STRONG_AUTH_REQUIRED = 8232;
  static const ERROR_DS_INAPPROPRIATE_AUTH = 8233;
  static const ERROR_DS_AUTH_UNKNOWN = 8234;
  static const ERROR_DS_REFERRAL = 8235;
  static const ERROR_DS_UNAVAILABLE_CRIT_EXTENSION = 8236;
  static const ERROR_DS_CONFIDENTIALITY_REQUIRED = 8237;
  static const ERROR_DS_INAPPROPRIATE_MATCHING = 8238;
  static const ERROR_DS_CONSTRAINT_VIOLATION = 8239;
  static const ERROR_DS_NO_SUCH_OBJECT = 8240;
  static const ERROR_DS_ALIAS_PROBLEM = 8241;
  static const ERROR_DS_INVALID_DN_SYNTAX = 8242;
  static const ERROR_DS_IS_LEAF = 8243;
  static const ERROR_DS_ALIAS_DEREF_PROBLEM = 8244;
  static const ERROR_DS_UNWILLING_TO_PERFORM = 8245;
  static const ERROR_DS_LOOP_DETECT = 8246;
  static const ERROR_DS_NAMING_VIOLATION = 8247;
  static const ERROR_DS_OBJECT_RESULTS_TOO_LARGE = 8248;
  static const ERROR_DS_AFFECTS_MULTIPLE_DSAS = 8249;
  static const ERROR_DS_SERVER_DOWN = 8250;
  static const ERROR_DS_LOCAL_ERROR = 8251;
  static const ERROR_DS_ENCODING_ERROR = 8252;
  static const ERROR_DS_DECODING_ERROR = 8253;
  static const ERROR_DS_FILTER_UNKNOWN = 8254;
  static const ERROR_DS_PARAM_ERROR = 8255;
  static const ERROR_DS_NOT_SUPPORTED = 8256;
  static const ERROR_DS_NO_RESULTS_RETURNED = 8257;
  static const ERROR_DS_CONTROL_NOT_FOUND = 8258;
  static const ERROR_DS_CLIENT_LOOP = 8259;
  static const ERROR_DS_REFERRAL_LIMIT_EXCEEDED = 8260;
  static const ERROR_DS_SORT_CONTROL_MISSING = 8261;
  static const ERROR_DS_OFFSET_RANGE_ERROR = 8262;
  static const ERROR_DS_RIDMGR_DISABLED = 8263;
  static const ERROR_DS_ROOT_MUST_BE_NC = 8301;
  static const ERROR_DS_ADD_REPLICA_INHIBITED = 8302;
  static const ERROR_DS_ATT_NOT_DEF_IN_SCHEMA = 8303;
  static const ERROR_DS_MAX_OBJ_SIZE_EXCEEDED = 8304;
  static const ERROR_DS_OBJ_STRING_NAME_EXISTS = 8305;
  static const ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA = 8306;
  static const ERROR_DS_RDN_DOESNT_MATCH_SCHEMA = 8307;
  static const ERROR_DS_NO_REQUESTED_ATTS_FOUND = 8308;
  static const ERROR_DS_USER_BUFFER_TO_SMALL = 8309;
  static const ERROR_DS_ATT_IS_NOT_ON_OBJ = 8310;
  static const ERROR_DS_ILLEGAL_MOD_OPERATION = 8311;
  static const ERROR_DS_OBJ_TOO_LARGE = 8312;
  static const ERROR_DS_BAD_INSTANCE_TYPE = 8313;
  static const ERROR_DS_MASTERDSA_REQUIRED = 8314;
  static const ERROR_DS_OBJECT_CLASS_REQUIRED = 8315;
  static const ERROR_DS_MISSING_REQUIRED_ATT = 8316;
  static const ERROR_DS_ATT_NOT_DEF_FOR_CLASS = 8317;
  static const ERROR_DS_ATT_ALREADY_EXISTS = 8318;
  static const ERROR_DS_CANT_ADD_ATT_VALUES = 8320;
  static const ERROR_DS_SINGLE_VALUE_CONSTRAINT = 8321;
  static const ERROR_DS_RANGE_CONSTRAINT = 8322;
  static const ERROR_DS_ATT_VAL_ALREADY_EXISTS = 8323;
  static const ERROR_DS_CANT_REM_MISSING_ATT = 8324;
  static const ERROR_DS_CANT_REM_MISSING_ATT_VAL = 8325;
  static const ERROR_DS_ROOT_CANT_BE_SUBREF = 8326;
  static const ERROR_DS_NO_CHAINING = 8327;
  static const ERROR_DS_NO_CHAINED_EVAL = 8328;
  static const ERROR_DS_NO_PARENT_OBJECT = 8329;
  static const ERROR_DS_PARENT_IS_AN_ALIAS = 8330;
  static const ERROR_DS_CANT_MIX_MASTER_AND_REPS = 8331;
  static const ERROR_DS_CHILDREN_EXIST = 8332;
  static const ERROR_DS_OBJ_NOT_FOUND = 8333;
  static const ERROR_DS_ALIASED_OBJ_MISSING = 8334;
  static const ERROR_DS_BAD_NAME_SYNTAX = 8335;
  static const ERROR_DS_ALIAS_POINTS_TO_ALIAS = 8336;
  static const ERROR_DS_CANT_DEREF_ALIAS = 8337;
  static const ERROR_DS_OUT_OF_SCOPE = 8338;
  static const ERROR_DS_OBJECT_BEING_REMOVED = 8339;
  static const ERROR_DS_CANT_DELETE_DSA_OBJ = 8340;
  static const ERROR_DS_GENERIC_ERROR = 8341;
  static const ERROR_DS_DSA_MUST_BE_INT_MASTER = 8342;
  static const ERROR_DS_CLASS_NOT_DSA = 8343;
  static const ERROR_DS_INSUFF_ACCESS_RIGHTS = 8344;
  static const ERROR_DS_ILLEGAL_SUPERIOR = 8345;
  static const ERROR_DS_ATTRIBUTE_OWNED_BY_SAM = 8346;
  static const ERROR_DS_NAME_TOO_MANY_PARTS = 8347;
  static const ERROR_DS_NAME_TOO_LONG = 8348;
  static const ERROR_DS_NAME_VALUE_TOO_LONG = 8349;
  static const ERROR_DS_NAME_UNPARSEABLE = 8350;
  static const ERROR_DS_NAME_TYPE_UNKNOWN = 8351;
  static const ERROR_DS_NOT_AN_OBJECT = 8352;
  static const ERROR_DS_SEC_DESC_TOO_SHORT = 8353;
  static const ERROR_DS_SEC_DESC_INVALID = 8354;
  static const ERROR_DS_NO_DELETED_NAME = 8355;
  static const ERROR_DS_SUBREF_MUST_HAVE_PARENT = 8356;
  static const ERROR_DS_NCNAME_MUST_BE_NC = 8357;
  static const ERROR_DS_CANT_ADD_SYSTEM_ONLY = 8358;
  static const ERROR_DS_CLASS_MUST_BE_CONCRETE = 8359;
  static const ERROR_DS_INVALID_DMD = 8360;
  static const ERROR_DS_OBJ_GUID_EXISTS = 8361;
  static const ERROR_DS_NOT_ON_BACKLINK = 8362;
  static const ERROR_DS_NO_CROSSREF_FOR_NC = 8363;
  static const ERROR_DS_SHUTTING_DOWN = 8364;
  static const ERROR_DS_UNKNOWN_OPERATION = 8365;
  static const ERROR_DS_INVALID_ROLE_OWNER = 8366;
  static const ERROR_DS_COULDNT_CONTACT_FSMO = 8367;
  static const ERROR_DS_CROSS_NC_DN_RENAME = 8368;
  static const ERROR_DS_CANT_MOD_SYSTEM_ONLY = 8369;
  static const ERROR_DS_REPLICATOR_ONLY = 8370;
  static const ERROR_DS_OBJ_CLASS_NOT_DEFINED = 8371;
  static const ERROR_DS_OBJ_CLASS_NOT_SUBCLASS = 8372;
  static const ERROR_DS_NAME_REFERENCE_INVALID = 8373;
  static const ERROR_DS_CROSS_REF_EXISTS = 8374;
  static const ERROR_DS_CANT_DEL_MASTER_CROSSREF = 8375;
  static const ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD = 8376;
  static const ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX = 8377;
  static const ERROR_DS_DUP_RDN = 8378;
  static const ERROR_DS_DUP_OID = 8379;
  static const ERROR_DS_DUP_MAPI_ID = 8380;
  static const ERROR_DS_DUP_SCHEMA_ID_GUID = 8381;
  static const ERROR_DS_DUP_LDAP_DISPLAY_NAME = 8382;
  static const ERROR_DS_SEMANTIC_ATT_TEST = 8383;
  static const ERROR_DS_SYNTAX_MISMATCH = 8384;
  static const ERROR_DS_EXISTS_IN_MUST_HAVE = 8385;
  static const ERROR_DS_EXISTS_IN_MAY_HAVE = 8386;
  static const ERROR_DS_NONEXISTENT_MAY_HAVE = 8387;
  static const ERROR_DS_NONEXISTENT_MUST_HAVE = 8388;
  static const ERROR_DS_AUX_CLS_TEST_FAIL = 8389;
  static const ERROR_DS_NONEXISTENT_POSS_SUP = 8390;
  static const ERROR_DS_SUB_CLS_TEST_FAIL = 8391;
  static const ERROR_DS_BAD_RDN_ATT_ID_SYNTAX = 8392;
  static const ERROR_DS_EXISTS_IN_AUX_CLS = 8393;
  static const ERROR_DS_EXISTS_IN_SUB_CLS = 8394;
  static const ERROR_DS_EXISTS_IN_POSS_SUP = 8395;
  static const ERROR_DS_RECALCSCHEMA_FAILED = 8396;
  static const ERROR_DS_TREE_DELETE_NOT_FINISHED = 8397;
  static const ERROR_DS_CANT_DELETE = 8398;
  static const ERROR_DS_ATT_SCHEMA_REQ_ID = 8399;
  static const ERROR_DS_BAD_ATT_SCHEMA_SYNTAX = 8400;
  static const ERROR_DS_CANT_CACHE_ATT = 8401;
  static const ERROR_DS_CANT_CACHE_CLASS = 8402;
  static const ERROR_DS_CANT_REMOVE_ATT_CACHE = 8403;
  static const ERROR_DS_CANT_REMOVE_CLASS_CACHE = 8404;
  static const ERROR_DS_CANT_RETRIEVE_DN = 8405;
  static const ERROR_DS_MISSING_SUPREF = 8406;
  static const ERROR_DS_CANT_RETRIEVE_INSTANCE = 8407;
  static const ERROR_DS_CODE_INCONSISTENCY = 8408;
  static const ERROR_DS_DATABASE_ERROR = 8409;
  static const ERROR_DS_GOVERNSID_MISSING = 8410;
  static const ERROR_DS_MISSING_EXPECTED_ATT = 8411;
  static const ERROR_DS_NCNAME_MISSING_CR_REF = 8412;
  static const ERROR_DS_SECURITY_CHECKING_ERROR = 8413;
  static const ERROR_DS_SCHEMA_NOT_LOADED = 8414;
  static const ERROR_DS_SCHEMA_ALLOC_FAILED = 8415;
  static const ERROR_DS_ATT_SCHEMA_REQ_SYNTAX = 8416;
  static const ERROR_DS_GCVERIFY_ERROR = 8417;
  static const ERROR_DS_DRA_SCHEMA_MISMATCH = 8418;
  static const ERROR_DS_CANT_FIND_DSA_OBJ = 8419;
  static const ERROR_DS_CANT_FIND_EXPECTED_NC = 8420;
  static const ERROR_DS_CANT_FIND_NC_IN_CACHE = 8421;
  static const ERROR_DS_CANT_RETRIEVE_CHILD = 8422;
  static const ERROR_DS_SECURITY_ILLEGAL_MODIFY = 8423;
  static const ERROR_DS_CANT_REPLACE_HIDDEN_REC = 8424;
  static const ERROR_DS_BAD_HIERARCHY_FILE = 8425;
  static const ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED = 8426;
  static const ERROR_DS_CONFIG_PARAM_MISSING = 8427;
  static const ERROR_DS_COUNTING_AB_INDICES_FAILED = 8428;
  static const ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED = 8429;
  static const ERROR_DS_INTERNAL_FAILURE = 8430;
  static const ERROR_DS_UNKNOWN_ERROR = 8431;
  static const ERROR_DS_ROOT_REQUIRES_CLASS_TOP = 8432;
  static const ERROR_DS_REFUSING_FSMO_ROLES = 8433;
  static const ERROR_DS_MISSING_FSMO_SETTINGS = 8434;
  static const ERROR_DS_UNABLE_TO_SURRENDER_ROLES = 8435;
  static const ERROR_DS_DRA_GENERIC = 8436;
  static const ERROR_DS_DRA_INVALID_PARAMETER = 8437;
  static const ERROR_DS_DRA_BUSY = 8438;
  static const ERROR_DS_DRA_BAD_DN = 8439;
  static const ERROR_DS_DRA_BAD_NC = 8440;
  static const ERROR_DS_DRA_DN_EXISTS = 8441;
  static const ERROR_DS_DRA_INTERNAL_ERROR = 8442;
  static const ERROR_DS_DRA_INCONSISTENT_DIT = 8443;
  static const ERROR_DS_DRA_CONNECTION_FAILED = 8444;
  static const ERROR_DS_DRA_BAD_INSTANCE_TYPE = 8445;
  static const ERROR_DS_DRA_OUT_OF_MEM = 8446;
  static const ERROR_DS_DRA_MAIL_PROBLEM = 8447;
  static const ERROR_DS_DRA_REF_ALREADY_EXISTS = 8448;
  static const ERROR_DS_DRA_REF_NOT_FOUND = 8449;
  static const ERROR_DS_DRA_OBJ_IS_REP_SOURCE = 8450;
  static const ERROR_DS_DRA_DB_ERROR = 8451;
  static const ERROR_DS_DRA_NO_REPLICA = 8452;
  static const ERROR_DS_DRA_ACCESS_DENIED = 8453;
  static const ERROR_DS_DRA_NOT_SUPPORTED = 8454;
  static const ERROR_DS_DRA_RPC_CANCELLED = 8455;
  static const ERROR_DS_DRA_SOURCE_DISABLED = 8456;
  static const ERROR_DS_DRA_SINK_DISABLED = 8457;
  static const ERROR_DS_DRA_NAME_COLLISION = 8458;
  static const ERROR_DS_DRA_SOURCE_REINSTALLED = 8459;
  static const ERROR_DS_DRA_MISSING_PARENT = 8460;
  static const ERROR_DS_DRA_PREEMPTED = 8461;
  static const ERROR_DS_DRA_ABANDON_SYNC = 8462;
  static const ERROR_DS_DRA_SHUTDOWN = 8463;
  static const ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET = 8464;
  static const ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA = 8465;
  static const ERROR_DS_DRA_EXTN_CONNECTION_FAILED = 8466;
  static const ERROR_DS_INSTALL_SCHEMA_MISMATCH = 8467;
  static const ERROR_DS_DUP_LINK_ID = 8468;
  static const ERROR_DS_NAME_ERROR_RESOLVING = 8469;
  static const ERROR_DS_NAME_ERROR_NOT_FOUND = 8470;
  static const ERROR_DS_NAME_ERROR_NOT_UNIQUE = 8471;
  static const ERROR_DS_NAME_ERROR_NO_MAPPING = 8472;
  static const ERROR_DS_NAME_ERROR_DOMAIN_ONLY = 8473;
  static const ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING = 8474;
  static const ERROR_DS_CONSTRUCTED_ATT_MOD = 8475;
  static const ERROR_DS_WRONG_OM_OBJ_CLASS = 8476;
  static const ERROR_DS_DRA_REPL_PENDING = 8477;
  static const ERROR_DS_DS_REQUIRED = 8478;
  static const ERROR_DS_INVALID_LDAP_DISPLAY_NAME = 8479;
  static const ERROR_DS_NON_BASE_SEARCH = 8480;
  static const ERROR_DS_CANT_RETRIEVE_ATTS = 8481;
  static const ERROR_DS_BACKLINK_WITHOUT_LINK = 8482;
  static const ERROR_DS_EPOCH_MISMATCH = 8483;
  static const ERROR_DS_SRC_NAME_MISMATCH = 8484;
  static const ERROR_DS_SRC_AND_DST_NC_IDENTICAL = 8485;
  static const ERROR_DS_DST_NC_MISMATCH = 8486;
  static const ERROR_DS_NOT_AUTHORITIVE_FOR_DST_NC = 8487;
  static const ERROR_DS_SRC_GUID_MISMATCH = 8488;
  static const ERROR_DS_CANT_MOVE_DELETED_OBJECT = 8489;
  static const ERROR_DS_PDC_OPERATION_IN_PROGRESS = 8490;
  static const ERROR_DS_CROSS_DOMAIN_CLEANUP_REQD = 8491;
  static const ERROR_DS_ILLEGAL_XDOM_MOVE_OPERATION = 8492;
  static const ERROR_DS_CANT_WITH_ACCT_GROUP_MEMBERSHPS = 8493;
  static const ERROR_DS_NC_MUST_HAVE_NC_PARENT = 8494;
  static const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE = 8495;
  static const ERROR_DS_DST_DOMAIN_NOT_NATIVE = 8496;
  static const ERROR_DS_MISSING_INFRASTRUCTURE_CONTAINER = 8497;
  static const ERROR_DS_CANT_MOVE_ACCOUNT_GROUP = 8498;
  static const ERROR_DS_CANT_MOVE_RESOURCE_GROUP = 8499;
  static const ERROR_DS_INVALID_SEARCH_FLAG = 8500;
  static const ERROR_DS_NO_TREE_DELETE_ABOVE_NC = 8501;
  static const ERROR_DS_COULDNT_LOCK_TREE_FOR_DELETE = 8502;
  static const ERROR_DS_COULDNT_IDENTIFY_OBJECTS_FOR_TREE_DELETE =
      WIN32_ERROR(8503);
  static const ERROR_DS_SAM_INIT_FAILURE = 8504;
  static const ERROR_DS_SENSITIVE_GROUP_VIOLATION = 8505;
  static const ERROR_DS_CANT_MOD_PRIMARYGROUPID = 8506;
  static const ERROR_DS_ILLEGAL_BASE_SCHEMA_MOD = 8507;
  static const ERROR_DS_NONSAFE_SCHEMA_CHANGE = 8508;
  static const ERROR_DS_SCHEMA_UPDATE_DISALLOWED = 8509;
  static const ERROR_DS_CANT_CREATE_UNDER_SCHEMA = 8510;
  static const ERROR_DS_INSTALL_NO_SRC_SCH_VERSION = 8511;
  static const ERROR_DS_INSTALL_NO_SCH_VERSION_IN_INIFILE = 8512;
  static const ERROR_DS_INVALID_GROUP_TYPE = 8513;
  static const ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN = 8514;
  static const ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN = 8515;
  static const ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER = 8516;
  static const ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER = 8517;
  static const ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER = 8518;
  static const ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER = 8519;
  static const ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER =
      WIN32_ERROR(8520);
  static const ERROR_DS_HAVE_PRIMARY_MEMBERS = 8521;
  static const ERROR_DS_STRING_SD_CONVERSION_FAILED = 8522;
  static const ERROR_DS_NAMING_MASTER_GC = 8523;
  static const ERROR_DS_DNS_LOOKUP_FAILURE = 8524;
  static const ERROR_DS_COULDNT_UPDATE_SPNS = 8525;
  static const ERROR_DS_CANT_RETRIEVE_SD = 8526;
  static const ERROR_DS_KEY_NOT_UNIQUE = 8527;
  static const ERROR_DS_WRONG_LINKED_ATT_SYNTAX = 8528;
  static const ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD = 8529;
  static const ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY = 8530;
  static const ERROR_DS_CANT_START = 8531;
  static const ERROR_DS_INIT_FAILURE = 8532;
  static const ERROR_DS_NO_PKT_PRIVACY_ON_CONNECTION = 8533;
  static const ERROR_DS_SOURCE_DOMAIN_IN_FOREST = 8534;
  static const ERROR_DS_DESTINATION_DOMAIN_NOT_IN_FOREST = 8535;
  static const ERROR_DS_DESTINATION_AUDITING_NOT_ENABLED = 8536;
  static const ERROR_DS_CANT_FIND_DC_FOR_SRC_DOMAIN = 8537;
  static const ERROR_DS_SRC_OBJ_NOT_GROUP_OR_USER = 8538;
  static const ERROR_DS_SRC_SID_EXISTS_IN_FOREST = 8539;
  static const ERROR_DS_SRC_AND_DST_OBJECT_CLASS_MISMATCH = 8540;
  static const ERROR_SAM_INIT_FAILURE = 8541;
  static const ERROR_DS_DRA_SCHEMA_INFO_SHIP = 8542;
  static const ERROR_DS_DRA_SCHEMA_CONFLICT = 8543;
  static const ERROR_DS_DRA_EARLIER_SCHEMA_CONFLICT = 8544;
  static const ERROR_DS_DRA_OBJ_NC_MISMATCH = 8545;
  static const ERROR_DS_NC_STILL_HAS_DSAS = 8546;
  static const ERROR_DS_GC_REQUIRED = 8547;
  static const ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY = 8548;
  static const ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS = 8549;
  static const ERROR_DS_CANT_ADD_TO_GC = 8550;
  static const ERROR_DS_NO_CHECKPOINT_WITH_PDC = 8551;
  static const ERROR_DS_SOURCE_AUDITING_NOT_ENABLED = 8552;
  static const ERROR_DS_CANT_CREATE_IN_NONDOMAIN_NC = 8553;
  static const ERROR_DS_INVALID_NAME_FOR_SPN = 8554;
  static const ERROR_DS_FILTER_USES_CONTRUCTED_ATTRS = 8555;
  static const ERROR_DS_UNICODEPWD_NOT_IN_QUOTES = 8556;
  static const ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED = 8557;
  static const ERROR_DS_MUST_BE_RUN_ON_DST_DC = 8558;
  static const ERROR_DS_SRC_DC_MUST_BE_SP4_OR_GREATER = 8559;
  static const ERROR_DS_CANT_TREE_DELETE_CRITICAL_OBJ = 8560;
  static const ERROR_DS_INIT_FAILURE_CONSOLE = 8561;
  static const ERROR_DS_SAM_INIT_FAILURE_CONSOLE = 8562;
  static const ERROR_DS_FOREST_VERSION_TOO_HIGH = 8563;
  static const ERROR_DS_DOMAIN_VERSION_TOO_HIGH = 8564;
  static const ERROR_DS_FOREST_VERSION_TOO_LOW = 8565;
  static const ERROR_DS_DOMAIN_VERSION_TOO_LOW = 8566;
  static const ERROR_DS_INCOMPATIBLE_VERSION = 8567;
  static const ERROR_DS_LOW_DSA_VERSION = 8568;
  static const ERROR_DS_NO_BEHAVIOR_VERSION_IN_MIXEDDOMAIN = 8569;
  static const ERROR_DS_NOT_SUPPORTED_SORT_ORDER = 8570;
  static const ERROR_DS_NAME_NOT_UNIQUE = 8571;
  static const ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4 = 8572;
  static const ERROR_DS_OUT_OF_VERSION_STORE = 8573;
  static const ERROR_DS_INCOMPATIBLE_CONTROLS_USED = 8574;
  static const ERROR_DS_NO_REF_DOMAIN = 8575;
  static const ERROR_DS_RESERVED_LINK_ID = 8576;
  static const ERROR_DS_LINK_ID_NOT_AVAILABLE = 8577;
  static const ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER = 8578;
  static const ERROR_DS_MODIFYDN_DISALLOWED_BY_INSTANCE_TYPE =
      WIN32_ERROR(8579);
  static const ERROR_DS_NO_OBJECT_MOVE_IN_SCHEMA_NC = 8580;
  static const ERROR_DS_MODIFYDN_DISALLOWED_BY_FLAG = 8581;
  static const ERROR_DS_MODIFYDN_WRONG_GRANDPARENT = 8582;
  static const ERROR_DS_NAME_ERROR_TRUST_REFERRAL = 8583;
  static const ERROR_NOT_SUPPORTED_ON_STANDARD_SERVER = 8584;
  static const ERROR_DS_CANT_ACCESS_REMOTE_PART_OF_AD = 8585;
  static const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE_V2 = 8586;
  static const ERROR_DS_THREAD_LIMIT_EXCEEDED = 8587;
  static const ERROR_DS_NOT_CLOSEST = 8588;
  static const ERROR_DS_CANT_DERIVE_SPN_WITHOUT_SERVER_REF = 8589;
  static const ERROR_DS_SINGLE_USER_MODE_FAILED = 8590;
  static const ERROR_DS_NTDSCRIPT_SYNTAX_ERROR = 8591;
  static const ERROR_DS_NTDSCRIPT_PROCESS_ERROR = 8592;
  static const ERROR_DS_DIFFERENT_REPL_EPOCHS = 8593;
  static const ERROR_DS_DRS_EXTENSIONS_CHANGED = 8594;
  static const ERROR_DS_REPLICA_SET_CHANGE_NOT_ALLOWED_ON_DISABLED_CR =
      WIN32_ERROR(8595);
  static const ERROR_DS_NO_MSDS_INTID = 8596;
  static const ERROR_DS_DUP_MSDS_INTID = 8597;
  static const ERROR_DS_EXISTS_IN_RDNATTID = 8598;
  static const ERROR_DS_AUTHORIZATION_FAILED = 8599;
  static const ERROR_DS_INVALID_SCRIPT = 8600;
  static const ERROR_DS_REMOTE_CROSSREF_OP_FAILED = 8601;
  static const ERROR_DS_CROSS_REF_BUSY = 8602;
  static const ERROR_DS_CANT_DERIVE_SPN_FOR_DELETED_DOMAIN = 8603;
  static const ERROR_DS_CANT_DEMOTE_WITH_WRITEABLE_NC = 8604;
  static const ERROR_DS_DUPLICATE_ID_FOUND = 8605;
  static const ERROR_DS_INSUFFICIENT_ATTR_TO_CREATE_OBJECT = 8606;
  static const ERROR_DS_GROUP_CONVERSION_ERROR = 8607;
  static const ERROR_DS_CANT_MOVE_APP_BASIC_GROUP = 8608;
  static const ERROR_DS_CANT_MOVE_APP_QUERY_GROUP = 8609;
  static const ERROR_DS_ROLE_NOT_VERIFIED = 8610;
  static const ERROR_DS_WKO_CONTAINER_CANNOT_BE_SPECIAL = 8611;
  static const ERROR_DS_DOMAIN_RENAME_IN_PROGRESS = 8612;
  static const ERROR_DS_EXISTING_AD_CHILD_NC = 8613;
  static const ERROR_DS_REPL_LIFETIME_EXCEEDED = 8614;
  static const ERROR_DS_DISALLOWED_IN_SYSTEM_CONTAINER = 8615;
  static const ERROR_DS_LDAP_SEND_QUEUE_FULL = 8616;
  static const ERROR_DS_DRA_OUT_SCHEDULE_WINDOW = 8617;
  static const ERROR_DS_POLICY_NOT_KNOWN = 8618;
  static const ERROR_NO_SITE_SETTINGS_OBJECT = 8619;
  static const ERROR_NO_SECRETS = 8620;
  static const ERROR_NO_WRITABLE_DC_FOUND = 8621;
  static const ERROR_DS_NO_SERVER_OBJECT = 8622;
  static const ERROR_DS_NO_NTDSA_OBJECT = 8623;
  static const ERROR_DS_NON_ASQ_SEARCH = 8624;
  static const ERROR_DS_AUDIT_FAILURE = 8625;
  static const ERROR_DS_INVALID_SEARCH_FLAG_SUBTREE = 8626;
  static const ERROR_DS_INVALID_SEARCH_FLAG_TUPLE = 8627;
  static const ERROR_DS_HIERARCHY_TABLE_TOO_DEEP = 8628;
  static const ERROR_DS_DRA_CORRUPT_UTD_VECTOR = 8629;
  static const ERROR_DS_DRA_SECRETS_DENIED = 8630;
  static const ERROR_DS_RESERVED_MAPI_ID = 8631;
  static const ERROR_DS_MAPI_ID_NOT_AVAILABLE = 8632;
  static const ERROR_DS_DRA_MISSING_KRBTGT_SECRET = 8633;
  static const ERROR_DS_DOMAIN_NAME_EXISTS_IN_FOREST = 8634;
  static const ERROR_DS_FLAT_NAME_EXISTS_IN_FOREST = 8635;
  static const ERROR_INVALID_USER_PRINCIPAL_NAME = 8636;
  static const ERROR_DS_OID_MAPPED_GROUP_CANT_HAVE_MEMBERS = 8637;
  static const ERROR_DS_OID_NOT_FOUND = 8638;
  static const ERROR_DS_DRA_RECYCLED_TARGET = 8639;
  static const ERROR_DS_DISALLOWED_NC_REDIRECT = 8640;
  static const ERROR_DS_HIGH_ADLDS_FFL = 8641;
  static const ERROR_DS_HIGH_DSA_VERSION = 8642;
  static const ERROR_DS_LOW_ADLDS_FFL = 8643;
  static const ERROR_DOMAIN_SID_SAME_AS_LOCAL_WORKSTATION = 8644;
  static const ERROR_DS_UNDELETE_SAM_VALIDATION_FAILED = 8645;
  static const ERROR_INCORRECT_ACCOUNT_TYPE = 8646;
  static const ERROR_DS_SPN_VALUE_NOT_UNIQUE_IN_FOREST = 8647;
  static const ERROR_DS_UPN_VALUE_NOT_UNIQUE_IN_FOREST = 8648;
  static const ERROR_DS_MISSING_FOREST_TRUST = 8649;
  static const ERROR_DS_VALUE_KEY_NOT_UNIQUE = 8650;
  static const ERROR_WEAK_WHFBKEY_BLOCKED = 8651;
  static const ERROR_DS_PER_ATTRIBUTE_AUTHZ_FAILED_DURING_ADD =
      WIN32_ERROR(8652);
  static const ERROR_LOCAL_POLICY_MODIFICATION_NOT_SUPPORTED =
      WIN32_ERROR(8653);
  static const ERROR_POLICY_CONTROLLED_ACCOUNT = 8654;
  static const ERROR_LAPS_LEGACY_SCHEMA_MISSING = 8655;
  static const ERROR_LAPS_SCHEMA_MISSING = 8656;
  static const ERROR_LAPS_ENCRYPTION_REQUIRES_2016_DFL = 8657;
  static const DNS_ERROR_RESPONSE_CODES_BASE = 9000;
  static const DNS_ERROR_RCODE_NO_ERROR = 0;
  static const DNS_ERROR_MASK = 9000;
  static const DNS_ERROR_RCODE_FORMAT_ERROR = 9001;
  static const DNS_ERROR_RCODE_SERVER_FAILURE = 9002;
  static const DNS_ERROR_RCODE_NAME_ERROR = 9003;
  static const DNS_ERROR_RCODE_NOT_IMPLEMENTED = 9004;
  static const DNS_ERROR_RCODE_REFUSED = 9005;
  static const DNS_ERROR_RCODE_YXDOMAIN = 9006;
  static const DNS_ERROR_RCODE_YXRRSET = 9007;
  static const DNS_ERROR_RCODE_NXRRSET = 9008;
  static const DNS_ERROR_RCODE_NOTAUTH = 9009;
  static const DNS_ERROR_RCODE_NOTZONE = 9010;
  static const DNS_ERROR_RCODE_BADSIG = 9016;
  static const DNS_ERROR_RCODE_BADKEY = 9017;
  static const DNS_ERROR_RCODE_BADTIME = 9018;
  static const DNS_ERROR_RCODE_LAST = 9018;
  static const DNS_ERROR_DNSSEC_BASE = 9100;
  static const DNS_ERROR_KEYMASTER_REQUIRED = 9101;
  static const DNS_ERROR_NOT_ALLOWED_ON_SIGNED_ZONE = 9102;
  static const DNS_ERROR_NSEC3_INCOMPATIBLE_WITH_RSA_SHA1 = 9103;
  static const DNS_ERROR_NOT_ENOUGH_SIGNING_KEY_DESCRIPTORS = 9104;
  static const DNS_ERROR_UNSUPPORTED_ALGORITHM = 9105;
  static const DNS_ERROR_INVALID_KEY_SIZE = 9106;
  static const DNS_ERROR_SIGNING_KEY_NOT_ACCESSIBLE = 9107;
  static const DNS_ERROR_KSP_DOES_NOT_SUPPORT_PROTECTION = 9108;
  static const DNS_ERROR_UNEXPECTED_DATA_PROTECTION_ERROR = 9109;
  static const DNS_ERROR_UNEXPECTED_CNG_ERROR = 9110;
  static const DNS_ERROR_UNKNOWN_SIGNING_PARAMETER_VERSION = 9111;
  static const DNS_ERROR_KSP_NOT_ACCESSIBLE = 9112;
  static const DNS_ERROR_TOO_MANY_SKDS = 9113;
  static const DNS_ERROR_INVALID_ROLLOVER_PERIOD = 9114;
  static const DNS_ERROR_INVALID_INITIAL_ROLLOVER_OFFSET = 9115;
  static const DNS_ERROR_ROLLOVER_IN_PROGRESS = 9116;
  static const DNS_ERROR_STANDBY_KEY_NOT_PRESENT = 9117;
  static const DNS_ERROR_NOT_ALLOWED_ON_ZSK = 9118;
  static const DNS_ERROR_NOT_ALLOWED_ON_ACTIVE_SKD = 9119;
  static const DNS_ERROR_ROLLOVER_ALREADY_QUEUED = 9120;
  static const DNS_ERROR_NOT_ALLOWED_ON_UNSIGNED_ZONE = 9121;
  static const DNS_ERROR_BAD_KEYMASTER = 9122;
  static const DNS_ERROR_INVALID_SIGNATURE_VALIDITY_PERIOD = 9123;
  static const DNS_ERROR_INVALID_NSEC3_ITERATION_COUNT = 9124;
  static const DNS_ERROR_DNSSEC_IS_DISABLED = 9125;
  static const DNS_ERROR_INVALID_XML = 9126;
  static const DNS_ERROR_NO_VALID_TRUST_ANCHORS = 9127;
  static const DNS_ERROR_ROLLOVER_NOT_POKEABLE = 9128;
  static const DNS_ERROR_NSEC3_NAME_COLLISION = 9129;
  static const DNS_ERROR_NSEC_INCOMPATIBLE_WITH_NSEC3_RSA_SHA1 =
      WIN32_ERROR(9130);
  static const DNS_ERROR_PACKET_FMT_BASE = 9500;
  static const DNS_ERROR_BAD_PACKET = 9502;
  static const DNS_ERROR_NO_PACKET = 9503;
  static const DNS_ERROR_RCODE = 9504;
  static const DNS_ERROR_UNSECURE_PACKET = 9505;
  static const DNS_ERROR_NO_MEMORY = 14;
  static const DNS_ERROR_INVALID_NAME = 123;
  static const DNS_ERROR_INVALID_DATA = 13;
  static const DNS_ERROR_GENERAL_API_BASE = 9550;
  static const DNS_ERROR_INVALID_TYPE = 9551;
  static const DNS_ERROR_INVALID_IP_ADDRESS = 9552;
  static const DNS_ERROR_INVALID_PROPERTY = 9553;
  static const DNS_ERROR_TRY_AGAIN_LATER = 9554;
  static const DNS_ERROR_NOT_UNIQUE = 9555;
  static const DNS_ERROR_NON_RFC_NAME = 9556;
  static const DNS_ERROR_INVALID_NAME_CHAR = 9560;
  static const DNS_ERROR_NUMERIC_NAME = 9561;
  static const DNS_ERROR_NOT_ALLOWED_ON_ROOT_SERVER = 9562;
  static const DNS_ERROR_NOT_ALLOWED_UNDER_DELEGATION = 9563;
  static const DNS_ERROR_CANNOT_FIND_ROOT_HINTS = 9564;
  static const DNS_ERROR_INCONSISTENT_ROOT_HINTS = 9565;
  static const DNS_ERROR_DWORD_VALUE_TOO_SMALL = 9566;
  static const DNS_ERROR_DWORD_VALUE_TOO_LARGE = 9567;
  static const DNS_ERROR_BACKGROUND_LOADING = 9568;
  static const DNS_ERROR_NOT_ALLOWED_ON_RODC = 9569;
  static const DNS_ERROR_NOT_ALLOWED_UNDER_DNAME = 9570;
  static const DNS_ERROR_DELEGATION_REQUIRED = 9571;
  static const DNS_ERROR_INVALID_POLICY_TABLE = 9572;
  static const DNS_ERROR_ADDRESS_REQUIRED = 9573;
  static const DNS_ERROR_ZONE_BASE = 9600;
  static const DNS_ERROR_ZONE_DOES_NOT_EXIST = 9601;
  static const DNS_ERROR_NO_ZONE_INFO = 9602;
  static const DNS_ERROR_INVALID_ZONE_OPERATION = 9603;
  static const DNS_ERROR_ZONE_CONFIGURATION_ERROR = 9604;
  static const DNS_ERROR_ZONE_HAS_NO_SOA_RECORD = 9605;
  static const DNS_ERROR_ZONE_HAS_NO_NS_RECORDS = 9606;
  static const DNS_ERROR_ZONE_LOCKED = 9607;
  static const DNS_ERROR_ZONE_CREATION_FAILED = 9608;
  static const DNS_ERROR_ZONE_ALREADY_EXISTS = 9609;
  static const DNS_ERROR_AUTOZONE_ALREADY_EXISTS = 9610;
  static const DNS_ERROR_INVALID_ZONE_TYPE = 9611;
  static const DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP = 9612;
  static const DNS_ERROR_ZONE_NOT_SECONDARY = 9613;
  static const DNS_ERROR_NEED_SECONDARY_ADDRESSES = 9614;
  static const DNS_ERROR_WINS_INIT_FAILED = 9615;
  static const DNS_ERROR_NEED_WINS_SERVERS = 9616;
  static const DNS_ERROR_NBSTAT_INIT_FAILED = 9617;
  static const DNS_ERROR_SOA_DELETE_INVALID = 9618;
  static const DNS_ERROR_FORWARDER_ALREADY_EXISTS = 9619;
  static const DNS_ERROR_ZONE_REQUIRES_MASTER_IP = 9620;
  static const DNS_ERROR_ZONE_IS_SHUTDOWN = 9621;
  static const DNS_ERROR_ZONE_LOCKED_FOR_SIGNING = 9622;
  static const DNS_ERROR_DATAFILE_BASE = 9650;
  static const DNS_ERROR_PRIMARY_REQUIRES_DATAFILE = 9651;
  static const DNS_ERROR_INVALID_DATAFILE_NAME = 9652;
  static const DNS_ERROR_DATAFILE_OPEN_FAILURE = 9653;
  static const DNS_ERROR_FILE_WRITEBACK_FAILED = 9654;
  static const DNS_ERROR_DATAFILE_PARSING = 9655;
  static const DNS_ERROR_DATABASE_BASE = 9700;
  static const DNS_ERROR_RECORD_DOES_NOT_EXIST = 9701;
  static const DNS_ERROR_RECORD_FORMAT = 9702;
  static const DNS_ERROR_NODE_CREATION_FAILED = 9703;
  static const DNS_ERROR_UNKNOWN_RECORD_TYPE = 9704;
  static const DNS_ERROR_RECORD_TIMED_OUT = 9705;
  static const DNS_ERROR_NAME_NOT_IN_ZONE = 9706;
  static const DNS_ERROR_CNAME_LOOP = 9707;
  static const DNS_ERROR_NODE_IS_CNAME = 9708;
  static const DNS_ERROR_CNAME_COLLISION = 9709;
  static const DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT = 9710;
  static const DNS_ERROR_RECORD_ALREADY_EXISTS = 9711;
  static const DNS_ERROR_SECONDARY_DATA = 9712;
  static const DNS_ERROR_NO_CREATE_CACHE_DATA = 9713;
  static const DNS_ERROR_NAME_DOES_NOT_EXIST = 9714;
  static const DNS_ERROR_DS_UNAVAILABLE = 9717;
  static const DNS_ERROR_DS_ZONE_ALREADY_EXISTS = 9718;
  static const DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE = 9719;
  static const DNS_ERROR_NODE_IS_DNAME = 9720;
  static const DNS_ERROR_DNAME_COLLISION = 9721;
  static const DNS_ERROR_ALIAS_LOOP = 9722;
  static const DNS_ERROR_OPERATION_BASE = 9750;
  static const DNS_ERROR_AXFR = 9752;
  static const DNS_ERROR_SECURE_BASE = 9800;
  static const DNS_ERROR_SETUP_BASE = 9850;
  static const DNS_ERROR_NO_TCPIP = 9851;
  static const DNS_ERROR_NO_DNS_SERVERS = 9852;
  static const DNS_ERROR_DP_BASE = 9900;
  static const DNS_ERROR_DP_DOES_NOT_EXIST = 9901;
  static const DNS_ERROR_DP_ALREADY_EXISTS = 9902;
  static const DNS_ERROR_DP_NOT_ENLISTED = 9903;
  static const DNS_ERROR_DP_ALREADY_ENLISTED = 9904;
  static const DNS_ERROR_DP_NOT_AVAILABLE = 9905;
  static const DNS_ERROR_DP_FSMO_ERROR = 9906;
  static const DNS_ERROR_RRL_NOT_ENABLED = 9911;
  static const DNS_ERROR_RRL_INVALID_WINDOW_SIZE = 9912;
  static const DNS_ERROR_RRL_INVALID_IPV4_PREFIX = 9913;
  static const DNS_ERROR_RRL_INVALID_IPV6_PREFIX = 9914;
  static const DNS_ERROR_RRL_INVALID_TC_RATE = 9915;
  static const DNS_ERROR_RRL_INVALID_LEAK_RATE = 9916;
  static const DNS_ERROR_RRL_LEAK_RATE_LESSTHAN_TC_RATE = 9917;
  static const DNS_ERROR_VIRTUALIZATION_INSTANCE_ALREADY_EXISTS =
      WIN32_ERROR(9921);
  static const DNS_ERROR_VIRTUALIZATION_INSTANCE_DOES_NOT_EXIST =
      WIN32_ERROR(9922);
  static const DNS_ERROR_VIRTUALIZATION_TREE_LOCKED = 9923;
  static const DNS_ERROR_INVAILD_VIRTUALIZATION_INSTANCE_NAME =
      WIN32_ERROR(9924);
  static const DNS_ERROR_DEFAULT_VIRTUALIZATION_INSTANCE = 9925;
  static const DNS_ERROR_ZONESCOPE_ALREADY_EXISTS = 9951;
  static const DNS_ERROR_ZONESCOPE_DOES_NOT_EXIST = 9952;
  static const DNS_ERROR_DEFAULT_ZONESCOPE = 9953;
  static const DNS_ERROR_INVALID_ZONESCOPE_NAME = 9954;
  static const DNS_ERROR_NOT_ALLOWED_WITH_ZONESCOPES = 9955;
  static const DNS_ERROR_LOAD_ZONESCOPE_FAILED = 9956;
  static const DNS_ERROR_ZONESCOPE_FILE_WRITEBACK_FAILED = 9957;
  static const DNS_ERROR_INVALID_SCOPE_NAME = 9958;
  static const DNS_ERROR_SCOPE_DOES_NOT_EXIST = 9959;
  static const DNS_ERROR_DEFAULT_SCOPE = 9960;
  static const DNS_ERROR_INVALID_SCOPE_OPERATION = 9961;
  static const DNS_ERROR_SCOPE_LOCKED = 9962;
  static const DNS_ERROR_SCOPE_ALREADY_EXISTS = 9963;
  static const DNS_ERROR_POLICY_ALREADY_EXISTS = 9971;
  static const DNS_ERROR_POLICY_DOES_NOT_EXIST = 9972;
  static const DNS_ERROR_POLICY_INVALID_CRITERIA = 9973;
  static const DNS_ERROR_POLICY_INVALID_SETTINGS = 9974;
  static const DNS_ERROR_CLIENT_SUBNET_IS_ACCESSED = 9975;
  static const DNS_ERROR_CLIENT_SUBNET_DOES_NOT_EXIST = 9976;
  static const DNS_ERROR_CLIENT_SUBNET_ALREADY_EXISTS = 9977;
  static const DNS_ERROR_SUBNET_DOES_NOT_EXIST = 9978;
  static const DNS_ERROR_SUBNET_ALREADY_EXISTS = 9979;
  static const DNS_ERROR_POLICY_LOCKED = 9980;
  static const DNS_ERROR_POLICY_INVALID_WEIGHT = 9981;
  static const DNS_ERROR_POLICY_INVALID_NAME = 9982;
  static const DNS_ERROR_POLICY_MISSING_CRITERIA = 9983;
  static const DNS_ERROR_INVALID_CLIENT_SUBNET_NAME = 9984;
  static const DNS_ERROR_POLICY_PROCESSING_ORDER_INVALID = 9985;
  static const DNS_ERROR_POLICY_SCOPE_MISSING = 9986;
  static const DNS_ERROR_POLICY_SCOPE_NOT_ALLOWED = 9987;
  static const DNS_ERROR_SERVERSCOPE_IS_REFERENCED = 9988;
  static const DNS_ERROR_ZONESCOPE_IS_REFERENCED = 9989;
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_CLIENT_SUBNET =
      WIN32_ERROR(9990);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_TRANSPORT_PROTOCOL =
      WIN32_ERROR(9991);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_NETWORK_PROTOCOL =
      WIN32_ERROR(9992);
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_INTERFACE = 9993;
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_FQDN = 9994;
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_QUERY_TYPE = 9995;
  static const DNS_ERROR_POLICY_INVALID_CRITERIA_TIME_OF_DAY =
      WIN32_ERROR(9996);
  static const ERROR_IPSEC_QM_POLICY_EXISTS = 13000;
  static const ERROR_IPSEC_QM_POLICY_NOT_FOUND = 13001;
  static const ERROR_IPSEC_QM_POLICY_IN_USE = 13002;
  static const ERROR_IPSEC_MM_POLICY_EXISTS = 13003;
  static const ERROR_IPSEC_MM_POLICY_NOT_FOUND = 13004;
  static const ERROR_IPSEC_MM_POLICY_IN_USE = 13005;
  static const ERROR_IPSEC_MM_FILTER_EXISTS = 13006;
  static const ERROR_IPSEC_MM_FILTER_NOT_FOUND = 13007;
  static const ERROR_IPSEC_TRANSPORT_FILTER_EXISTS = 13008;
  static const ERROR_IPSEC_TRANSPORT_FILTER_NOT_FOUND = 13009;
  static const ERROR_IPSEC_MM_AUTH_EXISTS = 13010;
  static const ERROR_IPSEC_MM_AUTH_NOT_FOUND = 13011;
  static const ERROR_IPSEC_MM_AUTH_IN_USE = 13012;
  static const ERROR_IPSEC_DEFAULT_MM_POLICY_NOT_FOUND = 13013;
  static const ERROR_IPSEC_DEFAULT_MM_AUTH_NOT_FOUND = 13014;
  static const ERROR_IPSEC_DEFAULT_QM_POLICY_NOT_FOUND = 13015;
  static const ERROR_IPSEC_TUNNEL_FILTER_EXISTS = 13016;
  static const ERROR_IPSEC_TUNNEL_FILTER_NOT_FOUND = 13017;
  static const ERROR_IPSEC_MM_FILTER_PENDING_DELETION = 13018;
  static const ERROR_IPSEC_TRANSPORT_FILTER_PENDING_DELETION =
      WIN32_ERROR(13019);
  static const ERROR_IPSEC_TUNNEL_FILTER_PENDING_DELETION = 13020;
  static const ERROR_IPSEC_MM_POLICY_PENDING_DELETION = 13021;
  static const ERROR_IPSEC_MM_AUTH_PENDING_DELETION = 13022;
  static const ERROR_IPSEC_QM_POLICY_PENDING_DELETION = 13023;
  static const ERROR_IPSEC_IKE_NEG_STATUS_BEGIN = 13800;
  static const ERROR_IPSEC_IKE_AUTH_FAIL = 13801;
  static const ERROR_IPSEC_IKE_ATTRIB_FAIL = 13802;
  static const ERROR_IPSEC_IKE_NEGOTIATION_PENDING = 13803;
  static const ERROR_IPSEC_IKE_GENERAL_PROCESSING_ERROR = 13804;
  static const ERROR_IPSEC_IKE_TIMED_OUT = 13805;
  static const ERROR_IPSEC_IKE_NO_CERT = 13806;
  static const ERROR_IPSEC_IKE_SA_DELETED = 13807;
  static const ERROR_IPSEC_IKE_SA_REAPED = 13808;
  static const ERROR_IPSEC_IKE_MM_ACQUIRE_DROP = 13809;
  static const ERROR_IPSEC_IKE_QM_ACQUIRE_DROP = 13810;
  static const ERROR_IPSEC_IKE_QUEUE_DROP_MM = 13811;
  static const ERROR_IPSEC_IKE_QUEUE_DROP_NO_MM = 13812;
  static const ERROR_IPSEC_IKE_DROP_NO_RESPONSE = 13813;
  static const ERROR_IPSEC_IKE_MM_DELAY_DROP = 13814;
  static const ERROR_IPSEC_IKE_QM_DELAY_DROP = 13815;
  static const ERROR_IPSEC_IKE_ERROR = 13816;
  static const ERROR_IPSEC_IKE_CRL_FAILED = 13817;
  static const ERROR_IPSEC_IKE_INVALID_KEY_USAGE = 13818;
  static const ERROR_IPSEC_IKE_INVALID_CERT_TYPE = 13819;
  static const ERROR_IPSEC_IKE_NO_PRIVATE_KEY = 13820;
  static const ERROR_IPSEC_IKE_SIMULTANEOUS_REKEY = 13821;
  static const ERROR_IPSEC_IKE_DH_FAIL = 13822;
  static const ERROR_IPSEC_IKE_CRITICAL_PAYLOAD_NOT_RECOGNIZED =
      WIN32_ERROR(13823);
  static const ERROR_IPSEC_IKE_INVALID_HEADER = 13824;
  static const ERROR_IPSEC_IKE_NO_POLICY = 13825;
  static const ERROR_IPSEC_IKE_INVALID_SIGNATURE = 13826;
  static const ERROR_IPSEC_IKE_KERBEROS_ERROR = 13827;
  static const ERROR_IPSEC_IKE_NO_PUBLIC_KEY = 13828;
  static const ERROR_IPSEC_IKE_PROCESS_ERR = 13829;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_SA = 13830;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_PROP = 13831;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_TRANS = 13832;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_KE = 13833;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_ID = 13834;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_CERT = 13835;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_CERT_REQ = 13836;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_HASH = 13837;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_SIG = 13838;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NONCE = 13839;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NOTIFY = 13840;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_DELETE = 13841;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_VENDOR = 13842;
  static const ERROR_IPSEC_IKE_INVALID_PAYLOAD = 13843;
  static const ERROR_IPSEC_IKE_LOAD_SOFT_SA = 13844;
  static const ERROR_IPSEC_IKE_SOFT_SA_TORN_DOWN = 13845;
  static const ERROR_IPSEC_IKE_INVALID_COOKIE = 13846;
  static const ERROR_IPSEC_IKE_NO_PEER_CERT = 13847;
  static const ERROR_IPSEC_IKE_PEER_CRL_FAILED = 13848;
  static const ERROR_IPSEC_IKE_POLICY_CHANGE = 13849;
  static const ERROR_IPSEC_IKE_NO_MM_POLICY = 13850;
  static const ERROR_IPSEC_IKE_NOTCBPRIV = 13851;
  static const ERROR_IPSEC_IKE_SECLOADFAIL = 13852;
  static const ERROR_IPSEC_IKE_FAILSSPINIT = 13853;
  static const ERROR_IPSEC_IKE_FAILQUERYSSP = 13854;
  static const ERROR_IPSEC_IKE_SRVACQFAIL = 13855;
  static const ERROR_IPSEC_IKE_SRVQUERYCRED = 13856;
  static const ERROR_IPSEC_IKE_GETSPIFAIL = 13857;
  static const ERROR_IPSEC_IKE_INVALID_FILTER = 13858;
  static const ERROR_IPSEC_IKE_OUT_OF_MEMORY = 13859;
  static const ERROR_IPSEC_IKE_ADD_UPDATE_KEY_FAILED = 13860;
  static const ERROR_IPSEC_IKE_INVALID_POLICY = 13861;
  static const ERROR_IPSEC_IKE_UNKNOWN_DOI = 13862;
  static const ERROR_IPSEC_IKE_INVALID_SITUATION = 13863;
  static const ERROR_IPSEC_IKE_DH_FAILURE = 13864;
  static const ERROR_IPSEC_IKE_INVALID_GROUP = 13865;
  static const ERROR_IPSEC_IKE_ENCRYPT = 13866;
  static const ERROR_IPSEC_IKE_DECRYPT = 13867;
  static const ERROR_IPSEC_IKE_POLICY_MATCH = 13868;
  static const ERROR_IPSEC_IKE_UNSUPPORTED_ID = 13869;
  static const ERROR_IPSEC_IKE_INVALID_HASH = 13870;
  static const ERROR_IPSEC_IKE_INVALID_HASH_ALG = 13871;
  static const ERROR_IPSEC_IKE_INVALID_HASH_SIZE = 13872;
  static const ERROR_IPSEC_IKE_INVALID_ENCRYPT_ALG = 13873;
  static const ERROR_IPSEC_IKE_INVALID_AUTH_ALG = 13874;
  static const ERROR_IPSEC_IKE_INVALID_SIG = 13875;
  static const ERROR_IPSEC_IKE_LOAD_FAILED = 13876;
  static const ERROR_IPSEC_IKE_RPC_DELETE = 13877;
  static const ERROR_IPSEC_IKE_BENIGN_REINIT = 13878;
  static const ERROR_IPSEC_IKE_INVALID_RESPONDER_LIFETIME_NOTIFY =
      WIN32_ERROR(13879);
  static const ERROR_IPSEC_IKE_INVALID_MAJOR_VERSION = 13880;
  static const ERROR_IPSEC_IKE_INVALID_CERT_KEYLEN = 13881;
  static const ERROR_IPSEC_IKE_MM_LIMIT = 13882;
  static const ERROR_IPSEC_IKE_NEGOTIATION_DISABLED = 13883;
  static const ERROR_IPSEC_IKE_QM_LIMIT = 13884;
  static const ERROR_IPSEC_IKE_MM_EXPIRED = 13885;
  static const ERROR_IPSEC_IKE_PEER_MM_ASSUMED_INVALID = 13886;
  static const ERROR_IPSEC_IKE_CERT_CHAIN_POLICY_MISMATCH = 13887;
  static const ERROR_IPSEC_IKE_UNEXPECTED_MESSAGE_ID = 13888;
  static const ERROR_IPSEC_IKE_INVALID_AUTH_PAYLOAD = 13889;
  static const ERROR_IPSEC_IKE_DOS_COOKIE_SENT = 13890;
  static const ERROR_IPSEC_IKE_SHUTTING_DOWN = 13891;
  static const ERROR_IPSEC_IKE_CGA_AUTH_FAILED = 13892;
  static const ERROR_IPSEC_IKE_PROCESS_ERR_NATOA = 13893;
  static const ERROR_IPSEC_IKE_INVALID_MM_FOR_QM = 13894;
  static const ERROR_IPSEC_IKE_QM_EXPIRED = 13895;
  static const ERROR_IPSEC_IKE_TOO_MANY_FILTERS = 13896;
  static const ERROR_IPSEC_IKE_NEG_STATUS_END = 13897;
  static const ERROR_IPSEC_IKE_KILL_DUMMY_NAP_TUNNEL = 13898;
  static const ERROR_IPSEC_IKE_INNER_IP_ASSIGNMENT_FAILURE = 13899;
  static const ERROR_IPSEC_IKE_REQUIRE_CP_PAYLOAD_MISSING = 13900;
  static const ERROR_IPSEC_KEY_MODULE_IMPERSONATION_NEGOTIATION_PENDING =
      WIN32_ERROR(13901);
  static const ERROR_IPSEC_IKE_COEXISTENCE_SUPPRESS = 13902;
  static const ERROR_IPSEC_IKE_RATELIMIT_DROP = 13903;
  static const ERROR_IPSEC_IKE_PEER_DOESNT_SUPPORT_MOBIKE = 13904;
  static const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE = 13905;
  static const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_FAILURE =
      WIN32_ERROR(13906);
  static const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE_WITH_OPTIONAL_RETRY =
      WIN32_ERROR(13907);
  static const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_AND_CERTMAP_FAILURE =
      WIN32_ERROR(13908);
  static const ERROR_IPSEC_IKE_NEG_STATUS_EXTENDED_END = 13909;
  static const ERROR_IPSEC_BAD_SPI = 13910;
  static const ERROR_IPSEC_SA_LIFETIME_EXPIRED = 13911;
  static const ERROR_IPSEC_WRONG_SA = 13912;
  static const ERROR_IPSEC_REPLAY_CHECK_FAILED = 13913;
  static const ERROR_IPSEC_INVALID_PACKET = 13914;
  static const ERROR_IPSEC_INTEGRITY_CHECK_FAILED = 13915;
  static const ERROR_IPSEC_CLEAR_TEXT_DROP = 13916;
  static const ERROR_IPSEC_AUTH_FIREWALL_DROP = 13917;
  static const ERROR_IPSEC_THROTTLE_DROP = 13918;
  static const ERROR_IPSEC_DOSP_BLOCK = 13925;
  static const ERROR_IPSEC_DOSP_RECEIVED_MULTICAST = 13926;
  static const ERROR_IPSEC_DOSP_INVALID_PACKET = 13927;
  static const ERROR_IPSEC_DOSP_STATE_LOOKUP_FAILED = 13928;
  static const ERROR_IPSEC_DOSP_MAX_ENTRIES = 13929;
  static const ERROR_IPSEC_DOSP_KEYMOD_NOT_ALLOWED = 13930;
  static const ERROR_IPSEC_DOSP_NOT_INSTALLED = 13931;
  static const ERROR_IPSEC_DOSP_MAX_PER_IP_RATELIMIT_QUEUES =
      WIN32_ERROR(13932);
  static const ERROR_SXS_SECTION_NOT_FOUND = 14000;
  static const ERROR_SXS_CANT_GEN_ACTCTX = 14001;
  static const ERROR_SXS_INVALID_ACTCTXDATA_FORMAT = 14002;
  static const ERROR_SXS_ASSEMBLY_NOT_FOUND = 14003;
  static const ERROR_SXS_MANIFEST_FORMAT_ERROR = 14004;
  static const ERROR_SXS_MANIFEST_PARSE_ERROR = 14005;
  static const ERROR_SXS_ACTIVATION_CONTEXT_DISABLED = 14006;
  static const ERROR_SXS_KEY_NOT_FOUND = 14007;
  static const ERROR_SXS_VERSION_CONFLICT = 14008;
  static const ERROR_SXS_WRONG_SECTION_TYPE = 14009;
  static const ERROR_SXS_THREAD_QUERIES_DISABLED = 14010;
  static const ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET = 14011;
  static const ERROR_SXS_UNKNOWN_ENCODING_GROUP = 14012;
  static const ERROR_SXS_UNKNOWN_ENCODING = 14013;
  static const ERROR_SXS_INVALID_XML_NAMESPACE_URI = 14014;
  static const ERROR_SXS_ROOT_MANIFEST_DEPENDENCY_NOT_INSTALLED =
      WIN32_ERROR(14015);
  static const ERROR_SXS_LEAF_MANIFEST_DEPENDENCY_NOT_INSTALLED =
      WIN32_ERROR(14016);
  static const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE =
      WIN32_ERROR(14017);
  static const ERROR_SXS_MANIFEST_MISSING_REQUIRED_DEFAULT_NAMESPACE =
      WIN32_ERROR(14018);
  static const ERROR_SXS_MANIFEST_INVALID_REQUIRED_DEFAULT_NAMESPACE =
      WIN32_ERROR(14019);
  static const ERROR_SXS_PRIVATE_MANIFEST_CROSS_PATH_WITH_REPARSE_POINT =
      WIN32_ERROR(14020);
  static const ERROR_SXS_DUPLICATE_DLL_NAME = 14021;
  static const ERROR_SXS_DUPLICATE_WINDOWCLASS_NAME = 14022;
  static const ERROR_SXS_DUPLICATE_CLSID = 14023;
  static const ERROR_SXS_DUPLICATE_IID = 14024;
  static const ERROR_SXS_DUPLICATE_TLBID = 14025;
  static const ERROR_SXS_DUPLICATE_PROGID = 14026;
  static const ERROR_SXS_DUPLICATE_ASSEMBLY_NAME = 14027;
  static const ERROR_SXS_FILE_HASH_MISMATCH = 14028;
  static const ERROR_SXS_POLICY_PARSE_ERROR = 14029;
  static const ERROR_SXS_XML_E_MISSINGQUOTE = 14030;
  static const ERROR_SXS_XML_E_COMMENTSYNTAX = 14031;
  static const ERROR_SXS_XML_E_BADSTARTNAMECHAR = 14032;
  static const ERROR_SXS_XML_E_BADNAMECHAR = 14033;
  static const ERROR_SXS_XML_E_BADCHARINSTRING = 14034;
  static const ERROR_SXS_XML_E_XMLDECLSYNTAX = 14035;
  static const ERROR_SXS_XML_E_BADCHARDATA = 14036;
  static const ERROR_SXS_XML_E_MISSINGWHITESPACE = 14037;
  static const ERROR_SXS_XML_E_EXPECTINGTAGEND = 14038;
  static const ERROR_SXS_XML_E_MISSINGSEMICOLON = 14039;
  static const ERROR_SXS_XML_E_UNBALANCEDPAREN = 14040;
  static const ERROR_SXS_XML_E_INTERNALERROR = 14041;
  static const ERROR_SXS_XML_E_UNEXPECTED_WHITESPACE = 14042;
  static const ERROR_SXS_XML_E_INCOMPLETE_ENCODING = 14043;
  static const ERROR_SXS_XML_E_MISSING_PAREN = 14044;
  static const ERROR_SXS_XML_E_EXPECTINGCLOSEQUOTE = 14045;
  static const ERROR_SXS_XML_E_MULTIPLE_COLONS = 14046;
  static const ERROR_SXS_XML_E_INVALID_DECIMAL = 14047;
  static const ERROR_SXS_XML_E_INVALID_HEXIDECIMAL = 14048;
  static const ERROR_SXS_XML_E_INVALID_UNICODE = 14049;
  static const ERROR_SXS_XML_E_WHITESPACEORQUESTIONMARK = 14050;
  static const ERROR_SXS_XML_E_UNEXPECTEDENDTAG = 14051;
  static const ERROR_SXS_XML_E_UNCLOSEDTAG = 14052;
  static const ERROR_SXS_XML_E_DUPLICATEATTRIBUTE = 14053;
  static const ERROR_SXS_XML_E_MULTIPLEROOTS = 14054;
  static const ERROR_SXS_XML_E_INVALIDATROOTLEVEL = 14055;
  static const ERROR_SXS_XML_E_BADXMLDECL = 14056;
  static const ERROR_SXS_XML_E_MISSINGROOT = 14057;
  static const ERROR_SXS_XML_E_UNEXPECTEDEOF = 14058;
  static const ERROR_SXS_XML_E_BADPEREFINSUBSET = 14059;
  static const ERROR_SXS_XML_E_UNCLOSEDSTARTTAG = 14060;
  static const ERROR_SXS_XML_E_UNCLOSEDENDTAG = 14061;
  static const ERROR_SXS_XML_E_UNCLOSEDSTRING = 14062;
  static const ERROR_SXS_XML_E_UNCLOSEDCOMMENT = 14063;
  static const ERROR_SXS_XML_E_UNCLOSEDDECL = 14064;
  static const ERROR_SXS_XML_E_UNCLOSEDCDATA = 14065;
  static const ERROR_SXS_XML_E_RESERVEDNAMESPACE = 14066;
  static const ERROR_SXS_XML_E_INVALIDENCODING = 14067;
  static const ERROR_SXS_XML_E_INVALIDSWITCH = 14068;
  static const ERROR_SXS_XML_E_BADXMLCASE = 14069;
  static const ERROR_SXS_XML_E_INVALID_STANDALONE = 14070;
  static const ERROR_SXS_XML_E_UNEXPECTED_STANDALONE = 14071;
  static const ERROR_SXS_XML_E_INVALID_VERSION = 14072;
  static const ERROR_SXS_XML_E_MISSINGEQUALS = 14073;
  static const ERROR_SXS_PROTECTION_RECOVERY_FAILED = 14074;
  static const ERROR_SXS_PROTECTION_PUBLIC_KEY_TOO_SHORT = 14075;
  static const ERROR_SXS_PROTECTION_CATALOG_NOT_VALID = 14076;
  static const ERROR_SXS_UNTRANSLATABLE_HRESULT = 14077;
  static const ERROR_SXS_PROTECTION_CATALOG_FILE_MISSING = 14078;
  static const ERROR_SXS_MISSING_ASSEMBLY_IDENTITY_ATTRIBUTE =
      WIN32_ERROR(14079);
  static const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME =
      WIN32_ERROR(14080);
  static const ERROR_SXS_ASSEMBLY_MISSING = 14081;
  static const ERROR_SXS_CORRUPT_ACTIVATION_STACK = 14082;
  static const ERROR_SXS_CORRUPTION = 14083;
  static const ERROR_SXS_EARLY_DEACTIVATION = 14084;
  static const ERROR_SXS_INVALID_DEACTIVATION = 14085;
  static const ERROR_SXS_MULTIPLE_DEACTIVATION = 14086;
  static const ERROR_SXS_PROCESS_TERMINATION_REQUESTED = 14087;
  static const ERROR_SXS_RELEASE_ACTIVATION_CONTEXT = 14088;
  static const ERROR_SXS_SYSTEM_DEFAULT_ACTIVATION_CONTEXT_EMPTY =
      WIN32_ERROR(14089);
  static const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_VALUE = 14090;
  static const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_NAME = 14091;
  static const ERROR_SXS_IDENTITY_DUPLICATE_ATTRIBUTE = 14092;
  static const ERROR_SXS_IDENTITY_PARSE_ERROR = 14093;
  static const ERROR_MALFORMED_SUBSTITUTION_STRING = 14094;
  static const ERROR_SXS_INCORRECT_PUBLIC_KEY_TOKEN = 14095;
  static const ERROR_UNMAPPED_SUBSTITUTION_STRING = 14096;
  static const ERROR_SXS_ASSEMBLY_NOT_LOCKED = 14097;
  static const ERROR_SXS_COMPONENT_STORE_CORRUPT = 14098;
  static const ERROR_ADVANCED_INSTALLER_FAILED = 14099;
  static const ERROR_XML_ENCODING_MISMATCH = 14100;
  static const ERROR_SXS_MANIFEST_IDENTITY_SAME_BUT_CONTENTS_DIFFERENT =
      WIN32_ERROR(14101);
  static const ERROR_SXS_IDENTITIES_DIFFERENT = 14102;
  static const ERROR_SXS_ASSEMBLY_IS_NOT_A_DEPLOYMENT = 14103;
  static const ERROR_SXS_FILE_NOT_PART_OF_ASSEMBLY = 14104;
  static const ERROR_SXS_MANIFEST_TOO_BIG = 14105;
  static const ERROR_SXS_SETTING_NOT_REGISTERED = 14106;
  static const ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE = 14107;
  static const ERROR_SMI_PRIMITIVE_INSTALLER_FAILED = 14108;
  static const ERROR_GENERIC_COMMAND_FAILED = 14109;
  static const ERROR_SXS_FILE_HASH_MISSING = 14110;
  static const ERROR_SXS_DUPLICATE_ACTIVATABLE_CLASS = 14111;
  static const ERROR_EVT_INVALID_CHANNEL_PATH = 15000;
  static const ERROR_EVT_INVALID_QUERY = 15001;
  static const ERROR_EVT_PUBLISHER_METADATA_NOT_FOUND = 15002;
  static const ERROR_EVT_EVENT_TEMPLATE_NOT_FOUND = 15003;
  static const ERROR_EVT_INVALID_PUBLISHER_NAME = 15004;
  static const ERROR_EVT_INVALID_EVENT_DATA = 15005;
  static const ERROR_EVT_CHANNEL_NOT_FOUND = 15007;
  static const ERROR_EVT_MALFORMED_XML_TEXT = 15008;
  static const ERROR_EVT_SUBSCRIPTION_TO_DIRECT_CHANNEL = 15009;
  static const ERROR_EVT_CONFIGURATION_ERROR = 15010;
  static const ERROR_EVT_QUERY_RESULT_STALE = 15011;
  static const ERROR_EVT_QUERY_RESULT_INVALID_POSITION = 15012;
  static const ERROR_EVT_NON_VALIDATING_MSXML = 15013;
  static const ERROR_EVT_FILTER_ALREADYSCOPED = 15014;
  static const ERROR_EVT_FILTER_NOTELTSET = 15015;
  static const ERROR_EVT_FILTER_INVARG = 15016;
  static const ERROR_EVT_FILTER_INVTEST = 15017;
  static const ERROR_EVT_FILTER_INVTYPE = 15018;
  static const ERROR_EVT_FILTER_PARSEERR = 15019;
  static const ERROR_EVT_FILTER_UNSUPPORTEDOP = 15020;
  static const ERROR_EVT_FILTER_UNEXPECTEDTOKEN = 15021;
  static const ERROR_EVT_INVALID_OPERATION_OVER_ENABLED_DIRECT_CHANNEL =
      WIN32_ERROR(15022);
  static const ERROR_EVT_INVALID_CHANNEL_PROPERTY_VALUE = 15023;
  static const ERROR_EVT_INVALID_PUBLISHER_PROPERTY_VALUE = 15024;
  static const ERROR_EVT_CHANNEL_CANNOT_ACTIVATE = 15025;
  static const ERROR_EVT_FILTER_TOO_COMPLEX = 15026;
  static const ERROR_EVT_MESSAGE_NOT_FOUND = 15027;
  static const ERROR_EVT_MESSAGE_ID_NOT_FOUND = 15028;
  static const ERROR_EVT_UNRESOLVED_VALUE_INSERT = 15029;
  static const ERROR_EVT_UNRESOLVED_PARAMETER_INSERT = 15030;
  static const ERROR_EVT_MAX_INSERTS_REACHED = 15031;
  static const ERROR_EVT_EVENT_DEFINITION_NOT_FOUND = 15032;
  static const ERROR_EVT_MESSAGE_LOCALE_NOT_FOUND = 15033;
  static const ERROR_EVT_VERSION_TOO_OLD = 15034;
  static const ERROR_EVT_VERSION_TOO_NEW = 15035;
  static const ERROR_EVT_CANNOT_OPEN_CHANNEL_OF_QUERY = 15036;
  static const ERROR_EVT_PUBLISHER_DISABLED = 15037;
  static const ERROR_EVT_FILTER_OUT_OF_RANGE = 15038;
  static const ERROR_EC_SUBSCRIPTION_CANNOT_ACTIVATE = 15080;
  static const ERROR_EC_LOG_DISABLED = 15081;
  static const ERROR_EC_CIRCULAR_FORWARDING = 15082;
  static const ERROR_EC_CREDSTORE_FULL = 15083;
  static const ERROR_EC_CRED_NOT_FOUND = 15084;
  static const ERROR_EC_NO_ACTIVE_CHANNEL = 15085;
  static const ERROR_MUI_FILE_NOT_FOUND = 15100;
  static const ERROR_MUI_INVALID_FILE = 15101;
  static const ERROR_MUI_INVALID_RC_CONFIG = 15102;
  static const ERROR_MUI_INVALID_LOCALE_NAME = 15103;
  static const ERROR_MUI_INVALID_ULTIMATEFALLBACK_NAME = 15104;
  static const ERROR_MUI_FILE_NOT_LOADED = 15105;
  static const ERROR_RESOURCE_ENUM_USER_STOP = 15106;
  static const ERROR_MUI_INTLSETTINGS_UILANG_NOT_INSTALLED = 15107;
  static const ERROR_MUI_INTLSETTINGS_INVALID_LOCALE_NAME = 15108;
  static const ERROR_MRM_RUNTIME_NO_DEFAULT_OR_NEUTRAL_RESOURCE =
      WIN32_ERROR(15110);
  static const ERROR_MRM_INVALID_PRICONFIG = 15111;
  static const ERROR_MRM_INVALID_FILE_TYPE = 15112;
  static const ERROR_MRM_UNKNOWN_QUALIFIER = 15113;
  static const ERROR_MRM_INVALID_QUALIFIER_VALUE = 15114;
  static const ERROR_MRM_NO_CANDIDATE = 15115;
  static const ERROR_MRM_NO_MATCH_OR_DEFAULT_CANDIDATE = 15116;
  static const ERROR_MRM_RESOURCE_TYPE_MISMATCH = 15117;
  static const ERROR_MRM_DUPLICATE_MAP_NAME = 15118;
  static const ERROR_MRM_DUPLICATE_ENTRY = 15119;
  static const ERROR_MRM_INVALID_RESOURCE_IDENTIFIER = 15120;
  static const ERROR_MRM_FILEPATH_TOO_LONG = 15121;
  static const ERROR_MRM_UNSUPPORTED_DIRECTORY_TYPE = 15122;
  static const ERROR_MRM_INVALID_PRI_FILE = 15126;
  static const ERROR_MRM_NAMED_RESOURCE_NOT_FOUND = 15127;
  static const ERROR_MRM_MAP_NOT_FOUND = 15135;
  static const ERROR_MRM_UNSUPPORTED_PROFILE_TYPE = 15136;
  static const ERROR_MRM_INVALID_QUALIFIER_OPERATOR = 15137;
  static const ERROR_MRM_INDETERMINATE_QUALIFIER_VALUE = 15138;
  static const ERROR_MRM_AUTOMERGE_ENABLED = 15139;
  static const ERROR_MRM_TOO_MANY_RESOURCES = 15140;
  static const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_MERGE = 15141;
  static const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_LOAD_UNLOAD_PRI_FILE =
      WIN32_ERROR(15142);
  static const ERROR_MRM_NO_CURRENT_VIEW_ON_THREAD = 15143;
  static const ERROR_DIFFERENT_PROFILE_RESOURCE_MANAGER_EXIST =
      WIN32_ERROR(15144);
  static const ERROR_OPERATION_NOT_ALLOWED_FROM_SYSTEM_COMPONENT =
      WIN32_ERROR(15145);
  static const ERROR_MRM_DIRECT_REF_TO_NON_DEFAULT_RESOURCE =
      WIN32_ERROR(15146);
  static const ERROR_MRM_GENERATION_COUNT_MISMATCH = 15147;
  static const ERROR_PRI_MERGE_VERSION_MISMATCH = 15148;
  static const ERROR_PRI_MERGE_MISSING_SCHEMA = 15149;
  static const ERROR_PRI_MERGE_LOAD_FILE_FAILED = 15150;
  static const ERROR_PRI_MERGE_ADD_FILE_FAILED = 15151;
  static const ERROR_PRI_MERGE_WRITE_FILE_FAILED = 15152;
  static const ERROR_PRI_MERGE_MULTIPLE_PACKAGE_FAMILIES_NOT_ALLOWED =
      WIN32_ERROR(15153);
  static const ERROR_PRI_MERGE_MULTIPLE_MAIN_PACKAGES_NOT_ALLOWED =
      WIN32_ERROR(15154);
  static const ERROR_PRI_MERGE_BUNDLE_PACKAGES_NOT_ALLOWED = 15155;
  static const ERROR_PRI_MERGE_MAIN_PACKAGE_REQUIRED = 15156;
  static const ERROR_PRI_MERGE_RESOURCE_PACKAGE_REQUIRED = 15157;
  static const ERROR_PRI_MERGE_INVALID_FILE_NAME = 15158;
  static const ERROR_MRM_PACKAGE_NOT_FOUND = 15159;
  static const ERROR_MRM_MISSING_DEFAULT_LANGUAGE = 15160;
  static const ERROR_MRM_SCOPE_ITEM_CONFLICT = 15161;
  static const ERROR_MCA_INVALID_CAPABILITIES_STRING = 15200;
  static const ERROR_MCA_INVALID_VCP_VERSION = 15201;
  static const ERROR_MCA_MONITOR_VIOLATES_MCCS_SPECIFICATION =
      WIN32_ERROR(15202);
  static const ERROR_MCA_MCCS_VERSION_MISMATCH = 15203;
  static const ERROR_MCA_UNSUPPORTED_MCCS_VERSION = 15204;
  static const ERROR_MCA_INTERNAL_ERROR = 15205;
  static const ERROR_MCA_INVALID_TECHNOLOGY_TYPE_RETURNED = 15206;
  static const ERROR_MCA_UNSUPPORTED_COLOR_TEMPERATURE = 15207;
  static const ERROR_AMBIGUOUS_SYSTEM_DEVICE = 15250;
  static const ERROR_SYSTEM_DEVICE_NOT_FOUND = 15299;
  static const ERROR_HASH_NOT_SUPPORTED = 15300;
  static const ERROR_HASH_NOT_PRESENT = 15301;
  static const ERROR_SECONDARY_IC_PROVIDER_NOT_REGISTERED = 15321;
  static const ERROR_GPIO_CLIENT_INFORMATION_INVALID = 15322;
  static const ERROR_GPIO_VERSION_NOT_SUPPORTED = 15323;
  static const ERROR_GPIO_INVALID_REGISTRATION_PACKET = 15324;
  static const ERROR_GPIO_OPERATION_DENIED = 15325;
  static const ERROR_GPIO_INCOMPATIBLE_CONNECT_MODE = 15326;
  static const ERROR_GPIO_INTERRUPT_ALREADY_UNMASKED = 15327;
  static const ERROR_CANNOT_SWITCH_RUNLEVEL = 15400;
  static const ERROR_INVALID_RUNLEVEL_SETTING = 15401;
  static const ERROR_RUNLEVEL_SWITCH_TIMEOUT = 15402;
  static const ERROR_RUNLEVEL_SWITCH_AGENT_TIMEOUT = 15403;
  static const ERROR_RUNLEVEL_SWITCH_IN_PROGRESS = 15404;
  static const ERROR_SERVICES_FAILED_AUTOSTART = 15405;
  static const ERROR_COM_TASK_STOP_PENDING = 15501;
  static const ERROR_INSTALL_OPEN_PACKAGE_FAILED = 15600;
  static const ERROR_INSTALL_PACKAGE_NOT_FOUND = 15601;
  static const ERROR_INSTALL_INVALID_PACKAGE = 15602;
  static const ERROR_INSTALL_RESOLVE_DEPENDENCY_FAILED = 15603;
  static const ERROR_INSTALL_OUT_OF_DISK_SPACE = 15604;
  static const ERROR_INSTALL_NETWORK_FAILURE = 15605;
  static const ERROR_INSTALL_REGISTRATION_FAILURE = 15606;
  static const ERROR_INSTALL_DEREGISTRATION_FAILURE = 15607;
  static const ERROR_INSTALL_CANCEL = 15608;
  static const ERROR_INSTALL_FAILED = 15609;
  static const ERROR_REMOVE_FAILED = 15610;
  static const ERROR_PACKAGE_ALREADY_EXISTS = 15611;
  static const ERROR_NEEDS_REMEDIATION = 15612;
  static const ERROR_INSTALL_PREREQUISITE_FAILED = 15613;
  static const ERROR_PACKAGE_REPOSITORY_CORRUPTED = 15614;
  static const ERROR_INSTALL_POLICY_FAILURE = 15615;
  static const ERROR_PACKAGE_UPDATING = 15616;
  static const ERROR_DEPLOYMENT_BLOCKED_BY_POLICY = 15617;
  static const ERROR_PACKAGES_IN_USE = 15618;
  static const ERROR_RECOVERY_FILE_CORRUPT = 15619;
  static const ERROR_INVALID_STAGED_SIGNATURE = 15620;
  static const ERROR_DELETING_EXISTING_APPLICATIONDATA_STORE_FAILED =
      WIN32_ERROR(15621);
  static const ERROR_INSTALL_PACKAGE_DOWNGRADE = 15622;
  static const ERROR_SYSTEM_NEEDS_REMEDIATION = 15623;
  static const ERROR_APPX_INTEGRITY_FAILURE_CLR_NGEN = 15624;
  static const ERROR_RESILIENCY_FILE_CORRUPT = 15625;
  static const ERROR_INSTALL_FIREWALL_SERVICE_NOT_RUNNING = 15626;
  static const ERROR_PACKAGE_MOVE_FAILED = 15627;
  static const ERROR_INSTALL_VOLUME_NOT_EMPTY = 15628;
  static const ERROR_INSTALL_VOLUME_OFFLINE = 15629;
  static const ERROR_INSTALL_VOLUME_CORRUPT = 15630;
  static const ERROR_NEEDS_REGISTRATION = 15631;
  static const ERROR_INSTALL_WRONG_PROCESSOR_ARCHITECTURE = 15632;
  static const ERROR_DEV_SIDELOAD_LIMIT_EXCEEDED = 15633;
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE =
      WIN32_ERROR(15634);
  static const ERROR_PACKAGE_NOT_SUPPORTED_ON_FILESYSTEM = 15635;
  static const ERROR_PACKAGE_MOVE_BLOCKED_BY_STREAMING = 15636;
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_APPLICATIONID_NOT_UNIQUE =
      WIN32_ERROR(15637);
  static const ERROR_PACKAGE_STAGING_ONHOLD = 15638;
  static const ERROR_INSTALL_INVALID_RELATED_SET_UPDATE = 15639;
  static const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
      WIN32_ERROR(15640);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_USER_LOG_OFF = 15641;
  static const ERROR_PROVISION_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_PROVISIONED =
      WIN32_ERROR(15642);
  static const ERROR_PACKAGES_REPUTATION_CHECK_FAILED = 15643;
  static const ERROR_PACKAGES_REPUTATION_CHECK_TIMEDOUT = 15644;
  static const ERROR_DEPLOYMENT_OPTION_NOT_SUPPORTED = 15645;
  static const ERROR_APPINSTALLER_ACTIVATION_BLOCKED = 15646;
  static const ERROR_REGISTRATION_FROM_REMOTE_DRIVE_NOT_SUPPORTED =
      WIN32_ERROR(15647);
  static const ERROR_APPX_RAW_DATA_WRITE_FAILED = 15648;
  static const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_PACKAGE =
      WIN32_ERROR(15649);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_MACHINE =
      WIN32_ERROR(15650);
  static const ERROR_DEPLOYMENT_BLOCKED_BY_PROFILE_POLICY = 15651;
  static const ERROR_DEPLOYMENT_FAILED_CONFLICTING_MUTABLE_PACKAGE_DIRECTORY =
      WIN32_ERROR(15652);
  static const ERROR_SINGLETON_RESOURCE_INSTALLED_IN_ACTIVE_USER =
      WIN32_ERROR(15653);
  static const ERROR_DIFFERENT_VERSION_OF_PACKAGED_SERVICE_INSTALLED =
      WIN32_ERROR(15654);
  static const ERROR_SERVICE_EXISTS_AS_NON_PACKAGED_SERVICE =
      WIN32_ERROR(15655);
  static const ERROR_PACKAGED_SERVICE_REQUIRES_ADMIN_PRIVILEGES =
      WIN32_ERROR(15656);
  static const ERROR_REDIRECTION_TO_DEFAULT_ACCOUNT_NOT_ALLOWED =
      WIN32_ERROR(15657);
  static const ERROR_PACKAGE_LACKS_CAPABILITY_TO_DEPLOY_ON_HOST =
      WIN32_ERROR(15658);
  static const ERROR_UNSIGNED_PACKAGE_INVALID_CONTENT = 15659;
  static const ERROR_UNSIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE =
      WIN32_ERROR(15660);
  static const ERROR_SIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE =
      WIN32_ERROR(15661);
  static const ERROR_PACKAGE_EXTERNAL_LOCATION_NOT_ALLOWED = 15662;
  static const ERROR_INSTALL_FULLTRUST_HOSTRUNTIME_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
      WIN32_ERROR(15663);
  static const ERROR_PACKAGE_LACKS_CAPABILITY_FOR_MANDATORY_STARTUPTASKS =
      WIN32_ERROR(15664);
  static const ERROR_INSTALL_RESOLVE_HOSTRUNTIME_DEPENDENCY_FAILED =
      WIN32_ERROR(15665);
  static const ERROR_MACHINE_SCOPE_NOT_ALLOWED = 15666;
  static const ERROR_CLASSIC_COMPAT_MODE_NOT_ALLOWED = 15667;
  static const ERROR_STAGEFROMUPDATEAGENT_PACKAGE_NOT_APPLICABLE =
      WIN32_ERROR(15668);
  static const ERROR_PACKAGE_NOT_REGISTERED_FOR_USER = 15669;
  static const ERROR_PACKAGE_NAME_MISMATCH = 15670;
  static const ERROR_APPINSTALLER_URI_IN_USE = 15671;
  static const ERROR_APPINSTALLER_IS_MANAGED_BY_SYSTEM = 15672;
  static const APPMODEL_ERROR_NO_PACKAGE = 15700;
  static const APPMODEL_ERROR_PACKAGE_RUNTIME_CORRUPT = 15701;
  static const APPMODEL_ERROR_PACKAGE_IDENTITY_CORRUPT = 15702;
  static const APPMODEL_ERROR_NO_APPLICATION = 15703;
  static const APPMODEL_ERROR_DYNAMIC_PROPERTY_READ_FAILED = 15704;
  static const APPMODEL_ERROR_DYNAMIC_PROPERTY_INVALID = 15705;
  static const APPMODEL_ERROR_PACKAGE_NOT_AVAILABLE = 15706;
  static const APPMODEL_ERROR_NO_MUTABLE_DIRECTORY = 15707;
  static const ERROR_STATE_LOAD_STORE_FAILED = 15800;
  static const ERROR_STATE_GET_VERSION_FAILED = 15801;
  static const ERROR_STATE_SET_VERSION_FAILED = 15802;
  static const ERROR_STATE_STRUCTURED_RESET_FAILED = 15803;
  static const ERROR_STATE_OPEN_CONTAINER_FAILED = 15804;
  static const ERROR_STATE_CREATE_CONTAINER_FAILED = 15805;
  static const ERROR_STATE_DELETE_CONTAINER_FAILED = 15806;
  static const ERROR_STATE_READ_SETTING_FAILED = 15807;
  static const ERROR_STATE_WRITE_SETTING_FAILED = 15808;
  static const ERROR_STATE_DELETE_SETTING_FAILED = 15809;
  static const ERROR_STATE_QUERY_SETTING_FAILED = 15810;
  static const ERROR_STATE_READ_COMPOSITE_SETTING_FAILED = 15811;
  static const ERROR_STATE_WRITE_COMPOSITE_SETTING_FAILED = 15812;
  static const ERROR_STATE_ENUMERATE_CONTAINER_FAILED = 15813;
  static const ERROR_STATE_ENUMERATE_SETTINGS_FAILED = 15814;
  static const ERROR_STATE_COMPOSITE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(15815);
  static const ERROR_STATE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(15816);
  static const ERROR_STATE_SETTING_NAME_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(15817);
  static const ERROR_STATE_CONTAINER_NAME_SIZE_LIMIT_EXCEEDED =
      WIN32_ERROR(15818);
  static const ERROR_API_UNAVAILABLE = 15841;
  static const ERROR_NDIS_INTERFACE_CLOSING = 2150891522;
  static const ERROR_NDIS_BAD_VERSION = 2150891524;
  static const ERROR_NDIS_BAD_CHARACTERISTICS = 2150891525;
  static const ERROR_NDIS_ADAPTER_NOT_FOUND = 2150891526;
  static const ERROR_NDIS_OPEN_FAILED = 2150891527;
  static const ERROR_NDIS_DEVICE_FAILED = 2150891528;
  static const ERROR_NDIS_MULTICAST_FULL = 2150891529;
  static const ERROR_NDIS_MULTICAST_EXISTS = 2150891530;
  static const ERROR_NDIS_MULTICAST_NOT_FOUND = 2150891531;
  static const ERROR_NDIS_REQUEST_ABORTED = 2150891532;
  static const ERROR_NDIS_RESET_IN_PROGRESS = 2150891533;
  static const ERROR_NDIS_NOT_SUPPORTED = 2150891707;
  static const ERROR_NDIS_INVALID_PACKET = 2150891535;
  static const ERROR_NDIS_ADAPTER_NOT_READY = 2150891537;
  static const ERROR_NDIS_INVALID_LENGTH = 2150891540;
  static const ERROR_NDIS_INVALID_DATA = 2150891541;
  static const ERROR_NDIS_BUFFER_TOO_SHORT = 2150891542;
  static const ERROR_NDIS_INVALID_OID = 2150891543;
  static const ERROR_NDIS_ADAPTER_REMOVED = 2150891544;
  static const ERROR_NDIS_UNSUPPORTED_MEDIA = 2150891545;
  static const ERROR_NDIS_GROUP_ADDRESS_IN_USE = 2150891546;
  static const ERROR_NDIS_FILE_NOT_FOUND = 2150891547;
  static const ERROR_NDIS_ERROR_READING_FILE = 2150891548;
  static const ERROR_NDIS_ALREADY_MAPPED = 2150891549;
  static const ERROR_NDIS_RESOURCE_CONFLICT = 2150891550;
  static const ERROR_NDIS_MEDIA_DISCONNECTED = 2150891551;
  static const ERROR_NDIS_INVALID_ADDRESS = 2150891554;
  static const ERROR_NDIS_INVALID_DEVICE_REQUEST = 2150891536;
  static const ERROR_NDIS_PAUSED = 2150891562;
  static const ERROR_NDIS_INTERFACE_NOT_FOUND = 2150891563;
  static const ERROR_NDIS_UNSUPPORTED_REVISION = 2150891564;
  static const ERROR_NDIS_INVALID_PORT = 2150891565;
  static const ERROR_NDIS_INVALID_PORT_STATE = 2150891566;
  static const ERROR_NDIS_LOW_POWER_STATE = 2150891567;
  static const ERROR_NDIS_REINIT_REQUIRED = 2150891568;
  static const ERROR_NDIS_NO_QUEUES = 2150891569;
  static const ERROR_NDIS_DOT11_AUTO_CONFIG_ENABLED = 2150899712;
  static const ERROR_NDIS_DOT11_MEDIA_IN_USE = 2150899713;
  static const ERROR_NDIS_DOT11_POWER_STATE_INVALID = 2150899714;
  static const ERROR_NDIS_PM_WOL_PATTERN_LIST_FULL = 2150899715;
  static const ERROR_NDIS_PM_PROTOCOL_OFFLOAD_LIST_FULL =
      WIN32_ERROR(2150899716);
  static const ERROR_NDIS_DOT11_AP_CHANNEL_CURRENTLY_NOT_AVAILABLE =
      WIN32_ERROR(2150899717);
  static const ERROR_NDIS_DOT11_AP_BAND_CURRENTLY_NOT_AVAILABLE =
      WIN32_ERROR(2150899718);
  static const ERROR_NDIS_DOT11_AP_CHANNEL_NOT_ALLOWED =
      WIN32_ERROR(2150899719);
  static const ERROR_NDIS_DOT11_AP_BAND_NOT_ALLOWED = 2150899720;
  static const ERROR_NDIS_INDICATION_REQUIRED = 3407873;
  static const ERROR_NDIS_OFFLOAD_POLICY = 3224637455;
  static const ERROR_NDIS_OFFLOAD_CONNECTION_REJECTED = 3224637458;
  static const ERROR_NDIS_OFFLOAD_PATH_REJECTED = 3224637459;
  static const ERROR_HV_INVALID_HYPERCALL_CODE = 3224698882;
  static const ERROR_HV_INVALID_HYPERCALL_INPUT = 3224698883;
  static const ERROR_HV_INVALID_ALIGNMENT = 3224698884;
  static const ERROR_HV_INVALID_PARAMETER = 3224698885;
  static const ERROR_HV_ACCESS_DENIED = 3224698886;
  static const ERROR_HV_INVALID_PARTITION_STATE = 3224698887;
  static const ERROR_HV_OPERATION_DENIED = 3224698888;
  static const ERROR_HV_UNKNOWN_PROPERTY = 3224698889;
  static const ERROR_HV_PROPERTY_VALUE_OUT_OF_RANGE = 3224698890;
  static const ERROR_HV_INSUFFICIENT_MEMORY = 3224698891;
  static const ERROR_HV_PARTITION_TOO_DEEP = 3224698892;
  static const ERROR_HV_INVALID_PARTITION_ID = 3224698893;
  static const ERROR_HV_INVALID_VP_INDEX = 3224698894;
  static const ERROR_HV_INVALID_PORT_ID = 3224698897;
  static const ERROR_HV_INVALID_CONNECTION_ID = 3224698898;
  static const ERROR_HV_INSUFFICIENT_BUFFERS = 3224698899;
  static const ERROR_HV_NOT_ACKNOWLEDGED = 3224698900;
  static const ERROR_HV_INVALID_VP_STATE = 3224698901;
  static const ERROR_HV_ACKNOWLEDGED = 3224698902;
  static const ERROR_HV_INVALID_SAVE_RESTORE_STATE = 3224698903;
  static const ERROR_HV_INVALID_SYNIC_STATE = 3224698904;
  static const ERROR_HV_OBJECT_IN_USE = 3224698905;
  static const ERROR_HV_INVALID_PROXIMITY_DOMAIN_INFO = 3224698906;
  static const ERROR_HV_NO_DATA = 3224698907;
  static const ERROR_HV_INACTIVE = 3224698908;
  static const ERROR_HV_NO_RESOURCES = 3224698909;
  static const ERROR_HV_FEATURE_UNAVAILABLE = 3224698910;
  static const ERROR_HV_INSUFFICIENT_BUFFER = 3224698931;
  static const ERROR_HV_INSUFFICIENT_DEVICE_DOMAINS = 3224698936;
  static const ERROR_HV_CPUID_FEATURE_VALIDATION = 3224698940;
  static const ERROR_HV_CPUID_XSAVE_FEATURE_VALIDATION =
      WIN32_ERROR(3224698941);
  static const ERROR_HV_PROCESSOR_STARTUP_TIMEOUT = 3224698942;
  static const ERROR_HV_SMX_ENABLED = 3224698943;
  static const ERROR_HV_INVALID_LP_INDEX = 3224698945;
  static const ERROR_HV_INVALID_REGISTER_VALUE = 3224698960;
  static const ERROR_HV_INVALID_VTL_STATE = 3224698961;
  static const ERROR_HV_NX_NOT_DETECTED = 3224698965;
  static const ERROR_HV_INVALID_DEVICE_ID = 3224698967;
  static const ERROR_HV_INVALID_DEVICE_STATE = 3224698968;
  static const ERROR_HV_PENDING_PAGE_REQUESTS = 3473497;
  static const ERROR_HV_PAGE_REQUEST_INVALID = 3224698976;
  static const ERROR_HV_INVALID_CPU_GROUP_ID = 3224698991;
  static const ERROR_HV_INVALID_CPU_GROUP_STATE = 3224698992;
  static const ERROR_HV_OPERATION_FAILED = 3224698993;
  static const ERROR_HV_NOT_ALLOWED_WITH_NESTED_VIRT_ACTIVE =
      WIN32_ERROR(3224698994);
  static const ERROR_HV_INSUFFICIENT_ROOT_MEMORY = 3224698995;
  static const ERROR_HV_EVENT_BUFFER_ALREADY_FREED = 3224698996;
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY =
      WIN32_ERROR(3224698997);
  static const ERROR_HV_DEVICE_NOT_IN_DOMAIN = 3224698998;
  static const ERROR_HV_NESTED_VM_EXIT = 3224698999;
  static const ERROR_HV_MSR_ACCESS_FAILED = 3224699008;
  static const ERROR_HV_INSUFFICIENT_MEMORY_MIRRORING = 3224699009;
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY_MIRRORING =
      WIN32_ERROR(3224699010);
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY =
      WIN32_ERROR(3224699011);
  static const ERROR_HV_INSUFFICIENT_ROOT_MEMORY_MIRRORING =
      WIN32_ERROR(3224699012);
  static const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY_MIRRORING =
      WIN32_ERROR(3224699013);
  static const ERROR_HV_NOT_PRESENT = 3224702976;
  static const ERROR_VID_DUPLICATE_HANDLER = 3224829953;
  static const ERROR_VID_TOO_MANY_HANDLERS = 3224829954;
  static const ERROR_VID_QUEUE_FULL = 3224829955;
  static const ERROR_VID_HANDLER_NOT_PRESENT = 3224829956;
  static const ERROR_VID_INVALID_OBJECT_NAME = 3224829957;
  static const ERROR_VID_PARTITION_NAME_TOO_LONG = 3224829958;
  static const ERROR_VID_MESSAGE_QUEUE_NAME_TOO_LONG = 3224829959;
  static const ERROR_VID_PARTITION_ALREADY_EXISTS = 3224829960;
  static const ERROR_VID_PARTITION_DOES_NOT_EXIST = 3224829961;
  static const ERROR_VID_PARTITION_NAME_NOT_FOUND = 3224829962;
  static const ERROR_VID_MESSAGE_QUEUE_ALREADY_EXISTS = 3224829963;
  static const ERROR_VID_EXCEEDED_MBP_ENTRY_MAP_LIMIT = 3224829964;
  static const ERROR_VID_MB_STILL_REFERENCED = 3224829965;
  static const ERROR_VID_CHILD_GPA_PAGE_SET_CORRUPTED = 3224829966;
  static const ERROR_VID_INVALID_NUMA_SETTINGS = 3224829967;
  static const ERROR_VID_INVALID_NUMA_NODE_INDEX = 3224829968;
  static const ERROR_VID_NOTIFICATION_QUEUE_ALREADY_ASSOCIATED =
      WIN32_ERROR(3224829969);
  static const ERROR_VID_INVALID_MEMORY_BLOCK_HANDLE = 3224829970;
  static const ERROR_VID_PAGE_RANGE_OVERFLOW = 3224829971;
  static const ERROR_VID_INVALID_MESSAGE_QUEUE_HANDLE = 3224829972;
  static const ERROR_VID_INVALID_GPA_RANGE_HANDLE = 3224829973;
  static const ERROR_VID_NO_MEMORY_BLOCK_NOTIFICATION_QUEUE =
      WIN32_ERROR(3224829974);
  static const ERROR_VID_MEMORY_BLOCK_LOCK_COUNT_EXCEEDED =
      WIN32_ERROR(3224829975);
  static const ERROR_VID_INVALID_PPM_HANDLE = 3224829976;
  static const ERROR_VID_MBPS_ARE_LOCKED = 3224829977;
  static const ERROR_VID_MESSAGE_QUEUE_CLOSED = 3224829978;
  static const ERROR_VID_VIRTUAL_PROCESSOR_LIMIT_EXCEEDED =
      WIN32_ERROR(3224829979);
  static const ERROR_VID_STOP_PENDING = 3224829980;
  static const ERROR_VID_INVALID_PROCESSOR_STATE = 3224829981;
  static const ERROR_VID_EXCEEDED_KM_CONTEXT_COUNT_LIMIT =
      WIN32_ERROR(3224829982);
  static const ERROR_VID_KM_INTERFACE_ALREADY_INITIALIZED =
      WIN32_ERROR(3224829983);
  static const ERROR_VID_MB_PROPERTY_ALREADY_SET_RESET =
      WIN32_ERROR(3224829984);
  static const ERROR_VID_MMIO_RANGE_DESTROYED = 3224829985;
  static const ERROR_VID_INVALID_CHILD_GPA_PAGE_SET = 3224829986;
  static const ERROR_VID_RESERVE_PAGE_SET_IS_BEING_USED =
      WIN32_ERROR(3224829987);
  static const ERROR_VID_RESERVE_PAGE_SET_TOO_SMALL = 3224829988;
  static const ERROR_VID_MBP_ALREADY_LOCKED_USING_RESERVED_PAGE =
      WIN32_ERROR(3224829989);
  static const ERROR_VID_MBP_COUNT_EXCEEDED_LIMIT = 3224829990;
  static const ERROR_VID_SAVED_STATE_CORRUPT = 3224829991;
  static const ERROR_VID_SAVED_STATE_UNRECOGNIZED_ITEM =
      WIN32_ERROR(3224829992);
  static const ERROR_VID_SAVED_STATE_INCOMPATIBLE = 3224829993;
  static const ERROR_VID_VTL_ACCESS_DENIED = 3224829994;
  static const ERROR_VID_INSUFFICIENT_RESOURCES_RESERVE =
      WIN32_ERROR(3224829995);
  static const ERROR_VID_INSUFFICIENT_RESOURCES_PHYSICAL_BUFFER =
      WIN32_ERROR(3224829996);
  static const ERROR_VID_INSUFFICIENT_RESOURCES_HV_DEPOSIT =
      WIN32_ERROR(3224829997);
  static const ERROR_VID_MEMORY_TYPE_NOT_SUPPORTED = 3224829998;
  static const ERROR_VID_INSUFFICIENT_RESOURCES_WITHDRAW =
      WIN32_ERROR(3224829999);
  static const ERROR_VID_PROCESS_ALREADY_SET = 3224830000;
  static const ERROR_VMCOMPUTE_TERMINATED_DURING_START =
      WIN32_ERROR(3224830208);
  static const ERROR_VMCOMPUTE_IMAGE_MISMATCH = 3224830209;
  static const ERROR_VMCOMPUTE_HYPERV_NOT_INSTALLED = 3224830210;
  static const ERROR_VMCOMPUTE_OPERATION_PENDING = 3224830211;
  static const ERROR_VMCOMPUTE_TOO_MANY_NOTIFICATIONS = 3224830212;
  static const ERROR_VMCOMPUTE_INVALID_STATE = 3224830213;
  static const ERROR_VMCOMPUTE_UNEXPECTED_EXIT = 3224830214;
  static const ERROR_VMCOMPUTE_TERMINATED = 3224830215;
  static const ERROR_VMCOMPUTE_CONNECT_FAILED = 3224830216;
  static const ERROR_VMCOMPUTE_TIMEOUT = 3224830217;
  static const ERROR_VMCOMPUTE_CONNECTION_CLOSED = 3224830218;
  static const ERROR_VMCOMPUTE_UNKNOWN_MESSAGE = 3224830219;
  static const ERROR_VMCOMPUTE_UNSUPPORTED_PROTOCOL_VERSION =
      WIN32_ERROR(3224830220);
  static const ERROR_VMCOMPUTE_INVALID_JSON = 3224830221;
  static const ERROR_VMCOMPUTE_SYSTEM_NOT_FOUND = 3224830222;
  static const ERROR_VMCOMPUTE_SYSTEM_ALREADY_EXISTS = 3224830223;
  static const ERROR_VMCOMPUTE_SYSTEM_ALREADY_STOPPED = 3224830224;
  static const ERROR_VMCOMPUTE_PROTOCOL_ERROR = 3224830225;
  static const ERROR_VMCOMPUTE_INVALID_LAYER = 3224830226;
  static const ERROR_VMCOMPUTE_WINDOWS_INSIDER_REQUIRED =
      WIN32_ERROR(3224830227);
  static const ERROR_VNET_VIRTUAL_SWITCH_NAME_NOT_FOUND =
      WIN32_ERROR(3224830464);
  static const ERROR_VID_REMOTE_NODE_PARENT_GPA_PAGES_USED =
      WIN32_ERROR(2151088129);
  static const ERROR_VSMB_SAVED_STATE_FILE_NOT_FOUND = 3224830976;
  static const ERROR_VSMB_SAVED_STATE_CORRUPT = 3224830977;
  static const ERROR_VOLMGR_INCOMPLETE_REGENERATION = 2151153665;
  static const ERROR_VOLMGR_INCOMPLETE_DISK_MIGRATION = 2151153666;
  static const ERROR_VOLMGR_DATABASE_FULL = 3224895489;
  static const ERROR_VOLMGR_DISK_CONFIGURATION_CORRUPTED =
      WIN32_ERROR(3224895490);
  static const ERROR_VOLMGR_DISK_CONFIGURATION_NOT_IN_SYNC =
      WIN32_ERROR(3224895491);
  static const ERROR_VOLMGR_PACK_CONFIG_UPDATE_FAILED = 3224895492;
  static const ERROR_VOLMGR_DISK_CONTAINS_NON_SIMPLE_VOLUME =
      WIN32_ERROR(3224895493);
  static const ERROR_VOLMGR_DISK_DUPLICATE = 3224895494;
  static const ERROR_VOLMGR_DISK_DYNAMIC = 3224895495;
  static const ERROR_VOLMGR_DISK_ID_INVALID = 3224895496;
  static const ERROR_VOLMGR_DISK_INVALID = 3224895497;
  static const ERROR_VOLMGR_DISK_LAST_VOTER = 3224895498;
  static const ERROR_VOLMGR_DISK_LAYOUT_INVALID = 3224895499;
  static const ERROR_VOLMGR_DISK_LAYOUT_NON_BASIC_BETWEEN_BASIC_PARTITIONS =
      WIN32_ERROR(3224895500);
  static const ERROR_VOLMGR_DISK_LAYOUT_NOT_CYLINDER_ALIGNED =
      WIN32_ERROR(3224895501);
  static const ERROR_VOLMGR_DISK_LAYOUT_PARTITIONS_TOO_SMALL =
      WIN32_ERROR(3224895502);
  static const ERROR_VOLMGR_DISK_LAYOUT_PRIMARY_BETWEEN_LOGICAL_PARTITIONS =
      WIN32_ERROR(3224895503);
  static const ERROR_VOLMGR_DISK_LAYOUT_TOO_MANY_PARTITIONS =
      WIN32_ERROR(3224895504);
  static const ERROR_VOLMGR_DISK_MISSING = 3224895505;
  static const ERROR_VOLMGR_DISK_NOT_EMPTY = 3224895506;
  static const ERROR_VOLMGR_DISK_NOT_ENOUGH_SPACE = 3224895507;
  static const ERROR_VOLMGR_DISK_REVECTORING_FAILED = 3224895508;
  static const ERROR_VOLMGR_DISK_SECTOR_SIZE_INVALID = 3224895509;
  static const ERROR_VOLMGR_DISK_SET_NOT_CONTAINED = 3224895510;
  static const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_MEMBERS =
      WIN32_ERROR(3224895511);
  static const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_PLEXES =
      WIN32_ERROR(3224895512);
  static const ERROR_VOLMGR_DYNAMIC_DISK_NOT_SUPPORTED =
      WIN32_ERROR(3224895513);
  static const ERROR_VOLMGR_EXTENT_ALREADY_USED = 3224895514;
  static const ERROR_VOLMGR_EXTENT_NOT_CONTIGUOUS = 3224895515;
  static const ERROR_VOLMGR_EXTENT_NOT_IN_PUBLIC_REGION =
      WIN32_ERROR(3224895516);
  static const ERROR_VOLMGR_EXTENT_NOT_SECTOR_ALIGNED = 3224895517;
  static const ERROR_VOLMGR_EXTENT_OVERLAPS_EBR_PARTITION =
      WIN32_ERROR(3224895518);
  static const ERROR_VOLMGR_EXTENT_VOLUME_LENGTHS_DO_NOT_MATCH =
      WIN32_ERROR(3224895519);
  static const ERROR_VOLMGR_FAULT_TOLERANT_NOT_SUPPORTED =
      WIN32_ERROR(3224895520);
  static const ERROR_VOLMGR_INTERLEAVE_LENGTH_INVALID = 3224895521;
  static const ERROR_VOLMGR_MAXIMUM_REGISTERED_USERS = 3224895522;
  static const ERROR_VOLMGR_MEMBER_IN_SYNC = 3224895523;
  static const ERROR_VOLMGR_MEMBER_INDEX_DUPLICATE = 3224895524;
  static const ERROR_VOLMGR_MEMBER_INDEX_INVALID = 3224895525;
  static const ERROR_VOLMGR_MEMBER_MISSING = 3224895526;
  static const ERROR_VOLMGR_MEMBER_NOT_DETACHED = 3224895527;
  static const ERROR_VOLMGR_MEMBER_REGENERATING = 3224895528;
  static const ERROR_VOLMGR_ALL_DISKS_FAILED = 3224895529;
  static const ERROR_VOLMGR_NO_REGISTERED_USERS = 3224895530;
  static const ERROR_VOLMGR_NO_SUCH_USER = 3224895531;
  static const ERROR_VOLMGR_NOTIFICATION_RESET = 3224895532;
  static const ERROR_VOLMGR_NUMBER_OF_MEMBERS_INVALID = 3224895533;
  static const ERROR_VOLMGR_NUMBER_OF_PLEXES_INVALID = 3224895534;
  static const ERROR_VOLMGR_PACK_DUPLICATE = 3224895535;
  static const ERROR_VOLMGR_PACK_ID_INVALID = 3224895536;
  static const ERROR_VOLMGR_PACK_INVALID = 3224895537;
  static const ERROR_VOLMGR_PACK_NAME_INVALID = 3224895538;
  static const ERROR_VOLMGR_PACK_OFFLINE = 3224895539;
  static const ERROR_VOLMGR_PACK_HAS_QUORUM = 3224895540;
  static const ERROR_VOLMGR_PACK_WITHOUT_QUORUM = 3224895541;
  static const ERROR_VOLMGR_PARTITION_STYLE_INVALID = 3224895542;
  static const ERROR_VOLMGR_PARTITION_UPDATE_FAILED = 3224895543;
  static const ERROR_VOLMGR_PLEX_IN_SYNC = 3224895544;
  static const ERROR_VOLMGR_PLEX_INDEX_DUPLICATE = 3224895545;
  static const ERROR_VOLMGR_PLEX_INDEX_INVALID = 3224895546;
  static const ERROR_VOLMGR_PLEX_LAST_ACTIVE = 3224895547;
  static const ERROR_VOLMGR_PLEX_MISSING = 3224895548;
  static const ERROR_VOLMGR_PLEX_REGENERATING = 3224895549;
  static const ERROR_VOLMGR_PLEX_TYPE_INVALID = 3224895550;
  static const ERROR_VOLMGR_PLEX_NOT_RAID5 = 3224895551;
  static const ERROR_VOLMGR_PLEX_NOT_SIMPLE = 3224895552;
  static const ERROR_VOLMGR_STRUCTURE_SIZE_INVALID = 3224895553;
  static const ERROR_VOLMGR_TOO_MANY_NOTIFICATION_REQUESTS =
      WIN32_ERROR(3224895554);
  static const ERROR_VOLMGR_TRANSACTION_IN_PROGRESS = 3224895555;
  static const ERROR_VOLMGR_UNEXPECTED_DISK_LAYOUT_CHANGE =
      WIN32_ERROR(3224895556);
  static const ERROR_VOLMGR_VOLUME_CONTAINS_MISSING_DISK =
      WIN32_ERROR(3224895557);
  static const ERROR_VOLMGR_VOLUME_ID_INVALID = 3224895558;
  static const ERROR_VOLMGR_VOLUME_LENGTH_INVALID = 3224895559;
  static const ERROR_VOLMGR_VOLUME_LENGTH_NOT_SECTOR_SIZE_MULTIPLE =
      WIN32_ERROR(3224895560);
  static const ERROR_VOLMGR_VOLUME_NOT_MIRRORED = 3224895561;
  static const ERROR_VOLMGR_VOLUME_NOT_RETAINED = 3224895562;
  static const ERROR_VOLMGR_VOLUME_OFFLINE = 3224895563;
  static const ERROR_VOLMGR_VOLUME_RETAINED = 3224895564;
  static const ERROR_VOLMGR_NUMBER_OF_EXTENTS_INVALID = 3224895565;
  static const ERROR_VOLMGR_DIFFERENT_SECTOR_SIZE = 3224895566;
  static const ERROR_VOLMGR_BAD_BOOT_DISK = 3224895567;
  static const ERROR_VOLMGR_PACK_CONFIG_OFFLINE = 3224895568;
  static const ERROR_VOLMGR_PACK_CONFIG_ONLINE = 3224895569;
  static const ERROR_VOLMGR_NOT_PRIMARY_PACK = 3224895570;
  static const ERROR_VOLMGR_PACK_LOG_UPDATE_FAILED = 3224895571;
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_PLEX_INVALID =
      WIN32_ERROR(3224895572);
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_MEMBER_INVALID =
      WIN32_ERROR(3224895573);
  static const ERROR_VOLMGR_VOLUME_MIRRORED = 3224895574;
  static const ERROR_VOLMGR_PLEX_NOT_SIMPLE_SPANNED = 3224895575;
  static const ERROR_VOLMGR_NO_VALID_LOG_COPIES = 3224895576;
  static const ERROR_VOLMGR_PRIMARY_PACK_PRESENT = 3224895577;
  static const ERROR_VOLMGR_NUMBER_OF_DISKS_INVALID = 3224895578;
  static const ERROR_VOLMGR_MIRROR_NOT_SUPPORTED = 3224895579;
  static const ERROR_VOLMGR_RAID5_NOT_SUPPORTED = 3224895580;
  static const ERROR_BCD_NOT_ALL_ENTRIES_IMPORTED = 2151219201;
  static const ERROR_BCD_TOO_MANY_ELEMENTS = 3224961026;
  static const ERROR_BCD_NOT_ALL_ENTRIES_SYNCHRONIZED = 2151219203;
  static const ERROR_VHD_DRIVE_FOOTER_MISSING = 3225026561;
  static const ERROR_VHD_DRIVE_FOOTER_CHECKSUM_MISMATCH =
      WIN32_ERROR(3225026562);
  static const ERROR_VHD_DRIVE_FOOTER_CORRUPT = 3225026563;
  static const ERROR_VHD_FORMAT_UNKNOWN = 3225026564;
  static const ERROR_VHD_FORMAT_UNSUPPORTED_VERSION = 3225026565;
  static const ERROR_VHD_SPARSE_HEADER_CHECKSUM_MISMATCH =
      WIN32_ERROR(3225026566);
  static const ERROR_VHD_SPARSE_HEADER_UNSUPPORTED_VERSION =
      WIN32_ERROR(3225026567);
  static const ERROR_VHD_SPARSE_HEADER_CORRUPT = 3225026568;
  static const ERROR_VHD_BLOCK_ALLOCATION_FAILURE = 3225026569;
  static const ERROR_VHD_BLOCK_ALLOCATION_TABLE_CORRUPT =
      WIN32_ERROR(3225026570);
  static const ERROR_VHD_INVALID_BLOCK_SIZE = 3225026571;
  static const ERROR_VHD_BITMAP_MISMATCH = 3225026572;
  static const ERROR_VHD_PARENT_VHD_NOT_FOUND = 3225026573;
  static const ERROR_VHD_CHILD_PARENT_ID_MISMATCH = 3225026574;
  static const ERROR_VHD_CHILD_PARENT_TIMESTAMP_MISMATCH =
      WIN32_ERROR(3225026575);
  static const ERROR_VHD_METADATA_READ_FAILURE = 3225026576;
  static const ERROR_VHD_METADATA_WRITE_FAILURE = 3225026577;
  static const ERROR_VHD_INVALID_SIZE = 3225026578;
  static const ERROR_VHD_INVALID_FILE_SIZE = 3225026579;
  static const ERROR_VIRTDISK_PROVIDER_NOT_FOUND = 3225026580;
  static const ERROR_VIRTDISK_NOT_VIRTUAL_DISK = 3225026581;
  static const ERROR_VHD_PARENT_VHD_ACCESS_DENIED = 3225026582;
  static const ERROR_VHD_CHILD_PARENT_SIZE_MISMATCH = 3225026583;
  static const ERROR_VHD_DIFFERENCING_CHAIN_CYCLE_DETECTED =
      WIN32_ERROR(3225026584);
  static const ERROR_VHD_DIFFERENCING_CHAIN_ERROR_IN_PARENT =
      WIN32_ERROR(3225026585);
  static const ERROR_VIRTUAL_DISK_LIMITATION = 3225026586;
  static const ERROR_VHD_INVALID_TYPE = 3225026587;
  static const ERROR_VHD_INVALID_STATE = 3225026588;
  static const ERROR_VIRTDISK_UNSUPPORTED_DISK_SECTOR_SIZE =
      WIN32_ERROR(3225026589);
  static const ERROR_VIRTDISK_DISK_ALREADY_OWNED = 3225026590;
  static const ERROR_VIRTDISK_DISK_ONLINE_AND_WRITABLE =
      WIN32_ERROR(3225026591);
  static const ERROR_CTLOG_TRACKING_NOT_INITIALIZED = 3225026592;
  static const ERROR_CTLOG_LOGFILE_SIZE_EXCEEDED_MAXSIZE =
      WIN32_ERROR(3225026593);
  static const ERROR_CTLOG_VHD_CHANGED_OFFLINE = 3225026594;
  static const ERROR_CTLOG_INVALID_TRACKING_STATE = 3225026595;
  static const ERROR_CTLOG_INCONSISTENT_TRACKING_FILE = 3225026596;
  static const ERROR_VHD_RESIZE_WOULD_TRUNCATE_DATA = 3225026597;
  static const ERROR_VHD_COULD_NOT_COMPUTE_MINIMUM_VIRTUAL_SIZE =
      WIN32_ERROR(3225026598);
  static const ERROR_VHD_ALREADY_AT_OR_BELOW_MINIMUM_VIRTUAL_SIZE =
      WIN32_ERROR(3225026599);
  static const ERROR_VHD_METADATA_FULL = 3225026600;
  static const ERROR_VHD_INVALID_CHANGE_TRACKING_ID = 3225026601;
  static const ERROR_VHD_CHANGE_TRACKING_DISABLED = 3225026602;
  static const ERROR_VHD_MISSING_CHANGE_TRACKING_INFORMATION =
      WIN32_ERROR(3225026608);
  static const ERROR_VHD_UNEXPECTED_ID = 3225026612;
  static const ERROR_QUERY_STORAGE_ERROR = 2151284737;
}

/// {@category enum}
extension type const WINDOWPLACEMENT_FLAGS(int _) implements int {
  static const WPF_ASYNCWINDOWPLACEMENT = 4;
  static const WPF_RESTORETOMAXIMIZED = 2;
  static const WPF_SETMINPOSITION = 1;
}

/// {@category enum}
extension type const WINDOWS_HOOK_ID(int _) implements int {
  static const WH_CALLWNDPROC = 4;
  static const WH_CALLWNDPROCRET = 12;
  static const WH_CBT = 5;
  static const WH_DEBUG = 9;
  static const WH_FOREGROUNDIDLE = 11;
  static const WH_GETMESSAGE = 3;
  static const WH_JOURNALPLAYBACK = 1;
  static const WH_JOURNALRECORD = 0;
  static const WH_KEYBOARD = 2;
  static const WH_KEYBOARD_LL = 13;
  static const WH_MOUSE = 7;
  static const WH_MOUSE_LL = 14;
  static const WH_MSGFILTER = WINDOWS_HOOK_ID(-1);
  static const WH_SHELL = 10;
  static const WH_SYSMSGFILTER = 6;
}

/// {@category enum}
extension type const WINDOW_DISPLAY_AFFINITY(int _) implements int {
  static const WDA_NONE = 0;
  static const WDA_MONITOR = 1;
  static const WDA_EXCLUDEFROMCAPTURE = 17;
}

/// {@category enum}
extension type const WINDOW_EX_STYLE(int _) implements int {
  static const WS_EX_DLGMODALFRAME = 1;
  static const WS_EX_NOPARENTNOTIFY = 4;
  static const WS_EX_TOPMOST = 8;
  static const WS_EX_ACCEPTFILES = 16;
  static const WS_EX_TRANSPARENT = 32;
  static const WS_EX_MDICHILD = 64;
  static const WS_EX_TOOLWINDOW = 128;
  static const WS_EX_WINDOWEDGE = 256;
  static const WS_EX_CLIENTEDGE = 512;
  static const WS_EX_CONTEXTHELP = 1024;
  static const WS_EX_RIGHT = 4096;
  static const WS_EX_LEFT = 0;
  static const WS_EX_RTLREADING = 8192;
  static const WS_EX_LTRREADING = 0;
  static const WS_EX_LEFTSCROLLBAR = 16384;
  static const WS_EX_RIGHTSCROLLBAR = 0;
  static const WS_EX_CONTROLPARENT = 65536;
  static const WS_EX_STATICEDGE = 131072;
  static const WS_EX_APPWINDOW = 262144;
  static const WS_EX_OVERLAPPEDWINDOW = 768;
  static const WS_EX_PALETTEWINDOW = 392;
  static const WS_EX_LAYERED = 524288;
  static const WS_EX_NOINHERITLAYOUT = 1048576;
  static const WS_EX_NOREDIRECTIONBITMAP = 2097152;
  static const WS_EX_LAYOUTRTL = 4194304;
  static const WS_EX_COMPOSITED = 33554432;
  static const WS_EX_NOACTIVATE = 134217728;
}

/// {@category enum}
extension type const WINDOW_LONG_PTR_INDEX(int _) implements int {
  static const GWL_EXSTYLE = WINDOW_LONG_PTR_INDEX(-20);
  static const GWLP_HINSTANCE = WINDOW_LONG_PTR_INDEX(-6);
  static const GWLP_HWNDPARENT = WINDOW_LONG_PTR_INDEX(-8);
  static const GWLP_ID = WINDOW_LONG_PTR_INDEX(-12);
  static const GWL_STYLE = WINDOW_LONG_PTR_INDEX(-16);
  static const GWLP_USERDATA = WINDOW_LONG_PTR_INDEX(-21);
  static const GWLP_WNDPROC = WINDOW_LONG_PTR_INDEX(-4);
  static const GWL_HINSTANCE = WINDOW_LONG_PTR_INDEX(-6);
  static const GWL_ID = WINDOW_LONG_PTR_INDEX(-12);
  static const GWL_USERDATA = WINDOW_LONG_PTR_INDEX(-21);
  static const GWL_WNDPROC = WINDOW_LONG_PTR_INDEX(-4);
  static const GWL_HWNDPARENT = WINDOW_LONG_PTR_INDEX(-8);
}

/// {@category enum}
extension type const WINDOW_MESSAGE_FILTER_ACTION(int _) implements int {
  static const MSGFLT_ALLOW = 1;
  static const MSGFLT_DISALLOW = 2;
  static const MSGFLT_RESET = 0;
}

/// {@category enum}
extension type const WINDOW_STYLE(int _) implements int {
  static const WS_OVERLAPPED = 0;
  static const WS_POPUP = 2147483648;
  static const WS_CHILD = 1073741824;
  static const WS_MINIMIZE = 536870912;
  static const WS_VISIBLE = 268435456;
  static const WS_DISABLED = 134217728;
  static const WS_CLIPSIBLINGS = 67108864;
  static const WS_CLIPCHILDREN = 33554432;
  static const WS_MAXIMIZE = 16777216;
  static const WS_CAPTION = 12582912;
  static const WS_BORDER = 8388608;
  static const WS_DLGFRAME = 4194304;
  static const WS_VSCROLL = 2097152;
  static const WS_HSCROLL = 1048576;
  static const WS_SYSMENU = 524288;
  static const WS_THICKFRAME = 262144;
  static const WS_GROUP = 131072;
  static const WS_TABSTOP = 65536;
  static const WS_MINIMIZEBOX = 131072;
  static const WS_MAXIMIZEBOX = 65536;
  static const WS_TILED = 0;
  static const WS_ICONIC = 536870912;
  static const WS_SIZEBOX = 262144;
  static const WS_TILEDWINDOW = 13565952;
  static const WS_OVERLAPPEDWINDOW = 13565952;
  static const WS_POPUPWINDOW = 2156396544;
  static const WS_CHILDWINDOW = 1073741824;
  static const WS_ACTIVECAPTION = 1;
}

/// {@category enum}
extension type const WINSOCK_SHUTDOWN_HOW(int _) implements int {
  static const SD_RECEIVE = 0;
  static const SD_SEND = 1;
  static const SD_BOTH = 2;
}

/// {@category enum}
extension type const WINSOCK_SOCKET_TYPE(int _) implements int {
  static const SOCK_STREAM = 1;
  static const SOCK_DGRAM = 2;
  static const SOCK_RAW = 3;
  static const SOCK_RDM = 4;
  static const SOCK_SEQPACKET = 5;
}

/// Specifies an automatic configuration parameter.
///
/// To learn more about this enum, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_autoconf_opcode~r1>.
///
/// {@category enum}
extension type const WLAN_AUTOCONF_OPCODE(int _) implements int {
  static const wlan_autoconf_opcode_start = 0;

  /// The opcode used to set or query the parameter specifying whether user and
  /// group policy denied networks will be included in the available networks
  /// list.
  static const wlan_autoconf_opcode_show_denied_networks =
      WLAN_AUTOCONF_OPCODE(1);

  /// The opcode used to query the power settings.
  static const wlan_autoconf_opcode_power_setting = 2;

  /// The opcode used to query whether profiles not created by group policy can
  /// be used to connect to an allowed network with a matching group policy
  /// profile.
  static const wlan_autoconf_opcode_only_use_gp_profiles_for_allowed_networks =
      WLAN_AUTOCONF_OPCODE(3);

  /// The opcode used to set or query whether the current wireless interface has
  /// shared user credentials allowed.
  static const wlan_autoconf_opcode_allow_explicit_creds =
      WLAN_AUTOCONF_OPCODE(4);

  /// The opcode used to set or query the blocked period setting for the current
  /// wireless interface.
  static const wlan_autoconf_opcode_block_period = 5;

  /// The opcode used to set or query whether extensibility on a virtual station
  /// is allowed.
  static const wlan_autoconf_opcode_allow_virtual_station_extensibility =
      WLAN_AUTOCONF_OPCODE(6);

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
  static const wlan_connection_mode_profile = 0;

  /// A temporary profile will be used to make the connection.
  static const wlan_connection_mode_temporary_profile = 1;

  /// Secure discovery will be used to make the connection.
  static const wlan_connection_mode_discovery_secure = 2;

  /// Unsecure discovery will be used to make the connection.
  static const wlan_connection_mode_discovery_unsecure =
      WLAN_CONNECTION_MODE(3);

  /// The connection is initiated by the wireless service automatically using a
  /// persistent profile.
  static const wlan_connection_mode_auto = 4;

  static const wlan_connection_mode_invalid = 5;
}

/// {@category enum}
extension type const WLAN_CONNECTION_NOTIFICATION_FLAGS(int _) implements int {
  static const WLAN_CONNECTION_NOTIFICATION_ADHOC_NETWORK_FORMED =
      WLAN_CONNECTION_NOTIFICATION_FLAGS(1);
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
  static const wlan_filter_list_type_gp_permit = 0;

  /// Group policy deny list.
  static const wlan_filter_list_type_gp_deny = 1;

  /// User permit list.
  static const wlan_filter_list_type_user_permit = 2;

  /// User deny list.
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
  static const wlan_hosted_network_opcode_connection_settings =
      WLAN_HOSTED_NETWORK_OPCODE(0);

  /// The opcode used to query the wireless Hosted Network security settings.
  static const wlan_hosted_network_opcode_security_settings =
      WLAN_HOSTED_NETWORK_OPCODE(1);

  /// The opcode used to query the wireless Hosted Network station profile.
  static const wlan_hosted_network_opcode_station_profile =
      WLAN_HOSTED_NETWORK_OPCODE(2);

  /// The opcode used to query or set the wireless Hosted Network enabled flag.
  static const wlan_hosted_network_opcode_enable =
      WLAN_HOSTED_NETWORK_OPCODE(3);
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
  static const wlan_hosted_network_peer_state_invalid =
      WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(0);

  /// The peer is authenticated.
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
  static const wlan_hosted_network_reason_success =
      WLAN_HOSTED_NETWORK_REASON(0);

  /// Unknown error.
  static const wlan_hosted_network_reason_unspecified =
      WLAN_HOSTED_NETWORK_REASON(1);

  /// Bad parameters.
  static const wlan_hosted_network_reason_bad_parameters =
      WLAN_HOSTED_NETWORK_REASON(2);

  /// Service is shutting down.
  static const wlan_hosted_network_reason_service_shutting_down =
      WLAN_HOSTED_NETWORK_REASON(3);

  /// Service is out of resources.
  static const wlan_hosted_network_reason_insufficient_resources =
      WLAN_HOSTED_NETWORK_REASON(4);

  /// This operation requires elevation.
  static const wlan_hosted_network_reason_elevation_required =
      WLAN_HOSTED_NETWORK_REASON(5);

  /// An attempt was made to write read-only data.
  static const wlan_hosted_network_reason_read_only =
      WLAN_HOSTED_NETWORK_REASON(6);

  /// Data persistence failed.
  static const wlan_hosted_network_reason_persistence_failed =
      WLAN_HOSTED_NETWORK_REASON(7);

  /// A cryptographic error occurred.
  static const wlan_hosted_network_reason_crypt_error =
      WLAN_HOSTED_NETWORK_REASON(8);

  /// User impersonation failed.
  static const wlan_hosted_network_reason_impersonation =
      WLAN_HOSTED_NETWORK_REASON(9);

  /// An incorrect function call sequence was made.
  static const wlan_hosted_network_reason_stop_before_start =
      WLAN_HOSTED_NETWORK_REASON(10);

  /// A wireless interface has become available.
  static const wlan_hosted_network_reason_interface_available =
      WLAN_HOSTED_NETWORK_REASON(11);

  /// A wireless interface has become unavailable.
  static const wlan_hosted_network_reason_interface_unavailable =
      WLAN_HOSTED_NETWORK_REASON(12);

  /// The wireless miniport driver stopped the Hosted Network.
  static const wlan_hosted_network_reason_miniport_stopped =
      WLAN_HOSTED_NETWORK_REASON(13);

  /// The wireless miniport driver status changed.
  static const wlan_hosted_network_reason_miniport_started =
      WLAN_HOSTED_NETWORK_REASON(14);

  /// An incompatible connection started.
  static const wlan_hosted_network_reason_incompatible_connection_started =
      WLAN_HOSTED_NETWORK_REASON(15);

  /// An incompatible connection stopped.
  static const wlan_hosted_network_reason_incompatible_connection_stopped =
      WLAN_HOSTED_NETWORK_REASON(16);

  /// A state change occurred that was caused by explicit user action.
  static const wlan_hosted_network_reason_user_action =
      WLAN_HOSTED_NETWORK_REASON(17);

  /// A state change occurred that was caused by client abort.
  static const wlan_hosted_network_reason_client_abort =
      WLAN_HOSTED_NETWORK_REASON(18);

  /// The driver for the wireless Hosted Network failed to start.
  static const wlan_hosted_network_reason_ap_start_failed =
      WLAN_HOSTED_NETWORK_REASON(19);

  /// A peer connected to the wireless Hosted Network.
  static const wlan_hosted_network_reason_peer_arrived =
      WLAN_HOSTED_NETWORK_REASON(20);

  /// A peer disconnected from the wireless Hosted Network.
  static const wlan_hosted_network_reason_peer_departed =
      WLAN_HOSTED_NETWORK_REASON(21);

  /// A peer timed out.
  static const wlan_hosted_network_reason_peer_timeout =
      WLAN_HOSTED_NETWORK_REASON(22);

  /// The operation was denied by group policy.
  static const wlan_hosted_network_reason_gp_denied =
      WLAN_HOSTED_NETWORK_REASON(23);

  /// The Wireless LAN service is not running.
  static const wlan_hosted_network_reason_service_unavailable =
      WLAN_HOSTED_NETWORK_REASON(24);

  /// The wireless adapter used by the wireless Hosted Network changed.
  static const wlan_hosted_network_reason_device_change =
      WLAN_HOSTED_NETWORK_REASON(25);

  /// The properties of the wireless Hosted Network changed.
  static const wlan_hosted_network_reason_properties_change =
      WLAN_HOSTED_NETWORK_REASON(26);

  /// A virtual station is active and blocking operation.
  static const wlan_hosted_network_reason_virtual_station_blocking_use =
      WLAN_HOSTED_NETWORK_REASON(27);

  /// An identical service is available on a virtual station.
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
  static const wlan_hosted_network_unavailable = 0;

  /// The wireless Hosted Network is idle.
  static const wlan_hosted_network_idle = 1;

  /// The wireless Hosted Network is active.
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
  static const wlan_ihv_control_type_service = 0;

  /// Bypasses a WLAN driver.
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
  static const wlan_interface_state_not_ready = 0;

  /// The interface is connected to a network.
  static const wlan_interface_state_connected = 1;

  /// The interface is the first node in an ad hoc network.
  static const wlan_interface_state_ad_hoc_network_formed =
      WLAN_INTERFACE_STATE(2);

  /// The interface is disconnecting from the current network.
  static const wlan_interface_state_disconnecting = 3;

  /// The interface is not connected to any network.
  static const wlan_interface_state_disconnected = 4;

  /// The interface is attempting to associate with a network.
  static const wlan_interface_state_associating = 5;

  /// Auto configuration is discovering the settings for the network.
  static const wlan_interface_state_discovering = 6;

  /// The interface is in the process of authenticating.
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
  static const wlan_interface_type_emulated_802_11 = 0;

  /// Specifies a native 802.11 interface.
  static const wlan_interface_type_native_802_11 = 1;

  /// The interface specified is invalid.
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
  static const wlan_intf_opcode_autoconf_start = 0;

  /// The opcode used to set or query whether auto config is enabled.
  static const wlan_intf_opcode_autoconf_enabled = 1;

  /// The opcode used to set or query whether background scan is enabled.
  static const wlan_intf_opcode_background_scan_enabled = 2;

  /// The opcode used to set or query the media streaming mode of the driver.
  static const wlan_intf_opcode_media_streaming_mode = 3;

  /// The opcode used to set or query the radio state.
  static const wlan_intf_opcode_radio_state = 4;

  /// The opcode used to set or query the BSS type of the interface.
  static const wlan_intf_opcode_bss_type = 5;

  /// The opcode used to query the state of the interface.
  static const wlan_intf_opcode_interface_state = 6;

  /// The opcode used to query information about the current connection of the
  /// interface.
  static const wlan_intf_opcode_current_connection = 7;

  /// The opcode used to query the current channel on which the wireless
  /// interface is operating.
  static const wlan_intf_opcode_channel_number = 8;

  /// The opcode used to query the supported auth/cipher pairs for
  /// infrastructure mode.
  static const wlan_intf_opcode_supported_infrastructure_auth_cipher_pairs =
      WLAN_INTF_OPCODE(9);

  /// The opcode used to query the supported auth/cipher pairs for ad hoc mode.
  static const wlan_intf_opcode_supported_adhoc_auth_cipher_pairs =
      WLAN_INTF_OPCODE(10);

  /// The opcode used to query the list of supported country or region strings.
  static const wlan_intf_opcode_supported_country_or_region_string_list =
      WLAN_INTF_OPCODE(11);

  /// The opcode used to set or query the current operation mode of the wireless
  /// interface.
  static const wlan_intf_opcode_current_operation_mode = 12;

  /// The opcode used to query whether the miniport/NIC combination supports
  /// Federal Information Processing Standards (FIPS) mode.
  static const wlan_intf_opcode_supported_safe_mode = 13;

  /// The opcode used to query whether the miniport/NIC combination is FIPS
  /// certified.
  static const wlan_intf_opcode_certified_safe_mode = 14;

  /// The opcode used to query for Hosted Network support in the device driver
  /// associated with the Wireless interface.
  static const wlan_intf_opcode_hosted_network_capable = 15;

  /// The opcode used to query whether Management Frame Protection (MFP) is
  /// supported in the device driver associated with the Wireless interface.
  static const wlan_intf_opcode_management_frame_protection_capable =
      WLAN_INTF_OPCODE(16);
  static const wlan_intf_opcode_secondary_sta_interfaces = 17;
  static const wlan_intf_opcode_secondary_sta_synchronized_connections =
      WLAN_INTF_OPCODE(18);

  static const wlan_intf_opcode_autoconf_end = 268435455;

  static const wlan_intf_opcode_msm_start = 268435712;

  /// The opcode used to query driver statistics.
  static const wlan_intf_opcode_statistics = 268435713;

  /// Opcode used to query the received signal strength.
  static const wlan_intf_opcode_rssi = 268435714;

  static const wlan_intf_opcode_msm_end = 536870911;

  static const wlan_intf_opcode_security_start = 536936448;

  static const wlan_intf_opcode_security_end = 805306367;

  static const wlan_intf_opcode_ihv_start = 805306368;

  static const wlan_intf_opcode_ihv_end = 1073741823;
}

/// {@category enum}
extension type const WLAN_NOTIFICATION_SOURCES(int _) implements int {
  static const WLAN_NOTIFICATION_SOURCE_NONE = 0;
  static const WLAN_NOTIFICATION_SOURCE_ALL = 65535;
  static const WLAN_NOTIFICATION_SOURCE_ACM = 8;
  static const WLAN_NOTIFICATION_SOURCE_MSM = 16;
  static const WLAN_NOTIFICATION_SOURCE_SECURITY =
      WLAN_NOTIFICATION_SOURCES(32);
  static const WLAN_NOTIFICATION_SOURCE_IHV = 64;
  static const WLAN_NOTIFICATION_SOURCE_HNWK = 128;
  static const WLAN_NOTIFICATION_SOURCE_ONEX = 4;
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
  static const wlan_opcode_value_type_query_only = 0;

  /// The auto config settings were set by group policy.
  static const wlan_opcode_value_type_set_by_group_policy =
      WLAN_OPCODE_VALUE_TYPE(1);

  /// The auto config settings were set by the user.
  static const wlan_opcode_value_type_set_by_user = 2;

  /// The auto config settings are invalid.
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
  static const wlan_secure_permit_list = 0;

  /// The permissions for modifying the deny list for user profiles.
  static const wlan_secure_deny_list = 1;

  /// The permissions for enabling the auto config service.
  static const wlan_secure_ac_enabled = 2;

  /// The permissions for enabling background scans.
  static const wlan_secure_bc_scan_enabled = 3;

  /// The permissions for altering the basic service set type.
  static const wlan_secure_bss_type = 4;

  /// The permissions for modifying whether networks on the deny list appear in
  /// the available networks list.
  static const wlan_secure_show_denied = 5;

  /// The permissions for changing interface properties.
  static const wlan_secure_interface_properties = 6;

  /// The permissions for using the <a
  /// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/nf-wlanapi-wlanihvcontrol">WlanIhvControl</a>
  /// function for independent hardware vendor (IHV) control of WLAN drivers or
  /// services.
  static const wlan_secure_ihv_control = 7;

  /// The permissions for modifying the order of all-user profiles.
  static const wlan_secure_all_user_profiles_order = 8;

  /// The permissions for adding new all-user profiles.
  static const wlan_secure_add_new_all_user_profiles = 9;

  /// The permissions for adding new per-user profiles.
  static const wlan_secure_add_new_per_user_profiles =
      WLAN_SECURABLE_OBJECT(10);

  /// The permissions for setting or querying the media streaming mode.
  static const wlan_secure_media_streaming_mode_enabled =
      WLAN_SECURABLE_OBJECT(11);

  /// The permissions for setting or querying the operation mode of the wireless
  /// interface.
  static const wlan_secure_current_operation_mode = 12;

  /// The permissions for retrieving the plain text key from a wireless profile.
  static const wlan_secure_get_plaintext_key = 13;

  /// The permissions that have elevated access to call the privileged Hosted
  /// Network functions.
  static const wlan_secure_hosted_network_elevated_access =
      WLAN_SECURABLE_OBJECT(14);

  static const wlan_secure_virtual_station_extensibility =
      WLAN_SECURABLE_OBJECT(15);

  /// This value is reserved for internal use by the Wi-Fi Direct service.
  static const wlan_secure_wfd_elevated_access = 16;

  static const WLAN_SECURABLE_OBJECT_COUNT = 17;
}

/// {@category enum}
extension type const WLAN_SET_EAPHOST_FLAGS(int _) implements int {
  static const WLAN_SET_EAPHOST_DATA_ALL_USERS = 1;
}

/// {@category enum}
extension type const WNDCLASS_STYLES(int _) implements int {
  static const CS_VREDRAW = 1;
  static const CS_HREDRAW = 2;
  static const CS_DBLCLKS = 8;
  static const CS_OWNDC = 32;
  static const CS_CLASSDC = 64;
  static const CS_PARENTDC = 128;
  static const CS_NOCLOSE = 512;
  static const CS_SAVEBITS = 2048;
  static const CS_BYTEALIGNCLIENT = 4096;
  static const CS_BYTEALIGNWINDOW = 8192;
  static const CS_GLOBALCLASS = 16384;
  static const CS_IME = 65536;
  static const CS_DROPSHADOW = 131072;
}

/// {@category enum}
extension type const XINPUT_CAPABILITIES_FLAGS(int _) implements int {
  static const XINPUT_CAPS_VOICE_SUPPORTED = 4;
  static const XINPUT_CAPS_FFB_SUPPORTED = 1;
  static const XINPUT_CAPS_WIRELESS = 2;
  static const XINPUT_CAPS_PMD_SUPPORTED = 8;
  static const XINPUT_CAPS_NO_NAVIGATION = 16;
}

/// {@category enum}
extension type const XINPUT_DEVSUBTYPE(int _) implements int {
  static const XINPUT_DEVSUBTYPE_GAMEPAD = 1;
  static const XINPUT_DEVSUBTYPE_UNKNOWN = 0;
  static const XINPUT_DEVSUBTYPE_WHEEL = 2;
  static const XINPUT_DEVSUBTYPE_ARCADE_STICK = 3;
  static const XINPUT_DEVSUBTYPE_FLIGHT_STICK = 4;
  static const XINPUT_DEVSUBTYPE_DANCE_PAD = 5;
  static const XINPUT_DEVSUBTYPE_GUITAR = 6;
  static const XINPUT_DEVSUBTYPE_GUITAR_ALTERNATE = 7;
  static const XINPUT_DEVSUBTYPE_DRUM_KIT = 8;
  static const XINPUT_DEVSUBTYPE_GUITAR_BASS = 11;
  static const XINPUT_DEVSUBTYPE_ARCADE_PAD = 19;
}

/// {@category enum}
extension type const XINPUT_DEVTYPE(int _) implements int {
  static const XINPUT_DEVTYPE_GAMEPAD = 1;
}

/// {@category enum}
extension type const XINPUT_FLAG(int _) implements int {
  static const XINPUT_FLAG_ALL = 0;
  static const XINPUT_FLAG_GAMEPAD = 1;
}

/// {@category enum}
extension type const XINPUT_GAMEPAD_BUTTON_FLAGS(int _) implements int {
  static const XINPUT_GAMEPAD_DPAD_UP = 1;
  static const XINPUT_GAMEPAD_DPAD_DOWN = 2;
  static const XINPUT_GAMEPAD_DPAD_LEFT = 4;
  static const XINPUT_GAMEPAD_DPAD_RIGHT = 8;
  static const XINPUT_GAMEPAD_START = 16;
  static const XINPUT_GAMEPAD_BACK = 32;
  static const XINPUT_GAMEPAD_LEFT_THUMB = 64;
  static const XINPUT_GAMEPAD_RIGHT_THUMB = 128;
  static const XINPUT_GAMEPAD_LEFT_SHOULDER = 256;
  static const XINPUT_GAMEPAD_RIGHT_SHOULDER = 512;
  static const XINPUT_GAMEPAD_A = 4096;
  static const XINPUT_GAMEPAD_B = 8192;
  static const XINPUT_GAMEPAD_X = 16384;
  static const XINPUT_GAMEPAD_Y = 32768;
  static const XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE =
      XINPUT_GAMEPAD_BUTTON_FLAGS(7849);
  static const XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE =
      XINPUT_GAMEPAD_BUTTON_FLAGS(8689);
  static const XINPUT_GAMEPAD_TRIGGER_THRESHOLD =
      XINPUT_GAMEPAD_BUTTON_FLAGS(30);
}

/// {@category enum}
extension type const XINPUT_KEYSTROKE_FLAGS(int _) implements int {
  static const XINPUT_KEYSTROKE_KEYDOWN = 1;
  static const XINPUT_KEYSTROKE_KEYUP = 2;
  static const XINPUT_KEYSTROKE_REPEAT = 4;
}

/// {@category enum}
extension type const XINPUT_VIRTUAL_KEY(int _) implements int {
  static const VK_PAD_A = 22528;
  static const VK_PAD_B = 22529;
  static const VK_PAD_X = 22530;
  static const VK_PAD_Y = 22531;
  static const VK_PAD_RSHOULDER = 22532;
  static const VK_PAD_LSHOULDER = 22533;
  static const VK_PAD_LTRIGGER = 22534;
  static const VK_PAD_RTRIGGER = 22535;
  static const VK_PAD_DPAD_UP = 22544;
  static const VK_PAD_DPAD_DOWN = 22545;
  static const VK_PAD_DPAD_LEFT = 22546;
  static const VK_PAD_DPAD_RIGHT = 22547;
  static const VK_PAD_START = 22548;
  static const VK_PAD_BACK = 22549;
  static const VK_PAD_LTHUMB_PRESS = 22550;
  static const VK_PAD_RTHUMB_PRESS = 22551;
  static const VK_PAD_LTHUMB_UP = 22560;
  static const VK_PAD_LTHUMB_DOWN = 22561;
  static const VK_PAD_LTHUMB_RIGHT = 22562;
  static const VK_PAD_LTHUMB_LEFT = 22563;
  static const VK_PAD_LTHUMB_UPLEFT = 22564;
  static const VK_PAD_LTHUMB_UPRIGHT = 22565;
  static const VK_PAD_LTHUMB_DOWNRIGHT = 22566;
  static const VK_PAD_LTHUMB_DOWNLEFT = 22567;
  static const VK_PAD_RTHUMB_UP = 22576;
  static const VK_PAD_RTHUMB_DOWN = 22577;
  static const VK_PAD_RTHUMB_RIGHT = 22578;
  static const VK_PAD_RTHUMB_LEFT = 22579;
  static const VK_PAD_RTHUMB_UPLEFT = 22580;
  static const VK_PAD_RTHUMB_UPRIGHT = 22581;
  static const VK_PAD_RTHUMB_DOWNRIGHT = 22582;
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
  static const ZoomUnit_NoAmount = 0;

  /// Decrease zoom by a large decrement.
  static const ZoomUnit_LargeDecrement = 1;

  /// Decrease zoom by a small decrement.
  static const ZoomUnit_SmallDecrement = 2;

  /// Increase zoom by a large increment.
  static const ZoomUnit_LargeIncrement = 3;

  /// Increase zoom by a small increment.
  static const ZoomUnit_SmallIncrement = 4;
}
