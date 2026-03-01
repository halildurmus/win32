// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representations of Win32 enums.
//
// ignore_for_file: camel_case_types, constant_identifier_names

import 'rpc_status.dart';
import 'win32_error.dart';

/// {@category enum}
extension type const ACCEL_VIRT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ACCEL_VIRT_FLAGS other) => _ & other._ == other._;

  ACCEL_VIRT_FLAGS operator &(int other) => .new(_ & other);
  ACCEL_VIRT_FLAGS operator |(int other) => .new(_ | other);
}

const FVIRTKEY = ACCEL_VIRT_FLAGS(1);

const FNOINVERT = ACCEL_VIRT_FLAGS(2);

const FSHIFT = ACCEL_VIRT_FLAGS(4);

const FCONTROL = ACCEL_VIRT_FLAGS(8);

const FALT = ACCEL_VIRT_FLAGS(16);

/// {@category enum}
extension type const ACTIVATEOPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ACTIVATEOPTIONS other) => _ & other._ == other._;

  ACTIVATEOPTIONS operator &(int other) => .new(_ & other);
  ACTIVATEOPTIONS operator |(int other) => .new(_ | other);
}

const AO_NONE = ACTIVATEOPTIONS(0);

const AO_DESIGNMODE = ACTIVATEOPTIONS(1);

const AO_NOERRORUI = ACTIVATEOPTIONS(2);

const AO_NOSPLASHSCREEN = ACTIVATEOPTIONS(4);

const AO_PRELAUNCH = ACTIVATEOPTIONS(33554432);

/// {@category enum}
extension type const ACTIVATE_KEYBOARD_LAYOUT_FLAGS(int _) implements int {}

const KLF_REORDER = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(8);

const KLF_RESET = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(1073741824);

const KLF_SETFORPROCESS = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(256);

const KLF_SHIFTLOCK = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(65536);

const KLF_ACTIVATE = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(1);

const KLF_NOTELLSHELL = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(128);

const KLF_REPLACELANG = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(16);

const KLF_SUBSTITUTE_OK = ACTIVATE_KEYBOARD_LAYOUT_FLAGS(2);

/// {@category enum}
extension type const ADDRESS_FAMILY(int _) implements int {}

const AF_INET = ADDRESS_FAMILY(2);

const AF_INET6 = ADDRESS_FAMILY(23);

const AF_UNSPEC = ADDRESS_FAMILY(0);

/// {@category enum}
extension type const ADVANCED_FEATURE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ADVANCED_FEATURE_FLAGS other) => _ & other._ == other._;

  ADVANCED_FEATURE_FLAGS operator &(int other) => .new(_ & other);
  ADVANCED_FEATURE_FLAGS operator |(int other) => .new(_ | other);
}

const FADF_AUTO = ADVANCED_FEATURE_FLAGS(1);

const FADF_STATIC = ADVANCED_FEATURE_FLAGS(2);

const FADF_EMBEDDED = ADVANCED_FEATURE_FLAGS(4);

const FADF_FIXEDSIZE = ADVANCED_FEATURE_FLAGS(16);

const FADF_RECORD = ADVANCED_FEATURE_FLAGS(32);

const FADF_HAVEIID = ADVANCED_FEATURE_FLAGS(64);

const FADF_HAVEVARTYPE = ADVANCED_FEATURE_FLAGS(128);

const FADF_BSTR = ADVANCED_FEATURE_FLAGS(256);

const FADF_UNKNOWN = ADVANCED_FEATURE_FLAGS(512);

const FADF_DISPATCH = ADVANCED_FEATURE_FLAGS(1024);

const FADF_VARIANT = ADVANCED_FEATURE_FLAGS(2048);

const FADF_RESERVED = ADVANCED_FEATURE_FLAGS(61448);

/// {@category enum}
extension type const ANIMATE_WINDOW_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ANIMATE_WINDOW_FLAGS other) => _ & other._ == other._;

  ANIMATE_WINDOW_FLAGS operator &(int other) => .new(_ & other);
  ANIMATE_WINDOW_FLAGS operator |(int other) => .new(_ | other);
}

const AW_ACTIVATE = ANIMATE_WINDOW_FLAGS(131072);

const AW_BLEND = ANIMATE_WINDOW_FLAGS(524288);

const AW_CENTER = ANIMATE_WINDOW_FLAGS(16);

const AW_HIDE = ANIMATE_WINDOW_FLAGS(65536);

const AW_HOR_POSITIVE = ANIMATE_WINDOW_FLAGS(1);

const AW_HOR_NEGATIVE = ANIMATE_WINDOW_FLAGS(2);

const AW_SLIDE = ANIMATE_WINDOW_FLAGS(262144);

const AW_VER_POSITIVE = ANIMATE_WINDOW_FLAGS(4);

const AW_VER_NEGATIVE = ANIMATE_WINDOW_FLAGS(8);

/// Specifies the capabilities or privileges requested by a package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_capabilities>.
///
/// {@category enum}
extension type const APPX_CAPABILITIES(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(APPX_CAPABILITIES other) => _ & other._ == other._;

  APPX_CAPABILITIES operator &(int other) => .new(_ & other);
  APPX_CAPABILITIES operator |(int other) => .new(_ | other);
}

/// Your Internet connection for outgoing connections to the Internet.
const APPX_CAPABILITY_INTERNET_CLIENT = APPX_CAPABILITIES(1);

/// Your Internet connection, including incoming unsolicited connections from
/// the Internet – the app can send information to or from your computer through
/// a firewall.
const APPX_CAPABILITY_INTERNET_CLIENT_SERVER = APPX_CAPABILITIES(2);

/// A home or work network – the app can send information to or from your
/// computer and other computers on the same network.
const APPX_CAPABILITY_PRIVATE_NETWORK_CLIENT_SERVER = APPX_CAPABILITIES(4);

/// Your documents library, including the capability to add, change, or delete
/// files.
const APPX_CAPABILITY_DOCUMENTS_LIBRARY = APPX_CAPABILITIES(8);

/// Your pictures library, including the capability to add, change, or delete
/// files.
const APPX_CAPABILITY_PICTURES_LIBRARY = APPX_CAPABILITIES(16);

/// Your videos library, including the capability to add, change, or delete
/// files.
const APPX_CAPABILITY_VIDEOS_LIBRARY = APPX_CAPABILITIES(32);

/// Your music library and playlists, including the capability to add, change,
/// or delete files.
const APPX_CAPABILITY_MUSIC_LIBRARY = APPX_CAPABILITIES(64);

/// Your Windows credentials, for access to a corporate intranet.
const APPX_CAPABILITY_ENTERPRISE_AUTHENTICATION = APPX_CAPABILITIES(128);

/// Software and hardware certificates or a smart card – used to identify you in
/// the app.
const APPX_CAPABILITY_SHARED_USER_CERTIFICATES = APPX_CAPABILITIES(256);

/// Removable storage, such as an external hard drive or USB flash drive, or MTP
/// portable device, including the capability to add, change, or delete specific
/// files.
const APPX_CAPABILITY_REMOVABLE_STORAGE = APPX_CAPABILITIES(512);

const APPX_CAPABILITY_APPOINTMENTS = APPX_CAPABILITIES(1024);

const APPX_CAPABILITY_CONTACTS = APPX_CAPABILITIES(2048);

/// {@category enum}
extension type const APPX_CAPABILITY_CLASS_TYPE(int _) implements int {}

const APPX_CAPABILITY_CLASS_DEFAULT = APPX_CAPABILITY_CLASS_TYPE(0);

const APPX_CAPABILITY_CLASS_GENERAL = APPX_CAPABILITY_CLASS_TYPE(1);

const APPX_CAPABILITY_CLASS_RESTRICTED = APPX_CAPABILITY_CLASS_TYPE(2);

const APPX_CAPABILITY_CLASS_WINDOWS = APPX_CAPABILITY_CLASS_TYPE(4);

const APPX_CAPABILITY_CLASS_ALL = APPX_CAPABILITY_CLASS_TYPE(7);

const APPX_CAPABILITY_CLASS_CUSTOM = APPX_CAPABILITY_CLASS_TYPE(8);

/// Specifies the degree of compression used to store the file in the package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_compression_option>.
///
/// {@category enum}
extension type const APPX_COMPRESSION_OPTION(int _) implements int {}

/// No compression.
const APPX_COMPRESSION_OPTION_NONE = APPX_COMPRESSION_OPTION(0);

/// Normal compression.
const APPX_COMPRESSION_OPTION_NORMAL = APPX_COMPRESSION_OPTION(1);

/// Maximum compression.
const APPX_COMPRESSION_OPTION_MAXIMUM = APPX_COMPRESSION_OPTION(2);

/// Fast compression.
const APPX_COMPRESSION_OPTION_FAST = APPX_COMPRESSION_OPTION(3);

/// Super-fast compression.
const APPX_COMPRESSION_OPTION_SUPERFAST = APPX_COMPRESSION_OPTION(4);

/// Specifies the type of footprint file in a package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_footprint_file_type>.
///
/// {@category enum}
extension type const APPX_FOOTPRINT_FILE_TYPE(int _) implements int {}

/// The package manifest.
const APPX_FOOTPRINT_FILE_TYPE_MANIFEST = APPX_FOOTPRINT_FILE_TYPE(0);

/// The package block map.
const APPX_FOOTPRINT_FILE_TYPE_BLOCKMAP = APPX_FOOTPRINT_FILE_TYPE(1);

/// The package signature.
const APPX_FOOTPRINT_FILE_TYPE_SIGNATURE = APPX_FOOTPRINT_FILE_TYPE(2);

/// The code signing catalog file used for code integrity checks.
const APPX_FOOTPRINT_FILE_TYPE_CODEINTEGRITY = APPX_FOOTPRINT_FILE_TYPE(3);

/// The content group map used for streaming install.
const APPX_FOOTPRINT_FILE_TYPE_CONTENTGROUPMAP = APPX_FOOTPRINT_FILE_TYPE(4);

/// Specifies the processor architectures supported by a package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/ne-appxpackaging-appx_package_architecture>.
///
/// {@category enum}
extension type const APPX_PACKAGE_ARCHITECTURE(int _) implements int {}

/// The x86 processor architecture.
const APPX_PACKAGE_ARCHITECTURE_X86 = APPX_PACKAGE_ARCHITECTURE(0);

/// The ARM processor architecture.
const APPX_PACKAGE_ARCHITECTURE_ARM = APPX_PACKAGE_ARCHITECTURE(5);

/// The x64 processor architecture.
const APPX_PACKAGE_ARCHITECTURE_X64 = APPX_PACKAGE_ARCHITECTURE(9);

/// Any processor architecture.
const APPX_PACKAGE_ARCHITECTURE_NEUTRAL = APPX_PACKAGE_ARCHITECTURE(11);

/// The 64-bit ARM processor architecture.
const APPX_PACKAGE_ARCHITECTURE_ARM64 = APPX_PACKAGE_ARCHITECTURE(12);

/// Specifies different types of apartments.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/ne-objidlbase-apttype>.
///
/// {@category enum}
extension type const APTTYPE(int _) implements int {}

/// The current thread.
const APTTYPE_CURRENT = APTTYPE(-1);

/// A single-threaded apartment.
const APTTYPE_STA = APTTYPE(0);

/// A multithreaded apartment.
const APTTYPE_MTA = APTTYPE(1);

/// A neutral apartment.
const APTTYPE_NA = APTTYPE(2);

/// The main single-threaded apartment.
const APTTYPE_MAINSTA = APTTYPE(3);

/// Specifies the set of possible COM apartment type qualifiers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/ne-objidlbase-apttypequalifier>.
///
/// {@category enum}
extension type const APTTYPEQUALIFIER(int _) implements int {}

/// No qualifier information for the current COM apartment type is available.
const APTTYPEQUALIFIER_NONE = APTTYPEQUALIFIER(0);

/// This qualifier is only valid when the <i>pAptType</i> parameter of the <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cogetapartmenttype">CoGetApartmentType</a>
/// function specifies APTTYPE_MTA on return.
const APTTYPEQUALIFIER_IMPLICIT_MTA = APTTYPEQUALIFIER(1);

/// This qualifier is only valid when the <i>pAptType</i> parameter of the <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cogetapartmenttype">CoGetApartmentType</a>
/// function contains APTTYPE_NA on return.
const APTTYPEQUALIFIER_NA_ON_MTA = APTTYPEQUALIFIER(2);

/// This qualifier is only valid when the <i>pAptType</i> parameter of the <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cogetapartmenttype">CoGetApartmentType</a>
/// function contains APTTYPE_NA on return.
const APTTYPEQUALIFIER_NA_ON_STA = APTTYPEQUALIFIER(3);

/// This qualifier is only valid when the <i>pAptType</i> parameter of the <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cogetapartmenttype">CoGetApartmentType</a>
/// function contains APTTYPE_NA on return.
const APTTYPEQUALIFIER_NA_ON_IMPLICIT_MTA = APTTYPEQUALIFIER(4);

/// This qualifier is only valid when the <i>pAptType</i> parameter of the <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cogetapartmenttype">CoGetApartmentType</a>
/// function contains APTTYPE_NA on return.
const APTTYPEQUALIFIER_NA_ON_MAINSTA = APTTYPEQUALIFIER(5);

const APTTYPEQUALIFIER_APPLICATION_STA = APTTYPEQUALIFIER(6);

const APTTYPEQUALIFIER_RESERVED_1 = APTTYPEQUALIFIER(7);

/// Defines flags that indicate the status of an audio endpoint buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/ne-audioclient-_audclnt_bufferflags>.
///
/// {@category enum}
extension type const AUDCLNT_BUFFERFLAGS(int _) implements int {}

/// The data in the packet is not correlated with the previous packet's device
/// position; this is possibly due to a stream state transition or timing
/// glitch.
const AUDCLNT_BUFFERFLAGS_DATA_DISCONTINUITY = AUDCLNT_BUFFERFLAGS(1);

/// Treat all of the data in the packet as silence and ignore the actual data
/// values.
const AUDCLNT_BUFFERFLAGS_SILENT = AUDCLNT_BUFFERFLAGS(2);

/// The time at which the device's stream position was recorded is uncertain.
const AUDCLNT_BUFFERFLAGS_TIMESTAMP_ERROR = AUDCLNT_BUFFERFLAGS(4);

/// Defines constants that indicate whether an audio stream will run in shared
/// mode or in exclusive mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiosessiontypes/ne-audiosessiontypes-audclnt_sharemode>.
///
/// {@category enum}
extension type const AUDCLNT_SHAREMODE(int _) implements int {}

/// The audio stream will run in shared mode.
const AUDCLNT_SHAREMODE_SHARED = AUDCLNT_SHAREMODE(0);

/// The audio stream will run in exclusive mode.
const AUDCLNT_SHAREMODE_EXCLUSIVE = AUDCLNT_SHAREMODE(1);

/// Defines values that describe the characteristics of an audio stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/ne-audioclient-audclnt_streamoptions>.
///
/// {@category enum}
extension type const AUDCLNT_STREAMOPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(AUDCLNT_STREAMOPTIONS other) => _ & other._ == other._;

  AUDCLNT_STREAMOPTIONS operator &(int other) => .new(_ & other);
  AUDCLNT_STREAMOPTIONS operator |(int other) => .new(_ | other);
}

/// No stream options.
const AUDCLNT_STREAMOPTIONS_NONE = AUDCLNT_STREAMOPTIONS(0);

/// The audio stream is a 'raw' stream that bypasses all signal processing
/// except for endpoint specific, always-on processing in the Audio Processing
/// Object (APO), driver, and hardware.
const AUDCLNT_STREAMOPTIONS_RAW = AUDCLNT_STREAMOPTIONS(1);

/// The audio client is requesting that the audio engine match the format
/// proposed by the client.
const AUDCLNT_STREAMOPTIONS_MATCH_FORMAT = AUDCLNT_STREAMOPTIONS(2);

const AUDCLNT_STREAMOPTIONS_AMBISONICS = AUDCLNT_STREAMOPTIONS(4);

const AUDCLNT_STREAMOPTIONS_POST_VOLUME_LOOPBACK = AUDCLNT_STREAMOPTIONS(8);

/// Specifies audio ducking options.
///
/// Use values from this enumeration when calling
/// IAudioClientDuckingControl::SetDuckingOptionsForCurrentStream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/ne-audioclient-audio_ducking_options>.
///
/// {@category enum}
extension type const AUDIO_DUCKING_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(AUDIO_DUCKING_OPTIONS other) => _ & other._ == other._;

  AUDIO_DUCKING_OPTIONS operator &(int other) => .new(_ & other);
  AUDIO_DUCKING_OPTIONS operator |(int other) => .new(_ | other);
}

/// The associated audio stream should use the default audio ducking behavior.
const AUDIO_DUCKING_OPTIONS_DEFAULT = AUDIO_DUCKING_OPTIONS(0);

/// The associated audio stream should not cause other streams to be ducked.
const AUDIO_DUCKING_OPTIONS_DO_NOT_DUCK_OTHER_STREAMS = AUDIO_DUCKING_OPTIONS(
  1,
);

/// Specifies the category of an audio stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiosessiontypes/ne-audiosessiontypes-audio_stream_category>.
///
/// {@category enum}
extension type const AUDIO_STREAM_CATEGORY(int _) implements int {}

/// Other audio stream.
const AudioCategory_Other = AUDIO_STREAM_CATEGORY(0);

/// Media that will only stream when the app is in the foreground.
const AudioCategory_ForegroundOnlyMedia = AUDIO_STREAM_CATEGORY(1);

/// Real-time communications, such as VOIP or chat.
const AudioCategory_Communications = AUDIO_STREAM_CATEGORY(3);

/// Alert sounds.
const AudioCategory_Alerts = AUDIO_STREAM_CATEGORY(4);

/// Sound effects.
const AudioCategory_SoundEffects = AUDIO_STREAM_CATEGORY(5);

/// Game sound effects.
const AudioCategory_GameEffects = AUDIO_STREAM_CATEGORY(6);

/// Background audio for games.
const AudioCategory_GameMedia = AUDIO_STREAM_CATEGORY(7);

/// Game chat audio.
const AudioCategory_GameChat = AUDIO_STREAM_CATEGORY(8);

/// Speech.
const AudioCategory_Speech = AUDIO_STREAM_CATEGORY(9);

/// Stream that includes audio with dialog.
const AudioCategory_Movie = AUDIO_STREAM_CATEGORY(10);

/// Stream that includes audio without dialog.
const AudioCategory_Media = AUDIO_STREAM_CATEGORY(11);

/// Media is audio captured with the intent of capturing voice sources located
/// in the ‘far field’.
const AudioCategory_FarFieldSpeech = AUDIO_STREAM_CATEGORY(12);

/// Media is captured audio that requires consistent speech processing for the
/// captured audio stream across all Windows devices.
const AudioCategory_UniformSpeech = AUDIO_STREAM_CATEGORY(13);

/// Media is audio captured with the intent of enabling dictation or typing by
/// voice.
const AudioCategory_VoiceTyping = AUDIO_STREAM_CATEGORY(14);

/// {@category enum}
extension type const AUTHENTICATION_REQUIREMENTS(int _) implements int {}

const MITMProtectionNotRequired = AUTHENTICATION_REQUIREMENTS(0);

const MITMProtectionRequired = AUTHENTICATION_REQUIREMENTS(1);

const MITMProtectionNotRequiredBonding = AUTHENTICATION_REQUIREMENTS(2);

const MITMProtectionRequiredBonding = AUTHENTICATION_REQUIREMENTS(3);

const MITMProtectionNotRequiredGeneralBonding = AUTHENTICATION_REQUIREMENTS(4);

const MITMProtectionRequiredGeneralBonding = AUTHENTICATION_REQUIREMENTS(5);

const MITMProtectionNotDefined = AUTHENTICATION_REQUIREMENTS(255);

/// {@category enum}
extension type const AudioSessionDisconnectReason(int _) implements int {}

const DisconnectReasonDeviceRemoval = AudioSessionDisconnectReason(0);

const DisconnectReasonServerShutdown = AudioSessionDisconnectReason(1);

const DisconnectReasonFormatChanged = AudioSessionDisconnectReason(2);

const DisconnectReasonSessionLogoff = AudioSessionDisconnectReason(3);

const DisconnectReasonSessionDisconnected = AudioSessionDisconnectReason(4);

const DisconnectReasonExclusiveModeOverride = AudioSessionDisconnectReason(5);

/// Defines constants that indicate the current state of an audio session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiosessiontypes/ne-audiosessiontypes-audiosessionstate>.
///
/// {@category enum}
extension type const AudioSessionState(int _) implements int {}

/// The audio session is inactive.
const AudioSessionStateInactive = AudioSessionState(0);

/// The audio session is active.
const AudioSessionStateActive = AudioSessionState(1);

/// The audio session has expired.
const AudioSessionStateExpired = AudioSessionState(2);

/// Contains values that specify the type of reference to use when returning UI
/// Automation elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/ne-uiautomationclient-automationelementmode>.
///
/// {@category enum}
extension type const AutomationElementMode(int _) implements int {}

/// Specifies that returned elements have no reference to the underlying UI and
/// contain only cached information.
const AutomationElementMode_None = AutomationElementMode(0);

/// Specifies that returned elements have a full reference to the underlying UI.
const AutomationElementMode_Full = AutomationElementMode(1);

/// {@category enum}
extension type const BACKGROUND_MODE(int _) implements int {}

const OPAQUE = BACKGROUND_MODE(2);

const TRANSPARENT = BACKGROUND_MODE(1);

/// {@category enum}
extension type const BATTERY_DEVTYPE(int _) implements int {}

const BATTERY_DEVTYPE_GAMEPAD = BATTERY_DEVTYPE(0);

const BATTERY_DEVTYPE_HEADSET = BATTERY_DEVTYPE(1);

/// {@category enum}
extension type const BATTERY_LEVEL(int _) implements int {}

const BATTERY_LEVEL_EMPTY = BATTERY_LEVEL(0);

const BATTERY_LEVEL_LOW = BATTERY_LEVEL(1);

const BATTERY_LEVEL_MEDIUM = BATTERY_LEVEL(2);

const BATTERY_LEVEL_FULL = BATTERY_LEVEL(3);

/// {@category enum}
extension type const BATTERY_TYPE(int _) implements int {}

const BATTERY_TYPE_DISCONNECTED = BATTERY_TYPE(0);

const BATTERY_TYPE_WIRED = BATTERY_TYPE(1);

const BATTERY_TYPE_ALKALINE = BATTERY_TYPE(2);

const BATTERY_TYPE_NIMH = BATTERY_TYPE(3);

const BATTERY_TYPE_UNKNOWN = BATTERY_TYPE(255);

/// {@category enum}
extension type const BI_COMPRESSION(int _) implements int {}

const BI_RGB = BI_COMPRESSION(0);

const BI_RLE8 = BI_COMPRESSION(1);

const BI_RLE4 = BI_COMPRESSION(2);

const BI_BITFIELDS = BI_COMPRESSION(3);

const BI_JPEG = BI_COMPRESSION(4);

const BI_PNG = BI_COMPRESSION(5);

/// Defines the supported authentication types during device pairing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_method>.
///
/// {@category enum}
extension type const BLUETOOTH_AUTHENTICATION_METHOD(int _) implements int {}

/// The Bluetooth device supports authentication via a PIN.
const BLUETOOTH_AUTHENTICATION_METHOD_LEGACY = BLUETOOTH_AUTHENTICATION_METHOD(
  1,
);

/// The Bluetooth device supports authentication via out-of-band data.
const BLUETOOTH_AUTHENTICATION_METHOD_OOB = BLUETOOTH_AUTHENTICATION_METHOD(2);

/// The Bluetooth device supports authentication via numeric comparison.
const BLUETOOTH_AUTHENTICATION_METHOD_NUMERIC_COMPARISON =
    BLUETOOTH_AUTHENTICATION_METHOD(3);

/// The Bluetooth device supports authentication via passkey notification.
const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY_NOTIFICATION =
    BLUETOOTH_AUTHENTICATION_METHOD(4);

/// The Bluetooth device supports authentication via passkey.
const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY = BLUETOOTH_AUTHENTICATION_METHOD(
  5,
);

/// Specifies the 'Man in the Middle' protection required for authentication.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_authentication_requirements>.
///
/// {@category enum}
extension type const BLUETOOTH_AUTHENTICATION_REQUIREMENTS(int _)
    implements int {}

/// Protection against a "Man in the Middle" attack is not required for
/// authentication.
const BLUETOOTH_MITM_ProtectionNotRequired =
    BLUETOOTH_AUTHENTICATION_REQUIREMENTS(0);

/// Protection against a "Man in the Middle" attack is required for
/// authentication.
const BLUETOOTH_MITM_ProtectionRequired = BLUETOOTH_AUTHENTICATION_REQUIREMENTS(
  1,
);

/// Protection against a "Man in the Middle" attack is not required for bonding.
const BLUETOOTH_MITM_ProtectionNotRequiredBonding =
    BLUETOOTH_AUTHENTICATION_REQUIREMENTS(2);

/// Protection against a "Man in the Middle" attack is required for bonding.
const BLUETOOTH_MITM_ProtectionRequiredBonding =
    BLUETOOTH_AUTHENTICATION_REQUIREMENTS(3);

/// Protection against a "Man in the Middle" attack is not required for General
/// Bonding.
const BLUETOOTH_MITM_ProtectionNotRequiredGeneralBonding =
    BLUETOOTH_AUTHENTICATION_REQUIREMENTS(4);

/// Protection against a "Man in the Middle" attack is required for General
/// Bonding.
const BLUETOOTH_MITM_ProtectionRequiredGeneralBonding =
    BLUETOOTH_AUTHENTICATION_REQUIREMENTS(5);

/// Protection against "Man in the Middle" attack is not defined.
const BLUETOOTH_MITM_ProtectionNotDefined =
    BLUETOOTH_AUTHENTICATION_REQUIREMENTS(255);

/// Defines the input/output capabilities of a Bluetooth Device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/ne-bluetoothapis-bluetooth_io_capability>.
///
/// {@category enum}
extension type const BLUETOOTH_IO_CAPABILITY(int _) implements int {}

/// The Bluetooth device is capable of output via display only.
const BLUETOOTH_IO_CAPABILITY_DISPLAYONLY = BLUETOOTH_IO_CAPABILITY(0);

/// The Bluetooth device is capable of output via a display, and has the
/// additional capability to presenting a yes/no question to the user.
const BLUETOOTH_IO_CAPABILITY_DISPLAYYESNO = BLUETOOTH_IO_CAPABILITY(1);

/// The Bluetooth device is capable of input via keyboard.
const BLUETOOTH_IO_CAPABILITY_KEYBOARDONLY = BLUETOOTH_IO_CAPABILITY(2);

/// The Bluetooth device is not capable of input/output.
const BLUETOOTH_IO_CAPABILITY_NOINPUTNOOUTPUT = BLUETOOTH_IO_CAPABILITY(3);

/// The input/output capabilities for the Bluetooth device are undefined.
const BLUETOOTH_IO_CAPABILITY_UNDEFINED = BLUETOOTH_IO_CAPABILITY(255);

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(BROADCAST_SYSTEM_MESSAGE_FLAGS other) => _ & other._ == other._;

  BROADCAST_SYSTEM_MESSAGE_FLAGS operator &(int other) => .new(_ & other);
  BROADCAST_SYSTEM_MESSAGE_FLAGS operator |(int other) => .new(_ | other);
}

const BSF_ALLOWSFW = BROADCAST_SYSTEM_MESSAGE_FLAGS(128);

const BSF_FLUSHDISK = BROADCAST_SYSTEM_MESSAGE_FLAGS(4);

const BSF_FORCEIFHUNG = BROADCAST_SYSTEM_MESSAGE_FLAGS(32);

const BSF_IGNORECURRENTTASK = BROADCAST_SYSTEM_MESSAGE_FLAGS(2);

const BSF_NOHANG = BROADCAST_SYSTEM_MESSAGE_FLAGS(8);

const BSF_NOTIMEOUTIFNOTHUNG = BROADCAST_SYSTEM_MESSAGE_FLAGS(64);

const BSF_POSTMESSAGE = BROADCAST_SYSTEM_MESSAGE_FLAGS(16);

const BSF_QUERY = BROADCAST_SYSTEM_MESSAGE_FLAGS(1);

const BSF_SENDNOTIFYMESSAGE = BROADCAST_SYSTEM_MESSAGE_FLAGS(256);

const BSF_LUID = BROADCAST_SYSTEM_MESSAGE_FLAGS(1024);

const BSF_RETURNHDESK = BROADCAST_SYSTEM_MESSAGE_FLAGS(512);

/// {@category enum}
extension type const BROADCAST_SYSTEM_MESSAGE_INFO(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(BROADCAST_SYSTEM_MESSAGE_INFO other) => _ & other._ == other._;

  BROADCAST_SYSTEM_MESSAGE_INFO operator &(int other) => .new(_ & other);
  BROADCAST_SYSTEM_MESSAGE_INFO operator |(int other) => .new(_ | other);
}

const BSM_ALLCOMPONENTS = BROADCAST_SYSTEM_MESSAGE_INFO(0);

const BSM_ALLDESKTOPS = BROADCAST_SYSTEM_MESSAGE_INFO(16);

const BSM_APPLICATIONS = BROADCAST_SYSTEM_MESSAGE_INFO(8);

/// {@category enum}
extension type const BRUSH_STYLE(int _) implements int {}

const BS_SOLID = BRUSH_STYLE(0);

const BS_NULL = BRUSH_STYLE(1);

const BS_HOLLOW = BRUSH_STYLE(1);

const BS_HATCHED = BRUSH_STYLE(2);

const BS_PATTERN = BRUSH_STYLE(3);

const BS_INDEXED = BRUSH_STYLE(4);

const BS_DIBPATTERN = BRUSH_STYLE(5);

const BS_DIBPATTERNPT = BRUSH_STYLE(6);

const BS_PATTERN8X8 = BRUSH_STYLE(7);

const BS_DIBPATTERN8X8 = BRUSH_STYLE(8);

const BS_MONOPATTERN = BRUSH_STYLE(9);

/// Describes the different types of Bluetooth LE generic attributes (GATT).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ne-bthledef-bth_le_gatt_descriptor_type>.
///
/// {@category enum}
extension type const BTH_LE_GATT_DESCRIPTOR_TYPE(int _) implements int {}

/// The characteristic value has additional properties that describe how it can
/// be used, or how it can be accessed.
const CharacteristicExtendedProperties = BTH_LE_GATT_DESCRIPTOR_TYPE(0);

/// The characteristic value contains a UTF-8 string of variable size that is a
/// user textual description.
const CharacteristicUserDescription = BTH_LE_GATT_DESCRIPTOR_TYPE(1);

/// The characteristic value may be configured by the client.
const ClientCharacteristicConfiguration = BTH_LE_GATT_DESCRIPTOR_TYPE(2);

/// The characteristic value may be configured for the server.
const ServerCharacteristicConfiguration = BTH_LE_GATT_DESCRIPTOR_TYPE(3);

/// The format of the characteristic value.
const CharacteristicFormat = BTH_LE_GATT_DESCRIPTOR_TYPE(4);

/// The format of an aggregated characteristic value.
const CharacteristicAggregateFormat = BTH_LE_GATT_DESCRIPTOR_TYPE(5);

/// The characteristic value is customized.
const CustomDescriptor = BTH_LE_GATT_DESCRIPTOR_TYPE(6);

/// Describes the different types of Bluetooth Low Energy (LE) generic attribute
/// (GATT) profile events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/ne-bthledef-bth_le_gatt_event_type>.
///
/// {@category enum}
extension type const BTH_LE_GATT_EVENT_TYPE(int _) implements int {}

/// The characteristic value has changed.
const CharacteristicValueChangedEvent = BTH_LE_GATT_EVENT_TYPE(0);

/// Identifies the calling convention used by a member function described in the
/// METHODDATA structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-callconv>.
///
/// {@category enum}
extension type const CALLCONV(int _) implements int {}

const CC_FASTCALL = CALLCONV(0);

const CC_CDECL = CALLCONV(1);

const CC_MSCPASCAL = CALLCONV(2);

const CC_PASCAL = CALLCONV(2);

const CC_MACPASCAL = CALLCONV(3);

const CC_STDCALL = CALLCONV(4);

const CC_FPFASTCALL = CALLCONV(5);

const CC_SYSCALL = CALLCONV(6);

const CC_MPWCDECL = CALLCONV(7);

const CC_MPWPASCAL = CALLCONV(8);

const CC_MAX = CALLCONV(9);

/// {@category enum}
extension type const CAPTIONSTATES(int _) implements int {}

const CS_ACTIVE = CAPTIONSTATES(1);

const CS_INACTIVE = CAPTIONSTATES(2);

const CS_DISABLED = CAPTIONSTATES(3);

/// {@category enum}
extension type const CASCADE_WINDOWS_HOW(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CASCADE_WINDOWS_HOW other) => _ & other._ == other._;

  CASCADE_WINDOWS_HOW operator &(int other) => .new(_ & other);
  CASCADE_WINDOWS_HOW operator |(int other) => .new(_ | other);
}

const MDITILE_SKIPDISABLED = CASCADE_WINDOWS_HOW(2);

const MDITILE_ZORDER = CASCADE_WINDOWS_HOW(4);

/// {@category enum}
extension type const CDCONTROLSTATEF(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CDCONTROLSTATEF other) => _ & other._ == other._;

  CDCONTROLSTATEF operator &(int other) => .new(_ & other);
  CDCONTROLSTATEF operator |(int other) => .new(_ | other);
}

const CDCS_INACTIVE = CDCONTROLSTATEF(0);

const CDCS_ENABLED = CDCONTROLSTATEF(1);

const CDCS_VISIBLE = CDCONTROLSTATEF(2);

const CDCS_ENABLEDVISIBLE = CDCONTROLSTATEF(3);

/// {@category enum}
extension type const CDS_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CDS_TYPE other) => _ & other._ == other._;

  CDS_TYPE operator &(int other) => .new(_ & other);
  CDS_TYPE operator |(int other) => .new(_ | other);
}

const CDS_FULLSCREEN = CDS_TYPE(4);

const CDS_GLOBAL = CDS_TYPE(8);

const CDS_NORESET = CDS_TYPE(268435456);

const CDS_RESET = CDS_TYPE(1073741824);

const CDS_SET_PRIMARY = CDS_TYPE(16);

const CDS_TEST = CDS_TYPE(2);

const CDS_UPDATEREGISTRY = CDS_TYPE(1);

const CDS_VIDEOPARAMETERS = CDS_TYPE(32);

const CDS_ENABLE_UNSAFE_MODES = CDS_TYPE(256);

const CDS_DISABLE_UNSAFE_MODES = CDS_TYPE(512);

const CDS_RESET_EX = CDS_TYPE(536870912);

/// {@category enum}
extension type const CERT_QUERY_ENCODING_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CERT_QUERY_ENCODING_TYPE other) => _ & other._ == other._;

  CERT_QUERY_ENCODING_TYPE operator &(int other) => .new(_ & other);
  CERT_QUERY_ENCODING_TYPE operator |(int other) => .new(_ | other);
}

const X509_ASN_ENCODING = CERT_QUERY_ENCODING_TYPE(1);

const PKCS_7_ASN_ENCODING = CERT_QUERY_ENCODING_TYPE(65536);

/// {@category enum}
extension type const CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(int _) implements int {}

const MSGFLT_ADD = CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(1);

const MSGFLT_REMOVE = CHANGE_WINDOW_MESSAGE_FILTER_FLAGS(2);

/// {@category enum}
extension type const CHOOSECOLOR_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CHOOSECOLOR_FLAGS other) => _ & other._ == other._;

  CHOOSECOLOR_FLAGS operator &(int other) => .new(_ & other);
  CHOOSECOLOR_FLAGS operator |(int other) => .new(_ | other);
}

const CC_RGBINIT = CHOOSECOLOR_FLAGS(1);

const CC_FULLOPEN = CHOOSECOLOR_FLAGS(2);

const CC_PREVENTFULLOPEN = CHOOSECOLOR_FLAGS(4);

const CC_SHOWHELP = CHOOSECOLOR_FLAGS(8);

const CC_ENABLEHOOK = CHOOSECOLOR_FLAGS(16);

const CC_ENABLETEMPLATE = CHOOSECOLOR_FLAGS(32);

const CC_ENABLETEMPLATEHANDLE = CHOOSECOLOR_FLAGS(64);

const CC_SOLIDCOLOR = CHOOSECOLOR_FLAGS(128);

const CC_ANYCOLOR = CHOOSECOLOR_FLAGS(256);

/// {@category enum}
extension type const CHOOSEFONT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CHOOSEFONT_FLAGS other) => _ & other._ == other._;

  CHOOSEFONT_FLAGS operator &(int other) => .new(_ & other);
  CHOOSEFONT_FLAGS operator |(int other) => .new(_ | other);
}

const CF_APPLY = CHOOSEFONT_FLAGS(512);

const CF_ANSIONLY = CHOOSEFONT_FLAGS(1024);

const CF_BOTH = CHOOSEFONT_FLAGS(3);

const CF_EFFECTS = CHOOSEFONT_FLAGS(256);

const CF_ENABLEHOOK = CHOOSEFONT_FLAGS(8);

const CF_ENABLETEMPLATE = CHOOSEFONT_FLAGS(16);

const CF_ENABLETEMPLATEHANDLE = CHOOSEFONT_FLAGS(32);

const CF_FIXEDPITCHONLY = CHOOSEFONT_FLAGS(16384);

const CF_FORCEFONTEXIST = CHOOSEFONT_FLAGS(65536);

const CF_INACTIVEFONTS = CHOOSEFONT_FLAGS(33554432);

const CF_INITTOLOGFONTSTRUCT = CHOOSEFONT_FLAGS(64);

const CF_LIMITSIZE = CHOOSEFONT_FLAGS(8192);

const CF_NOOEMFONTS = CHOOSEFONT_FLAGS(2048);

const CF_NOFACESEL = CHOOSEFONT_FLAGS(524288);

const CF_NOSCRIPTSEL = CHOOSEFONT_FLAGS(8388608);

const CF_NOSIMULATIONS = CHOOSEFONT_FLAGS(4096);

const CF_NOSIZESEL = CHOOSEFONT_FLAGS(2097152);

const CF_NOSTYLESEL = CHOOSEFONT_FLAGS(1048576);

const CF_NOVECTORFONTS = CHOOSEFONT_FLAGS(2048);

const CF_NOVERTFONTS = CHOOSEFONT_FLAGS(16777216);

const CF_PRINTERFONTS = CHOOSEFONT_FLAGS(2);

const CF_SCALABLEONLY = CHOOSEFONT_FLAGS(131072);

const CF_SCREENFONTS = CHOOSEFONT_FLAGS(1);

const CF_SCRIPTSONLY = CHOOSEFONT_FLAGS(1024);

const CF_SELECTSCRIPT = CHOOSEFONT_FLAGS(4194304);

const CF_SHOWHELP = CHOOSEFONT_FLAGS(4);

const CF_TTONLY = CHOOSEFONT_FLAGS(262144);

const CF_USESTYLE = CHOOSEFONT_FLAGS(128);

const CF_WYSIWYG = CHOOSEFONT_FLAGS(32768);

/// {@category enum}
extension type const CHOOSEFONT_FONT_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CHOOSEFONT_FONT_TYPE other) => _ & other._ == other._;

  CHOOSEFONT_FONT_TYPE operator &(int other) => .new(_ & other);
  CHOOSEFONT_FONT_TYPE operator |(int other) => .new(_ | other);
}

const BOLD_FONTTYPE = CHOOSEFONT_FONT_TYPE(256);

const ITALIC_FONTTYPE = CHOOSEFONT_FONT_TYPE(512);

const PRINTER_FONTTYPE = CHOOSEFONT_FONT_TYPE(16384);

const REGULAR_FONTTYPE = CHOOSEFONT_FONT_TYPE(1024);

const SCREEN_FONTTYPE = CHOOSEFONT_FONT_TYPE(8192);

const SIMULATED_FONTTYPE = CHOOSEFONT_FONT_TYPE(32768);

/// {@category enum}
extension type const CLEAR_COMM_ERROR_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CLEAR_COMM_ERROR_FLAGS other) => _ & other._ == other._;

  CLEAR_COMM_ERROR_FLAGS operator &(int other) => .new(_ & other);
  CLEAR_COMM_ERROR_FLAGS operator |(int other) => .new(_ | other);
}

const CE_BREAK = CLEAR_COMM_ERROR_FLAGS(16);

const CE_FRAME = CLEAR_COMM_ERROR_FLAGS(8);

const CE_OVERRUN = CLEAR_COMM_ERROR_FLAGS(2);

const CE_RXOVER = CLEAR_COMM_ERROR_FLAGS(1);

const CE_RXPARITY = CLEAR_COMM_ERROR_FLAGS(4);

/// {@category enum}
extension type const CLIPBOARD_FORMAT(int _) implements int {}

const CF_TEXT = CLIPBOARD_FORMAT(1);

const CF_BITMAP = CLIPBOARD_FORMAT(2);

const CF_METAFILEPICT = CLIPBOARD_FORMAT(3);

const CF_SYLK = CLIPBOARD_FORMAT(4);

const CF_DIF = CLIPBOARD_FORMAT(5);

const CF_TIFF = CLIPBOARD_FORMAT(6);

const CF_OEMTEXT = CLIPBOARD_FORMAT(7);

const CF_DIB = CLIPBOARD_FORMAT(8);

const CF_PALETTE = CLIPBOARD_FORMAT(9);

const CF_PENDATA = CLIPBOARD_FORMAT(10);

const CF_RIFF = CLIPBOARD_FORMAT(11);

const CF_WAVE = CLIPBOARD_FORMAT(12);

const CF_UNICODETEXT = CLIPBOARD_FORMAT(13);

const CF_ENHMETAFILE = CLIPBOARD_FORMAT(14);

const CF_HDROP = CLIPBOARD_FORMAT(15);

const CF_LOCALE = CLIPBOARD_FORMAT(16);

const CF_DIBV5 = CLIPBOARD_FORMAT(17);

const CF_MAX = CLIPBOARD_FORMAT(18);

const CF_OWNERDISPLAY = CLIPBOARD_FORMAT(128);

const CF_DSPTEXT = CLIPBOARD_FORMAT(129);

const CF_DSPBITMAP = CLIPBOARD_FORMAT(130);

const CF_DSPMETAFILEPICT = CLIPBOARD_FORMAT(131);

const CF_DSPENHMETAFILE = CLIPBOARD_FORMAT(142);

const CF_PRIVATEFIRST = CLIPBOARD_FORMAT(512);

const CF_PRIVATELAST = CLIPBOARD_FORMAT(767);

const CF_GDIOBJFIRST = CLIPBOARD_FORMAT(768);

const CF_GDIOBJLAST = CLIPBOARD_FORMAT(1023);

/// {@category enum}
extension type const CLOSEBUTTONSTATES(int _) implements int {}

const CBS_NORMAL = CLOSEBUTTONSTATES(1);

const CBS_HOT = CLOSEBUTTONSTATES(2);

const CBS_PUSHED = CLOSEBUTTONSTATES(3);

const CBS_DISABLED = CLOSEBUTTONSTATES(4);

/// Values that are used in activation calls to indicate the execution contexts
/// in which an object is to be run.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypesbase/ne-wtypesbase-clsctx>.
///
/// {@category enum}
extension type const CLSCTX(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CLSCTX other) => _ & other._ == other._;

  CLSCTX operator &(int other) => .new(_ & other);
  CLSCTX operator |(int other) => .new(_ | other);
}

/// The code that creates and manages objects of this class is a DLL that runs
/// in the same process as the caller of the function specifying the class
/// context.
const CLSCTX_INPROC_SERVER = CLSCTX(1);

/// The code that manages objects of this class is an in-process handler.
const CLSCTX_INPROC_HANDLER = CLSCTX(2);

/// The EXE code that creates and manages objects of this class runs on same
/// machine but is loaded in a separate process space.
const CLSCTX_LOCAL_SERVER = CLSCTX(4);

/// Obsolete.
const CLSCTX_INPROC_SERVER16 = CLSCTX(8);

/// A remote context.
const CLSCTX_REMOTE_SERVER = CLSCTX(16);

/// Obsolete.
const CLSCTX_INPROC_HANDLER16 = CLSCTX(32);

/// Reserved.
const CLSCTX_RESERVED1 = CLSCTX(64);

/// Reserved.
const CLSCTX_RESERVED2 = CLSCTX(128);

/// Reserved.
const CLSCTX_RESERVED3 = CLSCTX(256);

/// Reserved.
const CLSCTX_RESERVED4 = CLSCTX(512);

/// Disables the downloading of code from the directory service or the Internet.
const CLSCTX_NO_CODE_DOWNLOAD = CLSCTX(1024);

/// Reserved.
const CLSCTX_RESERVED5 = CLSCTX(2048);

/// Specify if you want the activation to fail if it uses custom marshalling.
const CLSCTX_NO_CUSTOM_MARSHAL = CLSCTX(4096);

/// Enables the downloading of code from the directory service or the Internet.
const CLSCTX_ENABLE_CODE_DOWNLOAD = CLSCTX(8192);

/// The CLSCTX_NO_FAILURE_LOG can be used to override the logging of failures in
/// <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cocreateinstanceex">CoCreateInstanceEx</a>.
const CLSCTX_NO_FAILURE_LOG = CLSCTX(16384);

/// Disables activate-as-activator (AAA) activations for this activation only.
const CLSCTX_DISABLE_AAA = CLSCTX(32768);

/// Enables activate-as-activator (AAA) activations for this activation only.
const CLSCTX_ENABLE_AAA = CLSCTX(65536);

/// Begin this activation from the default context of the current apartment.
const CLSCTX_FROM_DEFAULT_CONTEXT = CLSCTX(131072);

const CLSCTX_ACTIVATE_X86_SERVER = CLSCTX(262144);

/// Activate or connect to a 32-bit version of the server; fail if one is not
/// registered.
const CLSCTX_ACTIVATE_32_BIT_SERVER = CLSCTX(262144);

/// Activate or connect to a 64 bit version of the server; fail if one is not
/// registered.
const CLSCTX_ACTIVATE_64_BIT_SERVER = CLSCTX(524288);

/// When this flag is specified, COM uses the impersonation token of the thread,
/// if one is present, for the activation request made by the thread.
const CLSCTX_ENABLE_CLOAKING = CLSCTX(1048576);

/// Indicates activation is for an app container.
const CLSCTX_APPCONTAINER = CLSCTX(4194304);

/// Specify this flag for Interactive User activation behavior for As-Activator
/// servers.
const CLSCTX_ACTIVATE_AAA_AS_IU = CLSCTX(8388608);

const CLSCTX_RESERVED6 = CLSCTX(16777216);

const CLSCTX_ACTIVATE_ARM32_SERVER = CLSCTX(33554432);

const CLSCTX_ALLOW_LOWER_TRUST_REGISTRATION = CLSCTX(67108864);

const CLSCTX_SERVER_MUST_BE_EQUAL_OR_GREATER_PRIVILEGE = CLSCTX(134217728);

const CLSCTX_DO_NOT_ELEVATE_SERVER = CLSCTX(268435456);

/// Used for loading Proxy/Stub DLLs.
const CLSCTX_PS_DLL = CLSCTX(2147483648);

const CLSCTX_ALL = CLSCTX(23);

const CLSCTX_SERVER = CLSCTX(21);

/// Determines the concurrency model used for incoming calls to objects created
/// by this thread.
///
/// This concurrency model can be either apartment-threaded or multithreaded.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objbase/ne-objbase-coinit>.
///
/// {@category enum}
extension type const COINIT(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(COINIT other) => _ & other._ == other._;

  COINIT operator &(int other) => .new(_ & other);
  COINIT operator |(int other) => .new(_ | other);
}

/// Initializes the thread for apartment-threaded object concurrency.
const COINIT_APARTMENTTHREADED = COINIT(2);

/// Initializes the thread for multithreaded object concurrency.
const COINIT_MULTITHREADED = COINIT(0);

/// Disables DDE for OLE1 support.
const COINIT_DISABLE_OLE1DDE = COINIT(4);

/// Increase memory usage in an attempt to increase performance.
const COINIT_SPEED_OVER_MEMORY = COINIT(8);

/// {@category enum}
extension type const COINITBASE(int _) implements int {}

const COINITBASE_MULTITHREADED = COINITBASE(0);

/// {@category enum}
extension type const COMMPROP_STOP_PARITY(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(COMMPROP_STOP_PARITY other) => _ & other._ == other._;

  COMMPROP_STOP_PARITY operator &(int other) => .new(_ & other);
  COMMPROP_STOP_PARITY operator |(int other) => .new(_ | other);
}

const STOPBITS_10 = COMMPROP_STOP_PARITY(1);

const STOPBITS_15 = COMMPROP_STOP_PARITY(2);

const STOPBITS_20 = COMMPROP_STOP_PARITY(4);

const PARITY_NONE = COMMPROP_STOP_PARITY(256);

const PARITY_ODD = COMMPROP_STOP_PARITY(512);

const PARITY_EVEN = COMMPROP_STOP_PARITY(1024);

const PARITY_MARK = COMMPROP_STOP_PARITY(2048);

const PARITY_SPACE = COMMPROP_STOP_PARITY(4096);

/// {@category enum}
extension type const COMM_EVENT_MASK(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(COMM_EVENT_MASK other) => _ & other._ == other._;

  COMM_EVENT_MASK operator &(int other) => .new(_ & other);
  COMM_EVENT_MASK operator |(int other) => .new(_ | other);
}

const EV_BREAK = COMM_EVENT_MASK(64);

const EV_CTS = COMM_EVENT_MASK(8);

const EV_DSR = COMM_EVENT_MASK(16);

const EV_ERR = COMM_EVENT_MASK(128);

const EV_EVENT1 = COMM_EVENT_MASK(2048);

const EV_EVENT2 = COMM_EVENT_MASK(4096);

const EV_PERR = COMM_EVENT_MASK(512);

const EV_RING = COMM_EVENT_MASK(256);

const EV_RLSD = COMM_EVENT_MASK(32);

const EV_RX80FULL = COMM_EVENT_MASK(1024);

const EV_RXCHAR = COMM_EVENT_MASK(1);

const EV_RXFLAG = COMM_EVENT_MASK(2);

const EV_TXEMPTY = COMM_EVENT_MASK(4);

/// Specifies a type of computer name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/ne-sysinfoapi-computer_name_format>.
///
/// {@category enum}
extension type const COMPUTER_NAME_FORMAT(int _) implements int {}

/// The NetBIOS name of the local computer or the cluster associated with the
/// local computer.
const ComputerNameNetBIOS = COMPUTER_NAME_FORMAT(0);

/// The DNS name of the local computer or the cluster associated with the local
/// computer.
const ComputerNameDnsHostname = COMPUTER_NAME_FORMAT(1);

/// The name of the DNS domain assigned to the local computer or the cluster
/// associated with the local computer.
const ComputerNameDnsDomain = COMPUTER_NAME_FORMAT(2);

/// The fully qualified DNS name that uniquely identifies the local computer or
/// the cluster associated with the local computer.
const ComputerNameDnsFullyQualified = COMPUTER_NAME_FORMAT(3);

/// The NetBIOS name of the local computer.
const ComputerNamePhysicalNetBIOS = COMPUTER_NAME_FORMAT(4);

/// The DNS host name of the local computer.
const ComputerNamePhysicalDnsHostname = COMPUTER_NAME_FORMAT(5);

/// The name of the DNS domain assigned to the local computer.
const ComputerNamePhysicalDnsDomain = COMPUTER_NAME_FORMAT(6);

/// The fully qualified DNS name that uniquely identifies the computer.
const ComputerNamePhysicalDnsFullyQualified = COMPUTER_NAME_FORMAT(7);

const ComputerNameMax = COMPUTER_NAME_FORMAT(8);

/// {@category enum}
extension type const CONSOLE_CHARACTER_ATTRIBUTES(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CONSOLE_CHARACTER_ATTRIBUTES other) => _ & other._ == other._;

  CONSOLE_CHARACTER_ATTRIBUTES operator &(int other) => .new(_ & other);
  CONSOLE_CHARACTER_ATTRIBUTES operator |(int other) => .new(_ | other);
}

const FOREGROUND_BLUE = CONSOLE_CHARACTER_ATTRIBUTES(1);

const FOREGROUND_GREEN = CONSOLE_CHARACTER_ATTRIBUTES(2);

const FOREGROUND_RED = CONSOLE_CHARACTER_ATTRIBUTES(4);

const FOREGROUND_INTENSITY = CONSOLE_CHARACTER_ATTRIBUTES(8);

const BACKGROUND_BLUE = CONSOLE_CHARACTER_ATTRIBUTES(16);

const BACKGROUND_GREEN = CONSOLE_CHARACTER_ATTRIBUTES(32);

const BACKGROUND_RED = CONSOLE_CHARACTER_ATTRIBUTES(64);

const BACKGROUND_INTENSITY = CONSOLE_CHARACTER_ATTRIBUTES(128);

const COMMON_LVB_LEADING_BYTE = CONSOLE_CHARACTER_ATTRIBUTES(256);

const COMMON_LVB_TRAILING_BYTE = CONSOLE_CHARACTER_ATTRIBUTES(512);

const COMMON_LVB_GRID_HORIZONTAL = CONSOLE_CHARACTER_ATTRIBUTES(1024);

const COMMON_LVB_GRID_LVERTICAL = CONSOLE_CHARACTER_ATTRIBUTES(2048);

const COMMON_LVB_GRID_RVERTICAL = CONSOLE_CHARACTER_ATTRIBUTES(4096);

const COMMON_LVB_REVERSE_VIDEO = CONSOLE_CHARACTER_ATTRIBUTES(16384);

const COMMON_LVB_UNDERSCORE = CONSOLE_CHARACTER_ATTRIBUTES(32768);

const COMMON_LVB_SBCSDBCS = CONSOLE_CHARACTER_ATTRIBUTES(768);

/// {@category enum}
extension type const CONSOLE_MODE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CONSOLE_MODE other) => _ & other._ == other._;

  CONSOLE_MODE operator &(int other) => .new(_ & other);
  CONSOLE_MODE operator |(int other) => .new(_ | other);
}

const ENABLE_PROCESSED_INPUT = CONSOLE_MODE(1);

const ENABLE_LINE_INPUT = CONSOLE_MODE(2);

const ENABLE_ECHO_INPUT = CONSOLE_MODE(4);

const ENABLE_WINDOW_INPUT = CONSOLE_MODE(8);

const ENABLE_MOUSE_INPUT = CONSOLE_MODE(16);

const ENABLE_INSERT_MODE = CONSOLE_MODE(32);

const ENABLE_QUICK_EDIT_MODE = CONSOLE_MODE(64);

const ENABLE_EXTENDED_FLAGS = CONSOLE_MODE(128);

const ENABLE_AUTO_POSITION = CONSOLE_MODE(256);

const ENABLE_VIRTUAL_TERMINAL_INPUT = CONSOLE_MODE(512);

const ENABLE_PROCESSED_OUTPUT = CONSOLE_MODE(1);

const ENABLE_WRAP_AT_EOL_OUTPUT = CONSOLE_MODE(2);

const ENABLE_VIRTUAL_TERMINAL_PROCESSING = CONSOLE_MODE(4);

const DISABLE_NEWLINE_AUTO_RETURN = CONSOLE_MODE(8);

const ENABLE_LVB_GRID_WORLDWIDE = CONSOLE_MODE(16);

/// {@category enum}
extension type const COPYFILE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(COPYFILE_FLAGS other) => _ & other._ == other._;

  COPYFILE_FLAGS operator &(int other) => .new(_ & other);
  COPYFILE_FLAGS operator |(int other) => .new(_ | other);
}

const COPY_FILE_FAIL_IF_EXISTS = COPYFILE_FLAGS(1);

const COPY_FILE_RESTARTABLE = COPYFILE_FLAGS(2);

const COPY_FILE_OPEN_SOURCE_FOR_WRITE = COPYFILE_FLAGS(4);

const COPY_FILE_ALLOW_DECRYPTED_DESTINATION = COPYFILE_FLAGS(8);

const COPY_FILE_COPY_SYMLINK = COPYFILE_FLAGS(2048);

const COPY_FILE_NO_BUFFERING = COPYFILE_FLAGS(4096);

const COPY_FILE_REQUEST_SECURITY_PRIVILEGES = COPYFILE_FLAGS(8192);

const COPY_FILE_RESUME_FROM_PAUSE = COPYFILE_FLAGS(16384);

const COPY_FILE_NO_OFFLOAD = COPYFILE_FLAGS(262144);

const COPY_FILE_IGNORE_EDP_BLOCK = COPYFILE_FLAGS(4194304);

const COPY_FILE_IGNORE_SOURCE_ENCRYPTION = COPYFILE_FLAGS(8388608);

const COPY_FILE_DONT_REQUEST_DEST_WRITE_DAC = COPYFILE_FLAGS(33554432);

const COPY_FILE_REQUEST_COMPRESSED_TRAFFIC = COPYFILE_FLAGS(268435456);

const COPY_FILE_OPEN_AND_COPY_REPARSE_POINT = COPYFILE_FLAGS(2097152);

const COPY_FILE_DIRECTORY = COPYFILE_FLAGS(128);

const COPY_FILE_SKIP_ALTERNATE_STREAMS = COPYFILE_FLAGS(32768);

const COPY_FILE_DISABLE_PRE_ALLOCATION = COPYFILE_FLAGS(67108864);

const COPY_FILE_ENABLE_LOW_FREE_SPACE_MODE = COPYFILE_FLAGS(134217728);

const COPY_FILE_ENABLE_SPARSE_COPY = COPYFILE_FLAGS(536870912);

const COPY_FILE_DISABLE_SPARSE_COPY = COPYFILE_FLAGS(2147483648);

/// {@category enum}
extension type const COPYPROGRESSROUTINE_PROGRESS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(COPYPROGRESSROUTINE_PROGRESS other) => _ & other._ == other._;

  COPYPROGRESSROUTINE_PROGRESS operator &(int other) => .new(_ & other);
  COPYPROGRESSROUTINE_PROGRESS operator |(int other) => .new(_ | other);
}

const PROGRESS_CONTINUE = COPYPROGRESSROUTINE_PROGRESS(0);

const PROGRESS_CANCEL = COPYPROGRESSROUTINE_PROGRESS(1);

const PROGRESS_STOP = COPYPROGRESSROUTINE_PROGRESS(2);

const PROGRESS_QUIET = COPYPROGRESSROUTINE_PROGRESS(3);

/// Identifies the type of corrective action to be taken for a spelling error.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/ne-spellcheck-corrective_action>.
///
/// {@category enum}
extension type const CORRECTIVE_ACTION(int _) implements int {}

/// There are no errors.
const CORRECTIVE_ACTION_NONE = CORRECTIVE_ACTION(0);

/// The user should be prompted with a list of suggestions as returned by <a
/// href="https://docs.microsoft.com/windows/desktop/api/spellcheck/nf-spellcheck-ispellchecker-suggest">ISpellChecker::Suggest</a>.
const CORRECTIVE_ACTION_GET_SUGGESTIONS = CORRECTIVE_ACTION(1);

/// Replace the indicated erroneous text with the text provided in the
/// suggestion.
const CORRECTIVE_ACTION_REPLACE = CORRECTIVE_ACTION(2);

/// The user should be prompted to delete the indicated erroneous text.
const CORRECTIVE_ACTION_DELETE = CORRECTIVE_ACTION(3);

/// {@category enum}
extension type const CREATE_EVENT(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CREATE_EVENT other) => _ & other._ == other._;

  CREATE_EVENT operator &(int other) => .new(_ & other);
  CREATE_EVENT operator |(int other) => .new(_ | other);
}

const CREATE_EVENT_INITIAL_SET = CREATE_EVENT(2);

const CREATE_EVENT_MANUAL_RESET = CREATE_EVENT(1);

/// {@category enum}
extension type const CRED_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CRED_FLAGS other) => _ & other._ == other._;

  CRED_FLAGS operator &(int other) => .new(_ & other);
  CRED_FLAGS operator |(int other) => .new(_ | other);
}

const CRED_FLAGS_PASSWORD_FOR_CERT = CRED_FLAGS(1);

const CRED_FLAGS_PROMPT_NOW = CRED_FLAGS(2);

const CRED_FLAGS_USERNAME_TARGET = CRED_FLAGS(4);

const CRED_FLAGS_OWF_CRED_BLOB = CRED_FLAGS(8);

const CRED_FLAGS_REQUIRE_CONFIRMATION = CRED_FLAGS(16);

const CRED_FLAGS_WILDCARD_MATCH = CRED_FLAGS(32);

const CRED_FLAGS_VSM_PROTECTED = CRED_FLAGS(64);

const CRED_FLAGS_NGC_CERT = CRED_FLAGS(128);

const CRED_FLAGS_VALID_FLAGS = CRED_FLAGS(61695);

const CRED_FLAGS_VALID_INPUT_FLAGS = CRED_FLAGS(61599);

/// {@category enum}
extension type const CRED_PERSIST(int _) implements int {}

const CRED_PERSIST_NONE = CRED_PERSIST(0);

const CRED_PERSIST_SESSION = CRED_PERSIST(1);

const CRED_PERSIST_LOCAL_MACHINE = CRED_PERSIST(2);

const CRED_PERSIST_ENTERPRISE = CRED_PERSIST(3);

/// {@category enum}
extension type const CRED_TYPE(int _) implements int {}

const CRED_TYPE_GENERIC = CRED_TYPE(1);

const CRED_TYPE_DOMAIN_PASSWORD = CRED_TYPE(2);

const CRED_TYPE_DOMAIN_CERTIFICATE = CRED_TYPE(3);

const CRED_TYPE_DOMAIN_VISIBLE_PASSWORD = CRED_TYPE(4);

const CRED_TYPE_GENERIC_CERTIFICATE = CRED_TYPE(5);

const CRED_TYPE_DOMAIN_EXTENDED = CRED_TYPE(6);

const CRED_TYPE_MAXIMUM = CRED_TYPE(7);

const CRED_TYPE_MAXIMUM_EX = CRED_TYPE(1007);

/// {@category enum}
extension type const CURSORINFO_FLAGS(int _) implements int {}

const CURSOR_SHOWING = CURSORINFO_FLAGS(1);

const CURSOR_SUPPRESSED = CURSORINFO_FLAGS(2);

/// {@category enum}
extension type const CWP_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(CWP_FLAGS other) => _ & other._ == other._;

  CWP_FLAGS operator &(int other) => .new(_ & other);
  CWP_FLAGS operator |(int other) => .new(_ | other);
}

const CWP_ALL = CWP_FLAGS(0);

const CWP_SKIPINVISIBLE = CWP_FLAGS(1);

const CWP_SKIPDISABLED = CWP_FLAGS(2);

const CWP_SKIPTRANSPARENT = CWP_FLAGS(4);

/// Contains possible values for the CoalesceEvents property, which indicates
/// whether an accessible technology client receives all events, or a subset
/// where duplicate events are detected and filtered.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/ne-uiautomationclient-coalesceeventsoptions>.
///
/// {@category enum}
extension type const CoalesceEventsOptions(int _) implements int {}

/// Event coalescing is disabled.
const CoalesceEventsOptions_Disabled = CoalesceEventsOptions(0);

/// Event coalescing is enabled.
const CoalesceEventsOptions_Enabled = CoalesceEventsOptions(1);

/// Contains possible values for the ConnectionRecoveryBehavior property, which
/// indicates whether an accessible technology client adjusts provider request
/// timeouts when the provider is non-responsive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/ne-uiautomationclient-connectionrecoverybehavioroptions>.
///
/// {@category enum}
extension type const ConnectionRecoveryBehaviorOptions(int _) implements int {}

/// Connection recovery is disabled.
const ConnectionRecoveryBehaviorOptions_Disabled =
    ConnectionRecoveryBehaviorOptions(0);

/// Connection recovery is enabled.
const ConnectionRecoveryBehaviorOptions_Enabled =
    ConnectionRecoveryBehaviorOptions(1);

/// {@category enum}
extension type const CorElementType(int _) implements int {}

const ELEMENT_TYPE_END = CorElementType(0);

const ELEMENT_TYPE_VOID = CorElementType(1);

const ELEMENT_TYPE_BOOLEAN = CorElementType(2);

const ELEMENT_TYPE_CHAR = CorElementType(3);

const ELEMENT_TYPE_I1 = CorElementType(4);

const ELEMENT_TYPE_U1 = CorElementType(5);

const ELEMENT_TYPE_I2 = CorElementType(6);

const ELEMENT_TYPE_U2 = CorElementType(7);

const ELEMENT_TYPE_I4 = CorElementType(8);

const ELEMENT_TYPE_U4 = CorElementType(9);

const ELEMENT_TYPE_I8 = CorElementType(10);

const ELEMENT_TYPE_U8 = CorElementType(11);

const ELEMENT_TYPE_R4 = CorElementType(12);

const ELEMENT_TYPE_R8 = CorElementType(13);

const ELEMENT_TYPE_STRING = CorElementType(14);

const ELEMENT_TYPE_PTR = CorElementType(15);

const ELEMENT_TYPE_BYREF = CorElementType(16);

const ELEMENT_TYPE_VALUETYPE = CorElementType(17);

const ELEMENT_TYPE_CLASS = CorElementType(18);

const ELEMENT_TYPE_VAR = CorElementType(19);

const ELEMENT_TYPE_ARRAY = CorElementType(20);

const ELEMENT_TYPE_GENERICINST = CorElementType(21);

const ELEMENT_TYPE_TYPEDBYREF = CorElementType(22);

const ELEMENT_TYPE_I = CorElementType(24);

const ELEMENT_TYPE_U = CorElementType(25);

const ELEMENT_TYPE_FNPTR = CorElementType(27);

const ELEMENT_TYPE_OBJECT = CorElementType(28);

const ELEMENT_TYPE_SZARRAY = CorElementType(29);

const ELEMENT_TYPE_MVAR = CorElementType(30);

const ELEMENT_TYPE_CMOD_REQD = CorElementType(31);

const ELEMENT_TYPE_CMOD_OPT = CorElementType(32);

const ELEMENT_TYPE_INTERNAL = CorElementType(33);

const ELEMENT_TYPE_MAX = CorElementType(34);

const ELEMENT_TYPE_MODIFIER = CorElementType(64);

const ELEMENT_TYPE_SENTINEL = CorElementType(65);

const ELEMENT_TYPE_PINNED = CorElementType(69);

/// {@category enum}
extension type const CorEventAttr(int _) implements int {}

const evSpecialName = CorEventAttr(512);

const evReservedMask = CorEventAttr(1024);

const evRTSpecialName = CorEventAttr(1024);

/// {@category enum}
extension type const CorFieldAttr(int _) implements int {}

const fdFieldAccessMask = CorFieldAttr(7);

const fdPrivateScope = CorFieldAttr(0);

const fdPrivate = CorFieldAttr(1);

const fdFamANDAssem = CorFieldAttr(2);

const fdAssembly = CorFieldAttr(3);

const fdFamily = CorFieldAttr(4);

const fdFamORAssem = CorFieldAttr(5);

const fdPublic = CorFieldAttr(6);

const fdStatic = CorFieldAttr(16);

const fdInitOnly = CorFieldAttr(32);

const fdLiteral = CorFieldAttr(64);

const fdNotSerialized = CorFieldAttr(128);

const fdSpecialName = CorFieldAttr(512);

const fdPinvokeImpl = CorFieldAttr(8192);

const fdReservedMask = CorFieldAttr(38144);

const fdRTSpecialName = CorFieldAttr(1024);

const fdHasFieldMarshal = CorFieldAttr(4096);

const fdHasDefault = CorFieldAttr(32768);

const fdHasFieldRVA = CorFieldAttr(256);

/// {@category enum}
extension type const CorGenericParamAttr(int _) implements int {}

const gpVarianceMask = CorGenericParamAttr(3);

const gpNonVariant = CorGenericParamAttr(0);

const gpCovariant = CorGenericParamAttr(1);

const gpContravariant = CorGenericParamAttr(2);

const gpSpecialConstraintMask = CorGenericParamAttr(28);

const gpNoSpecialConstraint = CorGenericParamAttr(0);

const gpReferenceTypeConstraint = CorGenericParamAttr(4);

const gpNotNullableValueTypeConstraint = CorGenericParamAttr(8);

const gpDefaultConstructorConstraint = CorGenericParamAttr(16);

/// {@category enum}
extension type const CorMethodAttr(int _) implements int {}

const mdMemberAccessMask = CorMethodAttr(7);

const mdPrivateScope = CorMethodAttr(0);

const mdPrivate = CorMethodAttr(1);

const mdFamANDAssem = CorMethodAttr(2);

const mdAssem = CorMethodAttr(3);

const mdFamily = CorMethodAttr(4);

const mdFamORAssem = CorMethodAttr(5);

const mdPublic = CorMethodAttr(6);

const mdStatic = CorMethodAttr(16);

const mdFinal = CorMethodAttr(32);

const mdVirtual = CorMethodAttr(64);

const mdHideBySig = CorMethodAttr(128);

const mdVtableLayoutMask = CorMethodAttr(256);

const mdReuseSlot = CorMethodAttr(0);

const mdNewSlot = CorMethodAttr(256);

const mdCheckAccessOnOverride = CorMethodAttr(512);

const mdAbstract = CorMethodAttr(1024);

const mdSpecialName = CorMethodAttr(2048);

const mdPinvokeImpl = CorMethodAttr(8192);

const mdUnmanagedExport = CorMethodAttr(8);

const mdReservedMask = CorMethodAttr(53248);

const mdRTSpecialName = CorMethodAttr(4096);

const mdHasSecurity = CorMethodAttr(16384);

const mdRequireSecObject = CorMethodAttr(32768);

/// {@category enum}
extension type const CorMethodImpl(int _) implements int {}

const miCodeTypeMask = CorMethodImpl(3);

const miIL = CorMethodImpl(0);

const miNative = CorMethodImpl(1);

const miOPTIL = CorMethodImpl(2);

const miRuntime = CorMethodImpl(3);

const miManagedMask = CorMethodImpl(4);

const miUnmanaged = CorMethodImpl(4);

const miManaged = CorMethodImpl(0);

const miForwardRef = CorMethodImpl(16);

const miPreserveSig = CorMethodImpl(128);

const miInternalCall = CorMethodImpl(4096);

const miSynchronized = CorMethodImpl(32);

const miNoInlining = CorMethodImpl(8);

const miAggressiveInlining = CorMethodImpl(256);

const miNoOptimization = CorMethodImpl(64);

const miSecurityMitigations = CorMethodImpl(1024);

const miUserMask = CorMethodImpl(5628);

const miMaxMethodImplVal = CorMethodImpl(65535);

/// {@category enum}
extension type const CorNativeType(int _) implements int {}

const NATIVE_TYPE_END = CorNativeType(0);

const NATIVE_TYPE_VOID = CorNativeType(1);

const NATIVE_TYPE_BOOLEAN = CorNativeType(2);

const NATIVE_TYPE_I1 = CorNativeType(3);

const NATIVE_TYPE_U1 = CorNativeType(4);

const NATIVE_TYPE_I2 = CorNativeType(5);

const NATIVE_TYPE_U2 = CorNativeType(6);

const NATIVE_TYPE_I4 = CorNativeType(7);

const NATIVE_TYPE_U4 = CorNativeType(8);

const NATIVE_TYPE_I8 = CorNativeType(9);

const NATIVE_TYPE_U8 = CorNativeType(10);

const NATIVE_TYPE_R4 = CorNativeType(11);

const NATIVE_TYPE_R8 = CorNativeType(12);

const NATIVE_TYPE_SYSCHAR = CorNativeType(13);

const NATIVE_TYPE_VARIANT = CorNativeType(14);

const NATIVE_TYPE_CURRENCY = CorNativeType(15);

const NATIVE_TYPE_PTR = CorNativeType(16);

const NATIVE_TYPE_DECIMAL = CorNativeType(17);

const NATIVE_TYPE_DATE = CorNativeType(18);

const NATIVE_TYPE_BSTR = CorNativeType(19);

const NATIVE_TYPE_LPSTR = CorNativeType(20);

const NATIVE_TYPE_LPWSTR = CorNativeType(21);

const NATIVE_TYPE_LPTSTR = CorNativeType(22);

const NATIVE_TYPE_FIXEDSYSSTRING = CorNativeType(23);

const NATIVE_TYPE_OBJECTREF = CorNativeType(24);

const NATIVE_TYPE_IUNKNOWN = CorNativeType(25);

const NATIVE_TYPE_IDISPATCH = CorNativeType(26);

const NATIVE_TYPE_STRUCT = CorNativeType(27);

const NATIVE_TYPE_INTF = CorNativeType(28);

const NATIVE_TYPE_SAFEARRAY = CorNativeType(29);

const NATIVE_TYPE_FIXEDARRAY = CorNativeType(30);

const NATIVE_TYPE_INT = CorNativeType(31);

const NATIVE_TYPE_UINT = CorNativeType(32);

const NATIVE_TYPE_NESTEDSTRUCT = CorNativeType(33);

const NATIVE_TYPE_BYVALSTR = CorNativeType(34);

const NATIVE_TYPE_ANSIBSTR = CorNativeType(35);

const NATIVE_TYPE_TBSTR = CorNativeType(36);

const NATIVE_TYPE_VARIANTBOOL = CorNativeType(37);

const NATIVE_TYPE_FUNC = CorNativeType(38);

const NATIVE_TYPE_ASANY = CorNativeType(40);

const NATIVE_TYPE_ARRAY = CorNativeType(42);

const NATIVE_TYPE_LPSTRUCT = CorNativeType(43);

const NATIVE_TYPE_CUSTOMMARSHALER = CorNativeType(44);

const NATIVE_TYPE_ERROR = CorNativeType(45);

const NATIVE_TYPE_IINSPECTABLE = CorNativeType(46);

const NATIVE_TYPE_HSTRING = CorNativeType(47);

const NATIVE_TYPE_LPUTF8STR = CorNativeType(48);

const NATIVE_TYPE_MAX = CorNativeType(80);

/// {@category enum}
extension type const CorOpenFlags(int _) implements int {}

const ofRead = CorOpenFlags(0);

const ofWrite = CorOpenFlags(1);

const ofReadWriteMask = CorOpenFlags(1);

const ofCopyMemory = CorOpenFlags(2);

const ofReadOnly = CorOpenFlags(16);

const ofTakeOwnership = CorOpenFlags(32);

const ofNoTypeLib = CorOpenFlags(128);

const ofNoTransform = CorOpenFlags(4096);

const ofCheckIntegrity = CorOpenFlags(2048);

const ofReserved1 = CorOpenFlags(256);

const ofReserved2 = CorOpenFlags(512);

const ofReserved3 = CorOpenFlags(1024);

const ofReserved = CorOpenFlags(-6336);

/// {@category enum}
extension type const CorPEKind(int _) implements int {}

const peNot = CorPEKind(0);

const peILonly = CorPEKind(1);

const pe32BitRequired = CorPEKind(2);

const pe32Plus = CorPEKind(4);

const pe32Unmanaged = CorPEKind(8);

const pe32BitPreferred = CorPEKind(16);

/// {@category enum}
extension type const CorParamAttr(int _) implements int {}

const pdIn = CorParamAttr(1);

const pdOut = CorParamAttr(2);

const pdOptional = CorParamAttr(16);

const pdReservedMask = CorParamAttr(61440);

const pdHasDefault = CorParamAttr(4096);

const pdHasFieldMarshal = CorParamAttr(8192);

const pdUnused = CorParamAttr(53216);

/// {@category enum}
extension type const CorPinvokeMap(int _) implements int {}

const pmNoMangle = CorPinvokeMap(1);

const pmCharSetMask = CorPinvokeMap(6);

const pmCharSetNotSpec = CorPinvokeMap(0);

const pmCharSetAnsi = CorPinvokeMap(2);

const pmCharSetUnicode = CorPinvokeMap(4);

const pmCharSetAuto = CorPinvokeMap(6);

const pmBestFitUseAssem = CorPinvokeMap(0);

const pmBestFitEnabled = CorPinvokeMap(16);

const pmBestFitDisabled = CorPinvokeMap(32);

const pmBestFitMask = CorPinvokeMap(48);

const pmThrowOnUnmappableCharUseAssem = CorPinvokeMap(0);

const pmThrowOnUnmappableCharEnabled = CorPinvokeMap(4096);

const pmThrowOnUnmappableCharDisabled = CorPinvokeMap(8192);

const pmThrowOnUnmappableCharMask = CorPinvokeMap(12288);

const pmSupportsLastError = CorPinvokeMap(64);

const pmCallConvMask = CorPinvokeMap(1792);

const pmCallConvWinapi = CorPinvokeMap(256);

const pmCallConvCdecl = CorPinvokeMap(512);

const pmCallConvStdcall = CorPinvokeMap(768);

const pmCallConvThiscall = CorPinvokeMap(1024);

const pmCallConvFastcall = CorPinvokeMap(1280);

const pmMaxValue = CorPinvokeMap(65535);

/// {@category enum}
extension type const CorPropertyAttr(int _) implements int {}

const prSpecialName = CorPropertyAttr(512);

const prReservedMask = CorPropertyAttr(62464);

const prRTSpecialName = CorPropertyAttr(1024);

const prHasDefault = CorPropertyAttr(4096);

const prUnused = CorPropertyAttr(59903);

/// {@category enum}
extension type const CorTokenType(int _) implements int {}

const mdtModule = CorTokenType(0);

const mdtTypeRef = CorTokenType(16777216);

const mdtTypeDef = CorTokenType(33554432);

const mdtFieldDef = CorTokenType(67108864);

const mdtMethodDef = CorTokenType(100663296);

const mdtParamDef = CorTokenType(134217728);

const mdtInterfaceImpl = CorTokenType(150994944);

const mdtMemberRef = CorTokenType(167772160);

const mdtCustomAttribute = CorTokenType(201326592);

const mdtPermission = CorTokenType(234881024);

const mdtSignature = CorTokenType(285212672);

const mdtEvent = CorTokenType(335544320);

const mdtProperty = CorTokenType(385875968);

const mdtMethodImpl = CorTokenType(419430400);

const mdtModuleRef = CorTokenType(436207616);

const mdtTypeSpec = CorTokenType(452984832);

const mdtAssembly = CorTokenType(536870912);

const mdtAssemblyRef = CorTokenType(587202560);

const mdtFile = CorTokenType(637534208);

const mdtExportedType = CorTokenType(654311424);

const mdtManifestResource = CorTokenType(671088640);

const mdtGenericParam = CorTokenType(704643072);

const mdtMethodSpec = CorTokenType(721420288);

const mdtGenericParamConstraint = CorTokenType(738197504);

const mdtString = CorTokenType(1879048192);

const mdtName = CorTokenType(1895825408);

const mdtBaseType = CorTokenType(1912602624);

/// {@category enum}
extension type const CorTypeAttr(int _) implements int {}

const tdVisibilityMask = CorTypeAttr(7);

const tdNotPublic = CorTypeAttr(0);

const tdPublic = CorTypeAttr(1);

const tdNestedPublic = CorTypeAttr(2);

const tdNestedPrivate = CorTypeAttr(3);

const tdNestedFamily = CorTypeAttr(4);

const tdNestedAssembly = CorTypeAttr(5);

const tdNestedFamANDAssem = CorTypeAttr(6);

const tdNestedFamORAssem = CorTypeAttr(7);

const tdLayoutMask = CorTypeAttr(24);

const tdAutoLayout = CorTypeAttr(0);

const tdSequentialLayout = CorTypeAttr(8);

const tdExplicitLayout = CorTypeAttr(16);

const tdClassSemanticsMask = CorTypeAttr(32);

const tdClass = CorTypeAttr(0);

const tdInterface = CorTypeAttr(32);

const tdAbstract = CorTypeAttr(128);

const tdSealed = CorTypeAttr(256);

const tdSpecialName = CorTypeAttr(1024);

const tdImport = CorTypeAttr(4096);

const tdSerializable = CorTypeAttr(8192);

const tdWindowsRuntime = CorTypeAttr(16384);

const tdStringFormatMask = CorTypeAttr(196608);

const tdAnsiClass = CorTypeAttr(0);

const tdUnicodeClass = CorTypeAttr(65536);

const tdAutoClass = CorTypeAttr(131072);

const tdCustomFormatClass = CorTypeAttr(196608);

const tdCustomFormatMask = CorTypeAttr(12582912);

const tdBeforeFieldInit = CorTypeAttr(1048576);

const tdForwarder = CorTypeAttr(2097152);

const tdReservedMask = CorTypeAttr(264192);

const tdRTSpecialName = CorTypeAttr(2048);

const tdHasSecurity = CorTypeAttr(262144);

/// {@category enum}
extension type const DCB_PARITY(int _) implements int {}

const EVENPARITY = DCB_PARITY(2);

const MARKPARITY = DCB_PARITY(3);

const NOPARITY = DCB_PARITY(0);

const ODDPARITY = DCB_PARITY(1);

const SPACEPARITY = DCB_PARITY(4);

/// {@category enum}
extension type const DCB_STOP_BITS(int _) implements int {}

const ONESTOPBIT = DCB_STOP_BITS(0);

const ONE5STOPBITS = DCB_STOP_BITS(1);

const TWOSTOPBITS = DCB_STOP_BITS(2);

/// {@category enum}
extension type const DEFINE_DOS_DEVICE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DEFINE_DOS_DEVICE_FLAGS other) => _ & other._ == other._;

  DEFINE_DOS_DEVICE_FLAGS operator &(int other) => .new(_ & other);
  DEFINE_DOS_DEVICE_FLAGS operator |(int other) => .new(_ | other);
}

const DDD_RAW_TARGET_PATH = DEFINE_DOS_DEVICE_FLAGS(1);

const DDD_REMOVE_DEFINITION = DEFINE_DOS_DEVICE_FLAGS(2);

const DDD_EXACT_MATCH_ON_REMOVE = DEFINE_DOS_DEVICE_FLAGS(4);

const DDD_NO_BROADCAST_SYSTEM = DEFINE_DOS_DEVICE_FLAGS(8);

const DDD_LUID_BROADCAST_DRIVE = DEFINE_DOS_DEVICE_FLAGS(16);

/// {@category enum}
extension type const DESKTOP_ACCESS_FLAGS(int _) implements int {}

const DESKTOP_DELETE = DESKTOP_ACCESS_FLAGS(65536);

const DESKTOP_READ_CONTROL = DESKTOP_ACCESS_FLAGS(131072);

const DESKTOP_WRITE_DAC = DESKTOP_ACCESS_FLAGS(262144);

const DESKTOP_WRITE_OWNER = DESKTOP_ACCESS_FLAGS(524288);

const DESKTOP_SYNCHRONIZE = DESKTOP_ACCESS_FLAGS(1048576);

const DESKTOP_READOBJECTS = DESKTOP_ACCESS_FLAGS(1);

const DESKTOP_CREATEWINDOW = DESKTOP_ACCESS_FLAGS(2);

const DESKTOP_CREATEMENU = DESKTOP_ACCESS_FLAGS(4);

const DESKTOP_HOOKCONTROL = DESKTOP_ACCESS_FLAGS(8);

const DESKTOP_JOURNALRECORD = DESKTOP_ACCESS_FLAGS(16);

const DESKTOP_JOURNALPLAYBACK = DESKTOP_ACCESS_FLAGS(32);

const DESKTOP_ENUMERATE = DESKTOP_ACCESS_FLAGS(64);

const DESKTOP_WRITEOBJECTS = DESKTOP_ACCESS_FLAGS(128);

const DESKTOP_SWITCHDESKTOP = DESKTOP_ACCESS_FLAGS(256);

/// {@category enum}
extension type const DESKTOP_CONTROL_FLAGS(int _) implements int {}

const DF_ALLOWOTHERACCOUNTHOOK = DESKTOP_CONTROL_FLAGS(1);

/// {@category enum}
extension type const DESKTOP_SLIDESHOW_DIRECTION(int _) implements int {}

const DSD_FORWARD = DESKTOP_SLIDESHOW_DIRECTION(0);

const DSD_BACKWARD = DESKTOP_SLIDESHOW_DIRECTION(1);

/// {@category enum}
extension type const DESKTOP_SLIDESHOW_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DESKTOP_SLIDESHOW_OPTIONS other) => _ & other._ == other._;

  DESKTOP_SLIDESHOW_OPTIONS operator &(int other) => .new(_ & other);
  DESKTOP_SLIDESHOW_OPTIONS operator |(int other) => .new(_ | other);
}

const DSO_SHUFFLEIMAGES = DESKTOP_SLIDESHOW_OPTIONS(1);

/// {@category enum}
extension type const DESKTOP_SLIDESHOW_STATE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DESKTOP_SLIDESHOW_STATE other) => _ & other._ == other._;

  DESKTOP_SLIDESHOW_STATE operator &(int other) => .new(_ & other);
  DESKTOP_SLIDESHOW_STATE operator |(int other) => .new(_ | other);
}

const DSS_ENABLED = DESKTOP_SLIDESHOW_STATE(1);

const DSS_SLIDESHOW = DESKTOP_SLIDESHOW_STATE(2);

const DSS_DISABLED_BY_REMOTE_SESSION = DESKTOP_SLIDESHOW_STATE(4);

/// Specifies how the desktop wallpaper should be displayed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-desktop_wallpaper_position>.
///
/// {@category enum}
extension type const DESKTOP_WALLPAPER_POSITION(int _) implements int {}

/// Center the image; do not stretch.
const DWPOS_CENTER = DESKTOP_WALLPAPER_POSITION(0);

/// Tile the image across all monitors.
const DWPOS_TILE = DESKTOP_WALLPAPER_POSITION(1);

/// Stretch the image to exactly fit on the monitor.
const DWPOS_STRETCH = DESKTOP_WALLPAPER_POSITION(2);

/// Stretch the image to exactly the height or width of the monitor without
/// changing its aspect ratio or cropping the image.
const DWPOS_FIT = DESKTOP_WALLPAPER_POSITION(3);

/// Stretch the image to fill the screen, cropping the image as necessary to
/// avoid letterbox bars.
const DWPOS_FILL = DESKTOP_WALLPAPER_POSITION(4);

/// Spans a single image across all monitors attached to the system.
const DWPOS_SPAN = DESKTOP_WALLPAPER_POSITION(5);

/// Indicates a spoofed device scale factor, as a percent.
///
/// Used by IApplicationDesignModeSettings::SetApplicationViewState and
/// IApplicationDesignModeSettings::IsApplicationViewStateSupported.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shtypes/ne-shtypes-device_scale_factor>.
///
/// {@category enum}
extension type const DEVICE_SCALE_FACTOR(int _) implements int {}

const DEVICE_SCALE_FACTOR_INVALID = DEVICE_SCALE_FACTOR(0);

/// 100%.
const SCALE_100_PERCENT = DEVICE_SCALE_FACTOR(100);

/// 120%.
const SCALE_120_PERCENT = DEVICE_SCALE_FACTOR(120);

const SCALE_125_PERCENT = DEVICE_SCALE_FACTOR(125);

/// 140%.
const SCALE_140_PERCENT = DEVICE_SCALE_FACTOR(140);

/// 150%.
const SCALE_150_PERCENT = DEVICE_SCALE_FACTOR(150);

/// 160%.
const SCALE_160_PERCENT = DEVICE_SCALE_FACTOR(160);

const SCALE_175_PERCENT = DEVICE_SCALE_FACTOR(175);

/// 180%.
const SCALE_180_PERCENT = DEVICE_SCALE_FACTOR(180);

const SCALE_200_PERCENT = DEVICE_SCALE_FACTOR(200);

/// 225%.
const SCALE_225_PERCENT = DEVICE_SCALE_FACTOR(225);

const SCALE_250_PERCENT = DEVICE_SCALE_FACTOR(250);

const SCALE_300_PERCENT = DEVICE_SCALE_FACTOR(300);

const SCALE_350_PERCENT = DEVICE_SCALE_FACTOR(350);

const SCALE_400_PERCENT = DEVICE_SCALE_FACTOR(400);

const SCALE_450_PERCENT = DEVICE_SCALE_FACTOR(450);

const SCALE_500_PERCENT = DEVICE_SCALE_FACTOR(500);

/// {@category enum}
extension type const DEVICE_STATE(int _) implements int {}

const DEVICE_STATE_ACTIVE = DEVICE_STATE(1);

const DEVICE_STATE_DISABLED = DEVICE_STATE(2);

const DEVICE_STATE_NOTPRESENT = DEVICE_STATE(4);

const DEVICE_STATE_UNPLUGGED = DEVICE_STATE(8);

/// {@category enum}
extension type const DEVMODE_COLLATE(int _) implements int {}

const DMCOLLATE_FALSE = DEVMODE_COLLATE(0);

const DMCOLLATE_TRUE = DEVMODE_COLLATE(1);

/// {@category enum}
extension type const DEVMODE_COLOR(int _) implements int {}

const DMCOLOR_MONOCHROME = DEVMODE_COLOR(1);

const DMCOLOR_COLOR = DEVMODE_COLOR(2);

/// {@category enum}
extension type const DEVMODE_DISPLAY_FIXED_OUTPUT(int _) implements int {}

const DMDFO_DEFAULT = DEVMODE_DISPLAY_FIXED_OUTPUT(0);

const DMDFO_STRETCH = DEVMODE_DISPLAY_FIXED_OUTPUT(1);

const DMDFO_CENTER = DEVMODE_DISPLAY_FIXED_OUTPUT(2);

/// {@category enum}
extension type const DEVMODE_DISPLAY_ORIENTATION(int _) implements int {}

const DMDO_DEFAULT = DEVMODE_DISPLAY_ORIENTATION(0);

const DMDO_90 = DEVMODE_DISPLAY_ORIENTATION(1);

const DMDO_180 = DEVMODE_DISPLAY_ORIENTATION(2);

const DMDO_270 = DEVMODE_DISPLAY_ORIENTATION(3);

/// {@category enum}
extension type const DEVMODE_DUPLEX(int _) implements int {}

const DMDUP_SIMPLEX = DEVMODE_DUPLEX(1);

const DMDUP_VERTICAL = DEVMODE_DUPLEX(2);

const DMDUP_HORIZONTAL = DEVMODE_DUPLEX(3);

/// {@category enum}
extension type const DEVMODE_FIELD_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DEVMODE_FIELD_FLAGS other) => _ & other._ == other._;

  DEVMODE_FIELD_FLAGS operator &(int other) => .new(_ & other);
  DEVMODE_FIELD_FLAGS operator |(int other) => .new(_ | other);
}

const DM_SPECVERSION = DEVMODE_FIELD_FLAGS(1025);

const DM_ORIENTATION = DEVMODE_FIELD_FLAGS(1);

const DM_PAPERSIZE = DEVMODE_FIELD_FLAGS(2);

const DM_PAPERLENGTH = DEVMODE_FIELD_FLAGS(4);

const DM_PAPERWIDTH = DEVMODE_FIELD_FLAGS(8);

const DM_SCALE = DEVMODE_FIELD_FLAGS(16);

const DM_POSITION = DEVMODE_FIELD_FLAGS(32);

const DM_NUP = DEVMODE_FIELD_FLAGS(64);

const DM_DISPLAYORIENTATION = DEVMODE_FIELD_FLAGS(128);

const DM_COPIES = DEVMODE_FIELD_FLAGS(256);

const DM_DEFAULTSOURCE = DEVMODE_FIELD_FLAGS(512);

const DM_PRINTQUALITY = DEVMODE_FIELD_FLAGS(1024);

const DM_COLOR = DEVMODE_FIELD_FLAGS(2048);

const DM_DUPLEX = DEVMODE_FIELD_FLAGS(4096);

const DM_YRESOLUTION = DEVMODE_FIELD_FLAGS(8192);

const DM_TTOPTION = DEVMODE_FIELD_FLAGS(16384);

const DM_COLLATE = DEVMODE_FIELD_FLAGS(32768);

const DM_FORMNAME = DEVMODE_FIELD_FLAGS(65536);

const DM_LOGPIXELS = DEVMODE_FIELD_FLAGS(131072);

const DM_BITSPERPEL = DEVMODE_FIELD_FLAGS(262144);

const DM_PELSWIDTH = DEVMODE_FIELD_FLAGS(524288);

const DM_PELSHEIGHT = DEVMODE_FIELD_FLAGS(1048576);

const DM_DISPLAYFLAGS = DEVMODE_FIELD_FLAGS(2097152);

const DM_DISPLAYFREQUENCY = DEVMODE_FIELD_FLAGS(4194304);

const DM_ICMMETHOD = DEVMODE_FIELD_FLAGS(8388608);

const DM_ICMINTENT = DEVMODE_FIELD_FLAGS(16777216);

const DM_MEDIATYPE = DEVMODE_FIELD_FLAGS(33554432);

const DM_DITHERTYPE = DEVMODE_FIELD_FLAGS(67108864);

const DM_PANNINGWIDTH = DEVMODE_FIELD_FLAGS(134217728);

const DM_PANNINGHEIGHT = DEVMODE_FIELD_FLAGS(268435456);

const DM_DISPLAYFIXEDOUTPUT = DEVMODE_FIELD_FLAGS(536870912);

const DM_INTERLACED = DEVMODE_FIELD_FLAGS(2);

const DM_UPDATE = DEVMODE_FIELD_FLAGS(1);

const DM_COPY = DEVMODE_FIELD_FLAGS(2);

const DM_PROMPT = DEVMODE_FIELD_FLAGS(4);

const DM_MODIFY = DEVMODE_FIELD_FLAGS(8);

const DM_IN_BUFFER = DEVMODE_FIELD_FLAGS(8);

const DM_IN_PROMPT = DEVMODE_FIELD_FLAGS(4);

const DM_OUT_BUFFER = DEVMODE_FIELD_FLAGS(2);

const DM_OUT_DEFAULT = DEVMODE_FIELD_FLAGS(1);

/// {@category enum}
extension type const DEVMODE_TRUETYPE_OPTION(int _) implements int {}

const DMTT_BITMAP = DEVMODE_TRUETYPE_OPTION(1);

const DMTT_DOWNLOAD = DEVMODE_TRUETYPE_OPTION(2);

const DMTT_SUBDEV = DEVMODE_TRUETYPE_OPTION(3);

const DMTT_DOWNLOAD_OUTLINE = DEVMODE_TRUETYPE_OPTION(4);

/// {@category enum}
extension type const DEV_BROADCAST_HDR_DEVICE_TYPE(int _) implements int {}

const DBT_DEVTYP_DEVICEINTERFACE = DEV_BROADCAST_HDR_DEVICE_TYPE(5);

const DBT_DEVTYP_HANDLE = DEV_BROADCAST_HDR_DEVICE_TYPE(6);

const DBT_DEVTYP_OEM = DEV_BROADCAST_HDR_DEVICE_TYPE(0);

const DBT_DEVTYP_PORT = DEV_BROADCAST_HDR_DEVICE_TYPE(3);

const DBT_DEVTYP_VOLUME = DEV_BROADCAST_HDR_DEVICE_TYPE(2);

/// {@category enum}
extension type const DEV_BROADCAST_VOLUME_FLAGS(int _) implements int {}

const DBTF_MEDIA = DEV_BROADCAST_VOLUME_FLAGS(1);

const DBTF_NET = DEV_BROADCAST_VOLUME_FLAGS(2);

/// {@category enum}
extension type const DFCS_STATE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DFCS_STATE other) => _ & other._ == other._;

  DFCS_STATE operator &(int other) => .new(_ & other);
  DFCS_STATE operator |(int other) => .new(_ | other);
}

const DFCS_CAPTIONCLOSE = DFCS_STATE(0);

const DFCS_CAPTIONMIN = DFCS_STATE(1);

const DFCS_CAPTIONMAX = DFCS_STATE(2);

const DFCS_CAPTIONRESTORE = DFCS_STATE(3);

const DFCS_CAPTIONHELP = DFCS_STATE(4);

const DFCS_MENUARROW = DFCS_STATE(0);

const DFCS_MENUCHECK = DFCS_STATE(1);

const DFCS_MENUBULLET = DFCS_STATE(2);

const DFCS_MENUARROWRIGHT = DFCS_STATE(4);

const DFCS_SCROLLUP = DFCS_STATE(0);

const DFCS_SCROLLDOWN = DFCS_STATE(1);

const DFCS_SCROLLLEFT = DFCS_STATE(2);

const DFCS_SCROLLRIGHT = DFCS_STATE(3);

const DFCS_SCROLLCOMBOBOX = DFCS_STATE(5);

const DFCS_SCROLLSIZEGRIP = DFCS_STATE(8);

const DFCS_SCROLLSIZEGRIPRIGHT = DFCS_STATE(16);

const DFCS_BUTTONCHECK = DFCS_STATE(0);

const DFCS_BUTTONRADIOIMAGE = DFCS_STATE(1);

const DFCS_BUTTONRADIOMASK = DFCS_STATE(2);

const DFCS_BUTTONRADIO = DFCS_STATE(4);

const DFCS_BUTTON3STATE = DFCS_STATE(8);

const DFCS_BUTTONPUSH = DFCS_STATE(16);

const DFCS_INACTIVE = DFCS_STATE(256);

const DFCS_PUSHED = DFCS_STATE(512);

const DFCS_CHECKED = DFCS_STATE(1024);

const DFCS_TRANSPARENT = DFCS_STATE(2048);

const DFCS_HOT = DFCS_STATE(4096);

const DFCS_ADJUSTRECT = DFCS_STATE(8192);

const DFCS_FLAT = DFCS_STATE(16384);

const DFCS_MONO = DFCS_STATE(32768);

/// {@category enum}
extension type const DFC_TYPE(int _) implements int {}

const DFC_CAPTION = DFC_TYPE(1);

const DFC_MENU = DFC_TYPE(2);

const DFC_SCROLL = DFC_TYPE(3);

const DFC_BUTTON = DFC_TYPE(4);

const DFC_POPUPMENU = DFC_TYPE(5);

/// Describes per-monitor DPI scaling behavior overrides for child windows
/// within dialogs.
///
/// The values in this enumeration are bitfields and can be combined.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ne-winuser-dialog_control_dpi_change_behaviors>.
///
/// {@category enum}
extension type const DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS other) => _ & other._ == other._;

  DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS operator &(int other) => .new(_ & other);
  DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS operator |(int other) => .new(_ | other);
}

/// The default behavior of the dialog manager.
const DCDC_DEFAULT = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(0);

/// Prevents the dialog manager from sending an updated font to the child window
/// via WM_SETFONT in response to a DPI change.
const DCDC_DISABLE_FONT_UPDATE = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(1);

/// Prevents the dialog manager from resizing and repositioning the child window
/// in response to a DPI change.
const DCDC_DISABLE_RELAYOUT = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(2);

/// In Per Monitor v2 contexts, dialogs will automatically respond to DPI
/// changes by resizing themselves and re-computing the positions of their child
/// windows (here referred to as re-layouting).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ne-winuser-dialog_dpi_change_behaviors>.
///
/// {@category enum}
extension type const DIALOG_DPI_CHANGE_BEHAVIORS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DIALOG_DPI_CHANGE_BEHAVIORS other) => _ & other._ == other._;

  DIALOG_DPI_CHANGE_BEHAVIORS operator &(int other) => .new(_ & other);
  DIALOG_DPI_CHANGE_BEHAVIORS operator |(int other) => .new(_ | other);
}

/// The default behavior of the dialog manager.
const DDC_DEFAULT = DIALOG_DPI_CHANGE_BEHAVIORS(0);

/// Prevents the dialog manager from responding to <a
/// href="https://docs.microsoft.com/windows/desktop/hidpi/wm-getdpiscaledsize">WM_GETDPISCALEDSIZE</a>
/// and <a
/// href="https://docs.microsoft.com/windows/desktop/hidpi/wm-dpichanged">WM_DPICHANGED</a>,
/// disabling all default DPI scaling behavior.
const DDC_DISABLE_ALL = DIALOG_DPI_CHANGE_BEHAVIORS(1);

/// Prevents the dialog manager from resizing the dialog in response to a DPI
/// change.
const DDC_DISABLE_RESIZE = DIALOG_DPI_CHANGE_BEHAVIORS(2);

/// Prevents the dialog manager from re-layouting all of the dialogue's
/// immediate children HWNDs in response to a DPI change.
const DDC_DISABLE_CONTROL_RELAYOUT = DIALOG_DPI_CHANGE_BEHAVIORS(4);

/// {@category enum}
extension type const DIB_USAGE(int _) implements int {}

const DIB_RGB_COLORS = DIB_USAGE(0);

const DIB_PAL_COLORS = DIB_USAGE(1);

/// {@category enum}
extension type const DISPATCH_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DISPATCH_FLAGS other) => _ & other._ == other._;

  DISPATCH_FLAGS operator &(int other) => .new(_ & other);
  DISPATCH_FLAGS operator |(int other) => .new(_ | other);
}

const DISPATCH_METHOD = DISPATCH_FLAGS(1);

const DISPATCH_PROPERTYGET = DISPATCH_FLAGS(2);

const DISPATCH_PROPERTYPUT = DISPATCH_FLAGS(4);

const DISPATCH_PROPERTYPUTREF = DISPATCH_FLAGS(8);

/// Specifies the type of display device info to configure or obtain through the
/// DisplayConfigSetDeviceInfo or DisplayConfigGetDeviceInfo function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_device_info_type>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_DEVICE_INFO_TYPE(int _) implements int {}

/// Specifies the source name of the display device.
const DISPLAYCONFIG_DEVICE_INFO_GET_SOURCE_NAME =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(1);

/// Specifies information about the monitor.
const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_NAME =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(2);

/// Specifies information about the preferred mode of a monitor.
const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_PREFERRED_MODE =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(3);

/// Specifies the graphics adapter name.
const DISPLAYCONFIG_DEVICE_INFO_GET_ADAPTER_NAME =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(4);

/// Specifies how to set the monitor.
const DISPLAYCONFIG_DEVICE_INFO_SET_TARGET_PERSISTENCE =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(5);

/// Specifies how to set the base output technology for a given target ID.
const DISPLAYCONFIG_DEVICE_INFO_GET_TARGET_BASE_TYPE =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(6);

/// Specifies the state of virtual mode support.
const DISPLAYCONFIG_DEVICE_INFO_GET_SUPPORT_VIRTUAL_RESOLUTION =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(7);

/// Specifies how to set the state of virtual mode support.
const DISPLAYCONFIG_DEVICE_INFO_SET_SUPPORT_VIRTUAL_RESOLUTION =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(8);

const DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(9);

const DISPLAYCONFIG_DEVICE_INFO_SET_ADVANCED_COLOR_STATE =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(10);

/// Specifies the current SDR white level for an HDR monitor.
const DISPLAYCONFIG_DEVICE_INFO_GET_SDR_WHITE_LEVEL =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(11);

const DISPLAYCONFIG_DEVICE_INFO_GET_MONITOR_SPECIALIZATION =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(12);

const DISPLAYCONFIG_DEVICE_INFO_SET_MONITOR_SPECIALIZATION =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(13);

const DISPLAYCONFIG_DEVICE_INFO_SET_RESERVED1 = DISPLAYCONFIG_DEVICE_INFO_TYPE(
  14,
);

const DISPLAYCONFIG_DEVICE_INFO_GET_ADVANCED_COLOR_INFO_2 =
    DISPLAYCONFIG_DEVICE_INFO_TYPE(15);

const DISPLAYCONFIG_DEVICE_INFO_SET_HDR_STATE = DISPLAYCONFIG_DEVICE_INFO_TYPE(
  16,
);

const DISPLAYCONFIG_DEVICE_INFO_SET_WCG_STATE = DISPLAYCONFIG_DEVICE_INFO_TYPE(
  17,
);

/// Specifies that the information that is contained within the
/// DISPLAYCONFIG_MODE_INFO structure is either source or target mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_mode_info_type>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_MODE_INFO_TYPE(int _) implements int {}

/// Indicates that the <a
/// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
/// structure contains source mode information.
const DISPLAYCONFIG_MODE_INFO_TYPE_SOURCE = DISPLAYCONFIG_MODE_INFO_TYPE(1);

/// Indicates that the <a
/// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
/// structure contains target mode information.
const DISPLAYCONFIG_MODE_INFO_TYPE_TARGET = DISPLAYCONFIG_MODE_INFO_TYPE(2);

/// Indicates that the <a
/// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_mode_info">DISPLAYCONFIG_MODE_INFO</a>
/// structure contains a valid <a
/// href="https://docs.microsoft.com/windows/desktop/api/wingdi/ns-wingdi-displayconfig_desktop_image_info">DISPLAYCONFIG_DESKTOP_IMAGE_INFO</a>
/// structure.
const DISPLAYCONFIG_MODE_INFO_TYPE_DESKTOP_IMAGE = DISPLAYCONFIG_MODE_INFO_TYPE(
  3,
);

/// Specifies pixel format in various bits per pixel (BPP) values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_pixelformat>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_PIXELFORMAT(int _) implements int {}

/// Indicates 8 BPP format.
const DISPLAYCONFIG_PIXELFORMAT_8BPP = DISPLAYCONFIG_PIXELFORMAT(1);

/// Indicates 16 BPP format.
const DISPLAYCONFIG_PIXELFORMAT_16BPP = DISPLAYCONFIG_PIXELFORMAT(2);

/// Indicates 24 BPP format.
const DISPLAYCONFIG_PIXELFORMAT_24BPP = DISPLAYCONFIG_PIXELFORMAT(3);

/// Indicates 32 BPP format.
const DISPLAYCONFIG_PIXELFORMAT_32BPP = DISPLAYCONFIG_PIXELFORMAT(4);

/// Indicates that the current display is not an 8, 16, 24, or 32 BPP GDI
/// desktop mode.
const DISPLAYCONFIG_PIXELFORMAT_NONGDI = DISPLAYCONFIG_PIXELFORMAT(5);

/// Specifies the clockwise rotation of the display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_rotation>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_ROTATION(int _) implements int {}

/// Indicates that rotation is 0 degrees—landscape mode.
const DISPLAYCONFIG_ROTATION_IDENTITY = DISPLAYCONFIG_ROTATION(1);

/// Indicates that rotation is 90 degrees clockwise—portrait mode.
const DISPLAYCONFIG_ROTATION_ROTATE90 = DISPLAYCONFIG_ROTATION(2);

/// Indicates that rotation is 180 degrees clockwise—inverted landscape mode.
const DISPLAYCONFIG_ROTATION_ROTATE180 = DISPLAYCONFIG_ROTATION(3);

/// Indicates that rotation is 270 degrees clockwise—inverted portrait mode.
const DISPLAYCONFIG_ROTATION_ROTATE270 = DISPLAYCONFIG_ROTATION(4);

/// Specifies the scaling transformation applied to content displayed on a video
/// present network (VidPN) present path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_scaling>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_SCALING(int _) implements int {}

/// Indicates the identity transformation; the source content is presented with
/// no change.
const DISPLAYCONFIG_SCALING_IDENTITY = DISPLAYCONFIG_SCALING(1);

/// Indicates the centering transformation; the source content is presented
/// unscaled, centered with respect to the spatial resolution of the target
/// mode.
const DISPLAYCONFIG_SCALING_CENTERED = DISPLAYCONFIG_SCALING(2);

/// Indicates the content is scaled to fit the path's target.
const DISPLAYCONFIG_SCALING_STRETCHED = DISPLAYCONFIG_SCALING(3);

/// Indicates the aspect-ratio centering transformation.
const DISPLAYCONFIG_SCALING_ASPECTRATIOCENTEREDMAX = DISPLAYCONFIG_SCALING(4);

/// Indicates that the caller requests a custom scaling that the caller cannot
/// describe with any of the other DISPLAYCONFIG_SCALING_XXX values.
const DISPLAYCONFIG_SCALING_CUSTOM = DISPLAYCONFIG_SCALING(5);

/// Indicates that the caller does not have any preference for the scaling.
const DISPLAYCONFIG_SCALING_PREFERRED = DISPLAYCONFIG_SCALING(128);

/// Specifies the method that the display uses to create an image on a screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_scanline_ordering>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_SCANLINE_ORDERING(int _) implements int {}

/// Indicates that scan-line ordering of the output is unspecified.
const DISPLAYCONFIG_SCANLINE_ORDERING_UNSPECIFIED =
    DISPLAYCONFIG_SCANLINE_ORDERING(0);

/// Indicates that the output is a progressive image.
const DISPLAYCONFIG_SCANLINE_ORDERING_PROGRESSIVE =
    DISPLAYCONFIG_SCANLINE_ORDERING(1);

/// Indicates that the output is an interlaced image that is created beginning
/// with the upper field.
const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED =
    DISPLAYCONFIG_SCANLINE_ORDERING(2);

/// Indicates that the output is an interlaced image that is created beginning
/// with the upper field.
const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_UPPERFIELDFIRST =
    DISPLAYCONFIG_SCANLINE_ORDERING(2);

/// Indicates that the output is an interlaced image that is created beginning
/// with the lower field.
const DISPLAYCONFIG_SCANLINE_ORDERING_INTERLACED_LOWERFIELDFIRST =
    DISPLAYCONFIG_SCANLINE_ORDERING(3);

/// Specifies the target's connector type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/ne-wingdi-displayconfig_video_output_technology>.
///
/// {@category enum}
extension type const DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(int _)
    implements int {}

/// Indicates a connector that is not one of the types that is indicated by the
/// following enumerators in this enumeration.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_OTHER =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(-1);

/// Indicates an HD15 (VGA) connector.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HD15 =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(0);

/// Indicates an S-video connector.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SVIDEO =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(1);

/// Indicates a composite video connector group.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPOSITE_VIDEO =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(2);

/// Indicates a component video connector group.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_COMPONENT_VIDEO =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(3);

/// Indicates a Digital Video Interface (DVI) connector.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DVI =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(4);

/// Indicates a High-Definition Multimedia Interface (HDMI) connector.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_HDMI =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(5);

/// Indicates a Low Voltage Differential Swing (LVDS) connector.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_LVDS =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(6);

/// Indicates a Japanese D connector.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_D_JPN =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(8);

/// Indicates an SDI connector.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDI =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(9);

/// Indicates an external display port, which is a display port that connects
/// externally to a display device.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EXTERNAL =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(10);

/// Indicates an embedded display port that connects internally to a display
/// device.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_EMBEDDED =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(11);

/// Indicates an external Unified Display Interface (UDI), which is a UDI that
/// connects externally to a display device.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EXTERNAL =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(12);

/// Indicates an embedded UDI that connects internally to a display device.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_UDI_EMBEDDED =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(13);

/// Indicates a dongle cable that supports standard definition television
/// (SDTV).
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_SDTVDONGLE =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(14);

/// Indicates that the VidPN target is a Miracast wireless display device.
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_MIRACAST =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(15);

const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_WIRED =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(16);

const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INDIRECT_VIRTUAL =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(17);

const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_DISPLAYPORT_USB_TUNNEL =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(18);

/// Indicates that the video output device connects internally to a display
/// device (for example, the internal connection in a laptop computer).
const DISPLAYCONFIG_OUTPUT_TECHNOLOGY_INTERNAL =
    DISPLAYCONFIG_VIDEO_OUTPUT_TECHNOLOGY(-2147483648);

/// {@category enum}
extension type const DISPLAY_DEVICE_STATE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DISPLAY_DEVICE_STATE_FLAGS other) => _ & other._ == other._;

  DISPLAY_DEVICE_STATE_FLAGS operator &(int other) => .new(_ & other);
  DISPLAY_DEVICE_STATE_FLAGS operator |(int other) => .new(_ | other);
}

const DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = DISPLAY_DEVICE_STATE_FLAGS(1);

const DISPLAY_DEVICE_MULTI_DRIVER = DISPLAY_DEVICE_STATE_FLAGS(2);

const DISPLAY_DEVICE_PRIMARY_DEVICE = DISPLAY_DEVICE_STATE_FLAGS(4);

const DISPLAY_DEVICE_MIRRORING_DRIVER = DISPLAY_DEVICE_STATE_FLAGS(8);

const DISPLAY_DEVICE_VGA_COMPATIBLE = DISPLAY_DEVICE_STATE_FLAGS(16);

const DISPLAY_DEVICE_REMOVABLE = DISPLAY_DEVICE_STATE_FLAGS(32);

const DISPLAY_DEVICE_ACC_DRIVER = DISPLAY_DEVICE_STATE_FLAGS(64);

const DISPLAY_DEVICE_MODESPRUNED = DISPLAY_DEVICE_STATE_FLAGS(134217728);

const DISPLAY_DEVICE_RDPUDD = DISPLAY_DEVICE_STATE_FLAGS(16777216);

const DISPLAY_DEVICE_REMOTE = DISPLAY_DEVICE_STATE_FLAGS(67108864);

const DISPLAY_DEVICE_DISCONNECT = DISPLAY_DEVICE_STATE_FLAGS(33554432);

const DISPLAY_DEVICE_TS_COMPATIBLE = DISPLAY_DEVICE_STATE_FLAGS(2097152);

const DISPLAY_DEVICE_UNSAFE_MODES_ON = DISPLAY_DEVICE_STATE_FLAGS(524288);

const DISPLAY_DEVICE_ACTIVE = DISPLAY_DEVICE_STATE_FLAGS(1);

const DISPLAY_DEVICE_ATTACHED = DISPLAY_DEVICE_STATE_FLAGS(2);

/// {@category enum}
extension type const DISP_CHANGE(int _) implements int {}

const DISP_CHANGE_SUCCESSFUL = DISP_CHANGE(0);

const DISP_CHANGE_RESTART = DISP_CHANGE(1);

const DISP_CHANGE_FAILED = DISP_CHANGE(-1);

const DISP_CHANGE_BADMODE = DISP_CHANGE(-2);

const DISP_CHANGE_NOTUPDATED = DISP_CHANGE(-3);

const DISP_CHANGE_BADFLAGS = DISP_CHANGE(-4);

const DISP_CHANGE_BADPARAM = DISP_CHANGE(-5);

const DISP_CHANGE_BADDUALVIEW = DISP_CHANGE(-6);

/// {@category enum}
extension type const DLG_BUTTON_CHECK_STATE(int _) implements int {}

const BST_CHECKED = DLG_BUTTON_CHECK_STATE(1);

const BST_INDETERMINATE = DLG_BUTTON_CHECK_STATE(2);

const BST_UNCHECKED = DLG_BUTTON_CHECK_STATE(0);

/// Defines a wireless LAN authentication algorithm.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-auth-algorithm>.
///
/// {@category enum}
extension type const DOT11_AUTH_ALGORITHM(int _) implements int {}

const DOT11_AUTH_ALGO_80211_OPEN = DOT11_AUTH_ALGORITHM(1);

const DOT11_AUTH_ALGO_80211_SHARED_KEY = DOT11_AUTH_ALGORITHM(2);

const DOT11_AUTH_ALGO_WPA = DOT11_AUTH_ALGORITHM(3);

const DOT11_AUTH_ALGO_WPA_PSK = DOT11_AUTH_ALGORITHM(4);

const DOT11_AUTH_ALGO_WPA_NONE = DOT11_AUTH_ALGORITHM(5);

const DOT11_AUTH_ALGO_RSNA = DOT11_AUTH_ALGORITHM(6);

const DOT11_AUTH_ALGO_RSNA_PSK = DOT11_AUTH_ALGORITHM(7);

const DOT11_AUTH_ALGO_WPA3 = DOT11_AUTH_ALGORITHM(8);

const DOT11_AUTH_ALGO_WPA3_ENT_192 = DOT11_AUTH_ALGORITHM(8);

const DOT11_AUTH_ALGO_WPA3_SAE = DOT11_AUTH_ALGORITHM(9);

const DOT11_AUTH_ALGO_OWE = DOT11_AUTH_ALGORITHM(10);

const DOT11_AUTH_ALGO_WPA3_ENT = DOT11_AUTH_ALGORITHM(11);

const DOT11_AUTH_ALGO_IHV_START = DOT11_AUTH_ALGORITHM(-2147483648);

const DOT11_AUTH_ALGO_IHV_END = DOT11_AUTH_ALGORITHM(-1);

/// Defines a basic service set (BSS) network type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-bss-type>.
///
/// {@category enum}
extension type const DOT11_BSS_TYPE(int _) implements int {}

const dot11_BSS_type_infrastructure = DOT11_BSS_TYPE(1);

const dot11_BSS_type_independent = DOT11_BSS_TYPE(2);

const dot11_BSS_type_any = DOT11_BSS_TYPE(3);

/// Defines a cipher algorithm for data encryption and decryption.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-cipher-algorithm>.
///
/// {@category enum}
extension type const DOT11_CIPHER_ALGORITHM(int _) implements int {}

const DOT11_CIPHER_ALGO_NONE = DOT11_CIPHER_ALGORITHM(0);

const DOT11_CIPHER_ALGO_WEP40 = DOT11_CIPHER_ALGORITHM(1);

const DOT11_CIPHER_ALGO_TKIP = DOT11_CIPHER_ALGORITHM(2);

const DOT11_CIPHER_ALGO_CCMP = DOT11_CIPHER_ALGORITHM(4);

const DOT11_CIPHER_ALGO_WEP104 = DOT11_CIPHER_ALGORITHM(5);

const DOT11_CIPHER_ALGO_BIP = DOT11_CIPHER_ALGORITHM(6);

const DOT11_CIPHER_ALGO_GCMP = DOT11_CIPHER_ALGORITHM(8);

const DOT11_CIPHER_ALGO_GCMP_256 = DOT11_CIPHER_ALGORITHM(9);

const DOT11_CIPHER_ALGO_CCMP_256 = DOT11_CIPHER_ALGORITHM(10);

const DOT11_CIPHER_ALGO_BIP_GMAC_128 = DOT11_CIPHER_ALGORITHM(11);

const DOT11_CIPHER_ALGO_BIP_GMAC_256 = DOT11_CIPHER_ALGORITHM(12);

const DOT11_CIPHER_ALGO_BIP_CMAC_256 = DOT11_CIPHER_ALGORITHM(13);

const DOT11_CIPHER_ALGO_WPA_USE_GROUP = DOT11_CIPHER_ALGORITHM(256);

const DOT11_CIPHER_ALGO_RSN_USE_GROUP = DOT11_CIPHER_ALGORITHM(256);

const DOT11_CIPHER_ALGO_WEP = DOT11_CIPHER_ALGORITHM(257);

const DOT11_CIPHER_ALGO_IHV_START = DOT11_CIPHER_ALGORITHM(-2147483648);

const DOT11_CIPHER_ALGO_IHV_END = DOT11_CIPHER_ALGORITHM(-1);

/// Defines an 802.11 PHY and media type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/NativeWiFi/dot11-phy-type>.
///
/// {@category enum}
extension type const DOT11_PHY_TYPE(int _) implements int {}

const dot11_phy_type_unknown = DOT11_PHY_TYPE(0);

const dot11_phy_type_any = DOT11_PHY_TYPE(0);

const dot11_phy_type_fhss = DOT11_PHY_TYPE(1);

const dot11_phy_type_dsss = DOT11_PHY_TYPE(2);

const dot11_phy_type_irbaseband = DOT11_PHY_TYPE(3);

const dot11_phy_type_ofdm = DOT11_PHY_TYPE(4);

const dot11_phy_type_hrdsss = DOT11_PHY_TYPE(5);

const dot11_phy_type_erp = DOT11_PHY_TYPE(6);

const dot11_phy_type_ht = DOT11_PHY_TYPE(7);

const dot11_phy_type_vht = DOT11_PHY_TYPE(8);

const dot11_phy_type_dmg = DOT11_PHY_TYPE(9);

const dot11_phy_type_he = DOT11_PHY_TYPE(10);

const dot11_phy_type_eht = DOT11_PHY_TYPE(11);

const dot11_phy_type_IHV_start = DOT11_PHY_TYPE(-2147483648);

const dot11_phy_type_IHV_end = DOT11_PHY_TYPE(-1);

/// Specifies an 802.11 radio state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-dot11_radio_state~r1>.
///
/// {@category enum}
extension type const DOT11_RADIO_STATE(int _) implements int {}

/// The radio state is unknown.
const dot11_radio_state_unknown = DOT11_RADIO_STATE(0);

/// The radio is on.
const dot11_radio_state_on = DOT11_RADIO_STATE(1);

/// The radio is off.
const dot11_radio_state_off = DOT11_RADIO_STATE(2);

/// Identifies the dots per inch (dpi) setting for a thread, process, or window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ne-windef-dpi_awareness>.
///
/// {@category enum}
extension type const DPI_AWARENESS(int _) implements int {}

/// Invalid DPI awareness.
const DPI_AWARENESS_INVALID = DPI_AWARENESS(-1);

/// DPI unaware.
const DPI_AWARENESS_UNAWARE = DPI_AWARENESS(0);

/// System DPI aware.
const DPI_AWARENESS_SYSTEM_AWARE = DPI_AWARENESS(1);

/// Per monitor DPI aware.
const DPI_AWARENESS_PER_MONITOR_AWARE = DPI_AWARENESS(2);

/// Identifies the DPI hosting behavior for a window.
///
/// This behavior allows windows created in the thread to host child windows
/// with a different DPI_AWARENESS_CONTEXT.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windef/ne-windef-dpi_hosting_behavior>.
///
/// {@category enum}
extension type const DPI_HOSTING_BEHAVIOR(int _) implements int {}

/// Invalid DPI hosting behavior.
const DPI_HOSTING_BEHAVIOR_INVALID = DPI_HOSTING_BEHAVIOR(-1);

/// Default DPI hosting behavior.
const DPI_HOSTING_BEHAVIOR_DEFAULT = DPI_HOSTING_BEHAVIOR(0);

/// Mixed DPI hosting behavior.
const DPI_HOSTING_BEHAVIOR_MIXED = DPI_HOSTING_BEHAVIOR(1);

/// {@category enum}
extension type const DRAWEDGE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DRAWEDGE_FLAGS other) => _ & other._ == other._;

  DRAWEDGE_FLAGS operator &(int other) => .new(_ & other);
  DRAWEDGE_FLAGS operator |(int other) => .new(_ | other);
}

const BDR_RAISEDOUTER = DRAWEDGE_FLAGS(1);

const BDR_SUNKENOUTER = DRAWEDGE_FLAGS(2);

const BDR_RAISEDINNER = DRAWEDGE_FLAGS(4);

const BDR_SUNKENINNER = DRAWEDGE_FLAGS(8);

const BDR_OUTER = DRAWEDGE_FLAGS(3);

const BDR_INNER = DRAWEDGE_FLAGS(12);

const BDR_RAISED = DRAWEDGE_FLAGS(5);

const BDR_SUNKEN = DRAWEDGE_FLAGS(10);

const EDGE_RAISED = DRAWEDGE_FLAGS(5);

const EDGE_SUNKEN = DRAWEDGE_FLAGS(10);

const EDGE_ETCHED = DRAWEDGE_FLAGS(6);

const EDGE_BUMP = DRAWEDGE_FLAGS(9);

/// {@category enum}
extension type const DRAWSTATE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DRAWSTATE_FLAGS other) => _ & other._ == other._;

  DRAWSTATE_FLAGS operator &(int other) => .new(_ & other);
  DRAWSTATE_FLAGS operator |(int other) => .new(_ | other);
}

const DST_COMPLEX = DRAWSTATE_FLAGS(0);

const DST_TEXT = DRAWSTATE_FLAGS(1);

const DST_PREFIXTEXT = DRAWSTATE_FLAGS(2);

const DST_ICON = DRAWSTATE_FLAGS(3);

const DST_BITMAP = DRAWSTATE_FLAGS(4);

const DSS_NORMAL = DRAWSTATE_FLAGS(0);

const DSS_UNION = DRAWSTATE_FLAGS(16);

const DSS_DISABLED = DRAWSTATE_FLAGS(32);

const DSS_MONO = DRAWSTATE_FLAGS(128);

const DSS_HIDEPREFIX = DRAWSTATE_FLAGS(512);

const DSS_PREFIXONLY = DRAWSTATE_FLAGS(1024);

const DSS_RIGHT = DRAWSTATE_FLAGS(32768);

/// {@category enum}
extension type const DRAW_CAPTION_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DRAW_CAPTION_FLAGS other) => _ & other._ == other._;

  DRAW_CAPTION_FLAGS operator &(int other) => .new(_ & other);
  DRAW_CAPTION_FLAGS operator |(int other) => .new(_ | other);
}

const DC_ACTIVE = DRAW_CAPTION_FLAGS(1);

const DC_BUTTONS = DRAW_CAPTION_FLAGS(4096);

const DC_GRADIENT = DRAW_CAPTION_FLAGS(32);

const DC_ICON = DRAW_CAPTION_FLAGS(4);

const DC_INBUTTON = DRAW_CAPTION_FLAGS(16);

const DC_SMALLCAP = DRAW_CAPTION_FLAGS(2);

const DC_TEXT = DRAW_CAPTION_FLAGS(8);

/// {@category enum}
extension type const DRAW_EDGE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DRAW_EDGE_FLAGS other) => _ & other._ == other._;

  DRAW_EDGE_FLAGS operator &(int other) => .new(_ & other);
  DRAW_EDGE_FLAGS operator |(int other) => .new(_ | other);
}

const BF_ADJUST = DRAW_EDGE_FLAGS(8192);

const BF_BOTTOM = DRAW_EDGE_FLAGS(8);

const BF_BOTTOMLEFT = DRAW_EDGE_FLAGS(9);

const BF_BOTTOMRIGHT = DRAW_EDGE_FLAGS(12);

const BF_DIAGONAL = DRAW_EDGE_FLAGS(16);

const BF_DIAGONAL_ENDBOTTOMLEFT = DRAW_EDGE_FLAGS(25);

const BF_DIAGONAL_ENDBOTTOMRIGHT = DRAW_EDGE_FLAGS(28);

const BF_DIAGONAL_ENDTOPLEFT = DRAW_EDGE_FLAGS(19);

const BF_DIAGONAL_ENDTOPRIGHT = DRAW_EDGE_FLAGS(22);

const BF_FLAT = DRAW_EDGE_FLAGS(16384);

const BF_LEFT = DRAW_EDGE_FLAGS(1);

const BF_MIDDLE = DRAW_EDGE_FLAGS(2048);

const BF_MONO = DRAW_EDGE_FLAGS(32768);

const BF_RECT = DRAW_EDGE_FLAGS(15);

const BF_RIGHT = DRAW_EDGE_FLAGS(4);

const BF_SOFT = DRAW_EDGE_FLAGS(4096);

const BF_TOP = DRAW_EDGE_FLAGS(2);

const BF_TOPLEFT = DRAW_EDGE_FLAGS(3);

const BF_TOPRIGHT = DRAW_EDGE_FLAGS(6);

/// {@category enum}
extension type const DRAW_TEXT_FORMAT(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DRAW_TEXT_FORMAT other) => _ & other._ == other._;

  DRAW_TEXT_FORMAT operator &(int other) => .new(_ & other);
  DRAW_TEXT_FORMAT operator |(int other) => .new(_ | other);
}

const DT_BOTTOM = DRAW_TEXT_FORMAT(8);

const DT_CALCRECT = DRAW_TEXT_FORMAT(1024);

const DT_CENTER = DRAW_TEXT_FORMAT(1);

const DT_EDITCONTROL = DRAW_TEXT_FORMAT(8192);

const DT_END_ELLIPSIS = DRAW_TEXT_FORMAT(32768);

const DT_EXPANDTABS = DRAW_TEXT_FORMAT(64);

const DT_EXTERNALLEADING = DRAW_TEXT_FORMAT(512);

const DT_HIDEPREFIX = DRAW_TEXT_FORMAT(1048576);

const DT_INTERNAL = DRAW_TEXT_FORMAT(4096);

const DT_LEFT = DRAW_TEXT_FORMAT(0);

const DT_MODIFYSTRING = DRAW_TEXT_FORMAT(65536);

const DT_NOCLIP = DRAW_TEXT_FORMAT(256);

const DT_NOFULLWIDTHCHARBREAK = DRAW_TEXT_FORMAT(524288);

const DT_NOPREFIX = DRAW_TEXT_FORMAT(2048);

const DT_PATH_ELLIPSIS = DRAW_TEXT_FORMAT(16384);

const DT_PREFIXONLY = DRAW_TEXT_FORMAT(2097152);

const DT_RIGHT = DRAW_TEXT_FORMAT(2);

const DT_RTLREADING = DRAW_TEXT_FORMAT(131072);

const DT_SINGLELINE = DRAW_TEXT_FORMAT(32);

const DT_TABSTOP = DRAW_TEXT_FORMAT(128);

const DT_TOP = DRAW_TEXT_FORMAT(0);

const DT_VCENTER = DRAW_TEXT_FORMAT(4);

const DT_WORDBREAK = DRAW_TEXT_FORMAT(16);

const DT_WORD_ELLIPSIS = DRAW_TEXT_FORMAT(262144);

/// {@category enum}
extension type const DRAW_THEME_PARENT_BACKGROUND_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DRAW_THEME_PARENT_BACKGROUND_FLAGS other) => _ & other._ == other._;

  DRAW_THEME_PARENT_BACKGROUND_FLAGS operator &(int other) => .new(_ & other);
  DRAW_THEME_PARENT_BACKGROUND_FLAGS operator |(int other) => .new(_ | other);
}

const DTPB_WINDOWDC = DRAW_THEME_PARENT_BACKGROUND_FLAGS(1);

const DTPB_USECTLCOLORSTATIC = DRAW_THEME_PARENT_BACKGROUND_FLAGS(2);

const DTPB_USEERASEBKGND = DRAW_THEME_PARENT_BACKGROUND_FLAGS(4);

/// Specifies the possible ways that a device can be joined to Microsoft Azure
/// Active Directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/ne-lmjoin-dsreg_join_type>.
///
/// {@category enum}
extension type const DSREG_JOIN_TYPE(int _) implements int {}

/// The type of join is not known.
const DSREG_UNKNOWN_JOIN = DSREG_JOIN_TYPE(0);

/// The device is joined to Azure Active Directory (Azure AD).
const DSREG_DEVICE_JOIN = DSREG_JOIN_TYPE(1);

/// The device is registered to Azure Active Directory (Azure AD), meaning an
/// Azure AD work account is added on the device.
const DSREG_WORKPLACE_JOIN = DSREG_JOIN_TYPE(2);

/// {@category enum}
extension type const DTTOPTS_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DTTOPTS_FLAGS other) => _ & other._ == other._;

  DTTOPTS_FLAGS operator &(int other) => .new(_ & other);
  DTTOPTS_FLAGS operator |(int other) => .new(_ | other);
}

const DTT_TEXTCOLOR = DTTOPTS_FLAGS(1);

const DTT_BORDERCOLOR = DTTOPTS_FLAGS(2);

const DTT_SHADOWCOLOR = DTTOPTS_FLAGS(4);

const DTT_SHADOWTYPE = DTTOPTS_FLAGS(8);

const DTT_SHADOWOFFSET = DTTOPTS_FLAGS(16);

const DTT_BORDERSIZE = DTTOPTS_FLAGS(32);

const DTT_FONTPROP = DTTOPTS_FLAGS(64);

const DTT_COLORPROP = DTTOPTS_FLAGS(128);

const DTT_STATEID = DTTOPTS_FLAGS(256);

const DTT_CALCRECT = DTTOPTS_FLAGS(512);

const DTT_APPLYOVERLAY = DTTOPTS_FLAGS(1024);

const DTT_GLOWSIZE = DTTOPTS_FLAGS(2048);

const DTT_CALLBACK = DTTOPTS_FLAGS(4096);

const DTT_COMPOSITED = DTTOPTS_FLAGS(8192);

const DTT_VALIDBITS = DTTOPTS_FLAGS(12287);

/// {@category enum}
extension type const DUPLICATE_HANDLE_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DUPLICATE_HANDLE_OPTIONS other) => _ & other._ == other._;

  DUPLICATE_HANDLE_OPTIONS operator &(int other) => .new(_ & other);
  DUPLICATE_HANDLE_OPTIONS operator |(int other) => .new(_ | other);
}

const DUPLICATE_CLOSE_SOURCE = DUPLICATE_HANDLE_OPTIONS(1);

const DUPLICATE_SAME_ACCESS = DUPLICATE_HANDLE_OPTIONS(2);

/// Flags used by the `DwmGetWindowAttribute` and `DwmSetWindowAttribute`
/// functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ne-dwmapi-dwmwindowattribute>.
///
/// {@category enum}
extension type const DWMWINDOWATTRIBUTE(int _) implements int {}

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmgetwindowattribute">DwmGetWindowAttribute</a>.
const DWMWA_NCRENDERING_ENABLED = DWMWINDOWATTRIBUTE(1);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_NCRENDERING_POLICY = DWMWINDOWATTRIBUTE(2);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_TRANSITIONS_FORCEDISABLED = DWMWINDOWATTRIBUTE(3);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_ALLOW_NCPAINT = DWMWINDOWATTRIBUTE(4);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmgetwindowattribute">DwmGetWindowAttribute</a>.
const DWMWA_CAPTION_BUTTON_BOUNDS = DWMWINDOWATTRIBUTE(5);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_NONCLIENT_RTL_LAYOUT = DWMWINDOWATTRIBUTE(6);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_FORCE_ICONIC_REPRESENTATION = DWMWINDOWATTRIBUTE(7);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_FLIP3D_POLICY = DWMWINDOWATTRIBUTE(8);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmgetwindowattribute">DwmGetWindowAttribute</a>.
const DWMWA_EXTENDED_FRAME_BOUNDS = DWMWINDOWATTRIBUTE(9);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_HAS_ICONIC_BITMAP = DWMWINDOWATTRIBUTE(10);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_DISALLOW_PEEK = DWMWINDOWATTRIBUTE(11);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_EXCLUDED_FROM_PEEK = DWMWINDOWATTRIBUTE(12);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_CLOAK = DWMWINDOWATTRIBUTE(13);

const DWMWA_CLOAKED = DWMWINDOWATTRIBUTE(14);

/// Use with <a
/// href="https://docs.microsoft.com/windows/desktop/api/dwmapi/nf-dwmapi-dwmsetwindowattribute">DwmSetWindowAttribute</a>.
const DWMWA_FREEZE_REPRESENTATION = DWMWINDOWATTRIBUTE(15);

const DWMWA_PASSIVE_UPDATE_MODE = DWMWINDOWATTRIBUTE(16);

/// Use with `DwmSetWindowAttribute`.
const DWMWA_USE_HOSTBACKDROPBRUSH = DWMWINDOWATTRIBUTE(17);

/// Use with `DwmSetWindowAttribute`.
const DWMWA_USE_IMMERSIVE_DARK_MODE = DWMWINDOWATTRIBUTE(20);

/// Use with `DwmSetWindowAttribute`.
const DWMWA_WINDOW_CORNER_PREFERENCE = DWMWINDOWATTRIBUTE(33);

/// Use with `DwmSetWindowAttribute`.
const DWMWA_BORDER_COLOR = DWMWINDOWATTRIBUTE(34);

/// Use with `DwmSetWindowAttribute`.
const DWMWA_CAPTION_COLOR = DWMWINDOWATTRIBUTE(35);

/// Use with `DwmSetWindowAttribute`.
const DWMWA_TEXT_COLOR = DWMWINDOWATTRIBUTE(36);

/// Use with `DwmGetWindowAttribute`.
const DWMWA_VISIBLE_FRAME_BORDER_THICKNESS = DWMWINDOWATTRIBUTE(37);

/// Use with `DwmGetWindowAttribute` or `DwmSetWindowAttribute`.
const DWMWA_SYSTEMBACKDROP_TYPE = DWMWINDOWATTRIBUTE(38);

const DWMWA_REDIRECTIONBITMAP_ALPHA = DWMWINDOWATTRIBUTE(39);

const DWMWA_BORDER_MARGINS = DWMWINDOWATTRIBUTE(40);

/// The maximum recognized <b>DWMWINDOWATTRIBUTE</b> value, used for validation
/// purposes.
const DWMWA_LAST = DWMWINDOWATTRIBUTE(41);

/// Specifies the input operations for which visual feedback should be provided.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ne-dwmapi-dwm_showcontact>.
///
/// {@category enum}
extension type const DWM_SHOWCONTACT(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(DWM_SHOWCONTACT other) => _ & other._ == other._;

  DWM_SHOWCONTACT operator &(int other) => .new(_ & other);
  DWM_SHOWCONTACT operator |(int other) => .new(_ | other);
}

/// Down.
const DWMSC_DOWN = DWM_SHOWCONTACT(1);

/// Up.
const DWMSC_UP = DWM_SHOWCONTACT(2);

/// Drag.
const DWMSC_DRAG = DWM_SHOWCONTACT(4);

/// Hold.
const DWMSC_HOLD = DWM_SHOWCONTACT(8);

/// Pen barrel.
const DWMSC_PENBARREL = DWM_SHOWCONTACT(16);

/// None.
const DWMSC_NONE = DWM_SHOWCONTACT(0);

/// All.
const DWMSC_ALL = DWM_SHOWCONTACT(4294967295);

/// Specifies the rounded corner preference for a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ne-dwmapi-dwm_window_corner_preference>.
///
/// {@category enum}
extension type const DWM_WINDOW_CORNER_PREFERENCE(int _) implements int {}

/// Let the system decide when to round window corners.
const DWMWCP_DEFAULT = DWM_WINDOW_CORNER_PREFERENCE(0);

/// Never round window corners.
const DWMWCP_DONOTROUND = DWM_WINDOW_CORNER_PREFERENCE(1);

/// Round the corners, if appropriate.
const DWMWCP_ROUND = DWM_WINDOW_CORNER_PREFERENCE(2);

/// Round the corners if appropriate, with a small radius.
const DWMWCP_ROUNDSMALL = DWM_WINDOW_CORNER_PREFERENCE(3);

/// {@category enum}
extension type const DX_FEATURE_LEVEL(int _) implements int {}

const DX_FEATURE_LEVEL_UNSPECIFIED = DX_FEATURE_LEVEL(0);

const DX_FEATURE_LEVEL_9 = DX_FEATURE_LEVEL(1);

const DX_FEATURE_LEVEL_10 = DX_FEATURE_LEVEL(2);

const DX_FEATURE_LEVEL_11 = DX_FEATURE_LEVEL(3);

/// Contains values that specify the location of a docking window represented by
/// the Dock control pattern.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-dockposition>.
///
/// {@category enum}
extension type const DockPosition(int _) implements int {}

/// The window is docked at the top.
const DockPosition_Top = DockPosition(0);

/// The window is docked at the left.
const DockPosition_Left = DockPosition(1);

/// The window is docked at the bottom.
const DockPosition_Bottom = DockPosition(2);

/// The window is docked at the right.
const DockPosition_Right = DockPosition(3);

/// The window is docked on all four sides.
const DockPosition_Fill = DockPosition(4);

/// The window is not docked.
const DockPosition_None = DockPosition(5);

/// Defines constants that indicate the direction in which audio data flows
/// between an audio endpoint device and an application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-edataflow>.
///
/// {@category enum}
extension type const EDataFlow(int _) implements int {}

/// Audio rendering stream.
const eRender = EDataFlow(0);

/// Audio capture stream.
const eCapture = EDataFlow(1);

/// Audio rendering or capture stream.
const eAll = EDataFlow(2);

/// The number of members in the <a
/// href="https://docs.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-edataflow">EDataFlow</a>
/// enumeration (not counting the EDataFlow_enum_count member).
const EDataFlow_enum_count = EDataFlow(3);

/// {@category enum}
extension type const ENABLE_SCROLL_BAR_ARROWS(int _) implements int {}

const ESB_DISABLE_BOTH = ENABLE_SCROLL_BAR_ARROWS(3);

const ESB_DISABLE_DOWN = ENABLE_SCROLL_BAR_ARROWS(2);

const ESB_DISABLE_LEFT = ENABLE_SCROLL_BAR_ARROWS(1);

const ESB_DISABLE_LTUP = ENABLE_SCROLL_BAR_ARROWS(1);

const ESB_DISABLE_RIGHT = ENABLE_SCROLL_BAR_ARROWS(2);

const ESB_DISABLE_RTDN = ENABLE_SCROLL_BAR_ARROWS(2);

const ESB_DISABLE_UP = ENABLE_SCROLL_BAR_ARROWS(1);

const ESB_ENABLE_BOTH = ENABLE_SCROLL_BAR_ARROWS(0);

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ENUM_DISPLAY_SETTINGS_FLAGS other) => _ & other._ == other._;

  ENUM_DISPLAY_SETTINGS_FLAGS operator &(int other) => .new(_ & other);
  ENUM_DISPLAY_SETTINGS_FLAGS operator |(int other) => .new(_ | other);
}

const EDS_RAWMODE = ENUM_DISPLAY_SETTINGS_FLAGS(2);

const EDS_ROTATEDMODE = ENUM_DISPLAY_SETTINGS_FLAGS(4);

/// {@category enum}
extension type const ENUM_DISPLAY_SETTINGS_MODE(int _) implements int {}

const ENUM_CURRENT_SETTINGS = ENUM_DISPLAY_SETTINGS_MODE(4294967295);

const ENUM_REGISTRY_SETTINGS = ENUM_DISPLAY_SETTINGS_MODE(4294967294);

/// {@category enum}
extension type const ENUM_PROCESS_MODULES_EX_FLAGS(int _) implements int {}

const LIST_MODULES_ALL = ENUM_PROCESS_MODULES_EX_FLAGS(3);

const LIST_MODULES_DEFAULT = ENUM_PROCESS_MODULES_EX_FLAGS(0);

const LIST_MODULES_32BIT = ENUM_PROCESS_MODULES_EX_FLAGS(1);

const LIST_MODULES_64BIT = ENUM_PROCESS_MODULES_EX_FLAGS(2);

/// {@category enum}
extension type const ENUM_SERVICE_STATE(int _) implements int {}

const SERVICE_ACTIVE = ENUM_SERVICE_STATE(1);

const SERVICE_INACTIVE = ENUM_SERVICE_STATE(2);

const SERVICE_STATE_ALL = ENUM_SERVICE_STATE(3);

/// {@category enum}
extension type const ENUM_SERVICE_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ENUM_SERVICE_TYPE other) => _ & other._ == other._;

  ENUM_SERVICE_TYPE operator &(int other) => .new(_ & other);
  ENUM_SERVICE_TYPE operator |(int other) => .new(_ | other);
}

const SERVICE_DRIVER = ENUM_SERVICE_TYPE(11);

const SERVICE_KERNEL_DRIVER = ENUM_SERVICE_TYPE(1);

const SERVICE_WIN32 = ENUM_SERVICE_TYPE(48);

const SERVICE_WIN32_SHARE_PROCESS = ENUM_SERVICE_TYPE(32);

const SERVICE_ADAPTER = ENUM_SERVICE_TYPE(4);

const SERVICE_FILE_SYSTEM_DRIVER = ENUM_SERVICE_TYPE(2);

const SERVICE_RECOGNIZER_DRIVER = ENUM_SERVICE_TYPE(8);

const SERVICE_WIN32_OWN_PROCESS = ENUM_SERVICE_TYPE(16);

const SERVICE_USER_OWN_PROCESS = ENUM_SERVICE_TYPE(80);

const SERVICE_USER_SHARE_PROCESS = ENUM_SERVICE_TYPE(96);

/// Specifies various capabilities in CoInitializeSecurity and
/// IClientSecurity::SetBlanket.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/ne-objidlbase-eole_authentication_capabilities>.
///
/// {@category enum}
extension type const EOLE_AUTHENTICATION_CAPABILITIES(int _) implements int {}

/// Indicates that no capability flags are set.
const EOAC_NONE = EOLE_AUTHENTICATION_CAPABILITIES(0);

/// If this flag is specified, it will be ignored.
const EOAC_MUTUAL_AUTH = EOLE_AUTHENTICATION_CAPABILITIES(1);

/// Sets static cloaking.
const EOAC_STATIC_CLOAKING = EOLE_AUTHENTICATION_CAPABILITIES(32);

/// Sets dynamic cloaking.
const EOAC_DYNAMIC_CLOAKING = EOLE_AUTHENTICATION_CAPABILITIES(64);

/// This flag is obsolete.
const EOAC_ANY_AUTHORITY = EOLE_AUTHENTICATION_CAPABILITIES(128);

/// Causes DCOM to send Schannel server principal names in fullsic format to
/// clients as part of the default security negotiation.
const EOAC_MAKE_FULLSIC = EOLE_AUTHENTICATION_CAPABILITIES(256);

/// Tells DCOM to use the valid capabilities from the call to <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-coinitializesecurity">CoInitializeSecurity</a>.
const EOAC_DEFAULT = EOLE_AUTHENTICATION_CAPABILITIES(2048);

/// Authenticates distributed reference count calls to prevent malicious users
/// from releasing objects that are still being used.
const EOAC_SECURE_REFS = EOLE_AUTHENTICATION_CAPABILITIES(2);

/// Indicates that the <i>pSecDesc</i> parameter to <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-coinitializesecurity">CoInitializeSecurity</a>
/// is a pointer to an <a
/// href="https://docs.microsoft.com/windows/desktop/api/iaccess/nn-iaccess-iaccesscontrol">IAccessControl</a>
/// interface on an access control object.
const EOAC_ACCESS_CONTROL = EOLE_AUTHENTICATION_CAPABILITIES(4);

/// Indicates that the <i>pSecDesc</i> parameter to <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-coinitializesecurity">CoInitializeSecurity</a>
/// is a pointer to a GUID that is an AppID.
const EOAC_APPID = EOLE_AUTHENTICATION_CAPABILITIES(8);

/// Reserved.
const EOAC_DYNAMIC = EOLE_AUTHENTICATION_CAPABILITIES(16);

/// Causes DCOM to fail <a
/// href="https://docs.microsoft.com/windows/desktop/api/combaseapi/nf-combaseapi-cosetproxyblanket">CoSetProxyBlanket</a>
/// calls where an Schannel principal name is specified in any format other than
/// fullsic.
const EOAC_REQUIRE_FULLSIC = EOLE_AUTHENTICATION_CAPABILITIES(512);

/// Reserved.
const EOAC_AUTO_IMPERSONATE = EOLE_AUTHENTICATION_CAPABILITIES(1024);

/// Causes any activation where a server process would be launched under the
/// caller's identity (activate-as-activator) to fail with E_ACCESSDENIED.
const EOAC_DISABLE_AAA = EOLE_AUTHENTICATION_CAPABILITIES(4096);

/// Specifying this flag helps protect server security when using DCOM or COM+.
const EOAC_NO_CUSTOM_MARSHAL = EOLE_AUTHENTICATION_CAPABILITIES(8192);

const EOAC_RESERVED1 = EOLE_AUTHENTICATION_CAPABILITIES(16384);

/// Specifies whether an XPS print job is in the spooling or the rendering
/// phase.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/eprintxpsjoboperation>.
///
/// {@category enum}
extension type const EPrintXPSJobOperation(int _) implements int {}

const kJobProduction = EPrintXPSJobOperation(1);

const kJobConsumption = EPrintXPSJobOperation(2);

/// Specifies what the spooler is currently doing as it processes an XPS print
/// job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/eprintxpsjobprogress>.
///
/// {@category enum}
extension type const EPrintXPSJobProgress(int _) implements int {}

const kAddingDocumentSequence = EPrintXPSJobProgress(0);

const kDocumentSequenceAdded = EPrintXPSJobProgress(1);

const kAddingFixedDocument = EPrintXPSJobProgress(2);

const kFixedDocumentAdded = EPrintXPSJobProgress(3);

const kAddingFixedPage = EPrintXPSJobProgress(4);

const kFixedPageAdded = EPrintXPSJobProgress(5);

const kResourceAdded = EPrintXPSJobProgress(6);

const kFontAdded = EPrintXPSJobProgress(7);

const kImageAdded = EPrintXPSJobProgress(8);

const kXpsDocumentCommitted = EPrintXPSJobProgress(9);

/// Defines constants that indicate the role that the system has assigned to an
/// audio endpoint device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-erole>.
///
/// {@category enum}
extension type const ERole(int _) implements int {}

/// Games, system notification sounds, and voice commands.
const eConsole = ERole(0);

/// Music, movies, narration, and live music recording.
const eMultimedia = ERole(1);

/// Voice communications (talking to another person).
const eCommunications = ERole(2);

/// The number of members in the <a
/// href="https://docs.microsoft.com/windows/win32/api/mmdeviceapi/ne-mmdeviceapi-erole">ERole</a>
/// enumeration (not counting the ERole_enum_count member).
const ERole_enum_count = ERole(3);

/// {@category enum}
extension type const ESCAPE_COMM_FUNCTION(int _) implements int {}

const CLRBREAK = ESCAPE_COMM_FUNCTION(9);

const CLRDTR = ESCAPE_COMM_FUNCTION(6);

const CLRRTS = ESCAPE_COMM_FUNCTION(4);

const SETBREAK = ESCAPE_COMM_FUNCTION(8);

const SETDTR = ESCAPE_COMM_FUNCTION(5);

const SETRTS = ESCAPE_COMM_FUNCTION(3);

const SETXOFF = ESCAPE_COMM_FUNCTION(1);

const SETXON = ESCAPE_COMM_FUNCTION(2);

/// {@category enum}
extension type const ETO_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ETO_OPTIONS other) => _ & other._ == other._;

  ETO_OPTIONS operator &(int other) => .new(_ & other);
  ETO_OPTIONS operator |(int other) => .new(_ | other);
}

const ETO_OPAQUE = ETO_OPTIONS(2);

const ETO_CLIPPED = ETO_OPTIONS(4);

const ETO_GLYPH_INDEX = ETO_OPTIONS(16);

const ETO_RTLREADING = ETO_OPTIONS(128);

const ETO_NUMERICSLOCAL = ETO_OPTIONS(1024);

const ETO_NUMERICSLATIN = ETO_OPTIONS(2048);

const ETO_IGNORELANGUAGE = ETO_OPTIONS(4096);

const ETO_PDY = ETO_OPTIONS(8192);

const ETO_REVERSE_INDEX_MAP = ETO_OPTIONS(65536);

/// Defines the types of connection methods you can use to connect to the remote
/// computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ne-winevt-evt_login_class>.
///
/// {@category enum}
extension type const EVT_LOGIN_CLASS(int _) implements int {}

/// Use Remote Procedure Call (RPC) login.
const EvtRpcLogin = EVT_LOGIN_CLASS(1);

/// Defines the values that specify how to return the query results and whether
/// you are query against a channel or log file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ne-winevt-evt_query_flags>.
///
/// {@category enum}
extension type const EVT_QUERY_FLAGS(int _) implements int {}

/// Specifies that the query is against one or more channels.
const EvtQueryChannelPath = EVT_QUERY_FLAGS(1);

/// Specifies that the query is against one or more log files.
const EvtQueryFilePath = EVT_QUERY_FLAGS(2);

/// Specifies that the events in the query result are ordered from oldest to
/// newest.
const EvtQueryForwardDirection = EVT_QUERY_FLAGS(256);

/// Specifies that the events in the query result are ordered from newest to
/// oldest.
const EvtQueryReverseDirection = EVT_QUERY_FLAGS(512);

/// Specifies that <a
/// href="https://docs.microsoft.com/windows/desktop/api/winevt/nf-winevt-evtquery">EvtQuery</a>
/// should run the query even if the part of the query generates an error (is
/// not well formed).
const EvtQueryTolerateQueryErrors = EVT_QUERY_FLAGS(4096);

/// Defines the identifiers that identify the query information that you can
/// retrieve.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ne-winevt-evt_query_property_id>.
///
/// {@category enum}
extension type const EVT_QUERY_PROPERTY_ID(int _) implements int {}

/// Identifies the property that contains the list of channel or log file names
/// that are specified in the query.
const EvtQueryNames = EVT_QUERY_PROPERTY_ID(0);

/// Identifies the property that contains the list of Win32 error codes that
/// correspond directly to the list of channel or log file names that the
/// EvtQueryNames property returns.
const EvtQueryStatuses = EVT_QUERY_PROPERTY_ID(1);

/// This enumeration value marks the end of the enumeration values.
const EvtQueryPropertyIdEND = EVT_QUERY_PROPERTY_ID(2);

/// Defines the values that specify the type of information to access from the
/// event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ne-winevt-evt_render_context_flags>.
///
/// {@category enum}
extension type const EVT_RENDER_CONTEXT_FLAGS(int _) implements int {}

/// Render specific properties from the event.
const EvtRenderContextValues = EVT_RENDER_CONTEXT_FLAGS(0);

/// Render the system properties under the <b>System</b> element.
const EvtRenderContextSystem = EVT_RENDER_CONTEXT_FLAGS(1);

/// Render all user-defined properties under the <b>UserData</b> or
/// <b>EventData</b> element.
const EvtRenderContextUser = EVT_RENDER_CONTEXT_FLAGS(2);

/// Defines the values that specify what to render.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ne-winevt-evt_render_flags>.
///
/// {@category enum}
extension type const EVT_RENDER_FLAGS(int _) implements int {}

/// Render the event properties specified in the rendering context.
const EvtRenderEventValues = EVT_RENDER_FLAGS(0);

/// Render the event as an XML string.
const EvtRenderEventXml = EVT_RENDER_FLAGS(1);

/// Render the bookmark as an XML string, so that you can easily persist the
/// bookmark for use later.
const EvtRenderBookmark = EVT_RENDER_FLAGS(2);

/// Defines the relative position in the result set from which to seek.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ne-winevt-evt_seek_flags>.
///
/// {@category enum}
extension type const EVT_SEEK_FLAGS(int _) implements int {}

/// Seek to the specified offset from the first entry in the result set.
const EvtSeekRelativeToFirst = EVT_SEEK_FLAGS(1);

/// Seek to the specified offset from the last entry in the result set.
const EvtSeekRelativeToLast = EVT_SEEK_FLAGS(2);

/// Seek to the specified offset from the current entry in the result set.
const EvtSeekRelativeToCurrent = EVT_SEEK_FLAGS(3);

/// Seek to the specified offset from the bookmarked entry in the result set.
const EvtSeekRelativeToBookmark = EVT_SEEK_FLAGS(4);

/// A bitmask that you can use to determine which of the following flags is set:
/// <ul> <li>EvtSeekRelativeToFirst</li> <li>EvtSeekRelativeToLast</li>
/// <li>EvtSeekRelativeToBookmark</li> </ul>.
const EvtSeekOriginMask = EVT_SEEK_FLAGS(7);

/// Force the function to fail if the event does not exist.
const EvtSeekStrict = EVT_SEEK_FLAGS(65536);

/// Defines the possible data types of a variant data item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winevt/ne-winevt-evt_variant_type>.
///
/// {@category enum}
extension type const EVT_VARIANT_TYPE(int _) implements int {}

/// Null content that implies that the element that contains the content does
/// not exist.
const EvtVarTypeNull = EVT_VARIANT_TYPE(0);

/// A null-terminated Unicode string.
const EvtVarTypeString = EVT_VARIANT_TYPE(1);

/// A null-terminated ANSI string.
const EvtVarTypeAnsiString = EVT_VARIANT_TYPE(2);

/// A signed 8-bit integer value.
const EvtVarTypeSByte = EVT_VARIANT_TYPE(3);

/// An unsigned 8-bit integer value.
const EvtVarTypeByte = EVT_VARIANT_TYPE(4);

/// An signed 16-bit integer value.
const EvtVarTypeInt16 = EVT_VARIANT_TYPE(5);

/// An unsigned 16-bit integer value.
const EvtVarTypeUInt16 = EVT_VARIANT_TYPE(6);

/// A signed 32-bit integer value.
const EvtVarTypeInt32 = EVT_VARIANT_TYPE(7);

/// An unsigned 32-bit integer value.
const EvtVarTypeUInt32 = EVT_VARIANT_TYPE(8);

/// A signed 64-bit integer value.
const EvtVarTypeInt64 = EVT_VARIANT_TYPE(9);

/// An unsigned 64-bit integer value.
const EvtVarTypeUInt64 = EVT_VARIANT_TYPE(10);

/// A single-precision real value.
const EvtVarTypeSingle = EVT_VARIANT_TYPE(11);

/// A double-precision real value.
const EvtVarTypeDouble = EVT_VARIANT_TYPE(12);

/// A Boolean value.
const EvtVarTypeBoolean = EVT_VARIANT_TYPE(13);

/// A hexadecimal binary value.
const EvtVarTypeBinary = EVT_VARIANT_TYPE(14);

/// A GUID value.
const EvtVarTypeGuid = EVT_VARIANT_TYPE(15);

/// An unsigned 32-bit or 64-bit integer value that contains a pointer address.
const EvtVarTypeSizeT = EVT_VARIANT_TYPE(16);

/// A FILETIME value.
const EvtVarTypeFileTime = EVT_VARIANT_TYPE(17);

/// A SYSTEMTIME value.
const EvtVarTypeSysTime = EVT_VARIANT_TYPE(18);

/// A security identifier (<a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-sid">SID</a>)
/// structure.
const EvtVarTypeSid = EVT_VARIANT_TYPE(19);

/// A 32-bit hexadecimal number.
const EvtVarTypeHexInt32 = EVT_VARIANT_TYPE(20);

/// A 64-bit hexadecimal number.
const EvtVarTypeHexInt64 = EVT_VARIANT_TYPE(21);

/// An EVT_HANDLE value.
const EvtVarTypeEvtHandle = EVT_VARIANT_TYPE(32);

/// A null-terminated Unicode string that contains XML.
const EvtVarTypeEvtXml = EVT_VARIANT_TYPE(35);

/// {@category enum}
extension type const EXECUTION_STATE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(EXECUTION_STATE other) => _ & other._ == other._;

  EXECUTION_STATE operator &(int other) => .new(_ & other);
  EXECUTION_STATE operator |(int other) => .new(_ | other);
}

const ES_AWAYMODE_REQUIRED = EXECUTION_STATE(64);

const ES_CONTINUOUS = EXECUTION_STATE(2147483648);

const ES_DISPLAY_REQUIRED = EXECUTION_STATE(2);

const ES_SYSTEM_REQUIRED = EXECUTION_STATE(1);

const ES_USER_PRESENT = EXECUTION_STATE(4);

/// Contains values that specify the state of a UI element that can be expanded
/// and collapsed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-expandcollapsestate>.
///
/// {@category enum}
extension type const ExpandCollapseState(int _) implements int {}

/// No children are visible.
const ExpandCollapseState_Collapsed = ExpandCollapseState(0);

/// All children are visible.
const ExpandCollapseState_Expanded = ExpandCollapseState(1);

/// Some, but not all, children are visible.
const ExpandCollapseState_PartiallyExpanded = ExpandCollapseState(2);

/// The element does not expand or collapse.
const ExpandCollapseState_LeafNode = ExpandCollapseState(3);

/// {@category enum}
extension type const FACILITY_CODE(int _) implements int {}

const FACILITY_NULL = FACILITY_CODE(0);

const FACILITY_RPC = FACILITY_CODE(1);

const FACILITY_DISPATCH = FACILITY_CODE(2);

const FACILITY_STORAGE = FACILITY_CODE(3);

const FACILITY_ITF = FACILITY_CODE(4);

const FACILITY_WIN32 = FACILITY_CODE(7);

const FACILITY_WINDOWS = FACILITY_CODE(8);

const FACILITY_SSPI = FACILITY_CODE(9);

const FACILITY_SECURITY = FACILITY_CODE(9);

const FACILITY_CONTROL = FACILITY_CODE(10);

const FACILITY_CERT = FACILITY_CODE(11);

const FACILITY_INTERNET = FACILITY_CODE(12);

const FACILITY_MEDIASERVER = FACILITY_CODE(13);

const FACILITY_MSMQ = FACILITY_CODE(14);

const FACILITY_SETUPAPI = FACILITY_CODE(15);

const FACILITY_SCARD = FACILITY_CODE(16);

const FACILITY_COMPLUS = FACILITY_CODE(17);

const FACILITY_AAF = FACILITY_CODE(18);

const FACILITY_URT = FACILITY_CODE(19);

const FACILITY_ACS = FACILITY_CODE(20);

const FACILITY_DPLAY = FACILITY_CODE(21);

const FACILITY_UMI = FACILITY_CODE(22);

const FACILITY_SXS = FACILITY_CODE(23);

const FACILITY_WINDOWS_CE = FACILITY_CODE(24);

const FACILITY_HTTP = FACILITY_CODE(25);

const FACILITY_USERMODE_COMMONLOG = FACILITY_CODE(26);

const FACILITY_WER = FACILITY_CODE(27);

const FACILITY_USERMODE_FILTER_MANAGER = FACILITY_CODE(31);

const FACILITY_BACKGROUNDCOPY = FACILITY_CODE(32);

const FACILITY_CONFIGURATION = FACILITY_CODE(33);

const FACILITY_WIA = FACILITY_CODE(33);

const FACILITY_STATE_MANAGEMENT = FACILITY_CODE(34);

const FACILITY_METADIRECTORY = FACILITY_CODE(35);

const FACILITY_WINDOWSUPDATE = FACILITY_CODE(36);

const FACILITY_DIRECTORYSERVICE = FACILITY_CODE(37);

const FACILITY_GRAPHICS = FACILITY_CODE(38);

const FACILITY_SHELL = FACILITY_CODE(39);

const FACILITY_NAP = FACILITY_CODE(39);

const FACILITY_TPM_SERVICES = FACILITY_CODE(40);

const FACILITY_TPM_SOFTWARE = FACILITY_CODE(41);

const FACILITY_UI = FACILITY_CODE(42);

const FACILITY_XAML = FACILITY_CODE(43);

const FACILITY_ACTION_QUEUE = FACILITY_CODE(44);

const FACILITY_PLA = FACILITY_CODE(48);

const FACILITY_WINDOWS_SETUP = FACILITY_CODE(48);

const FACILITY_FVE = FACILITY_CODE(49);

const FACILITY_FWP = FACILITY_CODE(50);

const FACILITY_WINRM = FACILITY_CODE(51);

const FACILITY_NDIS = FACILITY_CODE(52);

const FACILITY_USERMODE_HYPERVISOR = FACILITY_CODE(53);

const FACILITY_CMI = FACILITY_CODE(54);

const FACILITY_USERMODE_VIRTUALIZATION = FACILITY_CODE(55);

const FACILITY_USERMODE_VOLMGR = FACILITY_CODE(56);

const FACILITY_BCD = FACILITY_CODE(57);

const FACILITY_USERMODE_VHD = FACILITY_CODE(58);

const FACILITY_USERMODE_HNS = FACILITY_CODE(59);

const FACILITY_SDIAG = FACILITY_CODE(60);

const FACILITY_WEBSERVICES = FACILITY_CODE(61);

const FACILITY_WINPE = FACILITY_CODE(61);

const FACILITY_WPN = FACILITY_CODE(62);

const FACILITY_WINDOWS_STORE = FACILITY_CODE(63);

const FACILITY_INPUT = FACILITY_CODE(64);

const FACILITY_QUIC = FACILITY_CODE(65);

const FACILITY_EAP = FACILITY_CODE(66);

const FACILITY_IORING = FACILITY_CODE(70);

const FACILITY_WINDOWS_DEFENDER = FACILITY_CODE(80);

const FACILITY_OPC = FACILITY_CODE(81);

const FACILITY_XPS = FACILITY_CODE(82);

const FACILITY_MBN = FACILITY_CODE(84);

const FACILITY_POWERSHELL = FACILITY_CODE(84);

const FACILITY_RAS = FACILITY_CODE(83);

const FACILITY_P2P_INT = FACILITY_CODE(98);

const FACILITY_P2P = FACILITY_CODE(99);

const FACILITY_DAF = FACILITY_CODE(100);

const FACILITY_BLUETOOTH_ATT = FACILITY_CODE(101);

const FACILITY_AUDIO = FACILITY_CODE(102);

const FACILITY_STATEREPOSITORY = FACILITY_CODE(103);

const FACILITY_VISUALCPP = FACILITY_CODE(109);

const FACILITY_SCRIPT = FACILITY_CODE(112);

const FACILITY_PARSE = FACILITY_CODE(113);

const FACILITY_BLB = FACILITY_CODE(120);

const FACILITY_BLB_CLI = FACILITY_CODE(121);

const FACILITY_WSBAPP = FACILITY_CODE(122);

const FACILITY_BLBUI = FACILITY_CODE(128);

const FACILITY_USN = FACILITY_CODE(129);

const FACILITY_USERMODE_VOLSNAP = FACILITY_CODE(130);

const FACILITY_TIERING = FACILITY_CODE(131);

const FACILITY_WSB_ONLINE = FACILITY_CODE(133);

const FACILITY_ONLINE_ID = FACILITY_CODE(134);

const FACILITY_DEVICE_UPDATE_AGENT = FACILITY_CODE(135);

const FACILITY_DRVSERVICING = FACILITY_CODE(136);

const FACILITY_DLS = FACILITY_CODE(153);

const FACILITY_DELIVERY_OPTIMIZATION = FACILITY_CODE(208);

const FACILITY_USERMODE_SPACES = FACILITY_CODE(231);

const FACILITY_USER_MODE_SECURITY_CORE = FACILITY_CODE(232);

const FACILITY_USERMODE_LICENSING = FACILITY_CODE(234);

const FACILITY_SOS = FACILITY_CODE(160);

const FACILITY_OCP_UPDATE_AGENT = FACILITY_CODE(173);

const FACILITY_DEBUGGERS = FACILITY_CODE(176);

const FACILITY_SPP = FACILITY_CODE(256);

const FACILITY_RESTORE = FACILITY_CODE(256);

const FACILITY_DMSERVER = FACILITY_CODE(256);

const FACILITY_DEPLOYMENT_SERVICES_SERVER = FACILITY_CODE(257);

const FACILITY_DEPLOYMENT_SERVICES_IMAGING = FACILITY_CODE(258);

const FACILITY_DEPLOYMENT_SERVICES_MANAGEMENT = FACILITY_CODE(259);

const FACILITY_DEPLOYMENT_SERVICES_UTIL = FACILITY_CODE(260);

const FACILITY_DEPLOYMENT_SERVICES_BINLSVC = FACILITY_CODE(261);

const FACILITY_DEPLOYMENT_SERVICES_PXE = FACILITY_CODE(263);

const FACILITY_DEPLOYMENT_SERVICES_TFTP = FACILITY_CODE(264);

const FACILITY_DEPLOYMENT_SERVICES_TRANSPORT_MANAGEMENT = FACILITY_CODE(272);

const FACILITY_DEPLOYMENT_SERVICES_DRIVER_PROVISIONING = FACILITY_CODE(278);

const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_SERVER = FACILITY_CODE(289);

const FACILITY_DEPLOYMENT_SERVICES_MULTICAST_CLIENT = FACILITY_CODE(290);

const FACILITY_DEPLOYMENT_SERVICES_CONTENT_PROVIDER = FACILITY_CODE(293);

const FACILITY_HSP_SERVICES = FACILITY_CODE(296);

const FACILITY_HSP_SOFTWARE = FACILITY_CODE(297);

const FACILITY_LINGUISTIC_SERVICES = FACILITY_CODE(305);

const FACILITY_AUDIOSTREAMING = FACILITY_CODE(1094);

const FACILITY_TTD = FACILITY_CODE(1490);

const FACILITY_ACCELERATOR = FACILITY_CODE(1536);

const FACILITY_WMAAECMA = FACILITY_CODE(1996);

const FACILITY_DIRECTMUSIC = FACILITY_CODE(2168);

const FACILITY_DIRECT3D10 = FACILITY_CODE(2169);

const FACILITY_DXGI = FACILITY_CODE(2170);

const FACILITY_DXGI_DDI = FACILITY_CODE(2171);

const FACILITY_DIRECT3D11 = FACILITY_CODE(2172);

const FACILITY_DIRECT3D11_DEBUG = FACILITY_CODE(2173);

const FACILITY_DIRECT3D12 = FACILITY_CODE(2174);

const FACILITY_DIRECT3D12_DEBUG = FACILITY_CODE(2175);

const FACILITY_DXCORE = FACILITY_CODE(2176);

const FACILITY_PRESENTATION = FACILITY_CODE(2177);

const FACILITY_LEAP = FACILITY_CODE(2184);

const FACILITY_AUDCLNT = FACILITY_CODE(2185);

const FACILITY_WINCODEC_DWRITE_DWM = FACILITY_CODE(2200);

const FACILITY_WINML = FACILITY_CODE(2192);

const FACILITY_DIRECT2D = FACILITY_CODE(2201);

const FACILITY_DEFRAG = FACILITY_CODE(2304);

const FACILITY_USERMODE_SDBUS = FACILITY_CODE(2305);

const FACILITY_JSCRIPT = FACILITY_CODE(2306);

const FACILITY_PIDGENX = FACILITY_CODE(2561);

const FACILITY_EAS = FACILITY_CODE(85);

const FACILITY_WEB = FACILITY_CODE(885);

const FACILITY_WEB_SOCKET = FACILITY_CODE(886);

const FACILITY_MOBILE = FACILITY_CODE(1793);

const FACILITY_SQLITE = FACILITY_CODE(1967);

const FACILITY_SERVICE_FABRIC = FACILITY_CODE(1968);

const FACILITY_UTC = FACILITY_CODE(1989);

const FACILITY_WEP = FACILITY_CODE(2049);

const FACILITY_SYNCENGINE = FACILITY_CODE(2050);

const FACILITY_XBOX = FACILITY_CODE(2339);

const FACILITY_GAME = FACILITY_CODE(2340);

const FACILITY_USERMODE_UNIONFS = FACILITY_CODE(2341);

const FACILITY_USERMODE_PRM = FACILITY_CODE(2342);

const FACILITY_USERMODE_WIN_ACCEL = FACILITY_CODE(2343);

const FACILITY_PPF = FACILITY_CODE(2344);

const FACILITY_PIX = FACILITY_CODE(2748);

const FACILITY_NT_BIT = FACILITY_CODE(268435456);

/// Specifies list placement.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-fdap>.
///
/// {@category enum}
extension type const FDAP(int _) implements int {}

/// The place is added to the bottom of the default list.
const FDAP_BOTTOM = FDAP(0);

/// The place is added to the top of the default list.
const FDAP_TOP = FDAP(1);

/// Specifies the values used by the IFileDialogEvents::OnOverwrite method to
/// indicate an application's response to an overwrite request during a save
/// operation using the common file dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-fde_overwrite_response>.
///
/// {@category enum}
extension type const FDE_OVERWRITE_RESPONSE(int _) implements int {}

/// The application has not handled the event.
const FDEOR_DEFAULT = FDE_OVERWRITE_RESPONSE(0);

/// The application has determined that the file should be returned from the
/// dialog.
const FDEOR_ACCEPT = FDE_OVERWRITE_RESPONSE(1);

/// The application has determined that the file should not be returned from the
/// dialog.
const FDEOR_REFUSE = FDE_OVERWRITE_RESPONSE(2);

/// Specifies the values used by the IFileDialogEvents::OnShareViolation method
/// to indicate an application's response to a sharing violation that occurs
/// when a file is opened or saved.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-fde_shareviolation_response>.
///
/// {@category enum}
extension type const FDE_SHAREVIOLATION_RESPONSE(int _) implements int {}

/// The application has not handled the event.
const FDESVR_DEFAULT = FDE_SHAREVIOLATION_RESPONSE(0);

/// The application has determined that the file should be returned from the
/// dialog.
const FDESVR_ACCEPT = FDE_SHAREVIOLATION_RESPONSE(1);

/// The application has determined that the file should not be returned from the
/// dialog.
const FDESVR_REFUSE = FDE_SHAREVIOLATION_RESPONSE(2);

/// Describes match criteria.
///
/// Used by methods of the IKnownFolderManager interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-fffp_mode>.
///
/// {@category enum}
extension type const FFFP_MODE(int _) implements int {}

/// Exact match.
const FFFP_EXACTMATCH = FFFP_MODE(0);

/// Nearest parent match.
const FFFP_NEARESTPARENTMATCH = FFFP_MODE(1);

/// {@category enum}
extension type const FILEOPENDIALOGOPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FILEOPENDIALOGOPTIONS other) => _ & other._ == other._;

  FILEOPENDIALOGOPTIONS operator &(int other) => .new(_ & other);
  FILEOPENDIALOGOPTIONS operator |(int other) => .new(_ | other);
}

const FOS_OVERWRITEPROMPT = FILEOPENDIALOGOPTIONS(2);

const FOS_STRICTFILETYPES = FILEOPENDIALOGOPTIONS(4);

const FOS_NOCHANGEDIR = FILEOPENDIALOGOPTIONS(8);

const FOS_PICKFOLDERS = FILEOPENDIALOGOPTIONS(32);

const FOS_FORCEFILESYSTEM = FILEOPENDIALOGOPTIONS(64);

const FOS_ALLNONSTORAGEITEMS = FILEOPENDIALOGOPTIONS(128);

const FOS_NOVALIDATE = FILEOPENDIALOGOPTIONS(256);

const FOS_ALLOWMULTISELECT = FILEOPENDIALOGOPTIONS(512);

const FOS_PATHMUSTEXIST = FILEOPENDIALOGOPTIONS(2048);

const FOS_FILEMUSTEXIST = FILEOPENDIALOGOPTIONS(4096);

const FOS_CREATEPROMPT = FILEOPENDIALOGOPTIONS(8192);

const FOS_SHAREAWARE = FILEOPENDIALOGOPTIONS(16384);

const FOS_NOREADONLYRETURN = FILEOPENDIALOGOPTIONS(32768);

const FOS_NOTESTFILECREATE = FILEOPENDIALOGOPTIONS(65536);

const FOS_HIDEMRUPLACES = FILEOPENDIALOGOPTIONS(131072);

const FOS_HIDEPINNEDPLACES = FILEOPENDIALOGOPTIONS(262144);

const FOS_NODEREFERENCELINKS = FILEOPENDIALOGOPTIONS(1048576);

const FOS_OKBUTTONNEEDSINTERACTION = FILEOPENDIALOGOPTIONS(2097152);

const FOS_DONTADDTORECENT = FILEOPENDIALOGOPTIONS(33554432);

const FOS_FORCESHOWHIDDEN = FILEOPENDIALOGOPTIONS(268435456);

const FOS_DEFAULTNOMINIMODE = FILEOPENDIALOGOPTIONS(536870912);

const FOS_FORCEPREVIEWPANEON = FILEOPENDIALOGOPTIONS(1073741824);

const FOS_SUPPORTSTREAMABLEITEMS = FILEOPENDIALOGOPTIONS(2147483648);

/// {@category enum}
extension type const FILEOPERATION_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FILEOPERATION_FLAGS other) => _ & other._ == other._;

  FILEOPERATION_FLAGS operator &(int other) => .new(_ & other);
  FILEOPERATION_FLAGS operator |(int other) => .new(_ | other);
}

const FOFX_NOSKIPJUNCTIONS = FILEOPERATION_FLAGS(65536);

const FOFX_PREFERHARDLINK = FILEOPERATION_FLAGS(131072);

const FOFX_SHOWELEVATIONPROMPT = FILEOPERATION_FLAGS(262144);

const FOFX_RECYCLEONDELETE = FILEOPERATION_FLAGS(524288);

const FOFX_EARLYFAILURE = FILEOPERATION_FLAGS(1048576);

const FOFX_PRESERVEFILEEXTENSIONS = FILEOPERATION_FLAGS(2097152);

const FOFX_KEEPNEWERFILE = FILEOPERATION_FLAGS(4194304);

const FOFX_NOCOPYHOOKS = FILEOPERATION_FLAGS(8388608);

const FOFX_NOMINIMIZEBOX = FILEOPERATION_FLAGS(16777216);

const FOFX_MOVEACLSACROSSVOLUMES = FILEOPERATION_FLAGS(33554432);

const FOFX_DONTDISPLAYSOURCEPATH = FILEOPERATION_FLAGS(67108864);

const FOFX_DONTDISPLAYDESTPATH = FILEOPERATION_FLAGS(134217728);

const FOFX_REQUIREELEVATION = FILEOPERATION_FLAGS(268435456);

const FOFX_ADDUNDORECORD = FILEOPERATION_FLAGS(536870912);

const FOFX_COPYASDOWNLOAD = FILEOPERATION_FLAGS(1073741824);

const FOFX_DONTDISPLAYLOCATIONS = FILEOPERATION_FLAGS(2147483648);

const FOF_MULTIDESTFILES = FILEOPERATION_FLAGS(1);

const FOF_CONFIRMMOUSE = FILEOPERATION_FLAGS(2);

const FOF_SILENT = FILEOPERATION_FLAGS(4);

const FOF_RENAMEONCOLLISION = FILEOPERATION_FLAGS(8);

const FOF_NOCONFIRMATION = FILEOPERATION_FLAGS(16);

const FOF_WANTMAPPINGHANDLE = FILEOPERATION_FLAGS(32);

const FOF_ALLOWUNDO = FILEOPERATION_FLAGS(64);

const FOF_FILESONLY = FILEOPERATION_FLAGS(128);

const FOF_SIMPLEPROGRESS = FILEOPERATION_FLAGS(256);

const FOF_NOCONFIRMMKDIR = FILEOPERATION_FLAGS(512);

const FOF_NOERRORUI = FILEOPERATION_FLAGS(1024);

const FOF_NOCOPYSECURITYATTRIBS = FILEOPERATION_FLAGS(2048);

const FOF_NORECURSION = FILEOPERATION_FLAGS(4096);

const FOF_NO_CONNECTED_ELEMENTS = FILEOPERATION_FLAGS(8192);

const FOF_WANTNUKEWARNING = FILEOPERATION_FLAGS(16384);

const FOF_NORECURSEREPARSE = FILEOPERATION_FLAGS(32768);

const FOF_NO_UI = FILEOPERATION_FLAGS(1556);

/// {@category enum}
extension type const FILE_ACCESS_RIGHTS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FILE_ACCESS_RIGHTS other) => _ & other._ == other._;

  FILE_ACCESS_RIGHTS operator &(int other) => .new(_ & other);
  FILE_ACCESS_RIGHTS operator |(int other) => .new(_ | other);
}

const FILE_READ_DATA = FILE_ACCESS_RIGHTS(1);

const FILE_LIST_DIRECTORY = FILE_ACCESS_RIGHTS(1);

const FILE_WRITE_DATA = FILE_ACCESS_RIGHTS(2);

const FILE_ADD_FILE = FILE_ACCESS_RIGHTS(2);

const FILE_APPEND_DATA = FILE_ACCESS_RIGHTS(4);

const FILE_ADD_SUBDIRECTORY = FILE_ACCESS_RIGHTS(4);

const FILE_CREATE_PIPE_INSTANCE = FILE_ACCESS_RIGHTS(4);

const FILE_READ_EA = FILE_ACCESS_RIGHTS(8);

const FILE_WRITE_EA = FILE_ACCESS_RIGHTS(16);

const FILE_EXECUTE = FILE_ACCESS_RIGHTS(32);

const FILE_TRAVERSE = FILE_ACCESS_RIGHTS(32);

const FILE_DELETE_CHILD = FILE_ACCESS_RIGHTS(64);

const FILE_READ_ATTRIBUTES = FILE_ACCESS_RIGHTS(128);

const FILE_WRITE_ATTRIBUTES = FILE_ACCESS_RIGHTS(256);

const DELETE = FILE_ACCESS_RIGHTS(65536);

const READ_CONTROL = FILE_ACCESS_RIGHTS(131072);

const WRITE_DAC = FILE_ACCESS_RIGHTS(262144);

const WRITE_OWNER = FILE_ACCESS_RIGHTS(524288);

const SYNCHRONIZE = FILE_ACCESS_RIGHTS(1048576);

const STANDARD_RIGHTS_REQUIRED = FILE_ACCESS_RIGHTS(983040);

const STANDARD_RIGHTS_READ = FILE_ACCESS_RIGHTS(131072);

const STANDARD_RIGHTS_WRITE = FILE_ACCESS_RIGHTS(131072);

const STANDARD_RIGHTS_EXECUTE = FILE_ACCESS_RIGHTS(131072);

const STANDARD_RIGHTS_ALL = FILE_ACCESS_RIGHTS(2031616);

const SPECIFIC_RIGHTS_ALL = FILE_ACCESS_RIGHTS(65535);

const FILE_ALL_ACCESS = FILE_ACCESS_RIGHTS(2032127);

const FILE_GENERIC_READ = FILE_ACCESS_RIGHTS(1179785);

const FILE_GENERIC_WRITE = FILE_ACCESS_RIGHTS(1179926);

const FILE_GENERIC_EXECUTE = FILE_ACCESS_RIGHTS(1179808);

/// {@category enum}
extension type const FILE_ACTION(int _) implements int {}

const FILE_ACTION_ADDED = FILE_ACTION(1);

const FILE_ACTION_REMOVED = FILE_ACTION(2);

const FILE_ACTION_MODIFIED = FILE_ACTION(3);

const FILE_ACTION_RENAMED_OLD_NAME = FILE_ACTION(4);

const FILE_ACTION_RENAMED_NEW_NAME = FILE_ACTION(5);

/// {@category enum}
extension type const FILE_CREATION_DISPOSITION(int _) implements int {}

const CREATE_NEW = FILE_CREATION_DISPOSITION(1);

const CREATE_ALWAYS = FILE_CREATION_DISPOSITION(2);

const OPEN_EXISTING = FILE_CREATION_DISPOSITION(3);

const OPEN_ALWAYS = FILE_CREATION_DISPOSITION(4);

const TRUNCATE_EXISTING = FILE_CREATION_DISPOSITION(5);

/// {@category enum}
extension type const FILE_DEVICE_TYPE(int _) implements int {}

const FILE_DEVICE_CD_ROM = FILE_DEVICE_TYPE(2);

const FILE_DEVICE_DISK = FILE_DEVICE_TYPE(7);

const FILE_DEVICE_TAPE = FILE_DEVICE_TYPE(31);

const FILE_DEVICE_DVD = FILE_DEVICE_TYPE(51);

/// {@category enum}
extension type const FILE_FLAGS_AND_ATTRIBUTES(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FILE_FLAGS_AND_ATTRIBUTES other) => _ & other._ == other._;

  FILE_FLAGS_AND_ATTRIBUTES operator &(int other) => .new(_ & other);
  FILE_FLAGS_AND_ATTRIBUTES operator |(int other) => .new(_ | other);
}

const FILE_ATTRIBUTE_READONLY = FILE_FLAGS_AND_ATTRIBUTES(1);

const FILE_ATTRIBUTE_HIDDEN = FILE_FLAGS_AND_ATTRIBUTES(2);

const FILE_ATTRIBUTE_SYSTEM = FILE_FLAGS_AND_ATTRIBUTES(4);

const FILE_ATTRIBUTE_DIRECTORY = FILE_FLAGS_AND_ATTRIBUTES(16);

const FILE_ATTRIBUTE_ARCHIVE = FILE_FLAGS_AND_ATTRIBUTES(32);

const FILE_ATTRIBUTE_DEVICE = FILE_FLAGS_AND_ATTRIBUTES(64);

const FILE_ATTRIBUTE_NORMAL = FILE_FLAGS_AND_ATTRIBUTES(128);

const FILE_ATTRIBUTE_TEMPORARY = FILE_FLAGS_AND_ATTRIBUTES(256);

const FILE_ATTRIBUTE_SPARSE_FILE = FILE_FLAGS_AND_ATTRIBUTES(512);

const FILE_ATTRIBUTE_REPARSE_POINT = FILE_FLAGS_AND_ATTRIBUTES(1024);

const FILE_ATTRIBUTE_COMPRESSED = FILE_FLAGS_AND_ATTRIBUTES(2048);

const FILE_ATTRIBUTE_OFFLINE = FILE_FLAGS_AND_ATTRIBUTES(4096);

const FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = FILE_FLAGS_AND_ATTRIBUTES(8192);

const FILE_ATTRIBUTE_ENCRYPTED = FILE_FLAGS_AND_ATTRIBUTES(16384);

const FILE_ATTRIBUTE_INTEGRITY_STREAM = FILE_FLAGS_AND_ATTRIBUTES(32768);

const FILE_ATTRIBUTE_VIRTUAL = FILE_FLAGS_AND_ATTRIBUTES(65536);

const FILE_ATTRIBUTE_NO_SCRUB_DATA = FILE_FLAGS_AND_ATTRIBUTES(131072);

const FILE_ATTRIBUTE_EA = FILE_FLAGS_AND_ATTRIBUTES(262144);

const FILE_ATTRIBUTE_PINNED = FILE_FLAGS_AND_ATTRIBUTES(524288);

const FILE_ATTRIBUTE_UNPINNED = FILE_FLAGS_AND_ATTRIBUTES(1048576);

const FILE_ATTRIBUTE_RECALL_ON_OPEN = FILE_FLAGS_AND_ATTRIBUTES(262144);

const FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS = FILE_FLAGS_AND_ATTRIBUTES(4194304);

const FILE_FLAG_WRITE_THROUGH = FILE_FLAGS_AND_ATTRIBUTES(2147483648);

const FILE_FLAG_OVERLAPPED = FILE_FLAGS_AND_ATTRIBUTES(1073741824);

const FILE_FLAG_NO_BUFFERING = FILE_FLAGS_AND_ATTRIBUTES(536870912);

const FILE_FLAG_RANDOM_ACCESS = FILE_FLAGS_AND_ATTRIBUTES(268435456);

const FILE_FLAG_SEQUENTIAL_SCAN = FILE_FLAGS_AND_ATTRIBUTES(134217728);

const FILE_FLAG_DELETE_ON_CLOSE = FILE_FLAGS_AND_ATTRIBUTES(67108864);

const FILE_FLAG_BACKUP_SEMANTICS = FILE_FLAGS_AND_ATTRIBUTES(33554432);

const FILE_FLAG_POSIX_SEMANTICS = FILE_FLAGS_AND_ATTRIBUTES(16777216);

const FILE_FLAG_SESSION_AWARE = FILE_FLAGS_AND_ATTRIBUTES(8388608);

const FILE_FLAG_OPEN_REPARSE_POINT = FILE_FLAGS_AND_ATTRIBUTES(2097152);

const FILE_FLAG_OPEN_NO_RECALL = FILE_FLAGS_AND_ATTRIBUTES(1048576);

const FILE_FLAG_FIRST_PIPE_INSTANCE = FILE_FLAGS_AND_ATTRIBUTES(524288);

const PIPE_ACCESS_DUPLEX = FILE_FLAGS_AND_ATTRIBUTES(3);

const PIPE_ACCESS_INBOUND = FILE_FLAGS_AND_ATTRIBUTES(1);

const PIPE_ACCESS_OUTBOUND = FILE_FLAGS_AND_ATTRIBUTES(2);

const SECURITY_ANONYMOUS = FILE_FLAGS_AND_ATTRIBUTES(0);

const SECURITY_IDENTIFICATION = FILE_FLAGS_AND_ATTRIBUTES(65536);

const SECURITY_IMPERSONATION = FILE_FLAGS_AND_ATTRIBUTES(131072);

const SECURITY_DELEGATION = FILE_FLAGS_AND_ATTRIBUTES(196608);

const SECURITY_CONTEXT_TRACKING = FILE_FLAGS_AND_ATTRIBUTES(262144);

const SECURITY_EFFECTIVE_ONLY = FILE_FLAGS_AND_ATTRIBUTES(524288);

const SECURITY_SQOS_PRESENT = FILE_FLAGS_AND_ATTRIBUTES(1048576);

const SECURITY_VALID_SQOS_FLAGS = FILE_FLAGS_AND_ATTRIBUTES(2031616);

/// Identifies the type of file information that GetFileInformationByHandleEx
/// should retrieve or SetFileInformationByHandle should set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-file_info_by_handle_class>.
///
/// {@category enum}
extension type const FILE_INFO_BY_HANDLE_CLASS(int _) implements int {}

/// Minimal information for the file should be retrieved or set.
const FileBasicInfo = FILE_INFO_BY_HANDLE_CLASS(0);

/// Extended information for the file should be retrieved.
const FileStandardInfo = FILE_INFO_BY_HANDLE_CLASS(1);

/// The file name should be retrieved.
const FileNameInfo = FILE_INFO_BY_HANDLE_CLASS(2);

/// The file name should be changed.
const FileRenameInfo = FILE_INFO_BY_HANDLE_CLASS(3);

/// The file should be deleted.
const FileDispositionInfo = FILE_INFO_BY_HANDLE_CLASS(4);

/// The file allocation information should be changed.
const FileAllocationInfo = FILE_INFO_BY_HANDLE_CLASS(5);

/// The end of the file should be set.
const FileEndOfFileInfo = FILE_INFO_BY_HANDLE_CLASS(6);

/// File stream information for the specified file should be retrieved.
const FileStreamInfo = FILE_INFO_BY_HANDLE_CLASS(7);

/// File compression information should be retrieved.
const FileCompressionInfo = FILE_INFO_BY_HANDLE_CLASS(8);

/// File attribute information should be retrieved.
const FileAttributeTagInfo = FILE_INFO_BY_HANDLE_CLASS(9);

/// Files in the specified directory should be retrieved.
const FileIdBothDirectoryInfo = FILE_INFO_BY_HANDLE_CLASS(10);

/// Identical to <b>FileIdBothDirectoryInfo</b>, but forces the enumeration
/// operation to start again from the beginning.
const FileIdBothDirectoryRestartInfo = FILE_INFO_BY_HANDLE_CLASS(11);

/// Priority hint information should be set.
const FileIoPriorityHintInfo = FILE_INFO_BY_HANDLE_CLASS(12);

/// File remote protocol information should be retrieved.
const FileRemoteProtocolInfo = FILE_INFO_BY_HANDLE_CLASS(13);

/// Files in the specified directory should be retrieved.
const FileFullDirectoryInfo = FILE_INFO_BY_HANDLE_CLASS(14);

/// Identical to <b>FileFullDirectoryInfo</b>, but forces the enumeration
/// operation to start again from the beginning.
const FileFullDirectoryRestartInfo = FILE_INFO_BY_HANDLE_CLASS(15);

/// File storage information should be retrieved.
const FileStorageInfo = FILE_INFO_BY_HANDLE_CLASS(16);

/// File alignment information should be retrieved.
const FileAlignmentInfo = FILE_INFO_BY_HANDLE_CLASS(17);

/// File information should be retrieved.
const FileIdInfo = FILE_INFO_BY_HANDLE_CLASS(18);

/// Files in the specified directory should be retrieved.
const FileIdExtdDirectoryInfo = FILE_INFO_BY_HANDLE_CLASS(19);

/// Identical to <b>FileIdExtdDirectoryInfo</b>, but forces the enumeration
/// operation to start again from the beginning.
const FileIdExtdDirectoryRestartInfo = FILE_INFO_BY_HANDLE_CLASS(20);

const FileDispositionInfoEx = FILE_INFO_BY_HANDLE_CLASS(21);

const FileRenameInfoEx = FILE_INFO_BY_HANDLE_CLASS(22);

const FileCaseSensitiveInfo = FILE_INFO_BY_HANDLE_CLASS(23);

const FileNormalizedNameInfo = FILE_INFO_BY_HANDLE_CLASS(24);

/// This value is used for validation.
const MaximumFileInfoByHandleClass = FILE_INFO_BY_HANDLE_CLASS(25);

/// {@category enum}
extension type const FILE_NOTIFY_CHANGE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FILE_NOTIFY_CHANGE other) => _ & other._ == other._;

  FILE_NOTIFY_CHANGE operator &(int other) => .new(_ & other);
  FILE_NOTIFY_CHANGE operator |(int other) => .new(_ | other);
}

const FILE_NOTIFY_CHANGE_FILE_NAME = FILE_NOTIFY_CHANGE(1);

const FILE_NOTIFY_CHANGE_DIR_NAME = FILE_NOTIFY_CHANGE(2);

const FILE_NOTIFY_CHANGE_ATTRIBUTES = FILE_NOTIFY_CHANGE(4);

const FILE_NOTIFY_CHANGE_SIZE = FILE_NOTIFY_CHANGE(8);

const FILE_NOTIFY_CHANGE_LAST_WRITE = FILE_NOTIFY_CHANGE(16);

const FILE_NOTIFY_CHANGE_LAST_ACCESS = FILE_NOTIFY_CHANGE(32);

const FILE_NOTIFY_CHANGE_CREATION = FILE_NOTIFY_CHANGE(64);

const FILE_NOTIFY_CHANGE_SECURITY = FILE_NOTIFY_CHANGE(256);

/// {@category enum}
extension type const FILE_SHARE_MODE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FILE_SHARE_MODE other) => _ & other._ == other._;

  FILE_SHARE_MODE operator &(int other) => .new(_ & other);
  FILE_SHARE_MODE operator |(int other) => .new(_ | other);
}

const FILE_SHARE_NONE = FILE_SHARE_MODE(0);

const FILE_SHARE_DELETE = FILE_SHARE_MODE(4);

const FILE_SHARE_READ = FILE_SHARE_MODE(1);

const FILE_SHARE_WRITE = FILE_SHARE_MODE(2);

/// {@category enum}
extension type const FILE_TYPE(int _) implements int {}

const FILE_TYPE_UNKNOWN = FILE_TYPE(0);

const FILE_TYPE_DISK = FILE_TYPE(1);

const FILE_TYPE_CHAR = FILE_TYPE(2);

const FILE_TYPE_PIPE = FILE_TYPE(3);

const FILE_TYPE_REMOTE = FILE_TYPE(32768);

/// Constants used by IFileIsInUse::GetUsage to indicate how a file in use is
/// being used.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-file_usage_type>.
///
/// {@category enum}
extension type const FILE_USAGE_TYPE(int _) implements int {}

/// The file is being played by the process that has it open.
const FUT_PLAYING = FILE_USAGE_TYPE(0);

/// The file is being edited by the process that has it open.
const FUT_EDITING = FILE_USAGE_TYPE(1);

/// The file is open in the process for an unspecified action or an action that
/// does not readily fit into the other two categories.
const FUT_GENERIC = FILE_USAGE_TYPE(2);

/// Defines values that are used with the FindFirstFileEx function to specify
/// the information level of the returned data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-findex_info_levels>.
///
/// {@category enum}
extension type const FINDEX_INFO_LEVELS(int _) implements int {}

/// The <a
/// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-findfirstfileexa">FindFirstFileEx</a>
/// function retrieves a standard set of attribute information.
const FindExInfoStandard = FINDEX_INFO_LEVELS(0);

/// The <a
/// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-findfirstfileexa">FindFirstFileEx</a>
/// function does not query the short file name, improving overall enumeration
/// speed.
const FindExInfoBasic = FINDEX_INFO_LEVELS(1);

/// This value is used for validation.
const FindExInfoMaxInfoLevel = FINDEX_INFO_LEVELS(2);

/// Defines values that are used with the FindFirstFileEx function to specify
/// the type of filtering to perform.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-findex_search_ops>.
///
/// {@category enum}
extension type const FINDEX_SEARCH_OPS(int _) implements int {}

/// The search for a file that matches a specified file name.
const FindExSearchNameMatch = FINDEX_SEARCH_OPS(0);

/// This is an advisory flag.
const FindExSearchLimitToDirectories = FINDEX_SEARCH_OPS(1);

/// This filtering type is not available.
const FindExSearchLimitToDevices = FINDEX_SEARCH_OPS(2);

const FindExSearchMaxSearchOp = FINDEX_SEARCH_OPS(3);

/// {@category enum}
extension type const FINDREPLACE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FINDREPLACE_FLAGS other) => _ & other._ == other._;

  FINDREPLACE_FLAGS operator &(int other) => .new(_ & other);
  FINDREPLACE_FLAGS operator |(int other) => .new(_ | other);
}

const FR_DOWN = FINDREPLACE_FLAGS(1);

const FR_WHOLEWORD = FINDREPLACE_FLAGS(2);

const FR_MATCHCASE = FINDREPLACE_FLAGS(4);

const FR_FINDNEXT = FINDREPLACE_FLAGS(8);

const FR_REPLACE = FINDREPLACE_FLAGS(16);

const FR_REPLACEALL = FINDREPLACE_FLAGS(32);

const FR_DIALOGTERM = FINDREPLACE_FLAGS(64);

const FR_SHOWHELP = FINDREPLACE_FLAGS(128);

const FR_ENABLEHOOK = FINDREPLACE_FLAGS(256);

const FR_ENABLETEMPLATE = FINDREPLACE_FLAGS(512);

const FR_NOUPDOWN = FINDREPLACE_FLAGS(1024);

const FR_NOMATCHCASE = FINDREPLACE_FLAGS(2048);

const FR_NOWHOLEWORD = FINDREPLACE_FLAGS(4096);

const FR_ENABLETEMPLATEHANDLE = FINDREPLACE_FLAGS(8192);

const FR_HIDEUPDOWN = FINDREPLACE_FLAGS(16384);

const FR_HIDEMATCHCASE = FINDREPLACE_FLAGS(32768);

const FR_HIDEWHOLEWORD = FINDREPLACE_FLAGS(65536);

const FR_RAW = FINDREPLACE_FLAGS(131072);

const FR_SHOWWRAPAROUND = FINDREPLACE_FLAGS(262144);

const FR_NOWRAPAROUND = FINDREPLACE_FLAGS(524288);

const FR_WRAPAROUND = FINDREPLACE_FLAGS(1048576);

const FR_MATCHDIAC = FINDREPLACE_FLAGS(536870912);

const FR_MATCHKASHIDA = FINDREPLACE_FLAGS(1073741824);

const FR_MATCHALEFHAMZA = FINDREPLACE_FLAGS(2147483648);

/// {@category enum}
extension type const FIND_FIRST_EX_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FIND_FIRST_EX_FLAGS other) => _ & other._ == other._;

  FIND_FIRST_EX_FLAGS operator &(int other) => .new(_ & other);
  FIND_FIRST_EX_FLAGS operator |(int other) => .new(_ | other);
}

const FIND_FIRST_EX_CASE_SENSITIVE = FIND_FIRST_EX_FLAGS(1);

const FIND_FIRST_EX_LARGE_FETCH = FIND_FIRST_EX_FLAGS(2);

const FIND_FIRST_EX_ON_DISK_ENTRIES_ONLY = FIND_FIRST_EX_FLAGS(4);

/// {@category enum}
extension type const FIRMWARE_TABLE_PROVIDER(int _) implements int {}

const ACPI = FIRMWARE_TABLE_PROVIDER(1094930505);

const FIRM = FIRMWARE_TABLE_PROVIDER(1179210317);

const RSMB = FIRMWARE_TABLE_PROVIDER(1381190978);

/// {@category enum}
extension type const FONT_CHARSET(int _) implements int {}

const ANSI_CHARSET = FONT_CHARSET(0);

const DEFAULT_CHARSET = FONT_CHARSET(1);

const SYMBOL_CHARSET = FONT_CHARSET(2);

const SHIFTJIS_CHARSET = FONT_CHARSET(128);

const HANGEUL_CHARSET = FONT_CHARSET(129);

const HANGUL_CHARSET = FONT_CHARSET(129);

const GB2312_CHARSET = FONT_CHARSET(134);

const CHINESEBIG5_CHARSET = FONT_CHARSET(136);

const OEM_CHARSET = FONT_CHARSET(255);

const JOHAB_CHARSET = FONT_CHARSET(130);

const HEBREW_CHARSET = FONT_CHARSET(177);

const ARABIC_CHARSET = FONT_CHARSET(178);

const GREEK_CHARSET = FONT_CHARSET(161);

const TURKISH_CHARSET = FONT_CHARSET(162);

const VIETNAMESE_CHARSET = FONT_CHARSET(163);

const THAI_CHARSET = FONT_CHARSET(222);

const EASTEUROPE_CHARSET = FONT_CHARSET(238);

const RUSSIAN_CHARSET = FONT_CHARSET(204);

const MAC_CHARSET = FONT_CHARSET(77);

const BALTIC_CHARSET = FONT_CHARSET(186);

/// {@category enum}
extension type const FONT_CLIP_PRECISION(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FONT_CLIP_PRECISION other) => _ & other._ == other._;

  FONT_CLIP_PRECISION operator &(int other) => .new(_ & other);
  FONT_CLIP_PRECISION operator |(int other) => .new(_ | other);
}

const CLIP_DEFAULT_PRECIS = FONT_CLIP_PRECISION(0);

const CLIP_CHARACTER_PRECIS = FONT_CLIP_PRECISION(1);

const CLIP_STROKE_PRECIS = FONT_CLIP_PRECISION(2);

const CLIP_MASK = FONT_CLIP_PRECISION(15);

const CLIP_LH_ANGLES = FONT_CLIP_PRECISION(16);

const CLIP_TT_ALWAYS = FONT_CLIP_PRECISION(32);

const CLIP_DFA_DISABLE = FONT_CLIP_PRECISION(64);

const CLIP_EMBEDDED = FONT_CLIP_PRECISION(128);

const CLIP_DFA_OVERRIDE = FONT_CLIP_PRECISION(64);

/// {@category enum}
extension type const FONT_FAMILY(int _) implements int {}

const FF_DECORATIVE = FONT_FAMILY(80);

const FF_DONTCARE = FONT_FAMILY(0);

const FF_MODERN = FONT_FAMILY(48);

const FF_ROMAN = FONT_FAMILY(16);

const FF_SCRIPT = FONT_FAMILY(64);

const FF_SWISS = FONT_FAMILY(32);

/// {@category enum}
extension type const FONT_OUTPUT_PRECISION(int _) implements int {}

const OUT_DEFAULT_PRECIS = FONT_OUTPUT_PRECISION(0);

const OUT_STRING_PRECIS = FONT_OUTPUT_PRECISION(1);

const OUT_CHARACTER_PRECIS = FONT_OUTPUT_PRECISION(2);

const OUT_STROKE_PRECIS = FONT_OUTPUT_PRECISION(3);

const OUT_TT_PRECIS = FONT_OUTPUT_PRECISION(4);

const OUT_DEVICE_PRECIS = FONT_OUTPUT_PRECISION(5);

const OUT_RASTER_PRECIS = FONT_OUTPUT_PRECISION(6);

const OUT_TT_ONLY_PRECIS = FONT_OUTPUT_PRECISION(7);

const OUT_OUTLINE_PRECIS = FONT_OUTPUT_PRECISION(8);

const OUT_SCREEN_OUTLINE_PRECIS = FONT_OUTPUT_PRECISION(9);

const OUT_PS_ONLY_PRECIS = FONT_OUTPUT_PRECISION(10);

/// {@category enum}
extension type const FONT_QUALITY(int _) implements int {}

const DEFAULT_QUALITY = FONT_QUALITY(0);

const DRAFT_QUALITY = FONT_QUALITY(1);

const PROOF_QUALITY = FONT_QUALITY(2);

const NONANTIALIASED_QUALITY = FONT_QUALITY(3);

const ANTIALIASED_QUALITY = FONT_QUALITY(4);

const CLEARTYPE_QUALITY = FONT_QUALITY(5);

/// {@category enum}
extension type const FONT_RESOURCE_CHARACTERISTICS(int _) implements int {}

const FR_PRIVATE = FONT_RESOURCE_CHARACTERISTICS(16);

const FR_NOT_ENUM = FONT_RESOURCE_CHARACTERISTICS(32);

/// {@category enum}
extension type const FONT_WEIGHT(int _) implements int {}

const FW_DONTCARE = FONT_WEIGHT(0);

const FW_THIN = FONT_WEIGHT(100);

const FW_EXTRALIGHT = FONT_WEIGHT(200);

const FW_LIGHT = FONT_WEIGHT(300);

const FW_NORMAL = FONT_WEIGHT(400);

const FW_MEDIUM = FONT_WEIGHT(500);

const FW_SEMIBOLD = FONT_WEIGHT(600);

const FW_BOLD = FONT_WEIGHT(700);

const FW_EXTRABOLD = FONT_WEIGHT(800);

const FW_HEAVY = FONT_WEIGHT(900);

const FW_ULTRALIGHT = FONT_WEIGHT(200);

const FW_REGULAR = FONT_WEIGHT(400);

const FW_DEMIBOLD = FONT_WEIGHT(600);

const FW_ULTRABOLD = FONT_WEIGHT(800);

const FW_BLACK = FONT_WEIGHT(900);

/// {@category enum}
extension type const FOREGROUND_WINDOW_LOCK_CODE(int _) implements int {}

const LSFW_LOCK = FOREGROUND_WINDOW_LOCK_CODE(1);

const LSFW_UNLOCK = FOREGROUND_WINDOW_LOCK_CODE(2);

/// {@category enum}
extension type const FORMAT_MESSAGE_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(FORMAT_MESSAGE_OPTIONS other) => _ & other._ == other._;

  FORMAT_MESSAGE_OPTIONS operator &(int other) => .new(_ & other);
  FORMAT_MESSAGE_OPTIONS operator |(int other) => .new(_ | other);
}

const FORMAT_MESSAGE_ALLOCATE_BUFFER = FORMAT_MESSAGE_OPTIONS(256);

const FORMAT_MESSAGE_ARGUMENT_ARRAY = FORMAT_MESSAGE_OPTIONS(8192);

const FORMAT_MESSAGE_FROM_HMODULE = FORMAT_MESSAGE_OPTIONS(2048);

const FORMAT_MESSAGE_FROM_STRING = FORMAT_MESSAGE_OPTIONS(1024);

const FORMAT_MESSAGE_FROM_SYSTEM = FORMAT_MESSAGE_OPTIONS(4096);

const FORMAT_MESSAGE_IGNORE_INSERTS = FORMAT_MESSAGE_OPTIONS(512);

/// {@category enum}
extension type const FRAMEBOTTOMSTATES(int _) implements int {}

const FRB_ACTIVE = FRAMEBOTTOMSTATES(1);

const FRB_INACTIVE = FRAMEBOTTOMSTATES(2);

/// {@category enum}
extension type const FRAMELEFTSTATES(int _) implements int {}

const FRL_ACTIVE = FRAMELEFTSTATES(1);

const FRL_INACTIVE = FRAMELEFTSTATES(2);

/// {@category enum}
extension type const FRAMERIGHTSTATES(int _) implements int {}

const FRR_ACTIVE = FRAMERIGHTSTATES(1);

const FRR_INACTIVE = FRAMERIGHTSTATES(2);

/// {@category enum}
extension type const FRAMESTATES(int _) implements int {}

const FS_ACTIVE = FRAMESTATES(1);

const FS_INACTIVE = FRAMESTATES(2);

/// Specifies function flags.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-funcflags>.
///
/// {@category enum}
extension type const FUNCFLAGS(int _) implements int {}

/// The function should not be accessible from macro languages.
const FUNCFLAG_FRESTRICTED = FUNCFLAGS(1);

/// The function returns an object that is a source of events.
const FUNCFLAG_FSOURCE = FUNCFLAGS(2);

/// The function that supports data binding.
const FUNCFLAG_FBINDABLE = FUNCFLAGS(4);

/// When set, any call to a method that sets the property results first in a
/// call to <b>IPropertyNotifySink::OnRequestEdit</b>.
const FUNCFLAG_FREQUESTEDIT = FUNCFLAGS(8);

/// The function that is displayed to the user as bindable.
const FUNCFLAG_FDISPLAYBIND = FUNCFLAGS(16);

/// The function that best represents the object.
const FUNCFLAG_FDEFAULTBIND = FUNCFLAGS(32);

/// The function should not be displayed to the user, although it exists and is
/// bindable.
const FUNCFLAG_FHIDDEN = FUNCFLAGS(64);

/// The function supports <b>GetLastError</b>.
const FUNCFLAG_FUSESGETLASTERROR = FUNCFLAGS(128);

/// Permits an optimization in which the compiler looks for a member named xyz
/// on the type of abc.
const FUNCFLAG_FDEFAULTCOLLELEM = FUNCFLAGS(256);

/// The type information member is the default member for display in the user
/// interface.
const FUNCFLAG_FUIDEFAULT = FUNCFLAGS(512);

/// The property appears in an object browser, but not in a properties browser.
const FUNCFLAG_FNONBROWSABLE = FUNCFLAGS(1024);

/// Tags the interface as having default behaviors.
const FUNCFLAG_FREPLACEABLE = FUNCFLAGS(2048);

/// Mapped as individual bindable properties.
const FUNCFLAG_FIMMEDIATEBIND = FUNCFLAGS(4096);

/// Specifies the function type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-funckind>.
///
/// {@category enum}
extension type const FUNCKIND(int _) implements int {}

/// The function is accessed the same as PUREVIRTUAL, except the function has an
/// implementation.
const FUNC_VIRTUAL = FUNCKIND(0);

/// The function is accessed through the virtual function table (VTBL), and
/// takes an implicit this pointer.
const FUNC_PUREVIRTUAL = FUNCKIND(1);

/// The function is accessed by static address and takes an implicit this
/// pointer.
const FUNC_NONVIRTUAL = FUNCKIND(2);

/// The function is accessed by static address and does not take an implicit
/// this pointer.
const FUNC_STATIC = FUNCKIND(3);

/// The function can be accessed only through <a
/// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nn-oaidl-idispatch">IDispatch</a>.
const FUNC_DISPATCH = FUNCKIND(4);

/// {@category enum}
extension type const GDI_IMAGE_TYPE(int _) implements int {}

const IMAGE_BITMAP = GDI_IMAGE_TYPE(0);

const IMAGE_CURSOR = GDI_IMAGE_TYPE(2);

const IMAGE_ICON = GDI_IMAGE_TYPE(1);

/// {@category enum}
extension type const GDI_REGION_TYPE(int _) implements int {}

const RGN_ERROR = GDI_REGION_TYPE(0);

const NULLREGION = GDI_REGION_TYPE(1);

const SIMPLEREGION = GDI_REGION_TYPE(2);

const COMPLEXREGION = GDI_REGION_TYPE(3);

/// {@category enum}
extension type const GENERIC_ACCESS_RIGHTS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GENERIC_ACCESS_RIGHTS other) => _ & other._ == other._;

  GENERIC_ACCESS_RIGHTS operator &(int other) => .new(_ & other);
  GENERIC_ACCESS_RIGHTS operator |(int other) => .new(_ | other);
}

const GENERIC_READ = GENERIC_ACCESS_RIGHTS(2147483648);

const GENERIC_WRITE = GENERIC_ACCESS_RIGHTS(1073741824);

const GENERIC_EXECUTE = GENERIC_ACCESS_RIGHTS(536870912);

const GENERIC_ALL = GENERIC_ACCESS_RIGHTS(268435456);

/// {@category enum}
extension type const GESTURECONFIG_ID(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GESTURECONFIG_ID other) => _ & other._ == other._;

  GESTURECONFIG_ID operator &(int other) => .new(_ & other);
  GESTURECONFIG_ID operator |(int other) => .new(_ | other);
}

const GID_BEGIN = GESTURECONFIG_ID(1);

const GID_END = GESTURECONFIG_ID(2);

const GID_ZOOM = GESTURECONFIG_ID(3);

const GID_PAN = GESTURECONFIG_ID(4);

const GID_ROTATE = GESTURECONFIG_ID(5);

const GID_TWOFINGERTAP = GESTURECONFIG_ID(6);

const GID_PRESSANDTAP = GESTURECONFIG_ID(7);

const GID_ROLLOVER = GESTURECONFIG_ID(7);

/// Identifies the gesture type specified in DwmRenderGesture.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dwmapi/ne-dwmapi-gesture_type>.
///
/// {@category enum}
extension type const GESTURE_TYPE(int _) implements int {}

/// A pen tap.
const GT_PEN_TAP = GESTURE_TYPE(0);

/// A pen double tap.
const GT_PEN_DOUBLETAP = GESTURE_TYPE(1);

/// A pen right tap.
const GT_PEN_RIGHTTAP = GESTURE_TYPE(2);

/// A pen press and hold.
const GT_PEN_PRESSANDHOLD = GESTURE_TYPE(3);

/// An abort of the pen press and hold.
const GT_PEN_PRESSANDHOLDABORT = GESTURE_TYPE(4);

/// A touch tap.
const GT_TOUCH_TAP = GESTURE_TYPE(5);

/// A touch double tap.
const GT_TOUCH_DOUBLETAP = GESTURE_TYPE(6);

/// A touch right tap.
const GT_TOUCH_RIGHTTAP = GESTURE_TYPE(7);

/// A touch press and hold.
const GT_TOUCH_PRESSANDHOLD = GESTURE_TYPE(8);

/// An abort of the pen press and hold.
const GT_TOUCH_PRESSANDHOLDABORT = GESTURE_TYPE(9);

/// A touch press and tap.
const GT_TOUCH_PRESSANDTAP = GESTURE_TYPE(10);

/// {@category enum}
extension type const GETFINALPATHNAMEBYHANDLE_FLAGS(int _) implements int {}

const VOLUME_NAME_DOS = GETFINALPATHNAMEBYHANDLE_FLAGS(0);

const VOLUME_NAME_GUID = GETFINALPATHNAMEBYHANDLE_FLAGS(1);

const VOLUME_NAME_NT = GETFINALPATHNAMEBYHANDLE_FLAGS(2);

const VOLUME_NAME_NONE = GETFINALPATHNAMEBYHANDLE_FLAGS(4);

const FILE_NAME_NORMALIZED = GETFINALPATHNAMEBYHANDLE_FLAGS(0);

const FILE_NAME_OPENED = GETFINALPATHNAMEBYHANDLE_FLAGS(8);

/// Indicates flags that modify the property store object retrieved by methods
/// that create a property store, such as IShellItem2::GetPropertyStore or
/// IPropertyStoreFactory::GetPropertyStore.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propsys/ne-propsys-getpropertystoreflags>.
///
/// {@category enum}
extension type const GETPROPERTYSTOREFLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GETPROPERTYSTOREFLAGS other) => _ & other._ == other._;

  GETPROPERTYSTOREFLAGS operator &(int other) => .new(_ & other);
  GETPROPERTYSTOREFLAGS operator |(int other) => .new(_ | other);
}

/// Meaning to a calling process: Return a read-only property store that
/// contains all properties.
const GPS_DEFAULT = GETPROPERTYSTOREFLAGS(0);

/// Meaning to a calling process: Include only properties directly from the
/// property handler, which opens the file on the disk, network, or device.
const GPS_HANDLERPROPERTIESONLY = GETPROPERTYSTOREFLAGS(1);

/// Meaning to a calling process: Can write properties to the item.
const GPS_READWRITE = GETPROPERTYSTOREFLAGS(2);

/// Meaning to a calling process: Provides a writable store, with no initial
/// properties, that exists for the lifetime of the Shell item instance;
/// basically, a property bag attached to the item instance.
const GPS_TEMPORARY = GETPROPERTYSTOREFLAGS(4);

/// Meaning to a calling process: Provides a store that does not involve reading
/// from the disk or network.
const GPS_FASTPROPERTIESONLY = GETPROPERTYSTOREFLAGS(8);

/// Meaning to a calling process: Open a slow item (offline file) if necessary.
const GPS_OPENSLOWITEM = GETPROPERTYSTOREFLAGS(16);

/// Meaning to a calling process: Delay memory-intensive operations, such as
/// file access, until a property is requested that requires such access.
const GPS_DELAYCREATION = GETPROPERTYSTOREFLAGS(32);

/// Meaning to a calling process: Succeed at getting the store, even if some
/// properties are not returned.
const GPS_BESTEFFORT = GETPROPERTYSTOREFLAGS(64);

const GPS_NO_OPLOCK = GETPROPERTYSTOREFLAGS(128);

const GPS_PREFERQUERYPROPERTIES = GETPROPERTYSTOREFLAGS(256);

/// Include properties from the file's secondary stream.
const GPS_EXTRINSICPROPERTIES = GETPROPERTYSTOREFLAGS(512);

/// Include only properties from the file's secondary stream.
const GPS_EXTRINSICPROPERTIESONLY = GETPROPERTYSTOREFLAGS(1024);

const GPS_VOLATILEPROPERTIES = GETPROPERTYSTOREFLAGS(2048);

const GPS_VOLATILEPROPERTIESONLY = GETPROPERTYSTOREFLAGS(4096);

/// Mask for valid <a
/// href="https://docs.microsoft.com/windows/desktop/api/propsys/ne-propsys-getpropertystoreflags">GETPROPERTYSTOREFLAGS</a>
/// values.
const GPS_MASK_VALID = GETPROPERTYSTOREFLAGS(8191);

/// {@category enum}
extension type const GET_ADAPTERS_ADDRESSES_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GET_ADAPTERS_ADDRESSES_FLAGS other) => _ & other._ == other._;

  GET_ADAPTERS_ADDRESSES_FLAGS operator &(int other) => .new(_ & other);
  GET_ADAPTERS_ADDRESSES_FLAGS operator |(int other) => .new(_ | other);
}

const GAA_FLAG_SKIP_UNICAST = GET_ADAPTERS_ADDRESSES_FLAGS(1);

const GAA_FLAG_SKIP_ANYCAST = GET_ADAPTERS_ADDRESSES_FLAGS(2);

const GAA_FLAG_SKIP_MULTICAST = GET_ADAPTERS_ADDRESSES_FLAGS(4);

const GAA_FLAG_SKIP_DNS_SERVER = GET_ADAPTERS_ADDRESSES_FLAGS(8);

const GAA_FLAG_INCLUDE_PREFIX = GET_ADAPTERS_ADDRESSES_FLAGS(16);

const GAA_FLAG_SKIP_FRIENDLY_NAME = GET_ADAPTERS_ADDRESSES_FLAGS(32);

const GAA_FLAG_INCLUDE_WINS_INFO = GET_ADAPTERS_ADDRESSES_FLAGS(64);

const GAA_FLAG_INCLUDE_GATEWAYS = GET_ADAPTERS_ADDRESSES_FLAGS(128);

const GAA_FLAG_INCLUDE_ALL_INTERFACES = GET_ADAPTERS_ADDRESSES_FLAGS(256);

const GAA_FLAG_INCLUDE_ALL_COMPARTMENTS = GET_ADAPTERS_ADDRESSES_FLAGS(512);

const GAA_FLAG_INCLUDE_TUNNEL_BINDINGORDER = GET_ADAPTERS_ADDRESSES_FLAGS(1024);

/// {@category enum}
extension type const GET_ANCESTOR_FLAGS(int _) implements int {}

const GA_PARENT = GET_ANCESTOR_FLAGS(1);

const GA_ROOT = GET_ANCESTOR_FLAGS(2);

const GA_ROOTOWNER = GET_ANCESTOR_FLAGS(3);

/// {@category enum}
extension type const GET_CLASS_LONG_INDEX(int _) implements int {}

const GCW_ATOM = GET_CLASS_LONG_INDEX(-32);

const GCL_CBCLSEXTRA = GET_CLASS_LONG_INDEX(-20);

const GCL_CBWNDEXTRA = GET_CLASS_LONG_INDEX(-18);

const GCL_HBRBACKGROUND = GET_CLASS_LONG_INDEX(-10);

const GCL_HCURSOR = GET_CLASS_LONG_INDEX(-12);

const GCL_HICON = GET_CLASS_LONG_INDEX(-14);

const GCL_HICONSM = GET_CLASS_LONG_INDEX(-34);

const GCL_HMODULE = GET_CLASS_LONG_INDEX(-16);

const GCL_MENUNAME = GET_CLASS_LONG_INDEX(-8);

const GCL_STYLE = GET_CLASS_LONG_INDEX(-26);

const GCL_WNDPROC = GET_CLASS_LONG_INDEX(-24);

const GCLP_HBRBACKGROUND = GET_CLASS_LONG_INDEX(-10);

const GCLP_HCURSOR = GET_CLASS_LONG_INDEX(-12);

const GCLP_HICON = GET_CLASS_LONG_INDEX(-14);

const GCLP_HICONSM = GET_CLASS_LONG_INDEX(-34);

const GCLP_HMODULE = GET_CLASS_LONG_INDEX(-16);

const GCLP_MENUNAME = GET_CLASS_LONG_INDEX(-8);

const GCLP_WNDPROC = GET_CLASS_LONG_INDEX(-24);

/// {@category enum}
extension type const GET_DCX_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GET_DCX_FLAGS other) => _ & other._ == other._;

  GET_DCX_FLAGS operator &(int other) => .new(_ & other);
  GET_DCX_FLAGS operator |(int other) => .new(_ | other);
}

const DCX_WINDOW = GET_DCX_FLAGS(1);

const DCX_CACHE = GET_DCX_FLAGS(2);

const DCX_PARENTCLIP = GET_DCX_FLAGS(32);

const DCX_CLIPSIBLINGS = GET_DCX_FLAGS(16);

const DCX_CLIPCHILDREN = GET_DCX_FLAGS(8);

const DCX_NORESETATTRS = GET_DCX_FLAGS(4);

const DCX_LOCKWINDOWUPDATE = GET_DCX_FLAGS(1024);

const DCX_EXCLUDERGN = GET_DCX_FLAGS(64);

const DCX_INTERSECTRGN = GET_DCX_FLAGS(128);

const DCX_INTERSECTUPDATE = GET_DCX_FLAGS(512);

const DCX_VALIDATE = GET_DCX_FLAGS(2097152);

/// {@category enum}
extension type const GET_DEVICE_CAPS_INDEX(int _) implements int {}

const DRIVERVERSION = GET_DEVICE_CAPS_INDEX(0);

const TECHNOLOGY = GET_DEVICE_CAPS_INDEX(2);

const HORZSIZE = GET_DEVICE_CAPS_INDEX(4);

const VERTSIZE = GET_DEVICE_CAPS_INDEX(6);

const HORZRES = GET_DEVICE_CAPS_INDEX(8);

const VERTRES = GET_DEVICE_CAPS_INDEX(10);

const BITSPIXEL = GET_DEVICE_CAPS_INDEX(12);

const PLANES = GET_DEVICE_CAPS_INDEX(14);

const NUMBRUSHES = GET_DEVICE_CAPS_INDEX(16);

const NUMPENS = GET_DEVICE_CAPS_INDEX(18);

const NUMMARKERS = GET_DEVICE_CAPS_INDEX(20);

const NUMFONTS = GET_DEVICE_CAPS_INDEX(22);

const NUMCOLORS = GET_DEVICE_CAPS_INDEX(24);

const PDEVICESIZE = GET_DEVICE_CAPS_INDEX(26);

const CURVECAPS = GET_DEVICE_CAPS_INDEX(28);

const LINECAPS = GET_DEVICE_CAPS_INDEX(30);

const POLYGONALCAPS = GET_DEVICE_CAPS_INDEX(32);

const TEXTCAPS = GET_DEVICE_CAPS_INDEX(34);

const CLIPCAPS = GET_DEVICE_CAPS_INDEX(36);

const RASTERCAPS = GET_DEVICE_CAPS_INDEX(38);

const ASPECTX = GET_DEVICE_CAPS_INDEX(40);

const ASPECTY = GET_DEVICE_CAPS_INDEX(42);

const ASPECTXY = GET_DEVICE_CAPS_INDEX(44);

const LOGPIXELSX = GET_DEVICE_CAPS_INDEX(88);

const LOGPIXELSY = GET_DEVICE_CAPS_INDEX(90);

const SIZEPALETTE = GET_DEVICE_CAPS_INDEX(104);

const NUMRESERVED = GET_DEVICE_CAPS_INDEX(106);

const COLORRES = GET_DEVICE_CAPS_INDEX(108);

const PHYSICALWIDTH = GET_DEVICE_CAPS_INDEX(110);

const PHYSICALHEIGHT = GET_DEVICE_CAPS_INDEX(111);

const PHYSICALOFFSETX = GET_DEVICE_CAPS_INDEX(112);

const PHYSICALOFFSETY = GET_DEVICE_CAPS_INDEX(113);

const SCALINGFACTORX = GET_DEVICE_CAPS_INDEX(114);

const SCALINGFACTORY = GET_DEVICE_CAPS_INDEX(115);

const VREFRESH = GET_DEVICE_CAPS_INDEX(116);

const DESKTOPVERTRES = GET_DEVICE_CAPS_INDEX(117);

const DESKTOPHORZRES = GET_DEVICE_CAPS_INDEX(118);

const BLTALIGNMENT = GET_DEVICE_CAPS_INDEX(119);

const SHADEBLENDCAPS = GET_DEVICE_CAPS_INDEX(120);

const COLORMGMTCAPS = GET_DEVICE_CAPS_INDEX(121);

/// Defines values that are used with the GetFileAttributesEx and
/// GetFileAttributesTransacted functions to specify the information level of
/// the returned data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/ne-minwinbase-get_fileex_info_levels>.
///
/// {@category enum}
extension type const GET_FILEEX_INFO_LEVELS(int _) implements int {}

/// The <a
/// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-getfileattributesexa">GetFileAttributesEx</a>
/// or <a
/// href="https://docs.microsoft.com/windows/desktop/api/winbase/nf-winbase-getfileattributestransacteda">GetFileAttributesTransacted</a>
/// function retrieves a standard set of attribute information.
const GetFileExInfoStandard = GET_FILEEX_INFO_LEVELS(0);

/// One greater than the maximum value.
const GetFileExMaxInfoLevel = GET_FILEEX_INFO_LEVELS(1);

/// {@category enum}
extension type const GET_FILE_VERSION_INFO_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GET_FILE_VERSION_INFO_FLAGS other) => _ & other._ == other._;

  GET_FILE_VERSION_INFO_FLAGS operator &(int other) => .new(_ & other);
  GET_FILE_VERSION_INFO_FLAGS operator |(int other) => .new(_ | other);
}

const FILE_VER_GET_LOCALISED = GET_FILE_VERSION_INFO_FLAGS(1);

const FILE_VER_GET_NEUTRAL = GET_FILE_VERSION_INFO_FLAGS(2);

const FILE_VER_GET_PREFETCHED = GET_FILE_VERSION_INFO_FLAGS(4);

/// {@category enum}
extension type const GET_MENU_DEFAULT_ITEM_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GET_MENU_DEFAULT_ITEM_FLAGS other) => _ & other._ == other._;

  GET_MENU_DEFAULT_ITEM_FLAGS operator &(int other) => .new(_ & other);
  GET_MENU_DEFAULT_ITEM_FLAGS operator |(int other) => .new(_ | other);
}

const GMDI_GOINTOPOPUPS = GET_MENU_DEFAULT_ITEM_FLAGS(2);

const GMDI_USEDISABLED = GET_MENU_DEFAULT_ITEM_FLAGS(1);

/// {@category enum}
extension type const GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(int _)
    implements int {}

const GMMP_USE_DISPLAY_POINTS = GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(1);

const GMMP_USE_HIGH_RESOLUTION_POINTS = GET_MOUSE_MOVE_POINTS_EX_RESOLUTION(2);

/// {@category enum}
extension type const GET_STOCK_OBJECT_FLAGS(int _) implements int {}

const BLACK_BRUSH = GET_STOCK_OBJECT_FLAGS(4);

const DKGRAY_BRUSH = GET_STOCK_OBJECT_FLAGS(3);

const DC_BRUSH = GET_STOCK_OBJECT_FLAGS(18);

const GRAY_BRUSH = GET_STOCK_OBJECT_FLAGS(2);

const HOLLOW_BRUSH = GET_STOCK_OBJECT_FLAGS(5);

const LTGRAY_BRUSH = GET_STOCK_OBJECT_FLAGS(1);

const NULL_BRUSH = GET_STOCK_OBJECT_FLAGS(5);

const WHITE_BRUSH = GET_STOCK_OBJECT_FLAGS(0);

const BLACK_PEN = GET_STOCK_OBJECT_FLAGS(7);

const DC_PEN = GET_STOCK_OBJECT_FLAGS(19);

const NULL_PEN = GET_STOCK_OBJECT_FLAGS(8);

const WHITE_PEN = GET_STOCK_OBJECT_FLAGS(6);

const ANSI_FIXED_FONT = GET_STOCK_OBJECT_FLAGS(11);

const ANSI_VAR_FONT = GET_STOCK_OBJECT_FLAGS(12);

const DEVICE_DEFAULT_FONT = GET_STOCK_OBJECT_FLAGS(14);

const DEFAULT_GUI_FONT = GET_STOCK_OBJECT_FLAGS(17);

const OEM_FIXED_FONT = GET_STOCK_OBJECT_FLAGS(10);

const SYSTEM_FONT = GET_STOCK_OBJECT_FLAGS(13);

const SYSTEM_FIXED_FONT = GET_STOCK_OBJECT_FLAGS(16);

const DEFAULT_PALETTE = GET_STOCK_OBJECT_FLAGS(15);

/// {@category enum}
extension type const GET_WINDOW_CMD(int _) implements int {}

const GW_CHILD = GET_WINDOW_CMD(5);

const GW_ENABLEDPOPUP = GET_WINDOW_CMD(6);

const GW_HWNDFIRST = GET_WINDOW_CMD(0);

const GW_HWNDLAST = GET_WINDOW_CMD(1);

const GW_HWNDNEXT = GET_WINDOW_CMD(2);

const GW_HWNDPREV = GET_WINDOW_CMD(3);

const GW_OWNER = GET_WINDOW_CMD(4);

/// {@category enum}
extension type const GLOBAL_ALLOC_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GLOBAL_ALLOC_FLAGS other) => _ & other._ == other._;

  GLOBAL_ALLOC_FLAGS operator &(int other) => .new(_ & other);
  GLOBAL_ALLOC_FLAGS operator |(int other) => .new(_ | other);
}

const GHND = GLOBAL_ALLOC_FLAGS(66);

const GMEM_FIXED = GLOBAL_ALLOC_FLAGS(0);

const GMEM_MOVEABLE = GLOBAL_ALLOC_FLAGS(2);

const GMEM_ZEROINIT = GLOBAL_ALLOC_FLAGS(64);

const GPTR = GLOBAL_ALLOC_FLAGS(64);

/// {@category enum}
extension type const GUITHREADINFO_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(GUITHREADINFO_FLAGS other) => _ & other._ == other._;

  GUITHREADINFO_FLAGS operator &(int other) => .new(_ & other);
  GUITHREADINFO_FLAGS operator |(int other) => .new(_ | other);
}

const GUI_CARETBLINKING = GUITHREADINFO_FLAGS(1);

const GUI_INMENUMODE = GUITHREADINFO_FLAGS(4);

const GUI_INMOVESIZE = GUITHREADINFO_FLAGS(2);

const GUI_POPUPMENUMODE = GUITHREADINFO_FLAGS(16);

const GUI_SYSTEMMENUMODE = GUITHREADINFO_FLAGS(8);

/// {@category enum}
extension type const HANDLE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(HANDLE_FLAGS other) => _ & other._ == other._;

  HANDLE_FLAGS operator &(int other) => .new(_ & other);
  HANDLE_FLAGS operator |(int other) => .new(_ | other);
}

const HANDLE_FLAG_INHERIT = HANDLE_FLAGS(1);

const HANDLE_FLAG_PROTECT_FROM_CLOSE = HANDLE_FLAGS(2);

/// {@category enum}
extension type const HATCH_BRUSH_STYLE(int _) implements int {}

const HS_BDIAGONAL = HATCH_BRUSH_STYLE(3);

const HS_CROSS = HATCH_BRUSH_STYLE(4);

const HS_DIAGCROSS = HATCH_BRUSH_STYLE(5);

const HS_FDIAGONAL = HATCH_BRUSH_STYLE(2);

const HS_HORIZONTAL = HATCH_BRUSH_STYLE(0);

const HS_VERTICAL = HATCH_BRUSH_STYLE(1);

/// {@category enum}
extension type const HDC_MAP_MODE(int _) implements int {}

const MM_ANISOTROPIC = HDC_MAP_MODE(8);

const MM_HIENGLISH = HDC_MAP_MODE(5);

const MM_HIMETRIC = HDC_MAP_MODE(3);

const MM_ISOTROPIC = HDC_MAP_MODE(7);

const MM_LOENGLISH = HDC_MAP_MODE(4);

const MM_LOMETRIC = HDC_MAP_MODE(2);

const MM_TEXT = HDC_MAP_MODE(1);

const MM_TWIPS = HDC_MAP_MODE(6);

/// {@category enum}
extension type const HEAP_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(HEAP_FLAGS other) => _ & other._ == other._;

  HEAP_FLAGS operator &(int other) => .new(_ & other);
  HEAP_FLAGS operator |(int other) => .new(_ | other);
}

const HEAP_NONE = HEAP_FLAGS(0);

const HEAP_NO_SERIALIZE = HEAP_FLAGS(1);

const HEAP_GROWABLE = HEAP_FLAGS(2);

const HEAP_GENERATE_EXCEPTIONS = HEAP_FLAGS(4);

const HEAP_ZERO_MEMORY = HEAP_FLAGS(8);

const HEAP_REALLOC_IN_PLACE_ONLY = HEAP_FLAGS(16);

const HEAP_TAIL_CHECKING_ENABLED = HEAP_FLAGS(32);

const HEAP_FREE_CHECKING_ENABLED = HEAP_FLAGS(64);

const HEAP_DISABLE_COALESCE_ON_FREE = HEAP_FLAGS(128);

const HEAP_CREATE_ALIGN_16 = HEAP_FLAGS(65536);

const HEAP_CREATE_ENABLE_TRACING = HEAP_FLAGS(131072);

const HEAP_CREATE_ENABLE_EXECUTE = HEAP_FLAGS(262144);

const HEAP_MAXIMUM_TAG = HEAP_FLAGS(4095);

const HEAP_PSEUDO_TAG_FLAG = HEAP_FLAGS(32768);

const HEAP_TAG_SHIFT = HEAP_FLAGS(18);

const HEAP_CREATE_SEGMENT_HEAP = HEAP_FLAGS(256);

const HEAP_CREATE_HARDENED = HEAP_FLAGS(512);

/// Specifies the class of heap information to be set or retrieved.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ne-winnt-heap_information_class>.
///
/// {@category enum}
extension type const HEAP_INFORMATION_CLASS(int _) implements int {}

/// The heap features that are enabled.
const HeapCompatibilityInformation = HEAP_INFORMATION_CLASS(0);

/// The terminate-on-corruption feature.
const HeapEnableTerminationOnCorruption = HEAP_INFORMATION_CLASS(1);

const HeapOptimizeResources = HEAP_INFORMATION_CLASS(3);

const HeapTag = HEAP_INFORMATION_CLASS(7);

/// {@category enum}
extension type const HELPBUTTONSTATES(int _) implements int {}

const HBS_NORMAL = HELPBUTTONSTATES(1);

const HBS_HOT = HELPBUTTONSTATES(2);

const HBS_PUSHED = HELPBUTTONSTATES(3);

const HBS_DISABLED = HELPBUTTONSTATES(4);

/// {@category enum}
extension type const HORZSCROLLSTATES(int _) implements int {}

const HSS_NORMAL = HORZSCROLLSTATES(1);

const HSS_HOT = HORZSCROLLSTATES(2);

const HSS_PUSHED = HORZSCROLLSTATES(3);

const HSS_DISABLED = HORZSCROLLSTATES(4);

/// {@category enum}
extension type const HORZTHUMBSTATES(int _) implements int {}

const HTS_NORMAL = HORZTHUMBSTATES(1);

const HTS_HOT = HORZTHUMBSTATES(2);

const HTS_PUSHED = HORZTHUMBSTATES(3);

const HTS_DISABLED = HORZTHUMBSTATES(4);

/// {@category enum}
extension type const HOT_KEY_MODIFIERS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(HOT_KEY_MODIFIERS other) => _ & other._ == other._;

  HOT_KEY_MODIFIERS operator &(int other) => .new(_ & other);
  HOT_KEY_MODIFIERS operator |(int other) => .new(_ | other);
}

const MOD_ALT = HOT_KEY_MODIFIERS(1);

const MOD_CONTROL = HOT_KEY_MODIFIERS(2);

const MOD_NOREPEAT = HOT_KEY_MODIFIERS(16384);

const MOD_SHIFT = HOT_KEY_MODIFIERS(4);

const MOD_WIN = HOT_KEY_MODIFIERS(8);

/// {@category enum}
extension type const IDLFLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(IDLFLAGS other) => _ & other._ == other._;

  IDLFLAGS operator &(int other) => .new(_ & other);
  IDLFLAGS operator |(int other) => .new(_ | other);
}

const IDLFLAG_NONE = IDLFLAGS(0);

const IDLFLAG_FIN = IDLFLAGS(1);

const IDLFLAG_FOUT = IDLFLAGS(2);

const IDLFLAG_FLCID = IDLFLAGS(4);

const IDLFLAG_FRETVAL = IDLFLAGS(8);

/// Specifies the operational status of an interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ne-ifdef-if_oper_status>.
///
/// {@category enum}
extension type const IF_OPER_STATUS(int _) implements int {}

/// The interface is up and operational.
const IfOperStatusUp = IF_OPER_STATUS(1);

/// The interface is not down and not operational.
const IfOperStatusDown = IF_OPER_STATUS(2);

/// The interface is being tested.
const IfOperStatusTesting = IF_OPER_STATUS(3);

/// The interface status is unknown.
const IfOperStatusUnknown = IF_OPER_STATUS(4);

/// The interface is not in a condition to pass packets.
const IfOperStatusDormant = IF_OPER_STATUS(5);

/// This state is a refinement on the down state which indicates that the
/// interface is down specifically because some component (for example, a
/// hardware component) is not present in the system.
const IfOperStatusNotPresent = IF_OPER_STATUS(6);

/// This state is a refinement on the down state.
const IfOperStatusLowerLayerDown = IF_OPER_STATUS(7);

/// Lists the extended symbol options that you can get and set by using the
/// SymGetExtendedOption and SymSetExtendedOption functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/ne-dbghelp-imagehlp_extended_options>.
///
/// {@category enum}
extension type const IMAGEHLP_EXTENDED_OPTIONS(int _) implements int {}

/// Turns off explicit updates to the last access time of a symbol that is
/// loaded.
const SYMOPT_EX_DISABLEACCESSTIMEUPDATE = IMAGEHLP_EXTENDED_OPTIONS(0);

const SYMOPT_EX_LASTVALIDDEBUGDIRECTORY = IMAGEHLP_EXTENDED_OPTIONS(1);

const SYMOPT_EX_NOIMPLICITPATTERNSEARCH = IMAGEHLP_EXTENDED_OPTIONS(2);

const SYMOPT_EX_NEVERLOADSYMBOLS = IMAGEHLP_EXTENDED_OPTIONS(3);

const SYMOPT_EX_MAX = IMAGEHLP_EXTENDED_OPTIONS(4);

/// {@category enum}
extension type const IMAGE_FILE_MACHINE(int _) implements int {}

const IMAGE_FILE_MACHINE_AXP64 = IMAGE_FILE_MACHINE(644);

const IMAGE_FILE_MACHINE_I386 = IMAGE_FILE_MACHINE(332);

const IMAGE_FILE_MACHINE_IA64 = IMAGE_FILE_MACHINE(512);

const IMAGE_FILE_MACHINE_AMD64 = IMAGE_FILE_MACHINE(34404);

const IMAGE_FILE_MACHINE_UNKNOWN = IMAGE_FILE_MACHINE(0);

const IMAGE_FILE_MACHINE_TARGET_HOST = IMAGE_FILE_MACHINE(1);

const IMAGE_FILE_MACHINE_R3000 = IMAGE_FILE_MACHINE(354);

const IMAGE_FILE_MACHINE_R4000 = IMAGE_FILE_MACHINE(358);

const IMAGE_FILE_MACHINE_R10000 = IMAGE_FILE_MACHINE(360);

const IMAGE_FILE_MACHINE_WCEMIPSV2 = IMAGE_FILE_MACHINE(361);

const IMAGE_FILE_MACHINE_ALPHA = IMAGE_FILE_MACHINE(388);

const IMAGE_FILE_MACHINE_SH3 = IMAGE_FILE_MACHINE(418);

const IMAGE_FILE_MACHINE_SH3DSP = IMAGE_FILE_MACHINE(419);

const IMAGE_FILE_MACHINE_SH3E = IMAGE_FILE_MACHINE(420);

const IMAGE_FILE_MACHINE_SH4 = IMAGE_FILE_MACHINE(422);

const IMAGE_FILE_MACHINE_SH5 = IMAGE_FILE_MACHINE(424);

const IMAGE_FILE_MACHINE_ARM = IMAGE_FILE_MACHINE(448);

const IMAGE_FILE_MACHINE_THUMB = IMAGE_FILE_MACHINE(450);

const IMAGE_FILE_MACHINE_ARMNT = IMAGE_FILE_MACHINE(452);

const IMAGE_FILE_MACHINE_AM33 = IMAGE_FILE_MACHINE(467);

const IMAGE_FILE_MACHINE_POWERPC = IMAGE_FILE_MACHINE(496);

const IMAGE_FILE_MACHINE_POWERPCFP = IMAGE_FILE_MACHINE(497);

const IMAGE_FILE_MACHINE_MIPS16 = IMAGE_FILE_MACHINE(614);

const IMAGE_FILE_MACHINE_ALPHA64 = IMAGE_FILE_MACHINE(644);

const IMAGE_FILE_MACHINE_MIPSFPU = IMAGE_FILE_MACHINE(870);

const IMAGE_FILE_MACHINE_MIPSFPU16 = IMAGE_FILE_MACHINE(1126);

const IMAGE_FILE_MACHINE_TRICORE = IMAGE_FILE_MACHINE(1312);

const IMAGE_FILE_MACHINE_CEF = IMAGE_FILE_MACHINE(3311);

const IMAGE_FILE_MACHINE_EBC = IMAGE_FILE_MACHINE(3772);

const IMAGE_FILE_MACHINE_M32R = IMAGE_FILE_MACHINE(36929);

const IMAGE_FILE_MACHINE_ARM64 = IMAGE_FILE_MACHINE(43620);

const IMAGE_FILE_MACHINE_CEE = IMAGE_FILE_MACHINE(49390);

/// {@category enum}
extension type const IMAGE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(IMAGE_FLAGS other) => _ & other._ == other._;

  IMAGE_FLAGS operator &(int other) => .new(_ & other);
  IMAGE_FLAGS operator |(int other) => .new(_ | other);
}

const LR_CREATEDIBSECTION = IMAGE_FLAGS(8192);

const LR_DEFAULTCOLOR = IMAGE_FLAGS(0);

const LR_DEFAULTSIZE = IMAGE_FLAGS(64);

const LR_LOADFROMFILE = IMAGE_FLAGS(16);

const LR_LOADMAP3DCOLORS = IMAGE_FLAGS(4096);

const LR_LOADTRANSPARENT = IMAGE_FLAGS(32);

const LR_MONOCHROME = IMAGE_FLAGS(1);

const LR_SHARED = IMAGE_FLAGS(32768);

const LR_VGACOLOR = IMAGE_FLAGS(128);

const LR_COPYDELETEORG = IMAGE_FLAGS(8);

const LR_COPYFROMRESOURCE = IMAGE_FLAGS(16384);

const LR_COPYRETURNORG = IMAGE_FLAGS(4);

/// {@category enum}
extension type const IMPLTYPEFLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(IMPLTYPEFLAGS other) => _ & other._ == other._;

  IMPLTYPEFLAGS operator &(int other) => .new(_ & other);
  IMPLTYPEFLAGS operator |(int other) => .new(_ | other);
}

const IMPLTYPEFLAG_FDEFAULT = IMPLTYPEFLAGS(1);

const IMPLTYPEFLAG_FSOURCE = IMPLTYPEFLAGS(2);

const IMPLTYPEFLAG_FRESTRICTED = IMPLTYPEFLAGS(4);

const IMPLTYPEFLAG_FDEFAULTVTABLE = IMPLTYPEFLAGS(8);

/// {@category enum}
extension type const INITCOMMONCONTROLSEX_ICC(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(INITCOMMONCONTROLSEX_ICC other) => _ & other._ == other._;

  INITCOMMONCONTROLSEX_ICC operator &(int other) => .new(_ & other);
  INITCOMMONCONTROLSEX_ICC operator |(int other) => .new(_ | other);
}

const ICC_ANIMATE_CLASS = INITCOMMONCONTROLSEX_ICC(128);

const ICC_BAR_CLASSES = INITCOMMONCONTROLSEX_ICC(4);

const ICC_COOL_CLASSES = INITCOMMONCONTROLSEX_ICC(1024);

const ICC_DATE_CLASSES = INITCOMMONCONTROLSEX_ICC(256);

const ICC_HOTKEY_CLASS = INITCOMMONCONTROLSEX_ICC(64);

const ICC_INTERNET_CLASSES = INITCOMMONCONTROLSEX_ICC(2048);

const ICC_LINK_CLASS = INITCOMMONCONTROLSEX_ICC(32768);

const ICC_LISTVIEW_CLASSES = INITCOMMONCONTROLSEX_ICC(1);

const ICC_NATIVEFNTCTL_CLASS = INITCOMMONCONTROLSEX_ICC(8192);

const ICC_PAGESCROLLER_CLASS = INITCOMMONCONTROLSEX_ICC(4096);

const ICC_PROGRESS_CLASS = INITCOMMONCONTROLSEX_ICC(32);

const ICC_STANDARD_CLASSES = INITCOMMONCONTROLSEX_ICC(16384);

const ICC_TAB_CLASSES = INITCOMMONCONTROLSEX_ICC(8);

const ICC_TREEVIEW_CLASSES = INITCOMMONCONTROLSEX_ICC(2);

const ICC_UPDOWN_CLASS = INITCOMMONCONTROLSEX_ICC(16);

const ICC_USEREX_CLASSES = INITCOMMONCONTROLSEX_ICC(512);

const ICC_WIN95_CLASSES = INITCOMMONCONTROLSEX_ICC(255);

/// {@category enum}
extension type const INPUT_TYPE(int _) implements int {}

const INPUT_MOUSE = INPUT_TYPE(0);

const INPUT_KEYBOARD = INPUT_TYPE(1);

const INPUT_HARDWARE = INPUT_TYPE(2);

/// Specifies the way a function is invoked.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-invokekind>.
///
/// {@category enum}
extension type const INVOKEKIND(int _) implements int {}

/// The member is called using a normal function invocation syntax.
const INVOKE_FUNC = INVOKEKIND(1);

/// The function is invoked using a normal property-access syntax.
const INVOKE_PROPERTYGET = INVOKEKIND(2);

/// The function is invoked using a property value assignment syntax.
const INVOKE_PROPERTYPUT = INVOKEKIND(4);

/// The function is invoked using a property reference assignment syntax.
const INVOKE_PROPERTYPUTREF = INVOKEKIND(8);

/// {@category enum}
extension type const JOBOBJECTINFOCLASS(int _) implements int {}

const JobObjectBasicAccountingInformation = JOBOBJECTINFOCLASS(1);

const JobObjectBasicLimitInformation = JOBOBJECTINFOCLASS(2);

const JobObjectBasicProcessIdList = JOBOBJECTINFOCLASS(3);

const JobObjectBasicUIRestrictions = JOBOBJECTINFOCLASS(4);

const JobObjectSecurityLimitInformation = JOBOBJECTINFOCLASS(5);

const JobObjectEndOfJobTimeInformation = JOBOBJECTINFOCLASS(6);

const JobObjectAssociateCompletionPortInformation = JOBOBJECTINFOCLASS(7);

const JobObjectBasicAndIoAccountingInformation = JOBOBJECTINFOCLASS(8);

const JobObjectExtendedLimitInformation = JOBOBJECTINFOCLASS(9);

const JobObjectJobSetInformation = JOBOBJECTINFOCLASS(10);

const JobObjectGroupInformation = JOBOBJECTINFOCLASS(11);

const JobObjectNotificationLimitInformation = JOBOBJECTINFOCLASS(12);

const JobObjectLimitViolationInformation = JOBOBJECTINFOCLASS(13);

const JobObjectGroupInformationEx = JOBOBJECTINFOCLASS(14);

const JobObjectCpuRateControlInformation = JOBOBJECTINFOCLASS(15);

const JobObjectCompletionFilter = JOBOBJECTINFOCLASS(16);

const JobObjectCompletionCounter = JOBOBJECTINFOCLASS(17);

const JobObjectReserved1Information = JOBOBJECTINFOCLASS(18);

const JobObjectReserved2Information = JOBOBJECTINFOCLASS(19);

const JobObjectReserved3Information = JOBOBJECTINFOCLASS(20);

const JobObjectReserved4Information = JOBOBJECTINFOCLASS(21);

const JobObjectReserved5Information = JOBOBJECTINFOCLASS(22);

const JobObjectReserved6Information = JOBOBJECTINFOCLASS(23);

const JobObjectReserved7Information = JOBOBJECTINFOCLASS(24);

const JobObjectReserved8Information = JOBOBJECTINFOCLASS(25);

const JobObjectReserved9Information = JOBOBJECTINFOCLASS(26);

const JobObjectReserved10Information = JOBOBJECTINFOCLASS(27);

const JobObjectReserved11Information = JOBOBJECTINFOCLASS(28);

const JobObjectReserved12Information = JOBOBJECTINFOCLASS(29);

const JobObjectReserved13Information = JOBOBJECTINFOCLASS(30);

const JobObjectReserved14Information = JOBOBJECTINFOCLASS(31);

const JobObjectNetRateControlInformation = JOBOBJECTINFOCLASS(32);

const JobObjectNotificationLimitInformation2 = JOBOBJECTINFOCLASS(33);

const JobObjectLimitViolationInformation2 = JOBOBJECTINFOCLASS(34);

const JobObjectCreateSilo = JOBOBJECTINFOCLASS(35);

const JobObjectSiloBasicInformation = JOBOBJECTINFOCLASS(36);

const JobObjectReserved15Information = JOBOBJECTINFOCLASS(37);

const JobObjectReserved16Information = JOBOBJECTINFOCLASS(38);

const JobObjectReserved17Information = JOBOBJECTINFOCLASS(39);

const JobObjectReserved18Information = JOBOBJECTINFOCLASS(40);

const JobObjectReserved19Information = JOBOBJECTINFOCLASS(41);

const JobObjectReserved20Information = JOBOBJECTINFOCLASS(42);

const JobObjectReserved21Information = JOBOBJECTINFOCLASS(43);

const JobObjectReserved22Information = JOBOBJECTINFOCLASS(44);

const JobObjectReserved23Information = JOBOBJECTINFOCLASS(45);

const JobObjectReserved24Information = JOBOBJECTINFOCLASS(46);

const JobObjectReserved25Information = JOBOBJECTINFOCLASS(47);

const JobObjectReserved26Information = JOBOBJECTINFOCLASS(48);

const JobObjectReserved27Information = JOBOBJECTINFOCLASS(49);

const JobObjectReserved28Information = JOBOBJECTINFOCLASS(50);

const JobObjectNetworkAccountingInformation = JOBOBJECTINFOCLASS(51);

const MaxJobObjectInfoClass = JOBOBJECTINFOCLASS(52);

/// {@category enum}
extension type const JOB_OBJECT_IO_RATE_CONTROL_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(JOB_OBJECT_IO_RATE_CONTROL_FLAGS other) => _ & other._ == other._;

  JOB_OBJECT_IO_RATE_CONTROL_FLAGS operator &(int other) => .new(_ & other);
  JOB_OBJECT_IO_RATE_CONTROL_FLAGS operator |(int other) => .new(_ | other);
}

const JOB_OBJECT_IO_RATE_CONTROL_ENABLE = JOB_OBJECT_IO_RATE_CONTROL_FLAGS(1);

const JOB_OBJECT_IO_RATE_CONTROL_STANDALONE_VOLUME =
    JOB_OBJECT_IO_RATE_CONTROL_FLAGS(2);

const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ALL =
    JOB_OBJECT_IO_RATE_CONTROL_FLAGS(4);

const JOB_OBJECT_IO_RATE_CONTROL_FORCE_UNIT_ACCESS_ON_SOFT_CAP =
    JOB_OBJECT_IO_RATE_CONTROL_FLAGS(8);

const JOB_OBJECT_IO_RATE_CONTROL_VALID_FLAGS = JOB_OBJECT_IO_RATE_CONTROL_FLAGS(
  15,
);

/// {@category enum}
extension type const KBDLLHOOKSTRUCT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(KBDLLHOOKSTRUCT_FLAGS other) => _ & other._ == other._;

  KBDLLHOOKSTRUCT_FLAGS operator &(int other) => .new(_ & other);
  KBDLLHOOKSTRUCT_FLAGS operator |(int other) => .new(_ | other);
}

const LLKHF_EXTENDED = KBDLLHOOKSTRUCT_FLAGS(1);

const LLKHF_ALTDOWN = KBDLLHOOKSTRUCT_FLAGS(32);

const LLKHF_UP = KBDLLHOOKSTRUCT_FLAGS(128);

const LLKHF_INJECTED = KBDLLHOOKSTRUCT_FLAGS(16);

const LLKHF_LOWER_IL_INJECTED = KBDLLHOOKSTRUCT_FLAGS(2);

/// {@category enum}
extension type const KEYBD_EVENT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(KEYBD_EVENT_FLAGS other) => _ & other._ == other._;

  KEYBD_EVENT_FLAGS operator &(int other) => .new(_ & other);
  KEYBD_EVENT_FLAGS operator |(int other) => .new(_ | other);
}

const KEYEVENTF_EXTENDEDKEY = KEYBD_EVENT_FLAGS(1);

const KEYEVENTF_KEYUP = KEYBD_EVENT_FLAGS(2);

const KEYEVENTF_SCANCODE = KEYBD_EVENT_FLAGS(8);

const KEYEVENTF_UNICODE = KEYBD_EVENT_FLAGS(4);

/// Value that represent a category by which a folder registered with the Known
/// Folder system can be classified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-kf_category>.
///
/// {@category enum}
extension type const KF_CATEGORY(int _) implements int {}

/// Virtual folders are not part of the file system, which is to say that they
/// have no path.
const KF_CATEGORY_VIRTUAL = KF_CATEGORY(1);

/// Fixed file system folders are not managed by the Shell and are usually given
/// a permanent path when the system is installed.
const KF_CATEGORY_FIXED = KF_CATEGORY(2);

/// Common folders are those file system folders used for sharing data and
/// settings, accessible by all users of a system.
const KF_CATEGORY_COMMON = KF_CATEGORY(3);

/// Per-user folders are those stored under each user's profile and accessible
/// only by that user.
const KF_CATEGORY_PERUSER = KF_CATEGORY(4);

/// Flags that specify certain known folder behaviors.
///
/// Used with the KNOWNFOLDER_DEFINITION structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-_kf_definition_flags>.
///
/// {@category enum}
extension type const KF_DEFINITION_FLAGS(int _) implements int {}

/// Prevent a <a
/// href="https://docs.microsoft.com/windows/desktop/api/shobjidl_core/ne-shobjidl_core-kf_category">per-user</a>
/// known folder from being redirected to a network location.
const KFDF_LOCAL_REDIRECT_ONLY = KF_DEFINITION_FLAGS(2);

/// Can be roamed through a PC-to-PC synchronization.
const KFDF_ROAMABLE = KF_DEFINITION_FLAGS(4);

/// Create the folder when the user first logs on.
const KFDF_PRECREATE = KF_DEFINITION_FLAGS(8);

/// <b>Introduced in Windows 7</b>.
const KFDF_STREAM = KF_DEFINITION_FLAGS(16);

/// <b>Introduced in Windows 7</b>.
const KFDF_PUBLISHEXPANDEDPATH = KF_DEFINITION_FLAGS(32);

/// <b>Introduced in Windows 8.1</b>.
const KFDF_NO_REDIRECT_UI = KF_DEFINITION_FLAGS(64);

/// Flags that specify the current redirection capabilities of a known folder.
///
/// Used by IKnownFolder::GetRedirectionCapabilities.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-_kf_redirection_capabilities>.
///
/// {@category enum}
extension type const KF_REDIRECTION_CAPABILITIES(int _) implements int {}

/// The folder can be redirected if any of the bits in the lower byte of the
/// value are set but no DENY flag is set.
const KF_REDIRECTION_CAPABILITIES_ALLOW_ALL = KF_REDIRECTION_CAPABILITIES(255);

/// The folder can be redirected.
const KF_REDIRECTION_CAPABILITIES_REDIRECTABLE = KF_REDIRECTION_CAPABILITIES(1);

/// Redirection is not allowed.
const KF_REDIRECTION_CAPABILITIES_DENY_ALL = KF_REDIRECTION_CAPABILITIES(
  1048320,
);

/// The folder cannot be redirected because it is already redirected by group
/// policy.
const KF_REDIRECTION_CAPABILITIES_DENY_POLICY_REDIRECTED =
    KF_REDIRECTION_CAPABILITIES(256);

/// The folder cannot be redirected because the policy prohibits redirecting
/// this folder.
const KF_REDIRECTION_CAPABILITIES_DENY_POLICY = KF_REDIRECTION_CAPABILITIES(
  512,
);

/// The folder cannot be redirected because the calling application does not
/// have sufficient permissions.
const KF_REDIRECTION_CAPABILITIES_DENY_PERMISSIONS =
    KF_REDIRECTION_CAPABILITIES(1024);

/// Flags used by IKnownFolderManager::Redirect to specify details of a known
/// folder redirection such as permissions and ownership for the redirected
/// folder.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-_kf_redirect_flags>.
///
/// {@category enum}
extension type const KF_REDIRECT_FLAGS(int _) implements int {}

/// Ensure that only the user has permission to access the redirected folder.
const KF_REDIRECT_USER_EXCLUSIVE = KF_REDIRECT_FLAGS(1);

/// Copy the DACL of the source folder to the target to maintain current access
/// permissions.
const KF_REDIRECT_COPY_SOURCE_DACL = KF_REDIRECT_FLAGS(2);

/// Sets the user as the owner of a newly created target folder unless the user
/// is a member of the Administrator group, in which case Administrator is set
/// as the owner.
const KF_REDIRECT_OWNER_USER = KF_REDIRECT_FLAGS(4);

/// Set the owner of a newly created target folder.
const KF_REDIRECT_SET_OWNER_EXPLICIT = KF_REDIRECT_FLAGS(8);

/// Do not perform a redirection, simply check whether redirection has occurred.
const KF_REDIRECT_CHECK_ONLY = KF_REDIRECT_FLAGS(16);

/// Display UI during the redirection.
const KF_REDIRECT_WITH_UI = KF_REDIRECT_FLAGS(32);

/// Unpin the source folder.
const KF_REDIRECT_UNPIN = KF_REDIRECT_FLAGS(64);

/// Pin the target folder.
const KF_REDIRECT_PIN = KF_REDIRECT_FLAGS(128);

/// Copy the existing contents—both files and subfolders—of the known folder to
/// the redirected folder.
const KF_REDIRECT_COPY_CONTENTS = KF_REDIRECT_FLAGS(512);

/// Delete the contents of the source folder after they have been copied to the
/// redirected folder.
const KF_REDIRECT_DEL_SOURCE_CONTENTS = KF_REDIRECT_FLAGS(1024);

/// Reserved.
const KF_REDIRECT_EXCLUDE_ALL_KNOWN_SUBFOLDERS = KF_REDIRECT_FLAGS(2048);

/// Defines constants that specify special retrieval options for known folders.
///
/// These values supersede CSIDL values, which have parallel meanings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/ne-shlobj_core-known_folder_flag>.
///
/// {@category enum}
extension type const KNOWN_FOLDER_FLAG(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(KNOWN_FOLDER_FLAG other) => _ & other._ == other._;

  KNOWN_FOLDER_FLAG operator &(int other) => .new(_ & other);
  KNOWN_FOLDER_FLAG operator |(int other) => .new(_ | other);
}

/// Specifies no special retrieval options.
const KF_FLAG_DEFAULT = KNOWN_FOLDER_FLAG(0);

/// .
const KF_FLAG_FORCE_APP_DATA_REDIRECTION = KNOWN_FOLDER_FLAG(524288);

/// .
const KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = KNOWN_FOLDER_FLAG(262144);

/// .
const KF_FLAG_FORCE_PACKAGE_REDIRECTION = KNOWN_FOLDER_FLAG(131072);

/// .
const KF_FLAG_NO_PACKAGE_REDIRECTION = KNOWN_FOLDER_FLAG(65536);

/// .
const KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = KNOWN_FOLDER_FLAG(131072);

/// .
const KF_FLAG_NO_APPCONTAINER_REDIRECTION = KNOWN_FOLDER_FLAG(65536);

/// Specifies to force the creation of the specified folder if that folder
/// doesn't already exist.
const KF_FLAG_CREATE = KNOWN_FOLDER_FLAG(32768);

/// Specifies not to verify the folder's existence before attempting to retrieve
/// the path or IDList.
const KF_FLAG_DONT_VERIFY = KNOWN_FOLDER_FLAG(16384);

/// Specfies to store the full path in the registry without using environment
/// strings.
const KF_FLAG_DONT_UNEXPAND = KNOWN_FOLDER_FLAG(8192);

/// Specifies to retrieve the true system path for the folder, free of any
/// aliased placeholders such as `%USERPROFILE%`, returned by
/// `SHGetKnownFolderIDList` and
/// [IKnownFolder::GetIDList](/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getidlist).
const KF_FLAG_NO_ALIAS = KNOWN_FOLDER_FLAG(4096);

/// Specifies to initialize the folder using its `Desktop.ini` settings.
const KF_FLAG_INIT = KNOWN_FOLDER_FLAG(2048);

/// Specifies to retrieve the default path for a known folder.
const KF_FLAG_DEFAULT_PATH = KNOWN_FOLDER_FLAG(1024);

/// Specifies to retrieve the folder's default path independent of the current
/// location of its parent.
const KF_FLAG_NOT_PARENT_RELATIVE = KNOWN_FOLDER_FLAG(512);

/// Specifies to build a simple IDList (PIDL).
const KF_FLAG_SIMPLE_IDLIST = KNOWN_FOLDER_FLAG(256);

/// .
const KF_FLAG_ALIAS_ONLY = KNOWN_FOLDER_FLAG(-2147483648);

/// {@category enum}
extension type const LAYERED_WINDOW_ATTRIBUTES_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(LAYERED_WINDOW_ATTRIBUTES_FLAGS other) => _ & other._ == other._;

  LAYERED_WINDOW_ATTRIBUTES_FLAGS operator &(int other) => .new(_ & other);
  LAYERED_WINDOW_ATTRIBUTES_FLAGS operator |(int other) => .new(_ | other);
}

const LWA_ALPHA = LAYERED_WINDOW_ATTRIBUTES_FLAGS(2);

const LWA_COLORKEY = LAYERED_WINDOW_ATTRIBUTES_FLAGS(1);

/// {@category enum}
extension type const LOAD_LIBRARY_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(LOAD_LIBRARY_FLAGS other) => _ & other._ == other._;

  LOAD_LIBRARY_FLAGS operator &(int other) => .new(_ & other);
  LOAD_LIBRARY_FLAGS operator |(int other) => .new(_ | other);
}

const DONT_RESOLVE_DLL_REFERENCES = LOAD_LIBRARY_FLAGS(1);

const LOAD_LIBRARY_AS_DATAFILE = LOAD_LIBRARY_FLAGS(2);

const LOAD_WITH_ALTERED_SEARCH_PATH = LOAD_LIBRARY_FLAGS(8);

const LOAD_IGNORE_CODE_AUTHZ_LEVEL = LOAD_LIBRARY_FLAGS(16);

const LOAD_LIBRARY_AS_IMAGE_RESOURCE = LOAD_LIBRARY_FLAGS(32);

const LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = LOAD_LIBRARY_FLAGS(64);

const LOAD_LIBRARY_REQUIRE_SIGNED_TARGET = LOAD_LIBRARY_FLAGS(128);

const LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = LOAD_LIBRARY_FLAGS(256);

const LOAD_LIBRARY_SEARCH_APPLICATION_DIR = LOAD_LIBRARY_FLAGS(512);

const LOAD_LIBRARY_SEARCH_USER_DIRS = LOAD_LIBRARY_FLAGS(1024);

const LOAD_LIBRARY_SEARCH_SYSTEM32 = LOAD_LIBRARY_FLAGS(2048);

const LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = LOAD_LIBRARY_FLAGS(4096);

const LOAD_LIBRARY_SAFE_CURRENT_DIRS = LOAD_LIBRARY_FLAGS(8192);

const LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER = LOAD_LIBRARY_FLAGS(16384);

/// {@category enum}
extension type const LOCAL_ALLOC_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(LOCAL_ALLOC_FLAGS other) => _ & other._ == other._;

  LOCAL_ALLOC_FLAGS operator &(int other) => .new(_ & other);
  LOCAL_ALLOC_FLAGS operator |(int other) => .new(_ | other);
}

const LHND = LOCAL_ALLOC_FLAGS(66);

const LMEM_FIXED = LOCAL_ALLOC_FLAGS(0);

const LMEM_MOVEABLE = LOCAL_ALLOC_FLAGS(2);

const LMEM_ZEROINIT = LOCAL_ALLOC_FLAGS(64);

const LPTR = LOCAL_ALLOC_FLAGS(64);

const NONZEROLHND = LOCAL_ALLOC_FLAGS(2);

const NONZEROLPTR = LOCAL_ALLOC_FLAGS(0);

/// Indicate the type of locking requested for the specified range of bytes.
///
/// The values are used in the ILockBytes::LockRegion and IStream::LockRegion
/// methods.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ne-objidl-locktype>.
///
/// {@category enum}
extension type const LOCKTYPE(int _) implements int {}

/// If this lock is granted, the specified range of bytes can be opened and read
/// any number of times, but writing to the locked range is prohibited except
/// for the owner that was granted this lock.
const LOCK_WRITE = LOCKTYPE(1);

/// If this lock is granted, writing to the specified range of bytes is
/// prohibited except by the owner that was granted this lock.
const LOCK_EXCLUSIVE = LOCKTYPE(2);

/// If this lock is granted, no other <b>LOCK_ONLYONCE</b> lock can be obtained
/// on the range.
const LOCK_ONLYONCE = LOCKTYPE(4);

/// {@category enum}
extension type const LOCK_FILE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(LOCK_FILE_FLAGS other) => _ & other._ == other._;

  LOCK_FILE_FLAGS operator &(int other) => .new(_ & other);
  LOCK_FILE_FLAGS operator |(int other) => .new(_ | other);
}

const LOCKFILE_EXCLUSIVE_LOCK = LOCK_FILE_FLAGS(2);

const LOCKFILE_FAIL_IMMEDIATELY = LOCK_FILE_FLAGS(1);

/// Represents the relationship between the processor set identified in the
/// corresponding SYSTEM_LOGICAL_PROCESSOR_INFORMATION or
/// SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ne-winnt-logical_processor_relationship>.
///
/// {@category enum}
extension type const LOGICAL_PROCESSOR_RELATIONSHIP(int _) implements int {}

/// The specified logical processors share a single processor core.
const RelationProcessorCore = LOGICAL_PROCESSOR_RELATIONSHIP(0);

/// The specified logical processors are part of the same NUMA node.
const RelationNumaNode = LOGICAL_PROCESSOR_RELATIONSHIP(1);

/// The specified logical processors share a cache.
const RelationCache = LOGICAL_PROCESSOR_RELATIONSHIP(2);

/// The specified logical processors share a physical package (a single package
/// socketed or soldered onto a motherboard may contain multiple processor cores
/// or threads, each of which is treated as a separate processor by the
/// operating system).
const RelationProcessorPackage = LOGICAL_PROCESSOR_RELATIONSHIP(3);

/// The specified logical processors share a single <a
/// href="https://docs.microsoft.com/windows/desktop/ProcThread/processor-groups">processor
/// group</a>.
const RelationGroup = LOGICAL_PROCESSOR_RELATIONSHIP(4);

/// The specified logical processors share a single processor die.
const RelationProcessorDie = LOGICAL_PROCESSOR_RELATIONSHIP(5);

/// Requests that the full affinity be returned.
const RelationNumaNodeEx = LOGICAL_PROCESSOR_RELATIONSHIP(6);

const RelationProcessorModule = LOGICAL_PROCESSOR_RELATIONSHIP(7);

/// On input, retrieves information about all possible relationship types.
const RelationAll = LOGICAL_PROCESSOR_RELATIONSHIP(65535);

/// {@category enum}
extension type const LPPROGRESS_ROUTINE_CALLBACK_REASON(int _) implements int {}

const CALLBACK_CHUNK_FINISHED = LPPROGRESS_ROUTINE_CALLBACK_REASON(0);

const CALLBACK_STREAM_SWITCH = LPPROGRESS_ROUTINE_CALLBACK_REASON(1);

/// Contains possible values for the LiveSetting property.
///
/// This property is implemented by provider elements that are part of a live
/// region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-livesetting>.
///
/// {@category enum}
extension type const LiveSetting(int _) implements int {}

const Off = LiveSetting(0);

const Polite = LiveSetting(1);

const Assertive = LiveSetting(2);

/// Specifies the ways in which an architecture of code can run on a host
/// operating system.
///
/// More than one bit may be set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/ne-processthreadsapi-machine_attributes>.
///
/// {@category enum}
extension type const MACHINE_ATTRIBUTES(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MACHINE_ATTRIBUTES other) => _ & other._ == other._;

  MACHINE_ATTRIBUTES operator &(int other) => .new(_ & other);
  MACHINE_ATTRIBUTES operator |(int other) => .new(_ | other);
}

/// The specified architecture of code can run in user mode.
const UserEnabled = MACHINE_ATTRIBUTES(1);

/// The specified architecture of code can run in kernel mode.
const KernelEnabled = MACHINE_ATTRIBUTES(2);

/// The specified architecture of code runs by relying on WOW64's namespace
/// `File System Redirector` and `Registry Redirector`.
const Wow64Container = MACHINE_ATTRIBUTES(4);

/// {@category enum}
extension type const MAP_VIRTUAL_KEY_TYPE(int _) implements int {}

const MAPVK_VK_TO_VSC = MAP_VIRTUAL_KEY_TYPE(0);

const MAPVK_VSC_TO_VK = MAP_VIRTUAL_KEY_TYPE(1);

const MAPVK_VK_TO_CHAR = MAP_VIRTUAL_KEY_TYPE(2);

const MAPVK_VSC_TO_VK_EX = MAP_VIRTUAL_KEY_TYPE(3);

const MAPVK_VK_TO_VSC_EX = MAP_VIRTUAL_KEY_TYPE(4);

/// {@category enum}
extension type const MAXBUTTONSTATES(int _) implements int {}

const MAXBS_NORMAL = MAXBUTTONSTATES(1);

const MAXBS_HOT = MAXBUTTONSTATES(2);

const MAXBS_PUSHED = MAXBUTTONSTATES(3);

const MAXBS_DISABLED = MAXBUTTONSTATES(4);

/// {@category enum}
extension type const MAXCAPTIONSTATES(int _) implements int {}

const MXCS_ACTIVE = MAXCAPTIONSTATES(1);

const MXCS_INACTIVE = MAXCAPTIONSTATES(2);

const MXCS_DISABLED = MAXCAPTIONSTATES(3);

/// Describes a monitor's color temperature.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/ne-highlevelmonitorconfigurationapi-mc_color_temperature>.
///
/// {@category enum}
extension type const MC_COLOR_TEMPERATURE(int _) implements int {}

/// Unknown temperature.
const MC_COLOR_TEMPERATURE_UNKNOWN = MC_COLOR_TEMPERATURE(0);

/// 4,000 kelvins (K).
const MC_COLOR_TEMPERATURE_4000K = MC_COLOR_TEMPERATURE(1);

/// 5,000 K.
const MC_COLOR_TEMPERATURE_5000K = MC_COLOR_TEMPERATURE(2);

/// 6,500 K.
const MC_COLOR_TEMPERATURE_6500K = MC_COLOR_TEMPERATURE(3);

/// 7,500 K.
const MC_COLOR_TEMPERATURE_7500K = MC_COLOR_TEMPERATURE(4);

/// 8,200 K.
const MC_COLOR_TEMPERATURE_8200K = MC_COLOR_TEMPERATURE(5);

/// 9,300 K.
const MC_COLOR_TEMPERATURE_9300K = MC_COLOR_TEMPERATURE(6);

/// 10,000 K.
const MC_COLOR_TEMPERATURE_10000K = MC_COLOR_TEMPERATURE(7);

/// 11,500 K.
const MC_COLOR_TEMPERATURE_11500K = MC_COLOR_TEMPERATURE(8);

/// Identifies monitor display technologies.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/ne-highlevelmonitorconfigurationapi-mc_display_technology_type>.
///
/// {@category enum}
extension type const MC_DISPLAY_TECHNOLOGY_TYPE(int _) implements int {}

/// Shadow-mask cathode ray tube (CRT).
const MC_SHADOW_MASK_CATHODE_RAY_TUBE = MC_DISPLAY_TECHNOLOGY_TYPE(0);

/// Aperture-grill CRT.
const MC_APERTURE_GRILL_CATHODE_RAY_TUBE = MC_DISPLAY_TECHNOLOGY_TYPE(1);

/// Thin-film transistor (TFT) display.
const MC_THIN_FILM_TRANSISTOR = MC_DISPLAY_TECHNOLOGY_TYPE(2);

/// Liquid crystal on silicon (LCOS) display.
const MC_LIQUID_CRYSTAL_ON_SILICON = MC_DISPLAY_TECHNOLOGY_TYPE(3);

/// Plasma display.
const MC_PLASMA = MC_DISPLAY_TECHNOLOGY_TYPE(4);

/// Organic light emitting diode (LED) display.
const MC_ORGANIC_LIGHT_EMITTING_DIODE = MC_DISPLAY_TECHNOLOGY_TYPE(5);

/// Electroluminescent display.
const MC_ELECTROLUMINESCENT = MC_DISPLAY_TECHNOLOGY_TYPE(6);

/// Microelectromechanical display.
const MC_MICROELECTROMECHANICAL = MC_DISPLAY_TECHNOLOGY_TYPE(7);

/// Field emission device (FED) display.
const MC_FIELD_EMISSION_DEVICE = MC_DISPLAY_TECHNOLOGY_TYPE(8);

/// Specifies whether to set or get a monitor's red, green, or blue drive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/ne-highlevelmonitorconfigurationapi-mc_drive_type>.
///
/// {@category enum}
extension type const MC_DRIVE_TYPE(int _) implements int {}

/// Red drive.
const MC_RED_DRIVE = MC_DRIVE_TYPE(0);

/// Green drive.
const MC_GREEN_DRIVE = MC_DRIVE_TYPE(1);

/// Blue drive.
const MC_BLUE_DRIVE = MC_DRIVE_TYPE(2);

/// Specifies whether to get or set a monitor's red, green, or blue gain.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/ne-highlevelmonitorconfigurationapi-mc_gain_type>.
///
/// {@category enum}
extension type const MC_GAIN_TYPE(int _) implements int {}

/// Red gain.
const MC_RED_GAIN = MC_GAIN_TYPE(0);

/// Green gain.
const MC_GREEN_GAIN = MC_GAIN_TYPE(1);

/// Blue gain.
const MC_BLUE_GAIN = MC_GAIN_TYPE(2);

/// Specifies whether to get or set the vertical or horizontal position of a
/// monitor's display area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/ne-highlevelmonitorconfigurationapi-mc_position_type>.
///
/// {@category enum}
extension type const MC_POSITION_TYPE(int _) implements int {}

/// Horizontal position.
const MC_HORIZONTAL_POSITION = MC_POSITION_TYPE(0);

/// Vertical position.
const MC_VERTICAL_POSITION = MC_POSITION_TYPE(1);

/// Specifies whether to get or set the width or height of a monitor's display
/// area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/ne-highlevelmonitorconfigurationapi-mc_size_type>.
///
/// {@category enum}
extension type const MC_SIZE_TYPE(int _) implements int {}

/// Width.
const MC_WIDTH = MC_SIZE_TYPE(0);

/// Height.
const MC_HEIGHT = MC_SIZE_TYPE(1);

/// {@category enum}
extension type const MDICLOSEBUTTONSTATES(int _) implements int {}

const MDCL_NORMAL = MDICLOSEBUTTONSTATES(1);

const MDCL_HOT = MDICLOSEBUTTONSTATES(2);

const MDCL_PUSHED = MDICLOSEBUTTONSTATES(3);

const MDCL_DISABLED = MDICLOSEBUTTONSTATES(4);

/// {@category enum}
extension type const MDIMINBUTTONSTATES(int _) implements int {}

const MDMI_NORMAL = MDIMINBUTTONSTATES(1);

const MDMI_HOT = MDIMINBUTTONSTATES(2);

const MDMI_PUSHED = MDIMINBUTTONSTATES(3);

const MDMI_DISABLED = MDIMINBUTTONSTATES(4);

/// {@category enum}
extension type const MDIRESTOREBUTTONSTATES(int _) implements int {}

const MDRE_NORMAL = MDIRESTOREBUTTONSTATES(1);

const MDRE_HOT = MDIRESTOREBUTTONSTATES(2);

const MDRE_PUSHED = MDIRESTOREBUTTONSTATES(3);

const MDRE_DISABLED = MDIRESTOREBUTTONSTATES(4);

/// Represents the various forms of device media.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ne-winioctl-media_type>.
///
/// {@category enum}
extension type const MEDIA_TYPE(int _) implements int {}

/// Format is unknown.
const Unknown = MEDIA_TYPE(0);

/// A 5.25" floppy, with 1.2MB and 512 bytes/sector.
const F5_1Pt2_512 = MEDIA_TYPE(1);

/// A 3.5" floppy, with 1.44MB and 512 bytes/sector.
const F3_1Pt44_512 = MEDIA_TYPE(2);

/// A 3.5" floppy, with 2.88MB and 512 bytes/sector.
const F3_2Pt88_512 = MEDIA_TYPE(3);

/// A 3.5" floppy, with 20.8MB and 512 bytes/sector.
const F3_20Pt8_512 = MEDIA_TYPE(4);

/// A 3.5" floppy, with 720KB and 512 bytes/sector.
const F3_720_512 = MEDIA_TYPE(5);

/// A 5.25" floppy, with 360KB and 512 bytes/sector.
const F5_360_512 = MEDIA_TYPE(6);

/// A 5.25" floppy, with 320KB and 512 bytes/sector.
const F5_320_512 = MEDIA_TYPE(7);

/// A 5.25" floppy, with 320KB and 1024 bytes/sector.
const F5_320_1024 = MEDIA_TYPE(8);

/// A 5.25" floppy, with 180KB and 512 bytes/sector.
const F5_180_512 = MEDIA_TYPE(9);

/// A 5.25" floppy, with 160KB and 512 bytes/sector.
const F5_160_512 = MEDIA_TYPE(10);

/// Removable media other than floppy.
const RemovableMedia = MEDIA_TYPE(11);

/// Fixed hard disk media.
const FixedMedia = MEDIA_TYPE(12);

/// A 3.5" floppy, with 120MB and 512 bytes/sector.
const F3_120M_512 = MEDIA_TYPE(13);

/// A 3.5" floppy, with 640KB and 512 bytes/sector.
const F3_640_512 = MEDIA_TYPE(14);

/// A 5.25" floppy, with 640KB and 512 bytes/sector.
const F5_640_512 = MEDIA_TYPE(15);

/// A 5.25" floppy, with 720KB and 512 bytes/sector.
const F5_720_512 = MEDIA_TYPE(16);

/// A 3.5" floppy, with 1.2MB and 512 bytes/sector.
const F3_1Pt2_512 = MEDIA_TYPE(17);

/// A 3.5" floppy, with 1.23MB and 1024 bytes/sector.
const F3_1Pt23_1024 = MEDIA_TYPE(18);

/// A 5.25" floppy, with 1.23MB and 1024 bytes/sector.
const F5_1Pt23_1024 = MEDIA_TYPE(19);

/// A 3.5" floppy, with 128MB and 512 bytes/sector.
const F3_128Mb_512 = MEDIA_TYPE(20);

/// A 3.5" floppy, with 230MB and 512 bytes/sector.
const F3_230Mb_512 = MEDIA_TYPE(21);

/// An 8" floppy, with 256KB and 128 bytes/sector.
const F8_256_128 = MEDIA_TYPE(22);

/// A 3.5" floppy, with 200MB and 512 bytes/sector.
const F3_200Mb_512 = MEDIA_TYPE(23);

/// A 3.5" floppy, with 240MB and 512 bytes/sector.
const F3_240M_512 = MEDIA_TYPE(24);

/// A 3.5" floppy, with 32MB and 512 bytes/sector.
const F3_32M_512 = MEDIA_TYPE(25);

/// {@category enum}
extension type const MENUINFO_MASK(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MENUINFO_MASK other) => _ & other._ == other._;

  MENUINFO_MASK operator &(int other) => .new(_ & other);
  MENUINFO_MASK operator |(int other) => .new(_ | other);
}

const MIM_APPLYTOSUBMENUS = MENUINFO_MASK(2147483648);

const MIM_BACKGROUND = MENUINFO_MASK(2);

const MIM_HELPID = MENUINFO_MASK(4);

const MIM_MAXHEIGHT = MENUINFO_MASK(1);

const MIM_MENUDATA = MENUINFO_MASK(8);

const MIM_STYLE = MENUINFO_MASK(16);

/// {@category enum}
extension type const MENUINFO_STYLE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MENUINFO_STYLE other) => _ & other._ == other._;

  MENUINFO_STYLE operator &(int other) => .new(_ & other);
  MENUINFO_STYLE operator |(int other) => .new(_ | other);
}

const MNS_AUTODISMISS = MENUINFO_STYLE(268435456);

const MNS_CHECKORBMP = MENUINFO_STYLE(67108864);

const MNS_DRAGDROP = MENUINFO_STYLE(536870912);

const MNS_MODELESS = MENUINFO_STYLE(1073741824);

const MNS_NOCHECK = MENUINFO_STYLE(2147483648);

const MNS_NOTIFYBYPOS = MENUINFO_STYLE(134217728);

/// {@category enum}
extension type const MENU_ITEM_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MENU_ITEM_FLAGS other) => _ & other._ == other._;

  MENU_ITEM_FLAGS operator &(int other) => .new(_ & other);
  MENU_ITEM_FLAGS operator |(int other) => .new(_ | other);
}

const MF_BYCOMMAND = MENU_ITEM_FLAGS(0);

const MF_BYPOSITION = MENU_ITEM_FLAGS(1024);

const MF_BITMAP = MENU_ITEM_FLAGS(4);

const MF_CHECKED = MENU_ITEM_FLAGS(8);

const MF_DISABLED = MENU_ITEM_FLAGS(2);

const MF_ENABLED = MENU_ITEM_FLAGS(0);

const MF_GRAYED = MENU_ITEM_FLAGS(1);

const MF_MENUBARBREAK = MENU_ITEM_FLAGS(32);

const MF_MENUBREAK = MENU_ITEM_FLAGS(64);

const MF_OWNERDRAW = MENU_ITEM_FLAGS(256);

const MF_POPUP = MENU_ITEM_FLAGS(16);

const MF_SEPARATOR = MENU_ITEM_FLAGS(2048);

const MF_STRING = MENU_ITEM_FLAGS(0);

const MF_UNCHECKED = MENU_ITEM_FLAGS(0);

const MF_INSERT = MENU_ITEM_FLAGS(0);

const MF_CHANGE = MENU_ITEM_FLAGS(128);

const MF_APPEND = MENU_ITEM_FLAGS(256);

const MF_DELETE = MENU_ITEM_FLAGS(512);

const MF_REMOVE = MENU_ITEM_FLAGS(4096);

const MF_USECHECKBITMAPS = MENU_ITEM_FLAGS(512);

const MF_UNHILITE = MENU_ITEM_FLAGS(0);

const MF_HILITE = MENU_ITEM_FLAGS(128);

const MF_DEFAULT = MENU_ITEM_FLAGS(4096);

const MF_SYSMENU = MENU_ITEM_FLAGS(8192);

const MF_HELP = MENU_ITEM_FLAGS(16384);

const MF_RIGHTJUSTIFY = MENU_ITEM_FLAGS(16384);

const MF_MOUSESELECT = MENU_ITEM_FLAGS(32768);

const MF_END = MENU_ITEM_FLAGS(128);

/// {@category enum}
extension type const MENU_ITEM_MASK(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MENU_ITEM_MASK other) => _ & other._ == other._;

  MENU_ITEM_MASK operator &(int other) => .new(_ & other);
  MENU_ITEM_MASK operator |(int other) => .new(_ | other);
}

const MIIM_BITMAP = MENU_ITEM_MASK(128);

const MIIM_CHECKMARKS = MENU_ITEM_MASK(8);

const MIIM_DATA = MENU_ITEM_MASK(32);

const MIIM_FTYPE = MENU_ITEM_MASK(256);

const MIIM_ID = MENU_ITEM_MASK(2);

const MIIM_STATE = MENU_ITEM_MASK(1);

const MIIM_STRING = MENU_ITEM_MASK(64);

const MIIM_SUBMENU = MENU_ITEM_MASK(4);

const MIIM_TYPE = MENU_ITEM_MASK(16);

/// {@category enum}
extension type const MENU_ITEM_STATE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MENU_ITEM_STATE other) => _ & other._ == other._;

  MENU_ITEM_STATE operator &(int other) => .new(_ & other);
  MENU_ITEM_STATE operator |(int other) => .new(_ | other);
}

const MFS_GRAYED = MENU_ITEM_STATE(3);

const MFS_DISABLED = MENU_ITEM_STATE(3);

const MFS_CHECKED = MENU_ITEM_STATE(8);

const MFS_HILITE = MENU_ITEM_STATE(128);

const MFS_ENABLED = MENU_ITEM_STATE(0);

const MFS_UNCHECKED = MENU_ITEM_STATE(0);

const MFS_UNHILITE = MENU_ITEM_STATE(0);

const MFS_DEFAULT = MENU_ITEM_STATE(4096);

/// {@category enum}
extension type const MENU_ITEM_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MENU_ITEM_TYPE other) => _ & other._ == other._;

  MENU_ITEM_TYPE operator &(int other) => .new(_ & other);
  MENU_ITEM_TYPE operator |(int other) => .new(_ | other);
}

const MFT_BITMAP = MENU_ITEM_TYPE(4);

const MFT_MENUBARBREAK = MENU_ITEM_TYPE(32);

const MFT_MENUBREAK = MENU_ITEM_TYPE(64);

const MFT_OWNERDRAW = MENU_ITEM_TYPE(256);

const MFT_RADIOCHECK = MENU_ITEM_TYPE(512);

const MFT_RIGHTJUSTIFY = MENU_ITEM_TYPE(16384);

const MFT_RIGHTORDER = MENU_ITEM_TYPE(8192);

const MFT_SEPARATOR = MENU_ITEM_TYPE(2048);

const MFT_STRING = MENU_ITEM_TYPE(0);

/// {@category enum}
extension type const MESSAGEBOX_RESULT(int _) implements int {}

const IDOK = MESSAGEBOX_RESULT(1);

const IDCANCEL = MESSAGEBOX_RESULT(2);

const IDABORT = MESSAGEBOX_RESULT(3);

const IDRETRY = MESSAGEBOX_RESULT(4);

const IDIGNORE = MESSAGEBOX_RESULT(5);

const IDYES = MESSAGEBOX_RESULT(6);

const IDNO = MESSAGEBOX_RESULT(7);

const IDCLOSE = MESSAGEBOX_RESULT(8);

const IDHELP = MESSAGEBOX_RESULT(9);

const IDTRYAGAIN = MESSAGEBOX_RESULT(10);

const IDCONTINUE = MESSAGEBOX_RESULT(11);

const IDASYNC = MESSAGEBOX_RESULT(32001);

const IDTIMEOUT = MESSAGEBOX_RESULT(32000);

/// {@category enum}
extension type const MESSAGEBOX_STYLE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MESSAGEBOX_STYLE other) => _ & other._ == other._;

  MESSAGEBOX_STYLE operator &(int other) => .new(_ & other);
  MESSAGEBOX_STYLE operator |(int other) => .new(_ | other);
}

const MB_ABORTRETRYIGNORE = MESSAGEBOX_STYLE(2);

const MB_CANCELTRYCONTINUE = MESSAGEBOX_STYLE(6);

const MB_HELP = MESSAGEBOX_STYLE(16384);

const MB_OK = MESSAGEBOX_STYLE(0);

const MB_OKCANCEL = MESSAGEBOX_STYLE(1);

const MB_RETRYCANCEL = MESSAGEBOX_STYLE(5);

const MB_YESNO = MESSAGEBOX_STYLE(4);

const MB_YESNOCANCEL = MESSAGEBOX_STYLE(3);

const MB_ICONHAND = MESSAGEBOX_STYLE(16);

const MB_ICONQUESTION = MESSAGEBOX_STYLE(32);

const MB_ICONEXCLAMATION = MESSAGEBOX_STYLE(48);

const MB_ICONASTERISK = MESSAGEBOX_STYLE(64);

const MB_USERICON = MESSAGEBOX_STYLE(128);

const MB_ICONWARNING = MESSAGEBOX_STYLE(48);

const MB_ICONERROR = MESSAGEBOX_STYLE(16);

const MB_ICONINFORMATION = MESSAGEBOX_STYLE(64);

const MB_ICONSTOP = MESSAGEBOX_STYLE(16);

const MB_DEFBUTTON1 = MESSAGEBOX_STYLE(0);

const MB_DEFBUTTON2 = MESSAGEBOX_STYLE(256);

const MB_DEFBUTTON3 = MESSAGEBOX_STYLE(512);

const MB_DEFBUTTON4 = MESSAGEBOX_STYLE(768);

const MB_APPLMODAL = MESSAGEBOX_STYLE(0);

const MB_SYSTEMMODAL = MESSAGEBOX_STYLE(4096);

const MB_TASKMODAL = MESSAGEBOX_STYLE(8192);

const MB_NOFOCUS = MESSAGEBOX_STYLE(32768);

const MB_SETFOREGROUND = MESSAGEBOX_STYLE(65536);

const MB_DEFAULT_DESKTOP_ONLY = MESSAGEBOX_STYLE(131072);

const MB_TOPMOST = MESSAGEBOX_STYLE(262144);

const MB_RIGHT = MESSAGEBOX_STYLE(524288);

const MB_RTLREADING = MESSAGEBOX_STYLE(1048576);

const MB_SERVICE_NOTIFICATION = MESSAGEBOX_STYLE(2097152);

const MB_SERVICE_NOTIFICATION_NT3X = MESSAGEBOX_STYLE(262144);

const MB_TYPEMASK = MESSAGEBOX_STYLE(15);

const MB_ICONMASK = MESSAGEBOX_STYLE(240);

const MB_DEFMASK = MESSAGEBOX_STYLE(3840);

const MB_MODEMASK = MESSAGEBOX_STYLE(12288);

const MB_MISCMASK = MESSAGEBOX_STYLE(49152);

/// {@category enum}
extension type const MIDI_WAVE_OPEN_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MIDI_WAVE_OPEN_TYPE other) => _ & other._ == other._;

  MIDI_WAVE_OPEN_TYPE operator &(int other) => .new(_ & other);
  MIDI_WAVE_OPEN_TYPE operator |(int other) => .new(_ | other);
}

const CALLBACK_TYPEMASK = MIDI_WAVE_OPEN_TYPE(458752);

const CALLBACK_NULL = MIDI_WAVE_OPEN_TYPE(0);

const CALLBACK_WINDOW = MIDI_WAVE_OPEN_TYPE(65536);

const CALLBACK_TASK = MIDI_WAVE_OPEN_TYPE(131072);

const CALLBACK_FUNCTION = MIDI_WAVE_OPEN_TYPE(196608);

const CALLBACK_THREAD = MIDI_WAVE_OPEN_TYPE(131072);

const CALLBACK_EVENT = MIDI_WAVE_OPEN_TYPE(327680);

const WAVE_FORMAT_QUERY = MIDI_WAVE_OPEN_TYPE(1);

const WAVE_ALLOWSYNC = MIDI_WAVE_OPEN_TYPE(2);

const WAVE_MAPPED = MIDI_WAVE_OPEN_TYPE(4);

const WAVE_FORMAT_DIRECT = MIDI_WAVE_OPEN_TYPE(8);

const WAVE_FORMAT_DIRECT_QUERY = MIDI_WAVE_OPEN_TYPE(9);

const WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE = MIDI_WAVE_OPEN_TYPE(16);

const MIDI_IO_STATUS = MIDI_WAVE_OPEN_TYPE(32);

/// {@category enum}
extension type const MINBUTTONSTATES(int _) implements int {}

const MINBS_NORMAL = MINBUTTONSTATES(1);

const MINBS_HOT = MINBUTTONSTATES(2);

const MINBS_PUSHED = MINBUTTONSTATES(3);

const MINBS_DISABLED = MINBUTTONSTATES(4);

/// {@category enum}
extension type const MINCAPTIONSTATES(int _) implements int {}

const MNCS_ACTIVE = MINCAPTIONSTATES(1);

const MNCS_INACTIVE = MINCAPTIONSTATES(2);

const MNCS_DISABLED = MINCAPTIONSTATES(3);

/// {@category enum}
extension type const MODEMDEVCAPS_DIAL_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MODEMDEVCAPS_DIAL_OPTIONS other) => _ & other._ == other._;

  MODEMDEVCAPS_DIAL_OPTIONS operator &(int other) => .new(_ & other);
  MODEMDEVCAPS_DIAL_OPTIONS operator |(int other) => .new(_ | other);
}

const DIALOPTION_BILLING = MODEMDEVCAPS_DIAL_OPTIONS(64);

const DIALOPTION_DIALTONE = MODEMDEVCAPS_DIAL_OPTIONS(256);

const DIALOPTION_QUIET = MODEMDEVCAPS_DIAL_OPTIONS(128);

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_MODE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MODEMDEVCAPS_SPEAKER_MODE other) => _ & other._ == other._;

  MODEMDEVCAPS_SPEAKER_MODE operator &(int other) => .new(_ & other);
  MODEMDEVCAPS_SPEAKER_MODE operator |(int other) => .new(_ | other);
}

const MDMSPKRFLAG_CALLSETUP = MODEMDEVCAPS_SPEAKER_MODE(8);

const MDMSPKRFLAG_DIAL = MODEMDEVCAPS_SPEAKER_MODE(2);

const MDMSPKRFLAG_OFF = MODEMDEVCAPS_SPEAKER_MODE(1);

const MDMSPKRFLAG_ON = MODEMDEVCAPS_SPEAKER_MODE(4);

/// {@category enum}
extension type const MODEMDEVCAPS_SPEAKER_VOLUME(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MODEMDEVCAPS_SPEAKER_VOLUME other) => _ & other._ == other._;

  MODEMDEVCAPS_SPEAKER_VOLUME operator &(int other) => .new(_ & other);
  MODEMDEVCAPS_SPEAKER_VOLUME operator |(int other) => .new(_ | other);
}

const MDMVOLFLAG_HIGH = MODEMDEVCAPS_SPEAKER_VOLUME(4);

const MDMVOLFLAG_LOW = MODEMDEVCAPS_SPEAKER_VOLUME(1);

const MDMVOLFLAG_MEDIUM = MODEMDEVCAPS_SPEAKER_VOLUME(2);

/// {@category enum}
extension type const MODEMSETTINGS_SPEAKER_MODE(int _) implements int {}

const MDMSPKR_CALLSETUP = MODEMSETTINGS_SPEAKER_MODE(8);

const MDMSPKR_DIAL = MODEMSETTINGS_SPEAKER_MODE(2);

const MDMSPKR_OFF = MODEMSETTINGS_SPEAKER_MODE(1);

const MDMSPKR_ON = MODEMSETTINGS_SPEAKER_MODE(4);

/// {@category enum}
extension type const MODEM_SPEAKER_VOLUME(int _) implements int {}

const MDMVOL_HIGH = MODEM_SPEAKER_VOLUME(2);

const MDMVOL_LOW = MODEM_SPEAKER_VOLUME(0);

const MDMVOL_MEDIUM = MODEM_SPEAKER_VOLUME(1);

/// {@category enum}
extension type const MODEM_STATUS_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MODEM_STATUS_FLAGS other) => _ & other._ == other._;

  MODEM_STATUS_FLAGS operator &(int other) => .new(_ & other);
  MODEM_STATUS_FLAGS operator |(int other) => .new(_ | other);
}

const MS_CTS_ON = MODEM_STATUS_FLAGS(16);

const MS_DSR_ON = MODEM_STATUS_FLAGS(32);

const MS_RING_ON = MODEM_STATUS_FLAGS(64);

const MS_RLSD_ON = MODEM_STATUS_FLAGS(128);

/// {@category enum}
extension type const MODLOAD_DATA_TYPE(int _) implements int {}

const DBHHEADER_DEBUGDIRS = MODLOAD_DATA_TYPE(1);

const DBHHEADER_CVMISC = MODLOAD_DATA_TYPE(2);

/// Identifies the dots per inch (dpi) setting for a monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/ne-shellscalingapi-monitor_dpi_type>.
///
/// {@category enum}
extension type const MONITOR_DPI_TYPE(int _) implements int {}

/// The effective DPI.
const MDT_EFFECTIVE_DPI = MONITOR_DPI_TYPE(0);

/// The angular DPI.
const MDT_ANGULAR_DPI = MONITOR_DPI_TYPE(1);

/// The raw DPI.
const MDT_RAW_DPI = MONITOR_DPI_TYPE(2);

/// The default DPI setting for a monitor is MDT_EFFECTIVE_DPI.
const MDT_DEFAULT = MONITOR_DPI_TYPE(0);

/// {@category enum}
extension type const MONITOR_FROM_FLAGS(int _) implements int {}

const MONITOR_DEFAULTTONEAREST = MONITOR_FROM_FLAGS(2);

const MONITOR_DEFAULTTONULL = MONITOR_FROM_FLAGS(0);

const MONITOR_DEFAULTTOPRIMARY = MONITOR_FROM_FLAGS(1);

/// {@category enum}
extension type const MOUSE_EVENT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MOUSE_EVENT_FLAGS other) => _ & other._ == other._;

  MOUSE_EVENT_FLAGS operator &(int other) => .new(_ & other);
  MOUSE_EVENT_FLAGS operator |(int other) => .new(_ | other);
}

const MOUSEEVENTF_ABSOLUTE = MOUSE_EVENT_FLAGS(32768);

const MOUSEEVENTF_LEFTDOWN = MOUSE_EVENT_FLAGS(2);

const MOUSEEVENTF_LEFTUP = MOUSE_EVENT_FLAGS(4);

const MOUSEEVENTF_MIDDLEDOWN = MOUSE_EVENT_FLAGS(32);

const MOUSEEVENTF_MIDDLEUP = MOUSE_EVENT_FLAGS(64);

const MOUSEEVENTF_MOVE = MOUSE_EVENT_FLAGS(1);

const MOUSEEVENTF_RIGHTDOWN = MOUSE_EVENT_FLAGS(8);

const MOUSEEVENTF_RIGHTUP = MOUSE_EVENT_FLAGS(16);

const MOUSEEVENTF_WHEEL = MOUSE_EVENT_FLAGS(2048);

const MOUSEEVENTF_XDOWN = MOUSE_EVENT_FLAGS(128);

const MOUSEEVENTF_XUP = MOUSE_EVENT_FLAGS(256);

const MOUSEEVENTF_HWHEEL = MOUSE_EVENT_FLAGS(4096);

const MOUSEEVENTF_MOVE_NOCOALESCE = MOUSE_EVENT_FLAGS(8192);

const MOUSEEVENTF_VIRTUALDESK = MOUSE_EVENT_FLAGS(16384);

/// {@category enum}
extension type const MOUSE_STATE(int _) implements int {}

const MOUSE_MOVE_RELATIVE = MOUSE_STATE(0);

const MOUSE_MOVE_ABSOLUTE = MOUSE_STATE(1);

const MOUSE_VIRTUAL_DESKTOP = MOUSE_STATE(2);

const MOUSE_ATTRIBUTES_CHANGED = MOUSE_STATE(4);

const MOUSE_MOVE_NOCOALESCE = MOUSE_STATE(8);

/// {@category enum}
extension type const MOVE_FILE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MOVE_FILE_FLAGS other) => _ & other._ == other._;

  MOVE_FILE_FLAGS operator &(int other) => .new(_ & other);
  MOVE_FILE_FLAGS operator |(int other) => .new(_ | other);
}

const MOVEFILE_COPY_ALLOWED = MOVE_FILE_FLAGS(2);

const MOVEFILE_CREATE_HARDLINK = MOVE_FILE_FLAGS(16);

const MOVEFILE_DELAY_UNTIL_REBOOT = MOVE_FILE_FLAGS(4);

const MOVEFILE_REPLACE_EXISTING = MOVE_FILE_FLAGS(1);

const MOVEFILE_WRITE_THROUGH = MOVE_FILE_FLAGS(8);

const MOVEFILE_FAIL_IF_NOT_TRACKABLE = MOVE_FILE_FLAGS(32);

/// {@category enum}
extension type const MSGFLTINFO_STATUS(int _) implements int {}

const MSGFLTINFO_NONE = MSGFLTINFO_STATUS(0);

const MSGFLTINFO_ALLOWED_HIGHER = MSGFLTINFO_STATUS(3);

const MSGFLTINFO_ALREADYALLOWED_FORWND = MSGFLTINFO_STATUS(1);

const MSGFLTINFO_ALREADYDISALLOWED_FORWND = MSGFLTINFO_STATUS(2);

/// {@category enum}
extension type const MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(int _)
    implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS other) =>
      _ & other._ == other._;

  MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS operator &(int other) =>
      .new(_ & other);
  MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS operator |(int other) =>
      .new(_ | other);
}

const MWMO_NONE = MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(0);

const MWMO_ALERTABLE = MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(2);

const MWMO_INPUTAVAILABLE = MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(4);

const MWMO_WAITALL = MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS(1);

/// {@category enum}
extension type const MW_FILTERMODE(int _) implements int {}

const MW_FILTERMODE_EXCLUDE = MW_FILTERMODE(0);

const MW_FILTERMODE_INCLUDE = MW_FILTERMODE(1);

/// {@category enum}
extension type const NAMED_PIPE_MODE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(NAMED_PIPE_MODE other) => _ & other._ == other._;

  NAMED_PIPE_MODE operator &(int other) => .new(_ & other);
  NAMED_PIPE_MODE operator |(int other) => .new(_ | other);
}

const PIPE_WAIT = NAMED_PIPE_MODE(0);

const PIPE_NOWAIT = NAMED_PIPE_MODE(1);

const PIPE_READMODE_BYTE = NAMED_PIPE_MODE(0);

const PIPE_READMODE_MESSAGE = NAMED_PIPE_MODE(2);

const PIPE_CLIENT_END = NAMED_PIPE_MODE(0);

const PIPE_SERVER_END = NAMED_PIPE_MODE(1);

const PIPE_TYPE_BYTE = NAMED_PIPE_MODE(0);

const PIPE_TYPE_MESSAGE = NAMED_PIPE_MODE(4);

const PIPE_ACCEPT_REMOTE_CLIENTS = NAMED_PIPE_MODE(0);

const PIPE_REJECT_REMOTE_CLIENTS = NAMED_PIPE_MODE(8);

/// Specifies the NDIS network interface connection type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ne-ifdef-net_if_connection_type>.
///
/// {@category enum}
extension type const NET_IF_CONNECTION_TYPE(int _) implements int {}

/// Specifies the dedicated connection type.
const NET_IF_CONNECTION_DEDICATED = NET_IF_CONNECTION_TYPE(1);

/// Specifies the passive connection type.
const NET_IF_CONNECTION_PASSIVE = NET_IF_CONNECTION_TYPE(2);

/// Specifies the demand-dial connection type.
const NET_IF_CONNECTION_DEMAND = NET_IF_CONNECTION_TYPE(3);

/// A maximum value for testing purposes.
const NET_IF_CONNECTION_MAXIMUM = NET_IF_CONNECTION_TYPE(4);

/// Specifies a set of cost levels and cost flags supported in Windows 8 Cost
/// APIs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_connection_cost>.
///
/// {@category enum}
extension type const NLM_CONNECTION_COST(int _) implements int {}

/// The cost is unknown.
const NLM_CONNECTION_COST_UNKNOWN = NLM_CONNECTION_COST(0);

/// The connection is unlimited and is considered to be unrestricted of usage
/// charges and capacity constraints.
const NLM_CONNECTION_COST_UNRESTRICTED = NLM_CONNECTION_COST(1);

/// The use of this connection is unrestricted up to a specific data transfer
/// limit.
const NLM_CONNECTION_COST_FIXED = NLM_CONNECTION_COST(2);

/// This connection is regulated on a per byte basis.
const NLM_CONNECTION_COST_VARIABLE = NLM_CONNECTION_COST(4);

/// The connection is currently in an OverDataLimit state as it has exceeded the
/// carrier specified data transfer limit.
const NLM_CONNECTION_COST_OVERDATALIMIT = NLM_CONNECTION_COST(65536);

/// The network is experiencing high traffic load and is congested.
const NLM_CONNECTION_COST_CONGESTED = NLM_CONNECTION_COST(131072);

/// The connection is roaming outside the network and affiliates of the home
/// provider.
const NLM_CONNECTION_COST_ROAMING = NLM_CONNECTION_COST(262144);

/// The connection is approaching the data limit specified by the carrier.
const NLM_CONNECTION_COST_APPROACHINGDATALIMIT = NLM_CONNECTION_COST(524288);

/// A set of flags that provide notification whenever connectivity related
/// parameters have changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_connectivity>.
///
/// {@category enum}
extension type const NLM_CONNECTIVITY(int _) implements int {}

/// The underlying network interfaces have no connectivity to any network.
const NLM_CONNECTIVITY_DISCONNECTED = NLM_CONNECTIVITY(0);

/// There is connectivity to a network, but the service cannot detect any IPv4
/// Network Traffic.
const NLM_CONNECTIVITY_IPV4_NOTRAFFIC = NLM_CONNECTIVITY(1);

/// There is connectivity to a network, but the service cannot detect any IPv6
/// Network Traffic.
const NLM_CONNECTIVITY_IPV6_NOTRAFFIC = NLM_CONNECTIVITY(2);

/// There is connectivity to the local subnet using the IPv4 protocol.
const NLM_CONNECTIVITY_IPV4_SUBNET = NLM_CONNECTIVITY(16);

/// There is connectivity to a routed network using the IPv4 protocol.
const NLM_CONNECTIVITY_IPV4_LOCALNETWORK = NLM_CONNECTIVITY(32);

/// There is connectivity to the Internet using the IPv4 protocol.
const NLM_CONNECTIVITY_IPV4_INTERNET = NLM_CONNECTIVITY(64);

/// There is connectivity to the local subnet using the IPv6 protocol.
const NLM_CONNECTIVITY_IPV6_SUBNET = NLM_CONNECTIVITY(256);

/// There is connectivity to a local network using the IPv6 protocol.
const NLM_CONNECTIVITY_IPV6_LOCALNETWORK = NLM_CONNECTIVITY(512);

/// There is connectivity to the Internet using the IPv6 protocol.
const NLM_CONNECTIVITY_IPV6_INTERNET = NLM_CONNECTIVITY(1024);

/// A set of flags that specify the domain type of a network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_domain_type>.
///
/// {@category enum}
extension type const NLM_DOMAIN_TYPE(int _) implements int {}

/// The Network is not an Active Directory Network.
const NLM_DOMAIN_TYPE_NON_DOMAIN_NETWORK = NLM_DOMAIN_TYPE(0);

/// The Network is an Active Directory Network, but this machine is not
/// authenticated against it.
const NLM_DOMAIN_TYPE_DOMAIN_NETWORK = NLM_DOMAIN_TYPE(1);

/// The Network is an Active Directory Network, and this machine is
/// authenticated against it.
const NLM_DOMAIN_TYPE_DOMAIN_AUTHENTICATED = NLM_DOMAIN_TYPE(2);

/// Contains a set of flags that specify what types of networks are enumerated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_enum_network>.
///
/// {@category enum}
extension type const NLM_ENUM_NETWORK(int _) implements int {}

/// Returns connected networks.
const NLM_ENUM_NETWORK_CONNECTED = NLM_ENUM_NETWORK(1);

/// Returns disconnected networks.
const NLM_ENUM_NETWORK_DISCONNECTED = NLM_ENUM_NETWORK(2);

/// Returns connected and disconnected networks.
const NLM_ENUM_NETWORK_ALL = NLM_ENUM_NETWORK(3);

/// A set of flags that specify the category type of a network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/ne-netlistmgr-nlm_network_category>.
///
/// {@category enum}
extension type const NLM_NETWORK_CATEGORY(int _) implements int {}

/// The network is a public (untrusted) network.
const NLM_NETWORK_CATEGORY_PUBLIC = NLM_NETWORK_CATEGORY(0);

/// The network is a private (trusted) network.
const NLM_NETWORK_CATEGORY_PRIVATE = NLM_NETWORK_CATEGORY(1);

/// The network is authenticated against an Active Directory domain.
const NLM_NETWORK_CATEGORY_DOMAIN_AUTHENTICATED = NLM_NETWORK_CATEGORY(2);

/// Specifies information about the duplicate address detection (DAD) state for
/// an IPv4 or IPv6 address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/nldef/ne-nldef-nl_dad_state>.
///
/// {@category enum}
extension type const NL_DAD_STATE(int _) implements int {}

const NldsInvalid = NL_DAD_STATE(0);

const NldsTentative = NL_DAD_STATE(1);

const NldsDuplicate = NL_DAD_STATE(2);

const NldsDeprecated = NL_DAD_STATE(3);

const NldsPreferred = NL_DAD_STATE(4);

/// The DAD state is invalid.
const IpDadStateInvalid = NL_DAD_STATE(0);

/// The DAD state is tentative.
const IpDadStateTentative = NL_DAD_STATE(1);

/// A duplicate IP address has been detected.
const IpDadStateDuplicate = NL_DAD_STATE(2);

/// The IP address has been deprecated.
const IpDadStateDeprecated = NL_DAD_STATE(3);

/// The IP address is the preferred address.
const IpDadStatePreferred = NL_DAD_STATE(4);

/// Specifies the origin of an IPv4 or IPv6 address prefix, and is used with the
/// IP_ADAPTER_UNICAST_ADDRESS structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/nldef/ne-nldef-nl_prefix_origin>.
///
/// {@category enum}
extension type const NL_PREFIX_ORIGIN(int _) implements int {}

/// The IP prefix was provided by a source other than those defined in this
/// enumeration.
const IpPrefixOriginOther = NL_PREFIX_ORIGIN(0);

/// The IP address prefix was manually specified.
const IpPrefixOriginManual = NL_PREFIX_ORIGIN(1);

/// The IP address prefix is from a well known source.
const IpPrefixOriginWellKnown = NL_PREFIX_ORIGIN(2);

/// The IP address prefix was provided by DHCP settings.
const IpPrefixOriginDhcp = NL_PREFIX_ORIGIN(3);

/// The IP address prefix was obtained through a router advertisement (RA).
const IpPrefixOriginRouterAdvertisement = NL_PREFIX_ORIGIN(4);

/// The IP address prefix should be unchanged.
const IpPrefixOriginUnchanged = NL_PREFIX_ORIGIN(16);

/// Specifies the origin of an IPv4 or IPv6 address suffix, and is used with the
/// IP_ADAPTER_UNICAST_ADDRESS structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/nldef/ne-nldef-nl_suffix_origin>.
///
/// {@category enum}
extension type const NL_SUFFIX_ORIGIN(int _) implements int {}

const NlsoOther = NL_SUFFIX_ORIGIN(0);

const NlsoManual = NL_SUFFIX_ORIGIN(1);

const NlsoWellKnown = NL_SUFFIX_ORIGIN(2);

const NlsoDhcp = NL_SUFFIX_ORIGIN(3);

const NlsoLinkLayerAddress = NL_SUFFIX_ORIGIN(4);

const NlsoRandom = NL_SUFFIX_ORIGIN(5);

/// The IP address suffix was provided by a source other than those defined in
/// this enumeration.
const IpSuffixOriginOther = NL_SUFFIX_ORIGIN(0);

/// The IP address suffix was manually specified.
const IpSuffixOriginManual = NL_SUFFIX_ORIGIN(1);

/// The IP address suffix is from a well-known source.
const IpSuffixOriginWellKnown = NL_SUFFIX_ORIGIN(2);

/// The IP address suffix was provided by DHCP settings.
const IpSuffixOriginDhcp = NL_SUFFIX_ORIGIN(3);

/// The IP address suffix was obtained from the link-layer address.
const IpSuffixOriginLinkLayerAddress = NL_SUFFIX_ORIGIN(4);

/// The IP address suffix was obtained from a random source.
const IpSuffixOriginRandom = NL_SUFFIX_ORIGIN(5);

/// The IP address suffix should be unchanged.
const IpSuffixOriginUnchanged = NL_SUFFIX_ORIGIN(16);

/// {@category enum}
extension type const NOTIFY_ICON_DATA_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(NOTIFY_ICON_DATA_FLAGS other) => _ & other._ == other._;

  NOTIFY_ICON_DATA_FLAGS operator &(int other) => .new(_ & other);
  NOTIFY_ICON_DATA_FLAGS operator |(int other) => .new(_ | other);
}

const NIF_MESSAGE = NOTIFY_ICON_DATA_FLAGS(1);

const NIF_ICON = NOTIFY_ICON_DATA_FLAGS(2);

const NIF_TIP = NOTIFY_ICON_DATA_FLAGS(4);

const NIF_STATE = NOTIFY_ICON_DATA_FLAGS(8);

const NIF_INFO = NOTIFY_ICON_DATA_FLAGS(16);

const NIF_GUID = NOTIFY_ICON_DATA_FLAGS(32);

const NIF_REALTIME = NOTIFY_ICON_DATA_FLAGS(64);

const NIF_SHOWTIP = NOTIFY_ICON_DATA_FLAGS(128);

/// {@category enum}
extension type const NOTIFY_ICON_INFOTIP_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(NOTIFY_ICON_INFOTIP_FLAGS other) => _ & other._ == other._;

  NOTIFY_ICON_INFOTIP_FLAGS operator &(int other) => .new(_ & other);
  NOTIFY_ICON_INFOTIP_FLAGS operator |(int other) => .new(_ | other);
}

const NIIF_NONE = NOTIFY_ICON_INFOTIP_FLAGS(0);

const NIIF_INFO = NOTIFY_ICON_INFOTIP_FLAGS(1);

const NIIF_WARNING = NOTIFY_ICON_INFOTIP_FLAGS(2);

const NIIF_ERROR = NOTIFY_ICON_INFOTIP_FLAGS(3);

const NIIF_USER = NOTIFY_ICON_INFOTIP_FLAGS(4);

const NIIF_ICON_MASK = NOTIFY_ICON_INFOTIP_FLAGS(15);

const NIIF_NOSOUND = NOTIFY_ICON_INFOTIP_FLAGS(16);

const NIIF_LARGE_ICON = NOTIFY_ICON_INFOTIP_FLAGS(32);

const NIIF_RESPECT_QUIET_TIME = NOTIFY_ICON_INFOTIP_FLAGS(128);

/// {@category enum}
extension type const NOTIFY_ICON_MESSAGE(int _) implements int {}

const NIM_ADD = NOTIFY_ICON_MESSAGE(0);

const NIM_MODIFY = NOTIFY_ICON_MESSAGE(1);

const NIM_DELETE = NOTIFY_ICON_MESSAGE(2);

const NIM_SETFOCUS = NOTIFY_ICON_MESSAGE(3);

const NIM_SETVERSION = NOTIFY_ICON_MESSAGE(4);

/// {@category enum}
extension type const NOTIFY_ICON_STATE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(NOTIFY_ICON_STATE other) => _ & other._ == other._;

  NOTIFY_ICON_STATE operator &(int other) => .new(_ & other);
  NOTIFY_ICON_STATE operator |(int other) => .new(_ | other);
}

const NIS_HIDDEN = NOTIFY_ICON_STATE(1);

const NIS_SHAREDICON = NOTIFY_ICON_STATE(2);

/// Contains values used to specify the direction of navigation within the
/// Microsoft UI Automation tree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-navigatedirection>.
///
/// {@category enum}
extension type const NavigateDirection(int _) implements int {}

/// The navigation direction is to the parent.
const NavigateDirection_Parent = NavigateDirection(0);

/// The navigation direction is to the next sibling.
const NavigateDirection_NextSibling = NavigateDirection(1);

/// The navigation direction is to the previous sibling.
const NavigateDirection_PreviousSibling = NavigateDirection(2);

/// The navigation direction is to the first child.
const NavigateDirection_FirstChild = NavigateDirection(3);

/// The navigation direction is to the last child.
const NavigateDirection_LastChild = NavigateDirection(4);

/// Defines values that indicate the type of a notification event, and a hint to
/// the listener about the processing of the event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-notificationkind>.
///
/// {@category enum}
extension type const NotificationKind(int _) implements int {}

/// The current element and/or the container has had something added to it that
/// should be presented to the user.
const NotificationKind_ItemAdded = NotificationKind(0);

/// The current element has had something removed from inside of it that should
/// be presented to the user.
const NotificationKind_ItemRemoved = NotificationKind(1);

/// The current element has a notification that an action was completed.
const NotificationKind_ActionCompleted = NotificationKind(2);

/// The current element has a notification that an action was aborted.
const NotificationKind_ActionAborted = NotificationKind(3);

/// The current element has a notification not an add, remove, completed, or
/// aborted action.
const NotificationKind_Other = NotificationKind(4);

/// Defines values that indicate how a notification should be processed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-notificationprocessing>.
///
/// {@category enum}
extension type const NotificationProcessing(int _) implements int {}

/// These notifications should be presented to the user as soon as possible and
/// all of the notifications from this source should be delivered to the user.
const NotificationProcessing_ImportantAll = NotificationProcessing(0);

/// These notifications should be presented to the user as soon as possible.
const NotificationProcessing_ImportantMostRecent = NotificationProcessing(1);

/// These notifications should be presented to the user when possible.
const NotificationProcessing_All = NotificationProcessing(2);

/// These notifications should be presented to the user when possible.
const NotificationProcessing_MostRecent = NotificationProcessing(3);

/// These notifications should be presented to the user when possible.
const NotificationProcessing_CurrentThenMostRecent = NotificationProcessing(4);

const NotificationProcessing_ImportantCurrentThenMostRecent =
    NotificationProcessing(5);

/// {@category enum}
extension type const OBJECT_IDENTIFIER(int _) implements int {}

const OBJID_WINDOW = OBJECT_IDENTIFIER(0);

const OBJID_SYSMENU = OBJECT_IDENTIFIER(-1);

const OBJID_TITLEBAR = OBJECT_IDENTIFIER(-2);

const OBJID_MENU = OBJECT_IDENTIFIER(-3);

const OBJID_CLIENT = OBJECT_IDENTIFIER(-4);

const OBJID_VSCROLL = OBJECT_IDENTIFIER(-5);

const OBJID_HSCROLL = OBJECT_IDENTIFIER(-6);

const OBJID_SIZEGRIP = OBJECT_IDENTIFIER(-7);

const OBJID_CARET = OBJECT_IDENTIFIER(-8);

const OBJID_CURSOR = OBJECT_IDENTIFIER(-9);

const OBJID_ALERT = OBJECT_IDENTIFIER(-10);

const OBJID_SOUND = OBJECT_IDENTIFIER(-11);

const OBJID_QUERYCLASSNAMEIDX = OBJECT_IDENTIFIER(-12);

const OBJID_NATIVEOM = OBJECT_IDENTIFIER(-16);

/// {@category enum}
extension type const OBJECT_SECURITY_INFORMATION(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(OBJECT_SECURITY_INFORMATION other) => _ & other._ == other._;

  OBJECT_SECURITY_INFORMATION operator &(int other) => .new(_ & other);
  OBJECT_SECURITY_INFORMATION operator |(int other) => .new(_ | other);
}

const ATTRIBUTE_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(32);

const BACKUP_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(65536);

const DACL_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(4);

const GROUP_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(2);

const LABEL_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(16);

const OWNER_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(1);

const PROTECTED_DACL_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(
  2147483648,
);

const PROTECTED_SACL_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(
  1073741824,
);

const SACL_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(8);

const SCOPE_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(64);

const UNPROTECTED_DACL_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(
  536870912,
);

const UNPROTECTED_SACL_SECURITY_INFORMATION = OBJECT_SECURITY_INFORMATION(
  268435456,
);

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(OPEN_FILENAME_FLAGS other) => _ & other._ == other._;

  OPEN_FILENAME_FLAGS operator &(int other) => .new(_ & other);
  OPEN_FILENAME_FLAGS operator |(int other) => .new(_ | other);
}

const OFN_READONLY = OPEN_FILENAME_FLAGS(1);

const OFN_OVERWRITEPROMPT = OPEN_FILENAME_FLAGS(2);

const OFN_HIDEREADONLY = OPEN_FILENAME_FLAGS(4);

const OFN_NOCHANGEDIR = OPEN_FILENAME_FLAGS(8);

const OFN_SHOWHELP = OPEN_FILENAME_FLAGS(16);

const OFN_ENABLEHOOK = OPEN_FILENAME_FLAGS(32);

const OFN_ENABLETEMPLATE = OPEN_FILENAME_FLAGS(64);

const OFN_ENABLETEMPLATEHANDLE = OPEN_FILENAME_FLAGS(128);

const OFN_NOVALIDATE = OPEN_FILENAME_FLAGS(256);

const OFN_ALLOWMULTISELECT = OPEN_FILENAME_FLAGS(512);

const OFN_EXTENSIONDIFFERENT = OPEN_FILENAME_FLAGS(1024);

const OFN_PATHMUSTEXIST = OPEN_FILENAME_FLAGS(2048);

const OFN_FILEMUSTEXIST = OPEN_FILENAME_FLAGS(4096);

const OFN_CREATEPROMPT = OPEN_FILENAME_FLAGS(8192);

const OFN_SHAREAWARE = OPEN_FILENAME_FLAGS(16384);

const OFN_NOREADONLYRETURN = OPEN_FILENAME_FLAGS(32768);

const OFN_NOTESTFILECREATE = OPEN_FILENAME_FLAGS(65536);

const OFN_NONETWORKBUTTON = OPEN_FILENAME_FLAGS(131072);

const OFN_NOLONGNAMES = OPEN_FILENAME_FLAGS(262144);

const OFN_EXPLORER = OPEN_FILENAME_FLAGS(524288);

const OFN_NODEREFERENCELINKS = OPEN_FILENAME_FLAGS(1048576);

const OFN_LONGNAMES = OPEN_FILENAME_FLAGS(2097152);

const OFN_ENABLEINCLUDENOTIFY = OPEN_FILENAME_FLAGS(4194304);

const OFN_ENABLESIZING = OPEN_FILENAME_FLAGS(8388608);

const OFN_DONTADDTORECENT = OPEN_FILENAME_FLAGS(33554432);

const OFN_FORCESHOWHIDDEN = OPEN_FILENAME_FLAGS(268435456);

/// {@category enum}
extension type const OPEN_FILENAME_FLAGS_EX(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(OPEN_FILENAME_FLAGS_EX other) => _ & other._ == other._;

  OPEN_FILENAME_FLAGS_EX operator &(int other) => .new(_ & other);
  OPEN_FILENAME_FLAGS_EX operator |(int other) => .new(_ | other);
}

const OFN_EX_NONE = OPEN_FILENAME_FLAGS_EX(0);

const OFN_EX_NOPLACESBAR = OPEN_FILENAME_FLAGS_EX(1);

/// {@category enum}
extension type const OPEN_THEME_DATA_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(OPEN_THEME_DATA_FLAGS other) => _ & other._ == other._;

  OPEN_THEME_DATA_FLAGS operator &(int other) => .new(_ & other);
  OPEN_THEME_DATA_FLAGS operator |(int other) => .new(_ | other);
}

const OTD_FORCE_RECT_SIZING = OPEN_THEME_DATA_FLAGS(1);

const OTD_NONCLIENT = OPEN_THEME_DATA_FLAGS(2);

/// Indicates the screen orientation preference for a desktop app process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ne-winuser-orientation_preference>.
///
/// {@category enum}
extension type const ORIENTATION_PREFERENCE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ORIENTATION_PREFERENCE other) => _ & other._ == other._;

  ORIENTATION_PREFERENCE operator &(int other) => .new(_ & other);
  ORIENTATION_PREFERENCE operator |(int other) => .new(_ | other);
}

/// The process has no device orientation preferences.
const ORIENTATION_PREFERENCE_NONE = ORIENTATION_PREFERENCE(0);

/// The process represents a desktop app that can be used in landscape mode.
const ORIENTATION_PREFERENCE_LANDSCAPE = ORIENTATION_PREFERENCE(1);

/// The process represents a desktop app that can be used in portrait mode.
const ORIENTATION_PREFERENCE_PORTRAIT = ORIENTATION_PREFERENCE(2);

/// The process represents a desktop app that can be used in flipped landscape
/// mode.
const ORIENTATION_PREFERENCE_LANDSCAPE_FLIPPED = ORIENTATION_PREFERENCE(4);

/// The process represents a desktop app that can be used in flipped portrait
/// mode.
const ORIENTATION_PREFERENCE_PORTRAIT_FLIPPED = ORIENTATION_PREFERENCE(8);

/// {@category enum}
extension type const OS_PRODUCT_TYPE(int _) implements int {}

const PRODUCT_UNDEFINED = OS_PRODUCT_TYPE(0);

const PRODUCT_ULTIMATE = OS_PRODUCT_TYPE(1);

const PRODUCT_HOME_BASIC = OS_PRODUCT_TYPE(2);

const PRODUCT_HOME_PREMIUM = OS_PRODUCT_TYPE(3);

const PRODUCT_ENTERPRISE = OS_PRODUCT_TYPE(4);

const PRODUCT_HOME_BASIC_N = OS_PRODUCT_TYPE(5);

const PRODUCT_BUSINESS = OS_PRODUCT_TYPE(6);

const PRODUCT_STANDARD_SERVER = OS_PRODUCT_TYPE(7);

const PRODUCT_DATACENTER_SERVER = OS_PRODUCT_TYPE(8);

const PRODUCT_SMALLBUSINESS_SERVER = OS_PRODUCT_TYPE(9);

const PRODUCT_ENTERPRISE_SERVER = OS_PRODUCT_TYPE(10);

const PRODUCT_STARTER = OS_PRODUCT_TYPE(11);

const PRODUCT_DATACENTER_SERVER_CORE = OS_PRODUCT_TYPE(12);

const PRODUCT_STANDARD_SERVER_CORE = OS_PRODUCT_TYPE(13);

const PRODUCT_ENTERPRISE_SERVER_CORE = OS_PRODUCT_TYPE(14);

const PRODUCT_ENTERPRISE_SERVER_IA64 = OS_PRODUCT_TYPE(15);

const PRODUCT_BUSINESS_N = OS_PRODUCT_TYPE(16);

const PRODUCT_WEB_SERVER = OS_PRODUCT_TYPE(17);

const PRODUCT_CLUSTER_SERVER = OS_PRODUCT_TYPE(18);

const PRODUCT_HOME_SERVER = OS_PRODUCT_TYPE(19);

const PRODUCT_STORAGE_EXPRESS_SERVER = OS_PRODUCT_TYPE(20);

const PRODUCT_STORAGE_STANDARD_SERVER = OS_PRODUCT_TYPE(21);

const PRODUCT_STORAGE_WORKGROUP_SERVER = OS_PRODUCT_TYPE(22);

const PRODUCT_STORAGE_ENTERPRISE_SERVER = OS_PRODUCT_TYPE(23);

const PRODUCT_SERVER_FOR_SMALLBUSINESS = OS_PRODUCT_TYPE(24);

const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM = OS_PRODUCT_TYPE(25);

const PRODUCT_HOME_PREMIUM_N = OS_PRODUCT_TYPE(26);

const PRODUCT_ENTERPRISE_N = OS_PRODUCT_TYPE(27);

const PRODUCT_ULTIMATE_N = OS_PRODUCT_TYPE(28);

const PRODUCT_WEB_SERVER_CORE = OS_PRODUCT_TYPE(29);

const PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT = OS_PRODUCT_TYPE(30);

const PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY = OS_PRODUCT_TYPE(31);

const PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING = OS_PRODUCT_TYPE(32);

const PRODUCT_SERVER_FOUNDATION = OS_PRODUCT_TYPE(33);

const PRODUCT_HOME_PREMIUM_SERVER = OS_PRODUCT_TYPE(34);

const PRODUCT_SERVER_FOR_SMALLBUSINESS_V = OS_PRODUCT_TYPE(35);

const PRODUCT_STANDARD_SERVER_V = OS_PRODUCT_TYPE(36);

const PRODUCT_DATACENTER_SERVER_V = OS_PRODUCT_TYPE(37);

const PRODUCT_ENTERPRISE_SERVER_V = OS_PRODUCT_TYPE(38);

const PRODUCT_DATACENTER_SERVER_CORE_V = OS_PRODUCT_TYPE(39);

const PRODUCT_STANDARD_SERVER_CORE_V = OS_PRODUCT_TYPE(40);

const PRODUCT_ENTERPRISE_SERVER_CORE_V = OS_PRODUCT_TYPE(41);

const PRODUCT_HYPERV = OS_PRODUCT_TYPE(42);

const PRODUCT_STORAGE_EXPRESS_SERVER_CORE = OS_PRODUCT_TYPE(43);

const PRODUCT_STORAGE_STANDARD_SERVER_CORE = OS_PRODUCT_TYPE(44);

const PRODUCT_STORAGE_WORKGROUP_SERVER_CORE = OS_PRODUCT_TYPE(45);

const PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE = OS_PRODUCT_TYPE(46);

const PRODUCT_STARTER_N = OS_PRODUCT_TYPE(47);

const PRODUCT_PROFESSIONAL = OS_PRODUCT_TYPE(48);

const PRODUCT_PROFESSIONAL_N = OS_PRODUCT_TYPE(49);

const PRODUCT_SB_SOLUTION_SERVER = OS_PRODUCT_TYPE(50);

const PRODUCT_SERVER_FOR_SB_SOLUTIONS = OS_PRODUCT_TYPE(51);

const PRODUCT_STANDARD_SERVER_SOLUTIONS = OS_PRODUCT_TYPE(52);

const PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE = OS_PRODUCT_TYPE(53);

const PRODUCT_SB_SOLUTION_SERVER_EM = OS_PRODUCT_TYPE(54);

const PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM = OS_PRODUCT_TYPE(55);

const PRODUCT_SOLUTION_EMBEDDEDSERVER = OS_PRODUCT_TYPE(56);

const PRODUCT_SOLUTION_EMBEDDEDSERVER_CORE = OS_PRODUCT_TYPE(57);

const PRODUCT_PROFESSIONAL_EMBEDDED = OS_PRODUCT_TYPE(58);

const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT = OS_PRODUCT_TYPE(59);

const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL = OS_PRODUCT_TYPE(60);

const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC = OS_PRODUCT_TYPE(61);

const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC = OS_PRODUCT_TYPE(62);

const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE = OS_PRODUCT_TYPE(63);

const PRODUCT_CLUSTER_SERVER_V = OS_PRODUCT_TYPE(64);

const PRODUCT_EMBEDDED = OS_PRODUCT_TYPE(65);

const PRODUCT_STARTER_E = OS_PRODUCT_TYPE(66);

const PRODUCT_HOME_BASIC_E = OS_PRODUCT_TYPE(67);

const PRODUCT_HOME_PREMIUM_E = OS_PRODUCT_TYPE(68);

const PRODUCT_PROFESSIONAL_E = OS_PRODUCT_TYPE(69);

const PRODUCT_ENTERPRISE_E = OS_PRODUCT_TYPE(70);

const PRODUCT_ULTIMATE_E = OS_PRODUCT_TYPE(71);

const PRODUCT_ENTERPRISE_EVALUATION = OS_PRODUCT_TYPE(72);

const PRODUCT_MULTIPOINT_STANDARD_SERVER = OS_PRODUCT_TYPE(76);

const PRODUCT_MULTIPOINT_PREMIUM_SERVER = OS_PRODUCT_TYPE(77);

const PRODUCT_STANDARD_EVALUATION_SERVER = OS_PRODUCT_TYPE(79);

const PRODUCT_DATACENTER_EVALUATION_SERVER = OS_PRODUCT_TYPE(80);

const PRODUCT_ENTERPRISE_N_EVALUATION = OS_PRODUCT_TYPE(84);

const PRODUCT_EMBEDDED_AUTOMOTIVE = OS_PRODUCT_TYPE(85);

const PRODUCT_EMBEDDED_INDUSTRY_A = OS_PRODUCT_TYPE(86);

const PRODUCT_THINPC = OS_PRODUCT_TYPE(87);

const PRODUCT_EMBEDDED_A = OS_PRODUCT_TYPE(88);

const PRODUCT_EMBEDDED_INDUSTRY = OS_PRODUCT_TYPE(89);

const PRODUCT_EMBEDDED_E = OS_PRODUCT_TYPE(90);

const PRODUCT_EMBEDDED_INDUSTRY_E = OS_PRODUCT_TYPE(91);

const PRODUCT_EMBEDDED_INDUSTRY_A_E = OS_PRODUCT_TYPE(92);

const PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER = OS_PRODUCT_TYPE(95);

const PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER = OS_PRODUCT_TYPE(96);

const PRODUCT_CORE_ARM = OS_PRODUCT_TYPE(97);

const PRODUCT_CORE_N = OS_PRODUCT_TYPE(98);

const PRODUCT_CORE_COUNTRYSPECIFIC = OS_PRODUCT_TYPE(99);

const PRODUCT_CORE_SINGLELANGUAGE = OS_PRODUCT_TYPE(100);

const PRODUCT_CORE = OS_PRODUCT_TYPE(101);

const PRODUCT_PROFESSIONAL_WMC = OS_PRODUCT_TYPE(103);

const PRODUCT_EMBEDDED_INDUSTRY_EVAL = OS_PRODUCT_TYPE(105);

const PRODUCT_EMBEDDED_INDUSTRY_E_EVAL = OS_PRODUCT_TYPE(106);

const PRODUCT_EMBEDDED_EVAL = OS_PRODUCT_TYPE(107);

const PRODUCT_EMBEDDED_E_EVAL = OS_PRODUCT_TYPE(108);

const PRODUCT_NANO_SERVER = OS_PRODUCT_TYPE(109);

const PRODUCT_CLOUD_STORAGE_SERVER = OS_PRODUCT_TYPE(110);

const PRODUCT_CORE_CONNECTED = OS_PRODUCT_TYPE(111);

const PRODUCT_PROFESSIONAL_STUDENT = OS_PRODUCT_TYPE(112);

const PRODUCT_CORE_CONNECTED_N = OS_PRODUCT_TYPE(113);

const PRODUCT_PROFESSIONAL_STUDENT_N = OS_PRODUCT_TYPE(114);

const PRODUCT_CORE_CONNECTED_SINGLELANGUAGE = OS_PRODUCT_TYPE(115);

const PRODUCT_CORE_CONNECTED_COUNTRYSPECIFIC = OS_PRODUCT_TYPE(116);

const PRODUCT_CONNECTED_CAR = OS_PRODUCT_TYPE(117);

const PRODUCT_INDUSTRY_HANDHELD = OS_PRODUCT_TYPE(118);

const PRODUCT_PPI_PRO = OS_PRODUCT_TYPE(119);

const PRODUCT_ARM64_SERVER = OS_PRODUCT_TYPE(120);

const PRODUCT_EDUCATION = OS_PRODUCT_TYPE(121);

const PRODUCT_EDUCATION_N = OS_PRODUCT_TYPE(122);

const PRODUCT_IOTUAP = OS_PRODUCT_TYPE(123);

const PRODUCT_CLOUD_HOST_INFRASTRUCTURE_SERVER = OS_PRODUCT_TYPE(124);

const PRODUCT_ENTERPRISE_S = OS_PRODUCT_TYPE(125);

const PRODUCT_ENTERPRISE_S_N = OS_PRODUCT_TYPE(126);

const PRODUCT_PROFESSIONAL_S = OS_PRODUCT_TYPE(127);

const PRODUCT_PROFESSIONAL_S_N = OS_PRODUCT_TYPE(128);

const PRODUCT_ENTERPRISE_S_EVALUATION = OS_PRODUCT_TYPE(129);

const PRODUCT_ENTERPRISE_S_N_EVALUATION = OS_PRODUCT_TYPE(130);

const PRODUCT_HOLOGRAPHIC = OS_PRODUCT_TYPE(135);

const PRODUCT_HOLOGRAPHIC_BUSINESS = OS_PRODUCT_TYPE(136);

const PRODUCT_PRO_SINGLE_LANGUAGE = OS_PRODUCT_TYPE(138);

const PRODUCT_PRO_CHINA = OS_PRODUCT_TYPE(139);

const PRODUCT_ENTERPRISE_SUBSCRIPTION = OS_PRODUCT_TYPE(140);

const PRODUCT_ENTERPRISE_SUBSCRIPTION_N = OS_PRODUCT_TYPE(141);

const PRODUCT_DATACENTER_NANO_SERVER = OS_PRODUCT_TYPE(143);

const PRODUCT_STANDARD_NANO_SERVER = OS_PRODUCT_TYPE(144);

const PRODUCT_DATACENTER_A_SERVER_CORE = OS_PRODUCT_TYPE(145);

const PRODUCT_STANDARD_A_SERVER_CORE = OS_PRODUCT_TYPE(146);

const PRODUCT_DATACENTER_WS_SERVER_CORE = OS_PRODUCT_TYPE(147);

const PRODUCT_STANDARD_WS_SERVER_CORE = OS_PRODUCT_TYPE(148);

const PRODUCT_UTILITY_VM = OS_PRODUCT_TYPE(149);

const PRODUCT_DATACENTER_EVALUATION_SERVER_CORE = OS_PRODUCT_TYPE(159);

const PRODUCT_STANDARD_EVALUATION_SERVER_CORE = OS_PRODUCT_TYPE(160);

const PRODUCT_PRO_WORKSTATION = OS_PRODUCT_TYPE(161);

const PRODUCT_PRO_WORKSTATION_N = OS_PRODUCT_TYPE(162);

const PRODUCT_PRO_FOR_EDUCATION = OS_PRODUCT_TYPE(164);

const PRODUCT_PRO_FOR_EDUCATION_N = OS_PRODUCT_TYPE(165);

const PRODUCT_AZURE_SERVER_CORE = OS_PRODUCT_TYPE(168);

const PRODUCT_AZURE_NANO_SERVER = OS_PRODUCT_TYPE(169);

const PRODUCT_ENTERPRISEG = OS_PRODUCT_TYPE(171);

const PRODUCT_ENTERPRISEGN = OS_PRODUCT_TYPE(172);

const PRODUCT_SERVERRDSH = OS_PRODUCT_TYPE(175);

const PRODUCT_CLOUD = OS_PRODUCT_TYPE(178);

const PRODUCT_CLOUDN = OS_PRODUCT_TYPE(179);

const PRODUCT_HUBOS = OS_PRODUCT_TYPE(180);

const PRODUCT_ONECOREUPDATEOS = OS_PRODUCT_TYPE(182);

const PRODUCT_CLOUDE = OS_PRODUCT_TYPE(183);

const PRODUCT_IOTOS = OS_PRODUCT_TYPE(185);

const PRODUCT_CLOUDEN = OS_PRODUCT_TYPE(186);

const PRODUCT_IOTEDGEOS = OS_PRODUCT_TYPE(187);

const PRODUCT_IOTENTERPRISE = OS_PRODUCT_TYPE(188);

const PRODUCT_LITE = OS_PRODUCT_TYPE(189);

const PRODUCT_IOTENTERPRISES = OS_PRODUCT_TYPE(191);

const PRODUCT_XBOX_SYSTEMOS = OS_PRODUCT_TYPE(192);

const PRODUCT_XBOX_GAMEOS = OS_PRODUCT_TYPE(194);

const PRODUCT_XBOX_ERAOS = OS_PRODUCT_TYPE(195);

const PRODUCT_XBOX_DURANGOHOSTOS = OS_PRODUCT_TYPE(196);

const PRODUCT_XBOX_SCARLETTHOSTOS = OS_PRODUCT_TYPE(197);

const PRODUCT_XBOX_KEYSTONE = OS_PRODUCT_TYPE(198);

const PRODUCT_AZURE_SERVER_CLOUDHOST = OS_PRODUCT_TYPE(199);

const PRODUCT_AZURE_SERVER_CLOUDMOS = OS_PRODUCT_TYPE(200);

const PRODUCT_CLOUDEDITIONN = OS_PRODUCT_TYPE(202);

const PRODUCT_CLOUDEDITION = OS_PRODUCT_TYPE(203);

const PRODUCT_VALIDATION = OS_PRODUCT_TYPE(204);

const PRODUCT_IOTENTERPRISESK = OS_PRODUCT_TYPE(205);

const PRODUCT_IOTENTERPRISEK = OS_PRODUCT_TYPE(206);

const PRODUCT_IOTENTERPRISESEVAL = OS_PRODUCT_TYPE(207);

const PRODUCT_AZURE_SERVER_AGENTBRIDGE = OS_PRODUCT_TYPE(208);

const PRODUCT_AZURE_SERVER_NANOHOST = OS_PRODUCT_TYPE(209);

const PRODUCT_WNC = OS_PRODUCT_TYPE(210);

const PRODUCT_AZURESTACKHCI_SERVER_CORE = OS_PRODUCT_TYPE(406);

const PRODUCT_DATACENTER_SERVER_AZURE_EDITION = OS_PRODUCT_TYPE(407);

const PRODUCT_DATACENTER_SERVER_CORE_AZURE_EDITION = OS_PRODUCT_TYPE(408);

const PRODUCT_DATACENTER_WS_SERVER_CORE_AZURE_EDITION = OS_PRODUCT_TYPE(409);

const PRODUCT_UNLICENSED = OS_PRODUCT_TYPE(2882382797);

/// Contains values that specify the orientation of a control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-orientationtype>.
///
/// {@category enum}
extension type const OrientationType(int _) implements int {}

/// The control has no orientation.
const OrientationType_None = OrientationType(0);

/// The control has horizontal orientation.
const OrientationType_Horizontal = OrientationType(1);

/// The control has vertical orientation.
const OrientationType_Vertical = OrientationType(2);

/// {@category enum}
extension type const PAGE_PROTECTION_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PAGE_PROTECTION_FLAGS other) => _ & other._ == other._;

  PAGE_PROTECTION_FLAGS operator &(int other) => .new(_ & other);
  PAGE_PROTECTION_FLAGS operator |(int other) => .new(_ | other);
}

const PAGE_NOACCESS = PAGE_PROTECTION_FLAGS(1);

const PAGE_READONLY = PAGE_PROTECTION_FLAGS(2);

const PAGE_READWRITE = PAGE_PROTECTION_FLAGS(4);

const PAGE_WRITECOPY = PAGE_PROTECTION_FLAGS(8);

const PAGE_EXECUTE = PAGE_PROTECTION_FLAGS(16);

const PAGE_EXECUTE_READ = PAGE_PROTECTION_FLAGS(32);

const PAGE_EXECUTE_READWRITE = PAGE_PROTECTION_FLAGS(64);

const PAGE_EXECUTE_WRITECOPY = PAGE_PROTECTION_FLAGS(128);

const PAGE_GUARD = PAGE_PROTECTION_FLAGS(256);

const PAGE_NOCACHE = PAGE_PROTECTION_FLAGS(512);

const PAGE_WRITECOMBINE = PAGE_PROTECTION_FLAGS(1024);

const PAGE_GRAPHICS_NOACCESS = PAGE_PROTECTION_FLAGS(2048);

const PAGE_GRAPHICS_READONLY = PAGE_PROTECTION_FLAGS(4096);

const PAGE_GRAPHICS_READWRITE = PAGE_PROTECTION_FLAGS(8192);

const PAGE_GRAPHICS_EXECUTE = PAGE_PROTECTION_FLAGS(16384);

const PAGE_GRAPHICS_EXECUTE_READ = PAGE_PROTECTION_FLAGS(32768);

const PAGE_GRAPHICS_EXECUTE_READWRITE = PAGE_PROTECTION_FLAGS(65536);

const PAGE_GRAPHICS_COHERENT = PAGE_PROTECTION_FLAGS(131072);

const PAGE_GRAPHICS_NOCACHE = PAGE_PROTECTION_FLAGS(262144);

const PAGE_ENCLAVE_THREAD_CONTROL = PAGE_PROTECTION_FLAGS(2147483648);

const PAGE_REVERT_TO_FILE_MAP = PAGE_PROTECTION_FLAGS(2147483648);

const PAGE_TARGETS_NO_UPDATE = PAGE_PROTECTION_FLAGS(1073741824);

const PAGE_TARGETS_INVALID = PAGE_PROTECTION_FLAGS(1073741824);

const PAGE_ENCLAVE_UNVALIDATED = PAGE_PROTECTION_FLAGS(536870912);

const PAGE_ENCLAVE_MASK = PAGE_PROTECTION_FLAGS(268435456);

const PAGE_ENCLAVE_DECOMMIT = PAGE_PROTECTION_FLAGS(268435456);

const PAGE_ENCLAVE_SS_FIRST = PAGE_PROTECTION_FLAGS(268435457);

const PAGE_ENCLAVE_SS_REST = PAGE_PROTECTION_FLAGS(268435458);

const SEC_PARTITION_OWNER_HANDLE = PAGE_PROTECTION_FLAGS(262144);

const SEC_64K_PAGES = PAGE_PROTECTION_FLAGS(524288);

const SEC_FILE = PAGE_PROTECTION_FLAGS(8388608);

const SEC_IMAGE = PAGE_PROTECTION_FLAGS(16777216);

const SEC_PROTECTED_IMAGE = PAGE_PROTECTION_FLAGS(33554432);

const SEC_RESERVE = PAGE_PROTECTION_FLAGS(67108864);

const SEC_COMMIT = PAGE_PROTECTION_FLAGS(134217728);

const SEC_NOCACHE = PAGE_PROTECTION_FLAGS(268435456);

const SEC_WRITECOMBINE = PAGE_PROTECTION_FLAGS(1073741824);

const SEC_LARGE_PAGES = PAGE_PROTECTION_FLAGS(2147483648);

const SEC_IMAGE_NO_EXECUTE = PAGE_PROTECTION_FLAGS(285212672);

/// {@category enum}
extension type const PAGE_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PAGE_TYPE other) => _ & other._ == other._;

  PAGE_TYPE operator &(int other) => .new(_ & other);
  PAGE_TYPE operator |(int other) => .new(_ | other);
}

const MEM_PRIVATE = PAGE_TYPE(131072);

const MEM_MAPPED = PAGE_TYPE(262144);

const MEM_IMAGE = PAGE_TYPE(16777216);

/// {@category enum}
extension type const PARAMFLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PARAMFLAGS other) => _ & other._ == other._;

  PARAMFLAGS operator &(int other) => .new(_ & other);
  PARAMFLAGS operator |(int other) => .new(_ | other);
}

const PARAMFLAG_NONE = PARAMFLAGS(0);

const PARAMFLAG_FIN = PARAMFLAGS(1);

const PARAMFLAG_FOUT = PARAMFLAGS(2);

const PARAMFLAG_FLCID = PARAMFLAGS(4);

const PARAMFLAG_FRETVAL = PARAMFLAGS(8);

const PARAMFLAG_FOPT = PARAMFLAGS(16);

const PARAMFLAG_FHASDEFAULT = PARAMFLAGS(32);

const PARAMFLAG_FHASCUSTDATA = PARAMFLAGS(64);

/// {@category enum}
extension type const PATHCCH_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PATHCCH_OPTIONS other) => _ & other._ == other._;

  PATHCCH_OPTIONS operator &(int other) => .new(_ & other);
  PATHCCH_OPTIONS operator |(int other) => .new(_ | other);
}

const PATHCCH_NONE = PATHCCH_OPTIONS(0);

const PATHCCH_ALLOW_LONG_PATHS = PATHCCH_OPTIONS(1);

const PATHCCH_FORCE_ENABLE_LONG_NAME_PROCESS = PATHCCH_OPTIONS(2);

const PATHCCH_FORCE_DISABLE_LONG_NAME_PROCESS = PATHCCH_OPTIONS(4);

const PATHCCH_DO_NOT_NORMALIZE_SEGMENTS = PATHCCH_OPTIONS(8);

const PATHCCH_ENSURE_IS_EXTENDED_LENGTH_PATH = PATHCCH_OPTIONS(16);

const PATHCCH_ENSURE_TRAILING_SLASH = PATHCCH_OPTIONS(32);

const PATHCCH_CANONICALIZE_SLASHES = PATHCCH_OPTIONS(64);

/// {@category enum}
extension type const PEEK_MESSAGE_REMOVE_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PEEK_MESSAGE_REMOVE_TYPE other) => _ & other._ == other._;

  PEEK_MESSAGE_REMOVE_TYPE operator &(int other) => .new(_ & other);
  PEEK_MESSAGE_REMOVE_TYPE operator |(int other) => .new(_ | other);
}

const PM_NOREMOVE = PEEK_MESSAGE_REMOVE_TYPE(0);

const PM_REMOVE = PEEK_MESSAGE_REMOVE_TYPE(1);

const PM_NOYIELD = PEEK_MESSAGE_REMOVE_TYPE(2);

const PM_QS_INPUT = PEEK_MESSAGE_REMOVE_TYPE(67567616);

const PM_QS_POSTMESSAGE = PEEK_MESSAGE_REMOVE_TYPE(9961472);

const PM_QS_PAINT = PEEK_MESSAGE_REMOVE_TYPE(2097152);

const PM_QS_SENDMESSAGE = PEEK_MESSAGE_REMOVE_TYPE(4194304);

/// {@category enum}
extension type const PEN_STYLE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PEN_STYLE other) => _ & other._ == other._;

  PEN_STYLE operator &(int other) => .new(_ & other);
  PEN_STYLE operator |(int other) => .new(_ | other);
}

const PS_GEOMETRIC = PEN_STYLE(65536);

const PS_COSMETIC = PEN_STYLE(0);

const PS_SOLID = PEN_STYLE(0);

const PS_DASH = PEN_STYLE(1);

const PS_DOT = PEN_STYLE(2);

const PS_DASHDOT = PEN_STYLE(3);

const PS_DASHDOTDOT = PEN_STYLE(4);

const PS_NULL = PEN_STYLE(5);

const PS_INSIDEFRAME = PEN_STYLE(6);

const PS_USERSTYLE = PEN_STYLE(7);

const PS_ALTERNATE = PEN_STYLE(8);

const PS_STYLE_MASK = PEN_STYLE(15);

const PS_ENDCAP_ROUND = PEN_STYLE(0);

const PS_ENDCAP_SQUARE = PEN_STYLE(256);

const PS_ENDCAP_FLAT = PEN_STYLE(512);

const PS_ENDCAP_MASK = PEN_STYLE(3840);

const PS_JOIN_ROUND = PEN_STYLE(0);

const PS_JOIN_BEVEL = PEN_STYLE(4096);

const PS_JOIN_MITER = PEN_STYLE(8192);

const PS_JOIN_MASK = PEN_STYLE(61440);

const PS_TYPE_MASK = PEN_STYLE(983040);

/// Identifies a change in the state of a button associated with a pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/ne-winuser-pointer_button_change_type>.
///
/// {@category enum}
extension type const POINTER_BUTTON_CHANGE_TYPE(int _) implements int {}

/// No change in button state.
const POINTER_CHANGE_NONE = POINTER_BUTTON_CHANGE_TYPE(0);

/// The first button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIRSTBUTTON</a>)
/// transitioned to a pressed state.
const POINTER_CHANGE_FIRSTBUTTON_DOWN = POINTER_BUTTON_CHANGE_TYPE(1);

/// The first button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIRSTBUTTON</a>)
/// transitioned to a released state.
const POINTER_CHANGE_FIRSTBUTTON_UP = POINTER_BUTTON_CHANGE_TYPE(2);

/// The second button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_SECONDBUTTON</a>)
/// transitioned to a pressed state.
const POINTER_CHANGE_SECONDBUTTON_DOWN = POINTER_BUTTON_CHANGE_TYPE(3);

/// The second button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_SECONDBUTTON</a>)
/// transitioned to a released state.
const POINTER_CHANGE_SECONDBUTTON_UP = POINTER_BUTTON_CHANGE_TYPE(4);

/// The third button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_THIRDBUTTON</a>)
/// transitioned to a pressed state.
const POINTER_CHANGE_THIRDBUTTON_DOWN = POINTER_BUTTON_CHANGE_TYPE(5);

/// The third button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_THIRDBUTTON</a>)
/// transitioned to a released state.
const POINTER_CHANGE_THIRDBUTTON_UP = POINTER_BUTTON_CHANGE_TYPE(6);

/// The fourth button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FOURTHBUTTON</a>)
/// transitioned to a pressed state.
const POINTER_CHANGE_FOURTHBUTTON_DOWN = POINTER_BUTTON_CHANGE_TYPE(7);

/// The fourth button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FOURTHBUTTON</a>)
/// transitioned to a released state.
const POINTER_CHANGE_FOURTHBUTTON_UP = POINTER_BUTTON_CHANGE_TYPE(8);

/// The fifth button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIFTHBUTTON</a>)
/// transitioned to a pressed state.
const POINTER_CHANGE_FIFTHBUTTON_DOWN = POINTER_BUTTON_CHANGE_TYPE(9);

/// The fifth button (see <a
/// href="https://docs.microsoft.com/windows/win32/inputmsg/pointer-flags-contants">POINTER_FLAG_FIFTHBUTTON</a>)
/// transitioned to a released state.
const POINTER_CHANGE_FIFTHBUTTON_UP = POINTER_BUTTON_CHANGE_TYPE(10);

/// {@category enum}
extension type const POINTER_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(POINTER_FLAGS other) => _ & other._ == other._;

  POINTER_FLAGS operator &(int other) => .new(_ & other);
  POINTER_FLAGS operator |(int other) => .new(_ | other);
}

const POINTER_FLAG_NONE = POINTER_FLAGS(0);

const POINTER_FLAG_NEW = POINTER_FLAGS(1);

const POINTER_FLAG_INRANGE = POINTER_FLAGS(2);

const POINTER_FLAG_INCONTACT = POINTER_FLAGS(4);

const POINTER_FLAG_FIRSTBUTTON = POINTER_FLAGS(16);

const POINTER_FLAG_SECONDBUTTON = POINTER_FLAGS(32);

const POINTER_FLAG_THIRDBUTTON = POINTER_FLAGS(64);

const POINTER_FLAG_FOURTHBUTTON = POINTER_FLAGS(128);

const POINTER_FLAG_FIFTHBUTTON = POINTER_FLAGS(256);

const POINTER_FLAG_PRIMARY = POINTER_FLAGS(8192);

const POINTER_FLAG_CONFIDENCE = POINTER_FLAGS(16384);

const POINTER_FLAG_CANCELED = POINTER_FLAGS(32768);

const POINTER_FLAG_DOWN = POINTER_FLAGS(65536);

const POINTER_FLAG_UPDATE = POINTER_FLAGS(131072);

const POINTER_FLAG_UP = POINTER_FLAGS(262144);

const POINTER_FLAG_WHEEL = POINTER_FLAGS(524288);

const POINTER_FLAG_HWHEEL = POINTER_FLAGS(1048576);

const POINTER_FLAG_CAPTURECHANGED = POINTER_FLAGS(2097152);

const POINTER_FLAG_HASTRANSFORM = POINTER_FLAGS(4194304);

/// {@category enum}
extension type const POINTER_INPUT_TYPE(int _) implements int {}

const PT_POINTER = POINTER_INPUT_TYPE(1);

const PT_TOUCH = POINTER_INPUT_TYPE(2);

const PT_PEN = POINTER_INPUT_TYPE(3);

const PT_MOUSE = POINTER_INPUT_TYPE(4);

const PT_TOUCHPAD = POINTER_INPUT_TYPE(5);

/// {@category enum}
extension type const POWER_INFORMATION_LEVEL(int _) implements int {}

const SystemPowerPolicyAc = POWER_INFORMATION_LEVEL(0);

const SystemPowerPolicyDc = POWER_INFORMATION_LEVEL(1);

const VerifySystemPolicyAc = POWER_INFORMATION_LEVEL(2);

const VerifySystemPolicyDc = POWER_INFORMATION_LEVEL(3);

const SystemPowerCapabilities = POWER_INFORMATION_LEVEL(4);

const SystemBatteryState = POWER_INFORMATION_LEVEL(5);

const SystemPowerStateHandler = POWER_INFORMATION_LEVEL(6);

const ProcessorStateHandler = POWER_INFORMATION_LEVEL(7);

const SystemPowerPolicyCurrent = POWER_INFORMATION_LEVEL(8);

const AdministratorPowerPolicy = POWER_INFORMATION_LEVEL(9);

const SystemReserveHiberFile = POWER_INFORMATION_LEVEL(10);

const ProcessorInformation = POWER_INFORMATION_LEVEL(11);

const SystemPowerInformation = POWER_INFORMATION_LEVEL(12);

const ProcessorStateHandler2 = POWER_INFORMATION_LEVEL(13);

const LastWakeTime = POWER_INFORMATION_LEVEL(14);

const LastSleepTime = POWER_INFORMATION_LEVEL(15);

const SystemExecutionState = POWER_INFORMATION_LEVEL(16);

const SystemPowerStateNotifyHandler = POWER_INFORMATION_LEVEL(17);

const ProcessorPowerPolicyAc = POWER_INFORMATION_LEVEL(18);

const ProcessorPowerPolicyDc = POWER_INFORMATION_LEVEL(19);

const VerifyProcessorPowerPolicyAc = POWER_INFORMATION_LEVEL(20);

const VerifyProcessorPowerPolicyDc = POWER_INFORMATION_LEVEL(21);

const ProcessorPowerPolicyCurrent = POWER_INFORMATION_LEVEL(22);

const SystemPowerStateLogging = POWER_INFORMATION_LEVEL(23);

const SystemPowerLoggingEntry = POWER_INFORMATION_LEVEL(24);

const SetPowerSettingValue = POWER_INFORMATION_LEVEL(25);

const NotifyUserPowerSetting = POWER_INFORMATION_LEVEL(26);

const PowerInformationLevelUnused0 = POWER_INFORMATION_LEVEL(27);

const SystemMonitorHiberBootPowerOff = POWER_INFORMATION_LEVEL(28);

const SystemVideoState = POWER_INFORMATION_LEVEL(29);

const TraceApplicationPowerMessage = POWER_INFORMATION_LEVEL(30);

const TraceApplicationPowerMessageEnd = POWER_INFORMATION_LEVEL(31);

const ProcessorPerfStates = POWER_INFORMATION_LEVEL(32);

const ProcessorIdleStates = POWER_INFORMATION_LEVEL(33);

const ProcessorCap = POWER_INFORMATION_LEVEL(34);

const SystemWakeSource = POWER_INFORMATION_LEVEL(35);

const SystemHiberFileInformation = POWER_INFORMATION_LEVEL(36);

const TraceServicePowerMessage = POWER_INFORMATION_LEVEL(37);

const ProcessorLoad = POWER_INFORMATION_LEVEL(38);

const PowerShutdownNotification = POWER_INFORMATION_LEVEL(39);

const MonitorCapabilities = POWER_INFORMATION_LEVEL(40);

const SessionPowerInit = POWER_INFORMATION_LEVEL(41);

const SessionDisplayState = POWER_INFORMATION_LEVEL(42);

const PowerRequestCreate = POWER_INFORMATION_LEVEL(43);

const PowerRequestAction = POWER_INFORMATION_LEVEL(44);

const GetPowerRequestList = POWER_INFORMATION_LEVEL(45);

const ProcessorInformationEx = POWER_INFORMATION_LEVEL(46);

const NotifyUserModeLegacyPowerEvent = POWER_INFORMATION_LEVEL(47);

const GroupPark = POWER_INFORMATION_LEVEL(48);

const ProcessorIdleDomains = POWER_INFORMATION_LEVEL(49);

const WakeTimerList = POWER_INFORMATION_LEVEL(50);

const SystemHiberFileSize = POWER_INFORMATION_LEVEL(51);

const ProcessorIdleStatesHv = POWER_INFORMATION_LEVEL(52);

const ProcessorPerfStatesHv = POWER_INFORMATION_LEVEL(53);

const ProcessorPerfCapHv = POWER_INFORMATION_LEVEL(54);

const ProcessorSetIdle = POWER_INFORMATION_LEVEL(55);

const LogicalProcessorIdling = POWER_INFORMATION_LEVEL(56);

const UserPresence = POWER_INFORMATION_LEVEL(57);

const PowerSettingNotificationName = POWER_INFORMATION_LEVEL(58);

const GetPowerSettingValue = POWER_INFORMATION_LEVEL(59);

const IdleResiliency = POWER_INFORMATION_LEVEL(60);

const SessionRITState = POWER_INFORMATION_LEVEL(61);

const SessionConnectNotification = POWER_INFORMATION_LEVEL(62);

const SessionPowerCleanup = POWER_INFORMATION_LEVEL(63);

const SessionLockState = POWER_INFORMATION_LEVEL(64);

const SystemHiberbootState = POWER_INFORMATION_LEVEL(65);

const PlatformInformation = POWER_INFORMATION_LEVEL(66);

const PdcInvocation = POWER_INFORMATION_LEVEL(67);

const MonitorInvocation = POWER_INFORMATION_LEVEL(68);

const FirmwareTableInformationRegistered = POWER_INFORMATION_LEVEL(69);

const SetShutdownSelectedTime = POWER_INFORMATION_LEVEL(70);

const SuspendResumeInvocation = POWER_INFORMATION_LEVEL(71);

const PlmPowerRequestCreate = POWER_INFORMATION_LEVEL(72);

const ScreenOff = POWER_INFORMATION_LEVEL(73);

const CsDeviceNotification = POWER_INFORMATION_LEVEL(74);

const PlatformRole = POWER_INFORMATION_LEVEL(75);

const LastResumePerformance = POWER_INFORMATION_LEVEL(76);

const DisplayBurst = POWER_INFORMATION_LEVEL(77);

const ExitLatencySamplingPercentage = POWER_INFORMATION_LEVEL(78);

const RegisterSpmPowerSettings = POWER_INFORMATION_LEVEL(79);

const PlatformIdleStates = POWER_INFORMATION_LEVEL(80);

const ProcessorIdleVeto = POWER_INFORMATION_LEVEL(81);

const PlatformIdleVeto = POWER_INFORMATION_LEVEL(82);

const SystemBatteryStatePrecise = POWER_INFORMATION_LEVEL(83);

const ThermalEvent = POWER_INFORMATION_LEVEL(84);

const PowerRequestActionInternal = POWER_INFORMATION_LEVEL(85);

const BatteryDeviceState = POWER_INFORMATION_LEVEL(86);

const PowerInformationInternal = POWER_INFORMATION_LEVEL(87);

const ThermalStandby = POWER_INFORMATION_LEVEL(88);

const SystemHiberFileType = POWER_INFORMATION_LEVEL(89);

const PhysicalPowerButtonPress = POWER_INFORMATION_LEVEL(90);

const QueryPotentialDripsConstraint = POWER_INFORMATION_LEVEL(91);

const EnergyTrackerCreate = POWER_INFORMATION_LEVEL(92);

const EnergyTrackerQuery = POWER_INFORMATION_LEVEL(93);

const UpdateBlackBoxRecorder = POWER_INFORMATION_LEVEL(94);

const SessionAllowExternalDmaDevices = POWER_INFORMATION_LEVEL(95);

const SendSuspendResumeNotification = POWER_INFORMATION_LEVEL(96);

const BlackBoxRecorderDirectAccessBuffer = POWER_INFORMATION_LEVEL(97);

const SystemPowerSourceState = POWER_INFORMATION_LEVEL(98);

const PowerInformationLevelMaximum = POWER_INFORMATION_LEVEL(99);

/// {@category enum}
extension type const PRINTER_ACCESS_RIGHTS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PRINTER_ACCESS_RIGHTS other) => _ & other._ == other._;

  PRINTER_ACCESS_RIGHTS operator &(int other) => .new(_ & other);
  PRINTER_ACCESS_RIGHTS operator |(int other) => .new(_ | other);
}

const PRINTER_ALL_ACCESS = PRINTER_ACCESS_RIGHTS(983052);

const PRINTER_READ = PRINTER_ACCESS_RIGHTS(131080);

const PRINTER_WRITE = PRINTER_ACCESS_RIGHTS(131080);

const PRINTER_EXECUTE = PRINTER_ACCESS_RIGHTS(131080);

const SERVER_ALL_ACCESS = PRINTER_ACCESS_RIGHTS(983043);

const SERVER_READ = PRINTER_ACCESS_RIGHTS(131074);

const SERVER_WRITE = PRINTER_ACCESS_RIGHTS(131075);

const SERVER_EXECUTE = PRINTER_ACCESS_RIGHTS(131074);

const PRINTER_DELETE = PRINTER_ACCESS_RIGHTS(65536);

const PRINTER_READ_CONTROL = PRINTER_ACCESS_RIGHTS(131072);

const PRINTER_WRITE_DAC = PRINTER_ACCESS_RIGHTS(262144);

const PRINTER_WRITE_OWNER = PRINTER_ACCESS_RIGHTS(524288);

const PRINTER_SYNCHRONIZE = PRINTER_ACCESS_RIGHTS(1048576);

const PRINTER_STANDARD_RIGHTS_REQUIRED = PRINTER_ACCESS_RIGHTS(983040);

const PRINTER_STANDARD_RIGHTS_READ = PRINTER_ACCESS_RIGHTS(131072);

const PRINTER_STANDARD_RIGHTS_WRITE = PRINTER_ACCESS_RIGHTS(131072);

const PRINTER_STANDARD_RIGHTS_EXECUTE = PRINTER_ACCESS_RIGHTS(131072);

const SERVER_ACCESS_ADMINISTER = PRINTER_ACCESS_RIGHTS(1);

const SERVER_ACCESS_ENUMERATE = PRINTER_ACCESS_RIGHTS(2);

const PRINTER_ACCESS_ADMINISTER = PRINTER_ACCESS_RIGHTS(4);

const PRINTER_ACCESS_USE = PRINTER_ACCESS_RIGHTS(8);

const PRINTER_ACCESS_MANAGE_LIMITED = PRINTER_ACCESS_RIGHTS(64);

/// Specifies the caching of a handle for a printer opened with OpenPrinter2.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printer-option-flags>.
///
/// {@category enum}
extension type const PRINTER_OPTION_FLAGS(int _) implements int {}

const PRINTER_OPTION_NO_CACHE = PRINTER_OPTION_FLAGS(1);

const PRINTER_OPTION_CACHE = PRINTER_OPTION_FLAGS(2);

const PRINTER_OPTION_CLIENT_CHANGE = PRINTER_OPTION_FLAGS(4);

const PRINTER_OPTION_NO_CLIENT_DATA = PRINTER_OPTION_FLAGS(8);

/// Represents the execution context when GetPrintExecutionData is called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/print-execution-context>.
///
/// {@category enum}
extension type const PRINT_EXECUTION_CONTEXT(int _) implements int {}

const PRINT_EXECUTION_CONTEXT_APPLICATION = PRINT_EXECUTION_CONTEXT(0);

const PRINT_EXECUTION_CONTEXT_SPOOLER_SERVICE = PRINT_EXECUTION_CONTEXT(1);

const PRINT_EXECUTION_CONTEXT_SPOOLER_ISOLATION_HOST = PRINT_EXECUTION_CONTEXT(
  2,
);

const PRINT_EXECUTION_CONTEXT_FILTER_PIPELINE = PRINT_EXECUTION_CONTEXT(3);

const PRINT_EXECUTION_CONTEXT_WOW64 = PRINT_EXECUTION_CONTEXT(4);

/// {@category enum}
extension type const PRINT_WINDOW_FLAGS(int _) implements int {}

const PW_CLIENTONLY = PRINT_WINDOW_FLAGS(1);

/// {@category enum}
extension type const PROCESSOR_ARCHITECTURE(int _) implements int {}

const PROCESSOR_ARCHITECTURE_INTEL = PROCESSOR_ARCHITECTURE(0);

const PROCESSOR_ARCHITECTURE_MIPS = PROCESSOR_ARCHITECTURE(1);

const PROCESSOR_ARCHITECTURE_ALPHA = PROCESSOR_ARCHITECTURE(2);

const PROCESSOR_ARCHITECTURE_PPC = PROCESSOR_ARCHITECTURE(3);

const PROCESSOR_ARCHITECTURE_SHX = PROCESSOR_ARCHITECTURE(4);

const PROCESSOR_ARCHITECTURE_ARM = PROCESSOR_ARCHITECTURE(5);

const PROCESSOR_ARCHITECTURE_IA64 = PROCESSOR_ARCHITECTURE(6);

const PROCESSOR_ARCHITECTURE_ALPHA64 = PROCESSOR_ARCHITECTURE(7);

const PROCESSOR_ARCHITECTURE_MSIL = PROCESSOR_ARCHITECTURE(8);

const PROCESSOR_ARCHITECTURE_AMD64 = PROCESSOR_ARCHITECTURE(9);

const PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 = PROCESSOR_ARCHITECTURE(10);

const PROCESSOR_ARCHITECTURE_NEUTRAL = PROCESSOR_ARCHITECTURE(11);

const PROCESSOR_ARCHITECTURE_ARM64 = PROCESSOR_ARCHITECTURE(12);

const PROCESSOR_ARCHITECTURE_ARM32_ON_WIN64 = PROCESSOR_ARCHITECTURE(13);

const PROCESSOR_ARCHITECTURE_IA32_ON_ARM64 = PROCESSOR_ARCHITECTURE(14);

const PROCESSOR_ARCHITECTURE_UNKNOWN = PROCESSOR_ARCHITECTURE(65535);

/// Represents the type of processor cache identified in the corresponding
/// CACHE_DESCRIPTOR structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ne-winnt-processor_cache_type>.
///
/// {@category enum}
extension type const PROCESSOR_CACHE_TYPE(int _) implements int {}

/// The cache is unified.
const CacheUnified = PROCESSOR_CACHE_TYPE(0);

/// The cache is for processor instructions.
const CacheInstruction = PROCESSOR_CACHE_TYPE(1);

/// The cache is for data.
const CacheData = PROCESSOR_CACHE_TYPE(2);

/// The cache is for traces.
const CacheTrace = PROCESSOR_CACHE_TYPE(3);

const CacheUnknown = PROCESSOR_CACHE_TYPE(4);

/// {@category enum}
extension type const PROCESS_ACCESS_RIGHTS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PROCESS_ACCESS_RIGHTS other) => _ & other._ == other._;

  PROCESS_ACCESS_RIGHTS operator &(int other) => .new(_ & other);
  PROCESS_ACCESS_RIGHTS operator |(int other) => .new(_ | other);
}

const PROCESS_TERMINATE = PROCESS_ACCESS_RIGHTS(1);

const PROCESS_CREATE_THREAD = PROCESS_ACCESS_RIGHTS(2);

const PROCESS_SET_SESSIONID = PROCESS_ACCESS_RIGHTS(4);

const PROCESS_VM_OPERATION = PROCESS_ACCESS_RIGHTS(8);

const PROCESS_VM_READ = PROCESS_ACCESS_RIGHTS(16);

const PROCESS_VM_WRITE = PROCESS_ACCESS_RIGHTS(32);

const PROCESS_DUP_HANDLE = PROCESS_ACCESS_RIGHTS(64);

const PROCESS_CREATE_PROCESS = PROCESS_ACCESS_RIGHTS(128);

const PROCESS_SET_QUOTA = PROCESS_ACCESS_RIGHTS(256);

const PROCESS_SET_INFORMATION = PROCESS_ACCESS_RIGHTS(512);

const PROCESS_QUERY_INFORMATION = PROCESS_ACCESS_RIGHTS(1024);

const PROCESS_SUSPEND_RESUME = PROCESS_ACCESS_RIGHTS(2048);

const PROCESS_QUERY_LIMITED_INFORMATION = PROCESS_ACCESS_RIGHTS(4096);

const PROCESS_SET_LIMITED_INFORMATION = PROCESS_ACCESS_RIGHTS(8192);

const PROCESS_ALL_ACCESS = PROCESS_ACCESS_RIGHTS(2097151);

const PROCESS_DELETE = PROCESS_ACCESS_RIGHTS(65536);

const PROCESS_READ_CONTROL = PROCESS_ACCESS_RIGHTS(131072);

const PROCESS_WRITE_DAC = PROCESS_ACCESS_RIGHTS(262144);

const PROCESS_WRITE_OWNER = PROCESS_ACCESS_RIGHTS(524288);

const PROCESS_SYNCHRONIZE = PROCESS_ACCESS_RIGHTS(1048576);

const PROCESS_STANDARD_RIGHTS_REQUIRED = PROCESS_ACCESS_RIGHTS(983040);

/// {@category enum}
extension type const PROCESS_CREATION_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PROCESS_CREATION_FLAGS other) => _ & other._ == other._;

  PROCESS_CREATION_FLAGS operator &(int other) => .new(_ & other);
  PROCESS_CREATION_FLAGS operator |(int other) => .new(_ | other);
}

const DEBUG_PROCESS = PROCESS_CREATION_FLAGS(1);

const DEBUG_ONLY_THIS_PROCESS = PROCESS_CREATION_FLAGS(2);

const CREATE_SUSPENDED = PROCESS_CREATION_FLAGS(4);

const DETACHED_PROCESS = PROCESS_CREATION_FLAGS(8);

const CREATE_NEW_CONSOLE = PROCESS_CREATION_FLAGS(16);

const NORMAL_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(32);

const IDLE_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(64);

const HIGH_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(128);

const REALTIME_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(256);

const CREATE_NEW_PROCESS_GROUP = PROCESS_CREATION_FLAGS(512);

const CREATE_UNICODE_ENVIRONMENT = PROCESS_CREATION_FLAGS(1024);

const CREATE_SEPARATE_WOW_VDM = PROCESS_CREATION_FLAGS(2048);

const CREATE_SHARED_WOW_VDM = PROCESS_CREATION_FLAGS(4096);

const CREATE_FORCEDOS = PROCESS_CREATION_FLAGS(8192);

const BELOW_NORMAL_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(16384);

const ABOVE_NORMAL_PRIORITY_CLASS = PROCESS_CREATION_FLAGS(32768);

const INHERIT_PARENT_AFFINITY = PROCESS_CREATION_FLAGS(65536);

const INHERIT_CALLER_PRIORITY = PROCESS_CREATION_FLAGS(131072);

const CREATE_PROTECTED_PROCESS = PROCESS_CREATION_FLAGS(262144);

const EXTENDED_STARTUPINFO_PRESENT = PROCESS_CREATION_FLAGS(524288);

const PROCESS_MODE_BACKGROUND_BEGIN = PROCESS_CREATION_FLAGS(1048576);

const PROCESS_MODE_BACKGROUND_END = PROCESS_CREATION_FLAGS(2097152);

const CREATE_SECURE_PROCESS = PROCESS_CREATION_FLAGS(4194304);

const CREATE_BREAKAWAY_FROM_JOB = PROCESS_CREATION_FLAGS(16777216);

const CREATE_PRESERVE_CODE_AUTHZ_LEVEL = PROCESS_CREATION_FLAGS(33554432);

const CREATE_DEFAULT_ERROR_MODE = PROCESS_CREATION_FLAGS(67108864);

const CREATE_NO_WINDOW = PROCESS_CREATION_FLAGS(134217728);

const PROFILE_USER = PROCESS_CREATION_FLAGS(268435456);

const PROFILE_KERNEL = PROCESS_CREATION_FLAGS(536870912);

const PROFILE_SERVER = PROCESS_CREATION_FLAGS(1073741824);

const CREATE_IGNORE_SYSTEM_DEFAULT = PROCESS_CREATION_FLAGS(2147483648);

/// Identifies dots per inch (dpi) awareness values.
///
/// DPI awareness indicates how much scaling work an application performs for
/// DPI versus how much is done by the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/ne-shellscalingapi-process_dpi_awareness>.
///
/// {@category enum}
extension type const PROCESS_DPI_AWARENESS(int _) implements int {}

/// DPI unaware.
const PROCESS_DPI_UNAWARE = PROCESS_DPI_AWARENESS(0);

/// System DPI aware.
const PROCESS_SYSTEM_DPI_AWARE = PROCESS_DPI_AWARENESS(1);

/// Per monitor DPI aware.
const PROCESS_PER_MONITOR_DPI_AWARE = PROCESS_DPI_AWARENESS(2);

/// {@category enum}
extension type const PROCESS_NAME_FORMAT(int _) implements int {}

const PROCESS_NAME_WIN32 = PROCESS_NAME_FORMAT(0);

const PROCESS_NAME_NATIVE = PROCESS_NAME_FORMAT(1);

/// {@category enum}
extension type const PROC_THREAD_ATTRIBUTE_NUM(int _) implements int {}

const ProcThreadAttributeParentProcess = PROC_THREAD_ATTRIBUTE_NUM(0);

const ProcThreadAttributeHandleList = PROC_THREAD_ATTRIBUTE_NUM(2);

const ProcThreadAttributeGroupAffinity = PROC_THREAD_ATTRIBUTE_NUM(3);

const ProcThreadAttributePreferredNode = PROC_THREAD_ATTRIBUTE_NUM(4);

const ProcThreadAttributeIdealProcessor = PROC_THREAD_ATTRIBUTE_NUM(5);

const ProcThreadAttributeUmsThread = PROC_THREAD_ATTRIBUTE_NUM(6);

const ProcThreadAttributeMitigationPolicy = PROC_THREAD_ATTRIBUTE_NUM(7);

const ProcThreadAttributeSecurityCapabilities = PROC_THREAD_ATTRIBUTE_NUM(9);

const ProcThreadAttributeProtectionLevel = PROC_THREAD_ATTRIBUTE_NUM(11);

const ProcThreadAttributeJobList = PROC_THREAD_ATTRIBUTE_NUM(13);

const ProcThreadAttributeChildProcessPolicy = PROC_THREAD_ATTRIBUTE_NUM(14);

const ProcThreadAttributeAllApplicationPackagesPolicy =
    PROC_THREAD_ATTRIBUTE_NUM(15);

const ProcThreadAttributeWin32kFilter = PROC_THREAD_ATTRIBUTE_NUM(16);

const ProcThreadAttributeSafeOpenPromptOriginClaim = PROC_THREAD_ATTRIBUTE_NUM(
  17,
);

const ProcThreadAttributeDesktopAppPolicy = PROC_THREAD_ATTRIBUTE_NUM(18);

const ProcThreadAttributePseudoConsole = PROC_THREAD_ATTRIBUTE_NUM(22);

const ProcThreadAttributeMitigationAuditPolicy = PROC_THREAD_ATTRIBUTE_NUM(24);

const ProcThreadAttributeMachineType = PROC_THREAD_ATTRIBUTE_NUM(25);

const ProcThreadAttributeComponentFilter = PROC_THREAD_ATTRIBUTE_NUM(26);

const ProcThreadAttributeEnableOptionalXStateFeatures =
    PROC_THREAD_ATTRIBUTE_NUM(27);

const ProcThreadAttributeTrustedApp = PROC_THREAD_ATTRIBUTE_NUM(29);

const ProcThreadAttributeSveVectorLength = PROC_THREAD_ATTRIBUTE_NUM(30);

/// {@category enum}
extension type const PROPSPEC_KIND(int _) implements int {}

const PRSPEC_LPWSTR = PROPSPEC_KIND(0);

const PRSPEC_PROPID = PROPSPEC_KIND(1);

/// {@category enum}
extension type const PURGE_COMM_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(PURGE_COMM_FLAGS other) => _ & other._ == other._;

  PURGE_COMM_FLAGS operator &(int other) => .new(_ & other);
  PURGE_COMM_FLAGS operator |(int other) => .new(_ | other);
}

const PURGE_RXABORT = PURGE_COMM_FLAGS(2);

const PURGE_RXCLEAR = PURGE_COMM_FLAGS(8);

const PURGE_TXABORT = PURGE_COMM_FLAGS(1);

const PURGE_TXCLEAR = PURGE_COMM_FLAGS(4);

/// Contains values used in creating property conditions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/ne-uiautomationclient-propertyconditionflags>.
///
/// {@category enum}
extension type const PropertyConditionFlags(int _) implements int {}

/// No flags.
const PropertyConditionFlags_None = PropertyConditionFlags(0);

/// Comparison of string properties is not case-sensitive.
const PropertyConditionFlags_IgnoreCase = PropertyConditionFlags(1);

/// Comparison of substring properties is enabled.
const PropertyConditionFlags_MatchSubstring = PropertyConditionFlags(2);

/// Contains values that specify the type of UI Automation provider.
///
/// The IRawElementProviderSimple::ProviderOptions property uses this
/// enumeration.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-provideroptions>.
///
/// {@category enum}
extension type const ProviderOptions(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ProviderOptions other) => _ & other._ == other._;

  ProviderOptions operator &(int other) => .new(_ & other);
  ProviderOptions operator |(int other) => .new(_ | other);
}

/// The provider is a client-side (proxy) provider.
const ProviderOptions_ClientSideProvider = ProviderOptions(1);

/// The provider is a server-side provider.
const ProviderOptions_ServerSideProvider = ProviderOptions(2);

/// The provider is a non-client-area provider.
const ProviderOptions_NonClientAreaProvider = ProviderOptions(4);

/// The provider overrides another provider.
const ProviderOptions_OverrideProvider = ProviderOptions(8);

/// The provider handles its own focus, and does not want UI Automation to set
/// focus to the nearest window on its behalf.
const ProviderOptions_ProviderOwnsSetFocus = ProviderOptions(16);

/// The provider has explicit support for COM threading models, so that calls by
/// UI Automation on COM-based providers are received on the appropriate thread.
const ProviderOptions_UseComThreading = ProviderOptions(32);

/// The provider handles its own non-client area and does not want UI Automation
/// to provide default accessibility support for controls in the non-client
/// area, such as minimize/maximize buttons and menu bars.
const ProviderOptions_RefuseNonClientSupport = ProviderOptions(64);

/// The provider implements the <a
/// href="https://docs.microsoft.com/windows/desktop/api/oleacc/nn-oleacc-iaccessible">IAccessible</a>
/// interface.
const ProviderOptions_HasNativeIAccessible = ProviderOptions(128);

/// The provider works in client coordinates instead of screen coordinates.
const ProviderOptions_UseClientCoordinates = ProviderOptions(256);

/// {@category enum}
extension type const QUEUE_STATUS_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(QUEUE_STATUS_FLAGS other) => _ & other._ == other._;

  QUEUE_STATUS_FLAGS operator &(int other) => .new(_ & other);
  QUEUE_STATUS_FLAGS operator |(int other) => .new(_ | other);
}

const QS_ALLEVENTS = QUEUE_STATUS_FLAGS(1215);

const QS_ALLINPUT = QUEUE_STATUS_FLAGS(1279);

const QS_ALLPOSTMESSAGE = QUEUE_STATUS_FLAGS(256);

const QS_HOTKEY = QUEUE_STATUS_FLAGS(128);

const QS_INPUT = QUEUE_STATUS_FLAGS(1031);

const QS_KEY = QUEUE_STATUS_FLAGS(1);

const QS_MOUSE = QUEUE_STATUS_FLAGS(6);

const QS_MOUSEBUTTON = QUEUE_STATUS_FLAGS(4);

const QS_MOUSEMOVE = QUEUE_STATUS_FLAGS(2);

const QS_PAINT = QUEUE_STATUS_FLAGS(32);

const QS_POSTMESSAGE = QUEUE_STATUS_FLAGS(8);

const QS_RAWINPUT = QUEUE_STATUS_FLAGS(1024);

const QS_SENDMESSAGE = QUEUE_STATUS_FLAGS(64);

const QS_TIMER = QUEUE_STATUS_FLAGS(16);

/// {@category enum}
extension type const RAWINPUTDEVICE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(RAWINPUTDEVICE_FLAGS other) => _ & other._ == other._;

  RAWINPUTDEVICE_FLAGS operator &(int other) => .new(_ & other);
  RAWINPUTDEVICE_FLAGS operator |(int other) => .new(_ | other);
}

const RIDEV_REMOVE = RAWINPUTDEVICE_FLAGS(1);

const RIDEV_EXCLUDE = RAWINPUTDEVICE_FLAGS(16);

const RIDEV_PAGEONLY = RAWINPUTDEVICE_FLAGS(32);

const RIDEV_NOLEGACY = RAWINPUTDEVICE_FLAGS(48);

const RIDEV_INPUTSINK = RAWINPUTDEVICE_FLAGS(256);

const RIDEV_CAPTUREMOUSE = RAWINPUTDEVICE_FLAGS(512);

const RIDEV_NOHOTKEYS = RAWINPUTDEVICE_FLAGS(512);

const RIDEV_APPKEYS = RAWINPUTDEVICE_FLAGS(1024);

const RIDEV_EXINPUTSINK = RAWINPUTDEVICE_FLAGS(4096);

const RIDEV_DEVNOTIFY = RAWINPUTDEVICE_FLAGS(8192);

/// {@category enum}
extension type const RAW_INPUT_DATA_COMMAND_FLAGS(int _) implements int {}

const RID_HEADER = RAW_INPUT_DATA_COMMAND_FLAGS(268435461);

const RID_INPUT = RAW_INPUT_DATA_COMMAND_FLAGS(268435459);

/// {@category enum}
extension type const RAW_INPUT_DEVICE_INFO_COMMAND(int _) implements int {}

const RIDI_PREPARSEDDATA = RAW_INPUT_DEVICE_INFO_COMMAND(536870917);

const RIDI_DEVICENAME = RAW_INPUT_DEVICE_INFO_COMMAND(536870919);

const RIDI_DEVICEINFO = RAW_INPUT_DEVICE_INFO_COMMAND(536870923);

/// {@category enum}
extension type const REDRAW_WINDOW_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(REDRAW_WINDOW_FLAGS other) => _ & other._ == other._;

  REDRAW_WINDOW_FLAGS operator &(int other) => .new(_ & other);
  REDRAW_WINDOW_FLAGS operator |(int other) => .new(_ | other);
}

const RDW_INVALIDATE = REDRAW_WINDOW_FLAGS(1);

const RDW_INTERNALPAINT = REDRAW_WINDOW_FLAGS(2);

const RDW_ERASE = REDRAW_WINDOW_FLAGS(4);

const RDW_VALIDATE = REDRAW_WINDOW_FLAGS(8);

const RDW_NOINTERNALPAINT = REDRAW_WINDOW_FLAGS(16);

const RDW_NOERASE = REDRAW_WINDOW_FLAGS(32);

const RDW_NOCHILDREN = REDRAW_WINDOW_FLAGS(64);

const RDW_ALLCHILDREN = REDRAW_WINDOW_FLAGS(128);

const RDW_UPDATENOW = REDRAW_WINDOW_FLAGS(256);

const RDW_ERASENOW = REDRAW_WINDOW_FLAGS(512);

const RDW_FRAME = REDRAW_WINDOW_FLAGS(1024);

const RDW_NOFRAME = REDRAW_WINDOW_FLAGS(2048);

/// {@category enum}
extension type const REGISTER_NOTIFICATION_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(REGISTER_NOTIFICATION_FLAGS other) => _ & other._ == other._;

  REGISTER_NOTIFICATION_FLAGS operator &(int other) => .new(_ & other);
  REGISTER_NOTIFICATION_FLAGS operator |(int other) => .new(_ | other);
}

const DEVICE_NOTIFY_SERVICE_HANDLE = REGISTER_NOTIFICATION_FLAGS(1);

const DEVICE_NOTIFY_CALLBACK = REGISTER_NOTIFICATION_FLAGS(2);

const DEVICE_NOTIFY_WINDOW_HANDLE = REGISTER_NOTIFICATION_FLAGS(0);

const DEVICE_NOTIFY_ALL_INTERFACE_CLASSES = REGISTER_NOTIFICATION_FLAGS(4);

/// {@category enum}
extension type const REGISTER_TOUCH_WINDOW_FLAGS(int _) implements int {}

const TWF_FINETOUCH = REGISTER_TOUCH_WINDOW_FLAGS(1);

const TWF_WANTPALM = REGISTER_TOUCH_WINDOW_FLAGS(2);

/// {@category enum}
extension type const REG_CREATE_KEY_DISPOSITION(int _) implements int {}

const REG_CREATED_NEW_KEY = REG_CREATE_KEY_DISPOSITION(1);

const REG_OPENED_EXISTING_KEY = REG_CREATE_KEY_DISPOSITION(2);

/// {@category enum}
extension type const REG_NOTIFY_FILTER(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(REG_NOTIFY_FILTER other) => _ & other._ == other._;

  REG_NOTIFY_FILTER operator &(int other) => .new(_ & other);
  REG_NOTIFY_FILTER operator |(int other) => .new(_ | other);
}

const REG_NOTIFY_CHANGE_NAME = REG_NOTIFY_FILTER(1);

const REG_NOTIFY_CHANGE_ATTRIBUTES = REG_NOTIFY_FILTER(2);

const REG_NOTIFY_CHANGE_LAST_SET = REG_NOTIFY_FILTER(4);

const REG_NOTIFY_CHANGE_SECURITY = REG_NOTIFY_FILTER(8);

const REG_NOTIFY_THREAD_AGNOSTIC = REG_NOTIFY_FILTER(268435456);

/// {@category enum}
extension type const REG_OPEN_CREATE_OPTIONS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(REG_OPEN_CREATE_OPTIONS other) => _ & other._ == other._;

  REG_OPEN_CREATE_OPTIONS operator &(int other) => .new(_ & other);
  REG_OPEN_CREATE_OPTIONS operator |(int other) => .new(_ | other);
}

const REG_OPTION_RESERVED = REG_OPEN_CREATE_OPTIONS(0);

const REG_OPTION_NON_VOLATILE = REG_OPEN_CREATE_OPTIONS(0);

const REG_OPTION_VOLATILE = REG_OPEN_CREATE_OPTIONS(1);

const REG_OPTION_CREATE_LINK = REG_OPEN_CREATE_OPTIONS(2);

const REG_OPTION_BACKUP_RESTORE = REG_OPEN_CREATE_OPTIONS(4);

const REG_OPTION_OPEN_LINK = REG_OPEN_CREATE_OPTIONS(8);

const REG_OPTION_DONT_VIRTUALIZE = REG_OPEN_CREATE_OPTIONS(16);

/// {@category enum}
extension type const REG_RESTORE_KEY_FLAGS(int _) implements int {}

const REG_FORCE_RESTORE = REG_RESTORE_KEY_FLAGS(8);

const REG_WHOLE_HIVE_VOLATILE = REG_RESTORE_KEY_FLAGS(1);

/// {@category enum}
extension type const REG_ROUTINE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(REG_ROUTINE_FLAGS other) => _ & other._ == other._;

  REG_ROUTINE_FLAGS operator &(int other) => .new(_ & other);
  REG_ROUTINE_FLAGS operator |(int other) => .new(_ | other);
}

const RRF_RT_DWORD = REG_ROUTINE_FLAGS(24);

const RRF_RT_QWORD = REG_ROUTINE_FLAGS(72);

const RRF_RT_REG_NONE = REG_ROUTINE_FLAGS(1);

const RRF_RT_REG_SZ = REG_ROUTINE_FLAGS(2);

const RRF_RT_REG_EXPAND_SZ = REG_ROUTINE_FLAGS(4);

const RRF_RT_REG_BINARY = REG_ROUTINE_FLAGS(8);

const RRF_RT_REG_DWORD = REG_ROUTINE_FLAGS(16);

const RRF_RT_REG_MULTI_SZ = REG_ROUTINE_FLAGS(32);

const RRF_RT_REG_QWORD = REG_ROUTINE_FLAGS(64);

const RRF_RT_ANY = REG_ROUTINE_FLAGS(65535);

const RRF_SUBKEY_WOW6464KEY = REG_ROUTINE_FLAGS(65536);

const RRF_SUBKEY_WOW6432KEY = REG_ROUTINE_FLAGS(131072);

const RRF_WOW64_MASK = REG_ROUTINE_FLAGS(196608);

const RRF_NOEXPAND = REG_ROUTINE_FLAGS(268435456);

const RRF_ZEROONFAILURE = REG_ROUTINE_FLAGS(536870912);

/// {@category enum}
extension type const REG_SAM_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(REG_SAM_FLAGS other) => _ & other._ == other._;

  REG_SAM_FLAGS operator &(int other) => .new(_ & other);
  REG_SAM_FLAGS operator |(int other) => .new(_ | other);
}

const KEY_QUERY_VALUE = REG_SAM_FLAGS(1);

const KEY_SET_VALUE = REG_SAM_FLAGS(2);

const KEY_CREATE_SUB_KEY = REG_SAM_FLAGS(4);

const KEY_ENUMERATE_SUB_KEYS = REG_SAM_FLAGS(8);

const KEY_NOTIFY = REG_SAM_FLAGS(16);

const KEY_CREATE_LINK = REG_SAM_FLAGS(32);

const KEY_WOW64_32KEY = REG_SAM_FLAGS(512);

const KEY_WOW64_64KEY = REG_SAM_FLAGS(256);

const KEY_WOW64_RES = REG_SAM_FLAGS(768);

const KEY_READ = REG_SAM_FLAGS(131097);

const KEY_WRITE = REG_SAM_FLAGS(131078);

const KEY_EXECUTE = REG_SAM_FLAGS(131097);

const KEY_ALL_ACCESS = REG_SAM_FLAGS(983103);

/// {@category enum}
extension type const REG_SAVE_FORMAT(int _) implements int {}

const REG_STANDARD_FORMAT = REG_SAVE_FORMAT(1);

const REG_LATEST_FORMAT = REG_SAVE_FORMAT(2);

const REG_NO_COMPRESSION = REG_SAVE_FORMAT(4);

/// {@category enum}
extension type const REG_VALUE_TYPE(int _) implements int {}

const REG_NONE = REG_VALUE_TYPE(0);

const REG_SZ = REG_VALUE_TYPE(1);

const REG_EXPAND_SZ = REG_VALUE_TYPE(2);

const REG_BINARY = REG_VALUE_TYPE(3);

const REG_DWORD = REG_VALUE_TYPE(4);

const REG_DWORD_LITTLE_ENDIAN = REG_VALUE_TYPE(4);

const REG_DWORD_BIG_ENDIAN = REG_VALUE_TYPE(5);

const REG_LINK = REG_VALUE_TYPE(6);

const REG_MULTI_SZ = REG_VALUE_TYPE(7);

const REG_RESOURCE_LIST = REG_VALUE_TYPE(8);

const REG_FULL_RESOURCE_DESCRIPTOR = REG_VALUE_TYPE(9);

const REG_RESOURCE_REQUIREMENTS_LIST = REG_VALUE_TYPE(10);

const REG_QWORD = REG_VALUE_TYPE(11);

const REG_QWORD_LITTLE_ENDIAN = REG_VALUE_TYPE(11);

/// {@category enum}
extension type const RESTOREBUTTONSTATES(int _) implements int {}

const RBS_NORMAL = RESTOREBUTTONSTATES(1);

const RBS_HOT = RESTOREBUTTONSTATES(2);

const RBS_PUSHED = RESTOREBUTTONSTATES(3);

const RBS_DISABLED = RESTOREBUTTONSTATES(4);

/// {@category enum}
extension type const RGN_COMBINE_MODE(int _) implements int {}

const RGN_AND = RGN_COMBINE_MODE(1);

const RGN_OR = RGN_COMBINE_MODE(2);

const RGN_XOR = RGN_COMBINE_MODE(3);

const RGN_DIFF = RGN_COMBINE_MODE(4);

const RGN_COPY = RGN_COMBINE_MODE(5);

const RGN_MIN = RGN_COMBINE_MODE(1);

const RGN_MAX = RGN_COMBINE_MODE(5);

/// {@category enum}
extension type const RID_DEVICE_INFO_TYPE(int _) implements int {}

const RIM_TYPEMOUSE = RID_DEVICE_INFO_TYPE(0);

const RIM_TYPEKEYBOARD = RID_DEVICE_INFO_TYPE(1);

const RIM_TYPEHID = RID_DEVICE_INFO_TYPE(2);

/// {@category enum}
extension type const ROP_CODE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ROP_CODE other) => _ & other._ == other._;

  ROP_CODE operator &(int other) => .new(_ & other);
  ROP_CODE operator |(int other) => .new(_ | other);
}

const BLACKNESS = ROP_CODE(66);

const NOTSRCERASE = ROP_CODE(1114278);

const NOTSRCCOPY = ROP_CODE(3342344);

const SRCERASE = ROP_CODE(4457256);

const DSTINVERT = ROP_CODE(5570569);

const PATINVERT = ROP_CODE(5898313);

const SRCINVERT = ROP_CODE(6684742);

const SRCAND = ROP_CODE(8913094);

const MERGEPAINT = ROP_CODE(12255782);

const MERGECOPY = ROP_CODE(12583114);

const SRCCOPY = ROP_CODE(13369376);

const SRCPAINT = ROP_CODE(15597702);

const PATCOPY = ROP_CODE(15728673);

const PATPAINT = ROP_CODE(16452105);

const WHITENESS = ROP_CODE(16711778);

const CAPTUREBLT = ROP_CODE(1073741824);

const NOMIRRORBITMAP = ROP_CODE(2147483648);

/// {@category enum}
extension type const ROT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(ROT_FLAGS other) => _ & other._ == other._;

  ROT_FLAGS operator &(int other) => .new(_ & other);
  ROT_FLAGS operator |(int other) => .new(_ | other);
}

const ROTFLAGS_REGISTRATIONKEEPSALIVE = ROT_FLAGS(1);

const ROTFLAGS_ALLOWANYCLIENT = ROT_FLAGS(2);

/// Determines the concurrency model used for incoming calls to the objects
/// created by this thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/roapi/ne-roapi-ro_init_type>.
///
/// {@category enum}
extension type const RO_INIT_TYPE(int _) implements int {}

const RO_INIT_SINGLETHREADED = RO_INIT_TYPE(0);

/// Initializes the thread for multi-threaded concurrency.
const RO_INIT_MULTITHREADED = RO_INIT_TYPE(1);

/// {@category enum}
extension type const RPC_C_AUTHN_LEVEL(int _) implements int {}

const RPC_C_AUTHN_LEVEL_DEFAULT = RPC_C_AUTHN_LEVEL(0);

const RPC_C_AUTHN_LEVEL_NONE = RPC_C_AUTHN_LEVEL(1);

const RPC_C_AUTHN_LEVEL_CONNECT = RPC_C_AUTHN_LEVEL(2);

const RPC_C_AUTHN_LEVEL_CALL = RPC_C_AUTHN_LEVEL(3);

const RPC_C_AUTHN_LEVEL_PKT = RPC_C_AUTHN_LEVEL(4);

const RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = RPC_C_AUTHN_LEVEL(5);

const RPC_C_AUTHN_LEVEL_PKT_PRIVACY = RPC_C_AUTHN_LEVEL(6);

/// {@category enum}
extension type const RPC_C_IMP_LEVEL(int _) implements int {}

const RPC_C_IMP_LEVEL_DEFAULT = RPC_C_IMP_LEVEL(0);

const RPC_C_IMP_LEVEL_ANONYMOUS = RPC_C_IMP_LEVEL(1);

const RPC_C_IMP_LEVEL_IDENTIFY = RPC_C_IMP_LEVEL(2);

const RPC_C_IMP_LEVEL_IMPERSONATE = RPC_C_IMP_LEVEL(3);

const RPC_C_IMP_LEVEL_DELEGATE = RPC_C_IMP_LEVEL(4);

const RPC_S_OK = RPC_STATUS(0);

const RPC_S_ACCESS_DENIED = RPC_STATUS(5);

const RPC_S_INVALID_ARG = RPC_STATUS(87);

const RPC_S_OUT_OF_MEMORY = RPC_STATUS(14);

const RPC_S_OUT_OF_THREADS = RPC_STATUS(164);

const RPC_S_INVALID_LEVEL = RPC_STATUS(87);

const RPC_S_BUFFER_TOO_SMALL = RPC_STATUS(122);

const RPC_S_INVALID_SECURITY_DESC = RPC_STATUS(1338);

const RPC_S_SERVER_OUT_OF_MEMORY = RPC_STATUS(1130);

const RPC_S_ASYNC_CALL_PENDING = RPC_STATUS(997);

const RPC_S_UNKNOWN_PRINCIPAL = RPC_STATUS(1332);

const RPC_S_TIMEOUT = RPC_STATUS(1460);

const RPC_S_RUNTIME_UNINITIALIZED = RPC_STATUS(1);

const RPC_S_NOT_ENOUGH_QUOTA = RPC_STATUS(1816);

const RPC_S_INVALID_STRING_BINDING = RPC_STATUS(1700);

const RPC_S_WRONG_KIND_OF_BINDING = RPC_STATUS(1701);

const RPC_S_INVALID_BINDING = RPC_STATUS(1702);

const RPC_S_PROTSEQ_NOT_SUPPORTED = RPC_STATUS(1703);

const RPC_S_INVALID_RPC_PROTSEQ = RPC_STATUS(1704);

const RPC_S_INVALID_STRING_UUID = RPC_STATUS(1705);

const RPC_S_INVALID_ENDPOINT_FORMAT = RPC_STATUS(1706);

const RPC_S_INVALID_NET_ADDR = RPC_STATUS(1707);

const RPC_S_NO_ENDPOINT_FOUND = RPC_STATUS(1708);

const RPC_S_INVALID_TIMEOUT = RPC_STATUS(1709);

const RPC_S_OBJECT_NOT_FOUND = RPC_STATUS(1710);

const RPC_S_ALREADY_REGISTERED = RPC_STATUS(1711);

const RPC_S_TYPE_ALREADY_REGISTERED = RPC_STATUS(1712);

const RPC_S_ALREADY_LISTENING = RPC_STATUS(1713);

const RPC_S_NO_PROTSEQS_REGISTERED = RPC_STATUS(1714);

const RPC_S_NOT_LISTENING = RPC_STATUS(1715);

const RPC_S_UNKNOWN_MGR_TYPE = RPC_STATUS(1716);

const RPC_S_UNKNOWN_IF = RPC_STATUS(1717);

const RPC_S_NO_BINDINGS = RPC_STATUS(1718);

const RPC_S_NO_PROTSEQS = RPC_STATUS(1719);

const RPC_S_CANT_CREATE_ENDPOINT = RPC_STATUS(1720);

const RPC_S_OUT_OF_RESOURCES = RPC_STATUS(1721);

const RPC_S_SERVER_UNAVAILABLE = RPC_STATUS(1722);

const RPC_S_SERVER_TOO_BUSY = RPC_STATUS(1723);

const RPC_S_INVALID_NETWORK_OPTIONS = RPC_STATUS(1724);

const RPC_S_NO_CALL_ACTIVE = RPC_STATUS(1725);

const RPC_S_CALL_FAILED = RPC_STATUS(1726);

const RPC_S_CALL_FAILED_DNE = RPC_STATUS(1727);

const RPC_S_PROTOCOL_ERROR = RPC_STATUS(1728);

const RPC_S_PROXY_ACCESS_DENIED = RPC_STATUS(1729);

const RPC_S_UNSUPPORTED_TRANS_SYN = RPC_STATUS(1730);

const RPC_S_UNSUPPORTED_TYPE = RPC_STATUS(1732);

const RPC_S_INVALID_TAG = RPC_STATUS(1733);

const RPC_S_INVALID_BOUND = RPC_STATUS(1734);

const RPC_S_NO_ENTRY_NAME = RPC_STATUS(1735);

const RPC_S_INVALID_NAME_SYNTAX = RPC_STATUS(1736);

const RPC_S_UNSUPPORTED_NAME_SYNTAX = RPC_STATUS(1737);

const RPC_S_UUID_NO_ADDRESS = RPC_STATUS(1739);

const RPC_S_DUPLICATE_ENDPOINT = RPC_STATUS(1740);

const RPC_S_UNKNOWN_AUTHN_TYPE = RPC_STATUS(1741);

const RPC_S_MAX_CALLS_TOO_SMALL = RPC_STATUS(1742);

const RPC_S_STRING_TOO_LONG = RPC_STATUS(1743);

const RPC_S_PROTSEQ_NOT_FOUND = RPC_STATUS(1744);

const RPC_S_PROCNUM_OUT_OF_RANGE = RPC_STATUS(1745);

const RPC_S_BINDING_HAS_NO_AUTH = RPC_STATUS(1746);

const RPC_S_UNKNOWN_AUTHN_SERVICE = RPC_STATUS(1747);

const RPC_S_UNKNOWN_AUTHN_LEVEL = RPC_STATUS(1748);

const RPC_S_INVALID_AUTH_IDENTITY = RPC_STATUS(1749);

const RPC_S_UNKNOWN_AUTHZ_SERVICE = RPC_STATUS(1750);

const EPT_S_INVALID_ENTRY = RPC_STATUS(1751);

const EPT_S_CANT_PERFORM_OP = RPC_STATUS(1752);

const EPT_S_NOT_REGISTERED = RPC_STATUS(1753);

const RPC_S_NOTHING_TO_EXPORT = RPC_STATUS(1754);

const RPC_S_INCOMPLETE_NAME = RPC_STATUS(1755);

const RPC_S_INVALID_VERS_OPTION = RPC_STATUS(1756);

const RPC_S_NO_MORE_MEMBERS = RPC_STATUS(1757);

const RPC_S_NOT_ALL_OBJS_UNEXPORTED = RPC_STATUS(1758);

const RPC_S_INTERFACE_NOT_FOUND = RPC_STATUS(1759);

const RPC_S_ENTRY_ALREADY_EXISTS = RPC_STATUS(1760);

const RPC_S_ENTRY_NOT_FOUND = RPC_STATUS(1761);

const RPC_S_NAME_SERVICE_UNAVAILABLE = RPC_STATUS(1762);

const RPC_S_INVALID_NAF_ID = RPC_STATUS(1763);

const RPC_S_CANNOT_SUPPORT = RPC_STATUS(1764);

const RPC_S_NO_CONTEXT_AVAILABLE = RPC_STATUS(1765);

const RPC_S_INTERNAL_ERROR = RPC_STATUS(1766);

const RPC_S_ZERO_DIVIDE = RPC_STATUS(1767);

const RPC_S_ADDRESS_ERROR = RPC_STATUS(1768);

const RPC_S_FP_DIV_ZERO = RPC_STATUS(1769);

const RPC_S_FP_UNDERFLOW = RPC_STATUS(1770);

const RPC_S_FP_OVERFLOW = RPC_STATUS(1771);

const RPC_S_CALL_IN_PROGRESS = RPC_STATUS(1791);

const RPC_S_NO_MORE_BINDINGS = RPC_STATUS(1806);

const RPC_S_NO_INTERFACES = RPC_STATUS(1817);

const RPC_S_CALL_CANCELLED = RPC_STATUS(1818);

const RPC_S_BINDING_INCOMPLETE = RPC_STATUS(1819);

const RPC_S_COMM_FAILURE = RPC_STATUS(1820);

const RPC_S_UNSUPPORTED_AUTHN_LEVEL = RPC_STATUS(1821);

const RPC_S_NO_PRINC_NAME = RPC_STATUS(1822);

const RPC_S_NOT_RPC_ERROR = RPC_STATUS(1823);

const RPC_S_UUID_LOCAL_ONLY = RPC_STATUS(1824);

const RPC_S_SEC_PKG_ERROR = RPC_STATUS(1825);

const RPC_S_NOT_CANCELLED = RPC_STATUS(1826);

const RPC_S_COOKIE_AUTH_FAILED = RPC_STATUS(1833);

const RPC_S_DO_NOT_DISTURB = RPC_STATUS(1834);

const RPC_S_SYSTEM_HANDLE_COUNT_EXCEEDED = RPC_STATUS(1835);

const RPC_S_SYSTEM_HANDLE_TYPE_MISMATCH = RPC_STATUS(1836);

const RPC_S_GROUP_MEMBER_NOT_FOUND = RPC_STATUS(1898);

const EPT_S_CANT_CREATE = RPC_STATUS(1899);

const RPC_S_INVALID_OBJECT = RPC_STATUS(1900);

const RPC_S_SEND_INCOMPLETE = RPC_STATUS(1913);

const RPC_S_INVALID_ASYNC_HANDLE = RPC_STATUS(1914);

const RPC_S_INVALID_ASYNC_CALL = RPC_STATUS(1915);

const RPC_S_ENTRY_TYPE_MISMATCH = RPC_STATUS(1922);

const RPC_S_NOT_ALL_OBJS_EXPORTED = RPC_STATUS(1923);

const RPC_S_INTERFACE_NOT_EXPORTED = RPC_STATUS(1924);

const RPC_S_PROFILE_NOT_ADDED = RPC_STATUS(1925);

const RPC_S_PRF_ELT_NOT_ADDED = RPC_STATUS(1926);

const RPC_S_PRF_ELT_NOT_REMOVED = RPC_STATUS(1927);

const RPC_S_GRP_ELT_NOT_ADDED = RPC_STATUS(1928);

const RPC_S_GRP_ELT_NOT_REMOVED = RPC_STATUS(1929);

/// Contains values that specify whether data in a table should be read
/// primarily by row or by column.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-roworcolumnmajor>.
///
/// {@category enum}
extension type const RowOrColumnMajor(int _) implements int {}

/// Data in the table should be read row by row.
const RowOrColumnMajor_RowMajor = RowOrColumnMajor(0);

/// Data in the table should be read column by column.
const RowOrColumnMajor_ColumnMajor = RowOrColumnMajor(1);

/// The best way to present the data is indeterminate.
const RowOrColumnMajor_Indeterminate = RowOrColumnMajor(2);

/// {@category enum}
extension type const SCARD_SCOPE(int _) implements int {}

const SCARD_SCOPE_USER = SCARD_SCOPE(0);

const SCARD_SCOPE_SYSTEM = SCARD_SCOPE(2);

/// {@category enum}
extension type const SCARD_STATE(int _) implements int {}

const SCARD_STATE_UNAWARE = SCARD_STATE(0);

const SCARD_STATE_IGNORE = SCARD_STATE(1);

const SCARD_STATE_UNAVAILABLE = SCARD_STATE(8);

const SCARD_STATE_EMPTY = SCARD_STATE(16);

const SCARD_STATE_PRESENT = SCARD_STATE(32);

const SCARD_STATE_ATRMATCH = SCARD_STATE(64);

const SCARD_STATE_EXCLUSIVE = SCARD_STATE(128);

const SCARD_STATE_INUSE = SCARD_STATE(256);

const SCARD_STATE_MUTE = SCARD_STATE(512);

const SCARD_STATE_CHANGED = SCARD_STATE(2);

const SCARD_STATE_UNKNOWN = SCARD_STATE(4);

/// {@category enum}
extension type const SCROLLBAR_COMMAND(int _) implements int {}

const SB_LINEUP = SCROLLBAR_COMMAND(0);

const SB_LINELEFT = SCROLLBAR_COMMAND(0);

const SB_LINEDOWN = SCROLLBAR_COMMAND(1);

const SB_LINERIGHT = SCROLLBAR_COMMAND(1);

const SB_PAGEUP = SCROLLBAR_COMMAND(2);

const SB_PAGELEFT = SCROLLBAR_COMMAND(2);

const SB_PAGEDOWN = SCROLLBAR_COMMAND(3);

const SB_PAGERIGHT = SCROLLBAR_COMMAND(3);

const SB_THUMBPOSITION = SCROLLBAR_COMMAND(4);

const SB_THUMBTRACK = SCROLLBAR_COMMAND(5);

const SB_TOP = SCROLLBAR_COMMAND(6);

const SB_LEFT = SCROLLBAR_COMMAND(6);

const SB_RIGHT = SCROLLBAR_COMMAND(7);

const SB_BOTTOM = SCROLLBAR_COMMAND(7);

const SB_ENDSCROLL = SCROLLBAR_COMMAND(8);

/// {@category enum}
extension type const SCROLLBAR_CONSTANTS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SCROLLBAR_CONSTANTS other) => _ & other._ == other._;

  SCROLLBAR_CONSTANTS operator &(int other) => .new(_ & other);
  SCROLLBAR_CONSTANTS operator |(int other) => .new(_ | other);
}

const SB_CTL = SCROLLBAR_CONSTANTS(2);

const SB_HORZ = SCROLLBAR_CONSTANTS(0);

const SB_VERT = SCROLLBAR_CONSTANTS(1);

const SB_BOTH = SCROLLBAR_CONSTANTS(3);

/// {@category enum}
extension type const SCROLLINFO_MASK(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SCROLLINFO_MASK other) => _ & other._ == other._;

  SCROLLINFO_MASK operator &(int other) => .new(_ & other);
  SCROLLINFO_MASK operator |(int other) => .new(_ | other);
}

const SIF_ALL = SCROLLINFO_MASK(23);

const SIF_DISABLENOSCROLL = SCROLLINFO_MASK(8);

const SIF_PAGE = SCROLLINFO_MASK(2);

const SIF_POS = SCROLLINFO_MASK(4);

const SIF_RANGE = SCROLLINFO_MASK(1);

const SIF_TRACKPOS = SCROLLINFO_MASK(16);

/// {@category enum}
extension type const SCROLL_WINDOW_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SCROLL_WINDOW_FLAGS other) => _ & other._ == other._;

  SCROLL_WINDOW_FLAGS operator &(int other) => .new(_ & other);
  SCROLL_WINDOW_FLAGS operator |(int other) => .new(_ | other);
}

const SW_SCROLLCHILDREN = SCROLL_WINDOW_FLAGS(1);

const SW_INVALIDATE = SCROLL_WINDOW_FLAGS(2);

const SW_ERASE = SCROLL_WINDOW_FLAGS(4);

const SW_SMOOTHSCROLL = SCROLL_WINDOW_FLAGS(16);

/// {@category enum}
extension type const SC_ACTION_TYPE(int _) implements int {}

const SC_ACTION_NONE = SC_ACTION_TYPE(0);

const SC_ACTION_RESTART = SC_ACTION_TYPE(1);

const SC_ACTION_REBOOT = SC_ACTION_TYPE(2);

const SC_ACTION_RUN_COMMAND = SC_ACTION_TYPE(3);

const SC_ACTION_OWN_RESTART = SC_ACTION_TYPE(4);

/// {@category enum}
extension type const SC_ENUM_TYPE(int _) implements int {}

const SC_ENUM_PROCESS_INFO = SC_ENUM_TYPE(0);

/// {@category enum}
extension type const SC_STATUS_TYPE(int _) implements int {}

const SC_STATUS_PROCESS_INFO = SC_STATUS_TYPE(0);

/// {@category enum}
extension type const SDP_SPECIFICTYPE(int _) implements int {}

const SDP_ST_NONE = SDP_SPECIFICTYPE(0);

const SDP_ST_UINT8 = SDP_SPECIFICTYPE(16);

const SDP_ST_UINT16 = SDP_SPECIFICTYPE(272);

const SDP_ST_UINT32 = SDP_SPECIFICTYPE(528);

const SDP_ST_UINT64 = SDP_SPECIFICTYPE(784);

const SDP_ST_UINT128 = SDP_SPECIFICTYPE(1040);

const SDP_ST_INT8 = SDP_SPECIFICTYPE(32);

const SDP_ST_INT16 = SDP_SPECIFICTYPE(288);

const SDP_ST_INT32 = SDP_SPECIFICTYPE(544);

const SDP_ST_INT64 = SDP_SPECIFICTYPE(800);

const SDP_ST_INT128 = SDP_SPECIFICTYPE(1056);

const SDP_ST_UUID16 = SDP_SPECIFICTYPE(304);

const SDP_ST_UUID32 = SDP_SPECIFICTYPE(544);

const SDP_ST_UUID128 = SDP_SPECIFICTYPE(1072);

/// {@category enum}
extension type const SDP_TYPE(int _) implements int {}

const SDP_TYPE_NIL = SDP_TYPE(0);

const SDP_TYPE_UINT = SDP_TYPE(1);

const SDP_TYPE_INT = SDP_TYPE(2);

const SDP_TYPE_UUID = SDP_TYPE(3);

const SDP_TYPE_STRING = SDP_TYPE(4);

const SDP_TYPE_BOOLEAN = SDP_TYPE(5);

const SDP_TYPE_SEQUENCE = SDP_TYPE(6);

const SDP_TYPE_ALTERNATIVE = SDP_TYPE(7);

const SDP_TYPE_URL = SDP_TYPE(8);

const SDP_TYPE_CONTAINER = SDP_TYPE(32);

/// {@category enum}
extension type const SECURITY_DESCRIPTOR_CONTROL(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SECURITY_DESCRIPTOR_CONTROL other) => _ & other._ == other._;

  SECURITY_DESCRIPTOR_CONTROL operator &(int other) => .new(_ & other);
  SECURITY_DESCRIPTOR_CONTROL operator |(int other) => .new(_ | other);
}

const SE_OWNER_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(1);

const SE_GROUP_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(2);

const SE_DACL_PRESENT = SECURITY_DESCRIPTOR_CONTROL(4);

const SE_DACL_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(8);

const SE_SACL_PRESENT = SECURITY_DESCRIPTOR_CONTROL(16);

const SE_SACL_DEFAULTED = SECURITY_DESCRIPTOR_CONTROL(32);

const SE_DACL_AUTO_INHERIT_REQ = SECURITY_DESCRIPTOR_CONTROL(256);

const SE_SACL_AUTO_INHERIT_REQ = SECURITY_DESCRIPTOR_CONTROL(512);

const SE_DACL_AUTO_INHERITED = SECURITY_DESCRIPTOR_CONTROL(1024);

const SE_SACL_AUTO_INHERITED = SECURITY_DESCRIPTOR_CONTROL(2048);

const SE_DACL_PROTECTED = SECURITY_DESCRIPTOR_CONTROL(4096);

const SE_SACL_PROTECTED = SECURITY_DESCRIPTOR_CONTROL(8192);

const SE_RM_CONTROL_VALID = SECURITY_DESCRIPTOR_CONTROL(16384);

const SE_SELF_RELATIVE = SECURITY_DESCRIPTOR_CONTROL(32768);

/// {@category enum}
extension type const SEND_MESSAGE_TIMEOUT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SEND_MESSAGE_TIMEOUT_FLAGS other) => _ & other._ == other._;

  SEND_MESSAGE_TIMEOUT_FLAGS operator &(int other) => .new(_ & other);
  SEND_MESSAGE_TIMEOUT_FLAGS operator |(int other) => .new(_ | other);
}

const SMTO_ABORTIFHUNG = SEND_MESSAGE_TIMEOUT_FLAGS(2);

const SMTO_BLOCK = SEND_MESSAGE_TIMEOUT_FLAGS(1);

const SMTO_NORMAL = SEND_MESSAGE_TIMEOUT_FLAGS(0);

const SMTO_NOTIMEOUTIFNOTHUNG = SEND_MESSAGE_TIMEOUT_FLAGS(8);

const SMTO_ERRORONEXIT = SEND_MESSAGE_TIMEOUT_FLAGS(32);

/// {@category enum}
extension type const SEND_RECV_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SEND_RECV_FLAGS other) => _ & other._ == other._;

  SEND_RECV_FLAGS operator &(int other) => .new(_ & other);
  SEND_RECV_FLAGS operator |(int other) => .new(_ | other);
}

const MSG_OOB = SEND_RECV_FLAGS(1);

const MSG_PEEK = SEND_RECV_FLAGS(2);

const MSG_DONTROUTE = SEND_RECV_FLAGS(4);

const MSG_WAITALL = SEND_RECV_FLAGS(8);

const MSG_PUSH_IMMEDIATE = SEND_RECV_FLAGS(32);

/// {@category enum}
extension type const SERVICE_CONFIG(int _) implements int {}

const SERVICE_CONFIG_DELAYED_AUTO_START_INFO = SERVICE_CONFIG(3);

const SERVICE_CONFIG_DESCRIPTION = SERVICE_CONFIG(1);

const SERVICE_CONFIG_FAILURE_ACTIONS = SERVICE_CONFIG(2);

const SERVICE_CONFIG_FAILURE_ACTIONS_FLAG = SERVICE_CONFIG(4);

const SERVICE_CONFIG_PREFERRED_NODE = SERVICE_CONFIG(9);

const SERVICE_CONFIG_PRESHUTDOWN_INFO = SERVICE_CONFIG(7);

const SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO = SERVICE_CONFIG(6);

const SERVICE_CONFIG_SERVICE_SID_INFO = SERVICE_CONFIG(5);

const SERVICE_CONFIG_TRIGGER_INFO = SERVICE_CONFIG(8);

const SERVICE_CONFIG_LAUNCH_PROTECTED = SERVICE_CONFIG(12);

/// Specifies the type of a per-service directory path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_directory_type>.
///
/// {@category enum}
extension type const SERVICE_DIRECTORY_TYPE(int _) implements int {}

/// Mutable, persistent service state.
const ServiceDirectoryPersistentState = SERVICE_DIRECTORY_TYPE(0);

/// Reserved.
const ServiceDirectoryTypeMax = SERVICE_DIRECTORY_TYPE(1);

/// {@category enum}
extension type const SERVICE_ERROR(int _) implements int {}

const SERVICE_ERROR_CRITICAL = SERVICE_ERROR(3);

const SERVICE_ERROR_IGNORE = SERVICE_ERROR(0);

const SERVICE_ERROR_NORMAL = SERVICE_ERROR(1);

const SERVICE_ERROR_SEVERE = SERVICE_ERROR(2);

/// {@category enum}
extension type const SERVICE_NOTIFY(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SERVICE_NOTIFY other) => _ & other._ == other._;

  SERVICE_NOTIFY operator &(int other) => .new(_ & other);
  SERVICE_NOTIFY operator |(int other) => .new(_ | other);
}

const SERVICE_NOTIFY_CREATED = SERVICE_NOTIFY(128);

const SERVICE_NOTIFY_CONTINUE_PENDING = SERVICE_NOTIFY(16);

const SERVICE_NOTIFY_DELETE_PENDING = SERVICE_NOTIFY(512);

const SERVICE_NOTIFY_DELETED = SERVICE_NOTIFY(256);

const SERVICE_NOTIFY_PAUSE_PENDING = SERVICE_NOTIFY(32);

const SERVICE_NOTIFY_PAUSED = SERVICE_NOTIFY(64);

const SERVICE_NOTIFY_RUNNING = SERVICE_NOTIFY(8);

const SERVICE_NOTIFY_START_PENDING = SERVICE_NOTIFY(2);

const SERVICE_NOTIFY_STOP_PENDING = SERVICE_NOTIFY(4);

const SERVICE_NOTIFY_STOPPED = SERVICE_NOTIFY(1);

/// Specifies a state type for a service registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_registry_state_type>.
///
/// {@category enum}
extension type const SERVICE_REGISTRY_STATE_TYPE(int _) implements int {}

/// Immutable service state, populated by INF to the Parameters subkey.
const ServiceRegistryStateParameters = SERVICE_REGISTRY_STATE_TYPE(0);

/// Mutable, persistent service state.
const ServiceRegistryStatePersistent = SERVICE_REGISTRY_STATE_TYPE(1);

/// Reserved.
const MaxServiceRegistryStateType = SERVICE_REGISTRY_STATE_TYPE(2);

/// {@category enum}
extension type const SERVICE_RUNS_IN_PROCESS(int _) implements int {}

const SERVICE_RUNS_IN_NON_SYSTEM_OR_NOT_RUNNING = SERVICE_RUNS_IN_PROCESS(0);

const SERVICE_RUNS_IN_SYSTEM_PROCESS = SERVICE_RUNS_IN_PROCESS(1);

/// Specifies the type of a per-service shared directory path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_shared_directory_type>.
///
/// {@category enum}
extension type const SERVICE_SHARED_DIRECTORY_TYPE(int _) implements int {}

/// Mutable, persistent service state.
const ServiceSharedDirectoryPersistentState = SERVICE_SHARED_DIRECTORY_TYPE(0);

/// Specifies a state type for a service registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/ne-winsvc-service_shared_registry_state_type>.
///
/// {@category enum}
extension type const SERVICE_SHARED_REGISTRY_STATE_TYPE(int _) implements int {}

/// Mutable, persistent service state.
const ServiceSharedRegistryPersistentState = SERVICE_SHARED_REGISTRY_STATE_TYPE(
  0,
);

/// {@category enum}
extension type const SERVICE_START_TYPE(int _) implements int {}

const SERVICE_AUTO_START = SERVICE_START_TYPE(2);

const SERVICE_BOOT_START = SERVICE_START_TYPE(0);

const SERVICE_DEMAND_START = SERVICE_START_TYPE(3);

const SERVICE_DISABLED = SERVICE_START_TYPE(4);

const SERVICE_SYSTEM_START = SERVICE_START_TYPE(1);

/// {@category enum}
extension type const SERVICE_STATUS_CURRENT_STATE(int _) implements int {}

const SERVICE_CONTINUE_PENDING = SERVICE_STATUS_CURRENT_STATE(5);

const SERVICE_PAUSE_PENDING = SERVICE_STATUS_CURRENT_STATE(6);

const SERVICE_PAUSED = SERVICE_STATUS_CURRENT_STATE(7);

const SERVICE_RUNNING = SERVICE_STATUS_CURRENT_STATE(4);

const SERVICE_START_PENDING = SERVICE_STATUS_CURRENT_STATE(2);

const SERVICE_STOP_PENDING = SERVICE_STATUS_CURRENT_STATE(3);

const SERVICE_STOPPED = SERVICE_STATUS_CURRENT_STATE(1);

/// {@category enum}
extension type const SERVICE_TRIGGER_ACTION(int _) implements int {}

const SERVICE_TRIGGER_ACTION_SERVICE_START = SERVICE_TRIGGER_ACTION(1);

const SERVICE_TRIGGER_ACTION_SERVICE_STOP = SERVICE_TRIGGER_ACTION(2);

/// {@category enum}
extension type const SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(int _)
    implements int {}

const SERVICE_TRIGGER_DATA_TYPE_BINARY =
    SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(1);

const SERVICE_TRIGGER_DATA_TYPE_STRING =
    SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(2);

const SERVICE_TRIGGER_DATA_TYPE_LEVEL =
    SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(3);

const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ANY =
    SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(4);

const SERVICE_TRIGGER_DATA_TYPE_KEYWORD_ALL =
    SERVICE_TRIGGER_SPECIFIC_DATA_ITEM_DATA_TYPE(5);

/// {@category enum}
extension type const SERVICE_TRIGGER_TYPE(int _) implements int {}

const SERVICE_TRIGGER_TYPE_CUSTOM = SERVICE_TRIGGER_TYPE(20);

const SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL = SERVICE_TRIGGER_TYPE(1);

const SERVICE_TRIGGER_TYPE_DOMAIN_JOIN = SERVICE_TRIGGER_TYPE(3);

const SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT = SERVICE_TRIGGER_TYPE(4);

const SERVICE_TRIGGER_TYPE_GROUP_POLICY = SERVICE_TRIGGER_TYPE(5);

const SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY = SERVICE_TRIGGER_TYPE(2);

const SERVICE_TRIGGER_TYPE_NETWORK_ENDPOINT = SERVICE_TRIGGER_TYPE(6);

/// {@category enum}
extension type const SETUP_DI_GET_CLASS_DEVS_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SETUP_DI_GET_CLASS_DEVS_FLAGS other) => _ & other._ == other._;

  SETUP_DI_GET_CLASS_DEVS_FLAGS operator &(int other) => .new(_ & other);
  SETUP_DI_GET_CLASS_DEVS_FLAGS operator |(int other) => .new(_ | other);
}

const DIGCF_DEFAULT = SETUP_DI_GET_CLASS_DEVS_FLAGS(1);

const DIGCF_PRESENT = SETUP_DI_GET_CLASS_DEVS_FLAGS(2);

const DIGCF_ALLCLASSES = SETUP_DI_GET_CLASS_DEVS_FLAGS(4);

const DIGCF_PROFILE = SETUP_DI_GET_CLASS_DEVS_FLAGS(8);

const DIGCF_DEVICEINTERFACE = SETUP_DI_GET_CLASS_DEVS_FLAGS(16);

const DIGCF_INTERFACEDEVICE = SETUP_DI_GET_CLASS_DEVS_FLAGS(16);

/// {@category enum}
extension type const SETUP_DI_PROPERTY_CHANGE_SCOPE(int _) implements int {}

const DICS_FLAG_GLOBAL = SETUP_DI_PROPERTY_CHANGE_SCOPE(1);

const DICS_FLAG_CONFIGSPECIFIC = SETUP_DI_PROPERTY_CHANGE_SCOPE(2);

const DICS_FLAG_CONFIGGENERAL = SETUP_DI_PROPERTY_CHANGE_SCOPE(4);

/// {@category enum}
extension type const SETUP_DI_REGISTRY_PROPERTY(int _) implements int {}

const SPDRP_DEVICEDESC = SETUP_DI_REGISTRY_PROPERTY(0);

const SPDRP_HARDWAREID = SETUP_DI_REGISTRY_PROPERTY(1);

const SPDRP_COMPATIBLEIDS = SETUP_DI_REGISTRY_PROPERTY(2);

const SPDRP_UNUSED0 = SETUP_DI_REGISTRY_PROPERTY(3);

const SPDRP_SERVICE = SETUP_DI_REGISTRY_PROPERTY(4);

const SPDRP_UNUSED1 = SETUP_DI_REGISTRY_PROPERTY(5);

const SPDRP_UNUSED2 = SETUP_DI_REGISTRY_PROPERTY(6);

const SPDRP_CLASS = SETUP_DI_REGISTRY_PROPERTY(7);

const SPDRP_CLASSGUID = SETUP_DI_REGISTRY_PROPERTY(8);

const SPDRP_DRIVER = SETUP_DI_REGISTRY_PROPERTY(9);

const SPDRP_CONFIGFLAGS = SETUP_DI_REGISTRY_PROPERTY(10);

const SPDRP_MFG = SETUP_DI_REGISTRY_PROPERTY(11);

const SPDRP_FRIENDLYNAME = SETUP_DI_REGISTRY_PROPERTY(12);

const SPDRP_LOCATION_INFORMATION = SETUP_DI_REGISTRY_PROPERTY(13);

const SPDRP_PHYSICAL_DEVICE_OBJECT_NAME = SETUP_DI_REGISTRY_PROPERTY(14);

const SPDRP_CAPABILITIES = SETUP_DI_REGISTRY_PROPERTY(15);

const SPDRP_UI_NUMBER = SETUP_DI_REGISTRY_PROPERTY(16);

const SPDRP_UPPERFILTERS = SETUP_DI_REGISTRY_PROPERTY(17);

const SPDRP_LOWERFILTERS = SETUP_DI_REGISTRY_PROPERTY(18);

const SPDRP_BUSTYPEGUID = SETUP_DI_REGISTRY_PROPERTY(19);

const SPDRP_LEGACYBUSTYPE = SETUP_DI_REGISTRY_PROPERTY(20);

const SPDRP_BUSNUMBER = SETUP_DI_REGISTRY_PROPERTY(21);

const SPDRP_ENUMERATOR_NAME = SETUP_DI_REGISTRY_PROPERTY(22);

const SPDRP_SECURITY = SETUP_DI_REGISTRY_PROPERTY(23);

const SPDRP_SECURITY_SDS = SETUP_DI_REGISTRY_PROPERTY(24);

const SPDRP_DEVTYPE = SETUP_DI_REGISTRY_PROPERTY(25);

const SPDRP_EXCLUSIVE = SETUP_DI_REGISTRY_PROPERTY(26);

const SPDRP_CHARACTERISTICS = SETUP_DI_REGISTRY_PROPERTY(27);

const SPDRP_ADDRESS = SETUP_DI_REGISTRY_PROPERTY(28);

const SPDRP_UI_NUMBER_DESC_FORMAT = SETUP_DI_REGISTRY_PROPERTY(29);

const SPDRP_DEVICE_POWER_DATA = SETUP_DI_REGISTRY_PROPERTY(30);

const SPDRP_REMOVAL_POLICY = SETUP_DI_REGISTRY_PROPERTY(31);

const SPDRP_REMOVAL_POLICY_HW_DEFAULT = SETUP_DI_REGISTRY_PROPERTY(32);

const SPDRP_REMOVAL_POLICY_OVERRIDE = SETUP_DI_REGISTRY_PROPERTY(33);

const SPDRP_INSTALL_STATE = SETUP_DI_REGISTRY_PROPERTY(34);

const SPDRP_LOCATION_PATHS = SETUP_DI_REGISTRY_PROPERTY(35);

const SPDRP_BASE_CONTAINERID = SETUP_DI_REGISTRY_PROPERTY(36);

const SPDRP_MAXIMUM_PROPERTY = SETUP_DI_REGISTRY_PROPERTY(37);

/// {@category enum}
extension type const SET_DISPLAY_CONFIG_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SET_DISPLAY_CONFIG_FLAGS other) => _ & other._ == other._;

  SET_DISPLAY_CONFIG_FLAGS operator &(int other) => .new(_ & other);
  SET_DISPLAY_CONFIG_FLAGS operator |(int other) => .new(_ | other);
}

const SDC_USE_DATABASE_CURRENT = SET_DISPLAY_CONFIG_FLAGS(15);

const SDC_TOPOLOGY_INTERNAL = SET_DISPLAY_CONFIG_FLAGS(1);

const SDC_TOPOLOGY_CLONE = SET_DISPLAY_CONFIG_FLAGS(2);

const SDC_TOPOLOGY_EXTEND = SET_DISPLAY_CONFIG_FLAGS(4);

const SDC_TOPOLOGY_EXTERNAL = SET_DISPLAY_CONFIG_FLAGS(8);

const SDC_TOPOLOGY_SUPPLIED = SET_DISPLAY_CONFIG_FLAGS(16);

const SDC_USE_SUPPLIED_DISPLAY_CONFIG = SET_DISPLAY_CONFIG_FLAGS(32);

const SDC_VALIDATE = SET_DISPLAY_CONFIG_FLAGS(64);

const SDC_APPLY = SET_DISPLAY_CONFIG_FLAGS(128);

const SDC_NO_OPTIMIZATION = SET_DISPLAY_CONFIG_FLAGS(256);

const SDC_SAVE_TO_DATABASE = SET_DISPLAY_CONFIG_FLAGS(512);

const SDC_ALLOW_CHANGES = SET_DISPLAY_CONFIG_FLAGS(1024);

const SDC_PATH_PERSIST_IF_REQUIRED = SET_DISPLAY_CONFIG_FLAGS(2048);

const SDC_FORCE_MODE_ENUMERATION = SET_DISPLAY_CONFIG_FLAGS(4096);

const SDC_ALLOW_PATH_ORDER_CHANGES = SET_DISPLAY_CONFIG_FLAGS(8192);

const SDC_VIRTUAL_MODE_AWARE = SET_DISPLAY_CONFIG_FLAGS(32768);

const SDC_VIRTUAL_REFRESH_RATE_AWARE = SET_DISPLAY_CONFIG_FLAGS(131072);

/// {@category enum}
extension type const SET_FILE_POINTER_MOVE_METHOD(int _) implements int {}

const FILE_BEGIN = SET_FILE_POINTER_MOVE_METHOD(0);

const FILE_CURRENT = SET_FILE_POINTER_MOVE_METHOD(1);

const FILE_END = SET_FILE_POINTER_MOVE_METHOD(2);

/// {@category enum}
extension type const SET_THEME_APP_PROPERTIES_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SET_THEME_APP_PROPERTIES_FLAGS other) => _ & other._ == other._;

  SET_THEME_APP_PROPERTIES_FLAGS operator &(int other) => .new(_ & other);
  SET_THEME_APP_PROPERTIES_FLAGS operator |(int other) => .new(_ | other);
}

const ALLOW_NONCLIENT = SET_THEME_APP_PROPERTIES_FLAGS(1);

const ALLOW_CONTROLS = SET_THEME_APP_PROPERTIES_FLAGS(2);

const ALLOW_WEBCONTENT = SET_THEME_APP_PROPERTIES_FLAGS(4);

const VALIDBITS = SET_THEME_APP_PROPERTIES_FLAGS(7);

/// {@category enum}
extension type const SET_WINDOW_POS_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SET_WINDOW_POS_FLAGS other) => _ & other._ == other._;

  SET_WINDOW_POS_FLAGS operator &(int other) => .new(_ & other);
  SET_WINDOW_POS_FLAGS operator |(int other) => .new(_ | other);
}

const SWP_ASYNCWINDOWPOS = SET_WINDOW_POS_FLAGS(16384);

const SWP_DEFERERASE = SET_WINDOW_POS_FLAGS(8192);

const SWP_DRAWFRAME = SET_WINDOW_POS_FLAGS(32);

const SWP_FRAMECHANGED = SET_WINDOW_POS_FLAGS(32);

const SWP_HIDEWINDOW = SET_WINDOW_POS_FLAGS(128);

const SWP_NOACTIVATE = SET_WINDOW_POS_FLAGS(16);

const SWP_NOCOPYBITS = SET_WINDOW_POS_FLAGS(256);

const SWP_NOMOVE = SET_WINDOW_POS_FLAGS(2);

const SWP_NOOWNERZORDER = SET_WINDOW_POS_FLAGS(512);

const SWP_NOREDRAW = SET_WINDOW_POS_FLAGS(8);

const SWP_NOREPOSITION = SET_WINDOW_POS_FLAGS(512);

const SWP_NOSENDCHANGING = SET_WINDOW_POS_FLAGS(1024);

const SWP_NOSIZE = SET_WINDOW_POS_FLAGS(1);

const SWP_NOZORDER = SET_WINDOW_POS_FLAGS(4);

const SWP_SHOWWINDOW = SET_WINDOW_POS_FLAGS(64);

/// {@category enum}
extension type const SFGAO_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SFGAO_FLAGS other) => _ & other._ == other._;

  SFGAO_FLAGS operator &(int other) => .new(_ & other);
  SFGAO_FLAGS operator |(int other) => .new(_ | other);
}

const SFGAO_CANCOPY = SFGAO_FLAGS(1);

const SFGAO_CANMOVE = SFGAO_FLAGS(2);

const SFGAO_CANLINK = SFGAO_FLAGS(4);

const SFGAO_STORAGE = SFGAO_FLAGS(8);

const SFGAO_CANRENAME = SFGAO_FLAGS(16);

const SFGAO_CANDELETE = SFGAO_FLAGS(32);

const SFGAO_HASPROPSHEET = SFGAO_FLAGS(64);

const SFGAO_DROPTARGET = SFGAO_FLAGS(256);

const SFGAO_CAPABILITYMASK = SFGAO_FLAGS(375);

const SFGAO_PLACEHOLDER = SFGAO_FLAGS(2048);

const SFGAO_SYSTEM = SFGAO_FLAGS(4096);

const SFGAO_ENCRYPTED = SFGAO_FLAGS(8192);

const SFGAO_ISSLOW = SFGAO_FLAGS(16384);

const SFGAO_GHOSTED = SFGAO_FLAGS(32768);

const SFGAO_LINK = SFGAO_FLAGS(65536);

const SFGAO_SHARE = SFGAO_FLAGS(131072);

const SFGAO_READONLY = SFGAO_FLAGS(262144);

const SFGAO_HIDDEN = SFGAO_FLAGS(524288);

const SFGAO_DISPLAYATTRMASK = SFGAO_FLAGS(1032192);

const SFGAO_FILESYSANCESTOR = SFGAO_FLAGS(268435456);

const SFGAO_FOLDER = SFGAO_FLAGS(536870912);

const SFGAO_FILESYSTEM = SFGAO_FLAGS(1073741824);

const SFGAO_HASSUBFOLDER = SFGAO_FLAGS(2147483648);

const SFGAO_CONTENTSMASK = SFGAO_FLAGS(2147483648);

const SFGAO_VALIDATE = SFGAO_FLAGS(16777216);

const SFGAO_REMOVABLE = SFGAO_FLAGS(33554432);

const SFGAO_COMPRESSED = SFGAO_FLAGS(67108864);

const SFGAO_BROWSABLE = SFGAO_FLAGS(134217728);

const SFGAO_NONENUMERATED = SFGAO_FLAGS(1048576);

const SFGAO_NEWCONTENT = SFGAO_FLAGS(2097152);

const SFGAO_CANMONIKER = SFGAO_FLAGS(4194304);

const SFGAO_HASSTORAGE = SFGAO_FLAGS(4194304);

const SFGAO_STREAM = SFGAO_FLAGS(4194304);

const SFGAO_STORAGEANCESTOR = SFGAO_FLAGS(8388608);

const SFGAO_STORAGECAPMASK = SFGAO_FLAGS(1891958792);

const SFGAO_PKEYSFGAOMASK = SFGAO_FLAGS(2164539392);

/// {@category enum}
extension type const SHGDNF(int _) implements int {}

const SHGDN_NORMAL = SHGDNF(0);

const SHGDN_INFOLDER = SHGDNF(1);

const SHGDN_FOREDITING = SHGDNF(4096);

const SHGDN_FORADDRESSBAR = SHGDNF(16384);

const SHGDN_FORPARSING = SHGDNF(32768);

/// {@category enum}
extension type const SHGFI_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SHGFI_FLAGS other) => _ & other._ == other._;

  SHGFI_FLAGS operator &(int other) => .new(_ & other);
  SHGFI_FLAGS operator |(int other) => .new(_ | other);
}

const SHGFI_ADDOVERLAYS = SHGFI_FLAGS(32);

const SHGFI_ATTR_SPECIFIED = SHGFI_FLAGS(131072);

const SHGFI_ATTRIBUTES = SHGFI_FLAGS(2048);

const SHGFI_DISPLAYNAME = SHGFI_FLAGS(512);

const SHGFI_EXETYPE = SHGFI_FLAGS(8192);

const SHGFI_ICON = SHGFI_FLAGS(256);

const SHGFI_ICONLOCATION = SHGFI_FLAGS(4096);

const SHGFI_LARGEICON = SHGFI_FLAGS(0);

const SHGFI_LINKOVERLAY = SHGFI_FLAGS(32768);

const SHGFI_OPENICON = SHGFI_FLAGS(2);

const SHGFI_OVERLAYINDEX = SHGFI_FLAGS(64);

const SHGFI_PIDL = SHGFI_FLAGS(8);

const SHGFI_SELECTED = SHGFI_FLAGS(65536);

const SHGFI_SHELLICONSIZE = SHGFI_FLAGS(4);

const SHGFI_SMALLICON = SHGFI_FLAGS(1);

const SHGFI_SYSICONINDEX = SHGFI_FLAGS(16384);

const SHGFI_TYPENAME = SHGFI_FLAGS(1024);

const SHGFI_USEFILEATTRIBUTES = SHGFI_FLAGS(16);

/// {@category enum}
extension type const SHOW_WINDOW_CMD(int _) implements int {}

const SW_HIDE = SHOW_WINDOW_CMD(0);

const SW_SHOWNORMAL = SHOW_WINDOW_CMD(1);

const SW_NORMAL = SHOW_WINDOW_CMD(1);

const SW_SHOWMINIMIZED = SHOW_WINDOW_CMD(2);

const SW_SHOWMAXIMIZED = SHOW_WINDOW_CMD(3);

const SW_MAXIMIZE = SHOW_WINDOW_CMD(3);

const SW_SHOWNOACTIVATE = SHOW_WINDOW_CMD(4);

const SW_SHOW = SHOW_WINDOW_CMD(5);

const SW_MINIMIZE = SHOW_WINDOW_CMD(6);

const SW_SHOWMINNOACTIVE = SHOW_WINDOW_CMD(7);

const SW_SHOWNA = SHOW_WINDOW_CMD(8);

const SW_RESTORE = SHOW_WINDOW_CMD(9);

const SW_SHOWDEFAULT = SHOW_WINDOW_CMD(10);

const SW_FORCEMINIMIZE = SHOW_WINDOW_CMD(11);

const SW_MAX = SHOW_WINDOW_CMD(11);

/// {@category enum}
extension type const SHUTDOWN_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SHUTDOWN_FLAGS other) => _ & other._ == other._;

  SHUTDOWN_FLAGS operator &(int other) => .new(_ & other);
  SHUTDOWN_FLAGS operator |(int other) => .new(_ | other);
}

const SHUTDOWN_FORCE_OTHERS = SHUTDOWN_FLAGS(1);

const SHUTDOWN_FORCE_SELF = SHUTDOWN_FLAGS(2);

const SHUTDOWN_RESTART = SHUTDOWN_FLAGS(4);

const SHUTDOWN_POWEROFF = SHUTDOWN_FLAGS(8);

const SHUTDOWN_NOREBOOT = SHUTDOWN_FLAGS(16);

const SHUTDOWN_GRACE_OVERRIDE = SHUTDOWN_FLAGS(32);

const SHUTDOWN_INSTALL_UPDATES = SHUTDOWN_FLAGS(64);

const SHUTDOWN_RESTARTAPPS = SHUTDOWN_FLAGS(128);

const SHUTDOWN_SKIP_SVC_PRESHUTDOWN = SHUTDOWN_FLAGS(256);

const SHUTDOWN_HYBRID = SHUTDOWN_FLAGS(512);

const SHUTDOWN_RESTART_BOOTOPTIONS = SHUTDOWN_FLAGS(1024);

const SHUTDOWN_SOFT_REBOOT = SHUTDOWN_FLAGS(2048);

const SHUTDOWN_MOBILE_UI = SHUTDOWN_FLAGS(4096);

const SHUTDOWN_ARSO = SHUTDOWN_FLAGS(8192);

const SHUTDOWN_CHECK_SAFE_FOR_SERVER = SHUTDOWN_FLAGS(16384);

const SHUTDOWN_VAIL_CONTAINER = SHUTDOWN_FLAGS(32768);

const SHUTDOWN_SYSTEM_INITIATED = SHUTDOWN_FLAGS(65536);

/// {@category enum}
extension type const SHUTDOWN_REASON(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SHUTDOWN_REASON other) => _ & other._ == other._;

  SHUTDOWN_REASON operator &(int other) => .new(_ & other);
  SHUTDOWN_REASON operator |(int other) => .new(_ | other);
}

const SHTDN_REASON_NONE = SHUTDOWN_REASON(0);

const SHTDN_REASON_FLAG_COMMENT_REQUIRED = SHUTDOWN_REASON(16777216);

const SHTDN_REASON_FLAG_DIRTY_PROBLEM_ID_REQUIRED = SHUTDOWN_REASON(33554432);

const SHTDN_REASON_FLAG_CLEAN_UI = SHUTDOWN_REASON(67108864);

const SHTDN_REASON_FLAG_DIRTY_UI = SHUTDOWN_REASON(134217728);

const SHTDN_REASON_FLAG_MOBILE_UI_RESERVED = SHUTDOWN_REASON(268435456);

const SHTDN_REASON_FLAG_USER_DEFINED = SHUTDOWN_REASON(1073741824);

const SHTDN_REASON_FLAG_PLANNED = SHUTDOWN_REASON(2147483648);

const SHTDN_REASON_MAJOR_OTHER = SHUTDOWN_REASON(0);

const SHTDN_REASON_MAJOR_NONE = SHUTDOWN_REASON(0);

const SHTDN_REASON_MAJOR_HARDWARE = SHUTDOWN_REASON(65536);

const SHTDN_REASON_MAJOR_OPERATINGSYSTEM = SHUTDOWN_REASON(131072);

const SHTDN_REASON_MAJOR_SOFTWARE = SHUTDOWN_REASON(196608);

const SHTDN_REASON_MAJOR_APPLICATION = SHUTDOWN_REASON(262144);

const SHTDN_REASON_MAJOR_SYSTEM = SHUTDOWN_REASON(327680);

const SHTDN_REASON_MAJOR_POWER = SHUTDOWN_REASON(393216);

const SHTDN_REASON_MAJOR_LEGACY_API = SHUTDOWN_REASON(458752);

const SHTDN_REASON_MINOR_OTHER = SHUTDOWN_REASON(0);

const SHTDN_REASON_MINOR_NONE = SHUTDOWN_REASON(255);

const SHTDN_REASON_MINOR_MAINTENANCE = SHUTDOWN_REASON(1);

const SHTDN_REASON_MINOR_INSTALLATION = SHUTDOWN_REASON(2);

const SHTDN_REASON_MINOR_UPGRADE = SHUTDOWN_REASON(3);

const SHTDN_REASON_MINOR_RECONFIG = SHUTDOWN_REASON(4);

const SHTDN_REASON_MINOR_HUNG = SHUTDOWN_REASON(5);

const SHTDN_REASON_MINOR_UNSTABLE = SHUTDOWN_REASON(6);

const SHTDN_REASON_MINOR_DISK = SHUTDOWN_REASON(7);

const SHTDN_REASON_MINOR_PROCESSOR = SHUTDOWN_REASON(8);

const SHTDN_REASON_MINOR_NETWORKCARD = SHUTDOWN_REASON(9);

const SHTDN_REASON_MINOR_POWER_SUPPLY = SHUTDOWN_REASON(10);

const SHTDN_REASON_MINOR_CORDUNPLUGGED = SHUTDOWN_REASON(11);

const SHTDN_REASON_MINOR_ENVIRONMENT = SHUTDOWN_REASON(12);

const SHTDN_REASON_MINOR_HARDWARE_DRIVER = SHUTDOWN_REASON(13);

const SHTDN_REASON_MINOR_OTHERDRIVER = SHUTDOWN_REASON(14);

const SHTDN_REASON_MINOR_BLUESCREEN = SHUTDOWN_REASON(15);

const SHTDN_REASON_MINOR_SERVICEPACK = SHUTDOWN_REASON(16);

const SHTDN_REASON_MINOR_HOTFIX = SHUTDOWN_REASON(17);

const SHTDN_REASON_MINOR_SECURITYFIX = SHUTDOWN_REASON(18);

const SHTDN_REASON_MINOR_SECURITY = SHUTDOWN_REASON(19);

const SHTDN_REASON_MINOR_NETWORK_CONNECTIVITY = SHUTDOWN_REASON(20);

const SHTDN_REASON_MINOR_WMI = SHUTDOWN_REASON(21);

const SHTDN_REASON_MINOR_SERVICEPACK_UNINSTALL = SHUTDOWN_REASON(22);

const SHTDN_REASON_MINOR_HOTFIX_UNINSTALL = SHUTDOWN_REASON(23);

const SHTDN_REASON_MINOR_SECURITYFIX_UNINSTALL = SHUTDOWN_REASON(24);

const SHTDN_REASON_MINOR_MMC = SHUTDOWN_REASON(25);

const SHTDN_REASON_MINOR_SYSTEMRESTORE = SHUTDOWN_REASON(26);

const SHTDN_REASON_MINOR_TERMSRV = SHUTDOWN_REASON(32);

const SHTDN_REASON_MINOR_DC_PROMOTION = SHUTDOWN_REASON(33);

const SHTDN_REASON_MINOR_DC_DEMOTION = SHUTDOWN_REASON(34);

const SHTDN_REASON_UNKNOWN = SHUTDOWN_REASON(255);

const SHTDN_REASON_LEGACY_API = SHUTDOWN_REASON(2147942400);

const SHTDN_REASON_VALID_BIT_MASK = SHUTDOWN_REASON(3238002687);

/// {@category enum}
extension type const SIATTRIBFLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SIATTRIBFLAGS other) => _ & other._ == other._;

  SIATTRIBFLAGS operator &(int other) => .new(_ & other);
  SIATTRIBFLAGS operator |(int other) => .new(_ | other);
}

const SIATTRIBFLAGS_AND = SIATTRIBFLAGS(1);

const SIATTRIBFLAGS_OR = SIATTRIBFLAGS(2);

const SIATTRIBFLAGS_APPCOMPAT = SIATTRIBFLAGS(3);

const SIATTRIBFLAGS_MASK = SIATTRIBFLAGS(3);

const SIATTRIBFLAGS_ALLITEMS = SIATTRIBFLAGS(16384);

/// Requests the form of an item's display name to retrieve through
/// IShellItem::GetDisplayName and SHGetNameFromIDList.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/ne-shobjidl_core-sigdn>.
///
/// {@category enum}
extension type const SIGDN(int _) implements int {}

const SIGDN_NORMALDISPLAY = SIGDN(0);

const SIGDN_PARENTRELATIVEPARSING = SIGDN(-2147385343);

const SIGDN_DESKTOPABSOLUTEPARSING = SIGDN(-2147319808);

const SIGDN_PARENTRELATIVEEDITING = SIGDN(-2147282943);

const SIGDN_DESKTOPABSOLUTEEDITING = SIGDN(-2147172352);

const SIGDN_FILESYSPATH = SIGDN(-2147123200);

const SIGDN_URL = SIGDN(-2147057664);

const SIGDN_PARENTRELATIVEFORADDRESSBAR = SIGDN(-2146975743);

const SIGDN_PARENTRELATIVE = SIGDN(-2146959359);

const SIGDN_PARENTRELATIVEFORUI = SIGDN(-2146877439);

/// {@category enum}
extension type const SIIGBF(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SIIGBF other) => _ & other._ == other._;

  SIIGBF operator &(int other) => .new(_ & other);
  SIIGBF operator |(int other) => .new(_ | other);
}

const SIIGBF_RESIZETOFIT = SIIGBF(0);

const SIIGBF_BIGGERSIZEOK = SIIGBF(1);

const SIIGBF_MEMORYONLY = SIIGBF(2);

const SIIGBF_ICONONLY = SIIGBF(4);

const SIIGBF_THUMBNAILONLY = SIIGBF(8);

const SIIGBF_INCACHEONLY = SIIGBF(16);

const SIIGBF_CROPTOSQUARE = SIIGBF(32);

const SIIGBF_WIDETHUMBNAILS = SIIGBF(64);

const SIIGBF_ICONBACKGROUND = SIIGBF(128);

const SIIGBF_SCALEUP = SIIGBF(256);

/// {@category enum}
extension type const SMALLCAPTIONSTATES(int _) implements int {}

const SCS_ACTIVE = SMALLCAPTIONSTATES(1);

const SCS_INACTIVE = SMALLCAPTIONSTATES(2);

const SCS_DISABLED = SMALLCAPTIONSTATES(3);

/// {@category enum}
extension type const SMALLCLOSEBUTTONSTATES(int _) implements int {}

const SCBS_NORMAL = SMALLCLOSEBUTTONSTATES(1);

const SCBS_HOT = SMALLCLOSEBUTTONSTATES(2);

const SCBS_PUSHED = SMALLCLOSEBUTTONSTATES(3);

const SCBS_DISABLED = SMALLCLOSEBUTTONSTATES(4);

/// {@category enum}
extension type const SMALLFRAMEBOTTOMSTATES(int _) implements int {}

const SFRB_ACTIVE = SMALLFRAMEBOTTOMSTATES(1);

const SFRB_INACTIVE = SMALLFRAMEBOTTOMSTATES(2);

/// {@category enum}
extension type const SMALLFRAMELEFTSTATES(int _) implements int {}

const SFRL_ACTIVE = SMALLFRAMELEFTSTATES(1);

const SFRL_INACTIVE = SMALLFRAMELEFTSTATES(2);

/// {@category enum}
extension type const SMALLFRAMERIGHTSTATES(int _) implements int {}

const SFRR_ACTIVE = SMALLFRAMERIGHTSTATES(1);

const SFRR_INACTIVE = SMALLFRAMERIGHTSTATES(2);

/// {@category enum}
extension type const SND_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SND_FLAGS other) => _ & other._ == other._;

  SND_FLAGS operator &(int other) => .new(_ & other);
  SND_FLAGS operator |(int other) => .new(_ | other);
}

const SND_APPLICATION = SND_FLAGS(128);

const SND_ALIAS = SND_FLAGS(65536);

const SND_ALIAS_ID = SND_FLAGS(1114112);

const SND_FILENAME = SND_FLAGS(131072);

const SND_RESOURCE = SND_FLAGS(262148);

const SND_ASYNC = SND_FLAGS(1);

const SND_NODEFAULT = SND_FLAGS(2);

const SND_LOOP = SND_FLAGS(8);

const SND_MEMORY = SND_FLAGS(4);

const SND_NOSTOP = SND_FLAGS(16);

const SND_NOWAIT = SND_FLAGS(8192);

const SND_PURGE = SND_FLAGS(64);

const SND_SENTRY = SND_FLAGS(524288);

const SND_SYNC = SND_FLAGS(0);

const SND_SYSTEM = SND_FLAGS(2097152);

/// {@category enum}
extension type const SPDATAKEYLOCATION(int _) implements int {}

const SPDKL_DefaultLocation = SPDATAKEYLOCATION(0);

const SPDKL_CurrentUser = SPDATAKEYLOCATION(1);

const SPDKL_LocalMachine = SPDATAKEYLOCATION(2);

const SPDKL_CurrentConfig = SPDATAKEYLOCATION(5);

/// {@category enum}
extension type const SPEAKFLAGS(int _) implements int {}

const SPF_DEFAULT = SPEAKFLAGS(0);

const SPF_ASYNC = SPEAKFLAGS(1);

const SPF_PURGEBEFORESPEAK = SPEAKFLAGS(2);

const SPF_IS_FILENAME = SPEAKFLAGS(4);

const SPF_IS_XML = SPEAKFLAGS(8);

const SPF_IS_NOT_XML = SPEAKFLAGS(16);

const SPF_PERSIST_XML = SPEAKFLAGS(32);

const SPF_NLP_SPEAK_PUNC = SPEAKFLAGS(64);

const SPF_PARSE_SAPI = SPEAKFLAGS(128);

const SPF_PARSE_SSML = SPEAKFLAGS(256);

const SPF_PARSE_AUTODETECT = SPEAKFLAGS(0);

const SPF_NLP_MASK = SPEAKFLAGS(64);

const SPF_PARSE_MASK = SPEAKFLAGS(384);

const SPF_VOICE_MASK = SPEAKFLAGS(511);

const SPF_UNUSED_FLAGS = SPEAKFLAGS(-512);

/// {@category enum}
extension type const SPEVENTENUM(int _) implements int {}

const SPEI_UNDEFINED = SPEVENTENUM(0);

const SPEI_START_INPUT_STREAM = SPEVENTENUM(1);

const SPEI_END_INPUT_STREAM = SPEVENTENUM(2);

const SPEI_VOICE_CHANGE = SPEVENTENUM(3);

const SPEI_TTS_BOOKMARK = SPEVENTENUM(4);

const SPEI_WORD_BOUNDARY = SPEVENTENUM(5);

const SPEI_PHONEME = SPEVENTENUM(6);

const SPEI_SENTENCE_BOUNDARY = SPEVENTENUM(7);

const SPEI_VISEME = SPEVENTENUM(8);

const SPEI_TTS_AUDIO_LEVEL = SPEVENTENUM(9);

const SPEI_TTS_PRIVATE = SPEVENTENUM(15);

const SPEI_MIN_TTS = SPEVENTENUM(1);

const SPEI_MAX_TTS = SPEVENTENUM(15);

const SPEI_END_SR_STREAM = SPEVENTENUM(34);

const SPEI_SOUND_START = SPEVENTENUM(35);

const SPEI_SOUND_END = SPEVENTENUM(36);

const SPEI_PHRASE_START = SPEVENTENUM(37);

const SPEI_RECOGNITION = SPEVENTENUM(38);

const SPEI_HYPOTHESIS = SPEVENTENUM(39);

const SPEI_SR_BOOKMARK = SPEVENTENUM(40);

const SPEI_PROPERTY_NUM_CHANGE = SPEVENTENUM(41);

const SPEI_PROPERTY_STRING_CHANGE = SPEVENTENUM(42);

const SPEI_FALSE_RECOGNITION = SPEVENTENUM(43);

const SPEI_INTERFERENCE = SPEVENTENUM(44);

const SPEI_REQUEST_UI = SPEVENTENUM(45);

const SPEI_RECO_STATE_CHANGE = SPEVENTENUM(46);

const SPEI_ADAPTATION = SPEVENTENUM(47);

const SPEI_START_SR_STREAM = SPEVENTENUM(48);

const SPEI_RECO_OTHER_CONTEXT = SPEVENTENUM(49);

const SPEI_SR_AUDIO_LEVEL = SPEVENTENUM(50);

const SPEI_SR_RETAINEDAUDIO = SPEVENTENUM(51);

const SPEI_SR_PRIVATE = SPEVENTENUM(52);

const SPEI_RESERVED4 = SPEVENTENUM(53);

const SPEI_RESERVED5 = SPEVENTENUM(54);

const SPEI_RESERVED6 = SPEVENTENUM(55);

const SPEI_MIN_SR = SPEVENTENUM(34);

const SPEI_MAX_SR = SPEVENTENUM(55);

const SPEI_RESERVED1 = SPEVENTENUM(30);

const SPEI_RESERVED2 = SPEVENTENUM(33);

const SPEI_RESERVED3 = SPEVENTENUM(63);

/// {@category enum}
extension type const SPVISEMES(int _) implements int {}

const SP_VISEME_0 = SPVISEMES(0);

const SP_VISEME_1 = SPVISEMES(1);

const SP_VISEME_2 = SPVISEMES(2);

const SP_VISEME_3 = SPVISEMES(3);

const SP_VISEME_4 = SPVISEMES(4);

const SP_VISEME_5 = SPVISEMES(5);

const SP_VISEME_6 = SPVISEMES(6);

const SP_VISEME_7 = SPVISEMES(7);

const SP_VISEME_8 = SPVISEMES(8);

const SP_VISEME_9 = SPVISEMES(9);

const SP_VISEME_10 = SPVISEMES(10);

const SP_VISEME_11 = SPVISEMES(11);

const SP_VISEME_12 = SPVISEMES(12);

const SP_VISEME_13 = SPVISEMES(13);

const SP_VISEME_14 = SPVISEMES(14);

const SP_VISEME_15 = SPVISEMES(15);

const SP_VISEME_16 = SPVISEMES(16);

const SP_VISEME_17 = SPVISEMES(17);

const SP_VISEME_18 = SPVISEMES(18);

const SP_VISEME_19 = SPVISEMES(19);

const SP_VISEME_20 = SPVISEMES(20);

const SP_VISEME_21 = SPVISEMES(21);

/// {@category enum}
extension type const SPVPRIORITY(int _) implements int {}

const SPVPRI_NORMAL = SPVPRIORITY(0);

const SPVPRI_ALERT = SPVPRIORITY(1);

const SPVPRI_OVER = SPVPRIORITY(2);

/// {@category enum}
extension type const STARTUPINFOW_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(STARTUPINFOW_FLAGS other) => _ & other._ == other._;

  STARTUPINFOW_FLAGS operator &(int other) => .new(_ & other);
  STARTUPINFOW_FLAGS operator |(int other) => .new(_ | other);
}

const STARTF_FORCEONFEEDBACK = STARTUPINFOW_FLAGS(64);

const STARTF_FORCEOFFFEEDBACK = STARTUPINFOW_FLAGS(128);

const STARTF_PREVENTPINNING = STARTUPINFOW_FLAGS(8192);

const STARTF_RUNFULLSCREEN = STARTUPINFOW_FLAGS(32);

const STARTF_TITLEISAPPID = STARTUPINFOW_FLAGS(4096);

const STARTF_TITLEISLINKNAME = STARTUPINFOW_FLAGS(2048);

const STARTF_UNTRUSTEDSOURCE = STARTUPINFOW_FLAGS(32768);

const STARTF_USECOUNTCHARS = STARTUPINFOW_FLAGS(8);

const STARTF_USEFILLATTRIBUTE = STARTUPINFOW_FLAGS(16);

const STARTF_USEHOTKEY = STARTUPINFOW_FLAGS(512);

const STARTF_USEPOSITION = STARTUPINFOW_FLAGS(4);

const STARTF_USESHOWWINDOW = STARTUPINFOW_FLAGS(1);

const STARTF_USESIZE = STARTUPINFOW_FLAGS(2);

const STARTF_USESTDHANDLES = STARTUPINFOW_FLAGS(256);

/// Indicate whether the method should try to return a name in the pwcsName
/// member of the STATSTG structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ne-wtypes-statflag>.
///
/// {@category enum}
extension type const STATFLAG(int _) implements int {}

/// Requests that the statistics include the <b>pwcsName</b> member of the <a
/// href="https://docs.microsoft.com/windows/desktop/api/objidl/ns-objidl-statstg">STATSTG</a>
/// structure.
const STATFLAG_DEFAULT = STATFLAG(0);

/// Requests that the statistics not include the <b>pwcsName</b> member of the
/// <a
/// href="https://docs.microsoft.com/windows/desktop/api/objidl/ns-objidl-statstg">STATSTG</a>
/// structure.
const STATFLAG_NONAME = STATFLAG(1);

/// Not implemented.
const STATFLAG_NOOPEN = STATFLAG(2);

/// {@category enum}
extension type const STATIC_STYLES(int _) implements int {}

const SS_LEFT = STATIC_STYLES(0);

const SS_CENTER = STATIC_STYLES(1);

const SS_RIGHT = STATIC_STYLES(2);

const SS_ICON = STATIC_STYLES(3);

const SS_BLACKRECT = STATIC_STYLES(4);

const SS_GRAYRECT = STATIC_STYLES(5);

const SS_WHITERECT = STATIC_STYLES(6);

const SS_BLACKFRAME = STATIC_STYLES(7);

const SS_GRAYFRAME = STATIC_STYLES(8);

const SS_WHITEFRAME = STATIC_STYLES(9);

const SS_USERITEM = STATIC_STYLES(10);

const SS_SIMPLE = STATIC_STYLES(11);

const SS_LEFTNOWORDWRAP = STATIC_STYLES(12);

const SS_OWNERDRAW = STATIC_STYLES(13);

const SS_BITMAP = STATIC_STYLES(14);

const SS_ENHMETAFILE = STATIC_STYLES(15);

const SS_ETCHEDHORZ = STATIC_STYLES(16);

const SS_ETCHEDVERT = STATIC_STYLES(17);

const SS_ETCHEDFRAME = STATIC_STYLES(18);

const SS_TYPEMASK = STATIC_STYLES(31);

const SS_REALSIZECONTROL = STATIC_STYLES(64);

const SS_NOPREFIX = STATIC_STYLES(128);

const SS_NOTIFY = STATIC_STYLES(256);

const SS_CENTERIMAGE = STATIC_STYLES(512);

const SS_RIGHTJUST = STATIC_STYLES(1024);

const SS_REALSIZEIMAGE = STATIC_STYLES(2048);

const SS_SUNKEN = STATIC_STYLES(4096);

const SS_EDITCONTROL = STATIC_STYLES(8192);

const SS_ENDELLIPSIS = STATIC_STYLES(16384);

const SS_PATHELLIPSIS = STATIC_STYLES(32768);

const SS_WORDELLIPSIS = STATIC_STYLES(49152);

const SS_ELLIPSISMASK = STATIC_STYLES(49152);

/// {@category enum}
extension type const STD_HANDLE(int _) implements int {}

const STD_INPUT_HANDLE = STD_HANDLE(4294967286);

const STD_OUTPUT_HANDLE = STD_HANDLE(4294967285);

const STD_ERROR_HANDLE = STD_HANDLE(4294967284);

/// Specify the conditions for performing the commit operation in the
/// IStorage::Commit and IStream::Commit methods.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ne-wtypes-stgc>.
///
/// {@category enum}
extension type const STGC(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(STGC other) => _ & other._ == other._;

  STGC operator &(int other) => .new(_ & other);
  STGC operator |(int other) => .new(_ | other);
}

/// You can specify this condition with <b>STGC_CONSOLIDATE</b>, or some
/// combination of the other three flags in this list of elements.
const STGC_DEFAULT = STGC(0);

/// The commit operation can overwrite existing data to reduce overall space
/// requirements.
const STGC_OVERWRITE = STGC(1);

/// Prevents multiple users of a storage object from overwriting each other's
/// changes.
const STGC_ONLYIFCURRENT = STGC(2);

/// Commits the changes to a write-behind disk cache, but does not save the
/// cache to the disk.
const STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = STGC(4);

const STGC_CONSOLIDATE = STGC(8);

/// Flags that indicate conditions for creating and deleting the object and
/// access modes for the object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Stg/stgm-constants>.
///
/// {@category enum}
extension type const STGM(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(STGM other) => _ & other._ == other._;

  STGM operator &(int other) => .new(_ & other);
  STGM operator |(int other) => .new(_ | other);
}

const STGM_DIRECT = STGM(0);

const STGM_TRANSACTED = STGM(65536);

const STGM_SIMPLE = STGM(134217728);

const STGM_READ = STGM(0);

const STGM_WRITE = STGM(1);

const STGM_READWRITE = STGM(2);

const STGM_SHARE_DENY_NONE = STGM(64);

const STGM_SHARE_DENY_READ = STGM(48);

const STGM_SHARE_DENY_WRITE = STGM(32);

const STGM_SHARE_EXCLUSIVE = STGM(16);

const STGM_PRIORITY = STGM(262144);

const STGM_DELETEONRELEASE = STGM(67108864);

const STGM_NOSCRATCH = STGM(1048576);

const STGM_CREATE = STGM(4096);

const STGM_CONVERT = STGM(131072);

const STGM_FAILIFTHERE = STGM(0);

const STGM_NOSNAPSHOT = STGM(2097152);

const STGM_DIRECT_SWMR = STGM(4194304);

/// Indicate whether a storage element is to be moved or copied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ne-wtypes-stgmove>.
///
/// {@category enum}
extension type const STGMOVE(int _) implements int {}

/// Indicates that the method should move the data from the source to the
/// destination.
const STGMOVE_MOVE = STGMOVE(0);

/// Indicates that the method should copy the data from the source to the
/// destination.
const STGMOVE_COPY = STGMOVE(1);

/// Not implemented.
const STGMOVE_SHALLOWCOPY = STGMOVE(2);

/// Defines values that are used with the FindFirstStreamW function to specify
/// the information level of the returned data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/ne-fileapi-stream_info_levels>.
///
/// {@category enum}
extension type const STREAM_INFO_LEVELS(int _) implements int {}

/// The <a
/// href="https://docs.microsoft.com/windows/desktop/api/fileapi/nf-fileapi-findfirststreamw">FindFirstStreamW</a>
/// function retrieves standard stream information.
const FindStreamInfoStandard = STREAM_INFO_LEVELS(0);

/// Used to determine valid enumeration values.
const FindStreamInfoMaxInfoLevel = STREAM_INFO_LEVELS(1);

/// Specify the origin from which to calculate the new seek-pointer location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/ne-objidl-stream_seek>.
///
/// {@category enum}
extension type const STREAM_SEEK(int _) implements int {}

/// The new seek pointer is an offset relative to the beginning of the stream.
const STREAM_SEEK_SET = STREAM_SEEK(0);

/// The new seek pointer is an offset relative to the current seek pointer
/// location.
const STREAM_SEEK_CUR = STREAM_SEEK(1);

/// The new seek pointer is an offset relative to the end of the stream.
const STREAM_SEEK_END = STREAM_SEEK(2);

/// {@category enum}
extension type const STRETCH_BLT_MODE(int _) implements int {}

const BLACKONWHITE = STRETCH_BLT_MODE(1);

const COLORONCOLOR = STRETCH_BLT_MODE(3);

const HALFTONE = STRETCH_BLT_MODE(4);

const STRETCH_ANDSCANS = STRETCH_BLT_MODE(1);

const STRETCH_DELETESCANS = STRETCH_BLT_MODE(3);

const STRETCH_HALFTONE = STRETCH_BLT_MODE(4);

const STRETCH_ORSCANS = STRETCH_BLT_MODE(2);

const WHITEONBLACK = STRETCH_BLT_MODE(2);

/// {@category enum}
extension type const SYMBOLIC_LINK_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SYMBOLIC_LINK_FLAGS other) => _ & other._ == other._;

  SYMBOLIC_LINK_FLAGS operator &(int other) => .new(_ & other);
  SYMBOLIC_LINK_FLAGS operator |(int other) => .new(_ | other);
}

const SYMBOLIC_LINK_FLAG_DIRECTORY = SYMBOLIC_LINK_FLAGS(1);

const SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE = SYMBOLIC_LINK_FLAGS(2);

/// {@category enum}
extension type const SYMBOL_INFO_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SYMBOL_INFO_FLAGS other) => _ & other._ == other._;

  SYMBOL_INFO_FLAGS operator &(int other) => .new(_ & other);
  SYMBOL_INFO_FLAGS operator |(int other) => .new(_ | other);
}

const SYMFLAG_CLR_TOKEN = SYMBOL_INFO_FLAGS(262144);

const SYMFLAG_CONSTANT = SYMBOL_INFO_FLAGS(256);

const SYMFLAG_EXPORT = SYMBOL_INFO_FLAGS(512);

const SYMFLAG_FORWARDER = SYMBOL_INFO_FLAGS(1024);

const SYMFLAG_FRAMEREL = SYMBOL_INFO_FLAGS(32);

const SYMFLAG_FUNCTION = SYMBOL_INFO_FLAGS(2048);

const SYMFLAG_ILREL = SYMBOL_INFO_FLAGS(65536);

const SYMFLAG_LOCAL = SYMBOL_INFO_FLAGS(128);

const SYMFLAG_METADATA = SYMBOL_INFO_FLAGS(131072);

const SYMFLAG_PARAMETER = SYMBOL_INFO_FLAGS(64);

const SYMFLAG_REGISTER = SYMBOL_INFO_FLAGS(8);

const SYMFLAG_REGREL = SYMBOL_INFO_FLAGS(16);

const SYMFLAG_SLOT = SYMBOL_INFO_FLAGS(32768);

const SYMFLAG_THUNK = SYMBOL_INFO_FLAGS(8192);

const SYMFLAG_TLSREL = SYMBOL_INFO_FLAGS(16384);

const SYMFLAG_VALUEPRESENT = SYMBOL_INFO_FLAGS(1);

const SYMFLAG_VIRTUAL = SYMBOL_INFO_FLAGS(4096);

/// {@category enum}
extension type const SYM_LOAD_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SYM_LOAD_FLAGS other) => _ & other._ == other._;

  SYM_LOAD_FLAGS operator &(int other) => .new(_ & other);
  SYM_LOAD_FLAGS operator |(int other) => .new(_ | other);
}

const SLMFLAG_NONE = SYM_LOAD_FLAGS(0);

const SLMFLAG_VIRTUAL = SYM_LOAD_FLAGS(1);

const SLMFLAG_ALT_INDEX = SYM_LOAD_FLAGS(2);

const SLMFLAG_NO_SYMBOLS = SYM_LOAD_FLAGS(4);

/// {@category enum}
extension type const SYNCHRONIZATION_ACCESS_RIGHTS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SYNCHRONIZATION_ACCESS_RIGHTS other) => _ & other._ == other._;

  SYNCHRONIZATION_ACCESS_RIGHTS operator &(int other) => .new(_ & other);
  SYNCHRONIZATION_ACCESS_RIGHTS operator |(int other) => .new(_ | other);
}

const EVENT_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(2031619);

const EVENT_MODIFY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(2);

const MUTEX_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(2031617);

const MUTEX_MODIFY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(1);

const SEMAPHORE_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(2031619);

const SEMAPHORE_MODIFY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(2);

const TIMER_ALL_ACCESS = SYNCHRONIZATION_ACCESS_RIGHTS(2031619);

const TIMER_MODIFY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(2);

const TIMER_QUERY_STATE = SYNCHRONIZATION_ACCESS_RIGHTS(1);

const SYNCHRONIZATION_DELETE = SYNCHRONIZATION_ACCESS_RIGHTS(65536);

const SYNCHRONIZATION_READ_CONTROL = SYNCHRONIZATION_ACCESS_RIGHTS(131072);

const SYNCHRONIZATION_WRITE_DAC = SYNCHRONIZATION_ACCESS_RIGHTS(262144);

const SYNCHRONIZATION_WRITE_OWNER = SYNCHRONIZATION_ACCESS_RIGHTS(524288);

const SYNCHRONIZATION_SYNCHRONIZE = SYNCHRONIZATION_ACCESS_RIGHTS(1048576);

/// {@category enum}
extension type const SYSBUTTONSTATES(int _) implements int {}

const SBS_NORMAL = SYSBUTTONSTATES(1);

const SBS_HOT = SYSBUTTONSTATES(2);

const SBS_PUSHED = SYSBUTTONSTATES(3);

const SBS_DISABLED = SYSBUTTONSTATES(4);

/// Identifies the target operating system platform.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-syskind>.
///
/// {@category enum}
extension type const SYSKIND(int _) implements int {}

/// The target operating system for the type library is 16-bit Windows.
const SYS_WIN16 = SYSKIND(0);

/// The target operating system for the type library is 32-bit Windows.
const SYS_WIN32 = SYSKIND(1);

/// The target operating system for the type library is Apple Macintosh.
const SYS_MAC = SYSKIND(2);

/// The target operating system for the type library is 64-bit Windows.
const SYS_WIN64 = SYSKIND(3);

/// {@category enum}
extension type const SYSTEM_CURSOR_ID(int _) implements int {}

const OCR_APPSTARTING = SYSTEM_CURSOR_ID(32650);

const OCR_NORMAL = SYSTEM_CURSOR_ID(32512);

const OCR_CROSS = SYSTEM_CURSOR_ID(32515);

const OCR_HAND = SYSTEM_CURSOR_ID(32649);

const OCR_HELP = SYSTEM_CURSOR_ID(32651);

const OCR_IBEAM = SYSTEM_CURSOR_ID(32513);

const OCR_NO = SYSTEM_CURSOR_ID(32648);

const OCR_SIZEALL = SYSTEM_CURSOR_ID(32646);

const OCR_SIZENESW = SYSTEM_CURSOR_ID(32643);

const OCR_SIZENS = SYSTEM_CURSOR_ID(32645);

const OCR_SIZENWSE = SYSTEM_CURSOR_ID(32642);

const OCR_SIZEWE = SYSTEM_CURSOR_ID(32644);

const OCR_UP = SYSTEM_CURSOR_ID(32516);

const OCR_WAIT = SYSTEM_CURSOR_ID(32514);

/// {@category enum}
extension type const SYSTEM_INFORMATION_CLASS(int _) implements int {}

const SystemBasicInformation = SYSTEM_INFORMATION_CLASS(0);

const SystemPerformanceInformation = SYSTEM_INFORMATION_CLASS(2);

const SystemTimeOfDayInformation = SYSTEM_INFORMATION_CLASS(3);

const SystemProcessInformation = SYSTEM_INFORMATION_CLASS(5);

const SystemProcessorPerformanceInformation = SYSTEM_INFORMATION_CLASS(8);

const SystemInterruptInformation = SYSTEM_INFORMATION_CLASS(23);

const SystemExceptionInformation = SYSTEM_INFORMATION_CLASS(33);

const SystemRegistryQuotaInformation = SYSTEM_INFORMATION_CLASS(37);

const SystemLookasideInformation = SYSTEM_INFORMATION_CLASS(45);

const SystemCodeIntegrityInformation = SYSTEM_INFORMATION_CLASS(103);

const SystemPolicyInformation = SYSTEM_INFORMATION_CLASS(134);

/// {@category enum}
extension type const SYSTEM_METRICS_INDEX(int _) implements int {}

const SM_ARRANGE = SYSTEM_METRICS_INDEX(56);

const SM_CLEANBOOT = SYSTEM_METRICS_INDEX(67);

const SM_CMONITORS = SYSTEM_METRICS_INDEX(80);

const SM_CMOUSEBUTTONS = SYSTEM_METRICS_INDEX(43);

const SM_CONVERTIBLESLATEMODE = SYSTEM_METRICS_INDEX(8195);

const SM_CXBORDER = SYSTEM_METRICS_INDEX(5);

const SM_CXCURSOR = SYSTEM_METRICS_INDEX(13);

const SM_CXDLGFRAME = SYSTEM_METRICS_INDEX(7);

const SM_CXDOUBLECLK = SYSTEM_METRICS_INDEX(36);

const SM_CXDRAG = SYSTEM_METRICS_INDEX(68);

const SM_CXEDGE = SYSTEM_METRICS_INDEX(45);

const SM_CXFIXEDFRAME = SYSTEM_METRICS_INDEX(7);

const SM_CXFOCUSBORDER = SYSTEM_METRICS_INDEX(83);

const SM_CXFRAME = SYSTEM_METRICS_INDEX(32);

const SM_CXFULLSCREEN = SYSTEM_METRICS_INDEX(16);

const SM_CXHSCROLL = SYSTEM_METRICS_INDEX(21);

const SM_CXHTHUMB = SYSTEM_METRICS_INDEX(10);

const SM_CXICON = SYSTEM_METRICS_INDEX(11);

const SM_CXICONSPACING = SYSTEM_METRICS_INDEX(38);

const SM_CXMAXIMIZED = SYSTEM_METRICS_INDEX(61);

const SM_CXMAXTRACK = SYSTEM_METRICS_INDEX(59);

const SM_CXMENUCHECK = SYSTEM_METRICS_INDEX(71);

const SM_CXMENUSIZE = SYSTEM_METRICS_INDEX(54);

const SM_CXMIN = SYSTEM_METRICS_INDEX(28);

const SM_CXMINIMIZED = SYSTEM_METRICS_INDEX(57);

const SM_CXMINSPACING = SYSTEM_METRICS_INDEX(47);

const SM_CXMINTRACK = SYSTEM_METRICS_INDEX(34);

const SM_CXPADDEDBORDER = SYSTEM_METRICS_INDEX(92);

const SM_CXSCREEN = SYSTEM_METRICS_INDEX(0);

const SM_CXSIZE = SYSTEM_METRICS_INDEX(30);

const SM_CXSIZEFRAME = SYSTEM_METRICS_INDEX(32);

const SM_CXSMICON = SYSTEM_METRICS_INDEX(49);

const SM_CXSMSIZE = SYSTEM_METRICS_INDEX(52);

const SM_CXVIRTUALSCREEN = SYSTEM_METRICS_INDEX(78);

const SM_CXVSCROLL = SYSTEM_METRICS_INDEX(2);

const SM_CYBORDER = SYSTEM_METRICS_INDEX(6);

const SM_CYCAPTION = SYSTEM_METRICS_INDEX(4);

const SM_CYCURSOR = SYSTEM_METRICS_INDEX(14);

const SM_CYDLGFRAME = SYSTEM_METRICS_INDEX(8);

const SM_CYDOUBLECLK = SYSTEM_METRICS_INDEX(37);

const SM_CYDRAG = SYSTEM_METRICS_INDEX(69);

const SM_CYEDGE = SYSTEM_METRICS_INDEX(46);

const SM_CYFIXEDFRAME = SYSTEM_METRICS_INDEX(8);

const SM_CYFOCUSBORDER = SYSTEM_METRICS_INDEX(84);

const SM_CYFRAME = SYSTEM_METRICS_INDEX(33);

const SM_CYFULLSCREEN = SYSTEM_METRICS_INDEX(17);

const SM_CYHSCROLL = SYSTEM_METRICS_INDEX(3);

const SM_CYICON = SYSTEM_METRICS_INDEX(12);

const SM_CYICONSPACING = SYSTEM_METRICS_INDEX(39);

const SM_CYKANJIWINDOW = SYSTEM_METRICS_INDEX(18);

const SM_CYMAXIMIZED = SYSTEM_METRICS_INDEX(62);

const SM_CYMAXTRACK = SYSTEM_METRICS_INDEX(60);

const SM_CYMENU = SYSTEM_METRICS_INDEX(15);

const SM_CYMENUCHECK = SYSTEM_METRICS_INDEX(72);

const SM_CYMENUSIZE = SYSTEM_METRICS_INDEX(55);

const SM_CYMIN = SYSTEM_METRICS_INDEX(29);

const SM_CYMINIMIZED = SYSTEM_METRICS_INDEX(58);

const SM_CYMINSPACING = SYSTEM_METRICS_INDEX(48);

const SM_CYMINTRACK = SYSTEM_METRICS_INDEX(35);

const SM_CYSCREEN = SYSTEM_METRICS_INDEX(1);

const SM_CYSIZE = SYSTEM_METRICS_INDEX(31);

const SM_CYSIZEFRAME = SYSTEM_METRICS_INDEX(33);

const SM_CYSMCAPTION = SYSTEM_METRICS_INDEX(51);

const SM_CYSMICON = SYSTEM_METRICS_INDEX(50);

const SM_CYSMSIZE = SYSTEM_METRICS_INDEX(53);

const SM_CYVIRTUALSCREEN = SYSTEM_METRICS_INDEX(79);

const SM_CYVSCROLL = SYSTEM_METRICS_INDEX(20);

const SM_CYVTHUMB = SYSTEM_METRICS_INDEX(9);

const SM_DBCSENABLED = SYSTEM_METRICS_INDEX(42);

const SM_DEBUG = SYSTEM_METRICS_INDEX(22);

const SM_DIGITIZER = SYSTEM_METRICS_INDEX(94);

const SM_IMMENABLED = SYSTEM_METRICS_INDEX(82);

const SM_MAXIMUMTOUCHES = SYSTEM_METRICS_INDEX(95);

const SM_MEDIACENTER = SYSTEM_METRICS_INDEX(87);

const SM_MENUDROPALIGNMENT = SYSTEM_METRICS_INDEX(40);

const SM_MIDEASTENABLED = SYSTEM_METRICS_INDEX(74);

const SM_MOUSEPRESENT = SYSTEM_METRICS_INDEX(19);

const SM_MOUSEHORIZONTALWHEELPRESENT = SYSTEM_METRICS_INDEX(91);

const SM_MOUSEWHEELPRESENT = SYSTEM_METRICS_INDEX(75);

const SM_NETWORK = SYSTEM_METRICS_INDEX(63);

const SM_PENWINDOWS = SYSTEM_METRICS_INDEX(41);

const SM_REMOTECONTROL = SYSTEM_METRICS_INDEX(8193);

const SM_REMOTESESSION = SYSTEM_METRICS_INDEX(4096);

const SM_SAMEDISPLAYFORMAT = SYSTEM_METRICS_INDEX(81);

const SM_SECURE = SYSTEM_METRICS_INDEX(44);

const SM_SERVERR2 = SYSTEM_METRICS_INDEX(89);

const SM_SHOWSOUNDS = SYSTEM_METRICS_INDEX(70);

const SM_SHUTTINGDOWN = SYSTEM_METRICS_INDEX(8192);

const SM_SLOWMACHINE = SYSTEM_METRICS_INDEX(73);

const SM_STARTER = SYSTEM_METRICS_INDEX(88);

const SM_SWAPBUTTON = SYSTEM_METRICS_INDEX(23);

const SM_SYSTEMDOCKED = SYSTEM_METRICS_INDEX(8196);

const SM_TABLETPC = SYSTEM_METRICS_INDEX(86);

const SM_XVIRTUALSCREEN = SYSTEM_METRICS_INDEX(76);

const SM_YVIRTUALSCREEN = SYSTEM_METRICS_INDEX(77);

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_ACTION(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SYSTEM_PARAMETERS_INFO_ACTION other) => _ & other._ == other._;

  SYSTEM_PARAMETERS_INFO_ACTION operator &(int other) => .new(_ & other);
  SYSTEM_PARAMETERS_INFO_ACTION operator |(int other) => .new(_ | other);
}

const SPI_GETBEEP = SYSTEM_PARAMETERS_INFO_ACTION(1);

const SPI_SETBEEP = SYSTEM_PARAMETERS_INFO_ACTION(2);

const SPI_GETMOUSE = SYSTEM_PARAMETERS_INFO_ACTION(3);

const SPI_SETMOUSE = SYSTEM_PARAMETERS_INFO_ACTION(4);

const SPI_GETBORDER = SYSTEM_PARAMETERS_INFO_ACTION(5);

const SPI_SETBORDER = SYSTEM_PARAMETERS_INFO_ACTION(6);

const SPI_GETKEYBOARDSPEED = SYSTEM_PARAMETERS_INFO_ACTION(10);

const SPI_SETKEYBOARDSPEED = SYSTEM_PARAMETERS_INFO_ACTION(11);

const SPI_LANGDRIVER = SYSTEM_PARAMETERS_INFO_ACTION(12);

const SPI_ICONHORIZONTALSPACING = SYSTEM_PARAMETERS_INFO_ACTION(13);

const SPI_GETSCREENSAVETIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(14);

const SPI_SETSCREENSAVETIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(15);

const SPI_GETSCREENSAVEACTIVE = SYSTEM_PARAMETERS_INFO_ACTION(16);

const SPI_SETSCREENSAVEACTIVE = SYSTEM_PARAMETERS_INFO_ACTION(17);

const SPI_GETGRIDGRANULARITY = SYSTEM_PARAMETERS_INFO_ACTION(18);

const SPI_SETGRIDGRANULARITY = SYSTEM_PARAMETERS_INFO_ACTION(19);

const SPI_SETDESKWALLPAPER = SYSTEM_PARAMETERS_INFO_ACTION(20);

const SPI_SETDESKPATTERN = SYSTEM_PARAMETERS_INFO_ACTION(21);

const SPI_GETKEYBOARDDELAY = SYSTEM_PARAMETERS_INFO_ACTION(22);

const SPI_SETKEYBOARDDELAY = SYSTEM_PARAMETERS_INFO_ACTION(23);

const SPI_ICONVERTICALSPACING = SYSTEM_PARAMETERS_INFO_ACTION(24);

const SPI_GETICONTITLEWRAP = SYSTEM_PARAMETERS_INFO_ACTION(25);

const SPI_SETICONTITLEWRAP = SYSTEM_PARAMETERS_INFO_ACTION(26);

const SPI_GETMENUDROPALIGNMENT = SYSTEM_PARAMETERS_INFO_ACTION(27);

const SPI_SETMENUDROPALIGNMENT = SYSTEM_PARAMETERS_INFO_ACTION(28);

const SPI_SETDOUBLECLKWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(29);

const SPI_SETDOUBLECLKHEIGHT = SYSTEM_PARAMETERS_INFO_ACTION(30);

const SPI_GETICONTITLELOGFONT = SYSTEM_PARAMETERS_INFO_ACTION(31);

const SPI_SETDOUBLECLICKTIME = SYSTEM_PARAMETERS_INFO_ACTION(32);

const SPI_SETMOUSEBUTTONSWAP = SYSTEM_PARAMETERS_INFO_ACTION(33);

const SPI_SETICONTITLELOGFONT = SYSTEM_PARAMETERS_INFO_ACTION(34);

const SPI_GETFASTTASKSWITCH = SYSTEM_PARAMETERS_INFO_ACTION(35);

const SPI_SETFASTTASKSWITCH = SYSTEM_PARAMETERS_INFO_ACTION(36);

const SPI_SETDRAGFULLWINDOWS = SYSTEM_PARAMETERS_INFO_ACTION(37);

const SPI_GETDRAGFULLWINDOWS = SYSTEM_PARAMETERS_INFO_ACTION(38);

const SPI_GETNONCLIENTMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(41);

const SPI_SETNONCLIENTMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(42);

const SPI_GETMINIMIZEDMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(43);

const SPI_SETMINIMIZEDMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(44);

const SPI_GETICONMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(45);

const SPI_SETICONMETRICS = SYSTEM_PARAMETERS_INFO_ACTION(46);

const SPI_SETWORKAREA = SYSTEM_PARAMETERS_INFO_ACTION(47);

const SPI_GETWORKAREA = SYSTEM_PARAMETERS_INFO_ACTION(48);

const SPI_SETPENWINDOWS = SYSTEM_PARAMETERS_INFO_ACTION(49);

const SPI_GETHIGHCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(66);

const SPI_SETHIGHCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(67);

const SPI_GETKEYBOARDPREF = SYSTEM_PARAMETERS_INFO_ACTION(68);

const SPI_SETKEYBOARDPREF = SYSTEM_PARAMETERS_INFO_ACTION(69);

const SPI_GETSCREENREADER = SYSTEM_PARAMETERS_INFO_ACTION(70);

const SPI_SETSCREENREADER = SYSTEM_PARAMETERS_INFO_ACTION(71);

const SPI_GETANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(72);

const SPI_SETANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(73);

const SPI_GETFONTSMOOTHING = SYSTEM_PARAMETERS_INFO_ACTION(74);

const SPI_SETFONTSMOOTHING = SYSTEM_PARAMETERS_INFO_ACTION(75);

const SPI_SETDRAGWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(76);

const SPI_SETDRAGHEIGHT = SYSTEM_PARAMETERS_INFO_ACTION(77);

const SPI_SETHANDHELD = SYSTEM_PARAMETERS_INFO_ACTION(78);

const SPI_GETLOWPOWERTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(79);

const SPI_GETPOWEROFFTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(80);

const SPI_SETLOWPOWERTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(81);

const SPI_SETPOWEROFFTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(82);

const SPI_GETLOWPOWERACTIVE = SYSTEM_PARAMETERS_INFO_ACTION(83);

const SPI_GETPOWEROFFACTIVE = SYSTEM_PARAMETERS_INFO_ACTION(84);

const SPI_SETLOWPOWERACTIVE = SYSTEM_PARAMETERS_INFO_ACTION(85);

const SPI_SETPOWEROFFACTIVE = SYSTEM_PARAMETERS_INFO_ACTION(86);

const SPI_SETCURSORS = SYSTEM_PARAMETERS_INFO_ACTION(87);

const SPI_SETICONS = SYSTEM_PARAMETERS_INFO_ACTION(88);

const SPI_GETDEFAULTINPUTLANG = SYSTEM_PARAMETERS_INFO_ACTION(89);

const SPI_SETDEFAULTINPUTLANG = SYSTEM_PARAMETERS_INFO_ACTION(90);

const SPI_SETLANGTOGGLE = SYSTEM_PARAMETERS_INFO_ACTION(91);

const SPI_GETWINDOWSEXTENSION = SYSTEM_PARAMETERS_INFO_ACTION(92);

const SPI_SETMOUSETRAILS = SYSTEM_PARAMETERS_INFO_ACTION(93);

const SPI_GETMOUSETRAILS = SYSTEM_PARAMETERS_INFO_ACTION(94);

const SPI_SETSCREENSAVERRUNNING = SYSTEM_PARAMETERS_INFO_ACTION(97);

const SPI_SCREENSAVERRUNNING = SYSTEM_PARAMETERS_INFO_ACTION(97);

const SPI_GETFILTERKEYS = SYSTEM_PARAMETERS_INFO_ACTION(50);

const SPI_SETFILTERKEYS = SYSTEM_PARAMETERS_INFO_ACTION(51);

const SPI_GETTOGGLEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(52);

const SPI_SETTOGGLEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(53);

const SPI_GETMOUSEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(54);

const SPI_SETMOUSEKEYS = SYSTEM_PARAMETERS_INFO_ACTION(55);

const SPI_GETSHOWSOUNDS = SYSTEM_PARAMETERS_INFO_ACTION(56);

const SPI_SETSHOWSOUNDS = SYSTEM_PARAMETERS_INFO_ACTION(57);

const SPI_GETSTICKYKEYS = SYSTEM_PARAMETERS_INFO_ACTION(58);

const SPI_SETSTICKYKEYS = SYSTEM_PARAMETERS_INFO_ACTION(59);

const SPI_GETACCESSTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(60);

const SPI_SETACCESSTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(61);

const SPI_GETSERIALKEYS = SYSTEM_PARAMETERS_INFO_ACTION(62);

const SPI_SETSERIALKEYS = SYSTEM_PARAMETERS_INFO_ACTION(63);

const SPI_GETSOUNDSENTRY = SYSTEM_PARAMETERS_INFO_ACTION(64);

const SPI_SETSOUNDSENTRY = SYSTEM_PARAMETERS_INFO_ACTION(65);

const SPI_GETSNAPTODEFBUTTON = SYSTEM_PARAMETERS_INFO_ACTION(95);

const SPI_SETSNAPTODEFBUTTON = SYSTEM_PARAMETERS_INFO_ACTION(96);

const SPI_GETMOUSEHOVERWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(98);

const SPI_SETMOUSEHOVERWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(99);

const SPI_GETMOUSEHOVERHEIGHT = SYSTEM_PARAMETERS_INFO_ACTION(100);

const SPI_SETMOUSEHOVERHEIGHT = SYSTEM_PARAMETERS_INFO_ACTION(101);

const SPI_GETMOUSEHOVERTIME = SYSTEM_PARAMETERS_INFO_ACTION(102);

const SPI_SETMOUSEHOVERTIME = SYSTEM_PARAMETERS_INFO_ACTION(103);

const SPI_GETWHEELSCROLLLINES = SYSTEM_PARAMETERS_INFO_ACTION(104);

const SPI_SETWHEELSCROLLLINES = SYSTEM_PARAMETERS_INFO_ACTION(105);

const SPI_GETMENUSHOWDELAY = SYSTEM_PARAMETERS_INFO_ACTION(106);

const SPI_SETMENUSHOWDELAY = SYSTEM_PARAMETERS_INFO_ACTION(107);

const SPI_GETWHEELSCROLLCHARS = SYSTEM_PARAMETERS_INFO_ACTION(108);

const SPI_SETWHEELSCROLLCHARS = SYSTEM_PARAMETERS_INFO_ACTION(109);

const SPI_GETSHOWIMEUI = SYSTEM_PARAMETERS_INFO_ACTION(110);

const SPI_SETSHOWIMEUI = SYSTEM_PARAMETERS_INFO_ACTION(111);

const SPI_GETMOUSESPEED = SYSTEM_PARAMETERS_INFO_ACTION(112);

const SPI_SETMOUSESPEED = SYSTEM_PARAMETERS_INFO_ACTION(113);

const SPI_GETSCREENSAVERRUNNING = SYSTEM_PARAMETERS_INFO_ACTION(114);

const SPI_GETDESKWALLPAPER = SYSTEM_PARAMETERS_INFO_ACTION(115);

const SPI_GETAUDIODESCRIPTION = SYSTEM_PARAMETERS_INFO_ACTION(116);

const SPI_SETAUDIODESCRIPTION = SYSTEM_PARAMETERS_INFO_ACTION(117);

const SPI_GETSCREENSAVESECURE = SYSTEM_PARAMETERS_INFO_ACTION(118);

const SPI_SETSCREENSAVESECURE = SYSTEM_PARAMETERS_INFO_ACTION(119);

const SPI_GETHUNGAPPTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(120);

const SPI_SETHUNGAPPTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(121);

const SPI_GETWAITTOKILLTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(122);

const SPI_SETWAITTOKILLTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(123);

const SPI_GETWAITTOKILLSERVICETIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(124);

const SPI_SETWAITTOKILLSERVICETIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(125);

const SPI_GETMOUSEDOCKTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(126);

const SPI_SETMOUSEDOCKTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(127);

const SPI_GETPENDOCKTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(128);

const SPI_SETPENDOCKTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(129);

const SPI_GETWINARRANGING = SYSTEM_PARAMETERS_INFO_ACTION(130);

const SPI_SETWINARRANGING = SYSTEM_PARAMETERS_INFO_ACTION(131);

const SPI_GETMOUSEDRAGOUTTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(132);

const SPI_SETMOUSEDRAGOUTTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(133);

const SPI_GETPENDRAGOUTTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(134);

const SPI_SETPENDRAGOUTTHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(135);

const SPI_GETMOUSESIDEMOVETHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(136);

const SPI_SETMOUSESIDEMOVETHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(137);

const SPI_GETPENSIDEMOVETHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(138);

const SPI_SETPENSIDEMOVETHRESHOLD = SYSTEM_PARAMETERS_INFO_ACTION(139);

const SPI_GETDRAGFROMMAXIMIZE = SYSTEM_PARAMETERS_INFO_ACTION(140);

const SPI_SETDRAGFROMMAXIMIZE = SYSTEM_PARAMETERS_INFO_ACTION(141);

const SPI_GETSNAPSIZING = SYSTEM_PARAMETERS_INFO_ACTION(142);

const SPI_SETSNAPSIZING = SYSTEM_PARAMETERS_INFO_ACTION(143);

const SPI_GETDOCKMOVING = SYSTEM_PARAMETERS_INFO_ACTION(144);

const SPI_SETDOCKMOVING = SYSTEM_PARAMETERS_INFO_ACTION(145);

const SPI_GETTOUCHPREDICTIONPARAMETERS = SYSTEM_PARAMETERS_INFO_ACTION(156);

const SPI_SETTOUCHPREDICTIONPARAMETERS = SYSTEM_PARAMETERS_INFO_ACTION(157);

const SPI_GETLOGICALDPIOVERRIDE = SYSTEM_PARAMETERS_INFO_ACTION(158);

const SPI_SETLOGICALDPIOVERRIDE = SYSTEM_PARAMETERS_INFO_ACTION(159);

const SPI_GETMENURECT = SYSTEM_PARAMETERS_INFO_ACTION(162);

const SPI_SETMENURECT = SYSTEM_PARAMETERS_INFO_ACTION(163);

const SPI_GETTOUCHPADPARAMETERS = SYSTEM_PARAMETERS_INFO_ACTION(174);

const SPI_SETTOUCHPADPARAMETERS = SYSTEM_PARAMETERS_INFO_ACTION(175);

const SPI_GETACTIVEWINDOWTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(4096);

const SPI_SETACTIVEWINDOWTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(4097);

const SPI_GETMENUANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4098);

const SPI_SETMENUANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4099);

const SPI_GETCOMBOBOXANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4100);

const SPI_SETCOMBOBOXANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4101);

const SPI_GETLISTBOXSMOOTHSCROLLING = SYSTEM_PARAMETERS_INFO_ACTION(4102);

const SPI_SETLISTBOXSMOOTHSCROLLING = SYSTEM_PARAMETERS_INFO_ACTION(4103);

const SPI_GETGRADIENTCAPTIONS = SYSTEM_PARAMETERS_INFO_ACTION(4104);

const SPI_SETGRADIENTCAPTIONS = SYSTEM_PARAMETERS_INFO_ACTION(4105);

const SPI_GETKEYBOARDCUES = SYSTEM_PARAMETERS_INFO_ACTION(4106);

const SPI_SETKEYBOARDCUES = SYSTEM_PARAMETERS_INFO_ACTION(4107);

const SPI_GETMENUUNDERLINES = SYSTEM_PARAMETERS_INFO_ACTION(4106);

const SPI_SETMENUUNDERLINES = SYSTEM_PARAMETERS_INFO_ACTION(4107);

const SPI_GETACTIVEWNDTRKZORDER = SYSTEM_PARAMETERS_INFO_ACTION(4108);

const SPI_SETACTIVEWNDTRKZORDER = SYSTEM_PARAMETERS_INFO_ACTION(4109);

const SPI_GETHOTTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(4110);

const SPI_SETHOTTRACKING = SYSTEM_PARAMETERS_INFO_ACTION(4111);

const SPI_GETMENUFADE = SYSTEM_PARAMETERS_INFO_ACTION(4114);

const SPI_SETMENUFADE = SYSTEM_PARAMETERS_INFO_ACTION(4115);

const SPI_GETSELECTIONFADE = SYSTEM_PARAMETERS_INFO_ACTION(4116);

const SPI_SETSELECTIONFADE = SYSTEM_PARAMETERS_INFO_ACTION(4117);

const SPI_GETTOOLTIPANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4118);

const SPI_SETTOOLTIPANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4119);

const SPI_GETTOOLTIPFADE = SYSTEM_PARAMETERS_INFO_ACTION(4120);

const SPI_SETTOOLTIPFADE = SYSTEM_PARAMETERS_INFO_ACTION(4121);

const SPI_GETCURSORSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(4122);

const SPI_SETCURSORSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(4123);

const SPI_GETMOUSESONAR = SYSTEM_PARAMETERS_INFO_ACTION(4124);

const SPI_SETMOUSESONAR = SYSTEM_PARAMETERS_INFO_ACTION(4125);

const SPI_GETMOUSECLICKLOCK = SYSTEM_PARAMETERS_INFO_ACTION(4126);

const SPI_SETMOUSECLICKLOCK = SYSTEM_PARAMETERS_INFO_ACTION(4127);

const SPI_GETMOUSEVANISH = SYSTEM_PARAMETERS_INFO_ACTION(4128);

const SPI_SETMOUSEVANISH = SYSTEM_PARAMETERS_INFO_ACTION(4129);

const SPI_GETFLATMENU = SYSTEM_PARAMETERS_INFO_ACTION(4130);

const SPI_SETFLATMENU = SYSTEM_PARAMETERS_INFO_ACTION(4131);

const SPI_GETDROPSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(4132);

const SPI_SETDROPSHADOW = SYSTEM_PARAMETERS_INFO_ACTION(4133);

const SPI_GETBLOCKSENDINPUTRESETS = SYSTEM_PARAMETERS_INFO_ACTION(4134);

const SPI_SETBLOCKSENDINPUTRESETS = SYSTEM_PARAMETERS_INFO_ACTION(4135);

const SPI_GETUIEFFECTS = SYSTEM_PARAMETERS_INFO_ACTION(4158);

const SPI_SETUIEFFECTS = SYSTEM_PARAMETERS_INFO_ACTION(4159);

const SPI_GETDISABLEOVERLAPPEDCONTENT = SYSTEM_PARAMETERS_INFO_ACTION(4160);

const SPI_SETDISABLEOVERLAPPEDCONTENT = SYSTEM_PARAMETERS_INFO_ACTION(4161);

const SPI_GETCLIENTAREAANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4162);

const SPI_SETCLIENTAREAANIMATION = SYSTEM_PARAMETERS_INFO_ACTION(4163);

const SPI_GETCLEARTYPE = SYSTEM_PARAMETERS_INFO_ACTION(4168);

const SPI_SETCLEARTYPE = SYSTEM_PARAMETERS_INFO_ACTION(4169);

const SPI_GETSPEECHRECOGNITION = SYSTEM_PARAMETERS_INFO_ACTION(4170);

const SPI_SETSPEECHRECOGNITION = SYSTEM_PARAMETERS_INFO_ACTION(4171);

const SPI_GETCARETBROWSING = SYSTEM_PARAMETERS_INFO_ACTION(4172);

const SPI_SETCARETBROWSING = SYSTEM_PARAMETERS_INFO_ACTION(4173);

const SPI_GETTHREADLOCALINPUTSETTINGS = SYSTEM_PARAMETERS_INFO_ACTION(4174);

const SPI_SETTHREADLOCALINPUTSETTINGS = SYSTEM_PARAMETERS_INFO_ACTION(4175);

const SPI_GETSYSTEMLANGUAGEBAR = SYSTEM_PARAMETERS_INFO_ACTION(4176);

const SPI_SETSYSTEMLANGUAGEBAR = SYSTEM_PARAMETERS_INFO_ACTION(4177);

const SPI_GETFOREGROUNDLOCKTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(8192);

const SPI_SETFOREGROUNDLOCKTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(8193);

const SPI_GETACTIVEWNDTRKTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(8194);

const SPI_SETACTIVEWNDTRKTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(8195);

const SPI_GETFOREGROUNDFLASHCOUNT = SYSTEM_PARAMETERS_INFO_ACTION(8196);

const SPI_SETFOREGROUNDFLASHCOUNT = SYSTEM_PARAMETERS_INFO_ACTION(8197);

const SPI_GETCARETWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(8198);

const SPI_SETCARETWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(8199);

const SPI_GETMOUSECLICKLOCKTIME = SYSTEM_PARAMETERS_INFO_ACTION(8200);

const SPI_SETMOUSECLICKLOCKTIME = SYSTEM_PARAMETERS_INFO_ACTION(8201);

const SPI_GETFONTSMOOTHINGTYPE = SYSTEM_PARAMETERS_INFO_ACTION(8202);

const SPI_SETFONTSMOOTHINGTYPE = SYSTEM_PARAMETERS_INFO_ACTION(8203);

const SPI_GETFONTSMOOTHINGCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(8204);

const SPI_SETFONTSMOOTHINGCONTRAST = SYSTEM_PARAMETERS_INFO_ACTION(8205);

const SPI_GETFOCUSBORDERWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(8206);

const SPI_SETFOCUSBORDERWIDTH = SYSTEM_PARAMETERS_INFO_ACTION(8207);

const SPI_GETFOCUSBORDERHEIGHT = SYSTEM_PARAMETERS_INFO_ACTION(8208);

const SPI_SETFOCUSBORDERHEIGHT = SYSTEM_PARAMETERS_INFO_ACTION(8209);

const SPI_GETFONTSMOOTHINGORIENTATION = SYSTEM_PARAMETERS_INFO_ACTION(8210);

const SPI_SETFONTSMOOTHINGORIENTATION = SYSTEM_PARAMETERS_INFO_ACTION(8211);

const SPI_GETMINIMUMHITRADIUS = SYSTEM_PARAMETERS_INFO_ACTION(8212);

const SPI_SETMINIMUMHITRADIUS = SYSTEM_PARAMETERS_INFO_ACTION(8213);

const SPI_GETMESSAGEDURATION = SYSTEM_PARAMETERS_INFO_ACTION(8214);

const SPI_SETMESSAGEDURATION = SYSTEM_PARAMETERS_INFO_ACTION(8215);

const SPI_GETCONTACTVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(8216);

const SPI_SETCONTACTVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(8217);

const SPI_GETGESTUREVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(8218);

const SPI_SETGESTUREVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(8219);

const SPI_GETMOUSEWHEELROUTING = SYSTEM_PARAMETERS_INFO_ACTION(8220);

const SPI_SETMOUSEWHEELROUTING = SYSTEM_PARAMETERS_INFO_ACTION(8221);

const SPI_GETPENVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(8222);

const SPI_SETPENVISUALIZATION = SYSTEM_PARAMETERS_INFO_ACTION(8223);

const SPI_GETPENARBITRATIONTYPE = SYSTEM_PARAMETERS_INFO_ACTION(8224);

const SPI_SETPENARBITRATIONTYPE = SYSTEM_PARAMETERS_INFO_ACTION(8225);

const SPI_GETCARETTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(8226);

const SPI_SETCARETTIMEOUT = SYSTEM_PARAMETERS_INFO_ACTION(8227);

const SPI_GETHANDEDNESS = SYSTEM_PARAMETERS_INFO_ACTION(8228);

const SPI_SETHANDEDNESS = SYSTEM_PARAMETERS_INFO_ACTION(8229);

/// {@category enum}
extension type const SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS other) => _ & other._ == other._;

  SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS operator &(int other) => .new(_ & other);
  SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS operator |(int other) => .new(_ | other);
}

const SPIF_UPDATEINIFILE = SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(1);

const SPIF_SENDCHANGE = SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(2);

const SPIF_SENDWININICHANGE = SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(2);

/// {@category enum}
extension type const SYS_COLOR_INDEX(int _) implements int {}

const COLOR_SCROLLBAR = SYS_COLOR_INDEX(0);

const COLOR_BACKGROUND = SYS_COLOR_INDEX(1);

const COLOR_ACTIVECAPTION = SYS_COLOR_INDEX(2);

const COLOR_INACTIVECAPTION = SYS_COLOR_INDEX(3);

const COLOR_MENU = SYS_COLOR_INDEX(4);

const COLOR_WINDOW = SYS_COLOR_INDEX(5);

const COLOR_WINDOWFRAME = SYS_COLOR_INDEX(6);

const COLOR_MENUTEXT = SYS_COLOR_INDEX(7);

const COLOR_WINDOWTEXT = SYS_COLOR_INDEX(8);

const COLOR_CAPTIONTEXT = SYS_COLOR_INDEX(9);

const COLOR_ACTIVEBORDER = SYS_COLOR_INDEX(10);

const COLOR_INACTIVEBORDER = SYS_COLOR_INDEX(11);

const COLOR_APPWORKSPACE = SYS_COLOR_INDEX(12);

const COLOR_HIGHLIGHT = SYS_COLOR_INDEX(13);

const COLOR_HIGHLIGHTTEXT = SYS_COLOR_INDEX(14);

const COLOR_BTNFACE = SYS_COLOR_INDEX(15);

const COLOR_BTNSHADOW = SYS_COLOR_INDEX(16);

const COLOR_GRAYTEXT = SYS_COLOR_INDEX(17);

const COLOR_BTNTEXT = SYS_COLOR_INDEX(18);

const COLOR_INACTIVECAPTIONTEXT = SYS_COLOR_INDEX(19);

const COLOR_BTNHIGHLIGHT = SYS_COLOR_INDEX(20);

const COLOR_3DDKSHADOW = SYS_COLOR_INDEX(21);

const COLOR_3DLIGHT = SYS_COLOR_INDEX(22);

const COLOR_INFOTEXT = SYS_COLOR_INDEX(23);

const COLOR_INFOBK = SYS_COLOR_INDEX(24);

const COLOR_HOTLIGHT = SYS_COLOR_INDEX(26);

const COLOR_GRADIENTACTIVECAPTION = SYS_COLOR_INDEX(27);

const COLOR_GRADIENTINACTIVECAPTION = SYS_COLOR_INDEX(28);

const COLOR_MENUHILIGHT = SYS_COLOR_INDEX(29);

const COLOR_MENUBAR = SYS_COLOR_INDEX(30);

const COLOR_DESKTOP = SYS_COLOR_INDEX(1);

const COLOR_3DFACE = SYS_COLOR_INDEX(15);

const COLOR_3DSHADOW = SYS_COLOR_INDEX(16);

const COLOR_3DHIGHLIGHT = SYS_COLOR_INDEX(20);

const COLOR_3DHILIGHT = SYS_COLOR_INDEX(20);

const COLOR_BTNHILIGHT = SYS_COLOR_INDEX(20);

/// Contains values that specify the direction and distance to scroll.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-scrollamount>.
///
/// {@category enum}
extension type const ScrollAmount(int _) implements int {}

/// Scrolling is done in large decrements, equivalent to pressing the PAGE UP
/// key or clicking on a blank part of a scroll bar.
const ScrollAmount_LargeDecrement = ScrollAmount(0);

/// Scrolling is done in small decrements, equivalent to pressing an arrow key
/// or clicking the arrow button on a scroll bar.
const ScrollAmount_SmallDecrement = ScrollAmount(1);

/// No scrolling is done.
const ScrollAmount_NoAmount = ScrollAmount(2);

/// Scrolling is done in large increments, equivalent to pressing the PAGE DOWN
/// or PAGE UP key or clicking on a blank part of a scroll bar.
const ScrollAmount_LargeIncrement = ScrollAmount(3);

/// Scrolling is done in small increments, equivalent to pressing an arrow key
/// or clicking the arrow button on a scroll bar.
const ScrollAmount_SmallIncrement = ScrollAmount(4);

/// Defines possible operational states for sensors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/ne-sensorsapi-sensorstate>.
///
/// {@category enum}
extension type const SensorState(int _) implements int {}

/// Minimum enumerated sensor state.
const SENSOR_STATE_MIN = SensorState(0);

/// Ready to send sensor data.
const SENSOR_STATE_READY = SensorState(0);

/// The sensor is not available for use.
const SENSOR_STATE_NOT_AVAILABLE = SensorState(1);

/// The sensor is available but does not have data.
const SENSOR_STATE_NO_DATA = SensorState(2);

/// The sensor is available, but performing initialization.
const SENSOR_STATE_INITIALIZING = SensorState(3);

/// The sensor is available, but the user account does not have permission to
/// access the sensor data.
const SENSOR_STATE_ACCESS_DENIED = SensorState(4);

/// The sensor has raised an error.
const SENSOR_STATE_ERROR = SensorState(5);

/// Maximum enumerated sensor state.
const SENSOR_STATE_MAX = SensorState(5);

/// {@category enum}
extension type const SpeechAudioFormatType(int _) implements int {}

const SAFTDefault = SpeechAudioFormatType(-1);

const SAFTNoAssignedFormat = SpeechAudioFormatType(0);

const SAFTText = SpeechAudioFormatType(1);

const SAFTNonStandardFormat = SpeechAudioFormatType(2);

const SAFTExtendedAudioFormat = SpeechAudioFormatType(3);

const SAFT8kHz8BitMono = SpeechAudioFormatType(4);

const SAFT8kHz8BitStereo = SpeechAudioFormatType(5);

const SAFT8kHz16BitMono = SpeechAudioFormatType(6);

const SAFT8kHz16BitStereo = SpeechAudioFormatType(7);

const SAFT11kHz8BitMono = SpeechAudioFormatType(8);

const SAFT11kHz8BitStereo = SpeechAudioFormatType(9);

const SAFT11kHz16BitMono = SpeechAudioFormatType(10);

const SAFT11kHz16BitStereo = SpeechAudioFormatType(11);

const SAFT12kHz8BitMono = SpeechAudioFormatType(12);

const SAFT12kHz8BitStereo = SpeechAudioFormatType(13);

const SAFT12kHz16BitMono = SpeechAudioFormatType(14);

const SAFT12kHz16BitStereo = SpeechAudioFormatType(15);

const SAFT16kHz8BitMono = SpeechAudioFormatType(16);

const SAFT16kHz8BitStereo = SpeechAudioFormatType(17);

const SAFT16kHz16BitMono = SpeechAudioFormatType(18);

const SAFT16kHz16BitStereo = SpeechAudioFormatType(19);

const SAFT22kHz8BitMono = SpeechAudioFormatType(20);

const SAFT22kHz8BitStereo = SpeechAudioFormatType(21);

const SAFT22kHz16BitMono = SpeechAudioFormatType(22);

const SAFT22kHz16BitStereo = SpeechAudioFormatType(23);

const SAFT24kHz8BitMono = SpeechAudioFormatType(24);

const SAFT24kHz8BitStereo = SpeechAudioFormatType(25);

const SAFT24kHz16BitMono = SpeechAudioFormatType(26);

const SAFT24kHz16BitStereo = SpeechAudioFormatType(27);

const SAFT32kHz8BitMono = SpeechAudioFormatType(28);

const SAFT32kHz8BitStereo = SpeechAudioFormatType(29);

const SAFT32kHz16BitMono = SpeechAudioFormatType(30);

const SAFT32kHz16BitStereo = SpeechAudioFormatType(31);

const SAFT44kHz8BitMono = SpeechAudioFormatType(32);

const SAFT44kHz8BitStereo = SpeechAudioFormatType(33);

const SAFT44kHz16BitMono = SpeechAudioFormatType(34);

const SAFT44kHz16BitStereo = SpeechAudioFormatType(35);

const SAFT48kHz8BitMono = SpeechAudioFormatType(36);

const SAFT48kHz8BitStereo = SpeechAudioFormatType(37);

const SAFT48kHz16BitMono = SpeechAudioFormatType(38);

const SAFT48kHz16BitStereo = SpeechAudioFormatType(39);

const SAFTTrueSpeech_8kHz1BitMono = SpeechAudioFormatType(40);

const SAFTCCITT_ALaw_8kHzMono = SpeechAudioFormatType(41);

const SAFTCCITT_ALaw_8kHzStereo = SpeechAudioFormatType(42);

const SAFTCCITT_ALaw_11kHzMono = SpeechAudioFormatType(43);

const SAFTCCITT_ALaw_11kHzStereo = SpeechAudioFormatType(44);

const SAFTCCITT_ALaw_22kHzMono = SpeechAudioFormatType(45);

const SAFTCCITT_ALaw_22kHzStereo = SpeechAudioFormatType(46);

const SAFTCCITT_ALaw_44kHzMono = SpeechAudioFormatType(47);

const SAFTCCITT_ALaw_44kHzStereo = SpeechAudioFormatType(48);

const SAFTCCITT_uLaw_8kHzMono = SpeechAudioFormatType(49);

const SAFTCCITT_uLaw_8kHzStereo = SpeechAudioFormatType(50);

const SAFTCCITT_uLaw_11kHzMono = SpeechAudioFormatType(51);

const SAFTCCITT_uLaw_11kHzStereo = SpeechAudioFormatType(52);

const SAFTCCITT_uLaw_22kHzMono = SpeechAudioFormatType(53);

const SAFTCCITT_uLaw_22kHzStereo = SpeechAudioFormatType(54);

const SAFTCCITT_uLaw_44kHzMono = SpeechAudioFormatType(55);

const SAFTCCITT_uLaw_44kHzStereo = SpeechAudioFormatType(56);

const SAFTADPCM_8kHzMono = SpeechAudioFormatType(57);

const SAFTADPCM_8kHzStereo = SpeechAudioFormatType(58);

const SAFTADPCM_11kHzMono = SpeechAudioFormatType(59);

const SAFTADPCM_11kHzStereo = SpeechAudioFormatType(60);

const SAFTADPCM_22kHzMono = SpeechAudioFormatType(61);

const SAFTADPCM_22kHzStereo = SpeechAudioFormatType(62);

const SAFTADPCM_44kHzMono = SpeechAudioFormatType(63);

const SAFTADPCM_44kHzStereo = SpeechAudioFormatType(64);

const SAFTGSM610_8kHzMono = SpeechAudioFormatType(65);

const SAFTGSM610_11kHzMono = SpeechAudioFormatType(66);

const SAFTGSM610_22kHzMono = SpeechAudioFormatType(67);

const SAFTGSM610_44kHzMono = SpeechAudioFormatType(68);

/// {@category enum}
extension type const SpeechDataKeyLocation(int _) implements int {}

const SDKLDefaultLocation = SpeechDataKeyLocation(0);

const SDKLCurrentUser = SpeechDataKeyLocation(1);

const SDKLLocalMachine = SpeechDataKeyLocation(2);

const SDKLCurrentConfig = SpeechDataKeyLocation(5);

/// {@category enum}
extension type const SpeechRunState(int _) implements int {}

const SRSEDone = SpeechRunState(1);

const SRSEIsSpeaking = SpeechRunState(2);

/// {@category enum}
extension type const SpeechStreamSeekPositionType(int _) implements int {}

const SSSPTRelativeToStart = SpeechStreamSeekPositionType(0);

const SSSPTRelativeToCurrentPosition = SpeechStreamSeekPositionType(1);

const SSSPTRelativeToEnd = SpeechStreamSeekPositionType(2);

/// {@category enum}
extension type const SpeechTokenContext(int _) implements int {}

const STCInprocServer = SpeechTokenContext(1);

const STCInprocHandler = SpeechTokenContext(2);

const STCLocalServer = SpeechTokenContext(4);

const STCRemoteServer = SpeechTokenContext(16);

const STCAll = SpeechTokenContext(23);

/// {@category enum}
extension type const SpeechTokenShellFolder(int _) implements int {}

const STSF_AppData = SpeechTokenShellFolder(26);

const STSF_LocalAppData = SpeechTokenShellFolder(28);

const STSF_CommonAppData = SpeechTokenShellFolder(35);

const STSF_FlagCreate = SpeechTokenShellFolder(32768);

/// {@category enum}
extension type const SpeechVoiceEvents(int _) implements int {}

const SVEStartInputStream = SpeechVoiceEvents(2);

const SVEEndInputStream = SpeechVoiceEvents(4);

const SVEVoiceChange = SpeechVoiceEvents(8);

const SVEBookmark = SpeechVoiceEvents(16);

const SVEWordBoundary = SpeechVoiceEvents(32);

const SVEPhoneme = SpeechVoiceEvents(64);

const SVESentenceBoundary = SpeechVoiceEvents(128);

const SVEViseme = SpeechVoiceEvents(256);

const SVEAudioLevel = SpeechVoiceEvents(512);

const SVEPrivate = SpeechVoiceEvents(32768);

const SVEAllEvents = SpeechVoiceEvents(33790);

/// {@category enum}
extension type const SpeechVoicePriority(int _) implements int {}

const SVPNormal = SpeechVoicePriority(0);

const SVPAlert = SpeechVoicePriority(1);

const SVPOver = SpeechVoicePriority(2);

/// {@category enum}
extension type const SpeechVoiceSpeakFlags(int _) implements int {}

const SVSFDefault = SpeechVoiceSpeakFlags(0);

const SVSFlagsAsync = SpeechVoiceSpeakFlags(1);

const SVSFPurgeBeforeSpeak = SpeechVoiceSpeakFlags(2);

const SVSFIsFilename = SpeechVoiceSpeakFlags(4);

const SVSFIsXML = SpeechVoiceSpeakFlags(8);

const SVSFIsNotXML = SpeechVoiceSpeakFlags(16);

const SVSFPersistXML = SpeechVoiceSpeakFlags(32);

const SVSFNLPSpeakPunc = SpeechVoiceSpeakFlags(64);

const SVSFParseSapi = SpeechVoiceSpeakFlags(128);

const SVSFParseSsml = SpeechVoiceSpeakFlags(256);

const SVSFParseAutodetect = SpeechVoiceSpeakFlags(0);

const SVSFNLPMask = SpeechVoiceSpeakFlags(64);

const SVSFParseMask = SpeechVoiceSpeakFlags(384);

const SVSFVoiceMask = SpeechVoiceSpeakFlags(511);

const SVSFUnusedFlags = SpeechVoiceSpeakFlags(-512);

/// Contains values that specify the type of change in the Microsoft UI
/// Automation tree structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-structurechangetype>.
///
/// {@category enum}
extension type const StructureChangeType(int _) implements int {}

/// A child element was added to the UI Automation element tree.
const StructureChangeType_ChildAdded = StructureChangeType(0);

/// A child element was removed from the UI Automation element tree.
const StructureChangeType_ChildRemoved = StructureChangeType(1);

/// Child elements were invalidated in the UI Automation element tree.
const StructureChangeType_ChildrenInvalidated = StructureChangeType(2);

/// Child elements were added in bulk to the UI Automation element tree.
const StructureChangeType_ChildrenBulkAdded = StructureChangeType(3);

/// Child elements were removed in bulk from the UI Automation element tree.
const StructureChangeType_ChildrenBulkRemoved = StructureChangeType(4);

/// The order of child elements has changed in the UI Automation element tree.
const StructureChangeType_ChildrenReordered = StructureChangeType(5);

/// Contains values that specify the supported text selection attribute.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-supportedtextselection>.
///
/// {@category enum}
extension type const SupportedTextSelection(int _) implements int {}

/// Does not support text selections.
const SupportedTextSelection_None = SupportedTextSelection(0);

/// Supports a single, continuous text selection.
const SupportedTextSelection_Single = SupportedTextSelection(1);

/// Supports multiple, disjoint text selections.
const SupportedTextSelection_Multiple = SupportedTextSelection(2);

/// Contains values that specify the type of synchronized input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-synchronizedinputtype>.
///
/// {@category enum}
extension type const SynchronizedInputType(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(SynchronizedInputType other) => _ & other._ == other._;

  SynchronizedInputType operator &(int other) => .new(_ & other);
  SynchronizedInputType operator |(int other) => .new(_ | other);
}

/// A key has been released.
const SynchronizedInputType_KeyUp = SynchronizedInputType(1);

/// A key has been pressed.
const SynchronizedInputType_KeyDown = SynchronizedInputType(2);

/// The left mouse button has been released.
const SynchronizedInputType_LeftMouseUp = SynchronizedInputType(4);

/// The left mouse button has been pressed.
const SynchronizedInputType_LeftMouseDown = SynchronizedInputType(8);

/// The right mouse button has been released.
const SynchronizedInputType_RightMouseUp = SynchronizedInputType(16);

/// The right mouse button has been pressed.
const SynchronizedInputType_RightMouseDown = SynchronizedInputType(32);

/// {@category enum}
extension type const TASKDIALOG_COMMON_BUTTON_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(TASKDIALOG_COMMON_BUTTON_FLAGS other) => _ & other._ == other._;

  TASKDIALOG_COMMON_BUTTON_FLAGS operator &(int other) => .new(_ & other);
  TASKDIALOG_COMMON_BUTTON_FLAGS operator |(int other) => .new(_ | other);
}

const TDCBF_OK_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(1);

const TDCBF_YES_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(2);

const TDCBF_NO_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(4);

const TDCBF_CANCEL_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(8);

const TDCBF_RETRY_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(16);

const TDCBF_CLOSE_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(32);

const TDCBF_ABORT_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(65536);

const TDCBF_IGNORE_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(131072);

const TDCBF_TRYAGAIN_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(262144);

const TDCBF_CONTINUE_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(524288);

const TDCBF_HELP_BUTTON = TASKDIALOG_COMMON_BUTTON_FLAGS(1048576);

/// {@category enum}
extension type const TASKDIALOG_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(TASKDIALOG_FLAGS other) => _ & other._ == other._;

  TASKDIALOG_FLAGS operator &(int other) => .new(_ & other);
  TASKDIALOG_FLAGS operator |(int other) => .new(_ | other);
}

const TDF_ENABLE_HYPERLINKS = TASKDIALOG_FLAGS(1);

const TDF_USE_HICON_MAIN = TASKDIALOG_FLAGS(2);

const TDF_USE_HICON_FOOTER = TASKDIALOG_FLAGS(4);

const TDF_ALLOW_DIALOG_CANCELLATION = TASKDIALOG_FLAGS(8);

const TDF_USE_COMMAND_LINKS = TASKDIALOG_FLAGS(16);

const TDF_USE_COMMAND_LINKS_NO_ICON = TASKDIALOG_FLAGS(32);

const TDF_EXPAND_FOOTER_AREA = TASKDIALOG_FLAGS(64);

const TDF_EXPANDED_BY_DEFAULT = TASKDIALOG_FLAGS(128);

const TDF_VERIFICATION_FLAG_CHECKED = TASKDIALOG_FLAGS(256);

const TDF_SHOW_PROGRESS_BAR = TASKDIALOG_FLAGS(512);

const TDF_SHOW_MARQUEE_PROGRESS_BAR = TASKDIALOG_FLAGS(1024);

const TDF_CALLBACK_TIMER = TASKDIALOG_FLAGS(2048);

const TDF_POSITION_RELATIVE_TO_WINDOW = TASKDIALOG_FLAGS(4096);

const TDF_RTL_LAYOUT = TASKDIALOG_FLAGS(8192);

const TDF_NO_DEFAULT_RADIO_BUTTON = TASKDIALOG_FLAGS(16384);

const TDF_CAN_BE_MINIMIZED = TASKDIALOG_FLAGS(32768);

const TDF_NO_SET_FOREGROUND = TASKDIALOG_FLAGS(65536);

const TDF_SIZE_TO_CONTENT = TASKDIALOG_FLAGS(16777216);

/// Identifies the type of size value to retrieve for a visual style part.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ne-uxtheme-themesize>.
///
/// {@category enum}
extension type const THEMESIZE(int _) implements int {}

/// Receives the minimum size of a visual style part.
const TS_MIN = THEMESIZE(0);

/// Receives the size of the visual style part that will best fit the available
/// space.
const TS_TRUE = THEMESIZE(1);

/// Receives the size that the theme manager uses to draw a part.
const TS_DRAW = THEMESIZE(2);

/// {@category enum}
extension type const THEME_PROPERTY_SYMBOL_ID(int _) implements int {}

const TMT_RESERVEDLOW = THEME_PROPERTY_SYMBOL_ID(0);

const TMT_RESERVEDHIGH = THEME_PROPERTY_SYMBOL_ID(7999);

const TMT_DIBDATA = THEME_PROPERTY_SYMBOL_ID(2);

const TMT_GLYPHDIBDATA = THEME_PROPERTY_SYMBOL_ID(8);

const TMT_ENUM = THEME_PROPERTY_SYMBOL_ID(200);

const TMT_STRING = THEME_PROPERTY_SYMBOL_ID(201);

const TMT_INT = THEME_PROPERTY_SYMBOL_ID(202);

const TMT_BOOL = THEME_PROPERTY_SYMBOL_ID(203);

const TMT_COLOR = THEME_PROPERTY_SYMBOL_ID(204);

const TMT_MARGINS = THEME_PROPERTY_SYMBOL_ID(205);

const TMT_FILENAME = THEME_PROPERTY_SYMBOL_ID(206);

const TMT_SIZE = THEME_PROPERTY_SYMBOL_ID(207);

const TMT_POSITION = THEME_PROPERTY_SYMBOL_ID(208);

const TMT_RECT = THEME_PROPERTY_SYMBOL_ID(209);

const TMT_FONT = THEME_PROPERTY_SYMBOL_ID(210);

const TMT_INTLIST = THEME_PROPERTY_SYMBOL_ID(211);

const TMT_HBITMAP = THEME_PROPERTY_SYMBOL_ID(212);

const TMT_DISKSTREAM = THEME_PROPERTY_SYMBOL_ID(213);

const TMT_STREAM = THEME_PROPERTY_SYMBOL_ID(214);

const TMT_BITMAPREF = THEME_PROPERTY_SYMBOL_ID(215);

const TMT_FLOAT = THEME_PROPERTY_SYMBOL_ID(216);

const TMT_FLOATLIST = THEME_PROPERTY_SYMBOL_ID(217);

const TMT_COLORSCHEMES = THEME_PROPERTY_SYMBOL_ID(401);

const TMT_SIZES = THEME_PROPERTY_SYMBOL_ID(402);

const TMT_CHARSET = THEME_PROPERTY_SYMBOL_ID(403);

const TMT_NAME = THEME_PROPERTY_SYMBOL_ID(600);

const TMT_DISPLAYNAME = THEME_PROPERTY_SYMBOL_ID(601);

const TMT_TOOLTIP = THEME_PROPERTY_SYMBOL_ID(602);

const TMT_COMPANY = THEME_PROPERTY_SYMBOL_ID(603);

const TMT_AUTHOR = THEME_PROPERTY_SYMBOL_ID(604);

const TMT_COPYRIGHT = THEME_PROPERTY_SYMBOL_ID(605);

const TMT_URL = THEME_PROPERTY_SYMBOL_ID(606);

const TMT_VERSION = THEME_PROPERTY_SYMBOL_ID(607);

const TMT_DESCRIPTION = THEME_PROPERTY_SYMBOL_ID(608);

const TMT_FIRST_RCSTRING_NAME = THEME_PROPERTY_SYMBOL_ID(601);

const TMT_LAST_RCSTRING_NAME = THEME_PROPERTY_SYMBOL_ID(608);

const TMT_CAPTIONFONT = THEME_PROPERTY_SYMBOL_ID(801);

const TMT_SMALLCAPTIONFONT = THEME_PROPERTY_SYMBOL_ID(802);

const TMT_MENUFONT = THEME_PROPERTY_SYMBOL_ID(803);

const TMT_STATUSFONT = THEME_PROPERTY_SYMBOL_ID(804);

const TMT_MSGBOXFONT = THEME_PROPERTY_SYMBOL_ID(805);

const TMT_ICONTITLEFONT = THEME_PROPERTY_SYMBOL_ID(806);

const TMT_HEADING1FONT = THEME_PROPERTY_SYMBOL_ID(807);

const TMT_HEADING2FONT = THEME_PROPERTY_SYMBOL_ID(808);

const TMT_BODYFONT = THEME_PROPERTY_SYMBOL_ID(809);

const TMT_FIRSTFONT = THEME_PROPERTY_SYMBOL_ID(801);

const TMT_LASTFONT = THEME_PROPERTY_SYMBOL_ID(809);

const TMT_FLATMENUS = THEME_PROPERTY_SYMBOL_ID(1001);

const TMT_FIRSTBOOL = THEME_PROPERTY_SYMBOL_ID(1001);

const TMT_LASTBOOL = THEME_PROPERTY_SYMBOL_ID(1001);

const TMT_SIZINGBORDERWIDTH = THEME_PROPERTY_SYMBOL_ID(1201);

const TMT_SCROLLBARWIDTH = THEME_PROPERTY_SYMBOL_ID(1202);

const TMT_SCROLLBARHEIGHT = THEME_PROPERTY_SYMBOL_ID(1203);

const TMT_CAPTIONBARWIDTH = THEME_PROPERTY_SYMBOL_ID(1204);

const TMT_CAPTIONBARHEIGHT = THEME_PROPERTY_SYMBOL_ID(1205);

const TMT_SMCAPTIONBARWIDTH = THEME_PROPERTY_SYMBOL_ID(1206);

const TMT_SMCAPTIONBARHEIGHT = THEME_PROPERTY_SYMBOL_ID(1207);

const TMT_MENUBARWIDTH = THEME_PROPERTY_SYMBOL_ID(1208);

const TMT_MENUBARHEIGHT = THEME_PROPERTY_SYMBOL_ID(1209);

const TMT_PADDEDBORDERWIDTH = THEME_PROPERTY_SYMBOL_ID(1210);

const TMT_FIRSTSIZE = THEME_PROPERTY_SYMBOL_ID(1201);

const TMT_LASTSIZE = THEME_PROPERTY_SYMBOL_ID(1210);

const TMT_MINCOLORDEPTH = THEME_PROPERTY_SYMBOL_ID(1301);

const TMT_FIRSTINT = THEME_PROPERTY_SYMBOL_ID(1301);

const TMT_LASTINT = THEME_PROPERTY_SYMBOL_ID(1301);

const TMT_CSSNAME = THEME_PROPERTY_SYMBOL_ID(1401);

const TMT_XMLNAME = THEME_PROPERTY_SYMBOL_ID(1402);

const TMT_LASTUPDATED = THEME_PROPERTY_SYMBOL_ID(1403);

const TMT_ALIAS = THEME_PROPERTY_SYMBOL_ID(1404);

const TMT_FIRSTSTRING = THEME_PROPERTY_SYMBOL_ID(1401);

const TMT_LASTSTRING = THEME_PROPERTY_SYMBOL_ID(1404);

const TMT_SCROLLBAR = THEME_PROPERTY_SYMBOL_ID(1601);

const TMT_BACKGROUND = THEME_PROPERTY_SYMBOL_ID(1602);

const TMT_ACTIVECAPTION = THEME_PROPERTY_SYMBOL_ID(1603);

const TMT_INACTIVECAPTION = THEME_PROPERTY_SYMBOL_ID(1604);

const TMT_MENU = THEME_PROPERTY_SYMBOL_ID(1605);

const TMT_WINDOW = THEME_PROPERTY_SYMBOL_ID(1606);

const TMT_WINDOWFRAME = THEME_PROPERTY_SYMBOL_ID(1607);

const TMT_MENUTEXT = THEME_PROPERTY_SYMBOL_ID(1608);

const TMT_WINDOWTEXT = THEME_PROPERTY_SYMBOL_ID(1609);

const TMT_CAPTIONTEXT = THEME_PROPERTY_SYMBOL_ID(1610);

const TMT_ACTIVEBORDER = THEME_PROPERTY_SYMBOL_ID(1611);

const TMT_INACTIVEBORDER = THEME_PROPERTY_SYMBOL_ID(1612);

const TMT_APPWORKSPACE = THEME_PROPERTY_SYMBOL_ID(1613);

const TMT_HIGHLIGHT = THEME_PROPERTY_SYMBOL_ID(1614);

const TMT_HIGHLIGHTTEXT = THEME_PROPERTY_SYMBOL_ID(1615);

const TMT_BTNFACE = THEME_PROPERTY_SYMBOL_ID(1616);

const TMT_BTNSHADOW = THEME_PROPERTY_SYMBOL_ID(1617);

const TMT_GRAYTEXT = THEME_PROPERTY_SYMBOL_ID(1618);

const TMT_BTNTEXT = THEME_PROPERTY_SYMBOL_ID(1619);

const TMT_INACTIVECAPTIONTEXT = THEME_PROPERTY_SYMBOL_ID(1620);

const TMT_BTNHIGHLIGHT = THEME_PROPERTY_SYMBOL_ID(1621);

const TMT_DKSHADOW3D = THEME_PROPERTY_SYMBOL_ID(1622);

const TMT_LIGHT3D = THEME_PROPERTY_SYMBOL_ID(1623);

const TMT_INFOTEXT = THEME_PROPERTY_SYMBOL_ID(1624);

const TMT_INFOBK = THEME_PROPERTY_SYMBOL_ID(1625);

const TMT_BUTTONALTERNATEFACE = THEME_PROPERTY_SYMBOL_ID(1626);

const TMT_HOTTRACKING = THEME_PROPERTY_SYMBOL_ID(1627);

const TMT_GRADIENTACTIVECAPTION = THEME_PROPERTY_SYMBOL_ID(1628);

const TMT_GRADIENTINACTIVECAPTION = THEME_PROPERTY_SYMBOL_ID(1629);

const TMT_MENUHILIGHT = THEME_PROPERTY_SYMBOL_ID(1630);

const TMT_MENUBAR = THEME_PROPERTY_SYMBOL_ID(1631);

const TMT_FIRSTCOLOR = THEME_PROPERTY_SYMBOL_ID(1601);

const TMT_LASTCOLOR = THEME_PROPERTY_SYMBOL_ID(1631);

const TMT_FROMHUE1 = THEME_PROPERTY_SYMBOL_ID(1801);

const TMT_FROMHUE2 = THEME_PROPERTY_SYMBOL_ID(1802);

const TMT_FROMHUE3 = THEME_PROPERTY_SYMBOL_ID(1803);

const TMT_FROMHUE4 = THEME_PROPERTY_SYMBOL_ID(1804);

const TMT_FROMHUE5 = THEME_PROPERTY_SYMBOL_ID(1805);

const TMT_TOHUE1 = THEME_PROPERTY_SYMBOL_ID(1806);

const TMT_TOHUE2 = THEME_PROPERTY_SYMBOL_ID(1807);

const TMT_TOHUE3 = THEME_PROPERTY_SYMBOL_ID(1808);

const TMT_TOHUE4 = THEME_PROPERTY_SYMBOL_ID(1809);

const TMT_TOHUE5 = THEME_PROPERTY_SYMBOL_ID(1810);

const TMT_FROMCOLOR1 = THEME_PROPERTY_SYMBOL_ID(2001);

const TMT_FROMCOLOR2 = THEME_PROPERTY_SYMBOL_ID(2002);

const TMT_FROMCOLOR3 = THEME_PROPERTY_SYMBOL_ID(2003);

const TMT_FROMCOLOR4 = THEME_PROPERTY_SYMBOL_ID(2004);

const TMT_FROMCOLOR5 = THEME_PROPERTY_SYMBOL_ID(2005);

const TMT_TOCOLOR1 = THEME_PROPERTY_SYMBOL_ID(2006);

const TMT_TOCOLOR2 = THEME_PROPERTY_SYMBOL_ID(2007);

const TMT_TOCOLOR3 = THEME_PROPERTY_SYMBOL_ID(2008);

const TMT_TOCOLOR4 = THEME_PROPERTY_SYMBOL_ID(2009);

const TMT_TOCOLOR5 = THEME_PROPERTY_SYMBOL_ID(2010);

const TMT_TRANSPARENT = THEME_PROPERTY_SYMBOL_ID(2201);

const TMT_AUTOSIZE = THEME_PROPERTY_SYMBOL_ID(2202);

const TMT_BORDERONLY = THEME_PROPERTY_SYMBOL_ID(2203);

const TMT_COMPOSITED = THEME_PROPERTY_SYMBOL_ID(2204);

const TMT_BGFILL = THEME_PROPERTY_SYMBOL_ID(2205);

const TMT_GLYPHTRANSPARENT = THEME_PROPERTY_SYMBOL_ID(2206);

const TMT_GLYPHONLY = THEME_PROPERTY_SYMBOL_ID(2207);

const TMT_ALWAYSSHOWSIZINGBAR = THEME_PROPERTY_SYMBOL_ID(2208);

const TMT_MIRRORIMAGE = THEME_PROPERTY_SYMBOL_ID(2209);

const TMT_UNIFORMSIZING = THEME_PROPERTY_SYMBOL_ID(2210);

const TMT_INTEGRALSIZING = THEME_PROPERTY_SYMBOL_ID(2211);

const TMT_SOURCEGROW = THEME_PROPERTY_SYMBOL_ID(2212);

const TMT_SOURCESHRINK = THEME_PROPERTY_SYMBOL_ID(2213);

const TMT_DRAWBORDERS = THEME_PROPERTY_SYMBOL_ID(2214);

const TMT_NOETCHEDEFFECT = THEME_PROPERTY_SYMBOL_ID(2215);

const TMT_TEXTAPPLYOVERLAY = THEME_PROPERTY_SYMBOL_ID(2216);

const TMT_TEXTGLOW = THEME_PROPERTY_SYMBOL_ID(2217);

const TMT_TEXTITALIC = THEME_PROPERTY_SYMBOL_ID(2218);

const TMT_COMPOSITEDOPAQUE = THEME_PROPERTY_SYMBOL_ID(2219);

const TMT_LOCALIZEDMIRRORIMAGE = THEME_PROPERTY_SYMBOL_ID(2220);

const TMT_IMAGECOUNT = THEME_PROPERTY_SYMBOL_ID(2401);

const TMT_ALPHALEVEL = THEME_PROPERTY_SYMBOL_ID(2402);

const TMT_BORDERSIZE = THEME_PROPERTY_SYMBOL_ID(2403);

const TMT_ROUNDCORNERWIDTH = THEME_PROPERTY_SYMBOL_ID(2404);

const TMT_ROUNDCORNERHEIGHT = THEME_PROPERTY_SYMBOL_ID(2405);

const TMT_GRADIENTRATIO1 = THEME_PROPERTY_SYMBOL_ID(2406);

const TMT_GRADIENTRATIO2 = THEME_PROPERTY_SYMBOL_ID(2407);

const TMT_GRADIENTRATIO3 = THEME_PROPERTY_SYMBOL_ID(2408);

const TMT_GRADIENTRATIO4 = THEME_PROPERTY_SYMBOL_ID(2409);

const TMT_GRADIENTRATIO5 = THEME_PROPERTY_SYMBOL_ID(2410);

const TMT_PROGRESSCHUNKSIZE = THEME_PROPERTY_SYMBOL_ID(2411);

const TMT_PROGRESSSPACESIZE = THEME_PROPERTY_SYMBOL_ID(2412);

const TMT_SATURATION = THEME_PROPERTY_SYMBOL_ID(2413);

const TMT_TEXTBORDERSIZE = THEME_PROPERTY_SYMBOL_ID(2414);

const TMT_ALPHATHRESHOLD = THEME_PROPERTY_SYMBOL_ID(2415);

const TMT_WIDTH = THEME_PROPERTY_SYMBOL_ID(2416);

const TMT_HEIGHT = THEME_PROPERTY_SYMBOL_ID(2417);

const TMT_GLYPHINDEX = THEME_PROPERTY_SYMBOL_ID(2418);

const TMT_TRUESIZESTRETCHMARK = THEME_PROPERTY_SYMBOL_ID(2419);

const TMT_MINDPI1 = THEME_PROPERTY_SYMBOL_ID(2420);

const TMT_MINDPI2 = THEME_PROPERTY_SYMBOL_ID(2421);

const TMT_MINDPI3 = THEME_PROPERTY_SYMBOL_ID(2422);

const TMT_MINDPI4 = THEME_PROPERTY_SYMBOL_ID(2423);

const TMT_MINDPI5 = THEME_PROPERTY_SYMBOL_ID(2424);

const TMT_TEXTGLOWSIZE = THEME_PROPERTY_SYMBOL_ID(2425);

const TMT_FRAMESPERSECOND = THEME_PROPERTY_SYMBOL_ID(2426);

const TMT_PIXELSPERFRAME = THEME_PROPERTY_SYMBOL_ID(2427);

const TMT_ANIMATIONDELAY = THEME_PROPERTY_SYMBOL_ID(2428);

const TMT_GLOWINTENSITY = THEME_PROPERTY_SYMBOL_ID(2429);

const TMT_OPACITY = THEME_PROPERTY_SYMBOL_ID(2430);

const TMT_COLORIZATIONCOLOR = THEME_PROPERTY_SYMBOL_ID(2431);

const TMT_COLORIZATIONOPACITY = THEME_PROPERTY_SYMBOL_ID(2432);

const TMT_MINDPI6 = THEME_PROPERTY_SYMBOL_ID(2433);

const TMT_MINDPI7 = THEME_PROPERTY_SYMBOL_ID(2434);

const TMT_GLYPHFONT = THEME_PROPERTY_SYMBOL_ID(2601);

const TMT_IMAGEFILE = THEME_PROPERTY_SYMBOL_ID(3001);

const TMT_IMAGEFILE1 = THEME_PROPERTY_SYMBOL_ID(3002);

const TMT_IMAGEFILE2 = THEME_PROPERTY_SYMBOL_ID(3003);

const TMT_IMAGEFILE3 = THEME_PROPERTY_SYMBOL_ID(3004);

const TMT_IMAGEFILE4 = THEME_PROPERTY_SYMBOL_ID(3005);

const TMT_IMAGEFILE5 = THEME_PROPERTY_SYMBOL_ID(3006);

const TMT_GLYPHIMAGEFILE = THEME_PROPERTY_SYMBOL_ID(3008);

const TMT_IMAGEFILE6 = THEME_PROPERTY_SYMBOL_ID(3009);

const TMT_IMAGEFILE7 = THEME_PROPERTY_SYMBOL_ID(3010);

const TMT_TEXT = THEME_PROPERTY_SYMBOL_ID(3201);

const TMT_CLASSICVALUE = THEME_PROPERTY_SYMBOL_ID(3202);

const TMT_OFFSET = THEME_PROPERTY_SYMBOL_ID(3401);

const TMT_TEXTSHADOWOFFSET = THEME_PROPERTY_SYMBOL_ID(3402);

const TMT_MINSIZE = THEME_PROPERTY_SYMBOL_ID(3403);

const TMT_MINSIZE1 = THEME_PROPERTY_SYMBOL_ID(3404);

const TMT_MINSIZE2 = THEME_PROPERTY_SYMBOL_ID(3405);

const TMT_MINSIZE3 = THEME_PROPERTY_SYMBOL_ID(3406);

const TMT_MINSIZE4 = THEME_PROPERTY_SYMBOL_ID(3407);

const TMT_MINSIZE5 = THEME_PROPERTY_SYMBOL_ID(3408);

const TMT_NORMALSIZE = THEME_PROPERTY_SYMBOL_ID(3409);

const TMT_MINSIZE6 = THEME_PROPERTY_SYMBOL_ID(3410);

const TMT_MINSIZE7 = THEME_PROPERTY_SYMBOL_ID(3411);

const TMT_SIZINGMARGINS = THEME_PROPERTY_SYMBOL_ID(3601);

const TMT_CONTENTMARGINS = THEME_PROPERTY_SYMBOL_ID(3602);

const TMT_CAPTIONMARGINS = THEME_PROPERTY_SYMBOL_ID(3603);

const TMT_BORDERCOLOR = THEME_PROPERTY_SYMBOL_ID(3801);

const TMT_FILLCOLOR = THEME_PROPERTY_SYMBOL_ID(3802);

const TMT_TEXTCOLOR = THEME_PROPERTY_SYMBOL_ID(3803);

const TMT_EDGELIGHTCOLOR = THEME_PROPERTY_SYMBOL_ID(3804);

const TMT_EDGEHIGHLIGHTCOLOR = THEME_PROPERTY_SYMBOL_ID(3805);

const TMT_EDGESHADOWCOLOR = THEME_PROPERTY_SYMBOL_ID(3806);

const TMT_EDGEDKSHADOWCOLOR = THEME_PROPERTY_SYMBOL_ID(3807);

const TMT_EDGEFILLCOLOR = THEME_PROPERTY_SYMBOL_ID(3808);

const TMT_TRANSPARENTCOLOR = THEME_PROPERTY_SYMBOL_ID(3809);

const TMT_GRADIENTCOLOR1 = THEME_PROPERTY_SYMBOL_ID(3810);

const TMT_GRADIENTCOLOR2 = THEME_PROPERTY_SYMBOL_ID(3811);

const TMT_GRADIENTCOLOR3 = THEME_PROPERTY_SYMBOL_ID(3812);

const TMT_GRADIENTCOLOR4 = THEME_PROPERTY_SYMBOL_ID(3813);

const TMT_GRADIENTCOLOR5 = THEME_PROPERTY_SYMBOL_ID(3814);

const TMT_SHADOWCOLOR = THEME_PROPERTY_SYMBOL_ID(3815);

const TMT_GLOWCOLOR = THEME_PROPERTY_SYMBOL_ID(3816);

const TMT_TEXTBORDERCOLOR = THEME_PROPERTY_SYMBOL_ID(3817);

const TMT_TEXTSHADOWCOLOR = THEME_PROPERTY_SYMBOL_ID(3818);

const TMT_GLYPHTEXTCOLOR = THEME_PROPERTY_SYMBOL_ID(3819);

const TMT_GLYPHTRANSPARENTCOLOR = THEME_PROPERTY_SYMBOL_ID(3820);

const TMT_FILLCOLORHINT = THEME_PROPERTY_SYMBOL_ID(3821);

const TMT_BORDERCOLORHINT = THEME_PROPERTY_SYMBOL_ID(3822);

const TMT_ACCENTCOLORHINT = THEME_PROPERTY_SYMBOL_ID(3823);

const TMT_TEXTCOLORHINT = THEME_PROPERTY_SYMBOL_ID(3824);

const TMT_HEADING1TEXTCOLOR = THEME_PROPERTY_SYMBOL_ID(3825);

const TMT_HEADING2TEXTCOLOR = THEME_PROPERTY_SYMBOL_ID(3826);

const TMT_BODYTEXTCOLOR = THEME_PROPERTY_SYMBOL_ID(3827);

const TMT_BGTYPE = THEME_PROPERTY_SYMBOL_ID(4001);

const TMT_BORDERTYPE = THEME_PROPERTY_SYMBOL_ID(4002);

const TMT_FILLTYPE = THEME_PROPERTY_SYMBOL_ID(4003);

const TMT_SIZINGTYPE = THEME_PROPERTY_SYMBOL_ID(4004);

const TMT_HALIGN = THEME_PROPERTY_SYMBOL_ID(4005);

const TMT_CONTENTALIGNMENT = THEME_PROPERTY_SYMBOL_ID(4006);

const TMT_VALIGN = THEME_PROPERTY_SYMBOL_ID(4007);

const TMT_OFFSETTYPE = THEME_PROPERTY_SYMBOL_ID(4008);

const TMT_ICONEFFECT = THEME_PROPERTY_SYMBOL_ID(4009);

const TMT_TEXTSHADOWTYPE = THEME_PROPERTY_SYMBOL_ID(4010);

const TMT_IMAGELAYOUT = THEME_PROPERTY_SYMBOL_ID(4011);

const TMT_GLYPHTYPE = THEME_PROPERTY_SYMBOL_ID(4012);

const TMT_IMAGESELECTTYPE = THEME_PROPERTY_SYMBOL_ID(4013);

const TMT_GLYPHFONTSIZINGTYPE = THEME_PROPERTY_SYMBOL_ID(4014);

const TMT_TRUESIZESCALINGTYPE = THEME_PROPERTY_SYMBOL_ID(4015);

const TMT_USERPICTURE = THEME_PROPERTY_SYMBOL_ID(5001);

const TMT_DEFAULTPANESIZE = THEME_PROPERTY_SYMBOL_ID(5002);

const TMT_BLENDCOLOR = THEME_PROPERTY_SYMBOL_ID(5003);

const TMT_CUSTOMSPLITRECT = THEME_PROPERTY_SYMBOL_ID(5004);

const TMT_ANIMATIONBUTTONRECT = THEME_PROPERTY_SYMBOL_ID(5005);

const TMT_ANIMATIONDURATION = THEME_PROPERTY_SYMBOL_ID(5006);

const TMT_TRANSITIONDURATIONS = THEME_PROPERTY_SYMBOL_ID(6000);

const TMT_SCALEDBACKGROUND = THEME_PROPERTY_SYMBOL_ID(7001);

const TMT_ATLASIMAGE = THEME_PROPERTY_SYMBOL_ID(8000);

const TMT_ATLASINPUTIMAGE = THEME_PROPERTY_SYMBOL_ID(8001);

const TMT_ATLASRECT = THEME_PROPERTY_SYMBOL_ID(8002);

/// {@category enum}
extension type const THREAD_CREATION_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(THREAD_CREATION_FLAGS other) => _ & other._ == other._;

  THREAD_CREATION_FLAGS operator &(int other) => .new(_ & other);
  THREAD_CREATION_FLAGS operator |(int other) => .new(_ | other);
}

const THREAD_CREATE_RUN_IMMEDIATELY = THREAD_CREATION_FLAGS(0);

const THREAD_CREATE_SUSPENDED = THREAD_CREATION_FLAGS(4);

const STACK_SIZE_PARAM_IS_A_RESERVATION = THREAD_CREATION_FLAGS(65536);

/// {@category enum}
extension type const THREAD_ERROR_MODE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(THREAD_ERROR_MODE other) => _ & other._ == other._;

  THREAD_ERROR_MODE operator &(int other) => .new(_ & other);
  THREAD_ERROR_MODE operator |(int other) => .new(_ | other);
}

const SEM_ALL_ERRORS = THREAD_ERROR_MODE(0);

const SEM_FAILCRITICALERRORS = THREAD_ERROR_MODE(1);

const SEM_NOGPFAULTERRORBOX = THREAD_ERROR_MODE(2);

const SEM_NOOPENFILEERRORBOX = THREAD_ERROR_MODE(32768);

const SEM_NOALIGNMENTFAULTEXCEPT = THREAD_ERROR_MODE(4);

/// {@category enum}
extension type const TILE_WINDOWS_HOW(int _) implements int {}

const MDITILE_HORIZONTAL = TILE_WINDOWS_HOW(1);

const MDITILE_VERTICAL = TILE_WINDOWS_HOW(0);

/// {@category enum}
extension type const TMPF_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(TMPF_FLAGS other) => _ & other._ == other._;

  TMPF_FLAGS operator &(int other) => .new(_ & other);
  TMPF_FLAGS operator |(int other) => .new(_ | other);
}

const TMPF_FIXED_PITCH = TMPF_FLAGS(1);

const TMPF_VECTOR = TMPF_FLAGS(2);

const TMPF_DEVICE = TMPF_FLAGS(8);

const TMPF_TRUETYPE = TMPF_FLAGS(4);

/// {@category enum}
extension type const TOKEN_ACCESS_MASK(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(TOKEN_ACCESS_MASK other) => _ & other._ == other._;

  TOKEN_ACCESS_MASK operator &(int other) => .new(_ & other);
  TOKEN_ACCESS_MASK operator |(int other) => .new(_ | other);
}

const TOKEN_DELETE = TOKEN_ACCESS_MASK(65536);

const TOKEN_READ_CONTROL = TOKEN_ACCESS_MASK(131072);

const TOKEN_WRITE_DAC = TOKEN_ACCESS_MASK(262144);

const TOKEN_WRITE_OWNER = TOKEN_ACCESS_MASK(524288);

const TOKEN_ACCESS_SYSTEM_SECURITY = TOKEN_ACCESS_MASK(16777216);

const TOKEN_ASSIGN_PRIMARY = TOKEN_ACCESS_MASK(1);

const TOKEN_DUPLICATE = TOKEN_ACCESS_MASK(2);

const TOKEN_IMPERSONATE = TOKEN_ACCESS_MASK(4);

const TOKEN_QUERY = TOKEN_ACCESS_MASK(8);

const TOKEN_QUERY_SOURCE = TOKEN_ACCESS_MASK(16);

const TOKEN_ADJUST_PRIVILEGES = TOKEN_ACCESS_MASK(32);

const TOKEN_ADJUST_GROUPS = TOKEN_ACCESS_MASK(64);

const TOKEN_ADJUST_DEFAULT = TOKEN_ACCESS_MASK(128);

const TOKEN_ADJUST_SESSIONID = TOKEN_ACCESS_MASK(256);

const TOKEN_READ = TOKEN_ACCESS_MASK(131080);

const TOKEN_WRITE = TOKEN_ACCESS_MASK(131296);

const TOKEN_EXECUTE = TOKEN_ACCESS_MASK(131072);

const TOKEN_TRUST_CONSTRAINT_MASK = TOKEN_ACCESS_MASK(131096);

const TOKEN_ACCESS_PSEUDO_HANDLE_WIN8 = TOKEN_ACCESS_MASK(24);

const TOKEN_ACCESS_PSEUDO_HANDLE = TOKEN_ACCESS_MASK(24);

const TOKEN_ALL_ACCESS = TOKEN_ACCESS_MASK(983551);

/// Contains values that specify the type of information being assigned to or
/// retrieved from an access token.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/ne-winnt-token_information_class>.
///
/// {@category enum}
extension type const TOKEN_INFORMATION_CLASS(int _) implements int {}

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_user">TOKEN_USER</a>
/// structure that contains the user account of the token.
const TokenUser = TOKEN_INFORMATION_CLASS(1);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_groups">TOKEN_GROUPS</a>
/// structure that contains the group accounts associated with the token.
const TokenGroups = TOKEN_INFORMATION_CLASS(2);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_privileges">TOKEN_PRIVILEGES</a>
/// structure that contains the privileges of the token.
const TokenPrivileges = TOKEN_INFORMATION_CLASS(3);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_owner">TOKEN_OWNER</a>
/// structure that contains the default owner <a
/// href="https://docs.microsoft.com/windows/desktop/SecGloss/s-gly">security
/// identifier</a> (SID) for newly created objects.
const TokenOwner = TOKEN_INFORMATION_CLASS(4);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_primary_group">TOKEN_PRIMARY_GROUP</a>
/// structure that contains the default primary group SID for newly created
/// objects.
const TokenPrimaryGroup = TOKEN_INFORMATION_CLASS(5);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_default_dacl">TOKEN_DEFAULT_DACL</a>
/// structure that contains the default DACL for newly created objects.
const TokenDefaultDacl = TOKEN_INFORMATION_CLASS(6);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_source">TOKEN_SOURCE</a>
/// structure that contains the source of the token.
const TokenSource = TOKEN_INFORMATION_CLASS(7);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ne-winnt-token_type">TOKEN_TYPE</a>
/// value that indicates whether the token is a <a
/// href="https://docs.microsoft.com/windows/desktop/SecGloss/p-gly">primary</a>
/// or <a
/// href="https://docs.microsoft.com/windows/desktop/SecGloss/i-gly">impersonation
/// token</a>.
const TokenType = TOKEN_INFORMATION_CLASS(8);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ne-winnt-security_impersonation_level">SECURITY_IMPERSONATION_LEVEL</a>
/// value that indicates the impersonation level of the token.
const TokenImpersonationLevel = TOKEN_INFORMATION_CLASS(9);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_statistics">TOKEN_STATISTICS</a>
/// structure that contains various token statistics.
const TokenStatistics = TOKEN_INFORMATION_CLASS(10);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_groups">TOKEN_GROUPS</a>
/// structure that contains the list of restricting SIDs in a <a
/// href="https://docs.microsoft.com/windows/desktop/SecAuthZ/restricted-tokens">restricted
/// token</a>.
const TokenRestrictedSids = TOKEN_INFORMATION_CLASS(11);

/// The buffer receives a <b>DWORD</b> value that indicates the Terminal
/// Services session identifier that is associated with the token.
const TokenSessionId = TOKEN_INFORMATION_CLASS(12);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_groups_and_privileges">TOKEN_GROUPS_AND_PRIVILEGES</a>
/// structure that contains the user SID, the group accounts, the restricted
/// SIDs, and the authentication ID associated with the token.
const TokenGroupsAndPrivileges = TOKEN_INFORMATION_CLASS(13);

/// Reserved.
const TokenSessionReference = TOKEN_INFORMATION_CLASS(14);

/// The buffer receives a <b>DWORD</b> value that is nonzero if the token
/// includes the <b>SANDBOX_INERT</b> flag.
const TokenSandBoxInert = TOKEN_INFORMATION_CLASS(15);

/// Reserved.
const TokenAuditPolicy = TOKEN_INFORMATION_CLASS(16);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_origin">TOKEN_ORIGIN</a>
/// value.
const TokenOrigin = TOKEN_INFORMATION_CLASS(17);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ne-winnt-token_elevation_type">TOKEN_ELEVATION_TYPE</a>
/// value that specifies the elevation level of the token.
const TokenElevationType = TOKEN_INFORMATION_CLASS(18);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_linked_token">TOKEN_LINKED_TOKEN</a>
/// structure that contains a handle to another token that is linked to this
/// token.
const TokenLinkedToken = TOKEN_INFORMATION_CLASS(19);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_elevation">TOKEN_ELEVATION</a>
/// structure that specifies whether the token is elevated.
const TokenElevation = TOKEN_INFORMATION_CLASS(20);

/// The buffer receives a <b>DWORD</b> value that is nonzero if the token has
/// ever been filtered.
const TokenHasRestrictions = TOKEN_INFORMATION_CLASS(21);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_access_information">TOKEN_ACCESS_INFORMATION</a>
/// structure that specifies security information contained in the token.
const TokenAccessInformation = TOKEN_INFORMATION_CLASS(22);

/// The buffer receives a <b>DWORD</b> value that is nonzero if <a
/// href="https://docs.microsoft.com/windows/desktop/SecGloss/v-gly">virtualization</a>
/// is allowed for the token.
const TokenVirtualizationAllowed = TOKEN_INFORMATION_CLASS(23);

/// The buffer receives a <b>DWORD</b> value that is nonzero if <a
/// href="https://docs.microsoft.com/windows/desktop/SecGloss/v-gly">virtualization</a>
/// is enabled for the token.
const TokenVirtualizationEnabled = TOKEN_INFORMATION_CLASS(24);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_mandatory_label">TOKEN_MANDATORY_LABEL</a>
/// structure that specifies the token's integrity level.
const TokenIntegrityLevel = TOKEN_INFORMATION_CLASS(25);

/// The buffer receives a <b>DWORD</b> value that is nonzero if the token has
/// the UIAccess flag set.
const TokenUIAccess = TOKEN_INFORMATION_CLASS(26);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_mandatory_policy">TOKEN_MANDATORY_POLICY</a>
/// structure that specifies the token's mandatory integrity policy.
const TokenMandatoryPolicy = TOKEN_INFORMATION_CLASS(27);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_groups">TOKEN_GROUPS</a>
/// structure that specifies the token's logon SID.
const TokenLogonSid = TOKEN_INFORMATION_CLASS(28);

/// The buffer receives a <b>DWORD</b> value that is nonzero if the token is an
/// app container token.
const TokenIsAppContainer = TOKEN_INFORMATION_CLASS(29);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_groups">TOKEN_GROUPS</a>
/// structure that contains the capabilities associated with the token.
const TokenCapabilities = TOKEN_INFORMATION_CLASS(30);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_appcontainer_information">TOKEN_APPCONTAINER_INFORMATION</a>
/// structure that contains the AppContainerSid associated with the token.
const TokenAppContainerSid = TOKEN_INFORMATION_CLASS(31);

/// The buffer receives a <b>DWORD</b> value that includes the app container
/// number for the token.
const TokenAppContainerNumber = TOKEN_INFORMATION_CLASS(32);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-claim_security_attributes_information">CLAIM_SECURITY_ATTRIBUTES_INFORMATION</a>
/// structure that contains the user claims associated with the token.
const TokenUserClaimAttributes = TOKEN_INFORMATION_CLASS(33);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-claim_security_attributes_information">CLAIM_SECURITY_ATTRIBUTES_INFORMATION</a>
/// structure that contains the device claims associated with the token.
const TokenDeviceClaimAttributes = TOKEN_INFORMATION_CLASS(34);

/// Reserved.
const TokenRestrictedUserClaimAttributes = TOKEN_INFORMATION_CLASS(35);

/// Reserved.
const TokenRestrictedDeviceClaimAttributes = TOKEN_INFORMATION_CLASS(36);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_groups">TOKEN_GROUPS</a>
/// structure that contains the device groups that are associated with the
/// token.
const TokenDeviceGroups = TOKEN_INFORMATION_CLASS(37);

/// The buffer receives a <a
/// href="https://docs.microsoft.com/windows/desktop/api/winnt/ns-winnt-token_groups">TOKEN_GROUPS</a>
/// structure that contains the restricted device groups that are associated
/// with the token.
const TokenRestrictedDeviceGroups = TOKEN_INFORMATION_CLASS(38);

/// Reserved.
const TokenSecurityAttributes = TOKEN_INFORMATION_CLASS(39);

/// Reserved.
const TokenIsRestricted = TOKEN_INFORMATION_CLASS(40);

const TokenProcessTrustLevel = TOKEN_INFORMATION_CLASS(41);

const TokenPrivateNameSpace = TOKEN_INFORMATION_CLASS(42);

const TokenSingletonAttributes = TOKEN_INFORMATION_CLASS(43);

const TokenBnoIsolation = TOKEN_INFORMATION_CLASS(44);

const TokenChildProcessFlags = TOKEN_INFORMATION_CLASS(45);

const TokenIsLessPrivilegedAppContainer = TOKEN_INFORMATION_CLASS(46);

const TokenIsSandboxed = TOKEN_INFORMATION_CLASS(47);

const TokenIsAppSilo = TOKEN_INFORMATION_CLASS(48);

const TokenLoggingInformation = TOKEN_INFORMATION_CLASS(49);

const TokenLearningMode = TOKEN_INFORMATION_CLASS(50);

/// The maximum value for this enumeration.
const MaxTokenInfoClass = TOKEN_INFORMATION_CLASS(51);

/// {@category enum}
extension type const TOUCHEVENTF_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(TOUCHEVENTF_FLAGS other) => _ & other._ == other._;

  TOUCHEVENTF_FLAGS operator &(int other) => .new(_ & other);
  TOUCHEVENTF_FLAGS operator |(int other) => .new(_ | other);
}

const TOUCHEVENTF_MOVE = TOUCHEVENTF_FLAGS(1);

const TOUCHEVENTF_DOWN = TOUCHEVENTF_FLAGS(2);

const TOUCHEVENTF_UP = TOUCHEVENTF_FLAGS(4);

const TOUCHEVENTF_INRANGE = TOUCHEVENTF_FLAGS(8);

const TOUCHEVENTF_PRIMARY = TOUCHEVENTF_FLAGS(16);

const TOUCHEVENTF_NOCOALESCE = TOUCHEVENTF_FLAGS(32);

const TOUCHEVENTF_PEN = TOUCHEVENTF_FLAGS(64);

const TOUCHEVENTF_PALM = TOUCHEVENTF_FLAGS(128);

/// {@category enum}
extension type const TOUCHINPUTMASKF_MASK(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(TOUCHINPUTMASKF_MASK other) => _ & other._ == other._;

  TOUCHINPUTMASKF_MASK operator &(int other) => .new(_ & other);
  TOUCHINPUTMASKF_MASK operator |(int other) => .new(_ | other);
}

const TOUCHINPUTMASKF_TIMEFROMSYSTEM = TOUCHINPUTMASKF_MASK(1);

const TOUCHINPUTMASKF_EXTRAINFO = TOUCHINPUTMASKF_MASK(2);

const TOUCHINPUTMASKF_CONTACTAREA = TOUCHINPUTMASKF_MASK(4);

/// {@category enum}
extension type const TRACK_POPUP_MENU_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(TRACK_POPUP_MENU_FLAGS other) => _ & other._ == other._;

  TRACK_POPUP_MENU_FLAGS operator &(int other) => .new(_ & other);
  TRACK_POPUP_MENU_FLAGS operator |(int other) => .new(_ | other);
}

const TPM_LEFTBUTTON = TRACK_POPUP_MENU_FLAGS(0);

const TPM_RIGHTBUTTON = TRACK_POPUP_MENU_FLAGS(2);

const TPM_LEFTALIGN = TRACK_POPUP_MENU_FLAGS(0);

const TPM_CENTERALIGN = TRACK_POPUP_MENU_FLAGS(4);

const TPM_RIGHTALIGN = TRACK_POPUP_MENU_FLAGS(8);

const TPM_TOPALIGN = TRACK_POPUP_MENU_FLAGS(0);

const TPM_VCENTERALIGN = TRACK_POPUP_MENU_FLAGS(16);

const TPM_BOTTOMALIGN = TRACK_POPUP_MENU_FLAGS(32);

const TPM_HORIZONTAL = TRACK_POPUP_MENU_FLAGS(0);

const TPM_VERTICAL = TRACK_POPUP_MENU_FLAGS(64);

const TPM_NONOTIFY = TRACK_POPUP_MENU_FLAGS(128);

const TPM_RETURNCMD = TRACK_POPUP_MENU_FLAGS(256);

const TPM_RECURSE = TRACK_POPUP_MENU_FLAGS(1);

const TPM_HORPOSANIMATION = TRACK_POPUP_MENU_FLAGS(1024);

const TPM_HORNEGANIMATION = TRACK_POPUP_MENU_FLAGS(2048);

const TPM_VERPOSANIMATION = TRACK_POPUP_MENU_FLAGS(4096);

const TPM_VERNEGANIMATION = TRACK_POPUP_MENU_FLAGS(8192);

const TPM_NOANIMATION = TRACK_POPUP_MENU_FLAGS(16384);

const TPM_LAYOUTRTL = TRACK_POPUP_MENU_FLAGS(32768);

const TPM_WORKAREA = TRACK_POPUP_MENU_FLAGS(65536);

/// Defines the encapsulation method used by a tunnel, as described by the
/// Internet Assigned Names Authority (IANA).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ifdef/ne-ifdef-tunnel_type>.
///
/// {@category enum}
extension type const TUNNEL_TYPE(int _) implements int {}

/// Indicates that a tunnel is not specified.
const TUNNEL_TYPE_NONE = TUNNEL_TYPE(0);

/// Indicates that none of the following tunnel types is specified.
const TUNNEL_TYPE_OTHER = TUNNEL_TYPE(1);

/// Specifies that a packet is encapsulated directly within a normal IP header,
/// with no intermediate header, and the packet is sent unicast to the remote
/// tunnel endpoint.
const TUNNEL_TYPE_DIRECT = TUNNEL_TYPE(2);

/// Specifies that an IPv6 packet is encapsulated directly within an IPv4
/// header, with no intermediate header, and the packet is sent unicast to the
/// destination determined by the 6to4 protocol.
const TUNNEL_TYPE_6TO4 = TUNNEL_TYPE(11);

/// Specifies that an IPv6 packet is encapsulated directly within an IPv4
/// header, with no intermediate header, and the packet is sent unicast to the
/// destination determined by the ISATAP protocol.
const TUNNEL_TYPE_ISATAP = TUNNEL_TYPE(13);

/// Specifies that the tunnel uses Teredo encapsulation.
const TUNNEL_TYPE_TEREDO = TUNNEL_TYPE(14);

/// Specifies that the tunnel uses IP over Hypertext Transfer Protocol Secure
/// (HTTPS).
const TUNNEL_TYPE_IPHTTPS = TUNNEL_TYPE(15);

/// Specifies a type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-typekind>.
///
/// {@category enum}
extension type const TYPEKIND(int _) implements int {}

/// A set of enumerators.
const TKIND_ENUM = TYPEKIND(0);

/// A structure with no methods.
const TKIND_RECORD = TYPEKIND(1);

/// A module that can only have static functions and data (for example, a DLL).
const TKIND_MODULE = TYPEKIND(2);

/// A type that has virtual and pure functions.
const TKIND_INTERFACE = TYPEKIND(3);

/// A set of methods and properties that are accessible through <a
/// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nf-oaidl-idispatch-invoke">IDispatch::Invoke</a>.
const TKIND_DISPATCH = TYPEKIND(4);

/// A set of implemented component object interfaces.
const TKIND_COCLASS = TYPEKIND(5);

/// A type that is an alias for another type.
const TKIND_ALIAS = TYPEKIND(6);

/// A union, all of whose members have an offset of zero.
const TKIND_UNION = TYPEKIND(7);

/// End of enum marker.
const TKIND_MAX = TYPEKIND(8);

/// Describes the text editing change being performed by controls when text-edit
/// events are raised or handled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-texteditchangetype>.
///
/// {@category enum}
extension type const TextEditChangeType(int _) implements int {}

/// Not related to a specific change type.
const TextEditChangeType_None = TextEditChangeType(0);

/// Change is from an auto-correct action performed by a control.
const TextEditChangeType_AutoCorrect = TextEditChangeType(1);

/// Change is from an IME active composition within a control.
const TextEditChangeType_Composition = TextEditChangeType(2);

/// Change is from an IME composition going from active to finalized state
/// within a control.
const TextEditChangeType_CompositionFinalized = TextEditChangeType(3);

const TextEditChangeType_AutoComplete = TextEditChangeType(4);

/// Contains values that specify the endpoints of a text range.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-textpatternrangeendpoint>.
///
/// {@category enum}
extension type const TextPatternRangeEndpoint(int _) implements int {}

/// The starting endpoint of the range.
const TextPatternRangeEndpoint_Start = TextPatternRangeEndpoint(0);

/// The ending endpoint of the range.
const TextPatternRangeEndpoint_End = TextPatternRangeEndpoint(1);

/// Contains values that specify units of text for the purposes of navigation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-textunit>.
///
/// {@category enum}
extension type const TextUnit(int _) implements int {}

/// Character.
const TextUnit_Character = TextUnit(0);

/// Format.
const TextUnit_Format = TextUnit(1);

/// Word.
const TextUnit_Word = TextUnit(2);

/// Line.
const TextUnit_Line = TextUnit(3);

/// Paragraph.
const TextUnit_Paragraph = TextUnit(4);

/// Page.
const TextUnit_Page = TextUnit(5);

/// Document.
const TextUnit_Document = TextUnit(6);

/// Contains values that specify the toggle state of a Microsoft UI Automation
/// element that implements the Toggle control pattern.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-togglestate>.
///
/// {@category enum}
extension type const ToggleState(int _) implements int {}

/// The UI Automation element is not selected, checked, marked or otherwise
/// activated.
const ToggleState_Off = ToggleState(0);

/// The UI Automation element is selected, checked, marked or otherwise
/// activated.
const ToggleState_On = ToggleState(1);

/// The UI Automation element is in an indeterminate state.
const ToggleState_Indeterminate = ToggleState(2);

/// Contains values that specify the scope of various operations in the
/// Microsoft UI Automation tree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/ne-uiautomationclient-treescope>.
///
/// {@category enum}
extension type const TreeScope(int _) implements int {}

/// The scope excludes the subtree from the search.
const TreeScope_None = TreeScope(0);

/// The scope includes the element itself.
const TreeScope_Element = TreeScope(1);

/// The scope includes children of the element.
const TreeScope_Children = TreeScope(2);

/// The scope includes children and more distant descendants of the element.
const TreeScope_Descendants = TreeScope(4);

/// The scope includes the parent of the element.
const TreeScope_Parent = TreeScope(8);

/// The scope includes the parent and more distant ancestors of the element.
const TreeScope_Ancestors = TreeScope(16);

/// The scope includes the element and all its descendants.
const TreeScope_Subtree = TreeScope(7);

/// Defines values that can be used to customize tree navigation order.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/ne-uiautomationclient-treetraversaloptions>.
///
/// {@category enum}
extension type const TreeTraversalOptions(int _) implements int {}

/// Pre-order, visit children from first to last.
const TreeTraversalOptions_Default = TreeTraversalOptions(0);

/// Post-order.
const TreeTraversalOptions_PostOrder = TreeTraversalOptions(1);

/// Visit children from last to first.
const TreeTraversalOptions_LastToFirstOrder = TreeTraversalOptions(2);

/// Represents the trust level of an activatable class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/inspectable/ne-inspectable-trustlevel>.
///
/// {@category enum}
extension type const TrustLevel(int _) implements int {}

/// The component has access to resources that are not protected.
const BaseTrust = TrustLevel(0);

/// The component has access to resources requested in the app manifest and
/// approved by the user.
const PartialTrust = TrustLevel(1);

/// The component requires the full privileges of the user.
const FullTrust = TrustLevel(2);

/// {@category enum}
extension type const UIA_ANNOTATIONTYPE(int _) implements int {}

const AnnotationType_Unknown = UIA_ANNOTATIONTYPE(60000);

const AnnotationType_SpellingError = UIA_ANNOTATIONTYPE(60001);

const AnnotationType_GrammarError = UIA_ANNOTATIONTYPE(60002);

const AnnotationType_Comment = UIA_ANNOTATIONTYPE(60003);

const AnnotationType_FormulaError = UIA_ANNOTATIONTYPE(60004);

const AnnotationType_TrackChanges = UIA_ANNOTATIONTYPE(60005);

const AnnotationType_Header = UIA_ANNOTATIONTYPE(60006);

const AnnotationType_Footer = UIA_ANNOTATIONTYPE(60007);

const AnnotationType_Highlighted = UIA_ANNOTATIONTYPE(60008);

const AnnotationType_Endnote = UIA_ANNOTATIONTYPE(60009);

const AnnotationType_Footnote = UIA_ANNOTATIONTYPE(60010);

const AnnotationType_InsertionChange = UIA_ANNOTATIONTYPE(60011);

const AnnotationType_DeletionChange = UIA_ANNOTATIONTYPE(60012);

const AnnotationType_MoveChange = UIA_ANNOTATIONTYPE(60013);

const AnnotationType_FormatChange = UIA_ANNOTATIONTYPE(60014);

const AnnotationType_UnsyncedChange = UIA_ANNOTATIONTYPE(60015);

const AnnotationType_EditingLockedChange = UIA_ANNOTATIONTYPE(60016);

const AnnotationType_ExternalChange = UIA_ANNOTATIONTYPE(60017);

const AnnotationType_ConflictingChange = UIA_ANNOTATIONTYPE(60018);

const AnnotationType_Author = UIA_ANNOTATIONTYPE(60019);

const AnnotationType_AdvancedProofingIssue = UIA_ANNOTATIONTYPE(60020);

const AnnotationType_DataValidationError = UIA_ANNOTATIONTYPE(60021);

const AnnotationType_CircularReferenceError = UIA_ANNOTATIONTYPE(60022);

const AnnotationType_Mathematics = UIA_ANNOTATIONTYPE(60023);

const AnnotationType_Sensitive = UIA_ANNOTATIONTYPE(60024);

/// {@category enum}
extension type const UIA_CONTROLTYPE_ID(int _) implements int {}

const UIA_ButtonControlTypeId = UIA_CONTROLTYPE_ID(50000);

const UIA_CalendarControlTypeId = UIA_CONTROLTYPE_ID(50001);

const UIA_CheckBoxControlTypeId = UIA_CONTROLTYPE_ID(50002);

const UIA_ComboBoxControlTypeId = UIA_CONTROLTYPE_ID(50003);

const UIA_EditControlTypeId = UIA_CONTROLTYPE_ID(50004);

const UIA_HyperlinkControlTypeId = UIA_CONTROLTYPE_ID(50005);

const UIA_ImageControlTypeId = UIA_CONTROLTYPE_ID(50006);

const UIA_ListItemControlTypeId = UIA_CONTROLTYPE_ID(50007);

const UIA_ListControlTypeId = UIA_CONTROLTYPE_ID(50008);

const UIA_MenuControlTypeId = UIA_CONTROLTYPE_ID(50009);

const UIA_MenuBarControlTypeId = UIA_CONTROLTYPE_ID(50010);

const UIA_MenuItemControlTypeId = UIA_CONTROLTYPE_ID(50011);

const UIA_ProgressBarControlTypeId = UIA_CONTROLTYPE_ID(50012);

const UIA_RadioButtonControlTypeId = UIA_CONTROLTYPE_ID(50013);

const UIA_ScrollBarControlTypeId = UIA_CONTROLTYPE_ID(50014);

const UIA_SliderControlTypeId = UIA_CONTROLTYPE_ID(50015);

const UIA_SpinnerControlTypeId = UIA_CONTROLTYPE_ID(50016);

const UIA_StatusBarControlTypeId = UIA_CONTROLTYPE_ID(50017);

const UIA_TabControlTypeId = UIA_CONTROLTYPE_ID(50018);

const UIA_TabItemControlTypeId = UIA_CONTROLTYPE_ID(50019);

const UIA_TextControlTypeId = UIA_CONTROLTYPE_ID(50020);

const UIA_ToolBarControlTypeId = UIA_CONTROLTYPE_ID(50021);

const UIA_ToolTipControlTypeId = UIA_CONTROLTYPE_ID(50022);

const UIA_TreeControlTypeId = UIA_CONTROLTYPE_ID(50023);

const UIA_TreeItemControlTypeId = UIA_CONTROLTYPE_ID(50024);

const UIA_CustomControlTypeId = UIA_CONTROLTYPE_ID(50025);

const UIA_GroupControlTypeId = UIA_CONTROLTYPE_ID(50026);

const UIA_ThumbControlTypeId = UIA_CONTROLTYPE_ID(50027);

const UIA_DataGridControlTypeId = UIA_CONTROLTYPE_ID(50028);

const UIA_DataItemControlTypeId = UIA_CONTROLTYPE_ID(50029);

const UIA_DocumentControlTypeId = UIA_CONTROLTYPE_ID(50030);

const UIA_SplitButtonControlTypeId = UIA_CONTROLTYPE_ID(50031);

const UIA_WindowControlTypeId = UIA_CONTROLTYPE_ID(50032);

const UIA_PaneControlTypeId = UIA_CONTROLTYPE_ID(50033);

const UIA_HeaderControlTypeId = UIA_CONTROLTYPE_ID(50034);

const UIA_HeaderItemControlTypeId = UIA_CONTROLTYPE_ID(50035);

const UIA_TableControlTypeId = UIA_CONTROLTYPE_ID(50036);

const UIA_TitleBarControlTypeId = UIA_CONTROLTYPE_ID(50037);

const UIA_SeparatorControlTypeId = UIA_CONTROLTYPE_ID(50038);

const UIA_SemanticZoomControlTypeId = UIA_CONTROLTYPE_ID(50039);

const UIA_AppBarControlTypeId = UIA_CONTROLTYPE_ID(50040);

/// {@category enum}
extension type const UIA_EVENT_ID(int _) implements int {}

const UIA_ToolTipOpenedEventId = UIA_EVENT_ID(20000);

const UIA_ToolTipClosedEventId = UIA_EVENT_ID(20001);

const UIA_StructureChangedEventId = UIA_EVENT_ID(20002);

const UIA_MenuOpenedEventId = UIA_EVENT_ID(20003);

const UIA_AutomationPropertyChangedEventId = UIA_EVENT_ID(20004);

const UIA_AutomationFocusChangedEventId = UIA_EVENT_ID(20005);

const UIA_AsyncContentLoadedEventId = UIA_EVENT_ID(20006);

const UIA_MenuClosedEventId = UIA_EVENT_ID(20007);

const UIA_LayoutInvalidatedEventId = UIA_EVENT_ID(20008);

const UIA_Invoke_InvokedEventId = UIA_EVENT_ID(20009);

const UIA_SelectionItem_ElementAddedToSelectionEventId = UIA_EVENT_ID(20010);

const UIA_SelectionItem_ElementRemovedFromSelectionEventId = UIA_EVENT_ID(
  20011,
);

const UIA_SelectionItem_ElementSelectedEventId = UIA_EVENT_ID(20012);

const UIA_Selection_InvalidatedEventId = UIA_EVENT_ID(20013);

const UIA_Text_TextSelectionChangedEventId = UIA_EVENT_ID(20014);

const UIA_Text_TextChangedEventId = UIA_EVENT_ID(20015);

const UIA_Window_WindowOpenedEventId = UIA_EVENT_ID(20016);

const UIA_Window_WindowClosedEventId = UIA_EVENT_ID(20017);

const UIA_MenuModeStartEventId = UIA_EVENT_ID(20018);

const UIA_MenuModeEndEventId = UIA_EVENT_ID(20019);

const UIA_InputReachedTargetEventId = UIA_EVENT_ID(20020);

const UIA_InputReachedOtherElementEventId = UIA_EVENT_ID(20021);

const UIA_InputDiscardedEventId = UIA_EVENT_ID(20022);

const UIA_SystemAlertEventId = UIA_EVENT_ID(20023);

const UIA_LiveRegionChangedEventId = UIA_EVENT_ID(20024);

const UIA_HostedFragmentRootsInvalidatedEventId = UIA_EVENT_ID(20025);

const UIA_Drag_DragStartEventId = UIA_EVENT_ID(20026);

const UIA_Drag_DragCancelEventId = UIA_EVENT_ID(20027);

const UIA_Drag_DragCompleteEventId = UIA_EVENT_ID(20028);

const UIA_DropTarget_DragEnterEventId = UIA_EVENT_ID(20029);

const UIA_DropTarget_DragLeaveEventId = UIA_EVENT_ID(20030);

const UIA_DropTarget_DroppedEventId = UIA_EVENT_ID(20031);

const UIA_TextEdit_TextChangedEventId = UIA_EVENT_ID(20032);

const UIA_TextEdit_ConversionTargetChangedEventId = UIA_EVENT_ID(20033);

const UIA_ChangesEventId = UIA_EVENT_ID(20034);

const UIA_NotificationEventId = UIA_EVENT_ID(20035);

const UIA_ActiveTextPositionChangedEventId = UIA_EVENT_ID(20036);

/// {@category enum}
extension type const UIA_HEADINGLEVEL_ID(int _) implements int {}

const HeadingLevel_None = UIA_HEADINGLEVEL_ID(80050);

const HeadingLevel1 = UIA_HEADINGLEVEL_ID(80051);

const HeadingLevel2 = UIA_HEADINGLEVEL_ID(80052);

const HeadingLevel3 = UIA_HEADINGLEVEL_ID(80053);

const HeadingLevel4 = UIA_HEADINGLEVEL_ID(80054);

const HeadingLevel5 = UIA_HEADINGLEVEL_ID(80055);

const HeadingLevel6 = UIA_HEADINGLEVEL_ID(80056);

const HeadingLevel7 = UIA_HEADINGLEVEL_ID(80057);

const HeadingLevel8 = UIA_HEADINGLEVEL_ID(80058);

const HeadingLevel9 = UIA_HEADINGLEVEL_ID(80059);

/// {@category enum}
extension type const UIA_LANDMARKTYPE_ID(int _) implements int {}

const UIA_CustomLandmarkTypeId = UIA_LANDMARKTYPE_ID(80000);

const UIA_FormLandmarkTypeId = UIA_LANDMARKTYPE_ID(80001);

const UIA_MainLandmarkTypeId = UIA_LANDMARKTYPE_ID(80002);

const UIA_NavigationLandmarkTypeId = UIA_LANDMARKTYPE_ID(80003);

const UIA_SearchLandmarkTypeId = UIA_LANDMARKTYPE_ID(80004);

/// {@category enum}
extension type const UIA_METADATA_ID(int _) implements int {}

const UIA_SayAsInterpretAsMetadataId = UIA_METADATA_ID(100000);

/// {@category enum}
extension type const UIA_PATTERN_ID(int _) implements int {}

const UIA_InvokePatternId = UIA_PATTERN_ID(10000);

const UIA_SelectionPatternId = UIA_PATTERN_ID(10001);

const UIA_ValuePatternId = UIA_PATTERN_ID(10002);

const UIA_RangeValuePatternId = UIA_PATTERN_ID(10003);

const UIA_ScrollPatternId = UIA_PATTERN_ID(10004);

const UIA_ExpandCollapsePatternId = UIA_PATTERN_ID(10005);

const UIA_GridPatternId = UIA_PATTERN_ID(10006);

const UIA_GridItemPatternId = UIA_PATTERN_ID(10007);

const UIA_MultipleViewPatternId = UIA_PATTERN_ID(10008);

const UIA_WindowPatternId = UIA_PATTERN_ID(10009);

const UIA_SelectionItemPatternId = UIA_PATTERN_ID(10010);

const UIA_DockPatternId = UIA_PATTERN_ID(10011);

const UIA_TablePatternId = UIA_PATTERN_ID(10012);

const UIA_TableItemPatternId = UIA_PATTERN_ID(10013);

const UIA_TextPatternId = UIA_PATTERN_ID(10014);

const UIA_TogglePatternId = UIA_PATTERN_ID(10015);

const UIA_TransformPatternId = UIA_PATTERN_ID(10016);

const UIA_ScrollItemPatternId = UIA_PATTERN_ID(10017);

const UIA_LegacyIAccessiblePatternId = UIA_PATTERN_ID(10018);

const UIA_ItemContainerPatternId = UIA_PATTERN_ID(10019);

const UIA_VirtualizedItemPatternId = UIA_PATTERN_ID(10020);

const UIA_SynchronizedInputPatternId = UIA_PATTERN_ID(10021);

const UIA_ObjectModelPatternId = UIA_PATTERN_ID(10022);

const UIA_AnnotationPatternId = UIA_PATTERN_ID(10023);

const UIA_TextPattern2Id = UIA_PATTERN_ID(10024);

const UIA_StylesPatternId = UIA_PATTERN_ID(10025);

const UIA_SpreadsheetPatternId = UIA_PATTERN_ID(10026);

const UIA_SpreadsheetItemPatternId = UIA_PATTERN_ID(10027);

const UIA_TransformPattern2Id = UIA_PATTERN_ID(10028);

const UIA_TextChildPatternId = UIA_PATTERN_ID(10029);

const UIA_DragPatternId = UIA_PATTERN_ID(10030);

const UIA_DropTargetPatternId = UIA_PATTERN_ID(10031);

const UIA_TextEditPatternId = UIA_PATTERN_ID(10032);

const UIA_CustomNavigationPatternId = UIA_PATTERN_ID(10033);

const UIA_SelectionPattern2Id = UIA_PATTERN_ID(10034);

/// {@category enum}
extension type const UIA_PROPERTY_ID(int _) implements int {}

const UIA_RuntimeIdPropertyId = UIA_PROPERTY_ID(30000);

const UIA_BoundingRectanglePropertyId = UIA_PROPERTY_ID(30001);

const UIA_ProcessIdPropertyId = UIA_PROPERTY_ID(30002);

const UIA_ControlTypePropertyId = UIA_PROPERTY_ID(30003);

const UIA_LocalizedControlTypePropertyId = UIA_PROPERTY_ID(30004);

const UIA_NamePropertyId = UIA_PROPERTY_ID(30005);

const UIA_AcceleratorKeyPropertyId = UIA_PROPERTY_ID(30006);

const UIA_AccessKeyPropertyId = UIA_PROPERTY_ID(30007);

const UIA_HasKeyboardFocusPropertyId = UIA_PROPERTY_ID(30008);

const UIA_IsKeyboardFocusablePropertyId = UIA_PROPERTY_ID(30009);

const UIA_IsEnabledPropertyId = UIA_PROPERTY_ID(30010);

const UIA_AutomationIdPropertyId = UIA_PROPERTY_ID(30011);

const UIA_ClassNamePropertyId = UIA_PROPERTY_ID(30012);

const UIA_HelpTextPropertyId = UIA_PROPERTY_ID(30013);

const UIA_ClickablePointPropertyId = UIA_PROPERTY_ID(30014);

const UIA_CulturePropertyId = UIA_PROPERTY_ID(30015);

const UIA_IsControlElementPropertyId = UIA_PROPERTY_ID(30016);

const UIA_IsContentElementPropertyId = UIA_PROPERTY_ID(30017);

const UIA_LabeledByPropertyId = UIA_PROPERTY_ID(30018);

const UIA_IsPasswordPropertyId = UIA_PROPERTY_ID(30019);

const UIA_NativeWindowHandlePropertyId = UIA_PROPERTY_ID(30020);

const UIA_ItemTypePropertyId = UIA_PROPERTY_ID(30021);

const UIA_IsOffscreenPropertyId = UIA_PROPERTY_ID(30022);

const UIA_OrientationPropertyId = UIA_PROPERTY_ID(30023);

const UIA_FrameworkIdPropertyId = UIA_PROPERTY_ID(30024);

const UIA_IsRequiredForFormPropertyId = UIA_PROPERTY_ID(30025);

const UIA_ItemStatusPropertyId = UIA_PROPERTY_ID(30026);

const UIA_IsDockPatternAvailablePropertyId = UIA_PROPERTY_ID(30027);

const UIA_IsExpandCollapsePatternAvailablePropertyId = UIA_PROPERTY_ID(30028);

const UIA_IsGridItemPatternAvailablePropertyId = UIA_PROPERTY_ID(30029);

const UIA_IsGridPatternAvailablePropertyId = UIA_PROPERTY_ID(30030);

const UIA_IsInvokePatternAvailablePropertyId = UIA_PROPERTY_ID(30031);

const UIA_IsMultipleViewPatternAvailablePropertyId = UIA_PROPERTY_ID(30032);

const UIA_IsRangeValuePatternAvailablePropertyId = UIA_PROPERTY_ID(30033);

const UIA_IsScrollPatternAvailablePropertyId = UIA_PROPERTY_ID(30034);

const UIA_IsScrollItemPatternAvailablePropertyId = UIA_PROPERTY_ID(30035);

const UIA_IsSelectionItemPatternAvailablePropertyId = UIA_PROPERTY_ID(30036);

const UIA_IsSelectionPatternAvailablePropertyId = UIA_PROPERTY_ID(30037);

const UIA_IsTablePatternAvailablePropertyId = UIA_PROPERTY_ID(30038);

const UIA_IsTableItemPatternAvailablePropertyId = UIA_PROPERTY_ID(30039);

const UIA_IsTextPatternAvailablePropertyId = UIA_PROPERTY_ID(30040);

const UIA_IsTogglePatternAvailablePropertyId = UIA_PROPERTY_ID(30041);

const UIA_IsTransformPatternAvailablePropertyId = UIA_PROPERTY_ID(30042);

const UIA_IsValuePatternAvailablePropertyId = UIA_PROPERTY_ID(30043);

const UIA_IsWindowPatternAvailablePropertyId = UIA_PROPERTY_ID(30044);

const UIA_ValueValuePropertyId = UIA_PROPERTY_ID(30045);

const UIA_ValueIsReadOnlyPropertyId = UIA_PROPERTY_ID(30046);

const UIA_RangeValueValuePropertyId = UIA_PROPERTY_ID(30047);

const UIA_RangeValueIsReadOnlyPropertyId = UIA_PROPERTY_ID(30048);

const UIA_RangeValueMinimumPropertyId = UIA_PROPERTY_ID(30049);

const UIA_RangeValueMaximumPropertyId = UIA_PROPERTY_ID(30050);

const UIA_RangeValueLargeChangePropertyId = UIA_PROPERTY_ID(30051);

const UIA_RangeValueSmallChangePropertyId = UIA_PROPERTY_ID(30052);

const UIA_ScrollHorizontalScrollPercentPropertyId = UIA_PROPERTY_ID(30053);

const UIA_ScrollHorizontalViewSizePropertyId = UIA_PROPERTY_ID(30054);

const UIA_ScrollVerticalScrollPercentPropertyId = UIA_PROPERTY_ID(30055);

const UIA_ScrollVerticalViewSizePropertyId = UIA_PROPERTY_ID(30056);

const UIA_ScrollHorizontallyScrollablePropertyId = UIA_PROPERTY_ID(30057);

const UIA_ScrollVerticallyScrollablePropertyId = UIA_PROPERTY_ID(30058);

const UIA_SelectionSelectionPropertyId = UIA_PROPERTY_ID(30059);

const UIA_SelectionCanSelectMultiplePropertyId = UIA_PROPERTY_ID(30060);

const UIA_SelectionIsSelectionRequiredPropertyId = UIA_PROPERTY_ID(30061);

const UIA_GridRowCountPropertyId = UIA_PROPERTY_ID(30062);

const UIA_GridColumnCountPropertyId = UIA_PROPERTY_ID(30063);

const UIA_GridItemRowPropertyId = UIA_PROPERTY_ID(30064);

const UIA_GridItemColumnPropertyId = UIA_PROPERTY_ID(30065);

const UIA_GridItemRowSpanPropertyId = UIA_PROPERTY_ID(30066);

const UIA_GridItemColumnSpanPropertyId = UIA_PROPERTY_ID(30067);

const UIA_GridItemContainingGridPropertyId = UIA_PROPERTY_ID(30068);

const UIA_DockDockPositionPropertyId = UIA_PROPERTY_ID(30069);

const UIA_ExpandCollapseExpandCollapseStatePropertyId = UIA_PROPERTY_ID(30070);

const UIA_MultipleViewCurrentViewPropertyId = UIA_PROPERTY_ID(30071);

const UIA_MultipleViewSupportedViewsPropertyId = UIA_PROPERTY_ID(30072);

const UIA_WindowCanMaximizePropertyId = UIA_PROPERTY_ID(30073);

const UIA_WindowCanMinimizePropertyId = UIA_PROPERTY_ID(30074);

const UIA_WindowWindowVisualStatePropertyId = UIA_PROPERTY_ID(30075);

const UIA_WindowWindowInteractionStatePropertyId = UIA_PROPERTY_ID(30076);

const UIA_WindowIsModalPropertyId = UIA_PROPERTY_ID(30077);

const UIA_WindowIsTopmostPropertyId = UIA_PROPERTY_ID(30078);

const UIA_SelectionItemIsSelectedPropertyId = UIA_PROPERTY_ID(30079);

const UIA_SelectionItemSelectionContainerPropertyId = UIA_PROPERTY_ID(30080);

const UIA_TableRowHeadersPropertyId = UIA_PROPERTY_ID(30081);

const UIA_TableColumnHeadersPropertyId = UIA_PROPERTY_ID(30082);

const UIA_TableRowOrColumnMajorPropertyId = UIA_PROPERTY_ID(30083);

const UIA_TableItemRowHeaderItemsPropertyId = UIA_PROPERTY_ID(30084);

const UIA_TableItemColumnHeaderItemsPropertyId = UIA_PROPERTY_ID(30085);

const UIA_ToggleToggleStatePropertyId = UIA_PROPERTY_ID(30086);

const UIA_TransformCanMovePropertyId = UIA_PROPERTY_ID(30087);

const UIA_TransformCanResizePropertyId = UIA_PROPERTY_ID(30088);

const UIA_TransformCanRotatePropertyId = UIA_PROPERTY_ID(30089);

const UIA_IsLegacyIAccessiblePatternAvailablePropertyId = UIA_PROPERTY_ID(
  30090,
);

const UIA_LegacyIAccessibleChildIdPropertyId = UIA_PROPERTY_ID(30091);

const UIA_LegacyIAccessibleNamePropertyId = UIA_PROPERTY_ID(30092);

const UIA_LegacyIAccessibleValuePropertyId = UIA_PROPERTY_ID(30093);

const UIA_LegacyIAccessibleDescriptionPropertyId = UIA_PROPERTY_ID(30094);

const UIA_LegacyIAccessibleRolePropertyId = UIA_PROPERTY_ID(30095);

const UIA_LegacyIAccessibleStatePropertyId = UIA_PROPERTY_ID(30096);

const UIA_LegacyIAccessibleHelpPropertyId = UIA_PROPERTY_ID(30097);

const UIA_LegacyIAccessibleKeyboardShortcutPropertyId = UIA_PROPERTY_ID(30098);

const UIA_LegacyIAccessibleSelectionPropertyId = UIA_PROPERTY_ID(30099);

const UIA_LegacyIAccessibleDefaultActionPropertyId = UIA_PROPERTY_ID(30100);

const UIA_AriaRolePropertyId = UIA_PROPERTY_ID(30101);

const UIA_AriaPropertiesPropertyId = UIA_PROPERTY_ID(30102);

const UIA_IsDataValidForFormPropertyId = UIA_PROPERTY_ID(30103);

const UIA_ControllerForPropertyId = UIA_PROPERTY_ID(30104);

const UIA_DescribedByPropertyId = UIA_PROPERTY_ID(30105);

const UIA_FlowsToPropertyId = UIA_PROPERTY_ID(30106);

const UIA_ProviderDescriptionPropertyId = UIA_PROPERTY_ID(30107);

const UIA_IsItemContainerPatternAvailablePropertyId = UIA_PROPERTY_ID(30108);

const UIA_IsVirtualizedItemPatternAvailablePropertyId = UIA_PROPERTY_ID(30109);

const UIA_IsSynchronizedInputPatternAvailablePropertyId = UIA_PROPERTY_ID(
  30110,
);

const UIA_OptimizeForVisualContentPropertyId = UIA_PROPERTY_ID(30111);

const UIA_IsObjectModelPatternAvailablePropertyId = UIA_PROPERTY_ID(30112);

const UIA_AnnotationAnnotationTypeIdPropertyId = UIA_PROPERTY_ID(30113);

const UIA_AnnotationAnnotationTypeNamePropertyId = UIA_PROPERTY_ID(30114);

const UIA_AnnotationAuthorPropertyId = UIA_PROPERTY_ID(30115);

const UIA_AnnotationDateTimePropertyId = UIA_PROPERTY_ID(30116);

const UIA_AnnotationTargetPropertyId = UIA_PROPERTY_ID(30117);

const UIA_IsAnnotationPatternAvailablePropertyId = UIA_PROPERTY_ID(30118);

const UIA_IsTextPattern2AvailablePropertyId = UIA_PROPERTY_ID(30119);

const UIA_StylesStyleIdPropertyId = UIA_PROPERTY_ID(30120);

const UIA_StylesStyleNamePropertyId = UIA_PROPERTY_ID(30121);

const UIA_StylesFillColorPropertyId = UIA_PROPERTY_ID(30122);

const UIA_StylesFillPatternStylePropertyId = UIA_PROPERTY_ID(30123);

const UIA_StylesShapePropertyId = UIA_PROPERTY_ID(30124);

const UIA_StylesFillPatternColorPropertyId = UIA_PROPERTY_ID(30125);

const UIA_StylesExtendedPropertiesPropertyId = UIA_PROPERTY_ID(30126);

const UIA_IsStylesPatternAvailablePropertyId = UIA_PROPERTY_ID(30127);

const UIA_IsSpreadsheetPatternAvailablePropertyId = UIA_PROPERTY_ID(30128);

const UIA_SpreadsheetItemFormulaPropertyId = UIA_PROPERTY_ID(30129);

const UIA_SpreadsheetItemAnnotationObjectsPropertyId = UIA_PROPERTY_ID(30130);

const UIA_SpreadsheetItemAnnotationTypesPropertyId = UIA_PROPERTY_ID(30131);

const UIA_IsSpreadsheetItemPatternAvailablePropertyId = UIA_PROPERTY_ID(30132);

const UIA_Transform2CanZoomPropertyId = UIA_PROPERTY_ID(30133);

const UIA_IsTransformPattern2AvailablePropertyId = UIA_PROPERTY_ID(30134);

const UIA_LiveSettingPropertyId = UIA_PROPERTY_ID(30135);

const UIA_IsTextChildPatternAvailablePropertyId = UIA_PROPERTY_ID(30136);

const UIA_IsDragPatternAvailablePropertyId = UIA_PROPERTY_ID(30137);

const UIA_DragIsGrabbedPropertyId = UIA_PROPERTY_ID(30138);

const UIA_DragDropEffectPropertyId = UIA_PROPERTY_ID(30139);

const UIA_DragDropEffectsPropertyId = UIA_PROPERTY_ID(30140);

const UIA_IsDropTargetPatternAvailablePropertyId = UIA_PROPERTY_ID(30141);

const UIA_DropTargetDropTargetEffectPropertyId = UIA_PROPERTY_ID(30142);

const UIA_DropTargetDropTargetEffectsPropertyId = UIA_PROPERTY_ID(30143);

const UIA_DragGrabbedItemsPropertyId = UIA_PROPERTY_ID(30144);

const UIA_Transform2ZoomLevelPropertyId = UIA_PROPERTY_ID(30145);

const UIA_Transform2ZoomMinimumPropertyId = UIA_PROPERTY_ID(30146);

const UIA_Transform2ZoomMaximumPropertyId = UIA_PROPERTY_ID(30147);

const UIA_FlowsFromPropertyId = UIA_PROPERTY_ID(30148);

const UIA_IsTextEditPatternAvailablePropertyId = UIA_PROPERTY_ID(30149);

const UIA_IsPeripheralPropertyId = UIA_PROPERTY_ID(30150);

const UIA_IsCustomNavigationPatternAvailablePropertyId = UIA_PROPERTY_ID(30151);

const UIA_PositionInSetPropertyId = UIA_PROPERTY_ID(30152);

const UIA_SizeOfSetPropertyId = UIA_PROPERTY_ID(30153);

const UIA_LevelPropertyId = UIA_PROPERTY_ID(30154);

const UIA_AnnotationTypesPropertyId = UIA_PROPERTY_ID(30155);

const UIA_AnnotationObjectsPropertyId = UIA_PROPERTY_ID(30156);

const UIA_LandmarkTypePropertyId = UIA_PROPERTY_ID(30157);

const UIA_LocalizedLandmarkTypePropertyId = UIA_PROPERTY_ID(30158);

const UIA_FullDescriptionPropertyId = UIA_PROPERTY_ID(30159);

const UIA_FillColorPropertyId = UIA_PROPERTY_ID(30160);

const UIA_OutlineColorPropertyId = UIA_PROPERTY_ID(30161);

const UIA_FillTypePropertyId = UIA_PROPERTY_ID(30162);

const UIA_VisualEffectsPropertyId = UIA_PROPERTY_ID(30163);

const UIA_OutlineThicknessPropertyId = UIA_PROPERTY_ID(30164);

const UIA_CenterPointPropertyId = UIA_PROPERTY_ID(30165);

const UIA_RotationPropertyId = UIA_PROPERTY_ID(30166);

const UIA_SizePropertyId = UIA_PROPERTY_ID(30167);

const UIA_IsSelectionPattern2AvailablePropertyId = UIA_PROPERTY_ID(30168);

const UIA_Selection2FirstSelectedItemPropertyId = UIA_PROPERTY_ID(30169);

const UIA_Selection2LastSelectedItemPropertyId = UIA_PROPERTY_ID(30170);

const UIA_Selection2CurrentSelectedItemPropertyId = UIA_PROPERTY_ID(30171);

const UIA_Selection2ItemCountPropertyId = UIA_PROPERTY_ID(30172);

const UIA_HeadingLevelPropertyId = UIA_PROPERTY_ID(30173);

const UIA_IsDialogPropertyId = UIA_PROPERTY_ID(30174);

/// {@category enum}
extension type const UIA_STYLE_ID(int _) implements int {}

const StyleId_Custom = UIA_STYLE_ID(70000);

const StyleId_Heading1 = UIA_STYLE_ID(70001);

const StyleId_Heading2 = UIA_STYLE_ID(70002);

const StyleId_Heading3 = UIA_STYLE_ID(70003);

const StyleId_Heading4 = UIA_STYLE_ID(70004);

const StyleId_Heading5 = UIA_STYLE_ID(70005);

const StyleId_Heading6 = UIA_STYLE_ID(70006);

const StyleId_Heading7 = UIA_STYLE_ID(70007);

const StyleId_Heading8 = UIA_STYLE_ID(70008);

const StyleId_Heading9 = UIA_STYLE_ID(70009);

const StyleId_Title = UIA_STYLE_ID(70010);

const StyleId_Subtitle = UIA_STYLE_ID(70011);

const StyleId_Normal = UIA_STYLE_ID(70012);

const StyleId_Emphasis = UIA_STYLE_ID(70013);

const StyleId_Quote = UIA_STYLE_ID(70014);

const StyleId_BulletedList = UIA_STYLE_ID(70015);

const StyleId_NumberedList = UIA_STYLE_ID(70016);

/// {@category enum}
extension type const UIA_TEXTATTRIBUTE_ID(int _) implements int {}

const UIA_AnimationStyleAttributeId = UIA_TEXTATTRIBUTE_ID(40000);

const UIA_BackgroundColorAttributeId = UIA_TEXTATTRIBUTE_ID(40001);

const UIA_BulletStyleAttributeId = UIA_TEXTATTRIBUTE_ID(40002);

const UIA_CapStyleAttributeId = UIA_TEXTATTRIBUTE_ID(40003);

const UIA_CultureAttributeId = UIA_TEXTATTRIBUTE_ID(40004);

const UIA_FontNameAttributeId = UIA_TEXTATTRIBUTE_ID(40005);

const UIA_FontSizeAttributeId = UIA_TEXTATTRIBUTE_ID(40006);

const UIA_FontWeightAttributeId = UIA_TEXTATTRIBUTE_ID(40007);

const UIA_ForegroundColorAttributeId = UIA_TEXTATTRIBUTE_ID(40008);

const UIA_HorizontalTextAlignmentAttributeId = UIA_TEXTATTRIBUTE_ID(40009);

const UIA_IndentationFirstLineAttributeId = UIA_TEXTATTRIBUTE_ID(40010);

const UIA_IndentationLeadingAttributeId = UIA_TEXTATTRIBUTE_ID(40011);

const UIA_IndentationTrailingAttributeId = UIA_TEXTATTRIBUTE_ID(40012);

const UIA_IsHiddenAttributeId = UIA_TEXTATTRIBUTE_ID(40013);

const UIA_IsItalicAttributeId = UIA_TEXTATTRIBUTE_ID(40014);

const UIA_IsReadOnlyAttributeId = UIA_TEXTATTRIBUTE_ID(40015);

const UIA_IsSubscriptAttributeId = UIA_TEXTATTRIBUTE_ID(40016);

const UIA_IsSuperscriptAttributeId = UIA_TEXTATTRIBUTE_ID(40017);

const UIA_MarginBottomAttributeId = UIA_TEXTATTRIBUTE_ID(40018);

const UIA_MarginLeadingAttributeId = UIA_TEXTATTRIBUTE_ID(40019);

const UIA_MarginTopAttributeId = UIA_TEXTATTRIBUTE_ID(40020);

const UIA_MarginTrailingAttributeId = UIA_TEXTATTRIBUTE_ID(40021);

const UIA_OutlineStylesAttributeId = UIA_TEXTATTRIBUTE_ID(40022);

const UIA_OverlineColorAttributeId = UIA_TEXTATTRIBUTE_ID(40023);

const UIA_OverlineStyleAttributeId = UIA_TEXTATTRIBUTE_ID(40024);

const UIA_StrikethroughColorAttributeId = UIA_TEXTATTRIBUTE_ID(40025);

const UIA_StrikethroughStyleAttributeId = UIA_TEXTATTRIBUTE_ID(40026);

const UIA_TabsAttributeId = UIA_TEXTATTRIBUTE_ID(40027);

const UIA_TextFlowDirectionsAttributeId = UIA_TEXTATTRIBUTE_ID(40028);

const UIA_UnderlineColorAttributeId = UIA_TEXTATTRIBUTE_ID(40029);

const UIA_UnderlineStyleAttributeId = UIA_TEXTATTRIBUTE_ID(40030);

const UIA_AnnotationTypesAttributeId = UIA_TEXTATTRIBUTE_ID(40031);

const UIA_AnnotationObjectsAttributeId = UIA_TEXTATTRIBUTE_ID(40032);

const UIA_StyleNameAttributeId = UIA_TEXTATTRIBUTE_ID(40033);

const UIA_StyleIdAttributeId = UIA_TEXTATTRIBUTE_ID(40034);

const UIA_LinkAttributeId = UIA_TEXTATTRIBUTE_ID(40035);

const UIA_IsActiveAttributeId = UIA_TEXTATTRIBUTE_ID(40036);

const UIA_SelectionActiveEndAttributeId = UIA_TEXTATTRIBUTE_ID(40037);

const UIA_CaretPositionAttributeId = UIA_TEXTATTRIBUTE_ID(40038);

const UIA_CaretBidiModeAttributeId = UIA_TEXTATTRIBUTE_ID(40039);

const UIA_LineSpacingAttributeId = UIA_TEXTATTRIBUTE_ID(40040);

const UIA_BeforeParagraphSpacingAttributeId = UIA_TEXTATTRIBUTE_ID(40041);

const UIA_AfterParagraphSpacingAttributeId = UIA_TEXTATTRIBUTE_ID(40042);

const UIA_SayAsInterpretAsAttributeId = UIA_TEXTATTRIBUTE_ID(40043);

/// {@category enum}
extension type const UNMAP_VIEW_OF_FILE_FLAGS(int _) implements int {}

const MEM_UNMAP_NONE = UNMAP_VIEW_OF_FILE_FLAGS(0);

const MEM_UNMAP_WITH_TRANSIENT_BOOST = UNMAP_VIEW_OF_FILE_FLAGS(1);

const MEM_PRESERVE_PLACEHOLDER = UNMAP_VIEW_OF_FILE_FLAGS(2);

/// {@category enum}
extension type const UPDATE_LAYERED_WINDOW_FLAGS(int _) implements int {}

const ULW_ALPHA = UPDATE_LAYERED_WINDOW_FLAGS(2);

const ULW_COLORKEY = UPDATE_LAYERED_WINDOW_FLAGS(1);

const ULW_OPAQUE = UPDATE_LAYERED_WINDOW_FLAGS(4);

const ULW_EX_NORESIZE = UPDATE_LAYERED_WINDOW_FLAGS(8);

/// {@category enum}
extension type const USER_OBJECT_INFORMATION_INDEX(int _) implements int {}

const UOI_FLAGS = USER_OBJECT_INFORMATION_INDEX(1);

const UOI_HEAPSIZE = USER_OBJECT_INFORMATION_INDEX(5);

const UOI_IO = USER_OBJECT_INFORMATION_INDEX(6);

const UOI_NAME = USER_OBJECT_INFORMATION_INDEX(2);

const UOI_TYPE = USER_OBJECT_INFORMATION_INDEX(3);

const UOI_USER_SID = USER_OBJECT_INFORMATION_INDEX(4);

/// {@category enum}
extension type const Uri_PROPERTY(int _) implements int {}

const Uri_PROPERTY_ABSOLUTE_URI = Uri_PROPERTY(0);

const Uri_PROPERTY_STRING_START = Uri_PROPERTY(0);

const Uri_PROPERTY_AUTHORITY = Uri_PROPERTY(1);

const Uri_PROPERTY_DISPLAY_URI = Uri_PROPERTY(2);

const Uri_PROPERTY_DOMAIN = Uri_PROPERTY(3);

const Uri_PROPERTY_EXTENSION = Uri_PROPERTY(4);

const Uri_PROPERTY_FRAGMENT = Uri_PROPERTY(5);

const Uri_PROPERTY_HOST = Uri_PROPERTY(6);

const Uri_PROPERTY_PASSWORD = Uri_PROPERTY(7);

const Uri_PROPERTY_PATH = Uri_PROPERTY(8);

const Uri_PROPERTY_PATH_AND_QUERY = Uri_PROPERTY(9);

const Uri_PROPERTY_QUERY = Uri_PROPERTY(10);

const Uri_PROPERTY_RAW_URI = Uri_PROPERTY(11);

const Uri_PROPERTY_SCHEME_NAME = Uri_PROPERTY(12);

const Uri_PROPERTY_USER_INFO = Uri_PROPERTY(13);

const Uri_PROPERTY_USER_NAME = Uri_PROPERTY(14);

const Uri_PROPERTY_STRING_LAST = Uri_PROPERTY(14);

const Uri_PROPERTY_HOST_TYPE = Uri_PROPERTY(15);

const Uri_PROPERTY_DWORD_START = Uri_PROPERTY(15);

const Uri_PROPERTY_PORT = Uri_PROPERTY(16);

const Uri_PROPERTY_SCHEME = Uri_PROPERTY(17);

const Uri_PROPERTY_ZONE = Uri_PROPERTY(18);

const Uri_PROPERTY_DWORD_LAST = Uri_PROPERTY(18);

/// Specifies the variant types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wtypes/ne-wtypes-varenum>.
///
/// {@category enum}
extension type const VARENUM(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(VARENUM other) => _ & other._ == other._;

  VARENUM operator &(int other) => .new(_ & other);
  VARENUM operator |(int other) => .new(_ | other);
}

/// Not specified.
const VT_EMPTY = VARENUM(0);

/// Null.
const VT_NULL = VARENUM(1);

/// A 2-byte integer.
const VT_I2 = VARENUM(2);

/// A 4-byte integer.
const VT_I4 = VARENUM(3);

/// A 4-byte real.
const VT_R4 = VARENUM(4);

/// An 8-byte real.
const VT_R8 = VARENUM(5);

/// Currency.
const VT_CY = VARENUM(6);

/// A date.
const VT_DATE = VARENUM(7);

/// A string.
const VT_BSTR = VARENUM(8);

/// An <a
/// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nn-oaidl-idispatch">IDispatch</a>
/// pointer.
const VT_DISPATCH = VARENUM(9);

/// An SCODE value.
const VT_ERROR = VARENUM(10);

/// A Boolean value.
const VT_BOOL = VARENUM(11);

/// A variant pointer.
const VT_VARIANT = VARENUM(12);

/// An <a
/// href="https://docs.microsoft.com/windows/desktop/api/unknwn/nn-unknwn-iunknown">IUnknown</a>
/// pointer.
const VT_UNKNOWN = VARENUM(13);

/// A 16-byte fixed-pointer value.
const VT_DECIMAL = VARENUM(14);

/// A character.
const VT_I1 = VARENUM(16);

/// An unsigned character.
const VT_UI1 = VARENUM(17);

/// An unsigned short.
const VT_UI2 = VARENUM(18);

/// An unsigned long.
const VT_UI4 = VARENUM(19);

/// A 64-bit integer.
const VT_I8 = VARENUM(20);

/// A 64-bit unsigned integer.
const VT_UI8 = VARENUM(21);

/// An integer.
const VT_INT = VARENUM(22);

/// An unsigned integer.
const VT_UINT = VARENUM(23);

/// A C-style void.
const VT_VOID = VARENUM(24);

/// An HRESULT value.
const VT_HRESULT = VARENUM(25);

/// A pointer type.
const VT_PTR = VARENUM(26);

/// A safe array.
const VT_SAFEARRAY = VARENUM(27);

/// A C-style array.
const VT_CARRAY = VARENUM(28);

/// A user-defined type.
const VT_USERDEFINED = VARENUM(29);

/// A null-terminated string.
const VT_LPSTR = VARENUM(30);

/// A wide null-terminated string.
const VT_LPWSTR = VARENUM(31);

/// A user-defined type.
const VT_RECORD = VARENUM(36);

/// A signed machine register size width.
const VT_INT_PTR = VARENUM(37);

/// An unsigned machine register size width.
const VT_UINT_PTR = VARENUM(38);

/// A <a
/// href="https://docs.microsoft.com/windows/desktop/api/minwinbase/ns-minwinbase-filetime">FILETIME</a>
/// value.
const VT_FILETIME = VARENUM(64);

/// Length-prefixed bytes.
const VT_BLOB = VARENUM(65);

/// The name of the stream follows.
const VT_STREAM = VARENUM(66);

/// The name of the storage follows.
const VT_STORAGE = VARENUM(67);

/// The stream contains an object.
const VT_STREAMED_OBJECT = VARENUM(68);

/// The storage contains an object.
const VT_STORED_OBJECT = VARENUM(69);

/// The blob contains an object.
const VT_BLOB_OBJECT = VARENUM(70);

/// A clipboard format.
const VT_CF = VARENUM(71);

/// A class ID.
const VT_CLSID = VARENUM(72);

/// A stream with a GUID version.
const VT_VERSIONED_STREAM = VARENUM(73);

/// Reserved.
const VT_BSTR_BLOB = VARENUM(4095);

/// A simple counted array.
const VT_VECTOR = VARENUM(4096);

/// A SAFEARRAY pointer.
const VT_ARRAY = VARENUM(8192);

/// A void pointer for local use.
const VT_BYREF = VARENUM(16384);

const VT_RESERVED = VARENUM(32768);

const VT_ILLEGAL = VARENUM(65535);

const VT_ILLEGALMASKED = VARENUM(4095);

const VT_TYPEMASK = VARENUM(4095);

/// Specifies variable flags.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-varflags>.
///
/// {@category enum}
extension type const VARFLAGS(int _) implements int {}

/// Assignment to the variable should not be allowed.
const VARFLAG_FREADONLY = VARFLAGS(1);

/// The variable returns an object that is a source of events.
const VARFLAG_FSOURCE = VARFLAGS(2);

/// The variable supports data binding.
const VARFLAG_FBINDABLE = VARFLAGS(4);

/// When set, any attempt to directly change the property results in a call to
/// <b>IPropertyNotifySink::OnRequestEdit</b>.
const VARFLAG_FREQUESTEDIT = VARFLAGS(8);

/// The variable is displayed to the user as bindable.
const VARFLAG_FDISPLAYBIND = VARFLAGS(16);

/// The variable is the single property that best represents the object.
const VARFLAG_FDEFAULTBIND = VARFLAGS(32);

/// The variable should not be displayed to the user in a browser, although it
/// exists and is bindable.
const VARFLAG_FHIDDEN = VARFLAGS(64);

/// The variable should not be accessible from macro languages.
const VARFLAG_FRESTRICTED = VARFLAGS(128);

/// Permits an optimization in which the compiler looks for a member named "xyz"
/// on the type of abc.
const VARFLAG_FDEFAULTCOLLELEM = VARFLAGS(256);

/// The variable is the default display in the user interface.
const VARFLAG_FUIDEFAULT = VARFLAGS(512);

/// The variable appears in an object browser, but not in a properties browser.
const VARFLAG_FNONBROWSABLE = VARFLAGS(1024);

/// Tags the interface as having default behaviors.
const VARFLAG_FREPLACEABLE = VARFLAGS(2048);

/// The variable is mapped as individual bindable properties.
const VARFLAG_FIMMEDIATEBIND = VARFLAGS(4096);

/// Specifies the variable type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ne-oaidl-varkind>.
///
/// {@category enum}
extension type const VARKIND(int _) implements int {}

/// The variable is a field or member of the type.
const VAR_PERINSTANCE = VARKIND(0);

/// There is only one instance of the variable.
const VAR_STATIC = VARKIND(1);

/// The VARDESC describes a symbolic constant.
const VAR_CONST = VARKIND(2);

/// The variable can only be accessed through <a
/// href="https://docs.microsoft.com/previous-versions/windows/desktop/api/oaidl/nf-oaidl-idispatch-invoke">IDispatch::Invoke</a>.
const VAR_DISPATCH = VARKIND(3);

/// {@category enum}
extension type const VAR_CHANGE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(VAR_CHANGE_FLAGS other) => _ & other._ == other._;

  VAR_CHANGE_FLAGS operator &(int other) => .new(_ & other);
  VAR_CHANGE_FLAGS operator |(int other) => .new(_ | other);
}

const VARIANT_NOVALUEPROP = VAR_CHANGE_FLAGS(1);

const VARIANT_ALPHABOOL = VAR_CHANGE_FLAGS(2);

const VARIANT_NOUSEROVERRIDE = VAR_CHANGE_FLAGS(4);

const VARIANT_CALENDAR_HIJRI = VAR_CHANGE_FLAGS(8);

const VARIANT_LOCALBOOL = VAR_CHANGE_FLAGS(16);

const VARIANT_CALENDAR_THAI = VAR_CHANGE_FLAGS(32);

const VARIANT_CALENDAR_GREGORIAN = VAR_CHANGE_FLAGS(64);

const VARIANT_USE_NLS = VAR_CHANGE_FLAGS(128);

/// {@category enum}
extension type const VERTSCROLLSTATES(int _) implements int {}

const VSS_NORMAL = VERTSCROLLSTATES(1);

const VSS_HOT = VERTSCROLLSTATES(2);

const VSS_PUSHED = VERTSCROLLSTATES(3);

const VSS_DISABLED = VERTSCROLLSTATES(4);

/// {@category enum}
extension type const VERTTHUMBSTATES(int _) implements int {}

const VTS_NORMAL = VERTTHUMBSTATES(1);

const VTS_HOT = VERTTHUMBSTATES(2);

const VTS_PUSHED = VERTTHUMBSTATES(3);

const VTS_DISABLED = VERTTHUMBSTATES(4);

/// {@category enum}
extension type const VER_FIND_FILE_FLAGS(int _) implements int {}

const VFFF_ISSHAREDFILE = VER_FIND_FILE_FLAGS(1);

/// {@category enum}
extension type const VER_FIND_FILE_STATUS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(VER_FIND_FILE_STATUS other) => _ & other._ == other._;

  VER_FIND_FILE_STATUS operator &(int other) => .new(_ & other);
  VER_FIND_FILE_STATUS operator |(int other) => .new(_ | other);
}

const VFF_CURNEDEST = VER_FIND_FILE_STATUS(1);

const VFF_FILEINUSE = VER_FIND_FILE_STATUS(2);

const VFF_BUFFTOOSMALL = VER_FIND_FILE_STATUS(4);

/// {@category enum}
extension type const VER_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(VER_FLAGS other) => _ & other._ == other._;

  VER_FLAGS operator &(int other) => .new(_ & other);
  VER_FLAGS operator |(int other) => .new(_ | other);
}

const VER_MINORVERSION = VER_FLAGS(1);

const VER_MAJORVERSION = VER_FLAGS(2);

const VER_BUILDNUMBER = VER_FLAGS(4);

const VER_PLATFORMID = VER_FLAGS(8);

const VER_SERVICEPACKMINOR = VER_FLAGS(16);

const VER_SERVICEPACKMAJOR = VER_FLAGS(32);

const VER_SUITENAME = VER_FLAGS(64);

const VER_PRODUCT_TYPE = VER_FLAGS(128);

/// {@category enum}
extension type const VER_INSTALL_FILE_FLAGS(int _) implements int {}

const VIFF_FORCEINSTALL = VER_INSTALL_FILE_FLAGS(1);

const VIFF_DONTDELETEOLD = VER_INSTALL_FILE_FLAGS(2);

/// {@category enum}
extension type const VER_INSTALL_FILE_STATUS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(VER_INSTALL_FILE_STATUS other) => _ & other._ == other._;

  VER_INSTALL_FILE_STATUS operator &(int other) => .new(_ & other);
  VER_INSTALL_FILE_STATUS operator |(int other) => .new(_ | other);
}

const VIF_TEMPFILE = VER_INSTALL_FILE_STATUS(1);

const VIF_MISMATCH = VER_INSTALL_FILE_STATUS(2);

const VIF_SRCOLD = VER_INSTALL_FILE_STATUS(4);

const VIF_DIFFLANG = VER_INSTALL_FILE_STATUS(8);

const VIF_DIFFCODEPG = VER_INSTALL_FILE_STATUS(16);

const VIF_DIFFTYPE = VER_INSTALL_FILE_STATUS(32);

const VIF_WRITEPROT = VER_INSTALL_FILE_STATUS(64);

const VIF_FILEINUSE = VER_INSTALL_FILE_STATUS(128);

const VIF_OUTOFSPACE = VER_INSTALL_FILE_STATUS(256);

const VIF_ACCESSVIOLATION = VER_INSTALL_FILE_STATUS(512);

const VIF_SHARINGVIOLATION = VER_INSTALL_FILE_STATUS(1024);

const VIF_CANNOTCREATE = VER_INSTALL_FILE_STATUS(2048);

const VIF_CANNOTDELETE = VER_INSTALL_FILE_STATUS(4096);

const VIF_CANNOTRENAME = VER_INSTALL_FILE_STATUS(8192);

const VIF_CANNOTDELETECUR = VER_INSTALL_FILE_STATUS(16384);

const VIF_OUTOFMEMORY = VER_INSTALL_FILE_STATUS(32768);

const VIF_CANNOTREADSRC = VER_INSTALL_FILE_STATUS(65536);

const VIF_CANNOTREADDST = VER_INSTALL_FILE_STATUS(131072);

const VIF_BUFFTOOSMALL = VER_INSTALL_FILE_STATUS(262144);

const VIF_CANNOTLOADLZ32 = VER_INSTALL_FILE_STATUS(524288);

const VIF_CANNOTLOADCABINET = VER_INSTALL_FILE_STATUS(1048576);

/// {@category enum}
extension type const VIRTUAL_ALLOCATION_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(VIRTUAL_ALLOCATION_TYPE other) => _ & other._ == other._;

  VIRTUAL_ALLOCATION_TYPE operator &(int other) => .new(_ & other);
  VIRTUAL_ALLOCATION_TYPE operator |(int other) => .new(_ | other);
}

const MEM_COMMIT = VIRTUAL_ALLOCATION_TYPE(4096);

const MEM_RESERVE = VIRTUAL_ALLOCATION_TYPE(8192);

const MEM_RESET = VIRTUAL_ALLOCATION_TYPE(524288);

const MEM_RESET_UNDO = VIRTUAL_ALLOCATION_TYPE(16777216);

const MEM_REPLACE_PLACEHOLDER = VIRTUAL_ALLOCATION_TYPE(16384);

const MEM_LARGE_PAGES = VIRTUAL_ALLOCATION_TYPE(536870912);

const MEM_RESERVE_PLACEHOLDER = VIRTUAL_ALLOCATION_TYPE(262144);

const MEM_FREE = VIRTUAL_ALLOCATION_TYPE(65536);

/// {@category enum}
extension type const VIRTUAL_FREE_TYPE(int _) implements int {}

const MEM_DECOMMIT = VIRTUAL_FREE_TYPE(16384);

const MEM_RELEASE = VIRTUAL_FREE_TYPE(32768);

/// {@category enum}
extension type const VIRTUAL_KEY(int _) implements int {}

const VK_0 = VIRTUAL_KEY(48);

const VK_1 = VIRTUAL_KEY(49);

const VK_2 = VIRTUAL_KEY(50);

const VK_3 = VIRTUAL_KEY(51);

const VK_4 = VIRTUAL_KEY(52);

const VK_5 = VIRTUAL_KEY(53);

const VK_6 = VIRTUAL_KEY(54);

const VK_7 = VIRTUAL_KEY(55);

const VK_8 = VIRTUAL_KEY(56);

const VK_9 = VIRTUAL_KEY(57);

const VK_A = VIRTUAL_KEY(65);

const VK_B = VIRTUAL_KEY(66);

const VK_C = VIRTUAL_KEY(67);

const VK_D = VIRTUAL_KEY(68);

const VK_E = VIRTUAL_KEY(69);

const VK_F = VIRTUAL_KEY(70);

const VK_G = VIRTUAL_KEY(71);

const VK_H = VIRTUAL_KEY(72);

const VK_I = VIRTUAL_KEY(73);

const VK_J = VIRTUAL_KEY(74);

const VK_K = VIRTUAL_KEY(75);

const VK_L = VIRTUAL_KEY(76);

const VK_M = VIRTUAL_KEY(77);

const VK_N = VIRTUAL_KEY(78);

const VK_O = VIRTUAL_KEY(79);

const VK_P = VIRTUAL_KEY(80);

const VK_Q = VIRTUAL_KEY(81);

const VK_R = VIRTUAL_KEY(82);

const VK_S = VIRTUAL_KEY(83);

const VK_T = VIRTUAL_KEY(84);

const VK_U = VIRTUAL_KEY(85);

const VK_V = VIRTUAL_KEY(86);

const VK_W = VIRTUAL_KEY(87);

const VK_X = VIRTUAL_KEY(88);

const VK_Y = VIRTUAL_KEY(89);

const VK_Z = VIRTUAL_KEY(90);

const VK_ABNT_C1 = VIRTUAL_KEY(193);

const VK_ABNT_C2 = VIRTUAL_KEY(194);

const VK_DBE_ALPHANUMERIC = VIRTUAL_KEY(240);

const VK_DBE_CODEINPUT = VIRTUAL_KEY(250);

const VK_DBE_DBCSCHAR = VIRTUAL_KEY(244);

const VK_DBE_DETERMINESTRING = VIRTUAL_KEY(252);

const VK_DBE_ENTERDLGCONVERSIONMODE = VIRTUAL_KEY(253);

const VK_DBE_ENTERIMECONFIGMODE = VIRTUAL_KEY(248);

const VK_DBE_ENTERWORDREGISTERMODE = VIRTUAL_KEY(247);

const VK_DBE_FLUSHSTRING = VIRTUAL_KEY(249);

const VK_DBE_HIRAGANA = VIRTUAL_KEY(242);

const VK_DBE_KATAKANA = VIRTUAL_KEY(241);

const VK_DBE_NOCODEINPUT = VIRTUAL_KEY(251);

const VK_DBE_NOROMAN = VIRTUAL_KEY(246);

const VK_DBE_ROMAN = VIRTUAL_KEY(245);

const VK_DBE_SBCSCHAR = VIRTUAL_KEY(243);

const VK__none_ = VIRTUAL_KEY(255);

const VK_LBUTTON = VIRTUAL_KEY(1);

const VK_RBUTTON = VIRTUAL_KEY(2);

const VK_CANCEL = VIRTUAL_KEY(3);

const VK_MBUTTON = VIRTUAL_KEY(4);

const VK_XBUTTON1 = VIRTUAL_KEY(5);

const VK_XBUTTON2 = VIRTUAL_KEY(6);

const VK_BACK = VIRTUAL_KEY(8);

const VK_TAB = VIRTUAL_KEY(9);

const VK_CLEAR = VIRTUAL_KEY(12);

const VK_RETURN = VIRTUAL_KEY(13);

const VK_SHIFT = VIRTUAL_KEY(16);

const VK_CONTROL = VIRTUAL_KEY(17);

const VK_MENU = VIRTUAL_KEY(18);

const VK_PAUSE = VIRTUAL_KEY(19);

const VK_CAPITAL = VIRTUAL_KEY(20);

const VK_KANA = VIRTUAL_KEY(21);

const VK_HANGEUL = VIRTUAL_KEY(21);

const VK_HANGUL = VIRTUAL_KEY(21);

const VK_IME_ON = VIRTUAL_KEY(22);

const VK_JUNJA = VIRTUAL_KEY(23);

const VK_FINAL = VIRTUAL_KEY(24);

const VK_HANJA = VIRTUAL_KEY(25);

const VK_KANJI = VIRTUAL_KEY(25);

const VK_IME_OFF = VIRTUAL_KEY(26);

const VK_ESCAPE = VIRTUAL_KEY(27);

const VK_CONVERT = VIRTUAL_KEY(28);

const VK_NONCONVERT = VIRTUAL_KEY(29);

const VK_ACCEPT = VIRTUAL_KEY(30);

const VK_MODECHANGE = VIRTUAL_KEY(31);

const VK_SPACE = VIRTUAL_KEY(32);

const VK_PRIOR = VIRTUAL_KEY(33);

const VK_NEXT = VIRTUAL_KEY(34);

const VK_END = VIRTUAL_KEY(35);

const VK_HOME = VIRTUAL_KEY(36);

const VK_LEFT = VIRTUAL_KEY(37);

const VK_UP = VIRTUAL_KEY(38);

const VK_RIGHT = VIRTUAL_KEY(39);

const VK_DOWN = VIRTUAL_KEY(40);

const VK_SELECT = VIRTUAL_KEY(41);

const VK_PRINT = VIRTUAL_KEY(42);

const VK_EXECUTE = VIRTUAL_KEY(43);

const VK_SNAPSHOT = VIRTUAL_KEY(44);

const VK_INSERT = VIRTUAL_KEY(45);

const VK_DELETE = VIRTUAL_KEY(46);

const VK_HELP = VIRTUAL_KEY(47);

const VK_LWIN = VIRTUAL_KEY(91);

const VK_RWIN = VIRTUAL_KEY(92);

const VK_APPS = VIRTUAL_KEY(93);

const VK_SLEEP = VIRTUAL_KEY(95);

const VK_NUMPAD0 = VIRTUAL_KEY(96);

const VK_NUMPAD1 = VIRTUAL_KEY(97);

const VK_NUMPAD2 = VIRTUAL_KEY(98);

const VK_NUMPAD3 = VIRTUAL_KEY(99);

const VK_NUMPAD4 = VIRTUAL_KEY(100);

const VK_NUMPAD5 = VIRTUAL_KEY(101);

const VK_NUMPAD6 = VIRTUAL_KEY(102);

const VK_NUMPAD7 = VIRTUAL_KEY(103);

const VK_NUMPAD8 = VIRTUAL_KEY(104);

const VK_NUMPAD9 = VIRTUAL_KEY(105);

const VK_MULTIPLY = VIRTUAL_KEY(106);

const VK_ADD = VIRTUAL_KEY(107);

const VK_SEPARATOR = VIRTUAL_KEY(108);

const VK_SUBTRACT = VIRTUAL_KEY(109);

const VK_DECIMAL = VIRTUAL_KEY(110);

const VK_DIVIDE = VIRTUAL_KEY(111);

const VK_F1 = VIRTUAL_KEY(112);

const VK_F2 = VIRTUAL_KEY(113);

const VK_F3 = VIRTUAL_KEY(114);

const VK_F4 = VIRTUAL_KEY(115);

const VK_F5 = VIRTUAL_KEY(116);

const VK_F6 = VIRTUAL_KEY(117);

const VK_F7 = VIRTUAL_KEY(118);

const VK_F8 = VIRTUAL_KEY(119);

const VK_F9 = VIRTUAL_KEY(120);

const VK_F10 = VIRTUAL_KEY(121);

const VK_F11 = VIRTUAL_KEY(122);

const VK_F12 = VIRTUAL_KEY(123);

const VK_F13 = VIRTUAL_KEY(124);

const VK_F14 = VIRTUAL_KEY(125);

const VK_F15 = VIRTUAL_KEY(126);

const VK_F16 = VIRTUAL_KEY(127);

const VK_F17 = VIRTUAL_KEY(128);

const VK_F18 = VIRTUAL_KEY(129);

const VK_F19 = VIRTUAL_KEY(130);

const VK_F20 = VIRTUAL_KEY(131);

const VK_F21 = VIRTUAL_KEY(132);

const VK_F22 = VIRTUAL_KEY(133);

const VK_F23 = VIRTUAL_KEY(134);

const VK_F24 = VIRTUAL_KEY(135);

const VK_NAVIGATION_VIEW = VIRTUAL_KEY(136);

const VK_NAVIGATION_MENU = VIRTUAL_KEY(137);

const VK_NAVIGATION_UP = VIRTUAL_KEY(138);

const VK_NAVIGATION_DOWN = VIRTUAL_KEY(139);

const VK_NAVIGATION_LEFT = VIRTUAL_KEY(140);

const VK_NAVIGATION_RIGHT = VIRTUAL_KEY(141);

const VK_NAVIGATION_ACCEPT = VIRTUAL_KEY(142);

const VK_NAVIGATION_CANCEL = VIRTUAL_KEY(143);

const VK_NUMLOCK = VIRTUAL_KEY(144);

const VK_SCROLL = VIRTUAL_KEY(145);

const VK_OEM_NEC_EQUAL = VIRTUAL_KEY(146);

const VK_OEM_FJ_JISHO = VIRTUAL_KEY(146);

const VK_OEM_FJ_MASSHOU = VIRTUAL_KEY(147);

const VK_OEM_FJ_TOUROKU = VIRTUAL_KEY(148);

const VK_OEM_FJ_LOYA = VIRTUAL_KEY(149);

const VK_OEM_FJ_ROYA = VIRTUAL_KEY(150);

const VK_LSHIFT = VIRTUAL_KEY(160);

const VK_RSHIFT = VIRTUAL_KEY(161);

const VK_LCONTROL = VIRTUAL_KEY(162);

const VK_RCONTROL = VIRTUAL_KEY(163);

const VK_LMENU = VIRTUAL_KEY(164);

const VK_RMENU = VIRTUAL_KEY(165);

const VK_BROWSER_BACK = VIRTUAL_KEY(166);

const VK_BROWSER_FORWARD = VIRTUAL_KEY(167);

const VK_BROWSER_REFRESH = VIRTUAL_KEY(168);

const VK_BROWSER_STOP = VIRTUAL_KEY(169);

const VK_BROWSER_SEARCH = VIRTUAL_KEY(170);

const VK_BROWSER_FAVORITES = VIRTUAL_KEY(171);

const VK_BROWSER_HOME = VIRTUAL_KEY(172);

const VK_VOLUME_MUTE = VIRTUAL_KEY(173);

const VK_VOLUME_DOWN = VIRTUAL_KEY(174);

const VK_VOLUME_UP = VIRTUAL_KEY(175);

const VK_MEDIA_NEXT_TRACK = VIRTUAL_KEY(176);

const VK_MEDIA_PREV_TRACK = VIRTUAL_KEY(177);

const VK_MEDIA_STOP = VIRTUAL_KEY(178);

const VK_MEDIA_PLAY_PAUSE = VIRTUAL_KEY(179);

const VK_LAUNCH_MAIL = VIRTUAL_KEY(180);

const VK_LAUNCH_MEDIA_SELECT = VIRTUAL_KEY(181);

const VK_LAUNCH_APP1 = VIRTUAL_KEY(182);

const VK_LAUNCH_APP2 = VIRTUAL_KEY(183);

const VK_OEM_1 = VIRTUAL_KEY(186);

const VK_OEM_PLUS = VIRTUAL_KEY(187);

const VK_OEM_COMMA = VIRTUAL_KEY(188);

const VK_OEM_MINUS = VIRTUAL_KEY(189);

const VK_OEM_PERIOD = VIRTUAL_KEY(190);

const VK_OEM_2 = VIRTUAL_KEY(191);

const VK_OEM_3 = VIRTUAL_KEY(192);

const VK_GAMEPAD_A = VIRTUAL_KEY(195);

const VK_GAMEPAD_B = VIRTUAL_KEY(196);

const VK_GAMEPAD_X = VIRTUAL_KEY(197);

const VK_GAMEPAD_Y = VIRTUAL_KEY(198);

const VK_GAMEPAD_RIGHT_SHOULDER = VIRTUAL_KEY(199);

const VK_GAMEPAD_LEFT_SHOULDER = VIRTUAL_KEY(200);

const VK_GAMEPAD_LEFT_TRIGGER = VIRTUAL_KEY(201);

const VK_GAMEPAD_RIGHT_TRIGGER = VIRTUAL_KEY(202);

const VK_GAMEPAD_DPAD_UP = VIRTUAL_KEY(203);

const VK_GAMEPAD_DPAD_DOWN = VIRTUAL_KEY(204);

const VK_GAMEPAD_DPAD_LEFT = VIRTUAL_KEY(205);

const VK_GAMEPAD_DPAD_RIGHT = VIRTUAL_KEY(206);

const VK_GAMEPAD_MENU = VIRTUAL_KEY(207);

const VK_GAMEPAD_VIEW = VIRTUAL_KEY(208);

const VK_GAMEPAD_LEFT_THUMBSTICK_BUTTON = VIRTUAL_KEY(209);

const VK_GAMEPAD_RIGHT_THUMBSTICK_BUTTON = VIRTUAL_KEY(210);

const VK_GAMEPAD_LEFT_THUMBSTICK_UP = VIRTUAL_KEY(211);

const VK_GAMEPAD_LEFT_THUMBSTICK_DOWN = VIRTUAL_KEY(212);

const VK_GAMEPAD_LEFT_THUMBSTICK_RIGHT = VIRTUAL_KEY(213);

const VK_GAMEPAD_LEFT_THUMBSTICK_LEFT = VIRTUAL_KEY(214);

const VK_GAMEPAD_RIGHT_THUMBSTICK_UP = VIRTUAL_KEY(215);

const VK_GAMEPAD_RIGHT_THUMBSTICK_DOWN = VIRTUAL_KEY(216);

const VK_GAMEPAD_RIGHT_THUMBSTICK_RIGHT = VIRTUAL_KEY(217);

const VK_GAMEPAD_RIGHT_THUMBSTICK_LEFT = VIRTUAL_KEY(218);

const VK_OEM_4 = VIRTUAL_KEY(219);

const VK_OEM_5 = VIRTUAL_KEY(220);

const VK_OEM_6 = VIRTUAL_KEY(221);

const VK_OEM_7 = VIRTUAL_KEY(222);

const VK_OEM_8 = VIRTUAL_KEY(223);

const VK_OEM_AX = VIRTUAL_KEY(225);

const VK_OEM_102 = VIRTUAL_KEY(226);

const VK_ICO_HELP = VIRTUAL_KEY(227);

const VK_ICO_00 = VIRTUAL_KEY(228);

const VK_PROCESSKEY = VIRTUAL_KEY(229);

const VK_ICO_CLEAR = VIRTUAL_KEY(230);

const VK_PACKET = VIRTUAL_KEY(231);

const VK_OEM_RESET = VIRTUAL_KEY(233);

const VK_OEM_JUMP = VIRTUAL_KEY(234);

const VK_OEM_PA1 = VIRTUAL_KEY(235);

const VK_OEM_PA2 = VIRTUAL_KEY(236);

const VK_OEM_PA3 = VIRTUAL_KEY(237);

const VK_OEM_WSCTRL = VIRTUAL_KEY(238);

const VK_OEM_CUSEL = VIRTUAL_KEY(239);

const VK_OEM_ATTN = VIRTUAL_KEY(240);

const VK_OEM_FINISH = VIRTUAL_KEY(241);

const VK_OEM_COPY = VIRTUAL_KEY(242);

const VK_OEM_AUTO = VIRTUAL_KEY(243);

const VK_OEM_ENLW = VIRTUAL_KEY(244);

const VK_OEM_BACKTAB = VIRTUAL_KEY(245);

const VK_ATTN = VIRTUAL_KEY(246);

const VK_CRSEL = VIRTUAL_KEY(247);

const VK_EXSEL = VIRTUAL_KEY(248);

const VK_EREOF = VIRTUAL_KEY(249);

const VK_PLAY = VIRTUAL_KEY(250);

const VK_ZOOM = VIRTUAL_KEY(251);

const VK_NONAME = VIRTUAL_KEY(252);

const VK_PA1 = VIRTUAL_KEY(253);

const VK_OEM_CLEAR = VIRTUAL_KEY(254);

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(VS_FIXEDFILEINFO_FILE_FLAGS other) => _ & other._ == other._;

  VS_FIXEDFILEINFO_FILE_FLAGS operator &(int other) => .new(_ & other);
  VS_FIXEDFILEINFO_FILE_FLAGS operator |(int other) => .new(_ | other);
}

const VS_FF_DEBUG = VS_FIXEDFILEINFO_FILE_FLAGS(1);

const VS_FF_PRERELEASE = VS_FIXEDFILEINFO_FILE_FLAGS(2);

const VS_FF_PATCHED = VS_FIXEDFILEINFO_FILE_FLAGS(4);

const VS_FF_PRIVATEBUILD = VS_FIXEDFILEINFO_FILE_FLAGS(8);

const VS_FF_INFOINFERRED = VS_FIXEDFILEINFO_FILE_FLAGS(16);

const VS_FF_SPECIALBUILD = VS_FIXEDFILEINFO_FILE_FLAGS(32);

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_OS(int _) implements int {}

const VOS_UNKNOWN = VS_FIXEDFILEINFO_FILE_OS(0);

const VOS_DOS = VS_FIXEDFILEINFO_FILE_OS(65536);

const VOS_OS216 = VS_FIXEDFILEINFO_FILE_OS(131072);

const VOS_OS232 = VS_FIXEDFILEINFO_FILE_OS(196608);

const VOS_NT = VS_FIXEDFILEINFO_FILE_OS(262144);

const VOS_WINCE = VS_FIXEDFILEINFO_FILE_OS(327680);

const VOS__BASE = VS_FIXEDFILEINFO_FILE_OS(0);

const VOS__WINDOWS16 = VS_FIXEDFILEINFO_FILE_OS(1);

const VOS__PM16 = VS_FIXEDFILEINFO_FILE_OS(2);

const VOS__PM32 = VS_FIXEDFILEINFO_FILE_OS(3);

const VOS__WINDOWS32 = VS_FIXEDFILEINFO_FILE_OS(4);

const VOS_DOS_WINDOWS16 = VS_FIXEDFILEINFO_FILE_OS(65537);

const VOS_DOS_WINDOWS32 = VS_FIXEDFILEINFO_FILE_OS(65540);

const VOS_OS216_PM16 = VS_FIXEDFILEINFO_FILE_OS(131074);

const VOS_OS232_PM32 = VS_FIXEDFILEINFO_FILE_OS(196611);

const VOS_NT_WINDOWS32 = VS_FIXEDFILEINFO_FILE_OS(262148);

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_SUBTYPE(int _) implements int {}

const VFT2_UNKNOWN = VS_FIXEDFILEINFO_FILE_SUBTYPE(0);

const VFT2_DRV_PRINTER = VS_FIXEDFILEINFO_FILE_SUBTYPE(1);

const VFT2_DRV_KEYBOARD = VS_FIXEDFILEINFO_FILE_SUBTYPE(2);

const VFT2_DRV_LANGUAGE = VS_FIXEDFILEINFO_FILE_SUBTYPE(3);

const VFT2_DRV_DISPLAY = VS_FIXEDFILEINFO_FILE_SUBTYPE(4);

const VFT2_DRV_MOUSE = VS_FIXEDFILEINFO_FILE_SUBTYPE(5);

const VFT2_DRV_NETWORK = VS_FIXEDFILEINFO_FILE_SUBTYPE(6);

const VFT2_DRV_SYSTEM = VS_FIXEDFILEINFO_FILE_SUBTYPE(7);

const VFT2_DRV_INSTALLABLE = VS_FIXEDFILEINFO_FILE_SUBTYPE(8);

const VFT2_DRV_SOUND = VS_FIXEDFILEINFO_FILE_SUBTYPE(9);

const VFT2_DRV_COMM = VS_FIXEDFILEINFO_FILE_SUBTYPE(10);

const VFT2_DRV_INPUTMETHOD = VS_FIXEDFILEINFO_FILE_SUBTYPE(11);

const VFT2_DRV_VERSIONED_PRINTER = VS_FIXEDFILEINFO_FILE_SUBTYPE(12);

const VFT2_FONT_RASTER = VS_FIXEDFILEINFO_FILE_SUBTYPE(1);

const VFT2_FONT_VECTOR = VS_FIXEDFILEINFO_FILE_SUBTYPE(2);

const VFT2_FONT_TRUETYPE = VS_FIXEDFILEINFO_FILE_SUBTYPE(3);

/// {@category enum}
extension type const VS_FIXEDFILEINFO_FILE_TYPE(int _) implements int {}

const VFT_UNKNOWN = VS_FIXEDFILEINFO_FILE_TYPE(0);

const VFT_APP = VS_FIXEDFILEINFO_FILE_TYPE(1);

const VFT_DLL = VS_FIXEDFILEINFO_FILE_TYPE(2);

const VFT_DRV = VS_FIXEDFILEINFO_FILE_TYPE(3);

const VFT_FONT = VS_FIXEDFILEINFO_FILE_TYPE(4);

const VFT_VXD = VS_FIXEDFILEINFO_FILE_TYPE(5);

const VFT_STATIC_LIB = VS_FIXEDFILEINFO_FILE_TYPE(7);

/// {@category enum}
extension type const WAIT_EVENT(int _) implements int {}

const WAIT_OBJECT_0 = WAIT_EVENT(0);

const WAIT_ABANDONED = WAIT_EVENT(128);

const WAIT_ABANDONED_0 = WAIT_EVENT(128);

const WAIT_IO_COMPLETION = WAIT_EVENT(192);

const WAIT_TIMEOUT = WAIT_EVENT(258);

const WAIT_FAILED = WAIT_EVENT(4294967295);

/// Contains flags that define the comparison to perform when using the
/// IWbemClassObject::CompareTo method.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/ne-wbemcli-wbem_comparison_flag>.
///
/// {@category enum}
extension type const WBEM_COMPARISON_FLAG(int _) implements int {}

/// Compare all features.
const WBEM_COMPARISON_INCLUDE_ALL = WBEM_COMPARISON_FLAG(0);

/// Ignore all qualifiers (including <b>Key</b> and <b>Dynamic</b>) in
/// comparison.
const WBEM_FLAG_IGNORE_QUALIFIERS = WBEM_COMPARISON_FLAG(1);

/// Ignore the source of the objects, namely the server and the namespace they
/// came from, in comparison to other objects.
const WBEM_FLAG_IGNORE_OBJECT_SOURCE = WBEM_COMPARISON_FLAG(2);

/// Ignore default values of properties.
const WBEM_FLAG_IGNORE_DEFAULT_VALUES = WBEM_COMPARISON_FLAG(4);

/// Assume that the objects being compared are instances of the same class.
const WBEM_FLAG_IGNORE_CLASS = WBEM_COMPARISON_FLAG(8);

/// Compare string values in a case-insensitive manner.
const WBEM_FLAG_IGNORE_CASE = WBEM_COMPARISON_FLAG(16);

/// Ignore qualifier flavors.
const WBEM_FLAG_IGNORE_FLAVOR = WBEM_COMPARISON_FLAG(32);

/// Contains flags used with the IWbemClassObject::GetNames method.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/ne-wbemcli-wbem_condition_flag_type>.
///
/// {@category enum}
extension type const WBEM_CONDITION_FLAG_TYPE(int _) implements int {}

const WBEM_FLAG_ALWAYS = WBEM_CONDITION_FLAG_TYPE(0);

const WBEM_FLAG_ONLY_IF_TRUE = WBEM_CONDITION_FLAG_TYPE(1);

const WBEM_FLAG_ONLY_IF_FALSE = WBEM_CONDITION_FLAG_TYPE(2);

const WBEM_FLAG_ONLY_IF_IDENTICAL = WBEM_CONDITION_FLAG_TYPE(3);

const WBEM_MASK_PRIMARY_CONDITION = WBEM_CONDITION_FLAG_TYPE(3);

const WBEM_FLAG_KEYS_ONLY = WBEM_CONDITION_FLAG_TYPE(4);

const WBEM_FLAG_REFS_ONLY = WBEM_CONDITION_FLAG_TYPE(8);

const WBEM_FLAG_LOCAL_ONLY = WBEM_CONDITION_FLAG_TYPE(16);

const WBEM_FLAG_PROPAGATED_ONLY = WBEM_CONDITION_FLAG_TYPE(32);

const WBEM_FLAG_SYSTEM_ONLY = WBEM_CONDITION_FLAG_TYPE(48);

const WBEM_FLAG_NONSYSTEM_ONLY = WBEM_CONDITION_FLAG_TYPE(64);

const WBEM_MASK_CONDITION_ORIGIN = WBEM_CONDITION_FLAG_TYPE(112);

const WBEM_FLAG_CLASS_OVERRIDES_ONLY = WBEM_CONDITION_FLAG_TYPE(256);

const WBEM_FLAG_CLASS_LOCAL_AND_OVERRIDES = WBEM_CONDITION_FLAG_TYPE(512);

const WBEM_MASK_CLASS_CONDITION = WBEM_CONDITION_FLAG_TYPE(768);

/// Contains general-purpose method parameter flags.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/ne-wbemcli-wbem_generic_flag_type>.
///
/// {@category enum}
extension type const WBEM_GENERIC_FLAG_TYPE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(WBEM_GENERIC_FLAG_TYPE other) => _ & other._ == other._;

  WBEM_GENERIC_FLAG_TYPE operator &(int other) => .new(_ & other);
  WBEM_GENERIC_FLAG_TYPE operator |(int other) => .new(_ | other);
}

const WBEM_FLAG_RETURN_IMMEDIATELY = WBEM_GENERIC_FLAG_TYPE(16);

const WBEM_FLAG_RETURN_WBEM_COMPLETE = WBEM_GENERIC_FLAG_TYPE(0);

const WBEM_FLAG_BIDIRECTIONAL = WBEM_GENERIC_FLAG_TYPE(0);

const WBEM_FLAG_FORWARD_ONLY = WBEM_GENERIC_FLAG_TYPE(32);

const WBEM_FLAG_NO_ERROR_OBJECT = WBEM_GENERIC_FLAG_TYPE(64);

const WBEM_FLAG_RETURN_ERROR_OBJECT = WBEM_GENERIC_FLAG_TYPE(0);

const WBEM_FLAG_SEND_STATUS = WBEM_GENERIC_FLAG_TYPE(128);

const WBEM_FLAG_DONT_SEND_STATUS = WBEM_GENERIC_FLAG_TYPE(0);

const WBEM_FLAG_ENSURE_LOCATABLE = WBEM_GENERIC_FLAG_TYPE(256);

const WBEM_FLAG_DIRECT_READ = WBEM_GENERIC_FLAG_TYPE(512);

const WBEM_FLAG_SEND_ONLY_SELECTED = WBEM_GENERIC_FLAG_TYPE(0);

const WBEM_RETURN_WHEN_COMPLETE = WBEM_GENERIC_FLAG_TYPE(0);

const WBEM_RETURN_IMMEDIATELY = WBEM_GENERIC_FLAG_TYPE(16);

const WBEM_MASK_RESERVED_FLAGS = WBEM_GENERIC_FLAG_TYPE(126976);

const WBEM_FLAG_USE_AMENDED_QUALIFIERS = WBEM_GENERIC_FLAG_TYPE(131072);

const WBEM_FLAG_STRONG_VALIDATION = WBEM_GENERIC_FLAG_TYPE(1048576);

/// Contains flags that modify the behavior of refresher methods.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/ne-wbemcli-wbem_refresher_flags>.
///
/// {@category enum}
extension type const WBEM_REFRESHER_FLAGS(int _) implements int {}

/// If the connection is broken, the refresher attempts to reconnect to the
/// provider automatically.
const WBEM_FLAG_REFRESH_AUTO_RECONNECT = WBEM_REFRESHER_FLAGS(0);

/// If the connection is broken, the refresher does not attempt to reconnect to
/// the provider automatically.
const WBEM_FLAG_REFRESH_NO_AUTO_RECONNECT = WBEM_REFRESHER_FLAGS(1);

const NO_ERROR = WIN32_ERROR(0);

const ERROR_EXPECTED_SECTION_NAME = WIN32_ERROR(3758096384);

const ERROR_BAD_SECTION_NAME_LINE = WIN32_ERROR(3758096385);

const ERROR_SECTION_NAME_TOO_LONG = WIN32_ERROR(3758096386);

const ERROR_GENERAL_SYNTAX = WIN32_ERROR(3758096387);

const ERROR_WRONG_INF_STYLE = WIN32_ERROR(3758096640);

const ERROR_SECTION_NOT_FOUND = WIN32_ERROR(3758096641);

const ERROR_LINE_NOT_FOUND = WIN32_ERROR(3758096642);

const ERROR_NO_BACKUP = WIN32_ERROR(3758096643);

const ERROR_NO_ASSOCIATED_CLASS = WIN32_ERROR(3758096896);

const ERROR_CLASS_MISMATCH = WIN32_ERROR(3758096897);

const ERROR_DUPLICATE_FOUND = WIN32_ERROR(3758096898);

const ERROR_NO_DRIVER_SELECTED = WIN32_ERROR(3758096899);

const ERROR_KEY_DOES_NOT_EXIST = WIN32_ERROR(3758096900);

const ERROR_INVALID_DEVINST_NAME = WIN32_ERROR(3758096901);

const ERROR_INVALID_CLASS = WIN32_ERROR(3758096902);

const ERROR_DEVINST_ALREADY_EXISTS = WIN32_ERROR(3758096903);

const ERROR_DEVINFO_NOT_REGISTERED = WIN32_ERROR(3758096904);

const ERROR_INVALID_REG_PROPERTY = WIN32_ERROR(3758096905);

const ERROR_NO_INF = WIN32_ERROR(3758096906);

const ERROR_NO_SUCH_DEVINST = WIN32_ERROR(3758096907);

const ERROR_CANT_LOAD_CLASS_ICON = WIN32_ERROR(3758096908);

const ERROR_INVALID_CLASS_INSTALLER = WIN32_ERROR(3758096909);

const ERROR_DI_DO_DEFAULT = WIN32_ERROR(3758096910);

const ERROR_DI_NOFILECOPY = WIN32_ERROR(3758096911);

const ERROR_INVALID_HWPROFILE = WIN32_ERROR(3758096912);

const ERROR_NO_DEVICE_SELECTED = WIN32_ERROR(3758096913);

const ERROR_DEVINFO_LIST_LOCKED = WIN32_ERROR(3758096914);

const ERROR_DEVINFO_DATA_LOCKED = WIN32_ERROR(3758096915);

const ERROR_DI_BAD_PATH = WIN32_ERROR(3758096916);

const ERROR_NO_CLASSINSTALL_PARAMS = WIN32_ERROR(3758096917);

const ERROR_FILEQUEUE_LOCKED = WIN32_ERROR(3758096918);

const ERROR_BAD_SERVICE_INSTALLSECT = WIN32_ERROR(3758096919);

const ERROR_NO_CLASS_DRIVER_LIST = WIN32_ERROR(3758096920);

const ERROR_NO_ASSOCIATED_SERVICE = WIN32_ERROR(3758096921);

const ERROR_NO_DEFAULT_DEVICE_INTERFACE = WIN32_ERROR(3758096922);

const ERROR_DEVICE_INTERFACE_ACTIVE = WIN32_ERROR(3758096923);

const ERROR_DEVICE_INTERFACE_REMOVED = WIN32_ERROR(3758096924);

const ERROR_BAD_INTERFACE_INSTALLSECT = WIN32_ERROR(3758096925);

const ERROR_NO_SUCH_INTERFACE_CLASS = WIN32_ERROR(3758096926);

const ERROR_INVALID_REFERENCE_STRING = WIN32_ERROR(3758096927);

const ERROR_INVALID_MACHINENAME = WIN32_ERROR(3758096928);

const ERROR_REMOTE_COMM_FAILURE = WIN32_ERROR(3758096929);

const ERROR_MACHINE_UNAVAILABLE = WIN32_ERROR(3758096930);

const ERROR_NO_CONFIGMGR_SERVICES = WIN32_ERROR(3758096931);

const ERROR_INVALID_PROPPAGE_PROVIDER = WIN32_ERROR(3758096932);

const ERROR_NO_SUCH_DEVICE_INTERFACE = WIN32_ERROR(3758096933);

const ERROR_DI_POSTPROCESSING_REQUIRED = WIN32_ERROR(3758096934);

const ERROR_INVALID_COINSTALLER = WIN32_ERROR(3758096935);

const ERROR_NO_COMPAT_DRIVERS = WIN32_ERROR(3758096936);

const ERROR_NO_DEVICE_ICON = WIN32_ERROR(3758096937);

const ERROR_INVALID_INF_LOGCONFIG = WIN32_ERROR(3758096938);

const ERROR_DI_DONT_INSTALL = WIN32_ERROR(3758096939);

const ERROR_INVALID_FILTER_DRIVER = WIN32_ERROR(3758096940);

const ERROR_NON_WINDOWS_NT_DRIVER = WIN32_ERROR(3758096941);

const ERROR_NON_WINDOWS_DRIVER = WIN32_ERROR(3758096942);

const ERROR_NO_CATALOG_FOR_OEM_INF = WIN32_ERROR(3758096943);

const ERROR_DEVINSTALL_QUEUE_NONNATIVE = WIN32_ERROR(3758096944);

const ERROR_NOT_DISABLEABLE = WIN32_ERROR(3758096945);

const ERROR_CANT_REMOVE_DEVINST = WIN32_ERROR(3758096946);

const ERROR_INVALID_TARGET = WIN32_ERROR(3758096947);

const ERROR_DRIVER_NONNATIVE = WIN32_ERROR(3758096948);

const ERROR_IN_WOW64 = WIN32_ERROR(3758096949);

const ERROR_SET_SYSTEM_RESTORE_POINT = WIN32_ERROR(3758096950);

const ERROR_SCE_DISABLED = WIN32_ERROR(3758096952);

const ERROR_UNKNOWN_EXCEPTION = WIN32_ERROR(3758096953);

const ERROR_PNP_REGISTRY_ERROR = WIN32_ERROR(3758096954);

const ERROR_REMOTE_REQUEST_UNSUPPORTED = WIN32_ERROR(3758096955);

const ERROR_NOT_AN_INSTALLED_OEM_INF = WIN32_ERROR(3758096956);

const ERROR_INF_IN_USE_BY_DEVICES = WIN32_ERROR(3758096957);

const ERROR_DI_FUNCTION_OBSOLETE = WIN32_ERROR(3758096958);

const ERROR_NO_AUTHENTICODE_CATALOG = WIN32_ERROR(3758096959);

const ERROR_AUTHENTICODE_DISALLOWED = WIN32_ERROR(3758096960);

const ERROR_AUTHENTICODE_TRUSTED_PUBLISHER = WIN32_ERROR(3758096961);

const ERROR_AUTHENTICODE_TRUST_NOT_ESTABLISHED = WIN32_ERROR(3758096962);

const ERROR_AUTHENTICODE_PUBLISHER_NOT_TRUSTED = WIN32_ERROR(3758096963);

const ERROR_SIGNATURE_OSATTRIBUTE_MISMATCH = WIN32_ERROR(3758096964);

const ERROR_ONLY_VALIDATE_VIA_AUTHENTICODE = WIN32_ERROR(3758096965);

const ERROR_DEVICE_INSTALLER_NOT_READY = WIN32_ERROR(3758096966);

const ERROR_DRIVER_STORE_ADD_FAILED = WIN32_ERROR(3758096967);

const ERROR_DEVICE_INSTALL_BLOCKED = WIN32_ERROR(3758096968);

const ERROR_DRIVER_INSTALL_BLOCKED = WIN32_ERROR(3758096969);

const ERROR_WRONG_INF_TYPE = WIN32_ERROR(3758096970);

const ERROR_FILE_HASH_NOT_IN_CATALOG = WIN32_ERROR(3758096971);

const ERROR_DRIVER_STORE_DELETE_FAILED = WIN32_ERROR(3758096972);

const ERROR_UNRECOVERABLE_STACK_OVERFLOW = WIN32_ERROR(3758097152);

const ERROR_NO_DEFAULT_INTERFACE_DEVICE = WIN32_ERROR(3758096922);

const ERROR_INTERFACE_DEVICE_ACTIVE = WIN32_ERROR(3758096923);

const ERROR_INTERFACE_DEVICE_REMOVED = WIN32_ERROR(3758096924);

const ERROR_NO_SUCH_INTERFACE_DEVICE = WIN32_ERROR(3758096933);

const ERROR_NOT_INSTALLED = WIN32_ERROR(3758100480);

const ERROR_SUCCESS = WIN32_ERROR(0);

const ERROR_INVALID_FUNCTION = WIN32_ERROR(1);

const ERROR_FILE_NOT_FOUND = WIN32_ERROR(2);

const ERROR_PATH_NOT_FOUND = WIN32_ERROR(3);

const ERROR_TOO_MANY_OPEN_FILES = WIN32_ERROR(4);

const ERROR_ACCESS_DENIED = WIN32_ERROR(5);

const ERROR_INVALID_HANDLE = WIN32_ERROR(6);

const ERROR_ARENA_TRASHED = WIN32_ERROR(7);

const ERROR_NOT_ENOUGH_MEMORY = WIN32_ERROR(8);

const ERROR_INVALID_BLOCK = WIN32_ERROR(9);

const ERROR_BAD_ENVIRONMENT = WIN32_ERROR(10);

const ERROR_BAD_FORMAT = WIN32_ERROR(11);

const ERROR_INVALID_ACCESS = WIN32_ERROR(12);

const ERROR_INVALID_DATA = WIN32_ERROR(13);

const ERROR_OUTOFMEMORY = WIN32_ERROR(14);

const ERROR_INVALID_DRIVE = WIN32_ERROR(15);

const ERROR_CURRENT_DIRECTORY = WIN32_ERROR(16);

const ERROR_NOT_SAME_DEVICE = WIN32_ERROR(17);

const ERROR_NO_MORE_FILES = WIN32_ERROR(18);

const ERROR_WRITE_PROTECT = WIN32_ERROR(19);

const ERROR_BAD_UNIT = WIN32_ERROR(20);

const ERROR_NOT_READY = WIN32_ERROR(21);

const ERROR_BAD_COMMAND = WIN32_ERROR(22);

const ERROR_CRC = WIN32_ERROR(23);

const ERROR_BAD_LENGTH = WIN32_ERROR(24);

const ERROR_SEEK = WIN32_ERROR(25);

const ERROR_NOT_DOS_DISK = WIN32_ERROR(26);

const ERROR_SECTOR_NOT_FOUND = WIN32_ERROR(27);

const ERROR_OUT_OF_PAPER = WIN32_ERROR(28);

const ERROR_WRITE_FAULT = WIN32_ERROR(29);

const ERROR_READ_FAULT = WIN32_ERROR(30);

const ERROR_GEN_FAILURE = WIN32_ERROR(31);

const ERROR_SHARING_VIOLATION = WIN32_ERROR(32);

const ERROR_LOCK_VIOLATION = WIN32_ERROR(33);

const ERROR_WRONG_DISK = WIN32_ERROR(34);

const ERROR_SHARING_BUFFER_EXCEEDED = WIN32_ERROR(36);

const ERROR_HANDLE_EOF = WIN32_ERROR(38);

const ERROR_HANDLE_DISK_FULL = WIN32_ERROR(39);

const ERROR_NOT_SUPPORTED = WIN32_ERROR(50);

const ERROR_REM_NOT_LIST = WIN32_ERROR(51);

const ERROR_DUP_NAME = WIN32_ERROR(52);

const ERROR_BAD_NETPATH = WIN32_ERROR(53);

const ERROR_NETWORK_BUSY = WIN32_ERROR(54);

const ERROR_DEV_NOT_EXIST = WIN32_ERROR(55);

const ERROR_TOO_MANY_CMDS = WIN32_ERROR(56);

const ERROR_ADAP_HDW_ERR = WIN32_ERROR(57);

const ERROR_BAD_NET_RESP = WIN32_ERROR(58);

const ERROR_UNEXP_NET_ERR = WIN32_ERROR(59);

const ERROR_BAD_REM_ADAP = WIN32_ERROR(60);

const ERROR_PRINTQ_FULL = WIN32_ERROR(61);

const ERROR_NO_SPOOL_SPACE = WIN32_ERROR(62);

const ERROR_PRINT_CANCELLED = WIN32_ERROR(63);

const ERROR_NETNAME_DELETED = WIN32_ERROR(64);

const ERROR_NETWORK_ACCESS_DENIED = WIN32_ERROR(65);

const ERROR_BAD_DEV_TYPE = WIN32_ERROR(66);

const ERROR_BAD_NET_NAME = WIN32_ERROR(67);

const ERROR_TOO_MANY_NAMES = WIN32_ERROR(68);

const ERROR_TOO_MANY_SESS = WIN32_ERROR(69);

const ERROR_SHARING_PAUSED = WIN32_ERROR(70);

const ERROR_REQ_NOT_ACCEP = WIN32_ERROR(71);

const ERROR_REDIR_PAUSED = WIN32_ERROR(72);

const ERROR_FILE_EXISTS = WIN32_ERROR(80);

const ERROR_CANNOT_MAKE = WIN32_ERROR(82);

const ERROR_FAIL_I24 = WIN32_ERROR(83);

const ERROR_OUT_OF_STRUCTURES = WIN32_ERROR(84);

const ERROR_ALREADY_ASSIGNED = WIN32_ERROR(85);

const ERROR_INVALID_PASSWORD = WIN32_ERROR(86);

const ERROR_INVALID_PARAMETER = WIN32_ERROR(87);

const ERROR_NET_WRITE_FAULT = WIN32_ERROR(88);

const ERROR_NO_PROC_SLOTS = WIN32_ERROR(89);

const ERROR_TOO_MANY_SEMAPHORES = WIN32_ERROR(100);

const ERROR_EXCL_SEM_ALREADY_OWNED = WIN32_ERROR(101);

const ERROR_SEM_IS_SET = WIN32_ERROR(102);

const ERROR_TOO_MANY_SEM_REQUESTS = WIN32_ERROR(103);

const ERROR_INVALID_AT_INTERRUPT_TIME = WIN32_ERROR(104);

const ERROR_SEM_OWNER_DIED = WIN32_ERROR(105);

const ERROR_SEM_USER_LIMIT = WIN32_ERROR(106);

const ERROR_DISK_CHANGE = WIN32_ERROR(107);

const ERROR_DRIVE_LOCKED = WIN32_ERROR(108);

const ERROR_BROKEN_PIPE = WIN32_ERROR(109);

const ERROR_OPEN_FAILED = WIN32_ERROR(110);

const ERROR_BUFFER_OVERFLOW = WIN32_ERROR(111);

const ERROR_DISK_FULL = WIN32_ERROR(112);

const ERROR_NO_MORE_SEARCH_HANDLES = WIN32_ERROR(113);

const ERROR_INVALID_TARGET_HANDLE = WIN32_ERROR(114);

const ERROR_INVALID_CATEGORY = WIN32_ERROR(117);

const ERROR_INVALID_VERIFY_SWITCH = WIN32_ERROR(118);

const ERROR_BAD_DRIVER_LEVEL = WIN32_ERROR(119);

const ERROR_CALL_NOT_IMPLEMENTED = WIN32_ERROR(120);

const ERROR_SEM_TIMEOUT = WIN32_ERROR(121);

const ERROR_INSUFFICIENT_BUFFER = WIN32_ERROR(122);

const ERROR_INVALID_NAME = WIN32_ERROR(123);

const ERROR_INVALID_LEVEL = WIN32_ERROR(124);

const ERROR_NO_VOLUME_LABEL = WIN32_ERROR(125);

const ERROR_MOD_NOT_FOUND = WIN32_ERROR(126);

const ERROR_PROC_NOT_FOUND = WIN32_ERROR(127);

const ERROR_WAIT_NO_CHILDREN = WIN32_ERROR(128);

const ERROR_CHILD_NOT_COMPLETE = WIN32_ERROR(129);

const ERROR_DIRECT_ACCESS_HANDLE = WIN32_ERROR(130);

const ERROR_NEGATIVE_SEEK = WIN32_ERROR(131);

const ERROR_SEEK_ON_DEVICE = WIN32_ERROR(132);

const ERROR_IS_JOIN_TARGET = WIN32_ERROR(133);

const ERROR_IS_JOINED = WIN32_ERROR(134);

const ERROR_IS_SUBSTED = WIN32_ERROR(135);

const ERROR_NOT_JOINED = WIN32_ERROR(136);

const ERROR_NOT_SUBSTED = WIN32_ERROR(137);

const ERROR_JOIN_TO_JOIN = WIN32_ERROR(138);

const ERROR_SUBST_TO_SUBST = WIN32_ERROR(139);

const ERROR_JOIN_TO_SUBST = WIN32_ERROR(140);

const ERROR_SUBST_TO_JOIN = WIN32_ERROR(141);

const ERROR_BUSY_DRIVE = WIN32_ERROR(142);

const ERROR_SAME_DRIVE = WIN32_ERROR(143);

const ERROR_DIR_NOT_ROOT = WIN32_ERROR(144);

const ERROR_DIR_NOT_EMPTY = WIN32_ERROR(145);

const ERROR_IS_SUBST_PATH = WIN32_ERROR(146);

const ERROR_IS_JOIN_PATH = WIN32_ERROR(147);

const ERROR_PATH_BUSY = WIN32_ERROR(148);

const ERROR_IS_SUBST_TARGET = WIN32_ERROR(149);

const ERROR_SYSTEM_TRACE = WIN32_ERROR(150);

const ERROR_INVALID_EVENT_COUNT = WIN32_ERROR(151);

const ERROR_TOO_MANY_MUXWAITERS = WIN32_ERROR(152);

const ERROR_INVALID_LIST_FORMAT = WIN32_ERROR(153);

const ERROR_LABEL_TOO_LONG = WIN32_ERROR(154);

const ERROR_TOO_MANY_TCBS = WIN32_ERROR(155);

const ERROR_SIGNAL_REFUSED = WIN32_ERROR(156);

const ERROR_DISCARDED = WIN32_ERROR(157);

const ERROR_NOT_LOCKED = WIN32_ERROR(158);

const ERROR_BAD_THREADID_ADDR = WIN32_ERROR(159);

const ERROR_BAD_ARGUMENTS = WIN32_ERROR(160);

const ERROR_BAD_PATHNAME = WIN32_ERROR(161);

const ERROR_SIGNAL_PENDING = WIN32_ERROR(162);

const ERROR_MAX_THRDS_REACHED = WIN32_ERROR(164);

const ERROR_LOCK_FAILED = WIN32_ERROR(167);

const ERROR_BUSY = WIN32_ERROR(170);

const ERROR_DEVICE_SUPPORT_IN_PROGRESS = WIN32_ERROR(171);

const ERROR_CANCEL_VIOLATION = WIN32_ERROR(173);

const ERROR_ATOMIC_LOCKS_NOT_SUPPORTED = WIN32_ERROR(174);

const ERROR_INVALID_SEGMENT_NUMBER = WIN32_ERROR(180);

const ERROR_INVALID_ORDINAL = WIN32_ERROR(182);

const ERROR_ALREADY_EXISTS = WIN32_ERROR(183);

const ERROR_INVALID_FLAG_NUMBER = WIN32_ERROR(186);

const ERROR_SEM_NOT_FOUND = WIN32_ERROR(187);

const ERROR_INVALID_STARTING_CODESEG = WIN32_ERROR(188);

const ERROR_INVALID_STACKSEG = WIN32_ERROR(189);

const ERROR_INVALID_MODULETYPE = WIN32_ERROR(190);

const ERROR_INVALID_EXE_SIGNATURE = WIN32_ERROR(191);

const ERROR_EXE_MARKED_INVALID = WIN32_ERROR(192);

const ERROR_BAD_EXE_FORMAT = WIN32_ERROR(193);

const ERROR_ITERATED_DATA_EXCEEDS_64k = WIN32_ERROR(194);

const ERROR_INVALID_MINALLOCSIZE = WIN32_ERROR(195);

const ERROR_DYNLINK_FROM_INVALID_RING = WIN32_ERROR(196);

const ERROR_IOPL_NOT_ENABLED = WIN32_ERROR(197);

const ERROR_INVALID_SEGDPL = WIN32_ERROR(198);

const ERROR_AUTODATASEG_EXCEEDS_64k = WIN32_ERROR(199);

const ERROR_RING2SEG_MUST_BE_MOVABLE = WIN32_ERROR(200);

const ERROR_RELOC_CHAIN_XEEDS_SEGLIM = WIN32_ERROR(201);

const ERROR_INFLOOP_IN_RELOC_CHAIN = WIN32_ERROR(202);

const ERROR_ENVVAR_NOT_FOUND = WIN32_ERROR(203);

const ERROR_NO_SIGNAL_SENT = WIN32_ERROR(205);

const ERROR_FILENAME_EXCED_RANGE = WIN32_ERROR(206);

const ERROR_RING2_STACK_IN_USE = WIN32_ERROR(207);

const ERROR_META_EXPANSION_TOO_LONG = WIN32_ERROR(208);

const ERROR_INVALID_SIGNAL_NUMBER = WIN32_ERROR(209);

const ERROR_THREAD_1_INACTIVE = WIN32_ERROR(210);

const ERROR_LOCKED = WIN32_ERROR(212);

const ERROR_TOO_MANY_MODULES = WIN32_ERROR(214);

const ERROR_NESTING_NOT_ALLOWED = WIN32_ERROR(215);

const ERROR_EXE_MACHINE_TYPE_MISMATCH = WIN32_ERROR(216);

const ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY = WIN32_ERROR(217);

const ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY = WIN32_ERROR(218);

const ERROR_FILE_CHECKED_OUT = WIN32_ERROR(220);

const ERROR_CHECKOUT_REQUIRED = WIN32_ERROR(221);

const ERROR_BAD_FILE_TYPE = WIN32_ERROR(222);

const ERROR_FILE_TOO_LARGE = WIN32_ERROR(223);

const ERROR_FORMS_AUTH_REQUIRED = WIN32_ERROR(224);

const ERROR_VIRUS_INFECTED = WIN32_ERROR(225);

const ERROR_VIRUS_DELETED = WIN32_ERROR(226);

const ERROR_PIPE_LOCAL = WIN32_ERROR(229);

const ERROR_BAD_PIPE = WIN32_ERROR(230);

const ERROR_PIPE_BUSY = WIN32_ERROR(231);

const ERROR_NO_DATA = WIN32_ERROR(232);

const ERROR_PIPE_NOT_CONNECTED = WIN32_ERROR(233);

const ERROR_MORE_DATA = WIN32_ERROR(234);

const ERROR_NO_WORK_DONE = WIN32_ERROR(235);

const ERROR_VC_DISCONNECTED = WIN32_ERROR(240);

const ERROR_INVALID_EA_NAME = WIN32_ERROR(254);

const ERROR_EA_LIST_INCONSISTENT = WIN32_ERROR(255);

const ERROR_NO_MORE_ITEMS = WIN32_ERROR(259);

const ERROR_CANNOT_COPY = WIN32_ERROR(266);

const ERROR_DIRECTORY = WIN32_ERROR(267);

const ERROR_EAS_DIDNT_FIT = WIN32_ERROR(275);

const ERROR_EA_FILE_CORRUPT = WIN32_ERROR(276);

const ERROR_EA_TABLE_FULL = WIN32_ERROR(277);

const ERROR_INVALID_EA_HANDLE = WIN32_ERROR(278);

const ERROR_EAS_NOT_SUPPORTED = WIN32_ERROR(282);

const ERROR_NOT_OWNER = WIN32_ERROR(288);

const ERROR_TOO_MANY_POSTS = WIN32_ERROR(298);

const ERROR_PARTIAL_COPY = WIN32_ERROR(299);

const ERROR_OPLOCK_NOT_GRANTED = WIN32_ERROR(300);

const ERROR_INVALID_OPLOCK_PROTOCOL = WIN32_ERROR(301);

const ERROR_DISK_TOO_FRAGMENTED = WIN32_ERROR(302);

const ERROR_DELETE_PENDING = WIN32_ERROR(303);

const ERROR_INCOMPATIBLE_WITH_GLOBAL_SHORT_NAME_REGISTRY_SETTING = WIN32_ERROR(
  304,
);

const ERROR_SHORT_NAMES_NOT_ENABLED_ON_VOLUME = WIN32_ERROR(305);

const ERROR_SECURITY_STREAM_IS_INCONSISTENT = WIN32_ERROR(306);

const ERROR_INVALID_LOCK_RANGE = WIN32_ERROR(307);

const ERROR_IMAGE_SUBSYSTEM_NOT_PRESENT = WIN32_ERROR(308);

const ERROR_NOTIFICATION_GUID_ALREADY_DEFINED = WIN32_ERROR(309);

const ERROR_INVALID_EXCEPTION_HANDLER = WIN32_ERROR(310);

const ERROR_DUPLICATE_PRIVILEGES = WIN32_ERROR(311);

const ERROR_NO_RANGES_PROCESSED = WIN32_ERROR(312);

const ERROR_NOT_ALLOWED_ON_SYSTEM_FILE = WIN32_ERROR(313);

const ERROR_DISK_RESOURCES_EXHAUSTED = WIN32_ERROR(314);

const ERROR_INVALID_TOKEN = WIN32_ERROR(315);

const ERROR_DEVICE_FEATURE_NOT_SUPPORTED = WIN32_ERROR(316);

const ERROR_MR_MID_NOT_FOUND = WIN32_ERROR(317);

const ERROR_SCOPE_NOT_FOUND = WIN32_ERROR(318);

const ERROR_UNDEFINED_SCOPE = WIN32_ERROR(319);

const ERROR_INVALID_CAP = WIN32_ERROR(320);

const ERROR_DEVICE_UNREACHABLE = WIN32_ERROR(321);

const ERROR_DEVICE_NO_RESOURCES = WIN32_ERROR(322);

const ERROR_DATA_CHECKSUM_ERROR = WIN32_ERROR(323);

const ERROR_INTERMIXED_KERNEL_EA_OPERATION = WIN32_ERROR(324);

const ERROR_FILE_LEVEL_TRIM_NOT_SUPPORTED = WIN32_ERROR(326);

const ERROR_OFFSET_ALIGNMENT_VIOLATION = WIN32_ERROR(327);

const ERROR_INVALID_FIELD_IN_PARAMETER_LIST = WIN32_ERROR(328);

const ERROR_OPERATION_IN_PROGRESS = WIN32_ERROR(329);

const ERROR_BAD_DEVICE_PATH = WIN32_ERROR(330);

const ERROR_TOO_MANY_DESCRIPTORS = WIN32_ERROR(331);

const ERROR_SCRUB_DATA_DISABLED = WIN32_ERROR(332);

const ERROR_NOT_REDUNDANT_STORAGE = WIN32_ERROR(333);

const ERROR_RESIDENT_FILE_NOT_SUPPORTED = WIN32_ERROR(334);

const ERROR_COMPRESSED_FILE_NOT_SUPPORTED = WIN32_ERROR(335);

const ERROR_DIRECTORY_NOT_SUPPORTED = WIN32_ERROR(336);

const ERROR_NOT_READ_FROM_COPY = WIN32_ERROR(337);

const ERROR_FT_WRITE_FAILURE = WIN32_ERROR(338);

const ERROR_FT_DI_SCAN_REQUIRED = WIN32_ERROR(339);

const ERROR_INVALID_KERNEL_INFO_VERSION = WIN32_ERROR(340);

const ERROR_INVALID_PEP_INFO_VERSION = WIN32_ERROR(341);

const ERROR_OBJECT_NOT_EXTERNALLY_BACKED = WIN32_ERROR(342);

const ERROR_EXTERNAL_BACKING_PROVIDER_UNKNOWN = WIN32_ERROR(343);

const ERROR_COMPRESSION_NOT_BENEFICIAL = WIN32_ERROR(344);

const ERROR_STORAGE_TOPOLOGY_ID_MISMATCH = WIN32_ERROR(345);

const ERROR_BLOCKED_BY_PARENTAL_CONTROLS = WIN32_ERROR(346);

const ERROR_BLOCK_TOO_MANY_REFERENCES = WIN32_ERROR(347);

const ERROR_MARKED_TO_DISALLOW_WRITES = WIN32_ERROR(348);

const ERROR_ENCLAVE_FAILURE = WIN32_ERROR(349);

const ERROR_FAIL_NOACTION_REBOOT = WIN32_ERROR(350);

const ERROR_FAIL_SHUTDOWN = WIN32_ERROR(351);

const ERROR_FAIL_RESTART = WIN32_ERROR(352);

const ERROR_MAX_SESSIONS_REACHED = WIN32_ERROR(353);

const ERROR_NETWORK_ACCESS_DENIED_EDP = WIN32_ERROR(354);

const ERROR_DEVICE_HINT_NAME_BUFFER_TOO_SMALL = WIN32_ERROR(355);

const ERROR_EDP_POLICY_DENIES_OPERATION = WIN32_ERROR(356);

const ERROR_EDP_DPL_POLICY_CANT_BE_SATISFIED = WIN32_ERROR(357);

const ERROR_CLOUD_FILE_SYNC_ROOT_METADATA_CORRUPT = WIN32_ERROR(358);

const ERROR_DEVICE_IN_MAINTENANCE = WIN32_ERROR(359);

const ERROR_NOT_SUPPORTED_ON_DAX = WIN32_ERROR(360);

const ERROR_DAX_MAPPING_EXISTS = WIN32_ERROR(361);

const ERROR_CLOUD_FILE_PROVIDER_NOT_RUNNING = WIN32_ERROR(362);

const ERROR_CLOUD_FILE_METADATA_CORRUPT = WIN32_ERROR(363);

const ERROR_CLOUD_FILE_METADATA_TOO_LARGE = WIN32_ERROR(364);

const ERROR_CLOUD_FILE_PROPERTY_BLOB_TOO_LARGE = WIN32_ERROR(365);

const ERROR_CLOUD_FILE_PROPERTY_BLOB_CHECKSUM_MISMATCH = WIN32_ERROR(366);

const ERROR_CHILD_PROCESS_BLOCKED = WIN32_ERROR(367);

const ERROR_STORAGE_LOST_DATA_PERSISTENCE = WIN32_ERROR(368);

const ERROR_FILE_SYSTEM_VIRTUALIZATION_UNAVAILABLE = WIN32_ERROR(369);

const ERROR_FILE_SYSTEM_VIRTUALIZATION_METADATA_CORRUPT = WIN32_ERROR(370);

const ERROR_FILE_SYSTEM_VIRTUALIZATION_BUSY = WIN32_ERROR(371);

const ERROR_FILE_SYSTEM_VIRTUALIZATION_PROVIDER_UNKNOWN = WIN32_ERROR(372);

const ERROR_GDI_HANDLE_LEAK = WIN32_ERROR(373);

const ERROR_CLOUD_FILE_TOO_MANY_PROPERTY_BLOBS = WIN32_ERROR(374);

const ERROR_CLOUD_FILE_PROPERTY_VERSION_NOT_SUPPORTED = WIN32_ERROR(375);

const ERROR_NOT_A_CLOUD_FILE = WIN32_ERROR(376);

const ERROR_CLOUD_FILE_NOT_IN_SYNC = WIN32_ERROR(377);

const ERROR_CLOUD_FILE_ALREADY_CONNECTED = WIN32_ERROR(378);

const ERROR_CLOUD_FILE_NOT_SUPPORTED = WIN32_ERROR(379);

const ERROR_CLOUD_FILE_INVALID_REQUEST = WIN32_ERROR(380);

const ERROR_CLOUD_FILE_READ_ONLY_VOLUME = WIN32_ERROR(381);

const ERROR_CLOUD_FILE_CONNECTED_PROVIDER_ONLY = WIN32_ERROR(382);

const ERROR_CLOUD_FILE_VALIDATION_FAILED = WIN32_ERROR(383);

const ERROR_SMB1_NOT_AVAILABLE = WIN32_ERROR(384);

const ERROR_FILE_SYSTEM_VIRTUALIZATION_INVALID_OPERATION = WIN32_ERROR(385);

const ERROR_CLOUD_FILE_AUTHENTICATION_FAILED = WIN32_ERROR(386);

const ERROR_CLOUD_FILE_INSUFFICIENT_RESOURCES = WIN32_ERROR(387);

const ERROR_CLOUD_FILE_NETWORK_UNAVAILABLE = WIN32_ERROR(388);

const ERROR_CLOUD_FILE_UNSUCCESSFUL = WIN32_ERROR(389);

const ERROR_CLOUD_FILE_NOT_UNDER_SYNC_ROOT = WIN32_ERROR(390);

const ERROR_CLOUD_FILE_IN_USE = WIN32_ERROR(391);

const ERROR_CLOUD_FILE_PINNED = WIN32_ERROR(392);

const ERROR_CLOUD_FILE_REQUEST_ABORTED = WIN32_ERROR(393);

const ERROR_CLOUD_FILE_PROPERTY_CORRUPT = WIN32_ERROR(394);

const ERROR_CLOUD_FILE_ACCESS_DENIED = WIN32_ERROR(395);

const ERROR_CLOUD_FILE_INCOMPATIBLE_HARDLINKS = WIN32_ERROR(396);

const ERROR_CLOUD_FILE_PROPERTY_LOCK_CONFLICT = WIN32_ERROR(397);

const ERROR_CLOUD_FILE_REQUEST_CANCELED = WIN32_ERROR(398);

const ERROR_EXTERNAL_SYSKEY_NOT_SUPPORTED = WIN32_ERROR(399);

const ERROR_THREAD_MODE_ALREADY_BACKGROUND = WIN32_ERROR(400);

const ERROR_THREAD_MODE_NOT_BACKGROUND = WIN32_ERROR(401);

const ERROR_PROCESS_MODE_ALREADY_BACKGROUND = WIN32_ERROR(402);

const ERROR_PROCESS_MODE_NOT_BACKGROUND = WIN32_ERROR(403);

const ERROR_CLOUD_FILE_PROVIDER_TERMINATED = WIN32_ERROR(404);

const ERROR_NOT_A_CLOUD_SYNC_ROOT = WIN32_ERROR(405);

const ERROR_FILE_PROTECTED_UNDER_DPL = WIN32_ERROR(406);

const ERROR_VOLUME_NOT_CLUSTER_ALIGNED = WIN32_ERROR(407);

const ERROR_NO_PHYSICALLY_ALIGNED_FREE_SPACE_FOUND = WIN32_ERROR(408);

const ERROR_APPX_FILE_NOT_ENCRYPTED = WIN32_ERROR(409);

const ERROR_RWRAW_ENCRYPTED_FILE_NOT_ENCRYPTED = WIN32_ERROR(410);

const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILEOFFSET = WIN32_ERROR(411);

const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_FILERANGE = WIN32_ERROR(412);

const ERROR_RWRAW_ENCRYPTED_INVALID_EDATAINFO_PARAMETER = WIN32_ERROR(413);

const ERROR_LINUX_SUBSYSTEM_NOT_PRESENT = WIN32_ERROR(414);

const ERROR_FT_READ_FAILURE = WIN32_ERROR(415);

const ERROR_STORAGE_RESERVE_ID_INVALID = WIN32_ERROR(416);

const ERROR_STORAGE_RESERVE_DOES_NOT_EXIST = WIN32_ERROR(417);

const ERROR_STORAGE_RESERVE_ALREADY_EXISTS = WIN32_ERROR(418);

const ERROR_STORAGE_RESERVE_NOT_EMPTY = WIN32_ERROR(419);

const ERROR_NOT_A_DAX_VOLUME = WIN32_ERROR(420);

const ERROR_NOT_DAX_MAPPABLE = WIN32_ERROR(421);

const ERROR_TIME_SENSITIVE_THREAD = WIN32_ERROR(422);

const ERROR_DPL_NOT_SUPPORTED_FOR_USER = WIN32_ERROR(423);

const ERROR_CASE_DIFFERING_NAMES_IN_DIR = WIN32_ERROR(424);

const ERROR_FILE_NOT_SUPPORTED = WIN32_ERROR(425);

const ERROR_CLOUD_FILE_REQUEST_TIMEOUT = WIN32_ERROR(426);

const ERROR_NO_TASK_QUEUE = WIN32_ERROR(427);

const ERROR_SRC_SRV_DLL_LOAD_FAILED = WIN32_ERROR(428);

const ERROR_NOT_SUPPORTED_WITH_BTT = WIN32_ERROR(429);

const ERROR_ENCRYPTION_DISABLED = WIN32_ERROR(430);

const ERROR_ENCRYPTING_METADATA_DISALLOWED = WIN32_ERROR(431);

const ERROR_CANT_CLEAR_ENCRYPTION_FLAG = WIN32_ERROR(432);

const ERROR_NO_SUCH_DEVICE = WIN32_ERROR(433);

const ERROR_CLOUD_FILE_DEHYDRATION_DISALLOWED = WIN32_ERROR(434);

const ERROR_FILE_SNAP_IN_PROGRESS = WIN32_ERROR(435);

const ERROR_FILE_SNAP_USER_SECTION_NOT_SUPPORTED = WIN32_ERROR(436);

const ERROR_FILE_SNAP_MODIFY_NOT_SUPPORTED = WIN32_ERROR(437);

const ERROR_FILE_SNAP_IO_NOT_COORDINATED = WIN32_ERROR(438);

const ERROR_FILE_SNAP_UNEXPECTED_ERROR = WIN32_ERROR(439);

const ERROR_FILE_SNAP_INVALID_PARAMETER = WIN32_ERROR(440);

const ERROR_UNSATISFIED_DEPENDENCIES = WIN32_ERROR(441);

const ERROR_CASE_SENSITIVE_PATH = WIN32_ERROR(442);

const ERROR_UNEXPECTED_NTCACHEMANAGER_ERROR = WIN32_ERROR(443);

const ERROR_LINUX_SUBSYSTEM_UPDATE_REQUIRED = WIN32_ERROR(444);

const ERROR_DLP_POLICY_WARNS_AGAINST_OPERATION = WIN32_ERROR(445);

const ERROR_DLP_POLICY_DENIES_OPERATION = WIN32_ERROR(446);

const ERROR_SECURITY_DENIES_OPERATION = WIN32_ERROR(447);

const ERROR_UNTRUSTED_MOUNT_POINT = WIN32_ERROR(448);

const ERROR_DLP_POLICY_SILENTLY_FAIL = WIN32_ERROR(449);

const ERROR_CAPAUTHZ_NOT_DEVUNLOCKED = WIN32_ERROR(450);

const ERROR_CAPAUTHZ_CHANGE_TYPE = WIN32_ERROR(451);

const ERROR_CAPAUTHZ_NOT_PROVISIONED = WIN32_ERROR(452);

const ERROR_CAPAUTHZ_NOT_AUTHORIZED = WIN32_ERROR(453);

const ERROR_CAPAUTHZ_NO_POLICY = WIN32_ERROR(454);

const ERROR_CAPAUTHZ_DB_CORRUPTED = WIN32_ERROR(455);

const ERROR_CAPAUTHZ_SCCD_INVALID_CATALOG = WIN32_ERROR(456);

const ERROR_CAPAUTHZ_SCCD_NO_AUTH_ENTITY = WIN32_ERROR(457);

const ERROR_CAPAUTHZ_SCCD_PARSE_ERROR = WIN32_ERROR(458);

const ERROR_CAPAUTHZ_SCCD_DEV_MODE_REQUIRED = WIN32_ERROR(459);

const ERROR_CAPAUTHZ_SCCD_NO_CAPABILITY_MATCH = WIN32_ERROR(460);

const ERROR_CIMFS_IMAGE_CORRUPT = WIN32_ERROR(470);

const ERROR_CIMFS_IMAGE_VERSION_NOT_SUPPORTED = WIN32_ERROR(471);

const ERROR_STORAGE_STACK_ACCESS_DENIED = WIN32_ERROR(472);

const ERROR_INSUFFICIENT_VIRTUAL_ADDR_RESOURCES = WIN32_ERROR(473);

const ERROR_INDEX_OUT_OF_BOUNDS = WIN32_ERROR(474);

const ERROR_CLOUD_FILE_US_MESSAGE_TIMEOUT = WIN32_ERROR(475);

const ERROR_NOT_A_DEV_VOLUME = WIN32_ERROR(476);

const ERROR_FS_GUID_MISMATCH = WIN32_ERROR(477);

const ERROR_CANT_ATTACH_TO_DEV_VOLUME = WIN32_ERROR(478);

const ERROR_MEMORY_DECOMPRESSION_FAILURE = WIN32_ERROR(479);

const ERROR_PNP_QUERY_REMOVE_DEVICE_TIMEOUT = WIN32_ERROR(480);

const ERROR_PNP_QUERY_REMOVE_RELATED_DEVICE_TIMEOUT = WIN32_ERROR(481);

const ERROR_PNP_QUERY_REMOVE_UNRELATED_DEVICE_TIMEOUT = WIN32_ERROR(482);

const ERROR_DEVICE_HARDWARE_ERROR = WIN32_ERROR(483);

const ERROR_INVALID_ADDRESS = WIN32_ERROR(487);

const ERROR_HAS_SYSTEM_CRITICAL_FILES = WIN32_ERROR(488);

const ERROR_ENCRYPTED_FILE_NOT_SUPPORTED = WIN32_ERROR(489);

const ERROR_SPARSE_FILE_NOT_SUPPORTED = WIN32_ERROR(490);

const ERROR_PAGEFILE_NOT_SUPPORTED = WIN32_ERROR(491);

const ERROR_VOLUME_NOT_SUPPORTED = WIN32_ERROR(492);

const ERROR_NOT_SUPPORTED_WITH_BYPASSIO = WIN32_ERROR(493);

const ERROR_NO_BYPASSIO_DRIVER_SUPPORT = WIN32_ERROR(494);

const ERROR_NOT_SUPPORTED_WITH_ENCRYPTION = WIN32_ERROR(495);

const ERROR_NOT_SUPPORTED_WITH_COMPRESSION = WIN32_ERROR(496);

const ERROR_NOT_SUPPORTED_WITH_REPLICATION = WIN32_ERROR(497);

const ERROR_NOT_SUPPORTED_WITH_DEDUPLICATION = WIN32_ERROR(498);

const ERROR_NOT_SUPPORTED_WITH_AUDITING = WIN32_ERROR(499);

const ERROR_USER_PROFILE_LOAD = WIN32_ERROR(500);

const ERROR_SESSION_KEY_TOO_SHORT = WIN32_ERROR(501);

const ERROR_ACCESS_DENIED_APPDATA = WIN32_ERROR(502);

const ERROR_NOT_SUPPORTED_WITH_MONITORING = WIN32_ERROR(503);

const ERROR_NOT_SUPPORTED_WITH_SNAPSHOT = WIN32_ERROR(504);

const ERROR_NOT_SUPPORTED_WITH_VIRTUALIZATION = WIN32_ERROR(505);

const ERROR_BYPASSIO_FLT_NOT_SUPPORTED = WIN32_ERROR(506);

const ERROR_DEVICE_RESET_REQUIRED = WIN32_ERROR(507);

const ERROR_VOLUME_WRITE_ACCESS_DENIED = WIN32_ERROR(508);

const ERROR_NOT_SUPPORTED_WITH_CACHED_HANDLE = WIN32_ERROR(509);

const ERROR_FS_METADATA_INCONSISTENT = WIN32_ERROR(510);

const ERROR_BLOCK_WEAK_REFERENCE_INVALID = WIN32_ERROR(511);

const ERROR_BLOCK_SOURCE_WEAK_REFERENCE_INVALID = WIN32_ERROR(512);

const ERROR_BLOCK_TARGET_WEAK_REFERENCE_INVALID = WIN32_ERROR(513);

const ERROR_BLOCK_SHARED = WIN32_ERROR(514);

const ERROR_VOLUME_UPGRADE_NOT_NEEDED = WIN32_ERROR(515);

const ERROR_VOLUME_UPGRADE_PENDING = WIN32_ERROR(516);

const ERROR_VOLUME_UPGRADE_DISABLED = WIN32_ERROR(517);

const ERROR_VOLUME_UPGRADE_DISABLED_TILL_OS_DOWNGRADE_EXPIRED = WIN32_ERROR(
  518,
);

const ERROR_INVALID_CONFIG_VALUE = WIN32_ERROR(519);

const ERROR_MEMORY_DECOMPRESSION_HW_ERROR = WIN32_ERROR(520);

const ERROR_VOLUME_ROLLBACK_DETECTED = WIN32_ERROR(521);

const ERROR_CLOUD_FILE_HYDRATION_NOT_AVAILABLE = WIN32_ERROR(523);

const ERROR_ARITHMETIC_OVERFLOW = WIN32_ERROR(534);

const ERROR_PIPE_CONNECTED = WIN32_ERROR(535);

const ERROR_PIPE_LISTENING = WIN32_ERROR(536);

const ERROR_VERIFIER_STOP = WIN32_ERROR(537);

const ERROR_ABIOS_ERROR = WIN32_ERROR(538);

const ERROR_WX86_WARNING = WIN32_ERROR(539);

const ERROR_WX86_ERROR = WIN32_ERROR(540);

const ERROR_TIMER_NOT_CANCELED = WIN32_ERROR(541);

const ERROR_UNWIND = WIN32_ERROR(542);

const ERROR_BAD_STACK = WIN32_ERROR(543);

const ERROR_INVALID_UNWIND_TARGET = WIN32_ERROR(544);

const ERROR_INVALID_PORT_ATTRIBUTES = WIN32_ERROR(545);

const ERROR_PORT_MESSAGE_TOO_LONG = WIN32_ERROR(546);

const ERROR_INVALID_QUOTA_LOWER = WIN32_ERROR(547);

const ERROR_DEVICE_ALREADY_ATTACHED = WIN32_ERROR(548);

const ERROR_INSTRUCTION_MISALIGNMENT = WIN32_ERROR(549);

const ERROR_PROFILING_NOT_STARTED = WIN32_ERROR(550);

const ERROR_PROFILING_NOT_STOPPED = WIN32_ERROR(551);

const ERROR_COULD_NOT_INTERPRET = WIN32_ERROR(552);

const ERROR_PROFILING_AT_LIMIT = WIN32_ERROR(553);

const ERROR_CANT_WAIT = WIN32_ERROR(554);

const ERROR_CANT_TERMINATE_SELF = WIN32_ERROR(555);

const ERROR_UNEXPECTED_MM_CREATE_ERR = WIN32_ERROR(556);

const ERROR_UNEXPECTED_MM_MAP_ERROR = WIN32_ERROR(557);

const ERROR_UNEXPECTED_MM_EXTEND_ERR = WIN32_ERROR(558);

const ERROR_BAD_FUNCTION_TABLE = WIN32_ERROR(559);

const ERROR_NO_GUID_TRANSLATION = WIN32_ERROR(560);

const ERROR_INVALID_LDT_SIZE = WIN32_ERROR(561);

const ERROR_INVALID_LDT_OFFSET = WIN32_ERROR(563);

const ERROR_INVALID_LDT_DESCRIPTOR = WIN32_ERROR(564);

const ERROR_TOO_MANY_THREADS = WIN32_ERROR(565);

const ERROR_THREAD_NOT_IN_PROCESS = WIN32_ERROR(566);

const ERROR_PAGEFILE_QUOTA_EXCEEDED = WIN32_ERROR(567);

const ERROR_LOGON_SERVER_CONFLICT = WIN32_ERROR(568);

const ERROR_SYNCHRONIZATION_REQUIRED = WIN32_ERROR(569);

const ERROR_NET_OPEN_FAILED = WIN32_ERROR(570);

const ERROR_IO_PRIVILEGE_FAILED = WIN32_ERROR(571);

const ERROR_CONTROL_C_EXIT = WIN32_ERROR(572);

const ERROR_MISSING_SYSTEMFILE = WIN32_ERROR(573);

const ERROR_UNHANDLED_EXCEPTION = WIN32_ERROR(574);

const ERROR_APP_INIT_FAILURE = WIN32_ERROR(575);

const ERROR_PAGEFILE_CREATE_FAILED = WIN32_ERROR(576);

const ERROR_INVALID_IMAGE_HASH = WIN32_ERROR(577);

const ERROR_NO_PAGEFILE = WIN32_ERROR(578);

const ERROR_ILLEGAL_FLOAT_CONTEXT = WIN32_ERROR(579);

const ERROR_NO_EVENT_PAIR = WIN32_ERROR(580);

const ERROR_DOMAIN_CTRLR_CONFIG_ERROR = WIN32_ERROR(581);

const ERROR_ILLEGAL_CHARACTER = WIN32_ERROR(582);

const ERROR_UNDEFINED_CHARACTER = WIN32_ERROR(583);

const ERROR_FLOPPY_VOLUME = WIN32_ERROR(584);

const ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT = WIN32_ERROR(585);

const ERROR_BACKUP_CONTROLLER = WIN32_ERROR(586);

const ERROR_MUTANT_LIMIT_EXCEEDED = WIN32_ERROR(587);

const ERROR_FS_DRIVER_REQUIRED = WIN32_ERROR(588);

const ERROR_CANNOT_LOAD_REGISTRY_FILE = WIN32_ERROR(589);

const ERROR_DEBUG_ATTACH_FAILED = WIN32_ERROR(590);

const ERROR_SYSTEM_PROCESS_TERMINATED = WIN32_ERROR(591);

const ERROR_DATA_NOT_ACCEPTED = WIN32_ERROR(592);

const ERROR_VDM_HARD_ERROR = WIN32_ERROR(593);

const ERROR_DRIVER_CANCEL_TIMEOUT = WIN32_ERROR(594);

const ERROR_REPLY_MESSAGE_MISMATCH = WIN32_ERROR(595);

const ERROR_LOST_WRITEBEHIND_DATA = WIN32_ERROR(596);

const ERROR_CLIENT_SERVER_PARAMETERS_INVALID = WIN32_ERROR(597);

const ERROR_NOT_TINY_STREAM = WIN32_ERROR(598);

const ERROR_STACK_OVERFLOW_READ = WIN32_ERROR(599);

const ERROR_CONVERT_TO_LARGE = WIN32_ERROR(600);

const ERROR_FOUND_OUT_OF_SCOPE = WIN32_ERROR(601);

const ERROR_ALLOCATE_BUCKET = WIN32_ERROR(602);

const ERROR_MARSHALL_OVERFLOW = WIN32_ERROR(603);

const ERROR_INVALID_VARIANT = WIN32_ERROR(604);

const ERROR_BAD_COMPRESSION_BUFFER = WIN32_ERROR(605);

const ERROR_AUDIT_FAILED = WIN32_ERROR(606);

const ERROR_TIMER_RESOLUTION_NOT_SET = WIN32_ERROR(607);

const ERROR_INSUFFICIENT_LOGON_INFO = WIN32_ERROR(608);

const ERROR_BAD_DLL_ENTRYPOINT = WIN32_ERROR(609);

const ERROR_BAD_SERVICE_ENTRYPOINT = WIN32_ERROR(610);

const ERROR_IP_ADDRESS_CONFLICT1 = WIN32_ERROR(611);

const ERROR_IP_ADDRESS_CONFLICT2 = WIN32_ERROR(612);

const ERROR_REGISTRY_QUOTA_LIMIT = WIN32_ERROR(613);

const ERROR_NO_CALLBACK_ACTIVE = WIN32_ERROR(614);

const ERROR_PWD_TOO_SHORT = WIN32_ERROR(615);

const ERROR_PWD_TOO_RECENT = WIN32_ERROR(616);

const ERROR_PWD_HISTORY_CONFLICT = WIN32_ERROR(617);

const ERROR_UNSUPPORTED_COMPRESSION = WIN32_ERROR(618);

const ERROR_INVALID_HW_PROFILE = WIN32_ERROR(619);

const ERROR_INVALID_PLUGPLAY_DEVICE_PATH = WIN32_ERROR(620);

const ERROR_QUOTA_LIST_INCONSISTENT = WIN32_ERROR(621);

const ERROR_EVALUATION_EXPIRATION = WIN32_ERROR(622);

const ERROR_ILLEGAL_DLL_RELOCATION = WIN32_ERROR(623);

const ERROR_DLL_INIT_FAILED_LOGOFF = WIN32_ERROR(624);

const ERROR_VALIDATE_CONTINUE = WIN32_ERROR(625);

const ERROR_NO_MORE_MATCHES = WIN32_ERROR(626);

const ERROR_RANGE_LIST_CONFLICT = WIN32_ERROR(627);

const ERROR_SERVER_SID_MISMATCH = WIN32_ERROR(628);

const ERROR_CANT_ENABLE_DENY_ONLY = WIN32_ERROR(629);

const ERROR_FLOAT_MULTIPLE_FAULTS = WIN32_ERROR(630);

const ERROR_FLOAT_MULTIPLE_TRAPS = WIN32_ERROR(631);

const ERROR_NOINTERFACE = WIN32_ERROR(632);

const ERROR_DRIVER_FAILED_SLEEP = WIN32_ERROR(633);

const ERROR_CORRUPT_SYSTEM_FILE = WIN32_ERROR(634);

const ERROR_COMMITMENT_MINIMUM = WIN32_ERROR(635);

const ERROR_PNP_RESTART_ENUMERATION = WIN32_ERROR(636);

const ERROR_SYSTEM_IMAGE_BAD_SIGNATURE = WIN32_ERROR(637);

const ERROR_PNP_REBOOT_REQUIRED = WIN32_ERROR(638);

const ERROR_INSUFFICIENT_POWER = WIN32_ERROR(639);

const ERROR_MULTIPLE_FAULT_VIOLATION = WIN32_ERROR(640);

const ERROR_SYSTEM_SHUTDOWN = WIN32_ERROR(641);

const ERROR_PORT_NOT_SET = WIN32_ERROR(642);

const ERROR_DS_VERSION_CHECK_FAILURE = WIN32_ERROR(643);

const ERROR_RANGE_NOT_FOUND = WIN32_ERROR(644);

const ERROR_NOT_SAFE_MODE_DRIVER = WIN32_ERROR(646);

const ERROR_FAILED_DRIVER_ENTRY = WIN32_ERROR(647);

const ERROR_DEVICE_ENUMERATION_ERROR = WIN32_ERROR(648);

const ERROR_MOUNT_POINT_NOT_RESOLVED = WIN32_ERROR(649);

const ERROR_INVALID_DEVICE_OBJECT_PARAMETER = WIN32_ERROR(650);

const ERROR_MCA_OCCURED = WIN32_ERROR(651);

const ERROR_DRIVER_DATABASE_ERROR = WIN32_ERROR(652);

const ERROR_SYSTEM_HIVE_TOO_LARGE = WIN32_ERROR(653);

const ERROR_DRIVER_FAILED_PRIOR_UNLOAD = WIN32_ERROR(654);

const ERROR_VOLSNAP_PREPARE_HIBERNATE = WIN32_ERROR(655);

const ERROR_HIBERNATION_FAILURE = WIN32_ERROR(656);

const ERROR_PWD_TOO_LONG = WIN32_ERROR(657);

const ERROR_FILE_SYSTEM_LIMITATION = WIN32_ERROR(665);

const ERROR_ASSERTION_FAILURE = WIN32_ERROR(668);

const ERROR_ACPI_ERROR = WIN32_ERROR(669);

const ERROR_WOW_ASSERTION = WIN32_ERROR(670);

const ERROR_PNP_BAD_MPS_TABLE = WIN32_ERROR(671);

const ERROR_PNP_TRANSLATION_FAILED = WIN32_ERROR(672);

const ERROR_PNP_IRQ_TRANSLATION_FAILED = WIN32_ERROR(673);

const ERROR_PNP_INVALID_ID = WIN32_ERROR(674);

const ERROR_WAKE_SYSTEM_DEBUGGER = WIN32_ERROR(675);

const ERROR_HANDLES_CLOSED = WIN32_ERROR(676);

const ERROR_EXTRANEOUS_INFORMATION = WIN32_ERROR(677);

const ERROR_RXACT_COMMIT_NECESSARY = WIN32_ERROR(678);

const ERROR_MEDIA_CHECK = WIN32_ERROR(679);

const ERROR_GUID_SUBSTITUTION_MADE = WIN32_ERROR(680);

const ERROR_STOPPED_ON_SYMLINK = WIN32_ERROR(681);

const ERROR_LONGJUMP = WIN32_ERROR(682);

const ERROR_PLUGPLAY_QUERY_VETOED = WIN32_ERROR(683);

const ERROR_UNWIND_CONSOLIDATE = WIN32_ERROR(684);

const ERROR_REGISTRY_HIVE_RECOVERED = WIN32_ERROR(685);

const ERROR_DLL_MIGHT_BE_INSECURE = WIN32_ERROR(686);

const ERROR_DLL_MIGHT_BE_INCOMPATIBLE = WIN32_ERROR(687);

const ERROR_DBG_EXCEPTION_NOT_HANDLED = WIN32_ERROR(688);

const ERROR_DBG_REPLY_LATER = WIN32_ERROR(689);

const ERROR_DBG_UNABLE_TO_PROVIDE_HANDLE = WIN32_ERROR(690);

const ERROR_DBG_TERMINATE_THREAD = WIN32_ERROR(691);

const ERROR_DBG_TERMINATE_PROCESS = WIN32_ERROR(692);

const ERROR_DBG_CONTROL_C = WIN32_ERROR(693);

const ERROR_DBG_PRINTEXCEPTION_C = WIN32_ERROR(694);

const ERROR_DBG_RIPEXCEPTION = WIN32_ERROR(695);

const ERROR_DBG_CONTROL_BREAK = WIN32_ERROR(696);

const ERROR_DBG_COMMAND_EXCEPTION = WIN32_ERROR(697);

const ERROR_OBJECT_NAME_EXISTS = WIN32_ERROR(698);

const ERROR_THREAD_WAS_SUSPENDED = WIN32_ERROR(699);

const ERROR_IMAGE_NOT_AT_BASE = WIN32_ERROR(700);

const ERROR_RXACT_STATE_CREATED = WIN32_ERROR(701);

const ERROR_SEGMENT_NOTIFICATION = WIN32_ERROR(702);

const ERROR_BAD_CURRENT_DIRECTORY = WIN32_ERROR(703);

const ERROR_FT_READ_RECOVERY_FROM_BACKUP = WIN32_ERROR(704);

const ERROR_FT_WRITE_RECOVERY = WIN32_ERROR(705);

const ERROR_IMAGE_MACHINE_TYPE_MISMATCH = WIN32_ERROR(706);

const ERROR_RECEIVE_PARTIAL = WIN32_ERROR(707);

const ERROR_RECEIVE_EXPEDITED = WIN32_ERROR(708);

const ERROR_RECEIVE_PARTIAL_EXPEDITED = WIN32_ERROR(709);

const ERROR_EVENT_DONE = WIN32_ERROR(710);

const ERROR_EVENT_PENDING = WIN32_ERROR(711);

const ERROR_CHECKING_FILE_SYSTEM = WIN32_ERROR(712);

const ERROR_FATAL_APP_EXIT = WIN32_ERROR(713);

const ERROR_PREDEFINED_HANDLE = WIN32_ERROR(714);

const ERROR_WAS_UNLOCKED = WIN32_ERROR(715);

const ERROR_SERVICE_NOTIFICATION = WIN32_ERROR(716);

const ERROR_WAS_LOCKED = WIN32_ERROR(717);

const ERROR_LOG_HARD_ERROR = WIN32_ERROR(718);

const ERROR_ALREADY_WIN32 = WIN32_ERROR(719);

const ERROR_IMAGE_MACHINE_TYPE_MISMATCH_EXE = WIN32_ERROR(720);

const ERROR_NO_YIELD_PERFORMED = WIN32_ERROR(721);

const ERROR_TIMER_RESUME_IGNORED = WIN32_ERROR(722);

const ERROR_ARBITRATION_UNHANDLED = WIN32_ERROR(723);

const ERROR_CARDBUS_NOT_SUPPORTED = WIN32_ERROR(724);

const ERROR_MP_PROCESSOR_MISMATCH = WIN32_ERROR(725);

const ERROR_HIBERNATED = WIN32_ERROR(726);

const ERROR_RESUME_HIBERNATION = WIN32_ERROR(727);

const ERROR_FIRMWARE_UPDATED = WIN32_ERROR(728);

const ERROR_DRIVERS_LEAKING_LOCKED_PAGES = WIN32_ERROR(729);

const ERROR_WAKE_SYSTEM = WIN32_ERROR(730);

const ERROR_WAIT_1 = WIN32_ERROR(731);

const ERROR_WAIT_2 = WIN32_ERROR(732);

const ERROR_WAIT_3 = WIN32_ERROR(733);

const ERROR_WAIT_63 = WIN32_ERROR(734);

const ERROR_ABANDONED_WAIT_0 = WIN32_ERROR(735);

const ERROR_ABANDONED_WAIT_63 = WIN32_ERROR(736);

const ERROR_USER_APC = WIN32_ERROR(737);

const ERROR_KERNEL_APC = WIN32_ERROR(738);

const ERROR_ALERTED = WIN32_ERROR(739);

const ERROR_ELEVATION_REQUIRED = WIN32_ERROR(740);

const ERROR_REPARSE = WIN32_ERROR(741);

const ERROR_OPLOCK_BREAK_IN_PROGRESS = WIN32_ERROR(742);

const ERROR_VOLUME_MOUNTED = WIN32_ERROR(743);

const ERROR_RXACT_COMMITTED = WIN32_ERROR(744);

const ERROR_NOTIFY_CLEANUP = WIN32_ERROR(745);

const ERROR_PRIMARY_TRANSPORT_CONNECT_FAILED = WIN32_ERROR(746);

const ERROR_PAGE_FAULT_TRANSITION = WIN32_ERROR(747);

const ERROR_PAGE_FAULT_DEMAND_ZERO = WIN32_ERROR(748);

const ERROR_PAGE_FAULT_COPY_ON_WRITE = WIN32_ERROR(749);

const ERROR_PAGE_FAULT_GUARD_PAGE = WIN32_ERROR(750);

const ERROR_PAGE_FAULT_PAGING_FILE = WIN32_ERROR(751);

const ERROR_CACHE_PAGE_LOCKED = WIN32_ERROR(752);

const ERROR_CRASH_DUMP = WIN32_ERROR(753);

const ERROR_BUFFER_ALL_ZEROS = WIN32_ERROR(754);

const ERROR_REPARSE_OBJECT = WIN32_ERROR(755);

const ERROR_RESOURCE_REQUIREMENTS_CHANGED = WIN32_ERROR(756);

const ERROR_TRANSLATION_COMPLETE = WIN32_ERROR(757);

const ERROR_NOTHING_TO_TERMINATE = WIN32_ERROR(758);

const ERROR_PROCESS_NOT_IN_JOB = WIN32_ERROR(759);

const ERROR_PROCESS_IN_JOB = WIN32_ERROR(760);

const ERROR_VOLSNAP_HIBERNATE_READY = WIN32_ERROR(761);

const ERROR_FSFILTER_OP_COMPLETED_SUCCESSFULLY = WIN32_ERROR(762);

const ERROR_INTERRUPT_VECTOR_ALREADY_CONNECTED = WIN32_ERROR(763);

const ERROR_INTERRUPT_STILL_CONNECTED = WIN32_ERROR(764);

const ERROR_WAIT_FOR_OPLOCK = WIN32_ERROR(765);

const ERROR_DBG_EXCEPTION_HANDLED = WIN32_ERROR(766);

const ERROR_DBG_CONTINUE = WIN32_ERROR(767);

const ERROR_CALLBACK_POP_STACK = WIN32_ERROR(768);

const ERROR_COMPRESSION_DISABLED = WIN32_ERROR(769);

const ERROR_CANTFETCHBACKWARDS = WIN32_ERROR(770);

const ERROR_CANTSCROLLBACKWARDS = WIN32_ERROR(771);

const ERROR_ROWSNOTRELEASED = WIN32_ERROR(772);

const ERROR_BAD_ACCESSOR_FLAGS = WIN32_ERROR(773);

const ERROR_ERRORS_ENCOUNTERED = WIN32_ERROR(774);

const ERROR_NOT_CAPABLE = WIN32_ERROR(775);

const ERROR_REQUEST_OUT_OF_SEQUENCE = WIN32_ERROR(776);

const ERROR_VERSION_PARSE_ERROR = WIN32_ERROR(777);

const ERROR_BADSTARTPOSITION = WIN32_ERROR(778);

const ERROR_MEMORY_HARDWARE = WIN32_ERROR(779);

const ERROR_DISK_REPAIR_DISABLED = WIN32_ERROR(780);

const ERROR_INSUFFICIENT_RESOURCE_FOR_SPECIFIED_SHARED_SECTION_SIZE =
    WIN32_ERROR(781);

const ERROR_SYSTEM_POWERSTATE_TRANSITION = WIN32_ERROR(782);

const ERROR_SYSTEM_POWERSTATE_COMPLEX_TRANSITION = WIN32_ERROR(783);

const ERROR_MCA_EXCEPTION = WIN32_ERROR(784);

const ERROR_ACCESS_AUDIT_BY_POLICY = WIN32_ERROR(785);

const ERROR_ACCESS_DISABLED_NO_SAFER_UI_BY_POLICY = WIN32_ERROR(786);

const ERROR_ABANDON_HIBERFILE = WIN32_ERROR(787);

const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_DISCONNECTED = WIN32_ERROR(788);

const ERROR_LOST_WRITEBEHIND_DATA_NETWORK_SERVER_ERROR = WIN32_ERROR(789);

const ERROR_LOST_WRITEBEHIND_DATA_LOCAL_DISK_ERROR = WIN32_ERROR(790);

const ERROR_BAD_MCFG_TABLE = WIN32_ERROR(791);

const ERROR_DISK_REPAIR_REDIRECTED = WIN32_ERROR(792);

const ERROR_DISK_REPAIR_UNSUCCESSFUL = WIN32_ERROR(793);

const ERROR_CORRUPT_LOG_OVERFULL = WIN32_ERROR(794);

const ERROR_CORRUPT_LOG_CORRUPTED = WIN32_ERROR(795);

const ERROR_CORRUPT_LOG_UNAVAILABLE = WIN32_ERROR(796);

const ERROR_CORRUPT_LOG_DELETED_FULL = WIN32_ERROR(797);

const ERROR_CORRUPT_LOG_CLEARED = WIN32_ERROR(798);

const ERROR_ORPHAN_NAME_EXHAUSTED = WIN32_ERROR(799);

const ERROR_OPLOCK_SWITCHED_TO_NEW_HANDLE = WIN32_ERROR(800);

const ERROR_CANNOT_GRANT_REQUESTED_OPLOCK = WIN32_ERROR(801);

const ERROR_CANNOT_BREAK_OPLOCK = WIN32_ERROR(802);

const ERROR_OPLOCK_HANDLE_CLOSED = WIN32_ERROR(803);

const ERROR_NO_ACE_CONDITION = WIN32_ERROR(804);

const ERROR_INVALID_ACE_CONDITION = WIN32_ERROR(805);

const ERROR_FILE_HANDLE_REVOKED = WIN32_ERROR(806);

const ERROR_IMAGE_AT_DIFFERENT_BASE = WIN32_ERROR(807);

const ERROR_ENCRYPTED_IO_NOT_POSSIBLE = WIN32_ERROR(808);

const ERROR_FILE_METADATA_OPTIMIZATION_IN_PROGRESS = WIN32_ERROR(809);

const ERROR_QUOTA_ACTIVITY = WIN32_ERROR(810);

const ERROR_HANDLE_REVOKED = WIN32_ERROR(811);

const ERROR_CALLBACK_INVOKE_INLINE = WIN32_ERROR(812);

const ERROR_CPU_SET_INVALID = WIN32_ERROR(813);

const ERROR_ENCLAVE_NOT_TERMINATED = WIN32_ERROR(814);

const ERROR_ENCLAVE_VIOLATION = WIN32_ERROR(815);

const ERROR_SERVER_TRANSPORT_CONFLICT = WIN32_ERROR(816);

const ERROR_CERTIFICATE_VALIDATION_PREFERENCE_CONFLICT = WIN32_ERROR(817);

const ERROR_FT_READ_FROM_COPY_FAILURE = WIN32_ERROR(818);

const ERROR_SECTION_DIRECT_MAP_ONLY = WIN32_ERROR(819);

const ERROR_EA_ACCESS_DENIED = WIN32_ERROR(994);

const ERROR_OPERATION_ABORTED = WIN32_ERROR(995);

const ERROR_IO_INCOMPLETE = WIN32_ERROR(996);

const ERROR_IO_PENDING = WIN32_ERROR(997);

const ERROR_NOACCESS = WIN32_ERROR(998);

const ERROR_SWAPERROR = WIN32_ERROR(999);

const ERROR_STACK_OVERFLOW = WIN32_ERROR(1001);

const ERROR_INVALID_MESSAGE = WIN32_ERROR(1002);

const ERROR_CAN_NOT_COMPLETE = WIN32_ERROR(1003);

const ERROR_INVALID_FLAGS = WIN32_ERROR(1004);

const ERROR_UNRECOGNIZED_VOLUME = WIN32_ERROR(1005);

const ERROR_FILE_INVALID = WIN32_ERROR(1006);

const ERROR_FULLSCREEN_MODE = WIN32_ERROR(1007);

const ERROR_NO_TOKEN = WIN32_ERROR(1008);

const ERROR_BADDB = WIN32_ERROR(1009);

const ERROR_BADKEY = WIN32_ERROR(1010);

const ERROR_CANTOPEN = WIN32_ERROR(1011);

const ERROR_CANTREAD = WIN32_ERROR(1012);

const ERROR_CANTWRITE = WIN32_ERROR(1013);

const ERROR_REGISTRY_RECOVERED = WIN32_ERROR(1014);

const ERROR_REGISTRY_CORRUPT = WIN32_ERROR(1015);

const ERROR_REGISTRY_IO_FAILED = WIN32_ERROR(1016);

const ERROR_NOT_REGISTRY_FILE = WIN32_ERROR(1017);

const ERROR_KEY_DELETED = WIN32_ERROR(1018);

const ERROR_NO_LOG_SPACE = WIN32_ERROR(1019);

const ERROR_KEY_HAS_CHILDREN = WIN32_ERROR(1020);

const ERROR_CHILD_MUST_BE_VOLATILE = WIN32_ERROR(1021);

const ERROR_NOTIFY_ENUM_DIR = WIN32_ERROR(1022);

const ERROR_DEPENDENT_SERVICES_RUNNING = WIN32_ERROR(1051);

const ERROR_INVALID_SERVICE_CONTROL = WIN32_ERROR(1052);

const ERROR_SERVICE_REQUEST_TIMEOUT = WIN32_ERROR(1053);

const ERROR_SERVICE_NO_THREAD = WIN32_ERROR(1054);

const ERROR_SERVICE_DATABASE_LOCKED = WIN32_ERROR(1055);

const ERROR_SERVICE_ALREADY_RUNNING = WIN32_ERROR(1056);

const ERROR_INVALID_SERVICE_ACCOUNT = WIN32_ERROR(1057);

const ERROR_SERVICE_DISABLED = WIN32_ERROR(1058);

const ERROR_CIRCULAR_DEPENDENCY = WIN32_ERROR(1059);

const ERROR_SERVICE_DOES_NOT_EXIST = WIN32_ERROR(1060);

const ERROR_SERVICE_CANNOT_ACCEPT_CTRL = WIN32_ERROR(1061);

const ERROR_SERVICE_NOT_ACTIVE = WIN32_ERROR(1062);

const ERROR_FAILED_SERVICE_CONTROLLER_CONNECT = WIN32_ERROR(1063);

const ERROR_EXCEPTION_IN_SERVICE = WIN32_ERROR(1064);

const ERROR_DATABASE_DOES_NOT_EXIST = WIN32_ERROR(1065);

const ERROR_SERVICE_SPECIFIC_ERROR = WIN32_ERROR(1066);

const ERROR_PROCESS_ABORTED = WIN32_ERROR(1067);

const ERROR_SERVICE_DEPENDENCY_FAIL = WIN32_ERROR(1068);

const ERROR_SERVICE_LOGON_FAILED = WIN32_ERROR(1069);

const ERROR_SERVICE_START_HANG = WIN32_ERROR(1070);

const ERROR_INVALID_SERVICE_LOCK = WIN32_ERROR(1071);

const ERROR_SERVICE_MARKED_FOR_DELETE = WIN32_ERROR(1072);

const ERROR_SERVICE_EXISTS = WIN32_ERROR(1073);

const ERROR_ALREADY_RUNNING_LKG = WIN32_ERROR(1074);

const ERROR_SERVICE_DEPENDENCY_DELETED = WIN32_ERROR(1075);

const ERROR_BOOT_ALREADY_ACCEPTED = WIN32_ERROR(1076);

const ERROR_SERVICE_NEVER_STARTED = WIN32_ERROR(1077);

const ERROR_DUPLICATE_SERVICE_NAME = WIN32_ERROR(1078);

const ERROR_DIFFERENT_SERVICE_ACCOUNT = WIN32_ERROR(1079);

const ERROR_CANNOT_DETECT_DRIVER_FAILURE = WIN32_ERROR(1080);

const ERROR_CANNOT_DETECT_PROCESS_ABORT = WIN32_ERROR(1081);

const ERROR_NO_RECOVERY_PROGRAM = WIN32_ERROR(1082);

const ERROR_SERVICE_NOT_IN_EXE = WIN32_ERROR(1083);

const ERROR_NOT_SAFEBOOT_SERVICE = WIN32_ERROR(1084);

const ERROR_END_OF_MEDIA = WIN32_ERROR(1100);

const ERROR_FILEMARK_DETECTED = WIN32_ERROR(1101);

const ERROR_BEGINNING_OF_MEDIA = WIN32_ERROR(1102);

const ERROR_SETMARK_DETECTED = WIN32_ERROR(1103);

const ERROR_NO_DATA_DETECTED = WIN32_ERROR(1104);

const ERROR_PARTITION_FAILURE = WIN32_ERROR(1105);

const ERROR_INVALID_BLOCK_LENGTH = WIN32_ERROR(1106);

const ERROR_DEVICE_NOT_PARTITIONED = WIN32_ERROR(1107);

const ERROR_UNABLE_TO_LOCK_MEDIA = WIN32_ERROR(1108);

const ERROR_UNABLE_TO_UNLOAD_MEDIA = WIN32_ERROR(1109);

const ERROR_MEDIA_CHANGED = WIN32_ERROR(1110);

const ERROR_BUS_RESET = WIN32_ERROR(1111);

const ERROR_NO_MEDIA_IN_DRIVE = WIN32_ERROR(1112);

const ERROR_NO_UNICODE_TRANSLATION = WIN32_ERROR(1113);

const ERROR_DLL_INIT_FAILED = WIN32_ERROR(1114);

const ERROR_SHUTDOWN_IN_PROGRESS = WIN32_ERROR(1115);

const ERROR_NO_SHUTDOWN_IN_PROGRESS = WIN32_ERROR(1116);

const ERROR_IO_DEVICE = WIN32_ERROR(1117);

const ERROR_SERIAL_NO_DEVICE = WIN32_ERROR(1118);

const ERROR_IRQ_BUSY = WIN32_ERROR(1119);

const ERROR_MORE_WRITES = WIN32_ERROR(1120);

const ERROR_COUNTER_TIMEOUT = WIN32_ERROR(1121);

const ERROR_FLOPPY_ID_MARK_NOT_FOUND = WIN32_ERROR(1122);

const ERROR_FLOPPY_WRONG_CYLINDER = WIN32_ERROR(1123);

const ERROR_FLOPPY_UNKNOWN_ERROR = WIN32_ERROR(1124);

const ERROR_FLOPPY_BAD_REGISTERS = WIN32_ERROR(1125);

const ERROR_DISK_RECALIBRATE_FAILED = WIN32_ERROR(1126);

const ERROR_DISK_OPERATION_FAILED = WIN32_ERROR(1127);

const ERROR_DISK_RESET_FAILED = WIN32_ERROR(1128);

const ERROR_EOM_OVERFLOW = WIN32_ERROR(1129);

const ERROR_NOT_ENOUGH_SERVER_MEMORY = WIN32_ERROR(1130);

const ERROR_POSSIBLE_DEADLOCK = WIN32_ERROR(1131);

const ERROR_MAPPED_ALIGNMENT = WIN32_ERROR(1132);

const ERROR_SET_POWER_STATE_VETOED = WIN32_ERROR(1140);

const ERROR_SET_POWER_STATE_FAILED = WIN32_ERROR(1141);

const ERROR_TOO_MANY_LINKS = WIN32_ERROR(1142);

const ERROR_OLD_WIN_VERSION = WIN32_ERROR(1150);

const ERROR_APP_WRONG_OS = WIN32_ERROR(1151);

const ERROR_SINGLE_INSTANCE_APP = WIN32_ERROR(1152);

const ERROR_RMODE_APP = WIN32_ERROR(1153);

const ERROR_INVALID_DLL = WIN32_ERROR(1154);

const ERROR_NO_ASSOCIATION = WIN32_ERROR(1155);

const ERROR_DDE_FAIL = WIN32_ERROR(1156);

const ERROR_DLL_NOT_FOUND = WIN32_ERROR(1157);

const ERROR_NO_MORE_USER_HANDLES = WIN32_ERROR(1158);

const ERROR_MESSAGE_SYNC_ONLY = WIN32_ERROR(1159);

const ERROR_SOURCE_ELEMENT_EMPTY = WIN32_ERROR(1160);

const ERROR_DESTINATION_ELEMENT_FULL = WIN32_ERROR(1161);

const ERROR_ILLEGAL_ELEMENT_ADDRESS = WIN32_ERROR(1162);

const ERROR_MAGAZINE_NOT_PRESENT = WIN32_ERROR(1163);

const ERROR_DEVICE_REINITIALIZATION_NEEDED = WIN32_ERROR(1164);

const ERROR_DEVICE_REQUIRES_CLEANING = WIN32_ERROR(1165);

const ERROR_DEVICE_DOOR_OPEN = WIN32_ERROR(1166);

const ERROR_DEVICE_NOT_CONNECTED = WIN32_ERROR(1167);

const ERROR_NOT_FOUND = WIN32_ERROR(1168);

const ERROR_NO_MATCH = WIN32_ERROR(1169);

const ERROR_SET_NOT_FOUND = WIN32_ERROR(1170);

const ERROR_POINT_NOT_FOUND = WIN32_ERROR(1171);

const ERROR_NO_TRACKING_SERVICE = WIN32_ERROR(1172);

const ERROR_NO_VOLUME_ID = WIN32_ERROR(1173);

const ERROR_UNABLE_TO_REMOVE_REPLACED = WIN32_ERROR(1175);

const ERROR_UNABLE_TO_MOVE_REPLACEMENT = WIN32_ERROR(1176);

const ERROR_UNABLE_TO_MOVE_REPLACEMENT_2 = WIN32_ERROR(1177);

const ERROR_JOURNAL_DELETE_IN_PROGRESS = WIN32_ERROR(1178);

const ERROR_JOURNAL_NOT_ACTIVE = WIN32_ERROR(1179);

const ERROR_POTENTIAL_FILE_FOUND = WIN32_ERROR(1180);

const ERROR_JOURNAL_ENTRY_DELETED = WIN32_ERROR(1181);

const ERROR_PARTITION_TERMINATING = WIN32_ERROR(1184);

const ERROR_SHUTDOWN_IS_SCHEDULED = WIN32_ERROR(1190);

const ERROR_SHUTDOWN_USERS_LOGGED_ON = WIN32_ERROR(1191);

const ERROR_SHUTDOWN_DISKS_NOT_IN_MAINTENANCE_MODE = WIN32_ERROR(1192);

const ERROR_BAD_DEVICE = WIN32_ERROR(1200);

const ERROR_CONNECTION_UNAVAIL = WIN32_ERROR(1201);

const ERROR_DEVICE_ALREADY_REMEMBERED = WIN32_ERROR(1202);

const ERROR_NO_NET_OR_BAD_PATH = WIN32_ERROR(1203);

const ERROR_BAD_PROVIDER = WIN32_ERROR(1204);

const ERROR_CANNOT_OPEN_PROFILE = WIN32_ERROR(1205);

const ERROR_BAD_PROFILE = WIN32_ERROR(1206);

const ERROR_NOT_CONTAINER = WIN32_ERROR(1207);

const ERROR_EXTENDED_ERROR = WIN32_ERROR(1208);

const ERROR_INVALID_GROUPNAME = WIN32_ERROR(1209);

const ERROR_INVALID_COMPUTERNAME = WIN32_ERROR(1210);

const ERROR_INVALID_EVENTNAME = WIN32_ERROR(1211);

const ERROR_INVALID_DOMAINNAME = WIN32_ERROR(1212);

const ERROR_INVALID_SERVICENAME = WIN32_ERROR(1213);

const ERROR_INVALID_NETNAME = WIN32_ERROR(1214);

const ERROR_INVALID_SHARENAME = WIN32_ERROR(1215);

const ERROR_INVALID_PASSWORDNAME = WIN32_ERROR(1216);

const ERROR_INVALID_MESSAGENAME = WIN32_ERROR(1217);

const ERROR_INVALID_MESSAGEDEST = WIN32_ERROR(1218);

const ERROR_SESSION_CREDENTIAL_CONFLICT = WIN32_ERROR(1219);

const ERROR_REMOTE_SESSION_LIMIT_EXCEEDED = WIN32_ERROR(1220);

const ERROR_DUP_DOMAINNAME = WIN32_ERROR(1221);

const ERROR_NO_NETWORK = WIN32_ERROR(1222);

const ERROR_CANCELLED = WIN32_ERROR(1223);

const ERROR_USER_MAPPED_FILE = WIN32_ERROR(1224);

const ERROR_CONNECTION_REFUSED = WIN32_ERROR(1225);

const ERROR_GRACEFUL_DISCONNECT = WIN32_ERROR(1226);

const ERROR_ADDRESS_ALREADY_ASSOCIATED = WIN32_ERROR(1227);

const ERROR_ADDRESS_NOT_ASSOCIATED = WIN32_ERROR(1228);

const ERROR_CONNECTION_INVALID = WIN32_ERROR(1229);

const ERROR_CONNECTION_ACTIVE = WIN32_ERROR(1230);

const ERROR_NETWORK_UNREACHABLE = WIN32_ERROR(1231);

const ERROR_HOST_UNREACHABLE = WIN32_ERROR(1232);

const ERROR_PROTOCOL_UNREACHABLE = WIN32_ERROR(1233);

const ERROR_PORT_UNREACHABLE = WIN32_ERROR(1234);

const ERROR_REQUEST_ABORTED = WIN32_ERROR(1235);

const ERROR_CONNECTION_ABORTED = WIN32_ERROR(1236);

const ERROR_RETRY = WIN32_ERROR(1237);

const ERROR_CONNECTION_COUNT_LIMIT = WIN32_ERROR(1238);

const ERROR_LOGIN_TIME_RESTRICTION = WIN32_ERROR(1239);

const ERROR_LOGIN_WKSTA_RESTRICTION = WIN32_ERROR(1240);

const ERROR_INCORRECT_ADDRESS = WIN32_ERROR(1241);

const ERROR_ALREADY_REGISTERED = WIN32_ERROR(1242);

const ERROR_SERVICE_NOT_FOUND = WIN32_ERROR(1243);

const ERROR_NOT_AUTHENTICATED = WIN32_ERROR(1244);

const ERROR_NOT_LOGGED_ON = WIN32_ERROR(1245);

const ERROR_CONTINUE = WIN32_ERROR(1246);

const ERROR_ALREADY_INITIALIZED = WIN32_ERROR(1247);

const ERROR_NO_MORE_DEVICES = WIN32_ERROR(1248);

const ERROR_NO_SUCH_SITE = WIN32_ERROR(1249);

const ERROR_DOMAIN_CONTROLLER_EXISTS = WIN32_ERROR(1250);

const ERROR_ONLY_IF_CONNECTED = WIN32_ERROR(1251);

const ERROR_OVERRIDE_NOCHANGES = WIN32_ERROR(1252);

const ERROR_BAD_USER_PROFILE = WIN32_ERROR(1253);

const ERROR_NOT_SUPPORTED_ON_SBS = WIN32_ERROR(1254);

const ERROR_SERVER_SHUTDOWN_IN_PROGRESS = WIN32_ERROR(1255);

const ERROR_HOST_DOWN = WIN32_ERROR(1256);

const ERROR_NON_ACCOUNT_SID = WIN32_ERROR(1257);

const ERROR_NON_DOMAIN_SID = WIN32_ERROR(1258);

const ERROR_APPHELP_BLOCK = WIN32_ERROR(1259);

const ERROR_ACCESS_DISABLED_BY_POLICY = WIN32_ERROR(1260);

const ERROR_REG_NAT_CONSUMPTION = WIN32_ERROR(1261);

const ERROR_CSCSHARE_OFFLINE = WIN32_ERROR(1262);

const ERROR_PKINIT_FAILURE = WIN32_ERROR(1263);

const ERROR_SMARTCARD_SUBSYSTEM_FAILURE = WIN32_ERROR(1264);

const ERROR_DOWNGRADE_DETECTED = WIN32_ERROR(1265);

const ERROR_MACHINE_LOCKED = WIN32_ERROR(1271);

const ERROR_SMB_GUEST_LOGON_BLOCKED = WIN32_ERROR(1272);

const ERROR_CALLBACK_SUPPLIED_INVALID_DATA = WIN32_ERROR(1273);

const ERROR_SYNC_FOREGROUND_REFRESH_REQUIRED = WIN32_ERROR(1274);

const ERROR_DRIVER_BLOCKED = WIN32_ERROR(1275);

const ERROR_INVALID_IMPORT_OF_NON_DLL = WIN32_ERROR(1276);

const ERROR_ACCESS_DISABLED_WEBBLADE = WIN32_ERROR(1277);

const ERROR_ACCESS_DISABLED_WEBBLADE_TAMPER = WIN32_ERROR(1278);

const ERROR_RECOVERY_FAILURE = WIN32_ERROR(1279);

const ERROR_ALREADY_FIBER = WIN32_ERROR(1280);

const ERROR_ALREADY_THREAD = WIN32_ERROR(1281);

const ERROR_STACK_BUFFER_OVERRUN = WIN32_ERROR(1282);

const ERROR_PARAMETER_QUOTA_EXCEEDED = WIN32_ERROR(1283);

const ERROR_DEBUGGER_INACTIVE = WIN32_ERROR(1284);

const ERROR_DELAY_LOAD_FAILED = WIN32_ERROR(1285);

const ERROR_VDM_DISALLOWED = WIN32_ERROR(1286);

const ERROR_UNIDENTIFIED_ERROR = WIN32_ERROR(1287);

const ERROR_INVALID_CRUNTIME_PARAMETER = WIN32_ERROR(1288);

const ERROR_BEYOND_VDL = WIN32_ERROR(1289);

const ERROR_INCOMPATIBLE_SERVICE_SID_TYPE = WIN32_ERROR(1290);

const ERROR_DRIVER_PROCESS_TERMINATED = WIN32_ERROR(1291);

const ERROR_IMPLEMENTATION_LIMIT = WIN32_ERROR(1292);

const ERROR_PROCESS_IS_PROTECTED = WIN32_ERROR(1293);

const ERROR_SERVICE_NOTIFY_CLIENT_LAGGING = WIN32_ERROR(1294);

const ERROR_DISK_QUOTA_EXCEEDED = WIN32_ERROR(1295);

const ERROR_CONTENT_BLOCKED = WIN32_ERROR(1296);

const ERROR_INCOMPATIBLE_SERVICE_PRIVILEGE = WIN32_ERROR(1297);

const ERROR_APP_HANG = WIN32_ERROR(1298);

const ERROR_INVALID_LABEL = WIN32_ERROR(1299);

const ERROR_NOT_ALL_ASSIGNED = WIN32_ERROR(1300);

const ERROR_SOME_NOT_MAPPED = WIN32_ERROR(1301);

const ERROR_NO_QUOTAS_FOR_ACCOUNT = WIN32_ERROR(1302);

const ERROR_LOCAL_USER_SESSION_KEY = WIN32_ERROR(1303);

const ERROR_NULL_LM_PASSWORD = WIN32_ERROR(1304);

const ERROR_UNKNOWN_REVISION = WIN32_ERROR(1305);

const ERROR_REVISION_MISMATCH = WIN32_ERROR(1306);

const ERROR_INVALID_OWNER = WIN32_ERROR(1307);

const ERROR_INVALID_PRIMARY_GROUP = WIN32_ERROR(1308);

const ERROR_NO_IMPERSONATION_TOKEN = WIN32_ERROR(1309);

const ERROR_CANT_DISABLE_MANDATORY = WIN32_ERROR(1310);

const ERROR_NO_LOGON_SERVERS = WIN32_ERROR(1311);

const ERROR_NO_SUCH_LOGON_SESSION = WIN32_ERROR(1312);

const ERROR_NO_SUCH_PRIVILEGE = WIN32_ERROR(1313);

const ERROR_PRIVILEGE_NOT_HELD = WIN32_ERROR(1314);

const ERROR_INVALID_ACCOUNT_NAME = WIN32_ERROR(1315);

const ERROR_USER_EXISTS = WIN32_ERROR(1316);

const ERROR_NO_SUCH_USER = WIN32_ERROR(1317);

const ERROR_GROUP_EXISTS = WIN32_ERROR(1318);

const ERROR_NO_SUCH_GROUP = WIN32_ERROR(1319);

const ERROR_MEMBER_IN_GROUP = WIN32_ERROR(1320);

const ERROR_MEMBER_NOT_IN_GROUP = WIN32_ERROR(1321);

const ERROR_LAST_ADMIN = WIN32_ERROR(1322);

const ERROR_WRONG_PASSWORD = WIN32_ERROR(1323);

const ERROR_ILL_FORMED_PASSWORD = WIN32_ERROR(1324);

const ERROR_PASSWORD_RESTRICTION = WIN32_ERROR(1325);

const ERROR_LOGON_FAILURE = WIN32_ERROR(1326);

const ERROR_ACCOUNT_RESTRICTION = WIN32_ERROR(1327);

const ERROR_INVALID_LOGON_HOURS = WIN32_ERROR(1328);

const ERROR_INVALID_WORKSTATION = WIN32_ERROR(1329);

const ERROR_PASSWORD_EXPIRED = WIN32_ERROR(1330);

const ERROR_ACCOUNT_DISABLED = WIN32_ERROR(1331);

const ERROR_NONE_MAPPED = WIN32_ERROR(1332);

const ERROR_TOO_MANY_LUIDS_REQUESTED = WIN32_ERROR(1333);

const ERROR_LUIDS_EXHAUSTED = WIN32_ERROR(1334);

const ERROR_INVALID_SUB_AUTHORITY = WIN32_ERROR(1335);

const ERROR_INVALID_ACL = WIN32_ERROR(1336);

const ERROR_INVALID_SID = WIN32_ERROR(1337);

const ERROR_INVALID_SECURITY_DESCR = WIN32_ERROR(1338);

const ERROR_BAD_INHERITANCE_ACL = WIN32_ERROR(1340);

const ERROR_SERVER_DISABLED = WIN32_ERROR(1341);

const ERROR_SERVER_NOT_DISABLED = WIN32_ERROR(1342);

const ERROR_INVALID_ID_AUTHORITY = WIN32_ERROR(1343);

const ERROR_ALLOTTED_SPACE_EXCEEDED = WIN32_ERROR(1344);

const ERROR_INVALID_GROUP_ATTRIBUTES = WIN32_ERROR(1345);

const ERROR_BAD_IMPERSONATION_LEVEL = WIN32_ERROR(1346);

const ERROR_CANT_OPEN_ANONYMOUS = WIN32_ERROR(1347);

const ERROR_BAD_VALIDATION_CLASS = WIN32_ERROR(1348);

const ERROR_BAD_TOKEN_TYPE = WIN32_ERROR(1349);

const ERROR_NO_SECURITY_ON_OBJECT = WIN32_ERROR(1350);

const ERROR_CANT_ACCESS_DOMAIN_INFO = WIN32_ERROR(1351);

const ERROR_INVALID_SERVER_STATE = WIN32_ERROR(1352);

const ERROR_INVALID_DOMAIN_STATE = WIN32_ERROR(1353);

const ERROR_INVALID_DOMAIN_ROLE = WIN32_ERROR(1354);

const ERROR_NO_SUCH_DOMAIN = WIN32_ERROR(1355);

const ERROR_DOMAIN_EXISTS = WIN32_ERROR(1356);

const ERROR_DOMAIN_LIMIT_EXCEEDED = WIN32_ERROR(1357);

const ERROR_INTERNAL_DB_CORRUPTION = WIN32_ERROR(1358);

const ERROR_INTERNAL_ERROR = WIN32_ERROR(1359);

const ERROR_GENERIC_NOT_MAPPED = WIN32_ERROR(1360);

const ERROR_BAD_DESCRIPTOR_FORMAT = WIN32_ERROR(1361);

const ERROR_NOT_LOGON_PROCESS = WIN32_ERROR(1362);

const ERROR_LOGON_SESSION_EXISTS = WIN32_ERROR(1363);

const ERROR_NO_SUCH_PACKAGE = WIN32_ERROR(1364);

const ERROR_BAD_LOGON_SESSION_STATE = WIN32_ERROR(1365);

const ERROR_LOGON_SESSION_COLLISION = WIN32_ERROR(1366);

const ERROR_INVALID_LOGON_TYPE = WIN32_ERROR(1367);

const ERROR_CANNOT_IMPERSONATE = WIN32_ERROR(1368);

const ERROR_RXACT_INVALID_STATE = WIN32_ERROR(1369);

const ERROR_RXACT_COMMIT_FAILURE = WIN32_ERROR(1370);

const ERROR_SPECIAL_ACCOUNT = WIN32_ERROR(1371);

const ERROR_SPECIAL_GROUP = WIN32_ERROR(1372);

const ERROR_SPECIAL_USER = WIN32_ERROR(1373);

const ERROR_MEMBERS_PRIMARY_GROUP = WIN32_ERROR(1374);

const ERROR_TOKEN_ALREADY_IN_USE = WIN32_ERROR(1375);

const ERROR_NO_SUCH_ALIAS = WIN32_ERROR(1376);

const ERROR_MEMBER_NOT_IN_ALIAS = WIN32_ERROR(1377);

const ERROR_MEMBER_IN_ALIAS = WIN32_ERROR(1378);

const ERROR_ALIAS_EXISTS = WIN32_ERROR(1379);

const ERROR_LOGON_NOT_GRANTED = WIN32_ERROR(1380);

const ERROR_TOO_MANY_SECRETS = WIN32_ERROR(1381);

const ERROR_SECRET_TOO_LONG = WIN32_ERROR(1382);

const ERROR_INTERNAL_DB_ERROR = WIN32_ERROR(1383);

const ERROR_TOO_MANY_CONTEXT_IDS = WIN32_ERROR(1384);

const ERROR_LOGON_TYPE_NOT_GRANTED = WIN32_ERROR(1385);

const ERROR_NT_CROSS_ENCRYPTION_REQUIRED = WIN32_ERROR(1386);

const ERROR_NO_SUCH_MEMBER = WIN32_ERROR(1387);

const ERROR_INVALID_MEMBER = WIN32_ERROR(1388);

const ERROR_TOO_MANY_SIDS = WIN32_ERROR(1389);

const ERROR_LM_CROSS_ENCRYPTION_REQUIRED = WIN32_ERROR(1390);

const ERROR_NO_INHERITANCE = WIN32_ERROR(1391);

const ERROR_FILE_CORRUPT = WIN32_ERROR(1392);

const ERROR_DISK_CORRUPT = WIN32_ERROR(1393);

const ERROR_NO_USER_SESSION_KEY = WIN32_ERROR(1394);

const ERROR_LICENSE_QUOTA_EXCEEDED = WIN32_ERROR(1395);

const ERROR_WRONG_TARGET_NAME = WIN32_ERROR(1396);

const ERROR_MUTUAL_AUTH_FAILED = WIN32_ERROR(1397);

const ERROR_TIME_SKEW = WIN32_ERROR(1398);

const ERROR_CURRENT_DOMAIN_NOT_ALLOWED = WIN32_ERROR(1399);

const ERROR_INVALID_WINDOW_HANDLE = WIN32_ERROR(1400);

const ERROR_INVALID_MENU_HANDLE = WIN32_ERROR(1401);

const ERROR_INVALID_CURSOR_HANDLE = WIN32_ERROR(1402);

const ERROR_INVALID_ACCEL_HANDLE = WIN32_ERROR(1403);

const ERROR_INVALID_HOOK_HANDLE = WIN32_ERROR(1404);

const ERROR_INVALID_DWP_HANDLE = WIN32_ERROR(1405);

const ERROR_TLW_WITH_WSCHILD = WIN32_ERROR(1406);

const ERROR_CANNOT_FIND_WND_CLASS = WIN32_ERROR(1407);

const ERROR_WINDOW_OF_OTHER_THREAD = WIN32_ERROR(1408);

const ERROR_HOTKEY_ALREADY_REGISTERED = WIN32_ERROR(1409);

const ERROR_CLASS_ALREADY_EXISTS = WIN32_ERROR(1410);

const ERROR_CLASS_DOES_NOT_EXIST = WIN32_ERROR(1411);

const ERROR_CLASS_HAS_WINDOWS = WIN32_ERROR(1412);

const ERROR_INVALID_INDEX = WIN32_ERROR(1413);

const ERROR_INVALID_ICON_HANDLE = WIN32_ERROR(1414);

const ERROR_PRIVATE_DIALOG_INDEX = WIN32_ERROR(1415);

const ERROR_LISTBOX_ID_NOT_FOUND = WIN32_ERROR(1416);

const ERROR_NO_WILDCARD_CHARACTERS = WIN32_ERROR(1417);

const ERROR_CLIPBOARD_NOT_OPEN = WIN32_ERROR(1418);

const ERROR_HOTKEY_NOT_REGISTERED = WIN32_ERROR(1419);

const ERROR_WINDOW_NOT_DIALOG = WIN32_ERROR(1420);

const ERROR_CONTROL_ID_NOT_FOUND = WIN32_ERROR(1421);

const ERROR_INVALID_COMBOBOX_MESSAGE = WIN32_ERROR(1422);

const ERROR_WINDOW_NOT_COMBOBOX = WIN32_ERROR(1423);

const ERROR_INVALID_EDIT_HEIGHT = WIN32_ERROR(1424);

const ERROR_DC_NOT_FOUND = WIN32_ERROR(1425);

const ERROR_INVALID_HOOK_FILTER = WIN32_ERROR(1426);

const ERROR_INVALID_FILTER_PROC = WIN32_ERROR(1427);

const ERROR_HOOK_NEEDS_HMOD = WIN32_ERROR(1428);

const ERROR_GLOBAL_ONLY_HOOK = WIN32_ERROR(1429);

const ERROR_JOURNAL_HOOK_SET = WIN32_ERROR(1430);

const ERROR_HOOK_NOT_INSTALLED = WIN32_ERROR(1431);

const ERROR_INVALID_LB_MESSAGE = WIN32_ERROR(1432);

const ERROR_SETCOUNT_ON_BAD_LB = WIN32_ERROR(1433);

const ERROR_LB_WITHOUT_TABSTOPS = WIN32_ERROR(1434);

const ERROR_DESTROY_OBJECT_OF_OTHER_THREAD = WIN32_ERROR(1435);

const ERROR_CHILD_WINDOW_MENU = WIN32_ERROR(1436);

const ERROR_NO_SYSTEM_MENU = WIN32_ERROR(1437);

const ERROR_INVALID_MSGBOX_STYLE = WIN32_ERROR(1438);

const ERROR_INVALID_SPI_VALUE = WIN32_ERROR(1439);

const ERROR_SCREEN_ALREADY_LOCKED = WIN32_ERROR(1440);

const ERROR_HWNDS_HAVE_DIFF_PARENT = WIN32_ERROR(1441);

const ERROR_NOT_CHILD_WINDOW = WIN32_ERROR(1442);

const ERROR_INVALID_GW_COMMAND = WIN32_ERROR(1443);

const ERROR_INVALID_THREAD_ID = WIN32_ERROR(1444);

const ERROR_NON_MDICHILD_WINDOW = WIN32_ERROR(1445);

const ERROR_POPUP_ALREADY_ACTIVE = WIN32_ERROR(1446);

const ERROR_NO_SCROLLBARS = WIN32_ERROR(1447);

const ERROR_INVALID_SCROLLBAR_RANGE = WIN32_ERROR(1448);

const ERROR_INVALID_SHOWWIN_COMMAND = WIN32_ERROR(1449);

const ERROR_NO_SYSTEM_RESOURCES = WIN32_ERROR(1450);

const ERROR_NONPAGED_SYSTEM_RESOURCES = WIN32_ERROR(1451);

const ERROR_PAGED_SYSTEM_RESOURCES = WIN32_ERROR(1452);

const ERROR_WORKING_SET_QUOTA = WIN32_ERROR(1453);

const ERROR_PAGEFILE_QUOTA = WIN32_ERROR(1454);

const ERROR_COMMITMENT_LIMIT = WIN32_ERROR(1455);

const ERROR_MENU_ITEM_NOT_FOUND = WIN32_ERROR(1456);

const ERROR_INVALID_KEYBOARD_HANDLE = WIN32_ERROR(1457);

const ERROR_HOOK_TYPE_NOT_ALLOWED = WIN32_ERROR(1458);

const ERROR_REQUIRES_INTERACTIVE_WINDOWSTATION = WIN32_ERROR(1459);

const ERROR_TIMEOUT = WIN32_ERROR(1460);

const ERROR_INVALID_MONITOR_HANDLE = WIN32_ERROR(1461);

const ERROR_INCORRECT_SIZE = WIN32_ERROR(1462);

const ERROR_SYMLINK_CLASS_DISABLED = WIN32_ERROR(1463);

const ERROR_SYMLINK_NOT_SUPPORTED = WIN32_ERROR(1464);

const ERROR_XML_PARSE_ERROR = WIN32_ERROR(1465);

const ERROR_XMLDSIG_ERROR = WIN32_ERROR(1466);

const ERROR_RESTART_APPLICATION = WIN32_ERROR(1467);

const ERROR_WRONG_COMPARTMENT = WIN32_ERROR(1468);

const ERROR_AUTHIP_FAILURE = WIN32_ERROR(1469);

const ERROR_NO_NVRAM_RESOURCES = WIN32_ERROR(1470);

const ERROR_NOT_GUI_PROCESS = WIN32_ERROR(1471);

const ERROR_EVENTLOG_FILE_CORRUPT = WIN32_ERROR(1500);

const ERROR_EVENTLOG_CANT_START = WIN32_ERROR(1501);

const ERROR_LOG_FILE_FULL = WIN32_ERROR(1502);

const ERROR_EVENTLOG_FILE_CHANGED = WIN32_ERROR(1503);

const ERROR_CONTAINER_ASSIGNED = WIN32_ERROR(1504);

const ERROR_JOB_NO_CONTAINER = WIN32_ERROR(1505);

const ERROR_INVALID_TASK_NAME = WIN32_ERROR(1550);

const ERROR_INVALID_TASK_INDEX = WIN32_ERROR(1551);

const ERROR_THREAD_ALREADY_IN_TASK = WIN32_ERROR(1552);

const ERROR_INSTALL_SERVICE_FAILURE = WIN32_ERROR(1601);

const ERROR_INSTALL_USEREXIT = WIN32_ERROR(1602);

const ERROR_INSTALL_FAILURE = WIN32_ERROR(1603);

const ERROR_INSTALL_SUSPEND = WIN32_ERROR(1604);

const ERROR_UNKNOWN_PRODUCT = WIN32_ERROR(1605);

const ERROR_UNKNOWN_FEATURE = WIN32_ERROR(1606);

const ERROR_UNKNOWN_COMPONENT = WIN32_ERROR(1607);

const ERROR_UNKNOWN_PROPERTY = WIN32_ERROR(1608);

const ERROR_INVALID_HANDLE_STATE = WIN32_ERROR(1609);

const ERROR_BAD_CONFIGURATION = WIN32_ERROR(1610);

const ERROR_INDEX_ABSENT = WIN32_ERROR(1611);

const ERROR_INSTALL_SOURCE_ABSENT = WIN32_ERROR(1612);

const ERROR_INSTALL_PACKAGE_VERSION = WIN32_ERROR(1613);

const ERROR_PRODUCT_UNINSTALLED = WIN32_ERROR(1614);

const ERROR_BAD_QUERY_SYNTAX = WIN32_ERROR(1615);

const ERROR_INVALID_FIELD = WIN32_ERROR(1616);

const ERROR_DEVICE_REMOVED = WIN32_ERROR(1617);

const ERROR_INSTALL_ALREADY_RUNNING = WIN32_ERROR(1618);

const ERROR_INSTALL_PACKAGE_OPEN_FAILED = WIN32_ERROR(1619);

const ERROR_INSTALL_PACKAGE_INVALID = WIN32_ERROR(1620);

const ERROR_INSTALL_UI_FAILURE = WIN32_ERROR(1621);

const ERROR_INSTALL_LOG_FAILURE = WIN32_ERROR(1622);

const ERROR_INSTALL_LANGUAGE_UNSUPPORTED = WIN32_ERROR(1623);

const ERROR_INSTALL_TRANSFORM_FAILURE = WIN32_ERROR(1624);

const ERROR_INSTALL_PACKAGE_REJECTED = WIN32_ERROR(1625);

const ERROR_FUNCTION_NOT_CALLED = WIN32_ERROR(1626);

const ERROR_FUNCTION_FAILED = WIN32_ERROR(1627);

const ERROR_INVALID_TABLE = WIN32_ERROR(1628);

const ERROR_DATATYPE_MISMATCH = WIN32_ERROR(1629);

const ERROR_UNSUPPORTED_TYPE = WIN32_ERROR(1630);

const ERROR_CREATE_FAILED = WIN32_ERROR(1631);

const ERROR_INSTALL_TEMP_UNWRITABLE = WIN32_ERROR(1632);

const ERROR_INSTALL_PLATFORM_UNSUPPORTED = WIN32_ERROR(1633);

const ERROR_INSTALL_NOTUSED = WIN32_ERROR(1634);

const ERROR_PATCH_PACKAGE_OPEN_FAILED = WIN32_ERROR(1635);

const ERROR_PATCH_PACKAGE_INVALID = WIN32_ERROR(1636);

const ERROR_PATCH_PACKAGE_UNSUPPORTED = WIN32_ERROR(1637);

const ERROR_PRODUCT_VERSION = WIN32_ERROR(1638);

const ERROR_INVALID_COMMAND_LINE = WIN32_ERROR(1639);

const ERROR_INSTALL_REMOTE_DISALLOWED = WIN32_ERROR(1640);

const ERROR_SUCCESS_REBOOT_INITIATED = WIN32_ERROR(1641);

const ERROR_PATCH_TARGET_NOT_FOUND = WIN32_ERROR(1642);

const ERROR_PATCH_PACKAGE_REJECTED = WIN32_ERROR(1643);

const ERROR_INSTALL_TRANSFORM_REJECTED = WIN32_ERROR(1644);

const ERROR_INSTALL_REMOTE_PROHIBITED = WIN32_ERROR(1645);

const ERROR_PATCH_REMOVAL_UNSUPPORTED = WIN32_ERROR(1646);

const ERROR_UNKNOWN_PATCH = WIN32_ERROR(1647);

const ERROR_PATCH_NO_SEQUENCE = WIN32_ERROR(1648);

const ERROR_PATCH_REMOVAL_DISALLOWED = WIN32_ERROR(1649);

const ERROR_INVALID_PATCH_XML = WIN32_ERROR(1650);

const ERROR_PATCH_MANAGED_ADVERTISED_PRODUCT = WIN32_ERROR(1651);

const ERROR_INSTALL_SERVICE_SAFEBOOT = WIN32_ERROR(1652);

const ERROR_FAIL_FAST_EXCEPTION = WIN32_ERROR(1653);

const ERROR_INSTALL_REJECTED = WIN32_ERROR(1654);

const ERROR_DYNAMIC_CODE_BLOCKED = WIN32_ERROR(1655);

const ERROR_NOT_SAME_OBJECT = WIN32_ERROR(1656);

const ERROR_STRICT_CFG_VIOLATION = WIN32_ERROR(1657);

const ERROR_SET_CONTEXT_DENIED = WIN32_ERROR(1660);

const ERROR_CROSS_PARTITION_VIOLATION = WIN32_ERROR(1661);

const ERROR_RETURN_ADDRESS_HIJACK_ATTEMPT = WIN32_ERROR(1662);

const ERROR_INVALID_USER_BUFFER = WIN32_ERROR(1784);

const ERROR_UNRECOGNIZED_MEDIA = WIN32_ERROR(1785);

const ERROR_NO_TRUST_LSA_SECRET = WIN32_ERROR(1786);

const ERROR_NO_TRUST_SAM_ACCOUNT = WIN32_ERROR(1787);

const ERROR_TRUSTED_DOMAIN_FAILURE = WIN32_ERROR(1788);

const ERROR_TRUSTED_RELATIONSHIP_FAILURE = WIN32_ERROR(1789);

const ERROR_TRUST_FAILURE = WIN32_ERROR(1790);

const ERROR_NETLOGON_NOT_STARTED = WIN32_ERROR(1792);

const ERROR_ACCOUNT_EXPIRED = WIN32_ERROR(1793);

const ERROR_REDIRECTOR_HAS_OPEN_HANDLES = WIN32_ERROR(1794);

const ERROR_PRINTER_DRIVER_ALREADY_INSTALLED = WIN32_ERROR(1795);

const ERROR_UNKNOWN_PORT = WIN32_ERROR(1796);

const ERROR_UNKNOWN_PRINTER_DRIVER = WIN32_ERROR(1797);

const ERROR_UNKNOWN_PRINTPROCESSOR = WIN32_ERROR(1798);

const ERROR_INVALID_SEPARATOR_FILE = WIN32_ERROR(1799);

const ERROR_INVALID_PRIORITY = WIN32_ERROR(1800);

const ERROR_INVALID_PRINTER_NAME = WIN32_ERROR(1801);

const ERROR_PRINTER_ALREADY_EXISTS = WIN32_ERROR(1802);

const ERROR_INVALID_PRINTER_COMMAND = WIN32_ERROR(1803);

const ERROR_INVALID_DATATYPE = WIN32_ERROR(1804);

const ERROR_INVALID_ENVIRONMENT = WIN32_ERROR(1805);

const ERROR_NOLOGON_INTERDOMAIN_TRUST_ACCOUNT = WIN32_ERROR(1807);

const ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT = WIN32_ERROR(1808);

const ERROR_NOLOGON_SERVER_TRUST_ACCOUNT = WIN32_ERROR(1809);

const ERROR_DOMAIN_TRUST_INCONSISTENT = WIN32_ERROR(1810);

const ERROR_SERVER_HAS_OPEN_HANDLES = WIN32_ERROR(1811);

const ERROR_RESOURCE_DATA_NOT_FOUND = WIN32_ERROR(1812);

const ERROR_RESOURCE_TYPE_NOT_FOUND = WIN32_ERROR(1813);

const ERROR_RESOURCE_NAME_NOT_FOUND = WIN32_ERROR(1814);

const ERROR_RESOURCE_LANG_NOT_FOUND = WIN32_ERROR(1815);

const ERROR_NOT_ENOUGH_QUOTA = WIN32_ERROR(1816);

const ERROR_INVALID_TIME = WIN32_ERROR(1901);

const ERROR_INVALID_FORM_NAME = WIN32_ERROR(1902);

const ERROR_INVALID_FORM_SIZE = WIN32_ERROR(1903);

const ERROR_ALREADY_WAITING = WIN32_ERROR(1904);

const ERROR_PRINTER_DELETED = WIN32_ERROR(1905);

const ERROR_INVALID_PRINTER_STATE = WIN32_ERROR(1906);

const ERROR_PASSWORD_MUST_CHANGE = WIN32_ERROR(1907);

const ERROR_DOMAIN_CONTROLLER_NOT_FOUND = WIN32_ERROR(1908);

const ERROR_ACCOUNT_LOCKED_OUT = WIN32_ERROR(1909);

const ERROR_NO_SITENAME = WIN32_ERROR(1919);

const ERROR_CANT_ACCESS_FILE = WIN32_ERROR(1920);

const ERROR_CANT_RESOLVE_FILENAME = WIN32_ERROR(1921);

const ERROR_KM_DRIVER_BLOCKED = WIN32_ERROR(1930);

const ERROR_CONTEXT_EXPIRED = WIN32_ERROR(1931);

const ERROR_PER_USER_TRUST_QUOTA_EXCEEDED = WIN32_ERROR(1932);

const ERROR_ALL_USER_TRUST_QUOTA_EXCEEDED = WIN32_ERROR(1933);

const ERROR_USER_DELETE_TRUST_QUOTA_EXCEEDED = WIN32_ERROR(1934);

const ERROR_AUTHENTICATION_FIREWALL_FAILED = WIN32_ERROR(1935);

const ERROR_REMOTE_PRINT_CONNECTIONS_BLOCKED = WIN32_ERROR(1936);

const ERROR_NTLM_BLOCKED = WIN32_ERROR(1937);

const ERROR_PASSWORD_CHANGE_REQUIRED = WIN32_ERROR(1938);

const ERROR_LOST_MODE_LOGON_RESTRICTION = WIN32_ERROR(1939);

const ERROR_INVALID_PIXEL_FORMAT = WIN32_ERROR(2000);

const ERROR_BAD_DRIVER = WIN32_ERROR(2001);

const ERROR_INVALID_WINDOW_STYLE = WIN32_ERROR(2002);

const ERROR_METAFILE_NOT_SUPPORTED = WIN32_ERROR(2003);

const ERROR_TRANSFORM_NOT_SUPPORTED = WIN32_ERROR(2004);

const ERROR_CLIPPING_NOT_SUPPORTED = WIN32_ERROR(2005);

const ERROR_INVALID_CMM = WIN32_ERROR(2010);

const ERROR_INVALID_PROFILE = WIN32_ERROR(2011);

const ERROR_TAG_NOT_FOUND = WIN32_ERROR(2012);

const ERROR_TAG_NOT_PRESENT = WIN32_ERROR(2013);

const ERROR_DUPLICATE_TAG = WIN32_ERROR(2014);

const ERROR_PROFILE_NOT_ASSOCIATED_WITH_DEVICE = WIN32_ERROR(2015);

const ERROR_PROFILE_NOT_FOUND = WIN32_ERROR(2016);

const ERROR_INVALID_COLORSPACE = WIN32_ERROR(2017);

const ERROR_ICM_NOT_ENABLED = WIN32_ERROR(2018);

const ERROR_DELETING_ICM_XFORM = WIN32_ERROR(2019);

const ERROR_INVALID_TRANSFORM = WIN32_ERROR(2020);

const ERROR_COLORSPACE_MISMATCH = WIN32_ERROR(2021);

const ERROR_INVALID_COLORINDEX = WIN32_ERROR(2022);

const ERROR_PROFILE_DOES_NOT_MATCH_DEVICE = WIN32_ERROR(2023);

const ERROR_CONNECTED_OTHER_PASSWORD = WIN32_ERROR(2108);

const ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT = WIN32_ERROR(2109);

const ERROR_BAD_USERNAME = WIN32_ERROR(2202);

const ERROR_NOT_CONNECTED = WIN32_ERROR(2250);

const ERROR_OPEN_FILES = WIN32_ERROR(2401);

const ERROR_ACTIVE_CONNECTIONS = WIN32_ERROR(2402);

const ERROR_DEVICE_IN_USE = WIN32_ERROR(2404);

const ERROR_UNKNOWN_PRINT_MONITOR = WIN32_ERROR(3000);

const ERROR_PRINTER_DRIVER_IN_USE = WIN32_ERROR(3001);

const ERROR_SPOOL_FILE_NOT_FOUND = WIN32_ERROR(3002);

const ERROR_SPL_NO_STARTDOC = WIN32_ERROR(3003);

const ERROR_SPL_NO_ADDJOB = WIN32_ERROR(3004);

const ERROR_PRINT_PROCESSOR_ALREADY_INSTALLED = WIN32_ERROR(3005);

const ERROR_PRINT_MONITOR_ALREADY_INSTALLED = WIN32_ERROR(3006);

const ERROR_INVALID_PRINT_MONITOR = WIN32_ERROR(3007);

const ERROR_PRINT_MONITOR_IN_USE = WIN32_ERROR(3008);

const ERROR_PRINTER_HAS_JOBS_QUEUED = WIN32_ERROR(3009);

const ERROR_SUCCESS_REBOOT_REQUIRED = WIN32_ERROR(3010);

const ERROR_SUCCESS_RESTART_REQUIRED = WIN32_ERROR(3011);

const ERROR_PRINTER_NOT_FOUND = WIN32_ERROR(3012);

const ERROR_PRINTER_DRIVER_WARNED = WIN32_ERROR(3013);

const ERROR_PRINTER_DRIVER_BLOCKED = WIN32_ERROR(3014);

const ERROR_PRINTER_DRIVER_PACKAGE_IN_USE = WIN32_ERROR(3015);

const ERROR_CORE_DRIVER_PACKAGE_NOT_FOUND = WIN32_ERROR(3016);

const ERROR_FAIL_REBOOT_REQUIRED = WIN32_ERROR(3017);

const ERROR_FAIL_REBOOT_INITIATED = WIN32_ERROR(3018);

const ERROR_PRINTER_DRIVER_DOWNLOAD_NEEDED = WIN32_ERROR(3019);

const ERROR_PRINT_JOB_RESTART_REQUIRED = WIN32_ERROR(3020);

const ERROR_INVALID_PRINTER_DRIVER_MANIFEST = WIN32_ERROR(3021);

const ERROR_PRINTER_NOT_SHAREABLE = WIN32_ERROR(3022);

const ERROR_SERVER_SERVICE_CALL_REQUIRES_SMB1 = WIN32_ERROR(3023);

const ERROR_NETWORK_AUTHENTICATION_PROMPT_CANCELED = WIN32_ERROR(3024);

const ERROR_REMOTE_MAILSLOTS_DEPRECATED = WIN32_ERROR(3025);

const ERROR_REQUEST_PAUSED = WIN32_ERROR(3050);

const ERROR_APPEXEC_CONDITION_NOT_SATISFIED = WIN32_ERROR(3060);

const ERROR_APPEXEC_HANDLE_INVALIDATED = WIN32_ERROR(3061);

const ERROR_APPEXEC_INVALID_HOST_GENERATION = WIN32_ERROR(3062);

const ERROR_APPEXEC_UNEXPECTED_PROCESS_REGISTRATION = WIN32_ERROR(3063);

const ERROR_APPEXEC_INVALID_HOST_STATE = WIN32_ERROR(3064);

const ERROR_APPEXEC_NO_DONOR = WIN32_ERROR(3065);

const ERROR_APPEXEC_HOST_ID_MISMATCH = WIN32_ERROR(3066);

const ERROR_APPEXEC_UNKNOWN_USER = WIN32_ERROR(3067);

const ERROR_APPEXEC_APP_COMPAT_BLOCK = WIN32_ERROR(3068);

const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT = WIN32_ERROR(3069);

const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_TERMINATION = WIN32_ERROR(3070);

const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_LICENSING = WIN32_ERROR(3071);

const ERROR_APPEXEC_CALLER_WAIT_TIMEOUT_RESOURCES = WIN32_ERROR(3072);

const ERROR_VRF_VOLATILE_CFG_AND_IO_ENABLED = WIN32_ERROR(3080);

const ERROR_VRF_VOLATILE_NOT_STOPPABLE = WIN32_ERROR(3081);

const ERROR_VRF_VOLATILE_SAFE_MODE = WIN32_ERROR(3082);

const ERROR_VRF_VOLATILE_NOT_RUNNABLE_SYSTEM = WIN32_ERROR(3083);

const ERROR_VRF_VOLATILE_NOT_SUPPORTED_RULECLASS = WIN32_ERROR(3084);

const ERROR_VRF_VOLATILE_PROTECTED_DRIVER = WIN32_ERROR(3085);

const ERROR_VRF_VOLATILE_NMI_REGISTERED = WIN32_ERROR(3086);

const ERROR_VRF_VOLATILE_SETTINGS_CONFLICT = WIN32_ERROR(3087);

const ERROR_CAR_LKD_IN_PROGRESS = WIN32_ERROR(3088);

const ERROR_DIF_ZERO_SIZE_INFORMATION = WIN32_ERROR(3187);

const ERROR_DIF_DRIVER_PLUGIN_MISMATCH = WIN32_ERROR(3188);

const ERROR_DIF_DRIVER_THUNKS_NOT_ALLOWED = WIN32_ERROR(3189);

const ERROR_DIF_IOCALLBACK_NOT_REPLACED = WIN32_ERROR(3190);

const ERROR_DIF_LIVEDUMP_LIMIT_EXCEEDED = WIN32_ERROR(3191);

const ERROR_DIF_VOLATILE_SECTION_NOT_LOCKED = WIN32_ERROR(3192);

const ERROR_DIF_VOLATILE_DRIVER_HOTPATCHED = WIN32_ERROR(3193);

const ERROR_DIF_VOLATILE_INVALID_INFO = WIN32_ERROR(3194);

const ERROR_DIF_VOLATILE_DRIVER_IS_NOT_RUNNING = WIN32_ERROR(3195);

const ERROR_DIF_VOLATILE_PLUGIN_IS_NOT_RUNNING = WIN32_ERROR(3196);

const ERROR_DIF_VOLATILE_PLUGIN_CHANGE_NOT_ALLOWED = WIN32_ERROR(3197);

const ERROR_DIF_VOLATILE_NOT_ALLOWED = WIN32_ERROR(3198);

const ERROR_DIF_BINDING_API_NOT_FOUND = WIN32_ERROR(3199);

const ERROR_IO_REISSUE_AS_CACHED = WIN32_ERROR(3950);

const ERROR_WINS_INTERNAL = WIN32_ERROR(4000);

const ERROR_CAN_NOT_DEL_LOCAL_WINS = WIN32_ERROR(4001);

const ERROR_STATIC_INIT = WIN32_ERROR(4002);

const ERROR_INC_BACKUP = WIN32_ERROR(4003);

const ERROR_FULL_BACKUP = WIN32_ERROR(4004);

const ERROR_REC_NON_EXISTENT = WIN32_ERROR(4005);

const ERROR_RPL_NOT_ALLOWED = WIN32_ERROR(4006);

const ERROR_DHCP_ADDRESS_CONFLICT = WIN32_ERROR(4100);

const ERROR_WMI_GUID_NOT_FOUND = WIN32_ERROR(4200);

const ERROR_WMI_INSTANCE_NOT_FOUND = WIN32_ERROR(4201);

const ERROR_WMI_ITEMID_NOT_FOUND = WIN32_ERROR(4202);

const ERROR_WMI_TRY_AGAIN = WIN32_ERROR(4203);

const ERROR_WMI_DP_NOT_FOUND = WIN32_ERROR(4204);

const ERROR_WMI_UNRESOLVED_INSTANCE_REF = WIN32_ERROR(4205);

const ERROR_WMI_ALREADY_ENABLED = WIN32_ERROR(4206);

const ERROR_WMI_GUID_DISCONNECTED = WIN32_ERROR(4207);

const ERROR_WMI_SERVER_UNAVAILABLE = WIN32_ERROR(4208);

const ERROR_WMI_DP_FAILED = WIN32_ERROR(4209);

const ERROR_WMI_INVALID_MOF = WIN32_ERROR(4210);

const ERROR_WMI_INVALID_REGINFO = WIN32_ERROR(4211);

const ERROR_WMI_ALREADY_DISABLED = WIN32_ERROR(4212);

const ERROR_WMI_READ_ONLY = WIN32_ERROR(4213);

const ERROR_WMI_SET_FAILURE = WIN32_ERROR(4214);

const ERROR_NOT_APPCONTAINER = WIN32_ERROR(4250);

const ERROR_APPCONTAINER_REQUIRED = WIN32_ERROR(4251);

const ERROR_NOT_SUPPORTED_IN_APPCONTAINER = WIN32_ERROR(4252);

const ERROR_INVALID_PACKAGE_SID_LENGTH = WIN32_ERROR(4253);

const ERROR_INVALID_MEDIA = WIN32_ERROR(4300);

const ERROR_INVALID_LIBRARY = WIN32_ERROR(4301);

const ERROR_INVALID_MEDIA_POOL = WIN32_ERROR(4302);

const ERROR_DRIVE_MEDIA_MISMATCH = WIN32_ERROR(4303);

const ERROR_MEDIA_OFFLINE = WIN32_ERROR(4304);

const ERROR_LIBRARY_OFFLINE = WIN32_ERROR(4305);

const ERROR_EMPTY = WIN32_ERROR(4306);

const ERROR_NOT_EMPTY = WIN32_ERROR(4307);

const ERROR_MEDIA_UNAVAILABLE = WIN32_ERROR(4308);

const ERROR_RESOURCE_DISABLED = WIN32_ERROR(4309);

const ERROR_INVALID_CLEANER = WIN32_ERROR(4310);

const ERROR_UNABLE_TO_CLEAN = WIN32_ERROR(4311);

const ERROR_OBJECT_NOT_FOUND = WIN32_ERROR(4312);

const ERROR_DATABASE_FAILURE = WIN32_ERROR(4313);

const ERROR_DATABASE_FULL = WIN32_ERROR(4314);

const ERROR_MEDIA_INCOMPATIBLE = WIN32_ERROR(4315);

const ERROR_RESOURCE_NOT_PRESENT = WIN32_ERROR(4316);

const ERROR_INVALID_OPERATION = WIN32_ERROR(4317);

const ERROR_MEDIA_NOT_AVAILABLE = WIN32_ERROR(4318);

const ERROR_DEVICE_NOT_AVAILABLE = WIN32_ERROR(4319);

const ERROR_REQUEST_REFUSED = WIN32_ERROR(4320);

const ERROR_INVALID_DRIVE_OBJECT = WIN32_ERROR(4321);

const ERROR_LIBRARY_FULL = WIN32_ERROR(4322);

const ERROR_MEDIUM_NOT_ACCESSIBLE = WIN32_ERROR(4323);

const ERROR_UNABLE_TO_LOAD_MEDIUM = WIN32_ERROR(4324);

const ERROR_UNABLE_TO_INVENTORY_DRIVE = WIN32_ERROR(4325);

const ERROR_UNABLE_TO_INVENTORY_SLOT = WIN32_ERROR(4326);

const ERROR_UNABLE_TO_INVENTORY_TRANSPORT = WIN32_ERROR(4327);

const ERROR_TRANSPORT_FULL = WIN32_ERROR(4328);

const ERROR_CONTROLLING_IEPORT = WIN32_ERROR(4329);

const ERROR_UNABLE_TO_EJECT_MOUNTED_MEDIA = WIN32_ERROR(4330);

const ERROR_CLEANER_SLOT_SET = WIN32_ERROR(4331);

const ERROR_CLEANER_SLOT_NOT_SET = WIN32_ERROR(4332);

const ERROR_CLEANER_CARTRIDGE_SPENT = WIN32_ERROR(4333);

const ERROR_UNEXPECTED_OMID = WIN32_ERROR(4334);

const ERROR_CANT_DELETE_LAST_ITEM = WIN32_ERROR(4335);

const ERROR_MESSAGE_EXCEEDS_MAX_SIZE = WIN32_ERROR(4336);

const ERROR_VOLUME_CONTAINS_SYS_FILES = WIN32_ERROR(4337);

const ERROR_INDIGENOUS_TYPE = WIN32_ERROR(4338);

const ERROR_NO_SUPPORTING_DRIVES = WIN32_ERROR(4339);

const ERROR_CLEANER_CARTRIDGE_INSTALLED = WIN32_ERROR(4340);

const ERROR_IEPORT_FULL = WIN32_ERROR(4341);

const ERROR_FILE_OFFLINE = WIN32_ERROR(4350);

const ERROR_REMOTE_STORAGE_NOT_ACTIVE = WIN32_ERROR(4351);

const ERROR_REMOTE_STORAGE_MEDIA_ERROR = WIN32_ERROR(4352);

const ERROR_NOT_A_REPARSE_POINT = WIN32_ERROR(4390);

const ERROR_REPARSE_ATTRIBUTE_CONFLICT = WIN32_ERROR(4391);

const ERROR_INVALID_REPARSE_DATA = WIN32_ERROR(4392);

const ERROR_REPARSE_TAG_INVALID = WIN32_ERROR(4393);

const ERROR_REPARSE_TAG_MISMATCH = WIN32_ERROR(4394);

const ERROR_REPARSE_POINT_ENCOUNTERED = WIN32_ERROR(4395);

const ERROR_APP_DATA_NOT_FOUND = WIN32_ERROR(4400);

const ERROR_APP_DATA_EXPIRED = WIN32_ERROR(4401);

const ERROR_APP_DATA_CORRUPT = WIN32_ERROR(4402);

const ERROR_APP_DATA_LIMIT_EXCEEDED = WIN32_ERROR(4403);

const ERROR_APP_DATA_REBOOT_REQUIRED = WIN32_ERROR(4404);

const ERROR_SECUREBOOT_ROLLBACK_DETECTED = WIN32_ERROR(4420);

const ERROR_SECUREBOOT_POLICY_VIOLATION = WIN32_ERROR(4421);

const ERROR_SECUREBOOT_INVALID_POLICY = WIN32_ERROR(4422);

const ERROR_SECUREBOOT_POLICY_PUBLISHER_NOT_FOUND = WIN32_ERROR(4423);

const ERROR_SECUREBOOT_POLICY_NOT_SIGNED = WIN32_ERROR(4424);

const ERROR_SECUREBOOT_NOT_ENABLED = WIN32_ERROR(4425);

const ERROR_SECUREBOOT_FILE_REPLACED = WIN32_ERROR(4426);

const ERROR_SECUREBOOT_POLICY_NOT_AUTHORIZED = WIN32_ERROR(4427);

const ERROR_SECUREBOOT_POLICY_UNKNOWN = WIN32_ERROR(4428);

const ERROR_SECUREBOOT_POLICY_MISSING_ANTIROLLBACKVERSION = WIN32_ERROR(4429);

const ERROR_SECUREBOOT_PLATFORM_ID_MISMATCH = WIN32_ERROR(4430);

const ERROR_SECUREBOOT_POLICY_ROLLBACK_DETECTED = WIN32_ERROR(4431);

const ERROR_SECUREBOOT_POLICY_UPGRADE_MISMATCH = WIN32_ERROR(4432);

const ERROR_SECUREBOOT_REQUIRED_POLICY_FILE_MISSING = WIN32_ERROR(4433);

const ERROR_SECUREBOOT_NOT_BASE_POLICY = WIN32_ERROR(4434);

const ERROR_SECUREBOOT_NOT_SUPPLEMENTAL_POLICY = WIN32_ERROR(4435);

const ERROR_OFFLOAD_READ_FLT_NOT_SUPPORTED = WIN32_ERROR(4440);

const ERROR_OFFLOAD_WRITE_FLT_NOT_SUPPORTED = WIN32_ERROR(4441);

const ERROR_OFFLOAD_READ_FILE_NOT_SUPPORTED = WIN32_ERROR(4442);

const ERROR_OFFLOAD_WRITE_FILE_NOT_SUPPORTED = WIN32_ERROR(4443);

const ERROR_ALREADY_HAS_STREAM_ID = WIN32_ERROR(4444);

const ERROR_SMR_GARBAGE_COLLECTION_REQUIRED = WIN32_ERROR(4445);

const ERROR_WOF_WIM_HEADER_CORRUPT = WIN32_ERROR(4446);

const ERROR_WOF_WIM_RESOURCE_TABLE_CORRUPT = WIN32_ERROR(4447);

const ERROR_WOF_FILE_RESOURCE_TABLE_CORRUPT = WIN32_ERROR(4448);

const ERROR_OBJECT_IS_IMMUTABLE = WIN32_ERROR(4449);

const ERROR_VOLUME_NOT_SIS_ENABLED = WIN32_ERROR(4500);

const ERROR_SYSTEM_INTEGRITY_ROLLBACK_DETECTED = WIN32_ERROR(4550);

const ERROR_SYSTEM_INTEGRITY_POLICY_VIOLATION = WIN32_ERROR(4551);

const ERROR_SYSTEM_INTEGRITY_INVALID_POLICY = WIN32_ERROR(4552);

const ERROR_SYSTEM_INTEGRITY_POLICY_NOT_SIGNED = WIN32_ERROR(4553);

const ERROR_SYSTEM_INTEGRITY_TOO_MANY_POLICIES = WIN32_ERROR(4554);

const ERROR_SYSTEM_INTEGRITY_SUPPLEMENTAL_POLICY_NOT_AUTHORIZED = WIN32_ERROR(
  4555,
);

const ERROR_SYSTEM_INTEGRITY_REPUTATION_MALICIOUS = WIN32_ERROR(4556);

const ERROR_SYSTEM_INTEGRITY_REPUTATION_PUA = WIN32_ERROR(4557);

const ERROR_SYSTEM_INTEGRITY_REPUTATION_DANGEROUS_EXT = WIN32_ERROR(4558);

const ERROR_SYSTEM_INTEGRITY_REPUTATION_OFFLINE = WIN32_ERROR(4559);

const ERROR_VSM_NOT_INITIALIZED = WIN32_ERROR(4560);

const ERROR_VSM_DMA_PROTECTION_NOT_IN_USE = WIN32_ERROR(4561);

const ERROR_VSM_KEY_CI_POLICY_ROLLBACK_DETECTED = WIN32_ERROR(4562);

const ERROR_VSMIDK_KEYGEN_FAILURE = WIN32_ERROR(4563);

const ERROR_VSMIDK_EXPORT_FAILURE = WIN32_ERROR(4564);

const ERROR_VSMIDK_MODULUS_MISMATCH = WIN32_ERROR(4565);

const ERROR_PLATFORM_MANIFEST_NOT_AUTHORIZED = WIN32_ERROR(4570);

const ERROR_PLATFORM_MANIFEST_INVALID = WIN32_ERROR(4571);

const ERROR_PLATFORM_MANIFEST_FILE_NOT_AUTHORIZED = WIN32_ERROR(4572);

const ERROR_PLATFORM_MANIFEST_CATALOG_NOT_AUTHORIZED = WIN32_ERROR(4573);

const ERROR_PLATFORM_MANIFEST_BINARY_ID_NOT_FOUND = WIN32_ERROR(4574);

const ERROR_PLATFORM_MANIFEST_NOT_ACTIVE = WIN32_ERROR(4575);

const ERROR_PLATFORM_MANIFEST_NOT_SIGNED = WIN32_ERROR(4576);

const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNFRIENDLY_FILE = WIN32_ERROR(4580);

const ERROR_SYSTEM_INTEGRITY_REPUTATION_UNATTAINABLE = WIN32_ERROR(4581);

const ERROR_SYSTEM_INTEGRITY_REPUTATION_EXPLICIT_DENY_FILE = WIN32_ERROR(4582);

const ERROR_SYSTEM_INTEGRITY_WHQL_NOT_SATISFIED = WIN32_ERROR(4583);

const ERROR_DEPENDENT_RESOURCE_EXISTS = WIN32_ERROR(5001);

const ERROR_DEPENDENCY_NOT_FOUND = WIN32_ERROR(5002);

const ERROR_DEPENDENCY_ALREADY_EXISTS = WIN32_ERROR(5003);

const ERROR_RESOURCE_NOT_ONLINE = WIN32_ERROR(5004);

const ERROR_HOST_NODE_NOT_AVAILABLE = WIN32_ERROR(5005);

const ERROR_RESOURCE_NOT_AVAILABLE = WIN32_ERROR(5006);

const ERROR_RESOURCE_NOT_FOUND = WIN32_ERROR(5007);

const ERROR_SHUTDOWN_CLUSTER = WIN32_ERROR(5008);

const ERROR_CANT_EVICT_ACTIVE_NODE = WIN32_ERROR(5009);

const ERROR_OBJECT_ALREADY_EXISTS = WIN32_ERROR(5010);

const ERROR_OBJECT_IN_LIST = WIN32_ERROR(5011);

const ERROR_GROUP_NOT_AVAILABLE = WIN32_ERROR(5012);

const ERROR_GROUP_NOT_FOUND = WIN32_ERROR(5013);

const ERROR_GROUP_NOT_ONLINE = WIN32_ERROR(5014);

const ERROR_HOST_NODE_NOT_RESOURCE_OWNER = WIN32_ERROR(5015);

const ERROR_HOST_NODE_NOT_GROUP_OWNER = WIN32_ERROR(5016);

const ERROR_RESMON_CREATE_FAILED = WIN32_ERROR(5017);

const ERROR_RESMON_ONLINE_FAILED = WIN32_ERROR(5018);

const ERROR_RESOURCE_ONLINE = WIN32_ERROR(5019);

const ERROR_QUORUM_RESOURCE = WIN32_ERROR(5020);

const ERROR_NOT_QUORUM_CAPABLE = WIN32_ERROR(5021);

const ERROR_CLUSTER_SHUTTING_DOWN = WIN32_ERROR(5022);

const ERROR_INVALID_STATE = WIN32_ERROR(5023);

const ERROR_RESOURCE_PROPERTIES_STORED = WIN32_ERROR(5024);

const ERROR_NOT_QUORUM_CLASS = WIN32_ERROR(5025);

const ERROR_CORE_RESOURCE = WIN32_ERROR(5026);

const ERROR_QUORUM_RESOURCE_ONLINE_FAILED = WIN32_ERROR(5027);

const ERROR_QUORUMLOG_OPEN_FAILED = WIN32_ERROR(5028);

const ERROR_CLUSTERLOG_CORRUPT = WIN32_ERROR(5029);

const ERROR_CLUSTERLOG_RECORD_EXCEEDS_MAXSIZE = WIN32_ERROR(5030);

const ERROR_CLUSTERLOG_EXCEEDS_MAXSIZE = WIN32_ERROR(5031);

const ERROR_CLUSTERLOG_CHKPOINT_NOT_FOUND = WIN32_ERROR(5032);

const ERROR_CLUSTERLOG_NOT_ENOUGH_SPACE = WIN32_ERROR(5033);

const ERROR_QUORUM_OWNER_ALIVE = WIN32_ERROR(5034);

const ERROR_NETWORK_NOT_AVAILABLE = WIN32_ERROR(5035);

const ERROR_NODE_NOT_AVAILABLE = WIN32_ERROR(5036);

const ERROR_ALL_NODES_NOT_AVAILABLE = WIN32_ERROR(5037);

const ERROR_RESOURCE_FAILED = WIN32_ERROR(5038);

const ERROR_CLUSTER_INVALID_NODE = WIN32_ERROR(5039);

const ERROR_CLUSTER_NODE_EXISTS = WIN32_ERROR(5040);

const ERROR_CLUSTER_JOIN_IN_PROGRESS = WIN32_ERROR(5041);

const ERROR_CLUSTER_NODE_NOT_FOUND = WIN32_ERROR(5042);

const ERROR_CLUSTER_LOCAL_NODE_NOT_FOUND = WIN32_ERROR(5043);

const ERROR_CLUSTER_NETWORK_EXISTS = WIN32_ERROR(5044);

const ERROR_CLUSTER_NETWORK_NOT_FOUND = WIN32_ERROR(5045);

const ERROR_CLUSTER_NETINTERFACE_EXISTS = WIN32_ERROR(5046);

const ERROR_CLUSTER_NETINTERFACE_NOT_FOUND = WIN32_ERROR(5047);

const ERROR_CLUSTER_INVALID_REQUEST = WIN32_ERROR(5048);

const ERROR_CLUSTER_INVALID_NETWORK_PROVIDER = WIN32_ERROR(5049);

const ERROR_CLUSTER_NODE_DOWN = WIN32_ERROR(5050);

const ERROR_CLUSTER_NODE_UNREACHABLE = WIN32_ERROR(5051);

const ERROR_CLUSTER_NODE_NOT_MEMBER = WIN32_ERROR(5052);

const ERROR_CLUSTER_JOIN_NOT_IN_PROGRESS = WIN32_ERROR(5053);

const ERROR_CLUSTER_INVALID_NETWORK = WIN32_ERROR(5054);

const ERROR_CLUSTER_NODE_UP = WIN32_ERROR(5056);

const ERROR_CLUSTER_IPADDR_IN_USE = WIN32_ERROR(5057);

const ERROR_CLUSTER_NODE_NOT_PAUSED = WIN32_ERROR(5058);

const ERROR_CLUSTER_NO_SECURITY_CONTEXT = WIN32_ERROR(5059);

const ERROR_CLUSTER_NETWORK_NOT_INTERNAL = WIN32_ERROR(5060);

const ERROR_CLUSTER_NODE_ALREADY_UP = WIN32_ERROR(5061);

const ERROR_CLUSTER_NODE_ALREADY_DOWN = WIN32_ERROR(5062);

const ERROR_CLUSTER_NETWORK_ALREADY_ONLINE = WIN32_ERROR(5063);

const ERROR_CLUSTER_NETWORK_ALREADY_OFFLINE = WIN32_ERROR(5064);

const ERROR_CLUSTER_NODE_ALREADY_MEMBER = WIN32_ERROR(5065);

const ERROR_CLUSTER_LAST_INTERNAL_NETWORK = WIN32_ERROR(5066);

const ERROR_CLUSTER_NETWORK_HAS_DEPENDENTS = WIN32_ERROR(5067);

const ERROR_INVALID_OPERATION_ON_QUORUM = WIN32_ERROR(5068);

const ERROR_DEPENDENCY_NOT_ALLOWED = WIN32_ERROR(5069);

const ERROR_CLUSTER_NODE_PAUSED = WIN32_ERROR(5070);

const ERROR_NODE_CANT_HOST_RESOURCE = WIN32_ERROR(5071);

const ERROR_CLUSTER_NODE_NOT_READY = WIN32_ERROR(5072);

const ERROR_CLUSTER_NODE_SHUTTING_DOWN = WIN32_ERROR(5073);

const ERROR_CLUSTER_JOIN_ABORTED = WIN32_ERROR(5074);

const ERROR_CLUSTER_INCOMPATIBLE_VERSIONS = WIN32_ERROR(5075);

const ERROR_CLUSTER_MAXNUM_OF_RESOURCES_EXCEEDED = WIN32_ERROR(5076);

const ERROR_CLUSTER_SYSTEM_CONFIG_CHANGED = WIN32_ERROR(5077);

const ERROR_CLUSTER_RESOURCE_TYPE_NOT_FOUND = WIN32_ERROR(5078);

const ERROR_CLUSTER_RESTYPE_NOT_SUPPORTED = WIN32_ERROR(5079);

const ERROR_CLUSTER_RESNAME_NOT_FOUND = WIN32_ERROR(5080);

const ERROR_CLUSTER_NO_RPC_PACKAGES_REGISTERED = WIN32_ERROR(5081);

const ERROR_CLUSTER_OWNER_NOT_IN_PREFLIST = WIN32_ERROR(5082);

const ERROR_CLUSTER_DATABASE_SEQMISMATCH = WIN32_ERROR(5083);

const ERROR_RESMON_INVALID_STATE = WIN32_ERROR(5084);

const ERROR_CLUSTER_GUM_NOT_LOCKER = WIN32_ERROR(5085);

const ERROR_QUORUM_DISK_NOT_FOUND = WIN32_ERROR(5086);

const ERROR_DATABASE_BACKUP_CORRUPT = WIN32_ERROR(5087);

const ERROR_CLUSTER_NODE_ALREADY_HAS_DFS_ROOT = WIN32_ERROR(5088);

const ERROR_RESOURCE_PROPERTY_UNCHANGEABLE = WIN32_ERROR(5089);

const ERROR_NO_ADMIN_ACCESS_POINT = WIN32_ERROR(5090);

const ERROR_CLUSTER_MEMBERSHIP_INVALID_STATE = WIN32_ERROR(5890);

const ERROR_CLUSTER_QUORUMLOG_NOT_FOUND = WIN32_ERROR(5891);

const ERROR_CLUSTER_MEMBERSHIP_HALT = WIN32_ERROR(5892);

const ERROR_CLUSTER_INSTANCE_ID_MISMATCH = WIN32_ERROR(5893);

const ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP = WIN32_ERROR(5894);

const ERROR_CLUSTER_PROPERTY_DATA_TYPE_MISMATCH = WIN32_ERROR(5895);

const ERROR_CLUSTER_EVICT_WITHOUT_CLEANUP = WIN32_ERROR(5896);

const ERROR_CLUSTER_PARAMETER_MISMATCH = WIN32_ERROR(5897);

const ERROR_NODE_CANNOT_BE_CLUSTERED = WIN32_ERROR(5898);

const ERROR_CLUSTER_WRONG_OS_VERSION = WIN32_ERROR(5899);

const ERROR_CLUSTER_CANT_CREATE_DUP_CLUSTER_NAME = WIN32_ERROR(5900);

const ERROR_CLUSCFG_ALREADY_COMMITTED = WIN32_ERROR(5901);

const ERROR_CLUSCFG_ROLLBACK_FAILED = WIN32_ERROR(5902);

const ERROR_CLUSCFG_SYSTEM_DISK_DRIVE_LETTER_CONFLICT = WIN32_ERROR(5903);

const ERROR_CLUSTER_OLD_VERSION = WIN32_ERROR(5904);

const ERROR_CLUSTER_MISMATCHED_COMPUTER_ACCT_NAME = WIN32_ERROR(5905);

const ERROR_CLUSTER_NO_NET_ADAPTERS = WIN32_ERROR(5906);

const ERROR_CLUSTER_POISONED = WIN32_ERROR(5907);

const ERROR_CLUSTER_GROUP_MOVING = WIN32_ERROR(5908);

const ERROR_CLUSTER_RESOURCE_TYPE_BUSY = WIN32_ERROR(5909);

const ERROR_RESOURCE_CALL_TIMED_OUT = WIN32_ERROR(5910);

const ERROR_INVALID_CLUSTER_IPV6_ADDRESS = WIN32_ERROR(5911);

const ERROR_CLUSTER_INTERNAL_INVALID_FUNCTION = WIN32_ERROR(5912);

const ERROR_CLUSTER_PARAMETER_OUT_OF_BOUNDS = WIN32_ERROR(5913);

const ERROR_CLUSTER_PARTIAL_SEND = WIN32_ERROR(5914);

const ERROR_CLUSTER_REGISTRY_INVALID_FUNCTION = WIN32_ERROR(5915);

const ERROR_CLUSTER_INVALID_STRING_TERMINATION = WIN32_ERROR(5916);

const ERROR_CLUSTER_INVALID_STRING_FORMAT = WIN32_ERROR(5917);

const ERROR_CLUSTER_DATABASE_TRANSACTION_IN_PROGRESS = WIN32_ERROR(5918);

const ERROR_CLUSTER_DATABASE_TRANSACTION_NOT_IN_PROGRESS = WIN32_ERROR(5919);

const ERROR_CLUSTER_NULL_DATA = WIN32_ERROR(5920);

const ERROR_CLUSTER_PARTIAL_READ = WIN32_ERROR(5921);

const ERROR_CLUSTER_PARTIAL_WRITE = WIN32_ERROR(5922);

const ERROR_CLUSTER_CANT_DESERIALIZE_DATA = WIN32_ERROR(5923);

const ERROR_DEPENDENT_RESOURCE_PROPERTY_CONFLICT = WIN32_ERROR(5924);

const ERROR_CLUSTER_NO_QUORUM = WIN32_ERROR(5925);

const ERROR_CLUSTER_INVALID_IPV6_NETWORK = WIN32_ERROR(5926);

const ERROR_CLUSTER_INVALID_IPV6_TUNNEL_NETWORK = WIN32_ERROR(5927);

const ERROR_QUORUM_NOT_ALLOWED_IN_THIS_GROUP = WIN32_ERROR(5928);

const ERROR_DEPENDENCY_TREE_TOO_COMPLEX = WIN32_ERROR(5929);

const ERROR_EXCEPTION_IN_RESOURCE_CALL = WIN32_ERROR(5930);

const ERROR_CLUSTER_RHS_FAILED_INITIALIZATION = WIN32_ERROR(5931);

const ERROR_CLUSTER_NOT_INSTALLED = WIN32_ERROR(5932);

const ERROR_CLUSTER_RESOURCES_MUST_BE_ONLINE_ON_THE_SAME_NODE = WIN32_ERROR(
  5933,
);

const ERROR_CLUSTER_MAX_NODES_IN_CLUSTER = WIN32_ERROR(5934);

const ERROR_CLUSTER_TOO_MANY_NODES = WIN32_ERROR(5935);

const ERROR_CLUSTER_OBJECT_ALREADY_USED = WIN32_ERROR(5936);

const ERROR_NONCORE_GROUPS_FOUND = WIN32_ERROR(5937);

const ERROR_FILE_SHARE_RESOURCE_CONFLICT = WIN32_ERROR(5938);

const ERROR_CLUSTER_EVICT_INVALID_REQUEST = WIN32_ERROR(5939);

const ERROR_CLUSTER_SINGLETON_RESOURCE = WIN32_ERROR(5940);

const ERROR_CLUSTER_GROUP_SINGLETON_RESOURCE = WIN32_ERROR(5941);

const ERROR_CLUSTER_RESOURCE_PROVIDER_FAILED = WIN32_ERROR(5942);

const ERROR_CLUSTER_RESOURCE_CONFIGURATION_ERROR = WIN32_ERROR(5943);

const ERROR_CLUSTER_GROUP_BUSY = WIN32_ERROR(5944);

const ERROR_CLUSTER_NOT_SHARED_VOLUME = WIN32_ERROR(5945);

const ERROR_CLUSTER_INVALID_SECURITY_DESCRIPTOR = WIN32_ERROR(5946);

const ERROR_CLUSTER_SHARED_VOLUMES_IN_USE = WIN32_ERROR(5947);

const ERROR_CLUSTER_USE_SHARED_VOLUMES_API = WIN32_ERROR(5948);

const ERROR_CLUSTER_BACKUP_IN_PROGRESS = WIN32_ERROR(5949);

const ERROR_NON_CSV_PATH = WIN32_ERROR(5950);

const ERROR_CSV_VOLUME_NOT_LOCAL = WIN32_ERROR(5951);

const ERROR_CLUSTER_WATCHDOG_TERMINATING = WIN32_ERROR(5952);

const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_INCOMPATIBLE_NODES = WIN32_ERROR(5953);

const ERROR_CLUSTER_INVALID_NODE_WEIGHT = WIN32_ERROR(5954);

const ERROR_CLUSTER_RESOURCE_VETOED_CALL = WIN32_ERROR(5955);

const ERROR_RESMON_SYSTEM_RESOURCES_LACKING = WIN32_ERROR(5956);

const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_DESTINATION =
    WIN32_ERROR(5957);

const ERROR_CLUSTER_RESOURCE_VETOED_MOVE_NOT_ENOUGH_RESOURCES_ON_SOURCE =
    WIN32_ERROR(5958);

const ERROR_CLUSTER_GROUP_QUEUED = WIN32_ERROR(5959);

const ERROR_CLUSTER_RESOURCE_LOCKED_STATUS = WIN32_ERROR(5960);

const ERROR_CLUSTER_SHARED_VOLUME_FAILOVER_NOT_ALLOWED = WIN32_ERROR(5961);

const ERROR_CLUSTER_NODE_DRAIN_IN_PROGRESS = WIN32_ERROR(5962);

const ERROR_CLUSTER_DISK_NOT_CONNECTED = WIN32_ERROR(5963);

const ERROR_DISK_NOT_CSV_CAPABLE = WIN32_ERROR(5964);

const ERROR_RESOURCE_NOT_IN_AVAILABLE_STORAGE = WIN32_ERROR(5965);

const ERROR_CLUSTER_SHARED_VOLUME_REDIRECTED = WIN32_ERROR(5966);

const ERROR_CLUSTER_SHARED_VOLUME_NOT_REDIRECTED = WIN32_ERROR(5967);

const ERROR_CLUSTER_CANNOT_RETURN_PROPERTIES = WIN32_ERROR(5968);

const ERROR_CLUSTER_RESOURCE_CONTAINS_UNSUPPORTED_DIFF_AREA_FOR_SHARED_VOLUMES =
    WIN32_ERROR(5969);

const ERROR_CLUSTER_RESOURCE_IS_IN_MAINTENANCE_MODE = WIN32_ERROR(5970);

const ERROR_CLUSTER_AFFINITY_CONFLICT = WIN32_ERROR(5971);

const ERROR_CLUSTER_RESOURCE_IS_REPLICA_VIRTUAL_MACHINE = WIN32_ERROR(5972);

const ERROR_CLUSTER_UPGRADE_INCOMPATIBLE_VERSIONS = WIN32_ERROR(5973);

const ERROR_CLUSTER_UPGRADE_FIX_QUORUM_NOT_SUPPORTED = WIN32_ERROR(5974);

const ERROR_CLUSTER_UPGRADE_RESTART_REQUIRED = WIN32_ERROR(5975);

const ERROR_CLUSTER_UPGRADE_IN_PROGRESS = WIN32_ERROR(5976);

const ERROR_CLUSTER_UPGRADE_INCOMPLETE = WIN32_ERROR(5977);

const ERROR_CLUSTER_NODE_IN_GRACE_PERIOD = WIN32_ERROR(5978);

const ERROR_CLUSTER_CSV_IO_PAUSE_TIMEOUT = WIN32_ERROR(5979);

const ERROR_NODE_NOT_ACTIVE_CLUSTER_MEMBER = WIN32_ERROR(5980);

const ERROR_CLUSTER_RESOURCE_NOT_MONITORED = WIN32_ERROR(5981);

const ERROR_CLUSTER_RESOURCE_DOES_NOT_SUPPORT_UNMONITORED = WIN32_ERROR(5982);

const ERROR_CLUSTER_RESOURCE_IS_REPLICATED = WIN32_ERROR(5983);

const ERROR_CLUSTER_NODE_ISOLATED = WIN32_ERROR(5984);

const ERROR_CLUSTER_NODE_QUARANTINED = WIN32_ERROR(5985);

const ERROR_CLUSTER_DATABASE_UPDATE_CONDITION_FAILED = WIN32_ERROR(5986);

const ERROR_CLUSTER_SPACE_DEGRADED = WIN32_ERROR(5987);

const ERROR_CLUSTER_TOKEN_DELEGATION_NOT_SUPPORTED = WIN32_ERROR(5988);

const ERROR_CLUSTER_CSV_INVALID_HANDLE = WIN32_ERROR(5989);

const ERROR_CLUSTER_CSV_SUPPORTED_ONLY_ON_COORDINATOR = WIN32_ERROR(5990);

const ERROR_GROUPSET_NOT_AVAILABLE = WIN32_ERROR(5991);

const ERROR_GROUPSET_NOT_FOUND = WIN32_ERROR(5992);

const ERROR_GROUPSET_CANT_PROVIDE = WIN32_ERROR(5993);

const ERROR_CLUSTER_FAULT_DOMAIN_PARENT_NOT_FOUND = WIN32_ERROR(5994);

const ERROR_CLUSTER_FAULT_DOMAIN_INVALID_HIERARCHY = WIN32_ERROR(5995);

const ERROR_CLUSTER_FAULT_DOMAIN_FAILED_S2D_VALIDATION = WIN32_ERROR(5996);

const ERROR_CLUSTER_FAULT_DOMAIN_S2D_CONNECTIVITY_LOSS = WIN32_ERROR(5997);

const ERROR_CLUSTER_INVALID_INFRASTRUCTURE_FILESERVER_NAME = WIN32_ERROR(5998);

const ERROR_CLUSTERSET_MANAGEMENT_CLUSTER_UNREACHABLE = WIN32_ERROR(5999);

const ERROR_ENCRYPTION_FAILED = WIN32_ERROR(6000);

const ERROR_DECRYPTION_FAILED = WIN32_ERROR(6001);

const ERROR_FILE_ENCRYPTED = WIN32_ERROR(6002);

const ERROR_NO_RECOVERY_POLICY = WIN32_ERROR(6003);

const ERROR_NO_EFS = WIN32_ERROR(6004);

const ERROR_WRONG_EFS = WIN32_ERROR(6005);

const ERROR_NO_USER_KEYS = WIN32_ERROR(6006);

const ERROR_FILE_NOT_ENCRYPTED = WIN32_ERROR(6007);

const ERROR_NOT_EXPORT_FORMAT = WIN32_ERROR(6008);

const ERROR_FILE_READ_ONLY = WIN32_ERROR(6009);

const ERROR_DIR_EFS_DISALLOWED = WIN32_ERROR(6010);

const ERROR_EFS_SERVER_NOT_TRUSTED = WIN32_ERROR(6011);

const ERROR_BAD_RECOVERY_POLICY = WIN32_ERROR(6012);

const ERROR_EFS_ALG_BLOB_TOO_BIG = WIN32_ERROR(6013);

const ERROR_VOLUME_NOT_SUPPORT_EFS = WIN32_ERROR(6014);

const ERROR_EFS_DISABLED = WIN32_ERROR(6015);

const ERROR_EFS_VERSION_NOT_SUPPORT = WIN32_ERROR(6016);

const ERROR_CS_ENCRYPTION_INVALID_SERVER_RESPONSE = WIN32_ERROR(6017);

const ERROR_CS_ENCRYPTION_UNSUPPORTED_SERVER = WIN32_ERROR(6018);

const ERROR_CS_ENCRYPTION_EXISTING_ENCRYPTED_FILE = WIN32_ERROR(6019);

const ERROR_CS_ENCRYPTION_NEW_ENCRYPTED_FILE = WIN32_ERROR(6020);

const ERROR_CS_ENCRYPTION_FILE_NOT_CSE = WIN32_ERROR(6021);

const ERROR_ENCRYPTION_POLICY_DENIES_OPERATION = WIN32_ERROR(6022);

const ERROR_WIP_ENCRYPTION_FAILED = WIN32_ERROR(6023);

const ERROR_PDE_ENCRYPTION_UNAVAILABLE_FAILURE = WIN32_ERROR(6024);

const ERROR_PDE_DECRYPTION_UNAVAILABLE_FAILURE = WIN32_ERROR(6025);

const ERROR_PDE_DECRYPTION_UNAVAILABLE = WIN32_ERROR(6026);

const ERROR_NO_BROWSER_SERVERS_FOUND = WIN32_ERROR(6118);

const ERROR_CLUSTER_OBJECT_IS_CLUSTER_SET_VM = WIN32_ERROR(6250);

const ERROR_CNU_TEMPLATE_ALREADY_EXISTS = WIN32_ERROR(6251);

const ERROR_CNU_TEMPLATE_NAME_NOT_FOUND = WIN32_ERROR(6252);

const ERROR_CNU_RUN_NAME_NOT_FOUND = WIN32_ERROR(6253);

const ERROR_CNU_RUN_ALREADY_IN_PROGRESS = WIN32_ERROR(6254);

const ERROR_CNU_RUN_NOT_IN_PROGRESS = WIN32_ERROR(6255);

const ERROR_CNU_NOT_READY = WIN32_ERROR(6256);

const ERROR_CAMERA_INVALID_CONFIGURATION = WIN32_ERROR(6350);

const ERROR_CAMERA_INSUFFICIENT_BANDWIDTH = WIN32_ERROR(6351);

const ERROR_LOG_SECTOR_INVALID = WIN32_ERROR(6600);

const ERROR_LOG_SECTOR_PARITY_INVALID = WIN32_ERROR(6601);

const ERROR_LOG_SECTOR_REMAPPED = WIN32_ERROR(6602);

const ERROR_LOG_BLOCK_INCOMPLETE = WIN32_ERROR(6603);

const ERROR_LOG_INVALID_RANGE = WIN32_ERROR(6604);

const ERROR_LOG_BLOCKS_EXHAUSTED = WIN32_ERROR(6605);

const ERROR_LOG_READ_CONTEXT_INVALID = WIN32_ERROR(6606);

const ERROR_LOG_RESTART_INVALID = WIN32_ERROR(6607);

const ERROR_LOG_BLOCK_VERSION = WIN32_ERROR(6608);

const ERROR_LOG_BLOCK_INVALID = WIN32_ERROR(6609);

const ERROR_LOG_READ_MODE_INVALID = WIN32_ERROR(6610);

const ERROR_LOG_NO_RESTART = WIN32_ERROR(6611);

const ERROR_LOG_METADATA_CORRUPT = WIN32_ERROR(6612);

const ERROR_LOG_METADATA_INVALID = WIN32_ERROR(6613);

const ERROR_LOG_METADATA_INCONSISTENT = WIN32_ERROR(6614);

const ERROR_LOG_RESERVATION_INVALID = WIN32_ERROR(6615);

const ERROR_LOG_CANT_DELETE = WIN32_ERROR(6616);

const ERROR_LOG_CONTAINER_LIMIT_EXCEEDED = WIN32_ERROR(6617);

const ERROR_LOG_START_OF_LOG = WIN32_ERROR(6618);

const ERROR_LOG_POLICY_ALREADY_INSTALLED = WIN32_ERROR(6619);

const ERROR_LOG_POLICY_NOT_INSTALLED = WIN32_ERROR(6620);

const ERROR_LOG_POLICY_INVALID = WIN32_ERROR(6621);

const ERROR_LOG_POLICY_CONFLICT = WIN32_ERROR(6622);

const ERROR_LOG_PINNED_ARCHIVE_TAIL = WIN32_ERROR(6623);

const ERROR_LOG_RECORD_NONEXISTENT = WIN32_ERROR(6624);

const ERROR_LOG_RECORDS_RESERVED_INVALID = WIN32_ERROR(6625);

const ERROR_LOG_SPACE_RESERVED_INVALID = WIN32_ERROR(6626);

const ERROR_LOG_TAIL_INVALID = WIN32_ERROR(6627);

const ERROR_LOG_FULL = WIN32_ERROR(6628);

const ERROR_COULD_NOT_RESIZE_LOG = WIN32_ERROR(6629);

const ERROR_LOG_MULTIPLEXED = WIN32_ERROR(6630);

const ERROR_LOG_DEDICATED = WIN32_ERROR(6631);

const ERROR_LOG_ARCHIVE_NOT_IN_PROGRESS = WIN32_ERROR(6632);

const ERROR_LOG_ARCHIVE_IN_PROGRESS = WIN32_ERROR(6633);

const ERROR_LOG_EPHEMERAL = WIN32_ERROR(6634);

const ERROR_LOG_NOT_ENOUGH_CONTAINERS = WIN32_ERROR(6635);

const ERROR_LOG_CLIENT_ALREADY_REGISTERED = WIN32_ERROR(6636);

const ERROR_LOG_CLIENT_NOT_REGISTERED = WIN32_ERROR(6637);

const ERROR_LOG_FULL_HANDLER_IN_PROGRESS = WIN32_ERROR(6638);

const ERROR_LOG_CONTAINER_READ_FAILED = WIN32_ERROR(6639);

const ERROR_LOG_CONTAINER_WRITE_FAILED = WIN32_ERROR(6640);

const ERROR_LOG_CONTAINER_OPEN_FAILED = WIN32_ERROR(6641);

const ERROR_LOG_CONTAINER_STATE_INVALID = WIN32_ERROR(6642);

const ERROR_LOG_STATE_INVALID = WIN32_ERROR(6643);

const ERROR_LOG_PINNED = WIN32_ERROR(6644);

const ERROR_LOG_METADATA_FLUSH_FAILED = WIN32_ERROR(6645);

const ERROR_LOG_INCONSISTENT_SECURITY = WIN32_ERROR(6646);

const ERROR_LOG_APPENDED_FLUSH_FAILED = WIN32_ERROR(6647);

const ERROR_LOG_PINNED_RESERVATION = WIN32_ERROR(6648);

const ERROR_INVALID_TRANSACTION = WIN32_ERROR(6700);

const ERROR_TRANSACTION_NOT_ACTIVE = WIN32_ERROR(6701);

const ERROR_TRANSACTION_REQUEST_NOT_VALID = WIN32_ERROR(6702);

const ERROR_TRANSACTION_NOT_REQUESTED = WIN32_ERROR(6703);

const ERROR_TRANSACTION_ALREADY_ABORTED = WIN32_ERROR(6704);

const ERROR_TRANSACTION_ALREADY_COMMITTED = WIN32_ERROR(6705);

const ERROR_TM_INITIALIZATION_FAILED = WIN32_ERROR(6706);

const ERROR_RESOURCEMANAGER_READ_ONLY = WIN32_ERROR(6707);

const ERROR_TRANSACTION_NOT_JOINED = WIN32_ERROR(6708);

const ERROR_TRANSACTION_SUPERIOR_EXISTS = WIN32_ERROR(6709);

const ERROR_CRM_PROTOCOL_ALREADY_EXISTS = WIN32_ERROR(6710);

const ERROR_TRANSACTION_PROPAGATION_FAILED = WIN32_ERROR(6711);

const ERROR_CRM_PROTOCOL_NOT_FOUND = WIN32_ERROR(6712);

const ERROR_TRANSACTION_INVALID_MARSHALL_BUFFER = WIN32_ERROR(6713);

const ERROR_CURRENT_TRANSACTION_NOT_VALID = WIN32_ERROR(6714);

const ERROR_TRANSACTION_NOT_FOUND = WIN32_ERROR(6715);

const ERROR_RESOURCEMANAGER_NOT_FOUND = WIN32_ERROR(6716);

const ERROR_ENLISTMENT_NOT_FOUND = WIN32_ERROR(6717);

const ERROR_TRANSACTIONMANAGER_NOT_FOUND = WIN32_ERROR(6718);

const ERROR_TRANSACTIONMANAGER_NOT_ONLINE = WIN32_ERROR(6719);

const ERROR_TRANSACTIONMANAGER_RECOVERY_NAME_COLLISION = WIN32_ERROR(6720);

const ERROR_TRANSACTION_NOT_ROOT = WIN32_ERROR(6721);

const ERROR_TRANSACTION_OBJECT_EXPIRED = WIN32_ERROR(6722);

const ERROR_TRANSACTION_RESPONSE_NOT_ENLISTED = WIN32_ERROR(6723);

const ERROR_TRANSACTION_RECORD_TOO_LONG = WIN32_ERROR(6724);

const ERROR_IMPLICIT_TRANSACTION_NOT_SUPPORTED = WIN32_ERROR(6725);

const ERROR_TRANSACTION_INTEGRITY_VIOLATED = WIN32_ERROR(6726);

const ERROR_TRANSACTIONMANAGER_IDENTITY_MISMATCH = WIN32_ERROR(6727);

const ERROR_RM_CANNOT_BE_FROZEN_FOR_SNAPSHOT = WIN32_ERROR(6728);

const ERROR_TRANSACTION_MUST_WRITETHROUGH = WIN32_ERROR(6729);

const ERROR_TRANSACTION_NO_SUPERIOR = WIN32_ERROR(6730);

const ERROR_HEURISTIC_DAMAGE_POSSIBLE = WIN32_ERROR(6731);

const ERROR_TRANSACTIONAL_CONFLICT = WIN32_ERROR(6800);

const ERROR_RM_NOT_ACTIVE = WIN32_ERROR(6801);

const ERROR_RM_METADATA_CORRUPT = WIN32_ERROR(6802);

const ERROR_DIRECTORY_NOT_RM = WIN32_ERROR(6803);

const ERROR_TRANSACTIONS_UNSUPPORTED_REMOTE = WIN32_ERROR(6805);

const ERROR_LOG_RESIZE_INVALID_SIZE = WIN32_ERROR(6806);

const ERROR_OBJECT_NO_LONGER_EXISTS = WIN32_ERROR(6807);

const ERROR_STREAM_MINIVERSION_NOT_FOUND = WIN32_ERROR(6808);

const ERROR_STREAM_MINIVERSION_NOT_VALID = WIN32_ERROR(6809);

const ERROR_MINIVERSION_INACCESSIBLE_FROM_SPECIFIED_TRANSACTION = WIN32_ERROR(
  6810,
);

const ERROR_CANT_OPEN_MINIVERSION_WITH_MODIFY_INTENT = WIN32_ERROR(6811);

const ERROR_CANT_CREATE_MORE_STREAM_MINIVERSIONS = WIN32_ERROR(6812);

const ERROR_REMOTE_FILE_VERSION_MISMATCH = WIN32_ERROR(6814);

const ERROR_HANDLE_NO_LONGER_VALID = WIN32_ERROR(6815);

const ERROR_NO_TXF_METADATA = WIN32_ERROR(6816);

const ERROR_LOG_CORRUPTION_DETECTED = WIN32_ERROR(6817);

const ERROR_CANT_RECOVER_WITH_HANDLE_OPEN = WIN32_ERROR(6818);

const ERROR_RM_DISCONNECTED = WIN32_ERROR(6819);

const ERROR_ENLISTMENT_NOT_SUPERIOR = WIN32_ERROR(6820);

const ERROR_RECOVERY_NOT_NEEDED = WIN32_ERROR(6821);

const ERROR_RM_ALREADY_STARTED = WIN32_ERROR(6822);

const ERROR_FILE_IDENTITY_NOT_PERSISTENT = WIN32_ERROR(6823);

const ERROR_CANT_BREAK_TRANSACTIONAL_DEPENDENCY = WIN32_ERROR(6824);

const ERROR_CANT_CROSS_RM_BOUNDARY = WIN32_ERROR(6825);

const ERROR_TXF_DIR_NOT_EMPTY = WIN32_ERROR(6826);

const ERROR_INDOUBT_TRANSACTIONS_EXIST = WIN32_ERROR(6827);

const ERROR_TM_VOLATILE = WIN32_ERROR(6828);

const ERROR_ROLLBACK_TIMER_EXPIRED = WIN32_ERROR(6829);

const ERROR_TXF_ATTRIBUTE_CORRUPT = WIN32_ERROR(6830);

const ERROR_EFS_NOT_ALLOWED_IN_TRANSACTION = WIN32_ERROR(6831);

const ERROR_TRANSACTIONAL_OPEN_NOT_ALLOWED = WIN32_ERROR(6832);

const ERROR_LOG_GROWTH_FAILED = WIN32_ERROR(6833);

const ERROR_TRANSACTED_MAPPING_UNSUPPORTED_REMOTE = WIN32_ERROR(6834);

const ERROR_TXF_METADATA_ALREADY_PRESENT = WIN32_ERROR(6835);

const ERROR_TRANSACTION_SCOPE_CALLBACKS_NOT_SET = WIN32_ERROR(6836);

const ERROR_TRANSACTION_REQUIRED_PROMOTION = WIN32_ERROR(6837);

const ERROR_CANNOT_EXECUTE_FILE_IN_TRANSACTION = WIN32_ERROR(6838);

const ERROR_TRANSACTIONS_NOT_FROZEN = WIN32_ERROR(6839);

const ERROR_TRANSACTION_FREEZE_IN_PROGRESS = WIN32_ERROR(6840);

const ERROR_NOT_SNAPSHOT_VOLUME = WIN32_ERROR(6841);

const ERROR_NO_SAVEPOINT_WITH_OPEN_FILES = WIN32_ERROR(6842);

const ERROR_DATA_LOST_REPAIR = WIN32_ERROR(6843);

const ERROR_SPARSE_NOT_ALLOWED_IN_TRANSACTION = WIN32_ERROR(6844);

const ERROR_TM_IDENTITY_MISMATCH = WIN32_ERROR(6845);

const ERROR_FLOATED_SECTION = WIN32_ERROR(6846);

const ERROR_CANNOT_ACCEPT_TRANSACTED_WORK = WIN32_ERROR(6847);

const ERROR_CANNOT_ABORT_TRANSACTIONS = WIN32_ERROR(6848);

const ERROR_BAD_CLUSTERS = WIN32_ERROR(6849);

const ERROR_COMPRESSION_NOT_ALLOWED_IN_TRANSACTION = WIN32_ERROR(6850);

const ERROR_VOLUME_DIRTY = WIN32_ERROR(6851);

const ERROR_NO_LINK_TRACKING_IN_TRANSACTION = WIN32_ERROR(6852);

const ERROR_OPERATION_NOT_SUPPORTED_IN_TRANSACTION = WIN32_ERROR(6853);

const ERROR_EXPIRED_HANDLE = WIN32_ERROR(6854);

const ERROR_TRANSACTION_NOT_ENLISTED = WIN32_ERROR(6855);

const ERROR_ENLISTMENT_NOT_INITIALIZED = WIN32_ERROR(6856);

const ERROR_CTX_WINSTATION_NAME_INVALID = WIN32_ERROR(7001);

const ERROR_CTX_INVALID_PD = WIN32_ERROR(7002);

const ERROR_CTX_PD_NOT_FOUND = WIN32_ERROR(7003);

const ERROR_CTX_WD_NOT_FOUND = WIN32_ERROR(7004);

const ERROR_CTX_CANNOT_MAKE_EVENTLOG_ENTRY = WIN32_ERROR(7005);

const ERROR_CTX_SERVICE_NAME_COLLISION = WIN32_ERROR(7006);

const ERROR_CTX_CLOSE_PENDING = WIN32_ERROR(7007);

const ERROR_CTX_NO_OUTBUF = WIN32_ERROR(7008);

const ERROR_CTX_MODEM_INF_NOT_FOUND = WIN32_ERROR(7009);

const ERROR_CTX_INVALID_MODEMNAME = WIN32_ERROR(7010);

const ERROR_CTX_MODEM_RESPONSE_ERROR = WIN32_ERROR(7011);

const ERROR_CTX_MODEM_RESPONSE_TIMEOUT = WIN32_ERROR(7012);

const ERROR_CTX_MODEM_RESPONSE_NO_CARRIER = WIN32_ERROR(7013);

const ERROR_CTX_MODEM_RESPONSE_NO_DIALTONE = WIN32_ERROR(7014);

const ERROR_CTX_MODEM_RESPONSE_BUSY = WIN32_ERROR(7015);

const ERROR_CTX_MODEM_RESPONSE_VOICE = WIN32_ERROR(7016);

const ERROR_CTX_TD_ERROR = WIN32_ERROR(7017);

const ERROR_CTX_WINSTATION_NOT_FOUND = WIN32_ERROR(7022);

const ERROR_CTX_WINSTATION_ALREADY_EXISTS = WIN32_ERROR(7023);

const ERROR_CTX_WINSTATION_BUSY = WIN32_ERROR(7024);

const ERROR_CTX_BAD_VIDEO_MODE = WIN32_ERROR(7025);

const ERROR_CTX_GRAPHICS_INVALID = WIN32_ERROR(7035);

const ERROR_CTX_LOGON_DISABLED = WIN32_ERROR(7037);

const ERROR_CTX_NOT_CONSOLE = WIN32_ERROR(7038);

const ERROR_CTX_CLIENT_QUERY_TIMEOUT = WIN32_ERROR(7040);

const ERROR_CTX_CONSOLE_DISCONNECT = WIN32_ERROR(7041);

const ERROR_CTX_CONSOLE_CONNECT = WIN32_ERROR(7042);

const ERROR_CTX_SHADOW_DENIED = WIN32_ERROR(7044);

const ERROR_CTX_WINSTATION_ACCESS_DENIED = WIN32_ERROR(7045);

const ERROR_CTX_INVALID_WD = WIN32_ERROR(7049);

const ERROR_CTX_SHADOW_INVALID = WIN32_ERROR(7050);

const ERROR_CTX_SHADOW_DISABLED = WIN32_ERROR(7051);

const ERROR_CTX_CLIENT_LICENSE_IN_USE = WIN32_ERROR(7052);

const ERROR_CTX_CLIENT_LICENSE_NOT_SET = WIN32_ERROR(7053);

const ERROR_CTX_LICENSE_NOT_AVAILABLE = WIN32_ERROR(7054);

const ERROR_CTX_LICENSE_CLIENT_INVALID = WIN32_ERROR(7055);

const ERROR_CTX_LICENSE_EXPIRED = WIN32_ERROR(7056);

const ERROR_CTX_SHADOW_NOT_RUNNING = WIN32_ERROR(7057);

const ERROR_CTX_SHADOW_ENDED_BY_MODE_CHANGE = WIN32_ERROR(7058);

const ERROR_ACTIVATION_COUNT_EXCEEDED = WIN32_ERROR(7059);

const ERROR_CTX_WINSTATIONS_DISABLED = WIN32_ERROR(7060);

const ERROR_CTX_ENCRYPTION_LEVEL_REQUIRED = WIN32_ERROR(7061);

const ERROR_CTX_SESSION_IN_USE = WIN32_ERROR(7062);

const ERROR_CTX_NO_FORCE_LOGOFF = WIN32_ERROR(7063);

const ERROR_CTX_ACCOUNT_RESTRICTION = WIN32_ERROR(7064);

const ERROR_RDP_PROTOCOL_ERROR = WIN32_ERROR(7065);

const ERROR_CTX_CDM_CONNECT = WIN32_ERROR(7066);

const ERROR_CTX_CDM_DISCONNECT = WIN32_ERROR(7067);

const ERROR_CTX_SECURITY_LAYER_ERROR = WIN32_ERROR(7068);

const ERROR_TS_INCOMPATIBLE_SESSIONS = WIN32_ERROR(7069);

const ERROR_TS_VIDEO_SUBSYSTEM_ERROR = WIN32_ERROR(7070);

const ERROR_DS_NOT_INSTALLED = WIN32_ERROR(8200);

const ERROR_DS_MEMBERSHIP_EVALUATED_LOCALLY = WIN32_ERROR(8201);

const ERROR_DS_NO_ATTRIBUTE_OR_VALUE = WIN32_ERROR(8202);

const ERROR_DS_INVALID_ATTRIBUTE_SYNTAX = WIN32_ERROR(8203);

const ERROR_DS_ATTRIBUTE_TYPE_UNDEFINED = WIN32_ERROR(8204);

const ERROR_DS_ATTRIBUTE_OR_VALUE_EXISTS = WIN32_ERROR(8205);

const ERROR_DS_BUSY = WIN32_ERROR(8206);

const ERROR_DS_UNAVAILABLE = WIN32_ERROR(8207);

const ERROR_DS_NO_RIDS_ALLOCATED = WIN32_ERROR(8208);

const ERROR_DS_NO_MORE_RIDS = WIN32_ERROR(8209);

const ERROR_DS_INCORRECT_ROLE_OWNER = WIN32_ERROR(8210);

const ERROR_DS_RIDMGR_INIT_ERROR = WIN32_ERROR(8211);

const ERROR_DS_OBJ_CLASS_VIOLATION = WIN32_ERROR(8212);

const ERROR_DS_CANT_ON_NON_LEAF = WIN32_ERROR(8213);

const ERROR_DS_CANT_ON_RDN = WIN32_ERROR(8214);

const ERROR_DS_CANT_MOD_OBJ_CLASS = WIN32_ERROR(8215);

const ERROR_DS_CROSS_DOM_MOVE_ERROR = WIN32_ERROR(8216);

const ERROR_DS_GC_NOT_AVAILABLE = WIN32_ERROR(8217);

const ERROR_SHARED_POLICY = WIN32_ERROR(8218);

const ERROR_POLICY_OBJECT_NOT_FOUND = WIN32_ERROR(8219);

const ERROR_POLICY_ONLY_IN_DS = WIN32_ERROR(8220);

const ERROR_PROMOTION_ACTIVE = WIN32_ERROR(8221);

const ERROR_NO_PROMOTION_ACTIVE = WIN32_ERROR(8222);

const ERROR_DS_OPERATIONS_ERROR = WIN32_ERROR(8224);

const ERROR_DS_PROTOCOL_ERROR = WIN32_ERROR(8225);

const ERROR_DS_TIMELIMIT_EXCEEDED = WIN32_ERROR(8226);

const ERROR_DS_SIZELIMIT_EXCEEDED = WIN32_ERROR(8227);

const ERROR_DS_ADMIN_LIMIT_EXCEEDED = WIN32_ERROR(8228);

const ERROR_DS_COMPARE_FALSE = WIN32_ERROR(8229);

const ERROR_DS_COMPARE_TRUE = WIN32_ERROR(8230);

const ERROR_DS_AUTH_METHOD_NOT_SUPPORTED = WIN32_ERROR(8231);

const ERROR_DS_STRONG_AUTH_REQUIRED = WIN32_ERROR(8232);

const ERROR_DS_INAPPROPRIATE_AUTH = WIN32_ERROR(8233);

const ERROR_DS_AUTH_UNKNOWN = WIN32_ERROR(8234);

const ERROR_DS_REFERRAL = WIN32_ERROR(8235);

const ERROR_DS_UNAVAILABLE_CRIT_EXTENSION = WIN32_ERROR(8236);

const ERROR_DS_CONFIDENTIALITY_REQUIRED = WIN32_ERROR(8237);

const ERROR_DS_INAPPROPRIATE_MATCHING = WIN32_ERROR(8238);

const ERROR_DS_CONSTRAINT_VIOLATION = WIN32_ERROR(8239);

const ERROR_DS_NO_SUCH_OBJECT = WIN32_ERROR(8240);

const ERROR_DS_ALIAS_PROBLEM = WIN32_ERROR(8241);

const ERROR_DS_INVALID_DN_SYNTAX = WIN32_ERROR(8242);

const ERROR_DS_IS_LEAF = WIN32_ERROR(8243);

const ERROR_DS_ALIAS_DEREF_PROBLEM = WIN32_ERROR(8244);

const ERROR_DS_UNWILLING_TO_PERFORM = WIN32_ERROR(8245);

const ERROR_DS_LOOP_DETECT = WIN32_ERROR(8246);

const ERROR_DS_NAMING_VIOLATION = WIN32_ERROR(8247);

const ERROR_DS_OBJECT_RESULTS_TOO_LARGE = WIN32_ERROR(8248);

const ERROR_DS_AFFECTS_MULTIPLE_DSAS = WIN32_ERROR(8249);

const ERROR_DS_SERVER_DOWN = WIN32_ERROR(8250);

const ERROR_DS_LOCAL_ERROR = WIN32_ERROR(8251);

const ERROR_DS_ENCODING_ERROR = WIN32_ERROR(8252);

const ERROR_DS_DECODING_ERROR = WIN32_ERROR(8253);

const ERROR_DS_FILTER_UNKNOWN = WIN32_ERROR(8254);

const ERROR_DS_PARAM_ERROR = WIN32_ERROR(8255);

const ERROR_DS_NOT_SUPPORTED = WIN32_ERROR(8256);

const ERROR_DS_NO_RESULTS_RETURNED = WIN32_ERROR(8257);

const ERROR_DS_CONTROL_NOT_FOUND = WIN32_ERROR(8258);

const ERROR_DS_CLIENT_LOOP = WIN32_ERROR(8259);

const ERROR_DS_REFERRAL_LIMIT_EXCEEDED = WIN32_ERROR(8260);

const ERROR_DS_SORT_CONTROL_MISSING = WIN32_ERROR(8261);

const ERROR_DS_OFFSET_RANGE_ERROR = WIN32_ERROR(8262);

const ERROR_DS_RIDMGR_DISABLED = WIN32_ERROR(8263);

const ERROR_DS_ROOT_MUST_BE_NC = WIN32_ERROR(8301);

const ERROR_DS_ADD_REPLICA_INHIBITED = WIN32_ERROR(8302);

const ERROR_DS_ATT_NOT_DEF_IN_SCHEMA = WIN32_ERROR(8303);

const ERROR_DS_MAX_OBJ_SIZE_EXCEEDED = WIN32_ERROR(8304);

const ERROR_DS_OBJ_STRING_NAME_EXISTS = WIN32_ERROR(8305);

const ERROR_DS_NO_RDN_DEFINED_IN_SCHEMA = WIN32_ERROR(8306);

const ERROR_DS_RDN_DOESNT_MATCH_SCHEMA = WIN32_ERROR(8307);

const ERROR_DS_NO_REQUESTED_ATTS_FOUND = WIN32_ERROR(8308);

const ERROR_DS_USER_BUFFER_TO_SMALL = WIN32_ERROR(8309);

const ERROR_DS_ATT_IS_NOT_ON_OBJ = WIN32_ERROR(8310);

const ERROR_DS_ILLEGAL_MOD_OPERATION = WIN32_ERROR(8311);

const ERROR_DS_OBJ_TOO_LARGE = WIN32_ERROR(8312);

const ERROR_DS_BAD_INSTANCE_TYPE = WIN32_ERROR(8313);

const ERROR_DS_MASTERDSA_REQUIRED = WIN32_ERROR(8314);

const ERROR_DS_OBJECT_CLASS_REQUIRED = WIN32_ERROR(8315);

const ERROR_DS_MISSING_REQUIRED_ATT = WIN32_ERROR(8316);

const ERROR_DS_ATT_NOT_DEF_FOR_CLASS = WIN32_ERROR(8317);

const ERROR_DS_ATT_ALREADY_EXISTS = WIN32_ERROR(8318);

const ERROR_DS_CANT_ADD_ATT_VALUES = WIN32_ERROR(8320);

const ERROR_DS_SINGLE_VALUE_CONSTRAINT = WIN32_ERROR(8321);

const ERROR_DS_RANGE_CONSTRAINT = WIN32_ERROR(8322);

const ERROR_DS_ATT_VAL_ALREADY_EXISTS = WIN32_ERROR(8323);

const ERROR_DS_CANT_REM_MISSING_ATT = WIN32_ERROR(8324);

const ERROR_DS_CANT_REM_MISSING_ATT_VAL = WIN32_ERROR(8325);

const ERROR_DS_ROOT_CANT_BE_SUBREF = WIN32_ERROR(8326);

const ERROR_DS_NO_CHAINING = WIN32_ERROR(8327);

const ERROR_DS_NO_CHAINED_EVAL = WIN32_ERROR(8328);

const ERROR_DS_NO_PARENT_OBJECT = WIN32_ERROR(8329);

const ERROR_DS_PARENT_IS_AN_ALIAS = WIN32_ERROR(8330);

const ERROR_DS_CANT_MIX_MASTER_AND_REPS = WIN32_ERROR(8331);

const ERROR_DS_CHILDREN_EXIST = WIN32_ERROR(8332);

const ERROR_DS_OBJ_NOT_FOUND = WIN32_ERROR(8333);

const ERROR_DS_ALIASED_OBJ_MISSING = WIN32_ERROR(8334);

const ERROR_DS_BAD_NAME_SYNTAX = WIN32_ERROR(8335);

const ERROR_DS_ALIAS_POINTS_TO_ALIAS = WIN32_ERROR(8336);

const ERROR_DS_CANT_DEREF_ALIAS = WIN32_ERROR(8337);

const ERROR_DS_OUT_OF_SCOPE = WIN32_ERROR(8338);

const ERROR_DS_OBJECT_BEING_REMOVED = WIN32_ERROR(8339);

const ERROR_DS_CANT_DELETE_DSA_OBJ = WIN32_ERROR(8340);

const ERROR_DS_GENERIC_ERROR = WIN32_ERROR(8341);

const ERROR_DS_DSA_MUST_BE_INT_MASTER = WIN32_ERROR(8342);

const ERROR_DS_CLASS_NOT_DSA = WIN32_ERROR(8343);

const ERROR_DS_INSUFF_ACCESS_RIGHTS = WIN32_ERROR(8344);

const ERROR_DS_ILLEGAL_SUPERIOR = WIN32_ERROR(8345);

const ERROR_DS_ATTRIBUTE_OWNED_BY_SAM = WIN32_ERROR(8346);

const ERROR_DS_NAME_TOO_MANY_PARTS = WIN32_ERROR(8347);

const ERROR_DS_NAME_TOO_LONG = WIN32_ERROR(8348);

const ERROR_DS_NAME_VALUE_TOO_LONG = WIN32_ERROR(8349);

const ERROR_DS_NAME_UNPARSEABLE = WIN32_ERROR(8350);

const ERROR_DS_NAME_TYPE_UNKNOWN = WIN32_ERROR(8351);

const ERROR_DS_NOT_AN_OBJECT = WIN32_ERROR(8352);

const ERROR_DS_SEC_DESC_TOO_SHORT = WIN32_ERROR(8353);

const ERROR_DS_SEC_DESC_INVALID = WIN32_ERROR(8354);

const ERROR_DS_NO_DELETED_NAME = WIN32_ERROR(8355);

const ERROR_DS_SUBREF_MUST_HAVE_PARENT = WIN32_ERROR(8356);

const ERROR_DS_NCNAME_MUST_BE_NC = WIN32_ERROR(8357);

const ERROR_DS_CANT_ADD_SYSTEM_ONLY = WIN32_ERROR(8358);

const ERROR_DS_CLASS_MUST_BE_CONCRETE = WIN32_ERROR(8359);

const ERROR_DS_INVALID_DMD = WIN32_ERROR(8360);

const ERROR_DS_OBJ_GUID_EXISTS = WIN32_ERROR(8361);

const ERROR_DS_NOT_ON_BACKLINK = WIN32_ERROR(8362);

const ERROR_DS_NO_CROSSREF_FOR_NC = WIN32_ERROR(8363);

const ERROR_DS_SHUTTING_DOWN = WIN32_ERROR(8364);

const ERROR_DS_UNKNOWN_OPERATION = WIN32_ERROR(8365);

const ERROR_DS_INVALID_ROLE_OWNER = WIN32_ERROR(8366);

const ERROR_DS_COULDNT_CONTACT_FSMO = WIN32_ERROR(8367);

const ERROR_DS_CROSS_NC_DN_RENAME = WIN32_ERROR(8368);

const ERROR_DS_CANT_MOD_SYSTEM_ONLY = WIN32_ERROR(8369);

const ERROR_DS_REPLICATOR_ONLY = WIN32_ERROR(8370);

const ERROR_DS_OBJ_CLASS_NOT_DEFINED = WIN32_ERROR(8371);

const ERROR_DS_OBJ_CLASS_NOT_SUBCLASS = WIN32_ERROR(8372);

const ERROR_DS_NAME_REFERENCE_INVALID = WIN32_ERROR(8373);

const ERROR_DS_CROSS_REF_EXISTS = WIN32_ERROR(8374);

const ERROR_DS_CANT_DEL_MASTER_CROSSREF = WIN32_ERROR(8375);

const ERROR_DS_SUBTREE_NOTIFY_NOT_NC_HEAD = WIN32_ERROR(8376);

const ERROR_DS_NOTIFY_FILTER_TOO_COMPLEX = WIN32_ERROR(8377);

const ERROR_DS_DUP_RDN = WIN32_ERROR(8378);

const ERROR_DS_DUP_OID = WIN32_ERROR(8379);

const ERROR_DS_DUP_MAPI_ID = WIN32_ERROR(8380);

const ERROR_DS_DUP_SCHEMA_ID_GUID = WIN32_ERROR(8381);

const ERROR_DS_DUP_LDAP_DISPLAY_NAME = WIN32_ERROR(8382);

const ERROR_DS_SEMANTIC_ATT_TEST = WIN32_ERROR(8383);

const ERROR_DS_SYNTAX_MISMATCH = WIN32_ERROR(8384);

const ERROR_DS_EXISTS_IN_MUST_HAVE = WIN32_ERROR(8385);

const ERROR_DS_EXISTS_IN_MAY_HAVE = WIN32_ERROR(8386);

const ERROR_DS_NONEXISTENT_MAY_HAVE = WIN32_ERROR(8387);

const ERROR_DS_NONEXISTENT_MUST_HAVE = WIN32_ERROR(8388);

const ERROR_DS_AUX_CLS_TEST_FAIL = WIN32_ERROR(8389);

const ERROR_DS_NONEXISTENT_POSS_SUP = WIN32_ERROR(8390);

const ERROR_DS_SUB_CLS_TEST_FAIL = WIN32_ERROR(8391);

const ERROR_DS_BAD_RDN_ATT_ID_SYNTAX = WIN32_ERROR(8392);

const ERROR_DS_EXISTS_IN_AUX_CLS = WIN32_ERROR(8393);

const ERROR_DS_EXISTS_IN_SUB_CLS = WIN32_ERROR(8394);

const ERROR_DS_EXISTS_IN_POSS_SUP = WIN32_ERROR(8395);

const ERROR_DS_RECALCSCHEMA_FAILED = WIN32_ERROR(8396);

const ERROR_DS_TREE_DELETE_NOT_FINISHED = WIN32_ERROR(8397);

const ERROR_DS_CANT_DELETE = WIN32_ERROR(8398);

const ERROR_DS_ATT_SCHEMA_REQ_ID = WIN32_ERROR(8399);

const ERROR_DS_BAD_ATT_SCHEMA_SYNTAX = WIN32_ERROR(8400);

const ERROR_DS_CANT_CACHE_ATT = WIN32_ERROR(8401);

const ERROR_DS_CANT_CACHE_CLASS = WIN32_ERROR(8402);

const ERROR_DS_CANT_REMOVE_ATT_CACHE = WIN32_ERROR(8403);

const ERROR_DS_CANT_REMOVE_CLASS_CACHE = WIN32_ERROR(8404);

const ERROR_DS_CANT_RETRIEVE_DN = WIN32_ERROR(8405);

const ERROR_DS_MISSING_SUPREF = WIN32_ERROR(8406);

const ERROR_DS_CANT_RETRIEVE_INSTANCE = WIN32_ERROR(8407);

const ERROR_DS_CODE_INCONSISTENCY = WIN32_ERROR(8408);

const ERROR_DS_DATABASE_ERROR = WIN32_ERROR(8409);

const ERROR_DS_GOVERNSID_MISSING = WIN32_ERROR(8410);

const ERROR_DS_MISSING_EXPECTED_ATT = WIN32_ERROR(8411);

const ERROR_DS_NCNAME_MISSING_CR_REF = WIN32_ERROR(8412);

const ERROR_DS_SECURITY_CHECKING_ERROR = WIN32_ERROR(8413);

const ERROR_DS_SCHEMA_NOT_LOADED = WIN32_ERROR(8414);

const ERROR_DS_SCHEMA_ALLOC_FAILED = WIN32_ERROR(8415);

const ERROR_DS_ATT_SCHEMA_REQ_SYNTAX = WIN32_ERROR(8416);

const ERROR_DS_GCVERIFY_ERROR = WIN32_ERROR(8417);

const ERROR_DS_DRA_SCHEMA_MISMATCH = WIN32_ERROR(8418);

const ERROR_DS_CANT_FIND_DSA_OBJ = WIN32_ERROR(8419);

const ERROR_DS_CANT_FIND_EXPECTED_NC = WIN32_ERROR(8420);

const ERROR_DS_CANT_FIND_NC_IN_CACHE = WIN32_ERROR(8421);

const ERROR_DS_CANT_RETRIEVE_CHILD = WIN32_ERROR(8422);

const ERROR_DS_SECURITY_ILLEGAL_MODIFY = WIN32_ERROR(8423);

const ERROR_DS_CANT_REPLACE_HIDDEN_REC = WIN32_ERROR(8424);

const ERROR_DS_BAD_HIERARCHY_FILE = WIN32_ERROR(8425);

const ERROR_DS_BUILD_HIERARCHY_TABLE_FAILED = WIN32_ERROR(8426);

const ERROR_DS_CONFIG_PARAM_MISSING = WIN32_ERROR(8427);

const ERROR_DS_COUNTING_AB_INDICES_FAILED = WIN32_ERROR(8428);

const ERROR_DS_HIERARCHY_TABLE_MALLOC_FAILED = WIN32_ERROR(8429);

const ERROR_DS_INTERNAL_FAILURE = WIN32_ERROR(8430);

const ERROR_DS_UNKNOWN_ERROR = WIN32_ERROR(8431);

const ERROR_DS_ROOT_REQUIRES_CLASS_TOP = WIN32_ERROR(8432);

const ERROR_DS_REFUSING_FSMO_ROLES = WIN32_ERROR(8433);

const ERROR_DS_MISSING_FSMO_SETTINGS = WIN32_ERROR(8434);

const ERROR_DS_UNABLE_TO_SURRENDER_ROLES = WIN32_ERROR(8435);

const ERROR_DS_DRA_GENERIC = WIN32_ERROR(8436);

const ERROR_DS_DRA_INVALID_PARAMETER = WIN32_ERROR(8437);

const ERROR_DS_DRA_BUSY = WIN32_ERROR(8438);

const ERROR_DS_DRA_BAD_DN = WIN32_ERROR(8439);

const ERROR_DS_DRA_BAD_NC = WIN32_ERROR(8440);

const ERROR_DS_DRA_DN_EXISTS = WIN32_ERROR(8441);

const ERROR_DS_DRA_INTERNAL_ERROR = WIN32_ERROR(8442);

const ERROR_DS_DRA_INCONSISTENT_DIT = WIN32_ERROR(8443);

const ERROR_DS_DRA_CONNECTION_FAILED = WIN32_ERROR(8444);

const ERROR_DS_DRA_BAD_INSTANCE_TYPE = WIN32_ERROR(8445);

const ERROR_DS_DRA_OUT_OF_MEM = WIN32_ERROR(8446);

const ERROR_DS_DRA_MAIL_PROBLEM = WIN32_ERROR(8447);

const ERROR_DS_DRA_REF_ALREADY_EXISTS = WIN32_ERROR(8448);

const ERROR_DS_DRA_REF_NOT_FOUND = WIN32_ERROR(8449);

const ERROR_DS_DRA_OBJ_IS_REP_SOURCE = WIN32_ERROR(8450);

const ERROR_DS_DRA_DB_ERROR = WIN32_ERROR(8451);

const ERROR_DS_DRA_NO_REPLICA = WIN32_ERROR(8452);

const ERROR_DS_DRA_ACCESS_DENIED = WIN32_ERROR(8453);

const ERROR_DS_DRA_NOT_SUPPORTED = WIN32_ERROR(8454);

const ERROR_DS_DRA_RPC_CANCELLED = WIN32_ERROR(8455);

const ERROR_DS_DRA_SOURCE_DISABLED = WIN32_ERROR(8456);

const ERROR_DS_DRA_SINK_DISABLED = WIN32_ERROR(8457);

const ERROR_DS_DRA_NAME_COLLISION = WIN32_ERROR(8458);

const ERROR_DS_DRA_SOURCE_REINSTALLED = WIN32_ERROR(8459);

const ERROR_DS_DRA_MISSING_PARENT = WIN32_ERROR(8460);

const ERROR_DS_DRA_PREEMPTED = WIN32_ERROR(8461);

const ERROR_DS_DRA_ABANDON_SYNC = WIN32_ERROR(8462);

const ERROR_DS_DRA_SHUTDOWN = WIN32_ERROR(8463);

const ERROR_DS_DRA_INCOMPATIBLE_PARTIAL_SET = WIN32_ERROR(8464);

const ERROR_DS_DRA_SOURCE_IS_PARTIAL_REPLICA = WIN32_ERROR(8465);

const ERROR_DS_DRA_EXTN_CONNECTION_FAILED = WIN32_ERROR(8466);

const ERROR_DS_INSTALL_SCHEMA_MISMATCH = WIN32_ERROR(8467);

const ERROR_DS_DUP_LINK_ID = WIN32_ERROR(8468);

const ERROR_DS_NAME_ERROR_RESOLVING = WIN32_ERROR(8469);

const ERROR_DS_NAME_ERROR_NOT_FOUND = WIN32_ERROR(8470);

const ERROR_DS_NAME_ERROR_NOT_UNIQUE = WIN32_ERROR(8471);

const ERROR_DS_NAME_ERROR_NO_MAPPING = WIN32_ERROR(8472);

const ERROR_DS_NAME_ERROR_DOMAIN_ONLY = WIN32_ERROR(8473);

const ERROR_DS_NAME_ERROR_NO_SYNTACTICAL_MAPPING = WIN32_ERROR(8474);

const ERROR_DS_CONSTRUCTED_ATT_MOD = WIN32_ERROR(8475);

const ERROR_DS_WRONG_OM_OBJ_CLASS = WIN32_ERROR(8476);

const ERROR_DS_DRA_REPL_PENDING = WIN32_ERROR(8477);

const ERROR_DS_DS_REQUIRED = WIN32_ERROR(8478);

const ERROR_DS_INVALID_LDAP_DISPLAY_NAME = WIN32_ERROR(8479);

const ERROR_DS_NON_BASE_SEARCH = WIN32_ERROR(8480);

const ERROR_DS_CANT_RETRIEVE_ATTS = WIN32_ERROR(8481);

const ERROR_DS_BACKLINK_WITHOUT_LINK = WIN32_ERROR(8482);

const ERROR_DS_EPOCH_MISMATCH = WIN32_ERROR(8483);

const ERROR_DS_SRC_NAME_MISMATCH = WIN32_ERROR(8484);

const ERROR_DS_SRC_AND_DST_NC_IDENTICAL = WIN32_ERROR(8485);

const ERROR_DS_DST_NC_MISMATCH = WIN32_ERROR(8486);

const ERROR_DS_NOT_AUTHORITIVE_FOR_DST_NC = WIN32_ERROR(8487);

const ERROR_DS_SRC_GUID_MISMATCH = WIN32_ERROR(8488);

const ERROR_DS_CANT_MOVE_DELETED_OBJECT = WIN32_ERROR(8489);

const ERROR_DS_PDC_OPERATION_IN_PROGRESS = WIN32_ERROR(8490);

const ERROR_DS_CROSS_DOMAIN_CLEANUP_REQD = WIN32_ERROR(8491);

const ERROR_DS_ILLEGAL_XDOM_MOVE_OPERATION = WIN32_ERROR(8492);

const ERROR_DS_CANT_WITH_ACCT_GROUP_MEMBERSHPS = WIN32_ERROR(8493);

const ERROR_DS_NC_MUST_HAVE_NC_PARENT = WIN32_ERROR(8494);

const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE = WIN32_ERROR(8495);

const ERROR_DS_DST_DOMAIN_NOT_NATIVE = WIN32_ERROR(8496);

const ERROR_DS_MISSING_INFRASTRUCTURE_CONTAINER = WIN32_ERROR(8497);

const ERROR_DS_CANT_MOVE_ACCOUNT_GROUP = WIN32_ERROR(8498);

const ERROR_DS_CANT_MOVE_RESOURCE_GROUP = WIN32_ERROR(8499);

const ERROR_DS_INVALID_SEARCH_FLAG = WIN32_ERROR(8500);

const ERROR_DS_NO_TREE_DELETE_ABOVE_NC = WIN32_ERROR(8501);

const ERROR_DS_COULDNT_LOCK_TREE_FOR_DELETE = WIN32_ERROR(8502);

const ERROR_DS_COULDNT_IDENTIFY_OBJECTS_FOR_TREE_DELETE = WIN32_ERROR(8503);

const ERROR_DS_SAM_INIT_FAILURE = WIN32_ERROR(8504);

const ERROR_DS_SENSITIVE_GROUP_VIOLATION = WIN32_ERROR(8505);

const ERROR_DS_CANT_MOD_PRIMARYGROUPID = WIN32_ERROR(8506);

const ERROR_DS_ILLEGAL_BASE_SCHEMA_MOD = WIN32_ERROR(8507);

const ERROR_DS_NONSAFE_SCHEMA_CHANGE = WIN32_ERROR(8508);

const ERROR_DS_SCHEMA_UPDATE_DISALLOWED = WIN32_ERROR(8509);

const ERROR_DS_CANT_CREATE_UNDER_SCHEMA = WIN32_ERROR(8510);

const ERROR_DS_INSTALL_NO_SRC_SCH_VERSION = WIN32_ERROR(8511);

const ERROR_DS_INSTALL_NO_SCH_VERSION_IN_INIFILE = WIN32_ERROR(8512);

const ERROR_DS_INVALID_GROUP_TYPE = WIN32_ERROR(8513);

const ERROR_DS_NO_NEST_GLOBALGROUP_IN_MIXEDDOMAIN = WIN32_ERROR(8514);

const ERROR_DS_NO_NEST_LOCALGROUP_IN_MIXEDDOMAIN = WIN32_ERROR(8515);

const ERROR_DS_GLOBAL_CANT_HAVE_LOCAL_MEMBER = WIN32_ERROR(8516);

const ERROR_DS_GLOBAL_CANT_HAVE_UNIVERSAL_MEMBER = WIN32_ERROR(8517);

const ERROR_DS_UNIVERSAL_CANT_HAVE_LOCAL_MEMBER = WIN32_ERROR(8518);

const ERROR_DS_GLOBAL_CANT_HAVE_CROSSDOMAIN_MEMBER = WIN32_ERROR(8519);

const ERROR_DS_LOCAL_CANT_HAVE_CROSSDOMAIN_LOCAL_MEMBER = WIN32_ERROR(8520);

const ERROR_DS_HAVE_PRIMARY_MEMBERS = WIN32_ERROR(8521);

const ERROR_DS_STRING_SD_CONVERSION_FAILED = WIN32_ERROR(8522);

const ERROR_DS_NAMING_MASTER_GC = WIN32_ERROR(8523);

const ERROR_DS_DNS_LOOKUP_FAILURE = WIN32_ERROR(8524);

const ERROR_DS_COULDNT_UPDATE_SPNS = WIN32_ERROR(8525);

const ERROR_DS_CANT_RETRIEVE_SD = WIN32_ERROR(8526);

const ERROR_DS_KEY_NOT_UNIQUE = WIN32_ERROR(8527);

const ERROR_DS_WRONG_LINKED_ATT_SYNTAX = WIN32_ERROR(8528);

const ERROR_DS_SAM_NEED_BOOTKEY_PASSWORD = WIN32_ERROR(8529);

const ERROR_DS_SAM_NEED_BOOTKEY_FLOPPY = WIN32_ERROR(8530);

const ERROR_DS_CANT_START = WIN32_ERROR(8531);

const ERROR_DS_INIT_FAILURE = WIN32_ERROR(8532);

const ERROR_DS_NO_PKT_PRIVACY_ON_CONNECTION = WIN32_ERROR(8533);

const ERROR_DS_SOURCE_DOMAIN_IN_FOREST = WIN32_ERROR(8534);

const ERROR_DS_DESTINATION_DOMAIN_NOT_IN_FOREST = WIN32_ERROR(8535);

const ERROR_DS_DESTINATION_AUDITING_NOT_ENABLED = WIN32_ERROR(8536);

const ERROR_DS_CANT_FIND_DC_FOR_SRC_DOMAIN = WIN32_ERROR(8537);

const ERROR_DS_SRC_OBJ_NOT_GROUP_OR_USER = WIN32_ERROR(8538);

const ERROR_DS_SRC_SID_EXISTS_IN_FOREST = WIN32_ERROR(8539);

const ERROR_DS_SRC_AND_DST_OBJECT_CLASS_MISMATCH = WIN32_ERROR(8540);

const ERROR_SAM_INIT_FAILURE = WIN32_ERROR(8541);

const ERROR_DS_DRA_SCHEMA_INFO_SHIP = WIN32_ERROR(8542);

const ERROR_DS_DRA_SCHEMA_CONFLICT = WIN32_ERROR(8543);

const ERROR_DS_DRA_EARLIER_SCHEMA_CONFLICT = WIN32_ERROR(8544);

const ERROR_DS_DRA_OBJ_NC_MISMATCH = WIN32_ERROR(8545);

const ERROR_DS_NC_STILL_HAS_DSAS = WIN32_ERROR(8546);

const ERROR_DS_GC_REQUIRED = WIN32_ERROR(8547);

const ERROR_DS_LOCAL_MEMBER_OF_LOCAL_ONLY = WIN32_ERROR(8548);

const ERROR_DS_NO_FPO_IN_UNIVERSAL_GROUPS = WIN32_ERROR(8549);

const ERROR_DS_CANT_ADD_TO_GC = WIN32_ERROR(8550);

const ERROR_DS_NO_CHECKPOINT_WITH_PDC = WIN32_ERROR(8551);

const ERROR_DS_SOURCE_AUDITING_NOT_ENABLED = WIN32_ERROR(8552);

const ERROR_DS_CANT_CREATE_IN_NONDOMAIN_NC = WIN32_ERROR(8553);

const ERROR_DS_INVALID_NAME_FOR_SPN = WIN32_ERROR(8554);

const ERROR_DS_FILTER_USES_CONTRUCTED_ATTRS = WIN32_ERROR(8555);

const ERROR_DS_UNICODEPWD_NOT_IN_QUOTES = WIN32_ERROR(8556);

const ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED = WIN32_ERROR(8557);

const ERROR_DS_MUST_BE_RUN_ON_DST_DC = WIN32_ERROR(8558);

const ERROR_DS_SRC_DC_MUST_BE_SP4_OR_GREATER = WIN32_ERROR(8559);

const ERROR_DS_CANT_TREE_DELETE_CRITICAL_OBJ = WIN32_ERROR(8560);

const ERROR_DS_INIT_FAILURE_CONSOLE = WIN32_ERROR(8561);

const ERROR_DS_SAM_INIT_FAILURE_CONSOLE = WIN32_ERROR(8562);

const ERROR_DS_FOREST_VERSION_TOO_HIGH = WIN32_ERROR(8563);

const ERROR_DS_DOMAIN_VERSION_TOO_HIGH = WIN32_ERROR(8564);

const ERROR_DS_FOREST_VERSION_TOO_LOW = WIN32_ERROR(8565);

const ERROR_DS_DOMAIN_VERSION_TOO_LOW = WIN32_ERROR(8566);

const ERROR_DS_INCOMPATIBLE_VERSION = WIN32_ERROR(8567);

const ERROR_DS_LOW_DSA_VERSION = WIN32_ERROR(8568);

const ERROR_DS_NO_BEHAVIOR_VERSION_IN_MIXEDDOMAIN = WIN32_ERROR(8569);

const ERROR_DS_NOT_SUPPORTED_SORT_ORDER = WIN32_ERROR(8570);

const ERROR_DS_NAME_NOT_UNIQUE = WIN32_ERROR(8571);

const ERROR_DS_MACHINE_ACCOUNT_CREATED_PRENT4 = WIN32_ERROR(8572);

const ERROR_DS_OUT_OF_VERSION_STORE = WIN32_ERROR(8573);

const ERROR_DS_INCOMPATIBLE_CONTROLS_USED = WIN32_ERROR(8574);

const ERROR_DS_NO_REF_DOMAIN = WIN32_ERROR(8575);

const ERROR_DS_RESERVED_LINK_ID = WIN32_ERROR(8576);

const ERROR_DS_LINK_ID_NOT_AVAILABLE = WIN32_ERROR(8577);

const ERROR_DS_AG_CANT_HAVE_UNIVERSAL_MEMBER = WIN32_ERROR(8578);

const ERROR_DS_MODIFYDN_DISALLOWED_BY_INSTANCE_TYPE = WIN32_ERROR(8579);

const ERROR_DS_NO_OBJECT_MOVE_IN_SCHEMA_NC = WIN32_ERROR(8580);

const ERROR_DS_MODIFYDN_DISALLOWED_BY_FLAG = WIN32_ERROR(8581);

const ERROR_DS_MODIFYDN_WRONG_GRANDPARENT = WIN32_ERROR(8582);

const ERROR_DS_NAME_ERROR_TRUST_REFERRAL = WIN32_ERROR(8583);

const ERROR_NOT_SUPPORTED_ON_STANDARD_SERVER = WIN32_ERROR(8584);

const ERROR_DS_CANT_ACCESS_REMOTE_PART_OF_AD = WIN32_ERROR(8585);

const ERROR_DS_CR_IMPOSSIBLE_TO_VALIDATE_V2 = WIN32_ERROR(8586);

const ERROR_DS_THREAD_LIMIT_EXCEEDED = WIN32_ERROR(8587);

const ERROR_DS_NOT_CLOSEST = WIN32_ERROR(8588);

const ERROR_DS_CANT_DERIVE_SPN_WITHOUT_SERVER_REF = WIN32_ERROR(8589);

const ERROR_DS_SINGLE_USER_MODE_FAILED = WIN32_ERROR(8590);

const ERROR_DS_NTDSCRIPT_SYNTAX_ERROR = WIN32_ERROR(8591);

const ERROR_DS_NTDSCRIPT_PROCESS_ERROR = WIN32_ERROR(8592);

const ERROR_DS_DIFFERENT_REPL_EPOCHS = WIN32_ERROR(8593);

const ERROR_DS_DRS_EXTENSIONS_CHANGED = WIN32_ERROR(8594);

const ERROR_DS_REPLICA_SET_CHANGE_NOT_ALLOWED_ON_DISABLED_CR = WIN32_ERROR(
  8595,
);

const ERROR_DS_NO_MSDS_INTID = WIN32_ERROR(8596);

const ERROR_DS_DUP_MSDS_INTID = WIN32_ERROR(8597);

const ERROR_DS_EXISTS_IN_RDNATTID = WIN32_ERROR(8598);

const ERROR_DS_AUTHORIZATION_FAILED = WIN32_ERROR(8599);

const ERROR_DS_INVALID_SCRIPT = WIN32_ERROR(8600);

const ERROR_DS_REMOTE_CROSSREF_OP_FAILED = WIN32_ERROR(8601);

const ERROR_DS_CROSS_REF_BUSY = WIN32_ERROR(8602);

const ERROR_DS_CANT_DERIVE_SPN_FOR_DELETED_DOMAIN = WIN32_ERROR(8603);

const ERROR_DS_CANT_DEMOTE_WITH_WRITEABLE_NC = WIN32_ERROR(8604);

const ERROR_DS_DUPLICATE_ID_FOUND = WIN32_ERROR(8605);

const ERROR_DS_INSUFFICIENT_ATTR_TO_CREATE_OBJECT = WIN32_ERROR(8606);

const ERROR_DS_GROUP_CONVERSION_ERROR = WIN32_ERROR(8607);

const ERROR_DS_CANT_MOVE_APP_BASIC_GROUP = WIN32_ERROR(8608);

const ERROR_DS_CANT_MOVE_APP_QUERY_GROUP = WIN32_ERROR(8609);

const ERROR_DS_ROLE_NOT_VERIFIED = WIN32_ERROR(8610);

const ERROR_DS_WKO_CONTAINER_CANNOT_BE_SPECIAL = WIN32_ERROR(8611);

const ERROR_DS_DOMAIN_RENAME_IN_PROGRESS = WIN32_ERROR(8612);

const ERROR_DS_EXISTING_AD_CHILD_NC = WIN32_ERROR(8613);

const ERROR_DS_REPL_LIFETIME_EXCEEDED = WIN32_ERROR(8614);

const ERROR_DS_DISALLOWED_IN_SYSTEM_CONTAINER = WIN32_ERROR(8615);

const ERROR_DS_LDAP_SEND_QUEUE_FULL = WIN32_ERROR(8616);

const ERROR_DS_DRA_OUT_SCHEDULE_WINDOW = WIN32_ERROR(8617);

const ERROR_DS_POLICY_NOT_KNOWN = WIN32_ERROR(8618);

const ERROR_NO_SITE_SETTINGS_OBJECT = WIN32_ERROR(8619);

const ERROR_NO_SECRETS = WIN32_ERROR(8620);

const ERROR_NO_WRITABLE_DC_FOUND = WIN32_ERROR(8621);

const ERROR_DS_NO_SERVER_OBJECT = WIN32_ERROR(8622);

const ERROR_DS_NO_NTDSA_OBJECT = WIN32_ERROR(8623);

const ERROR_DS_NON_ASQ_SEARCH = WIN32_ERROR(8624);

const ERROR_DS_AUDIT_FAILURE = WIN32_ERROR(8625);

const ERROR_DS_INVALID_SEARCH_FLAG_SUBTREE = WIN32_ERROR(8626);

const ERROR_DS_INVALID_SEARCH_FLAG_TUPLE = WIN32_ERROR(8627);

const ERROR_DS_HIERARCHY_TABLE_TOO_DEEP = WIN32_ERROR(8628);

const ERROR_DS_DRA_CORRUPT_UTD_VECTOR = WIN32_ERROR(8629);

const ERROR_DS_DRA_SECRETS_DENIED = WIN32_ERROR(8630);

const ERROR_DS_RESERVED_MAPI_ID = WIN32_ERROR(8631);

const ERROR_DS_MAPI_ID_NOT_AVAILABLE = WIN32_ERROR(8632);

const ERROR_DS_DRA_MISSING_KRBTGT_SECRET = WIN32_ERROR(8633);

const ERROR_DS_DOMAIN_NAME_EXISTS_IN_FOREST = WIN32_ERROR(8634);

const ERROR_DS_FLAT_NAME_EXISTS_IN_FOREST = WIN32_ERROR(8635);

const ERROR_INVALID_USER_PRINCIPAL_NAME = WIN32_ERROR(8636);

const ERROR_DS_OID_MAPPED_GROUP_CANT_HAVE_MEMBERS = WIN32_ERROR(8637);

const ERROR_DS_OID_NOT_FOUND = WIN32_ERROR(8638);

const ERROR_DS_DRA_RECYCLED_TARGET = WIN32_ERROR(8639);

const ERROR_DS_DISALLOWED_NC_REDIRECT = WIN32_ERROR(8640);

const ERROR_DS_HIGH_ADLDS_FFL = WIN32_ERROR(8641);

const ERROR_DS_HIGH_DSA_VERSION = WIN32_ERROR(8642);

const ERROR_DS_LOW_ADLDS_FFL = WIN32_ERROR(8643);

const ERROR_DOMAIN_SID_SAME_AS_LOCAL_WORKSTATION = WIN32_ERROR(8644);

const ERROR_DS_UNDELETE_SAM_VALIDATION_FAILED = WIN32_ERROR(8645);

const ERROR_INCORRECT_ACCOUNT_TYPE = WIN32_ERROR(8646);

const ERROR_DS_SPN_VALUE_NOT_UNIQUE_IN_FOREST = WIN32_ERROR(8647);

const ERROR_DS_UPN_VALUE_NOT_UNIQUE_IN_FOREST = WIN32_ERROR(8648);

const ERROR_DS_MISSING_FOREST_TRUST = WIN32_ERROR(8649);

const ERROR_DS_VALUE_KEY_NOT_UNIQUE = WIN32_ERROR(8650);

const ERROR_WEAK_WHFBKEY_BLOCKED = WIN32_ERROR(8651);

const ERROR_DS_PER_ATTRIBUTE_AUTHZ_FAILED_DURING_ADD = WIN32_ERROR(8652);

const ERROR_LOCAL_POLICY_MODIFICATION_NOT_SUPPORTED = WIN32_ERROR(8653);

const ERROR_POLICY_CONTROLLED_ACCOUNT = WIN32_ERROR(8654);

const ERROR_LAPS_LEGACY_SCHEMA_MISSING = WIN32_ERROR(8655);

const ERROR_LAPS_SCHEMA_MISSING = WIN32_ERROR(8656);

const ERROR_LAPS_ENCRYPTION_REQUIRES_2016_DFL = WIN32_ERROR(8657);

const ERROR_LAPS_PROCESS_TERMINATED = WIN32_ERROR(8658);

const ERROR_DS_JET_RECORD_TOO_BIG = WIN32_ERROR(8659);

const ERROR_DS_REPLICA_PAGE_SIZE_MISMATCH = WIN32_ERROR(8660);

const DNS_ERROR_RESPONSE_CODES_BASE = WIN32_ERROR(9000);

const DNS_ERROR_RCODE_NO_ERROR = WIN32_ERROR(0);

const DNS_ERROR_MASK = WIN32_ERROR(9000);

const DNS_ERROR_RCODE_FORMAT_ERROR = WIN32_ERROR(9001);

const DNS_ERROR_RCODE_SERVER_FAILURE = WIN32_ERROR(9002);

const DNS_ERROR_RCODE_NAME_ERROR = WIN32_ERROR(9003);

const DNS_ERROR_RCODE_NOT_IMPLEMENTED = WIN32_ERROR(9004);

const DNS_ERROR_RCODE_REFUSED = WIN32_ERROR(9005);

const DNS_ERROR_RCODE_YXDOMAIN = WIN32_ERROR(9006);

const DNS_ERROR_RCODE_YXRRSET = WIN32_ERROR(9007);

const DNS_ERROR_RCODE_NXRRSET = WIN32_ERROR(9008);

const DNS_ERROR_RCODE_NOTAUTH = WIN32_ERROR(9009);

const DNS_ERROR_RCODE_NOTZONE = WIN32_ERROR(9010);

const DNS_ERROR_RCODE_BADSIG = WIN32_ERROR(9016);

const DNS_ERROR_RCODE_BADKEY = WIN32_ERROR(9017);

const DNS_ERROR_RCODE_BADTIME = WIN32_ERROR(9018);

const DNS_ERROR_RCODE_LAST = WIN32_ERROR(9018);

const DNS_ERROR_DNSSEC_BASE = WIN32_ERROR(9100);

const DNS_ERROR_KEYMASTER_REQUIRED = WIN32_ERROR(9101);

const DNS_ERROR_NOT_ALLOWED_ON_SIGNED_ZONE = WIN32_ERROR(9102);

const DNS_ERROR_NSEC3_INCOMPATIBLE_WITH_RSA_SHA1 = WIN32_ERROR(9103);

const DNS_ERROR_NOT_ENOUGH_SIGNING_KEY_DESCRIPTORS = WIN32_ERROR(9104);

const DNS_ERROR_UNSUPPORTED_ALGORITHM = WIN32_ERROR(9105);

const DNS_ERROR_INVALID_KEY_SIZE = WIN32_ERROR(9106);

const DNS_ERROR_SIGNING_KEY_NOT_ACCESSIBLE = WIN32_ERROR(9107);

const DNS_ERROR_KSP_DOES_NOT_SUPPORT_PROTECTION = WIN32_ERROR(9108);

const DNS_ERROR_UNEXPECTED_DATA_PROTECTION_ERROR = WIN32_ERROR(9109);

const DNS_ERROR_UNEXPECTED_CNG_ERROR = WIN32_ERROR(9110);

const DNS_ERROR_UNKNOWN_SIGNING_PARAMETER_VERSION = WIN32_ERROR(9111);

const DNS_ERROR_KSP_NOT_ACCESSIBLE = WIN32_ERROR(9112);

const DNS_ERROR_TOO_MANY_SKDS = WIN32_ERROR(9113);

const DNS_ERROR_INVALID_ROLLOVER_PERIOD = WIN32_ERROR(9114);

const DNS_ERROR_INVALID_INITIAL_ROLLOVER_OFFSET = WIN32_ERROR(9115);

const DNS_ERROR_ROLLOVER_IN_PROGRESS = WIN32_ERROR(9116);

const DNS_ERROR_STANDBY_KEY_NOT_PRESENT = WIN32_ERROR(9117);

const DNS_ERROR_NOT_ALLOWED_ON_ZSK = WIN32_ERROR(9118);

const DNS_ERROR_NOT_ALLOWED_ON_ACTIVE_SKD = WIN32_ERROR(9119);

const DNS_ERROR_ROLLOVER_ALREADY_QUEUED = WIN32_ERROR(9120);

const DNS_ERROR_NOT_ALLOWED_ON_UNSIGNED_ZONE = WIN32_ERROR(9121);

const DNS_ERROR_BAD_KEYMASTER = WIN32_ERROR(9122);

const DNS_ERROR_INVALID_SIGNATURE_VALIDITY_PERIOD = WIN32_ERROR(9123);

const DNS_ERROR_INVALID_NSEC3_ITERATION_COUNT = WIN32_ERROR(9124);

const DNS_ERROR_DNSSEC_IS_DISABLED = WIN32_ERROR(9125);

const DNS_ERROR_INVALID_XML = WIN32_ERROR(9126);

const DNS_ERROR_NO_VALID_TRUST_ANCHORS = WIN32_ERROR(9127);

const DNS_ERROR_ROLLOVER_NOT_POKEABLE = WIN32_ERROR(9128);

const DNS_ERROR_NSEC3_NAME_COLLISION = WIN32_ERROR(9129);

const DNS_ERROR_NSEC_INCOMPATIBLE_WITH_NSEC3_RSA_SHA1 = WIN32_ERROR(9130);

const DNS_ERROR_PACKET_FMT_BASE = WIN32_ERROR(9500);

const DNS_ERROR_BAD_PACKET = WIN32_ERROR(9502);

const DNS_ERROR_NO_PACKET = WIN32_ERROR(9503);

const DNS_ERROR_RCODE = WIN32_ERROR(9504);

const DNS_ERROR_UNSECURE_PACKET = WIN32_ERROR(9505);

const DNS_ERROR_NO_MEMORY = WIN32_ERROR(14);

const DNS_ERROR_INVALID_NAME = WIN32_ERROR(123);

const DNS_ERROR_INVALID_DATA = WIN32_ERROR(13);

const DNS_ERROR_GENERAL_API_BASE = WIN32_ERROR(9550);

const DNS_ERROR_INVALID_TYPE = WIN32_ERROR(9551);

const DNS_ERROR_INVALID_IP_ADDRESS = WIN32_ERROR(9552);

const DNS_ERROR_INVALID_PROPERTY = WIN32_ERROR(9553);

const DNS_ERROR_TRY_AGAIN_LATER = WIN32_ERROR(9554);

const DNS_ERROR_NOT_UNIQUE = WIN32_ERROR(9555);

const DNS_ERROR_NON_RFC_NAME = WIN32_ERROR(9556);

const DNS_ERROR_INVALID_NAME_CHAR = WIN32_ERROR(9560);

const DNS_ERROR_NUMERIC_NAME = WIN32_ERROR(9561);

const DNS_ERROR_NOT_ALLOWED_ON_ROOT_SERVER = WIN32_ERROR(9562);

const DNS_ERROR_NOT_ALLOWED_UNDER_DELEGATION = WIN32_ERROR(9563);

const DNS_ERROR_CANNOT_FIND_ROOT_HINTS = WIN32_ERROR(9564);

const DNS_ERROR_INCONSISTENT_ROOT_HINTS = WIN32_ERROR(9565);

const DNS_ERROR_DWORD_VALUE_TOO_SMALL = WIN32_ERROR(9566);

const DNS_ERROR_DWORD_VALUE_TOO_LARGE = WIN32_ERROR(9567);

const DNS_ERROR_BACKGROUND_LOADING = WIN32_ERROR(9568);

const DNS_ERROR_NOT_ALLOWED_ON_RODC = WIN32_ERROR(9569);

const DNS_ERROR_NOT_ALLOWED_UNDER_DNAME = WIN32_ERROR(9570);

const DNS_ERROR_DELEGATION_REQUIRED = WIN32_ERROR(9571);

const DNS_ERROR_INVALID_POLICY_TABLE = WIN32_ERROR(9572);

const DNS_ERROR_ADDRESS_REQUIRED = WIN32_ERROR(9573);

const DNS_ERROR_ZONE_BASE = WIN32_ERROR(9600);

const DNS_ERROR_ZONE_DOES_NOT_EXIST = WIN32_ERROR(9601);

const DNS_ERROR_NO_ZONE_INFO = WIN32_ERROR(9602);

const DNS_ERROR_INVALID_ZONE_OPERATION = WIN32_ERROR(9603);

const DNS_ERROR_ZONE_CONFIGURATION_ERROR = WIN32_ERROR(9604);

const DNS_ERROR_ZONE_HAS_NO_SOA_RECORD = WIN32_ERROR(9605);

const DNS_ERROR_ZONE_HAS_NO_NS_RECORDS = WIN32_ERROR(9606);

const DNS_ERROR_ZONE_LOCKED = WIN32_ERROR(9607);

const DNS_ERROR_ZONE_CREATION_FAILED = WIN32_ERROR(9608);

const DNS_ERROR_ZONE_ALREADY_EXISTS = WIN32_ERROR(9609);

const DNS_ERROR_AUTOZONE_ALREADY_EXISTS = WIN32_ERROR(9610);

const DNS_ERROR_INVALID_ZONE_TYPE = WIN32_ERROR(9611);

const DNS_ERROR_SECONDARY_REQUIRES_MASTER_IP = WIN32_ERROR(9612);

const DNS_ERROR_ZONE_NOT_SECONDARY = WIN32_ERROR(9613);

const DNS_ERROR_NEED_SECONDARY_ADDRESSES = WIN32_ERROR(9614);

const DNS_ERROR_WINS_INIT_FAILED = WIN32_ERROR(9615);

const DNS_ERROR_NEED_WINS_SERVERS = WIN32_ERROR(9616);

const DNS_ERROR_NBSTAT_INIT_FAILED = WIN32_ERROR(9617);

const DNS_ERROR_SOA_DELETE_INVALID = WIN32_ERROR(9618);

const DNS_ERROR_FORWARDER_ALREADY_EXISTS = WIN32_ERROR(9619);

const DNS_ERROR_ZONE_REQUIRES_MASTER_IP = WIN32_ERROR(9620);

const DNS_ERROR_ZONE_IS_SHUTDOWN = WIN32_ERROR(9621);

const DNS_ERROR_ZONE_LOCKED_FOR_SIGNING = WIN32_ERROR(9622);

const DNS_ERROR_DATAFILE_BASE = WIN32_ERROR(9650);

const DNS_ERROR_PRIMARY_REQUIRES_DATAFILE = WIN32_ERROR(9651);

const DNS_ERROR_INVALID_DATAFILE_NAME = WIN32_ERROR(9652);

const DNS_ERROR_DATAFILE_OPEN_FAILURE = WIN32_ERROR(9653);

const DNS_ERROR_FILE_WRITEBACK_FAILED = WIN32_ERROR(9654);

const DNS_ERROR_DATAFILE_PARSING = WIN32_ERROR(9655);

const DNS_ERROR_DATABASE_BASE = WIN32_ERROR(9700);

const DNS_ERROR_RECORD_DOES_NOT_EXIST = WIN32_ERROR(9701);

const DNS_ERROR_RECORD_FORMAT = WIN32_ERROR(9702);

const DNS_ERROR_NODE_CREATION_FAILED = WIN32_ERROR(9703);

const DNS_ERROR_UNKNOWN_RECORD_TYPE = WIN32_ERROR(9704);

const DNS_ERROR_RECORD_TIMED_OUT = WIN32_ERROR(9705);

const DNS_ERROR_NAME_NOT_IN_ZONE = WIN32_ERROR(9706);

const DNS_ERROR_CNAME_LOOP = WIN32_ERROR(9707);

const DNS_ERROR_NODE_IS_CNAME = WIN32_ERROR(9708);

const DNS_ERROR_CNAME_COLLISION = WIN32_ERROR(9709);

const DNS_ERROR_RECORD_ONLY_AT_ZONE_ROOT = WIN32_ERROR(9710);

const DNS_ERROR_RECORD_ALREADY_EXISTS = WIN32_ERROR(9711);

const DNS_ERROR_SECONDARY_DATA = WIN32_ERROR(9712);

const DNS_ERROR_NO_CREATE_CACHE_DATA = WIN32_ERROR(9713);

const DNS_ERROR_NAME_DOES_NOT_EXIST = WIN32_ERROR(9714);

const DNS_ERROR_DS_UNAVAILABLE = WIN32_ERROR(9717);

const DNS_ERROR_DS_ZONE_ALREADY_EXISTS = WIN32_ERROR(9718);

const DNS_ERROR_NO_BOOTFILE_IF_DS_ZONE = WIN32_ERROR(9719);

const DNS_ERROR_NODE_IS_DNAME = WIN32_ERROR(9720);

const DNS_ERROR_DNAME_COLLISION = WIN32_ERROR(9721);

const DNS_ERROR_ALIAS_LOOP = WIN32_ERROR(9722);

const DNS_ERROR_OPERATION_BASE = WIN32_ERROR(9750);

const DNS_ERROR_AXFR = WIN32_ERROR(9752);

const DNS_ERROR_SECURE_BASE = WIN32_ERROR(9800);

const DNS_ERROR_SETUP_BASE = WIN32_ERROR(9850);

const DNS_ERROR_NO_TCPIP = WIN32_ERROR(9851);

const DNS_ERROR_NO_DNS_SERVERS = WIN32_ERROR(9852);

const DNS_ERROR_DP_BASE = WIN32_ERROR(9900);

const DNS_ERROR_DP_DOES_NOT_EXIST = WIN32_ERROR(9901);

const DNS_ERROR_DP_ALREADY_EXISTS = WIN32_ERROR(9902);

const DNS_ERROR_DP_NOT_ENLISTED = WIN32_ERROR(9903);

const DNS_ERROR_DP_ALREADY_ENLISTED = WIN32_ERROR(9904);

const DNS_ERROR_DP_NOT_AVAILABLE = WIN32_ERROR(9905);

const DNS_ERROR_DP_FSMO_ERROR = WIN32_ERROR(9906);

const DNS_ERROR_RRL_NOT_ENABLED = WIN32_ERROR(9911);

const DNS_ERROR_RRL_INVALID_WINDOW_SIZE = WIN32_ERROR(9912);

const DNS_ERROR_RRL_INVALID_IPV4_PREFIX = WIN32_ERROR(9913);

const DNS_ERROR_RRL_INVALID_IPV6_PREFIX = WIN32_ERROR(9914);

const DNS_ERROR_RRL_INVALID_TC_RATE = WIN32_ERROR(9915);

const DNS_ERROR_RRL_INVALID_LEAK_RATE = WIN32_ERROR(9916);

const DNS_ERROR_RRL_LEAK_RATE_LESSTHAN_TC_RATE = WIN32_ERROR(9917);

const DNS_ERROR_VIRTUALIZATION_INSTANCE_ALREADY_EXISTS = WIN32_ERROR(9921);

const DNS_ERROR_VIRTUALIZATION_INSTANCE_DOES_NOT_EXIST = WIN32_ERROR(9922);

const DNS_ERROR_VIRTUALIZATION_TREE_LOCKED = WIN32_ERROR(9923);

const DNS_ERROR_INVAILD_VIRTUALIZATION_INSTANCE_NAME = WIN32_ERROR(9924);

const DNS_ERROR_DEFAULT_VIRTUALIZATION_INSTANCE = WIN32_ERROR(9925);

const DNS_ERROR_ZONESCOPE_ALREADY_EXISTS = WIN32_ERROR(9951);

const DNS_ERROR_ZONESCOPE_DOES_NOT_EXIST = WIN32_ERROR(9952);

const DNS_ERROR_DEFAULT_ZONESCOPE = WIN32_ERROR(9953);

const DNS_ERROR_INVALID_ZONESCOPE_NAME = WIN32_ERROR(9954);

const DNS_ERROR_NOT_ALLOWED_WITH_ZONESCOPES = WIN32_ERROR(9955);

const DNS_ERROR_LOAD_ZONESCOPE_FAILED = WIN32_ERROR(9956);

const DNS_ERROR_ZONESCOPE_FILE_WRITEBACK_FAILED = WIN32_ERROR(9957);

const DNS_ERROR_INVALID_SCOPE_NAME = WIN32_ERROR(9958);

const DNS_ERROR_SCOPE_DOES_NOT_EXIST = WIN32_ERROR(9959);

const DNS_ERROR_DEFAULT_SCOPE = WIN32_ERROR(9960);

const DNS_ERROR_INVALID_SCOPE_OPERATION = WIN32_ERROR(9961);

const DNS_ERROR_SCOPE_LOCKED = WIN32_ERROR(9962);

const DNS_ERROR_SCOPE_ALREADY_EXISTS = WIN32_ERROR(9963);

const DNS_ERROR_POLICY_ALREADY_EXISTS = WIN32_ERROR(9971);

const DNS_ERROR_POLICY_DOES_NOT_EXIST = WIN32_ERROR(9972);

const DNS_ERROR_POLICY_INVALID_CRITERIA = WIN32_ERROR(9973);

const DNS_ERROR_POLICY_INVALID_SETTINGS = WIN32_ERROR(9974);

const DNS_ERROR_CLIENT_SUBNET_IS_ACCESSED = WIN32_ERROR(9975);

const DNS_ERROR_CLIENT_SUBNET_DOES_NOT_EXIST = WIN32_ERROR(9976);

const DNS_ERROR_CLIENT_SUBNET_ALREADY_EXISTS = WIN32_ERROR(9977);

const DNS_ERROR_SUBNET_DOES_NOT_EXIST = WIN32_ERROR(9978);

const DNS_ERROR_SUBNET_ALREADY_EXISTS = WIN32_ERROR(9979);

const DNS_ERROR_POLICY_LOCKED = WIN32_ERROR(9980);

const DNS_ERROR_POLICY_INVALID_WEIGHT = WIN32_ERROR(9981);

const DNS_ERROR_POLICY_INVALID_NAME = WIN32_ERROR(9982);

const DNS_ERROR_POLICY_MISSING_CRITERIA = WIN32_ERROR(9983);

const DNS_ERROR_INVALID_CLIENT_SUBNET_NAME = WIN32_ERROR(9984);

const DNS_ERROR_POLICY_PROCESSING_ORDER_INVALID = WIN32_ERROR(9985);

const DNS_ERROR_POLICY_SCOPE_MISSING = WIN32_ERROR(9986);

const DNS_ERROR_POLICY_SCOPE_NOT_ALLOWED = WIN32_ERROR(9987);

const DNS_ERROR_SERVERSCOPE_IS_REFERENCED = WIN32_ERROR(9988);

const DNS_ERROR_ZONESCOPE_IS_REFERENCED = WIN32_ERROR(9989);

const DNS_ERROR_POLICY_INVALID_CRITERIA_CLIENT_SUBNET = WIN32_ERROR(9990);

const DNS_ERROR_POLICY_INVALID_CRITERIA_TRANSPORT_PROTOCOL = WIN32_ERROR(9991);

const DNS_ERROR_POLICY_INVALID_CRITERIA_NETWORK_PROTOCOL = WIN32_ERROR(9992);

const DNS_ERROR_POLICY_INVALID_CRITERIA_INTERFACE = WIN32_ERROR(9993);

const DNS_ERROR_POLICY_INVALID_CRITERIA_FQDN = WIN32_ERROR(9994);

const DNS_ERROR_POLICY_INVALID_CRITERIA_QUERY_TYPE = WIN32_ERROR(9995);

const DNS_ERROR_POLICY_INVALID_CRITERIA_TIME_OF_DAY = WIN32_ERROR(9996);

const ERROR_IPSEC_QM_POLICY_EXISTS = WIN32_ERROR(13000);

const ERROR_IPSEC_QM_POLICY_NOT_FOUND = WIN32_ERROR(13001);

const ERROR_IPSEC_QM_POLICY_IN_USE = WIN32_ERROR(13002);

const ERROR_IPSEC_MM_POLICY_EXISTS = WIN32_ERROR(13003);

const ERROR_IPSEC_MM_POLICY_NOT_FOUND = WIN32_ERROR(13004);

const ERROR_IPSEC_MM_POLICY_IN_USE = WIN32_ERROR(13005);

const ERROR_IPSEC_MM_FILTER_EXISTS = WIN32_ERROR(13006);

const ERROR_IPSEC_MM_FILTER_NOT_FOUND = WIN32_ERROR(13007);

const ERROR_IPSEC_TRANSPORT_FILTER_EXISTS = WIN32_ERROR(13008);

const ERROR_IPSEC_TRANSPORT_FILTER_NOT_FOUND = WIN32_ERROR(13009);

const ERROR_IPSEC_MM_AUTH_EXISTS = WIN32_ERROR(13010);

const ERROR_IPSEC_MM_AUTH_NOT_FOUND = WIN32_ERROR(13011);

const ERROR_IPSEC_MM_AUTH_IN_USE = WIN32_ERROR(13012);

const ERROR_IPSEC_DEFAULT_MM_POLICY_NOT_FOUND = WIN32_ERROR(13013);

const ERROR_IPSEC_DEFAULT_MM_AUTH_NOT_FOUND = WIN32_ERROR(13014);

const ERROR_IPSEC_DEFAULT_QM_POLICY_NOT_FOUND = WIN32_ERROR(13015);

const ERROR_IPSEC_TUNNEL_FILTER_EXISTS = WIN32_ERROR(13016);

const ERROR_IPSEC_TUNNEL_FILTER_NOT_FOUND = WIN32_ERROR(13017);

const ERROR_IPSEC_MM_FILTER_PENDING_DELETION = WIN32_ERROR(13018);

const ERROR_IPSEC_TRANSPORT_FILTER_PENDING_DELETION = WIN32_ERROR(13019);

const ERROR_IPSEC_TUNNEL_FILTER_PENDING_DELETION = WIN32_ERROR(13020);

const ERROR_IPSEC_MM_POLICY_PENDING_DELETION = WIN32_ERROR(13021);

const ERROR_IPSEC_MM_AUTH_PENDING_DELETION = WIN32_ERROR(13022);

const ERROR_IPSEC_QM_POLICY_PENDING_DELETION = WIN32_ERROR(13023);

const ERROR_IPSEC_IKE_NEG_STATUS_BEGIN = WIN32_ERROR(13800);

const ERROR_IPSEC_IKE_AUTH_FAIL = WIN32_ERROR(13801);

const ERROR_IPSEC_IKE_ATTRIB_FAIL = WIN32_ERROR(13802);

const ERROR_IPSEC_IKE_NEGOTIATION_PENDING = WIN32_ERROR(13803);

const ERROR_IPSEC_IKE_GENERAL_PROCESSING_ERROR = WIN32_ERROR(13804);

const ERROR_IPSEC_IKE_TIMED_OUT = WIN32_ERROR(13805);

const ERROR_IPSEC_IKE_NO_CERT = WIN32_ERROR(13806);

const ERROR_IPSEC_IKE_SA_DELETED = WIN32_ERROR(13807);

const ERROR_IPSEC_IKE_SA_REAPED = WIN32_ERROR(13808);

const ERROR_IPSEC_IKE_MM_ACQUIRE_DROP = WIN32_ERROR(13809);

const ERROR_IPSEC_IKE_QM_ACQUIRE_DROP = WIN32_ERROR(13810);

const ERROR_IPSEC_IKE_QUEUE_DROP_MM = WIN32_ERROR(13811);

const ERROR_IPSEC_IKE_QUEUE_DROP_NO_MM = WIN32_ERROR(13812);

const ERROR_IPSEC_IKE_DROP_NO_RESPONSE = WIN32_ERROR(13813);

const ERROR_IPSEC_IKE_MM_DELAY_DROP = WIN32_ERROR(13814);

const ERROR_IPSEC_IKE_QM_DELAY_DROP = WIN32_ERROR(13815);

const ERROR_IPSEC_IKE_ERROR = WIN32_ERROR(13816);

const ERROR_IPSEC_IKE_CRL_FAILED = WIN32_ERROR(13817);

const ERROR_IPSEC_IKE_INVALID_KEY_USAGE = WIN32_ERROR(13818);

const ERROR_IPSEC_IKE_INVALID_CERT_TYPE = WIN32_ERROR(13819);

const ERROR_IPSEC_IKE_NO_PRIVATE_KEY = WIN32_ERROR(13820);

const ERROR_IPSEC_IKE_SIMULTANEOUS_REKEY = WIN32_ERROR(13821);

const ERROR_IPSEC_IKE_DH_FAIL = WIN32_ERROR(13822);

const ERROR_IPSEC_IKE_CRITICAL_PAYLOAD_NOT_RECOGNIZED = WIN32_ERROR(13823);

const ERROR_IPSEC_IKE_INVALID_HEADER = WIN32_ERROR(13824);

const ERROR_IPSEC_IKE_NO_POLICY = WIN32_ERROR(13825);

const ERROR_IPSEC_IKE_INVALID_SIGNATURE = WIN32_ERROR(13826);

const ERROR_IPSEC_IKE_KERBEROS_ERROR = WIN32_ERROR(13827);

const ERROR_IPSEC_IKE_NO_PUBLIC_KEY = WIN32_ERROR(13828);

const ERROR_IPSEC_IKE_PROCESS_ERR = WIN32_ERROR(13829);

const ERROR_IPSEC_IKE_PROCESS_ERR_SA = WIN32_ERROR(13830);

const ERROR_IPSEC_IKE_PROCESS_ERR_PROP = WIN32_ERROR(13831);

const ERROR_IPSEC_IKE_PROCESS_ERR_TRANS = WIN32_ERROR(13832);

const ERROR_IPSEC_IKE_PROCESS_ERR_KE = WIN32_ERROR(13833);

const ERROR_IPSEC_IKE_PROCESS_ERR_ID = WIN32_ERROR(13834);

const ERROR_IPSEC_IKE_PROCESS_ERR_CERT = WIN32_ERROR(13835);

const ERROR_IPSEC_IKE_PROCESS_ERR_CERT_REQ = WIN32_ERROR(13836);

const ERROR_IPSEC_IKE_PROCESS_ERR_HASH = WIN32_ERROR(13837);

const ERROR_IPSEC_IKE_PROCESS_ERR_SIG = WIN32_ERROR(13838);

const ERROR_IPSEC_IKE_PROCESS_ERR_NONCE = WIN32_ERROR(13839);

const ERROR_IPSEC_IKE_PROCESS_ERR_NOTIFY = WIN32_ERROR(13840);

const ERROR_IPSEC_IKE_PROCESS_ERR_DELETE = WIN32_ERROR(13841);

const ERROR_IPSEC_IKE_PROCESS_ERR_VENDOR = WIN32_ERROR(13842);

const ERROR_IPSEC_IKE_INVALID_PAYLOAD = WIN32_ERROR(13843);

const ERROR_IPSEC_IKE_LOAD_SOFT_SA = WIN32_ERROR(13844);

const ERROR_IPSEC_IKE_SOFT_SA_TORN_DOWN = WIN32_ERROR(13845);

const ERROR_IPSEC_IKE_INVALID_COOKIE = WIN32_ERROR(13846);

const ERROR_IPSEC_IKE_NO_PEER_CERT = WIN32_ERROR(13847);

const ERROR_IPSEC_IKE_PEER_CRL_FAILED = WIN32_ERROR(13848);

const ERROR_IPSEC_IKE_POLICY_CHANGE = WIN32_ERROR(13849);

const ERROR_IPSEC_IKE_NO_MM_POLICY = WIN32_ERROR(13850);

const ERROR_IPSEC_IKE_NOTCBPRIV = WIN32_ERROR(13851);

const ERROR_IPSEC_IKE_SECLOADFAIL = WIN32_ERROR(13852);

const ERROR_IPSEC_IKE_FAILSSPINIT = WIN32_ERROR(13853);

const ERROR_IPSEC_IKE_FAILQUERYSSP = WIN32_ERROR(13854);

const ERROR_IPSEC_IKE_SRVACQFAIL = WIN32_ERROR(13855);

const ERROR_IPSEC_IKE_SRVQUERYCRED = WIN32_ERROR(13856);

const ERROR_IPSEC_IKE_GETSPIFAIL = WIN32_ERROR(13857);

const ERROR_IPSEC_IKE_INVALID_FILTER = WIN32_ERROR(13858);

const ERROR_IPSEC_IKE_OUT_OF_MEMORY = WIN32_ERROR(13859);

const ERROR_IPSEC_IKE_ADD_UPDATE_KEY_FAILED = WIN32_ERROR(13860);

const ERROR_IPSEC_IKE_INVALID_POLICY = WIN32_ERROR(13861);

const ERROR_IPSEC_IKE_UNKNOWN_DOI = WIN32_ERROR(13862);

const ERROR_IPSEC_IKE_INVALID_SITUATION = WIN32_ERROR(13863);

const ERROR_IPSEC_IKE_DH_FAILURE = WIN32_ERROR(13864);

const ERROR_IPSEC_IKE_INVALID_GROUP = WIN32_ERROR(13865);

const ERROR_IPSEC_IKE_ENCRYPT = WIN32_ERROR(13866);

const ERROR_IPSEC_IKE_DECRYPT = WIN32_ERROR(13867);

const ERROR_IPSEC_IKE_POLICY_MATCH = WIN32_ERROR(13868);

const ERROR_IPSEC_IKE_UNSUPPORTED_ID = WIN32_ERROR(13869);

const ERROR_IPSEC_IKE_INVALID_HASH = WIN32_ERROR(13870);

const ERROR_IPSEC_IKE_INVALID_HASH_ALG = WIN32_ERROR(13871);

const ERROR_IPSEC_IKE_INVALID_HASH_SIZE = WIN32_ERROR(13872);

const ERROR_IPSEC_IKE_INVALID_ENCRYPT_ALG = WIN32_ERROR(13873);

const ERROR_IPSEC_IKE_INVALID_AUTH_ALG = WIN32_ERROR(13874);

const ERROR_IPSEC_IKE_INVALID_SIG = WIN32_ERROR(13875);

const ERROR_IPSEC_IKE_LOAD_FAILED = WIN32_ERROR(13876);

const ERROR_IPSEC_IKE_RPC_DELETE = WIN32_ERROR(13877);

const ERROR_IPSEC_IKE_BENIGN_REINIT = WIN32_ERROR(13878);

const ERROR_IPSEC_IKE_INVALID_RESPONDER_LIFETIME_NOTIFY = WIN32_ERROR(13879);

const ERROR_IPSEC_IKE_INVALID_MAJOR_VERSION = WIN32_ERROR(13880);

const ERROR_IPSEC_IKE_INVALID_CERT_KEYLEN = WIN32_ERROR(13881);

const ERROR_IPSEC_IKE_MM_LIMIT = WIN32_ERROR(13882);

const ERROR_IPSEC_IKE_NEGOTIATION_DISABLED = WIN32_ERROR(13883);

const ERROR_IPSEC_IKE_QM_LIMIT = WIN32_ERROR(13884);

const ERROR_IPSEC_IKE_MM_EXPIRED = WIN32_ERROR(13885);

const ERROR_IPSEC_IKE_PEER_MM_ASSUMED_INVALID = WIN32_ERROR(13886);

const ERROR_IPSEC_IKE_CERT_CHAIN_POLICY_MISMATCH = WIN32_ERROR(13887);

const ERROR_IPSEC_IKE_UNEXPECTED_MESSAGE_ID = WIN32_ERROR(13888);

const ERROR_IPSEC_IKE_INVALID_AUTH_PAYLOAD = WIN32_ERROR(13889);

const ERROR_IPSEC_IKE_DOS_COOKIE_SENT = WIN32_ERROR(13890);

const ERROR_IPSEC_IKE_SHUTTING_DOWN = WIN32_ERROR(13891);

const ERROR_IPSEC_IKE_CGA_AUTH_FAILED = WIN32_ERROR(13892);

const ERROR_IPSEC_IKE_PROCESS_ERR_NATOA = WIN32_ERROR(13893);

const ERROR_IPSEC_IKE_INVALID_MM_FOR_QM = WIN32_ERROR(13894);

const ERROR_IPSEC_IKE_QM_EXPIRED = WIN32_ERROR(13895);

const ERROR_IPSEC_IKE_TOO_MANY_FILTERS = WIN32_ERROR(13896);

const ERROR_IPSEC_IKE_NEG_STATUS_END = WIN32_ERROR(13897);

const ERROR_IPSEC_IKE_KILL_DUMMY_NAP_TUNNEL = WIN32_ERROR(13898);

const ERROR_IPSEC_IKE_INNER_IP_ASSIGNMENT_FAILURE = WIN32_ERROR(13899);

const ERROR_IPSEC_IKE_REQUIRE_CP_PAYLOAD_MISSING = WIN32_ERROR(13900);

const ERROR_IPSEC_KEY_MODULE_IMPERSONATION_NEGOTIATION_PENDING = WIN32_ERROR(
  13901,
);

const ERROR_IPSEC_IKE_COEXISTENCE_SUPPRESS = WIN32_ERROR(13902);

const ERROR_IPSEC_IKE_RATELIMIT_DROP = WIN32_ERROR(13903);

const ERROR_IPSEC_IKE_PEER_DOESNT_SUPPORT_MOBIKE = WIN32_ERROR(13904);

const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE = WIN32_ERROR(13905);

const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_FAILURE = WIN32_ERROR(13906);

const ERROR_IPSEC_IKE_AUTHORIZATION_FAILURE_WITH_OPTIONAL_RETRY = WIN32_ERROR(
  13907,
);

const ERROR_IPSEC_IKE_STRONG_CRED_AUTHORIZATION_AND_CERTMAP_FAILURE =
    WIN32_ERROR(13908);

const ERROR_IPSEC_IKE_NEG_STATUS_EXTENDED_END = WIN32_ERROR(13909);

const ERROR_IPSEC_BAD_SPI = WIN32_ERROR(13910);

const ERROR_IPSEC_SA_LIFETIME_EXPIRED = WIN32_ERROR(13911);

const ERROR_IPSEC_WRONG_SA = WIN32_ERROR(13912);

const ERROR_IPSEC_REPLAY_CHECK_FAILED = WIN32_ERROR(13913);

const ERROR_IPSEC_INVALID_PACKET = WIN32_ERROR(13914);

const ERROR_IPSEC_INTEGRITY_CHECK_FAILED = WIN32_ERROR(13915);

const ERROR_IPSEC_CLEAR_TEXT_DROP = WIN32_ERROR(13916);

const ERROR_IPSEC_AUTH_FIREWALL_DROP = WIN32_ERROR(13917);

const ERROR_IPSEC_THROTTLE_DROP = WIN32_ERROR(13918);

const ERROR_IPSEC_DOSP_BLOCK = WIN32_ERROR(13925);

const ERROR_IPSEC_DOSP_RECEIVED_MULTICAST = WIN32_ERROR(13926);

const ERROR_IPSEC_DOSP_INVALID_PACKET = WIN32_ERROR(13927);

const ERROR_IPSEC_DOSP_STATE_LOOKUP_FAILED = WIN32_ERROR(13928);

const ERROR_IPSEC_DOSP_MAX_ENTRIES = WIN32_ERROR(13929);

const ERROR_IPSEC_DOSP_KEYMOD_NOT_ALLOWED = WIN32_ERROR(13930);

const ERROR_IPSEC_DOSP_NOT_INSTALLED = WIN32_ERROR(13931);

const ERROR_IPSEC_DOSP_MAX_PER_IP_RATELIMIT_QUEUES = WIN32_ERROR(13932);

const ERROR_SXS_SECTION_NOT_FOUND = WIN32_ERROR(14000);

const ERROR_SXS_CANT_GEN_ACTCTX = WIN32_ERROR(14001);

const ERROR_SXS_INVALID_ACTCTXDATA_FORMAT = WIN32_ERROR(14002);

const ERROR_SXS_ASSEMBLY_NOT_FOUND = WIN32_ERROR(14003);

const ERROR_SXS_MANIFEST_FORMAT_ERROR = WIN32_ERROR(14004);

const ERROR_SXS_MANIFEST_PARSE_ERROR = WIN32_ERROR(14005);

const ERROR_SXS_ACTIVATION_CONTEXT_DISABLED = WIN32_ERROR(14006);

const ERROR_SXS_KEY_NOT_FOUND = WIN32_ERROR(14007);

const ERROR_SXS_VERSION_CONFLICT = WIN32_ERROR(14008);

const ERROR_SXS_WRONG_SECTION_TYPE = WIN32_ERROR(14009);

const ERROR_SXS_THREAD_QUERIES_DISABLED = WIN32_ERROR(14010);

const ERROR_SXS_PROCESS_DEFAULT_ALREADY_SET = WIN32_ERROR(14011);

const ERROR_SXS_UNKNOWN_ENCODING_GROUP = WIN32_ERROR(14012);

const ERROR_SXS_UNKNOWN_ENCODING = WIN32_ERROR(14013);

const ERROR_SXS_INVALID_XML_NAMESPACE_URI = WIN32_ERROR(14014);

const ERROR_SXS_ROOT_MANIFEST_DEPENDENCY_NOT_INSTALLED = WIN32_ERROR(14015);

const ERROR_SXS_LEAF_MANIFEST_DEPENDENCY_NOT_INSTALLED = WIN32_ERROR(14016);

const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE = WIN32_ERROR(14017);

const ERROR_SXS_MANIFEST_MISSING_REQUIRED_DEFAULT_NAMESPACE = WIN32_ERROR(
  14018,
);

const ERROR_SXS_MANIFEST_INVALID_REQUIRED_DEFAULT_NAMESPACE = WIN32_ERROR(
  14019,
);

const ERROR_SXS_PRIVATE_MANIFEST_CROSS_PATH_WITH_REPARSE_POINT = WIN32_ERROR(
  14020,
);

const ERROR_SXS_DUPLICATE_DLL_NAME = WIN32_ERROR(14021);

const ERROR_SXS_DUPLICATE_WINDOWCLASS_NAME = WIN32_ERROR(14022);

const ERROR_SXS_DUPLICATE_CLSID = WIN32_ERROR(14023);

const ERROR_SXS_DUPLICATE_IID = WIN32_ERROR(14024);

const ERROR_SXS_DUPLICATE_TLBID = WIN32_ERROR(14025);

const ERROR_SXS_DUPLICATE_PROGID = WIN32_ERROR(14026);

const ERROR_SXS_DUPLICATE_ASSEMBLY_NAME = WIN32_ERROR(14027);

const ERROR_SXS_FILE_HASH_MISMATCH = WIN32_ERROR(14028);

const ERROR_SXS_POLICY_PARSE_ERROR = WIN32_ERROR(14029);

const ERROR_SXS_XML_E_MISSINGQUOTE = WIN32_ERROR(14030);

const ERROR_SXS_XML_E_COMMENTSYNTAX = WIN32_ERROR(14031);

const ERROR_SXS_XML_E_BADSTARTNAMECHAR = WIN32_ERROR(14032);

const ERROR_SXS_XML_E_BADNAMECHAR = WIN32_ERROR(14033);

const ERROR_SXS_XML_E_BADCHARINSTRING = WIN32_ERROR(14034);

const ERROR_SXS_XML_E_XMLDECLSYNTAX = WIN32_ERROR(14035);

const ERROR_SXS_XML_E_BADCHARDATA = WIN32_ERROR(14036);

const ERROR_SXS_XML_E_MISSINGWHITESPACE = WIN32_ERROR(14037);

const ERROR_SXS_XML_E_EXPECTINGTAGEND = WIN32_ERROR(14038);

const ERROR_SXS_XML_E_MISSINGSEMICOLON = WIN32_ERROR(14039);

const ERROR_SXS_XML_E_UNBALANCEDPAREN = WIN32_ERROR(14040);

const ERROR_SXS_XML_E_INTERNALERROR = WIN32_ERROR(14041);

const ERROR_SXS_XML_E_UNEXPECTED_WHITESPACE = WIN32_ERROR(14042);

const ERROR_SXS_XML_E_INCOMPLETE_ENCODING = WIN32_ERROR(14043);

const ERROR_SXS_XML_E_MISSING_PAREN = WIN32_ERROR(14044);

const ERROR_SXS_XML_E_EXPECTINGCLOSEQUOTE = WIN32_ERROR(14045);

const ERROR_SXS_XML_E_MULTIPLE_COLONS = WIN32_ERROR(14046);

const ERROR_SXS_XML_E_INVALID_DECIMAL = WIN32_ERROR(14047);

const ERROR_SXS_XML_E_INVALID_HEXIDECIMAL = WIN32_ERROR(14048);

const ERROR_SXS_XML_E_INVALID_UNICODE = WIN32_ERROR(14049);

const ERROR_SXS_XML_E_WHITESPACEORQUESTIONMARK = WIN32_ERROR(14050);

const ERROR_SXS_XML_E_UNEXPECTEDENDTAG = WIN32_ERROR(14051);

const ERROR_SXS_XML_E_UNCLOSEDTAG = WIN32_ERROR(14052);

const ERROR_SXS_XML_E_DUPLICATEATTRIBUTE = WIN32_ERROR(14053);

const ERROR_SXS_XML_E_MULTIPLEROOTS = WIN32_ERROR(14054);

const ERROR_SXS_XML_E_INVALIDATROOTLEVEL = WIN32_ERROR(14055);

const ERROR_SXS_XML_E_BADXMLDECL = WIN32_ERROR(14056);

const ERROR_SXS_XML_E_MISSINGROOT = WIN32_ERROR(14057);

const ERROR_SXS_XML_E_UNEXPECTEDEOF = WIN32_ERROR(14058);

const ERROR_SXS_XML_E_BADPEREFINSUBSET = WIN32_ERROR(14059);

const ERROR_SXS_XML_E_UNCLOSEDSTARTTAG = WIN32_ERROR(14060);

const ERROR_SXS_XML_E_UNCLOSEDENDTAG = WIN32_ERROR(14061);

const ERROR_SXS_XML_E_UNCLOSEDSTRING = WIN32_ERROR(14062);

const ERROR_SXS_XML_E_UNCLOSEDCOMMENT = WIN32_ERROR(14063);

const ERROR_SXS_XML_E_UNCLOSEDDECL = WIN32_ERROR(14064);

const ERROR_SXS_XML_E_UNCLOSEDCDATA = WIN32_ERROR(14065);

const ERROR_SXS_XML_E_RESERVEDNAMESPACE = WIN32_ERROR(14066);

const ERROR_SXS_XML_E_INVALIDENCODING = WIN32_ERROR(14067);

const ERROR_SXS_XML_E_INVALIDSWITCH = WIN32_ERROR(14068);

const ERROR_SXS_XML_E_BADXMLCASE = WIN32_ERROR(14069);

const ERROR_SXS_XML_E_INVALID_STANDALONE = WIN32_ERROR(14070);

const ERROR_SXS_XML_E_UNEXPECTED_STANDALONE = WIN32_ERROR(14071);

const ERROR_SXS_XML_E_INVALID_VERSION = WIN32_ERROR(14072);

const ERROR_SXS_XML_E_MISSINGEQUALS = WIN32_ERROR(14073);

const ERROR_SXS_PROTECTION_RECOVERY_FAILED = WIN32_ERROR(14074);

const ERROR_SXS_PROTECTION_PUBLIC_KEY_TOO_SHORT = WIN32_ERROR(14075);

const ERROR_SXS_PROTECTION_CATALOG_NOT_VALID = WIN32_ERROR(14076);

const ERROR_SXS_UNTRANSLATABLE_HRESULT = WIN32_ERROR(14077);

const ERROR_SXS_PROTECTION_CATALOG_FILE_MISSING = WIN32_ERROR(14078);

const ERROR_SXS_MISSING_ASSEMBLY_IDENTITY_ATTRIBUTE = WIN32_ERROR(14079);

const ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME = WIN32_ERROR(14080);

const ERROR_SXS_ASSEMBLY_MISSING = WIN32_ERROR(14081);

const ERROR_SXS_CORRUPT_ACTIVATION_STACK = WIN32_ERROR(14082);

const ERROR_SXS_CORRUPTION = WIN32_ERROR(14083);

const ERROR_SXS_EARLY_DEACTIVATION = WIN32_ERROR(14084);

const ERROR_SXS_INVALID_DEACTIVATION = WIN32_ERROR(14085);

const ERROR_SXS_MULTIPLE_DEACTIVATION = WIN32_ERROR(14086);

const ERROR_SXS_PROCESS_TERMINATION_REQUESTED = WIN32_ERROR(14087);

const ERROR_SXS_RELEASE_ACTIVATION_CONTEXT = WIN32_ERROR(14088);

const ERROR_SXS_SYSTEM_DEFAULT_ACTIVATION_CONTEXT_EMPTY = WIN32_ERROR(14089);

const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_VALUE = WIN32_ERROR(14090);

const ERROR_SXS_INVALID_IDENTITY_ATTRIBUTE_NAME = WIN32_ERROR(14091);

const ERROR_SXS_IDENTITY_DUPLICATE_ATTRIBUTE = WIN32_ERROR(14092);

const ERROR_SXS_IDENTITY_PARSE_ERROR = WIN32_ERROR(14093);

const ERROR_MALFORMED_SUBSTITUTION_STRING = WIN32_ERROR(14094);

const ERROR_SXS_INCORRECT_PUBLIC_KEY_TOKEN = WIN32_ERROR(14095);

const ERROR_UNMAPPED_SUBSTITUTION_STRING = WIN32_ERROR(14096);

const ERROR_SXS_ASSEMBLY_NOT_LOCKED = WIN32_ERROR(14097);

const ERROR_SXS_COMPONENT_STORE_CORRUPT = WIN32_ERROR(14098);

const ERROR_ADVANCED_INSTALLER_FAILED = WIN32_ERROR(14099);

const ERROR_XML_ENCODING_MISMATCH = WIN32_ERROR(14100);

const ERROR_SXS_MANIFEST_IDENTITY_SAME_BUT_CONTENTS_DIFFERENT = WIN32_ERROR(
  14101,
);

const ERROR_SXS_IDENTITIES_DIFFERENT = WIN32_ERROR(14102);

const ERROR_SXS_ASSEMBLY_IS_NOT_A_DEPLOYMENT = WIN32_ERROR(14103);

const ERROR_SXS_FILE_NOT_PART_OF_ASSEMBLY = WIN32_ERROR(14104);

const ERROR_SXS_MANIFEST_TOO_BIG = WIN32_ERROR(14105);

const ERROR_SXS_SETTING_NOT_REGISTERED = WIN32_ERROR(14106);

const ERROR_SXS_TRANSACTION_CLOSURE_INCOMPLETE = WIN32_ERROR(14107);

const ERROR_SMI_PRIMITIVE_INSTALLER_FAILED = WIN32_ERROR(14108);

const ERROR_GENERIC_COMMAND_FAILED = WIN32_ERROR(14109);

const ERROR_SXS_FILE_HASH_MISSING = WIN32_ERROR(14110);

const ERROR_SXS_DUPLICATE_ACTIVATABLE_CLASS = WIN32_ERROR(14111);

const ERROR_EVT_INVALID_CHANNEL_PATH = WIN32_ERROR(15000);

const ERROR_EVT_INVALID_QUERY = WIN32_ERROR(15001);

const ERROR_EVT_PUBLISHER_METADATA_NOT_FOUND = WIN32_ERROR(15002);

const ERROR_EVT_EVENT_TEMPLATE_NOT_FOUND = WIN32_ERROR(15003);

const ERROR_EVT_INVALID_PUBLISHER_NAME = WIN32_ERROR(15004);

const ERROR_EVT_INVALID_EVENT_DATA = WIN32_ERROR(15005);

const ERROR_EVT_CHANNEL_NOT_FOUND = WIN32_ERROR(15007);

const ERROR_EVT_MALFORMED_XML_TEXT = WIN32_ERROR(15008);

const ERROR_EVT_SUBSCRIPTION_TO_DIRECT_CHANNEL = WIN32_ERROR(15009);

const ERROR_EVT_CONFIGURATION_ERROR = WIN32_ERROR(15010);

const ERROR_EVT_QUERY_RESULT_STALE = WIN32_ERROR(15011);

const ERROR_EVT_QUERY_RESULT_INVALID_POSITION = WIN32_ERROR(15012);

const ERROR_EVT_NON_VALIDATING_MSXML = WIN32_ERROR(15013);

const ERROR_EVT_FILTER_ALREADYSCOPED = WIN32_ERROR(15014);

const ERROR_EVT_FILTER_NOTELTSET = WIN32_ERROR(15015);

const ERROR_EVT_FILTER_INVARG = WIN32_ERROR(15016);

const ERROR_EVT_FILTER_INVTEST = WIN32_ERROR(15017);

const ERROR_EVT_FILTER_INVTYPE = WIN32_ERROR(15018);

const ERROR_EVT_FILTER_PARSEERR = WIN32_ERROR(15019);

const ERROR_EVT_FILTER_UNSUPPORTEDOP = WIN32_ERROR(15020);

const ERROR_EVT_FILTER_UNEXPECTEDTOKEN = WIN32_ERROR(15021);

const ERROR_EVT_INVALID_OPERATION_OVER_ENABLED_DIRECT_CHANNEL = WIN32_ERROR(
  15022,
);

const ERROR_EVT_INVALID_CHANNEL_PROPERTY_VALUE = WIN32_ERROR(15023);

const ERROR_EVT_INVALID_PUBLISHER_PROPERTY_VALUE = WIN32_ERROR(15024);

const ERROR_EVT_CHANNEL_CANNOT_ACTIVATE = WIN32_ERROR(15025);

const ERROR_EVT_FILTER_TOO_COMPLEX = WIN32_ERROR(15026);

const ERROR_EVT_MESSAGE_NOT_FOUND = WIN32_ERROR(15027);

const ERROR_EVT_MESSAGE_ID_NOT_FOUND = WIN32_ERROR(15028);

const ERROR_EVT_UNRESOLVED_VALUE_INSERT = WIN32_ERROR(15029);

const ERROR_EVT_UNRESOLVED_PARAMETER_INSERT = WIN32_ERROR(15030);

const ERROR_EVT_MAX_INSERTS_REACHED = WIN32_ERROR(15031);

const ERROR_EVT_EVENT_DEFINITION_NOT_FOUND = WIN32_ERROR(15032);

const ERROR_EVT_MESSAGE_LOCALE_NOT_FOUND = WIN32_ERROR(15033);

const ERROR_EVT_VERSION_TOO_OLD = WIN32_ERROR(15034);

const ERROR_EVT_VERSION_TOO_NEW = WIN32_ERROR(15035);

const ERROR_EVT_CANNOT_OPEN_CHANNEL_OF_QUERY = WIN32_ERROR(15036);

const ERROR_EVT_PUBLISHER_DISABLED = WIN32_ERROR(15037);

const ERROR_EVT_FILTER_OUT_OF_RANGE = WIN32_ERROR(15038);

const ERROR_EC_SUBSCRIPTION_CANNOT_ACTIVATE = WIN32_ERROR(15080);

const ERROR_EC_LOG_DISABLED = WIN32_ERROR(15081);

const ERROR_EC_CIRCULAR_FORWARDING = WIN32_ERROR(15082);

const ERROR_EC_CREDSTORE_FULL = WIN32_ERROR(15083);

const ERROR_EC_CRED_NOT_FOUND = WIN32_ERROR(15084);

const ERROR_EC_NO_ACTIVE_CHANNEL = WIN32_ERROR(15085);

const ERROR_MUI_FILE_NOT_FOUND = WIN32_ERROR(15100);

const ERROR_MUI_INVALID_FILE = WIN32_ERROR(15101);

const ERROR_MUI_INVALID_RC_CONFIG = WIN32_ERROR(15102);

const ERROR_MUI_INVALID_LOCALE_NAME = WIN32_ERROR(15103);

const ERROR_MUI_INVALID_ULTIMATEFALLBACK_NAME = WIN32_ERROR(15104);

const ERROR_MUI_FILE_NOT_LOADED = WIN32_ERROR(15105);

const ERROR_RESOURCE_ENUM_USER_STOP = WIN32_ERROR(15106);

const ERROR_MUI_INTLSETTINGS_UILANG_NOT_INSTALLED = WIN32_ERROR(15107);

const ERROR_MUI_INTLSETTINGS_INVALID_LOCALE_NAME = WIN32_ERROR(15108);

const ERROR_MRM_RUNTIME_NO_DEFAULT_OR_NEUTRAL_RESOURCE = WIN32_ERROR(15110);

const ERROR_MRM_INVALID_PRICONFIG = WIN32_ERROR(15111);

const ERROR_MRM_INVALID_FILE_TYPE = WIN32_ERROR(15112);

const ERROR_MRM_UNKNOWN_QUALIFIER = WIN32_ERROR(15113);

const ERROR_MRM_INVALID_QUALIFIER_VALUE = WIN32_ERROR(15114);

const ERROR_MRM_NO_CANDIDATE = WIN32_ERROR(15115);

const ERROR_MRM_NO_MATCH_OR_DEFAULT_CANDIDATE = WIN32_ERROR(15116);

const ERROR_MRM_RESOURCE_TYPE_MISMATCH = WIN32_ERROR(15117);

const ERROR_MRM_DUPLICATE_MAP_NAME = WIN32_ERROR(15118);

const ERROR_MRM_DUPLICATE_ENTRY = WIN32_ERROR(15119);

const ERROR_MRM_INVALID_RESOURCE_IDENTIFIER = WIN32_ERROR(15120);

const ERROR_MRM_FILEPATH_TOO_LONG = WIN32_ERROR(15121);

const ERROR_MRM_UNSUPPORTED_DIRECTORY_TYPE = WIN32_ERROR(15122);

const ERROR_MRM_INVALID_PRI_FILE = WIN32_ERROR(15126);

const ERROR_MRM_NAMED_RESOURCE_NOT_FOUND = WIN32_ERROR(15127);

const ERROR_MRM_MAP_NOT_FOUND = WIN32_ERROR(15135);

const ERROR_MRM_UNSUPPORTED_PROFILE_TYPE = WIN32_ERROR(15136);

const ERROR_MRM_INVALID_QUALIFIER_OPERATOR = WIN32_ERROR(15137);

const ERROR_MRM_INDETERMINATE_QUALIFIER_VALUE = WIN32_ERROR(15138);

const ERROR_MRM_AUTOMERGE_ENABLED = WIN32_ERROR(15139);

const ERROR_MRM_TOO_MANY_RESOURCES = WIN32_ERROR(15140);

const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_MERGE = WIN32_ERROR(15141);

const ERROR_MRM_UNSUPPORTED_FILE_TYPE_FOR_LOAD_UNLOAD_PRI_FILE = WIN32_ERROR(
  15142,
);

const ERROR_MRM_NO_CURRENT_VIEW_ON_THREAD = WIN32_ERROR(15143);

const ERROR_DIFFERENT_PROFILE_RESOURCE_MANAGER_EXIST = WIN32_ERROR(15144);

const ERROR_OPERATION_NOT_ALLOWED_FROM_SYSTEM_COMPONENT = WIN32_ERROR(15145);

const ERROR_MRM_DIRECT_REF_TO_NON_DEFAULT_RESOURCE = WIN32_ERROR(15146);

const ERROR_MRM_GENERATION_COUNT_MISMATCH = WIN32_ERROR(15147);

const ERROR_PRI_MERGE_VERSION_MISMATCH = WIN32_ERROR(15148);

const ERROR_PRI_MERGE_MISSING_SCHEMA = WIN32_ERROR(15149);

const ERROR_PRI_MERGE_LOAD_FILE_FAILED = WIN32_ERROR(15150);

const ERROR_PRI_MERGE_ADD_FILE_FAILED = WIN32_ERROR(15151);

const ERROR_PRI_MERGE_WRITE_FILE_FAILED = WIN32_ERROR(15152);

const ERROR_PRI_MERGE_MULTIPLE_PACKAGE_FAMILIES_NOT_ALLOWED = WIN32_ERROR(
  15153,
);

const ERROR_PRI_MERGE_MULTIPLE_MAIN_PACKAGES_NOT_ALLOWED = WIN32_ERROR(15154);

const ERROR_PRI_MERGE_BUNDLE_PACKAGES_NOT_ALLOWED = WIN32_ERROR(15155);

const ERROR_PRI_MERGE_MAIN_PACKAGE_REQUIRED = WIN32_ERROR(15156);

const ERROR_PRI_MERGE_RESOURCE_PACKAGE_REQUIRED = WIN32_ERROR(15157);

const ERROR_PRI_MERGE_INVALID_FILE_NAME = WIN32_ERROR(15158);

const ERROR_MRM_PACKAGE_NOT_FOUND = WIN32_ERROR(15159);

const ERROR_MRM_MISSING_DEFAULT_LANGUAGE = WIN32_ERROR(15160);

const ERROR_MRM_SCOPE_ITEM_CONFLICT = WIN32_ERROR(15161);

const ERROR_MCA_INVALID_CAPABILITIES_STRING = WIN32_ERROR(15200);

const ERROR_MCA_INVALID_VCP_VERSION = WIN32_ERROR(15201);

const ERROR_MCA_MONITOR_VIOLATES_MCCS_SPECIFICATION = WIN32_ERROR(15202);

const ERROR_MCA_MCCS_VERSION_MISMATCH = WIN32_ERROR(15203);

const ERROR_MCA_UNSUPPORTED_MCCS_VERSION = WIN32_ERROR(15204);

const ERROR_MCA_INTERNAL_ERROR = WIN32_ERROR(15205);

const ERROR_MCA_INVALID_TECHNOLOGY_TYPE_RETURNED = WIN32_ERROR(15206);

const ERROR_MCA_UNSUPPORTED_COLOR_TEMPERATURE = WIN32_ERROR(15207);

const ERROR_AMBIGUOUS_SYSTEM_DEVICE = WIN32_ERROR(15250);

const ERROR_SYSTEM_DEVICE_NOT_FOUND = WIN32_ERROR(15299);

const ERROR_HASH_NOT_SUPPORTED = WIN32_ERROR(15300);

const ERROR_HASH_NOT_PRESENT = WIN32_ERROR(15301);

const ERROR_SECONDARY_IC_PROVIDER_NOT_REGISTERED = WIN32_ERROR(15321);

const ERROR_GPIO_CLIENT_INFORMATION_INVALID = WIN32_ERROR(15322);

const ERROR_GPIO_VERSION_NOT_SUPPORTED = WIN32_ERROR(15323);

const ERROR_GPIO_INVALID_REGISTRATION_PACKET = WIN32_ERROR(15324);

const ERROR_GPIO_OPERATION_DENIED = WIN32_ERROR(15325);

const ERROR_GPIO_INCOMPATIBLE_CONNECT_MODE = WIN32_ERROR(15326);

const ERROR_GPIO_INTERRUPT_ALREADY_UNMASKED = WIN32_ERROR(15327);

const ERROR_CANNOT_COMPOSE_APISET_EXTENSION = WIN32_ERROR(15380);

const ERROR_CANNOT_SWITCH_RUNLEVEL = WIN32_ERROR(15400);

const ERROR_INVALID_RUNLEVEL_SETTING = WIN32_ERROR(15401);

const ERROR_RUNLEVEL_SWITCH_TIMEOUT = WIN32_ERROR(15402);

const ERROR_RUNLEVEL_SWITCH_AGENT_TIMEOUT = WIN32_ERROR(15403);

const ERROR_RUNLEVEL_SWITCH_IN_PROGRESS = WIN32_ERROR(15404);

const ERROR_SERVICES_FAILED_AUTOSTART = WIN32_ERROR(15405);

const ERROR_COM_TASK_STOP_PENDING = WIN32_ERROR(15501);

const ERROR_INSTALL_OPEN_PACKAGE_FAILED = WIN32_ERROR(15600);

const ERROR_INSTALL_PACKAGE_NOT_FOUND = WIN32_ERROR(15601);

const ERROR_INSTALL_INVALID_PACKAGE = WIN32_ERROR(15602);

const ERROR_INSTALL_RESOLVE_DEPENDENCY_FAILED = WIN32_ERROR(15603);

const ERROR_INSTALL_OUT_OF_DISK_SPACE = WIN32_ERROR(15604);

const ERROR_INSTALL_NETWORK_FAILURE = WIN32_ERROR(15605);

const ERROR_INSTALL_REGISTRATION_FAILURE = WIN32_ERROR(15606);

const ERROR_INSTALL_DEREGISTRATION_FAILURE = WIN32_ERROR(15607);

const ERROR_INSTALL_CANCEL = WIN32_ERROR(15608);

const ERROR_INSTALL_FAILED = WIN32_ERROR(15609);

const ERROR_REMOVE_FAILED = WIN32_ERROR(15610);

const ERROR_PACKAGE_ALREADY_EXISTS = WIN32_ERROR(15611);

const ERROR_NEEDS_REMEDIATION = WIN32_ERROR(15612);

const ERROR_INSTALL_PREREQUISITE_FAILED = WIN32_ERROR(15613);

const ERROR_PACKAGE_REPOSITORY_CORRUPTED = WIN32_ERROR(15614);

const ERROR_INSTALL_POLICY_FAILURE = WIN32_ERROR(15615);

const ERROR_PACKAGE_UPDATING = WIN32_ERROR(15616);

const ERROR_DEPLOYMENT_BLOCKED_BY_POLICY = WIN32_ERROR(15617);

const ERROR_PACKAGES_IN_USE = WIN32_ERROR(15618);

const ERROR_RECOVERY_FILE_CORRUPT = WIN32_ERROR(15619);

const ERROR_INVALID_STAGED_SIGNATURE = WIN32_ERROR(15620);

const ERROR_DELETING_EXISTING_APPLICATIONDATA_STORE_FAILED = WIN32_ERROR(15621);

const ERROR_INSTALL_PACKAGE_DOWNGRADE = WIN32_ERROR(15622);

const ERROR_SYSTEM_NEEDS_REMEDIATION = WIN32_ERROR(15623);

const ERROR_APPX_INTEGRITY_FAILURE_CLR_NGEN = WIN32_ERROR(15624);

const ERROR_RESILIENCY_FILE_CORRUPT = WIN32_ERROR(15625);

const ERROR_INSTALL_FIREWALL_SERVICE_NOT_RUNNING = WIN32_ERROR(15626);

const ERROR_PACKAGE_MOVE_FAILED = WIN32_ERROR(15627);

const ERROR_INSTALL_VOLUME_NOT_EMPTY = WIN32_ERROR(15628);

const ERROR_INSTALL_VOLUME_OFFLINE = WIN32_ERROR(15629);

const ERROR_INSTALL_VOLUME_CORRUPT = WIN32_ERROR(15630);

const ERROR_NEEDS_REGISTRATION = WIN32_ERROR(15631);

const ERROR_INSTALL_WRONG_PROCESSOR_ARCHITECTURE = WIN32_ERROR(15632);

const ERROR_DEV_SIDELOAD_LIMIT_EXCEEDED = WIN32_ERROR(15633);

const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE = WIN32_ERROR(15634);

const ERROR_PACKAGE_NOT_SUPPORTED_ON_FILESYSTEM = WIN32_ERROR(15635);

const ERROR_PACKAGE_MOVE_BLOCKED_BY_STREAMING = WIN32_ERROR(15636);

const ERROR_INSTALL_OPTIONAL_PACKAGE_APPLICATIONID_NOT_UNIQUE = WIN32_ERROR(
  15637,
);

const ERROR_PACKAGE_STAGING_ONHOLD = WIN32_ERROR(15638);

const ERROR_INSTALL_INVALID_RELATED_SET_UPDATE = WIN32_ERROR(15639);

const ERROR_INSTALL_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
    WIN32_ERROR(15640);

const ERROR_DEPLOYMENT_BLOCKED_BY_USER_LOG_OFF = WIN32_ERROR(15641);

const ERROR_PROVISION_OPTIONAL_PACKAGE_REQUIRES_MAIN_PACKAGE_PROVISIONED =
    WIN32_ERROR(15642);

const ERROR_PACKAGES_REPUTATION_CHECK_FAILED = WIN32_ERROR(15643);

const ERROR_PACKAGES_REPUTATION_CHECK_TIMEDOUT = WIN32_ERROR(15644);

const ERROR_DEPLOYMENT_OPTION_NOT_SUPPORTED = WIN32_ERROR(15645);

const ERROR_APPINSTALLER_ACTIVATION_BLOCKED = WIN32_ERROR(15646);

const ERROR_REGISTRATION_FROM_REMOTE_DRIVE_NOT_SUPPORTED = WIN32_ERROR(15647);

const ERROR_APPX_RAW_DATA_WRITE_FAILED = WIN32_ERROR(15648);

const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_PACKAGE = WIN32_ERROR(15649);

const ERROR_DEPLOYMENT_BLOCKED_BY_VOLUME_POLICY_MACHINE = WIN32_ERROR(15650);

const ERROR_DEPLOYMENT_BLOCKED_BY_PROFILE_POLICY = WIN32_ERROR(15651);

const ERROR_DEPLOYMENT_FAILED_CONFLICTING_MUTABLE_PACKAGE_DIRECTORY =
    WIN32_ERROR(15652);

const ERROR_SINGLETON_RESOURCE_INSTALLED_IN_ACTIVE_USER = WIN32_ERROR(15653);

const ERROR_DIFFERENT_VERSION_OF_PACKAGED_SERVICE_INSTALLED = WIN32_ERROR(
  15654,
);

const ERROR_SERVICE_EXISTS_AS_NON_PACKAGED_SERVICE = WIN32_ERROR(15655);

const ERROR_PACKAGED_SERVICE_REQUIRES_ADMIN_PRIVILEGES = WIN32_ERROR(15656);

const ERROR_REDIRECTION_TO_DEFAULT_ACCOUNT_NOT_ALLOWED = WIN32_ERROR(15657);

const ERROR_PACKAGE_LACKS_CAPABILITY_TO_DEPLOY_ON_HOST = WIN32_ERROR(15658);

const ERROR_UNSIGNED_PACKAGE_INVALID_CONTENT = WIN32_ERROR(15659);

const ERROR_UNSIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE = WIN32_ERROR(15660);

const ERROR_SIGNED_PACKAGE_INVALID_PUBLISHER_NAMESPACE = WIN32_ERROR(15661);

const ERROR_PACKAGE_EXTERNAL_LOCATION_NOT_ALLOWED = WIN32_ERROR(15662);

const ERROR_INSTALL_FULLTRUST_HOSTRUNTIME_REQUIRES_MAIN_PACKAGE_FULLTRUST_CAPABILITY =
    WIN32_ERROR(15663);

const ERROR_PACKAGE_LACKS_CAPABILITY_FOR_MANDATORY_STARTUPTASKS = WIN32_ERROR(
  15664,
);

const ERROR_INSTALL_RESOLVE_HOSTRUNTIME_DEPENDENCY_FAILED = WIN32_ERROR(15665);

const ERROR_MACHINE_SCOPE_NOT_ALLOWED = WIN32_ERROR(15666);

const ERROR_CLASSIC_COMPAT_MODE_NOT_ALLOWED = WIN32_ERROR(15667);

const ERROR_STAGEFROMUPDATEAGENT_PACKAGE_NOT_APPLICABLE = WIN32_ERROR(15668);

const ERROR_PACKAGE_NOT_REGISTERED_FOR_USER = WIN32_ERROR(15669);

const ERROR_PACKAGE_NAME_MISMATCH = WIN32_ERROR(15670);

const ERROR_APPINSTALLER_URI_IN_USE = WIN32_ERROR(15671);

const ERROR_APPINSTALLER_IS_MANAGED_BY_SYSTEM = WIN32_ERROR(15672);

const ERROR_SERVICE_BLOCKED_BY_SYSPREP_IN_PROGRESS = WIN32_ERROR(15673);

const ERROR_UNSUPPORTED_ARM32_PACKAGE_REQUIRES_REMEDIAITON = WIN32_ERROR(15674);

const ERROR_UUP_PRODUCT_NOT_APPLICABLE = WIN32_ERROR(15675);

const ERROR_BLOCKED_BY_PENDING_PACKAGE_REMOVAL = WIN32_ERROR(15676);

const ERROR_PACKAGE_REPOSITORY_ROOT_CORRUPTED = WIN32_ERROR(15677);

const ERROR_PACKAGE_MANIFEST_NOT_FOUND = WIN32_ERROR(15678);

const ERROR_DEPLOYMENT_BLOCKED_BY_REMOVEDEFAULTPACKAGES_POLICY = WIN32_ERROR(
  15679,
);

const APPMODEL_ERROR_NO_PACKAGE = WIN32_ERROR(15700);

const APPMODEL_ERROR_PACKAGE_RUNTIME_CORRUPT = WIN32_ERROR(15701);

const APPMODEL_ERROR_PACKAGE_IDENTITY_CORRUPT = WIN32_ERROR(15702);

const APPMODEL_ERROR_NO_APPLICATION = WIN32_ERROR(15703);

const APPMODEL_ERROR_DYNAMIC_PROPERTY_READ_FAILED = WIN32_ERROR(15704);

const APPMODEL_ERROR_DYNAMIC_PROPERTY_INVALID = WIN32_ERROR(15705);

const APPMODEL_ERROR_PACKAGE_NOT_AVAILABLE = WIN32_ERROR(15706);

const APPMODEL_ERROR_NO_MUTABLE_DIRECTORY = WIN32_ERROR(15707);

const ERROR_STATE_LOAD_STORE_FAILED = WIN32_ERROR(15800);

const ERROR_STATE_GET_VERSION_FAILED = WIN32_ERROR(15801);

const ERROR_STATE_SET_VERSION_FAILED = WIN32_ERROR(15802);

const ERROR_STATE_STRUCTURED_RESET_FAILED = WIN32_ERROR(15803);

const ERROR_STATE_OPEN_CONTAINER_FAILED = WIN32_ERROR(15804);

const ERROR_STATE_CREATE_CONTAINER_FAILED = WIN32_ERROR(15805);

const ERROR_STATE_DELETE_CONTAINER_FAILED = WIN32_ERROR(15806);

const ERROR_STATE_READ_SETTING_FAILED = WIN32_ERROR(15807);

const ERROR_STATE_WRITE_SETTING_FAILED = WIN32_ERROR(15808);

const ERROR_STATE_DELETE_SETTING_FAILED = WIN32_ERROR(15809);

const ERROR_STATE_QUERY_SETTING_FAILED = WIN32_ERROR(15810);

const ERROR_STATE_READ_COMPOSITE_SETTING_FAILED = WIN32_ERROR(15811);

const ERROR_STATE_WRITE_COMPOSITE_SETTING_FAILED = WIN32_ERROR(15812);

const ERROR_STATE_ENUMERATE_CONTAINER_FAILED = WIN32_ERROR(15813);

const ERROR_STATE_ENUMERATE_SETTINGS_FAILED = WIN32_ERROR(15814);

const ERROR_STATE_COMPOSITE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED = WIN32_ERROR(
  15815,
);

const ERROR_STATE_SETTING_VALUE_SIZE_LIMIT_EXCEEDED = WIN32_ERROR(15816);

const ERROR_STATE_SETTING_NAME_SIZE_LIMIT_EXCEEDED = WIN32_ERROR(15817);

const ERROR_STATE_CONTAINER_NAME_SIZE_LIMIT_EXCEEDED = WIN32_ERROR(15818);

const ERROR_API_UNAVAILABLE = WIN32_ERROR(15841);

const ERROR_NDIS_INTERFACE_CLOSING = WIN32_ERROR(2150891522);

const ERROR_NDIS_BAD_VERSION = WIN32_ERROR(2150891524);

const ERROR_NDIS_BAD_CHARACTERISTICS = WIN32_ERROR(2150891525);

const ERROR_NDIS_ADAPTER_NOT_FOUND = WIN32_ERROR(2150891526);

const ERROR_NDIS_OPEN_FAILED = WIN32_ERROR(2150891527);

const ERROR_NDIS_DEVICE_FAILED = WIN32_ERROR(2150891528);

const ERROR_NDIS_MULTICAST_FULL = WIN32_ERROR(2150891529);

const ERROR_NDIS_MULTICAST_EXISTS = WIN32_ERROR(2150891530);

const ERROR_NDIS_MULTICAST_NOT_FOUND = WIN32_ERROR(2150891531);

const ERROR_NDIS_REQUEST_ABORTED = WIN32_ERROR(2150891532);

const ERROR_NDIS_RESET_IN_PROGRESS = WIN32_ERROR(2150891533);

const ERROR_NDIS_NOT_SUPPORTED = WIN32_ERROR(2150891707);

const ERROR_NDIS_INVALID_PACKET = WIN32_ERROR(2150891535);

const ERROR_NDIS_ADAPTER_NOT_READY = WIN32_ERROR(2150891537);

const ERROR_NDIS_INVALID_LENGTH = WIN32_ERROR(2150891540);

const ERROR_NDIS_INVALID_DATA = WIN32_ERROR(2150891541);

const ERROR_NDIS_BUFFER_TOO_SHORT = WIN32_ERROR(2150891542);

const ERROR_NDIS_INVALID_OID = WIN32_ERROR(2150891543);

const ERROR_NDIS_ADAPTER_REMOVED = WIN32_ERROR(2150891544);

const ERROR_NDIS_UNSUPPORTED_MEDIA = WIN32_ERROR(2150891545);

const ERROR_NDIS_GROUP_ADDRESS_IN_USE = WIN32_ERROR(2150891546);

const ERROR_NDIS_FILE_NOT_FOUND = WIN32_ERROR(2150891547);

const ERROR_NDIS_ERROR_READING_FILE = WIN32_ERROR(2150891548);

const ERROR_NDIS_ALREADY_MAPPED = WIN32_ERROR(2150891549);

const ERROR_NDIS_RESOURCE_CONFLICT = WIN32_ERROR(2150891550);

const ERROR_NDIS_MEDIA_DISCONNECTED = WIN32_ERROR(2150891551);

const ERROR_NDIS_INVALID_ADDRESS = WIN32_ERROR(2150891554);

const ERROR_NDIS_INVALID_DEVICE_REQUEST = WIN32_ERROR(2150891536);

const ERROR_NDIS_PAUSED = WIN32_ERROR(2150891562);

const ERROR_NDIS_INTERFACE_NOT_FOUND = WIN32_ERROR(2150891563);

const ERROR_NDIS_UNSUPPORTED_REVISION = WIN32_ERROR(2150891564);

const ERROR_NDIS_INVALID_PORT = WIN32_ERROR(2150891565);

const ERROR_NDIS_INVALID_PORT_STATE = WIN32_ERROR(2150891566);

const ERROR_NDIS_LOW_POWER_STATE = WIN32_ERROR(2150891567);

const ERROR_NDIS_REINIT_REQUIRED = WIN32_ERROR(2150891568);

const ERROR_NDIS_NO_QUEUES = WIN32_ERROR(2150891569);

const ERROR_NDIS_DOT11_AUTO_CONFIG_ENABLED = WIN32_ERROR(2150899712);

const ERROR_NDIS_DOT11_MEDIA_IN_USE = WIN32_ERROR(2150899713);

const ERROR_NDIS_DOT11_POWER_STATE_INVALID = WIN32_ERROR(2150899714);

const ERROR_NDIS_PM_WOL_PATTERN_LIST_FULL = WIN32_ERROR(2150899715);

const ERROR_NDIS_PM_PROTOCOL_OFFLOAD_LIST_FULL = WIN32_ERROR(2150899716);

const ERROR_NDIS_DOT11_AP_CHANNEL_CURRENTLY_NOT_AVAILABLE = WIN32_ERROR(
  2150899717,
);

const ERROR_NDIS_DOT11_AP_BAND_CURRENTLY_NOT_AVAILABLE = WIN32_ERROR(
  2150899718,
);

const ERROR_NDIS_DOT11_AP_CHANNEL_NOT_ALLOWED = WIN32_ERROR(2150899719);

const ERROR_NDIS_DOT11_AP_BAND_NOT_ALLOWED = WIN32_ERROR(2150899720);

const ERROR_NDIS_DOT11_AP_RADIO_RESTRICTION = WIN32_ERROR(2150899721);

const ERROR_NDIS_INDICATION_REQUIRED = WIN32_ERROR(3407873);

const ERROR_NDIS_OFFLOAD_POLICY = WIN32_ERROR(3224637455);

const ERROR_NDIS_OFFLOAD_CONNECTION_REJECTED = WIN32_ERROR(3224637458);

const ERROR_NDIS_OFFLOAD_PATH_REJECTED = WIN32_ERROR(3224637459);

const ERROR_HV_INVALID_HYPERCALL_CODE = WIN32_ERROR(3224698882);

const ERROR_HV_INVALID_HYPERCALL_INPUT = WIN32_ERROR(3224698883);

const ERROR_HV_INVALID_ALIGNMENT = WIN32_ERROR(3224698884);

const ERROR_HV_INVALID_PARAMETER = WIN32_ERROR(3224698885);

const ERROR_HV_ACCESS_DENIED = WIN32_ERROR(3224698886);

const ERROR_HV_INVALID_PARTITION_STATE = WIN32_ERROR(3224698887);

const ERROR_HV_OPERATION_DENIED = WIN32_ERROR(3224698888);

const ERROR_HV_UNKNOWN_PROPERTY = WIN32_ERROR(3224698889);

const ERROR_HV_PROPERTY_VALUE_OUT_OF_RANGE = WIN32_ERROR(3224698890);

const ERROR_HV_INSUFFICIENT_MEMORY = WIN32_ERROR(3224698891);

const ERROR_HV_PARTITION_TOO_DEEP = WIN32_ERROR(3224698892);

const ERROR_HV_INVALID_PARTITION_ID = WIN32_ERROR(3224698893);

const ERROR_HV_INVALID_VP_INDEX = WIN32_ERROR(3224698894);

const ERROR_HV_INVALID_PORT_ID = WIN32_ERROR(3224698897);

const ERROR_HV_INVALID_CONNECTION_ID = WIN32_ERROR(3224698898);

const ERROR_HV_INSUFFICIENT_BUFFERS = WIN32_ERROR(3224698899);

const ERROR_HV_NOT_ACKNOWLEDGED = WIN32_ERROR(3224698900);

const ERROR_HV_INVALID_VP_STATE = WIN32_ERROR(3224698901);

const ERROR_HV_ACKNOWLEDGED = WIN32_ERROR(3224698902);

const ERROR_HV_INVALID_SAVE_RESTORE_STATE = WIN32_ERROR(3224698903);

const ERROR_HV_INVALID_SYNIC_STATE = WIN32_ERROR(3224698904);

const ERROR_HV_OBJECT_IN_USE = WIN32_ERROR(3224698905);

const ERROR_HV_INVALID_PROXIMITY_DOMAIN_INFO = WIN32_ERROR(3224698906);

const ERROR_HV_NO_DATA = WIN32_ERROR(3224698907);

const ERROR_HV_INACTIVE = WIN32_ERROR(3224698908);

const ERROR_HV_NO_RESOURCES = WIN32_ERROR(3224698909);

const ERROR_HV_FEATURE_UNAVAILABLE = WIN32_ERROR(3224698910);

const ERROR_HV_INSUFFICIENT_BUFFER = WIN32_ERROR(3224698931);

const ERROR_HV_INSUFFICIENT_DEVICE_DOMAINS = WIN32_ERROR(3224698936);

const ERROR_HV_CPUID_FEATURE_VALIDATION = WIN32_ERROR(3224698940);

const ERROR_HV_CPUID_XSAVE_FEATURE_VALIDATION = WIN32_ERROR(3224698941);

const ERROR_HV_PROCESSOR_STARTUP_TIMEOUT = WIN32_ERROR(3224698942);

const ERROR_HV_SMX_ENABLED = WIN32_ERROR(3224698943);

const ERROR_HV_INVALID_LP_INDEX = WIN32_ERROR(3224698945);

const ERROR_HV_INVALID_REGISTER_VALUE = WIN32_ERROR(3224698960);

const ERROR_HV_INVALID_VTL_STATE = WIN32_ERROR(3224698961);

const ERROR_HV_NX_NOT_DETECTED = WIN32_ERROR(3224698965);

const ERROR_HV_INVALID_DEVICE_ID = WIN32_ERROR(3224698967);

const ERROR_HV_INVALID_DEVICE_STATE = WIN32_ERROR(3224698968);

const ERROR_HV_PENDING_PAGE_REQUESTS = WIN32_ERROR(3473497);

const ERROR_HV_PAGE_REQUEST_INVALID = WIN32_ERROR(3224698976);

const ERROR_HV_INVALID_CPU_GROUP_ID = WIN32_ERROR(3224698991);

const ERROR_HV_INVALID_CPU_GROUP_STATE = WIN32_ERROR(3224698992);

const ERROR_HV_OPERATION_FAILED = WIN32_ERROR(3224698993);

const ERROR_HV_NOT_ALLOWED_WITH_NESTED_VIRT_ACTIVE = WIN32_ERROR(3224698994);

const ERROR_HV_INSUFFICIENT_ROOT_MEMORY = WIN32_ERROR(3224698995);

const ERROR_HV_EVENT_BUFFER_ALREADY_FREED = WIN32_ERROR(3224698996);

const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY = WIN32_ERROR(3224698997);

const ERROR_HV_DEVICE_NOT_IN_DOMAIN = WIN32_ERROR(3224698998);

const ERROR_HV_NESTED_VM_EXIT = WIN32_ERROR(3224698999);

const ERROR_HV_MSR_ACCESS_FAILED = WIN32_ERROR(3224699008);

const ERROR_HV_INSUFFICIENT_MEMORY_MIRRORING = WIN32_ERROR(3224699009);

const ERROR_HV_INSUFFICIENT_CONTIGUOUS_MEMORY_MIRRORING = WIN32_ERROR(
  3224699010,
);

const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY = WIN32_ERROR(3224699011);

const ERROR_HV_INSUFFICIENT_ROOT_MEMORY_MIRRORING = WIN32_ERROR(3224699012);

const ERROR_HV_INSUFFICIENT_CONTIGUOUS_ROOT_MEMORY_MIRRORING = WIN32_ERROR(
  3224699013,
);

const ERROR_HV_VTL_ALREADY_ENABLED = WIN32_ERROR(3224699014);

const ERROR_HV_SPDM_REQUEST = WIN32_ERROR(3224699016);

const ERROR_HV_NOT_PRESENT = WIN32_ERROR(3224702976);

const ERROR_VID_DUPLICATE_HANDLER = WIN32_ERROR(3224829953);

const ERROR_VID_TOO_MANY_HANDLERS = WIN32_ERROR(3224829954);

const ERROR_VID_QUEUE_FULL = WIN32_ERROR(3224829955);

const ERROR_VID_HANDLER_NOT_PRESENT = WIN32_ERROR(3224829956);

const ERROR_VID_INVALID_OBJECT_NAME = WIN32_ERROR(3224829957);

const ERROR_VID_PARTITION_NAME_TOO_LONG = WIN32_ERROR(3224829958);

const ERROR_VID_MESSAGE_QUEUE_NAME_TOO_LONG = WIN32_ERROR(3224829959);

const ERROR_VID_PARTITION_ALREADY_EXISTS = WIN32_ERROR(3224829960);

const ERROR_VID_PARTITION_DOES_NOT_EXIST = WIN32_ERROR(3224829961);

const ERROR_VID_PARTITION_NAME_NOT_FOUND = WIN32_ERROR(3224829962);

const ERROR_VID_MESSAGE_QUEUE_ALREADY_EXISTS = WIN32_ERROR(3224829963);

const ERROR_VID_EXCEEDED_MBP_ENTRY_MAP_LIMIT = WIN32_ERROR(3224829964);

const ERROR_VID_MB_STILL_REFERENCED = WIN32_ERROR(3224829965);

const ERROR_VID_CHILD_GPA_PAGE_SET_CORRUPTED = WIN32_ERROR(3224829966);

const ERROR_VID_INVALID_NUMA_SETTINGS = WIN32_ERROR(3224829967);

const ERROR_VID_INVALID_NUMA_NODE_INDEX = WIN32_ERROR(3224829968);

const ERROR_VID_NOTIFICATION_QUEUE_ALREADY_ASSOCIATED = WIN32_ERROR(3224829969);

const ERROR_VID_INVALID_MEMORY_BLOCK_HANDLE = WIN32_ERROR(3224829970);

const ERROR_VID_PAGE_RANGE_OVERFLOW = WIN32_ERROR(3224829971);

const ERROR_VID_INVALID_MESSAGE_QUEUE_HANDLE = WIN32_ERROR(3224829972);

const ERROR_VID_INVALID_GPA_RANGE_HANDLE = WIN32_ERROR(3224829973);

const ERROR_VID_NO_MEMORY_BLOCK_NOTIFICATION_QUEUE = WIN32_ERROR(3224829974);

const ERROR_VID_MEMORY_BLOCK_LOCK_COUNT_EXCEEDED = WIN32_ERROR(3224829975);

const ERROR_VID_INVALID_PPM_HANDLE = WIN32_ERROR(3224829976);

const ERROR_VID_MBPS_ARE_LOCKED = WIN32_ERROR(3224829977);

const ERROR_VID_MESSAGE_QUEUE_CLOSED = WIN32_ERROR(3224829978);

const ERROR_VID_VIRTUAL_PROCESSOR_LIMIT_EXCEEDED = WIN32_ERROR(3224829979);

const ERROR_VID_STOP_PENDING = WIN32_ERROR(3224829980);

const ERROR_VID_INVALID_PROCESSOR_STATE = WIN32_ERROR(3224829981);

const ERROR_VID_EXCEEDED_KM_CONTEXT_COUNT_LIMIT = WIN32_ERROR(3224829982);

const ERROR_VID_KM_INTERFACE_ALREADY_INITIALIZED = WIN32_ERROR(3224829983);

const ERROR_VID_MB_PROPERTY_ALREADY_SET_RESET = WIN32_ERROR(3224829984);

const ERROR_VID_MMIO_RANGE_DESTROYED = WIN32_ERROR(3224829985);

const ERROR_VID_INVALID_CHILD_GPA_PAGE_SET = WIN32_ERROR(3224829986);

const ERROR_VID_RESERVE_PAGE_SET_IS_BEING_USED = WIN32_ERROR(3224829987);

const ERROR_VID_RESERVE_PAGE_SET_TOO_SMALL = WIN32_ERROR(3224829988);

const ERROR_VID_MBP_ALREADY_LOCKED_USING_RESERVED_PAGE = WIN32_ERROR(
  3224829989,
);

const ERROR_VID_MBP_COUNT_EXCEEDED_LIMIT = WIN32_ERROR(3224829990);

const ERROR_VID_SAVED_STATE_CORRUPT = WIN32_ERROR(3224829991);

const ERROR_VID_SAVED_STATE_UNRECOGNIZED_ITEM = WIN32_ERROR(3224829992);

const ERROR_VID_SAVED_STATE_INCOMPATIBLE = WIN32_ERROR(3224829993);

const ERROR_VID_VTL_ACCESS_DENIED = WIN32_ERROR(3224829994);

const ERROR_VID_INSUFFICIENT_RESOURCES_RESERVE = WIN32_ERROR(3224829995);

const ERROR_VID_INSUFFICIENT_RESOURCES_PHYSICAL_BUFFER = WIN32_ERROR(
  3224829996,
);

const ERROR_VID_INSUFFICIENT_RESOURCES_HV_DEPOSIT = WIN32_ERROR(3224829997);

const ERROR_VID_MEMORY_TYPE_NOT_SUPPORTED = WIN32_ERROR(3224829998);

const ERROR_VID_INSUFFICIENT_RESOURCES_WITHDRAW = WIN32_ERROR(3224829999);

const ERROR_VID_PROCESS_ALREADY_SET = WIN32_ERROR(3224830000);

const ERROR_VMCOMPUTE_TERMINATED_DURING_START = WIN32_ERROR(3224830208);

const ERROR_VMCOMPUTE_IMAGE_MISMATCH = WIN32_ERROR(3224830209);

const ERROR_VMCOMPUTE_HYPERV_NOT_INSTALLED = WIN32_ERROR(3224830210);

const ERROR_VMCOMPUTE_OPERATION_PENDING = WIN32_ERROR(3224830211);

const ERROR_VMCOMPUTE_TOO_MANY_NOTIFICATIONS = WIN32_ERROR(3224830212);

const ERROR_VMCOMPUTE_INVALID_STATE = WIN32_ERROR(3224830213);

const ERROR_VMCOMPUTE_UNEXPECTED_EXIT = WIN32_ERROR(3224830214);

const ERROR_VMCOMPUTE_TERMINATED = WIN32_ERROR(3224830215);

const ERROR_VMCOMPUTE_CONNECT_FAILED = WIN32_ERROR(3224830216);

const ERROR_VMCOMPUTE_TIMEOUT = WIN32_ERROR(3224830217);

const ERROR_VMCOMPUTE_CONNECTION_CLOSED = WIN32_ERROR(3224830218);

const ERROR_VMCOMPUTE_UNKNOWN_MESSAGE = WIN32_ERROR(3224830219);

const ERROR_VMCOMPUTE_UNSUPPORTED_PROTOCOL_VERSION = WIN32_ERROR(3224830220);

const ERROR_VMCOMPUTE_INVALID_JSON = WIN32_ERROR(3224830221);

const ERROR_VMCOMPUTE_SYSTEM_NOT_FOUND = WIN32_ERROR(3224830222);

const ERROR_VMCOMPUTE_SYSTEM_ALREADY_EXISTS = WIN32_ERROR(3224830223);

const ERROR_VMCOMPUTE_SYSTEM_ALREADY_STOPPED = WIN32_ERROR(3224830224);

const ERROR_VMCOMPUTE_PROTOCOL_ERROR = WIN32_ERROR(3224830225);

const ERROR_VMCOMPUTE_INVALID_LAYER = WIN32_ERROR(3224830226);

const ERROR_VMCOMPUTE_WINDOWS_INSIDER_REQUIRED = WIN32_ERROR(3224830227);

const ERROR_VNET_VIRTUAL_SWITCH_NAME_NOT_FOUND = WIN32_ERROR(3224830464);

const ERROR_VID_REMOTE_NODE_PARENT_GPA_PAGES_USED = WIN32_ERROR(2151088129);

const ERROR_VSMB_SAVED_STATE_FILE_NOT_FOUND = WIN32_ERROR(3224830976);

const ERROR_VSMB_SAVED_STATE_CORRUPT = WIN32_ERROR(3224830977);

const ERROR_VOLMGR_INCOMPLETE_REGENERATION = WIN32_ERROR(2151153665);

const ERROR_VOLMGR_INCOMPLETE_DISK_MIGRATION = WIN32_ERROR(2151153666);

const ERROR_VOLMGR_DATABASE_FULL = WIN32_ERROR(3224895489);

const ERROR_VOLMGR_DISK_CONFIGURATION_CORRUPTED = WIN32_ERROR(3224895490);

const ERROR_VOLMGR_DISK_CONFIGURATION_NOT_IN_SYNC = WIN32_ERROR(3224895491);

const ERROR_VOLMGR_PACK_CONFIG_UPDATE_FAILED = WIN32_ERROR(3224895492);

const ERROR_VOLMGR_DISK_CONTAINS_NON_SIMPLE_VOLUME = WIN32_ERROR(3224895493);

const ERROR_VOLMGR_DISK_DUPLICATE = WIN32_ERROR(3224895494);

const ERROR_VOLMGR_DISK_DYNAMIC = WIN32_ERROR(3224895495);

const ERROR_VOLMGR_DISK_ID_INVALID = WIN32_ERROR(3224895496);

const ERROR_VOLMGR_DISK_INVALID = WIN32_ERROR(3224895497);

const ERROR_VOLMGR_DISK_LAST_VOTER = WIN32_ERROR(3224895498);

const ERROR_VOLMGR_DISK_LAYOUT_INVALID = WIN32_ERROR(3224895499);

const ERROR_VOLMGR_DISK_LAYOUT_NON_BASIC_BETWEEN_BASIC_PARTITIONS = WIN32_ERROR(
  3224895500,
);

const ERROR_VOLMGR_DISK_LAYOUT_NOT_CYLINDER_ALIGNED = WIN32_ERROR(3224895501);

const ERROR_VOLMGR_DISK_LAYOUT_PARTITIONS_TOO_SMALL = WIN32_ERROR(3224895502);

const ERROR_VOLMGR_DISK_LAYOUT_PRIMARY_BETWEEN_LOGICAL_PARTITIONS = WIN32_ERROR(
  3224895503,
);

const ERROR_VOLMGR_DISK_LAYOUT_TOO_MANY_PARTITIONS = WIN32_ERROR(3224895504);

const ERROR_VOLMGR_DISK_MISSING = WIN32_ERROR(3224895505);

const ERROR_VOLMGR_DISK_NOT_EMPTY = WIN32_ERROR(3224895506);

const ERROR_VOLMGR_DISK_NOT_ENOUGH_SPACE = WIN32_ERROR(3224895507);

const ERROR_VOLMGR_DISK_REVECTORING_FAILED = WIN32_ERROR(3224895508);

const ERROR_VOLMGR_DISK_SECTOR_SIZE_INVALID = WIN32_ERROR(3224895509);

const ERROR_VOLMGR_DISK_SET_NOT_CONTAINED = WIN32_ERROR(3224895510);

const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_MEMBERS = WIN32_ERROR(3224895511);

const ERROR_VOLMGR_DISK_USED_BY_MULTIPLE_PLEXES = WIN32_ERROR(3224895512);

const ERROR_VOLMGR_DYNAMIC_DISK_NOT_SUPPORTED = WIN32_ERROR(3224895513);

const ERROR_VOLMGR_EXTENT_ALREADY_USED = WIN32_ERROR(3224895514);

const ERROR_VOLMGR_EXTENT_NOT_CONTIGUOUS = WIN32_ERROR(3224895515);

const ERROR_VOLMGR_EXTENT_NOT_IN_PUBLIC_REGION = WIN32_ERROR(3224895516);

const ERROR_VOLMGR_EXTENT_NOT_SECTOR_ALIGNED = WIN32_ERROR(3224895517);

const ERROR_VOLMGR_EXTENT_OVERLAPS_EBR_PARTITION = WIN32_ERROR(3224895518);

const ERROR_VOLMGR_EXTENT_VOLUME_LENGTHS_DO_NOT_MATCH = WIN32_ERROR(3224895519);

const ERROR_VOLMGR_FAULT_TOLERANT_NOT_SUPPORTED = WIN32_ERROR(3224895520);

const ERROR_VOLMGR_INTERLEAVE_LENGTH_INVALID = WIN32_ERROR(3224895521);

const ERROR_VOLMGR_MAXIMUM_REGISTERED_USERS = WIN32_ERROR(3224895522);

const ERROR_VOLMGR_MEMBER_IN_SYNC = WIN32_ERROR(3224895523);

const ERROR_VOLMGR_MEMBER_INDEX_DUPLICATE = WIN32_ERROR(3224895524);

const ERROR_VOLMGR_MEMBER_INDEX_INVALID = WIN32_ERROR(3224895525);

const ERROR_VOLMGR_MEMBER_MISSING = WIN32_ERROR(3224895526);

const ERROR_VOLMGR_MEMBER_NOT_DETACHED = WIN32_ERROR(3224895527);

const ERROR_VOLMGR_MEMBER_REGENERATING = WIN32_ERROR(3224895528);

const ERROR_VOLMGR_ALL_DISKS_FAILED = WIN32_ERROR(3224895529);

const ERROR_VOLMGR_NO_REGISTERED_USERS = WIN32_ERROR(3224895530);

const ERROR_VOLMGR_NO_SUCH_USER = WIN32_ERROR(3224895531);

const ERROR_VOLMGR_NOTIFICATION_RESET = WIN32_ERROR(3224895532);

const ERROR_VOLMGR_NUMBER_OF_MEMBERS_INVALID = WIN32_ERROR(3224895533);

const ERROR_VOLMGR_NUMBER_OF_PLEXES_INVALID = WIN32_ERROR(3224895534);

const ERROR_VOLMGR_PACK_DUPLICATE = WIN32_ERROR(3224895535);

const ERROR_VOLMGR_PACK_ID_INVALID = WIN32_ERROR(3224895536);

const ERROR_VOLMGR_PACK_INVALID = WIN32_ERROR(3224895537);

const ERROR_VOLMGR_PACK_NAME_INVALID = WIN32_ERROR(3224895538);

const ERROR_VOLMGR_PACK_OFFLINE = WIN32_ERROR(3224895539);

const ERROR_VOLMGR_PACK_HAS_QUORUM = WIN32_ERROR(3224895540);

const ERROR_VOLMGR_PACK_WITHOUT_QUORUM = WIN32_ERROR(3224895541);

const ERROR_VOLMGR_PARTITION_STYLE_INVALID = WIN32_ERROR(3224895542);

const ERROR_VOLMGR_PARTITION_UPDATE_FAILED = WIN32_ERROR(3224895543);

const ERROR_VOLMGR_PLEX_IN_SYNC = WIN32_ERROR(3224895544);

const ERROR_VOLMGR_PLEX_INDEX_DUPLICATE = WIN32_ERROR(3224895545);

const ERROR_VOLMGR_PLEX_INDEX_INVALID = WIN32_ERROR(3224895546);

const ERROR_VOLMGR_PLEX_LAST_ACTIVE = WIN32_ERROR(3224895547);

const ERROR_VOLMGR_PLEX_MISSING = WIN32_ERROR(3224895548);

const ERROR_VOLMGR_PLEX_REGENERATING = WIN32_ERROR(3224895549);

const ERROR_VOLMGR_PLEX_TYPE_INVALID = WIN32_ERROR(3224895550);

const ERROR_VOLMGR_PLEX_NOT_RAID5 = WIN32_ERROR(3224895551);

const ERROR_VOLMGR_PLEX_NOT_SIMPLE = WIN32_ERROR(3224895552);

const ERROR_VOLMGR_STRUCTURE_SIZE_INVALID = WIN32_ERROR(3224895553);

const ERROR_VOLMGR_TOO_MANY_NOTIFICATION_REQUESTS = WIN32_ERROR(3224895554);

const ERROR_VOLMGR_TRANSACTION_IN_PROGRESS = WIN32_ERROR(3224895555);

const ERROR_VOLMGR_UNEXPECTED_DISK_LAYOUT_CHANGE = WIN32_ERROR(3224895556);

const ERROR_VOLMGR_VOLUME_CONTAINS_MISSING_DISK = WIN32_ERROR(3224895557);

const ERROR_VOLMGR_VOLUME_ID_INVALID = WIN32_ERROR(3224895558);

const ERROR_VOLMGR_VOLUME_LENGTH_INVALID = WIN32_ERROR(3224895559);

const ERROR_VOLMGR_VOLUME_LENGTH_NOT_SECTOR_SIZE_MULTIPLE = WIN32_ERROR(
  3224895560,
);

const ERROR_VOLMGR_VOLUME_NOT_MIRRORED = WIN32_ERROR(3224895561);

const ERROR_VOLMGR_VOLUME_NOT_RETAINED = WIN32_ERROR(3224895562);

const ERROR_VOLMGR_VOLUME_OFFLINE = WIN32_ERROR(3224895563);

const ERROR_VOLMGR_VOLUME_RETAINED = WIN32_ERROR(3224895564);

const ERROR_VOLMGR_NUMBER_OF_EXTENTS_INVALID = WIN32_ERROR(3224895565);

const ERROR_VOLMGR_DIFFERENT_SECTOR_SIZE = WIN32_ERROR(3224895566);

const ERROR_VOLMGR_BAD_BOOT_DISK = WIN32_ERROR(3224895567);

const ERROR_VOLMGR_PACK_CONFIG_OFFLINE = WIN32_ERROR(3224895568);

const ERROR_VOLMGR_PACK_CONFIG_ONLINE = WIN32_ERROR(3224895569);

const ERROR_VOLMGR_NOT_PRIMARY_PACK = WIN32_ERROR(3224895570);

const ERROR_VOLMGR_PACK_LOG_UPDATE_FAILED = WIN32_ERROR(3224895571);

const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_PLEX_INVALID = WIN32_ERROR(3224895572);

const ERROR_VOLMGR_NUMBER_OF_DISKS_IN_MEMBER_INVALID = WIN32_ERROR(3224895573);

const ERROR_VOLMGR_VOLUME_MIRRORED = WIN32_ERROR(3224895574);

const ERROR_VOLMGR_PLEX_NOT_SIMPLE_SPANNED = WIN32_ERROR(3224895575);

const ERROR_VOLMGR_NO_VALID_LOG_COPIES = WIN32_ERROR(3224895576);

const ERROR_VOLMGR_PRIMARY_PACK_PRESENT = WIN32_ERROR(3224895577);

const ERROR_VOLMGR_NUMBER_OF_DISKS_INVALID = WIN32_ERROR(3224895578);

const ERROR_VOLMGR_MIRROR_NOT_SUPPORTED = WIN32_ERROR(3224895579);

const ERROR_VOLMGR_RAID5_NOT_SUPPORTED = WIN32_ERROR(3224895580);

const ERROR_BCD_NOT_ALL_ENTRIES_IMPORTED = WIN32_ERROR(2151219201);

const ERROR_BCD_TOO_MANY_ELEMENTS = WIN32_ERROR(3224961026);

const ERROR_BCD_NOT_ALL_ENTRIES_SYNCHRONIZED = WIN32_ERROR(2151219203);

const ERROR_VHD_DRIVE_FOOTER_MISSING = WIN32_ERROR(3225026561);

const ERROR_VHD_DRIVE_FOOTER_CHECKSUM_MISMATCH = WIN32_ERROR(3225026562);

const ERROR_VHD_DRIVE_FOOTER_CORRUPT = WIN32_ERROR(3225026563);

const ERROR_VHD_FORMAT_UNKNOWN = WIN32_ERROR(3225026564);

const ERROR_VHD_FORMAT_UNSUPPORTED_VERSION = WIN32_ERROR(3225026565);

const ERROR_VHD_SPARSE_HEADER_CHECKSUM_MISMATCH = WIN32_ERROR(3225026566);

const ERROR_VHD_SPARSE_HEADER_UNSUPPORTED_VERSION = WIN32_ERROR(3225026567);

const ERROR_VHD_SPARSE_HEADER_CORRUPT = WIN32_ERROR(3225026568);

const ERROR_VHD_BLOCK_ALLOCATION_FAILURE = WIN32_ERROR(3225026569);

const ERROR_VHD_BLOCK_ALLOCATION_TABLE_CORRUPT = WIN32_ERROR(3225026570);

const ERROR_VHD_INVALID_BLOCK_SIZE = WIN32_ERROR(3225026571);

const ERROR_VHD_BITMAP_MISMATCH = WIN32_ERROR(3225026572);

const ERROR_VHD_PARENT_VHD_NOT_FOUND = WIN32_ERROR(3225026573);

const ERROR_VHD_CHILD_PARENT_ID_MISMATCH = WIN32_ERROR(3225026574);

const ERROR_VHD_CHILD_PARENT_TIMESTAMP_MISMATCH = WIN32_ERROR(3225026575);

const ERROR_VHD_METADATA_READ_FAILURE = WIN32_ERROR(3225026576);

const ERROR_VHD_METADATA_WRITE_FAILURE = WIN32_ERROR(3225026577);

const ERROR_VHD_INVALID_SIZE = WIN32_ERROR(3225026578);

const ERROR_VHD_INVALID_FILE_SIZE = WIN32_ERROR(3225026579);

const ERROR_VIRTDISK_PROVIDER_NOT_FOUND = WIN32_ERROR(3225026580);

const ERROR_VIRTDISK_NOT_VIRTUAL_DISK = WIN32_ERROR(3225026581);

const ERROR_VHD_PARENT_VHD_ACCESS_DENIED = WIN32_ERROR(3225026582);

const ERROR_VHD_CHILD_PARENT_SIZE_MISMATCH = WIN32_ERROR(3225026583);

const ERROR_VHD_DIFFERENCING_CHAIN_CYCLE_DETECTED = WIN32_ERROR(3225026584);

const ERROR_VHD_DIFFERENCING_CHAIN_ERROR_IN_PARENT = WIN32_ERROR(3225026585);

const ERROR_VIRTUAL_DISK_LIMITATION = WIN32_ERROR(3225026586);

const ERROR_VHD_INVALID_TYPE = WIN32_ERROR(3225026587);

const ERROR_VHD_INVALID_STATE = WIN32_ERROR(3225026588);

const ERROR_VIRTDISK_UNSUPPORTED_DISK_SECTOR_SIZE = WIN32_ERROR(3225026589);

const ERROR_VIRTDISK_DISK_ALREADY_OWNED = WIN32_ERROR(3225026590);

const ERROR_VIRTDISK_DISK_ONLINE_AND_WRITABLE = WIN32_ERROR(3225026591);

const ERROR_CTLOG_TRACKING_NOT_INITIALIZED = WIN32_ERROR(3225026592);

const ERROR_CTLOG_LOGFILE_SIZE_EXCEEDED_MAXSIZE = WIN32_ERROR(3225026593);

const ERROR_CTLOG_VHD_CHANGED_OFFLINE = WIN32_ERROR(3225026594);

const ERROR_CTLOG_INVALID_TRACKING_STATE = WIN32_ERROR(3225026595);

const ERROR_CTLOG_INCONSISTENT_TRACKING_FILE = WIN32_ERROR(3225026596);

const ERROR_VHD_RESIZE_WOULD_TRUNCATE_DATA = WIN32_ERROR(3225026597);

const ERROR_VHD_COULD_NOT_COMPUTE_MINIMUM_VIRTUAL_SIZE = WIN32_ERROR(
  3225026598,
);

const ERROR_VHD_ALREADY_AT_OR_BELOW_MINIMUM_VIRTUAL_SIZE = WIN32_ERROR(
  3225026599,
);

const ERROR_VHD_METADATA_FULL = WIN32_ERROR(3225026600);

const ERROR_VHD_INVALID_CHANGE_TRACKING_ID = WIN32_ERROR(3225026601);

const ERROR_VHD_CHANGE_TRACKING_DISABLED = WIN32_ERROR(3225026602);

const ERROR_VHD_MISSING_CHANGE_TRACKING_INFORMATION = WIN32_ERROR(3225026608);

const ERROR_VHD_UNEXPECTED_ID = WIN32_ERROR(3225026612);

const ERROR_QUERY_STORAGE_ERROR = WIN32_ERROR(2151284737);

/// {@category enum}
extension type const WINDOWPARTS(int _) implements int {}

const WP_CAPTION = WINDOWPARTS(1);

const WP_SMALLCAPTION = WINDOWPARTS(2);

const WP_MINCAPTION = WINDOWPARTS(3);

const WP_SMALLMINCAPTION = WINDOWPARTS(4);

const WP_MAXCAPTION = WINDOWPARTS(5);

const WP_SMALLMAXCAPTION = WINDOWPARTS(6);

const WP_FRAMELEFT = WINDOWPARTS(7);

const WP_FRAMERIGHT = WINDOWPARTS(8);

const WP_FRAMEBOTTOM = WINDOWPARTS(9);

const WP_SMALLFRAMELEFT = WINDOWPARTS(10);

const WP_SMALLFRAMERIGHT = WINDOWPARTS(11);

const WP_SMALLFRAMEBOTTOM = WINDOWPARTS(12);

const WP_SYSBUTTON = WINDOWPARTS(13);

const WP_MDISYSBUTTON = WINDOWPARTS(14);

const WP_MINBUTTON = WINDOWPARTS(15);

const WP_MDIMINBUTTON = WINDOWPARTS(16);

const WP_MAXBUTTON = WINDOWPARTS(17);

const WP_CLOSEBUTTON = WINDOWPARTS(18);

const WP_SMALLCLOSEBUTTON = WINDOWPARTS(19);

const WP_MDICLOSEBUTTON = WINDOWPARTS(20);

const WP_RESTOREBUTTON = WINDOWPARTS(21);

const WP_MDIRESTOREBUTTON = WINDOWPARTS(22);

const WP_HELPBUTTON = WINDOWPARTS(23);

const WP_MDIHELPBUTTON = WINDOWPARTS(24);

const WP_HORZSCROLL = WINDOWPARTS(25);

const WP_HORZTHUMB = WINDOWPARTS(26);

const WP_VERTSCROLL = WINDOWPARTS(27);

const WP_VERTTHUMB = WINDOWPARTS(28);

const WP_DIALOG = WINDOWPARTS(29);

const WP_CAPTIONSIZINGTEMPLATE = WINDOWPARTS(30);

const WP_SMALLCAPTIONSIZINGTEMPLATE = WINDOWPARTS(31);

const WP_FRAMELEFTSIZINGTEMPLATE = WINDOWPARTS(32);

const WP_SMALLFRAMELEFTSIZINGTEMPLATE = WINDOWPARTS(33);

const WP_FRAMERIGHTSIZINGTEMPLATE = WINDOWPARTS(34);

const WP_SMALLFRAMERIGHTSIZINGTEMPLATE = WINDOWPARTS(35);

const WP_FRAMEBOTTOMSIZINGTEMPLATE = WINDOWPARTS(36);

const WP_SMALLFRAMEBOTTOMSIZINGTEMPLATE = WINDOWPARTS(37);

const WP_FRAME = WINDOWPARTS(38);

const WP_BORDER = WINDOWPARTS(39);

/// {@category enum}
extension type const WINDOWPLACEMENT_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(WINDOWPLACEMENT_FLAGS other) => _ & other._ == other._;

  WINDOWPLACEMENT_FLAGS operator &(int other) => .new(_ & other);
  WINDOWPLACEMENT_FLAGS operator |(int other) => .new(_ | other);
}

const WPF_ASYNCWINDOWPLACEMENT = WINDOWPLACEMENT_FLAGS(4);

const WPF_RESTORETOMAXIMIZED = WINDOWPLACEMENT_FLAGS(2);

const WPF_SETMINPOSITION = WINDOWPLACEMENT_FLAGS(1);

/// {@category enum}
extension type const WINDOWS_HOOK_ID(int _) implements int {}

const WH_CALLWNDPROC = WINDOWS_HOOK_ID(4);

const WH_CALLWNDPROCRET = WINDOWS_HOOK_ID(12);

const WH_CBT = WINDOWS_HOOK_ID(5);

const WH_DEBUG = WINDOWS_HOOK_ID(9);

const WH_FOREGROUNDIDLE = WINDOWS_HOOK_ID(11);

const WH_GETMESSAGE = WINDOWS_HOOK_ID(3);

const WH_JOURNALPLAYBACK = WINDOWS_HOOK_ID(1);

const WH_JOURNALRECORD = WINDOWS_HOOK_ID(0);

const WH_KEYBOARD = WINDOWS_HOOK_ID(2);

const WH_KEYBOARD_LL = WINDOWS_HOOK_ID(13);

const WH_MOUSE = WINDOWS_HOOK_ID(7);

const WH_MOUSE_LL = WINDOWS_HOOK_ID(14);

const WH_MSGFILTER = WINDOWS_HOOK_ID(-1);

const WH_SHELL = WINDOWS_HOOK_ID(10);

const WH_SYSMSGFILTER = WINDOWS_HOOK_ID(6);

/// Specifies the type of visual style attribute to set on a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/ne-uxtheme-windowthemeattributetype>.
///
/// {@category enum}
extension type const WINDOWTHEMEATTRIBUTETYPE(int _) implements int {}

/// Non-client area window attributes will be set.
const WTA_NONCLIENT = WINDOWTHEMEATTRIBUTETYPE(1);

/// {@category enum}
extension type const WINDOW_DISPLAY_AFFINITY(int _) implements int {}

const WDA_NONE = WINDOW_DISPLAY_AFFINITY(0);

const WDA_MONITOR = WINDOW_DISPLAY_AFFINITY(1);

const WDA_EXCLUDEFROMCAPTURE = WINDOW_DISPLAY_AFFINITY(17);

/// {@category enum}
extension type const WINDOW_EX_STYLE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(WINDOW_EX_STYLE other) => _ & other._ == other._;

  WINDOW_EX_STYLE operator &(int other) => .new(_ & other);
  WINDOW_EX_STYLE operator |(int other) => .new(_ | other);
}

const WS_EX_DLGMODALFRAME = WINDOW_EX_STYLE(1);

const WS_EX_NOPARENTNOTIFY = WINDOW_EX_STYLE(4);

const WS_EX_TOPMOST = WINDOW_EX_STYLE(8);

const WS_EX_ACCEPTFILES = WINDOW_EX_STYLE(16);

const WS_EX_TRANSPARENT = WINDOW_EX_STYLE(32);

const WS_EX_MDICHILD = WINDOW_EX_STYLE(64);

const WS_EX_TOOLWINDOW = WINDOW_EX_STYLE(128);

const WS_EX_WINDOWEDGE = WINDOW_EX_STYLE(256);

const WS_EX_CLIENTEDGE = WINDOW_EX_STYLE(512);

const WS_EX_CONTEXTHELP = WINDOW_EX_STYLE(1024);

const WS_EX_RIGHT = WINDOW_EX_STYLE(4096);

const WS_EX_LEFT = WINDOW_EX_STYLE(0);

const WS_EX_RTLREADING = WINDOW_EX_STYLE(8192);

const WS_EX_LTRREADING = WINDOW_EX_STYLE(0);

const WS_EX_LEFTSCROLLBAR = WINDOW_EX_STYLE(16384);

const WS_EX_RIGHTSCROLLBAR = WINDOW_EX_STYLE(0);

const WS_EX_CONTROLPARENT = WINDOW_EX_STYLE(65536);

const WS_EX_STATICEDGE = WINDOW_EX_STYLE(131072);

const WS_EX_APPWINDOW = WINDOW_EX_STYLE(262144);

const WS_EX_OVERLAPPEDWINDOW = WINDOW_EX_STYLE(768);

const WS_EX_PALETTEWINDOW = WINDOW_EX_STYLE(392);

const WS_EX_LAYERED = WINDOW_EX_STYLE(524288);

const WS_EX_NOINHERITLAYOUT = WINDOW_EX_STYLE(1048576);

const WS_EX_NOREDIRECTIONBITMAP = WINDOW_EX_STYLE(2097152);

const WS_EX_LAYOUTRTL = WINDOW_EX_STYLE(4194304);

const WS_EX_COMPOSITED = WINDOW_EX_STYLE(33554432);

const WS_EX_NOACTIVATE = WINDOW_EX_STYLE(134217728);

/// {@category enum}
extension type const WINDOW_LONG_PTR_INDEX(int _) implements int {}

const GWL_EXSTYLE = WINDOW_LONG_PTR_INDEX(-20);

const GWLP_HINSTANCE = WINDOW_LONG_PTR_INDEX(-6);

const GWLP_HWNDPARENT = WINDOW_LONG_PTR_INDEX(-8);

const GWLP_ID = WINDOW_LONG_PTR_INDEX(-12);

const GWL_STYLE = WINDOW_LONG_PTR_INDEX(-16);

const GWLP_USERDATA = WINDOW_LONG_PTR_INDEX(-21);

const GWLP_WNDPROC = WINDOW_LONG_PTR_INDEX(-4);

const GWL_HINSTANCE = WINDOW_LONG_PTR_INDEX(-6);

const GWL_ID = WINDOW_LONG_PTR_INDEX(-12);

const GWL_USERDATA = WINDOW_LONG_PTR_INDEX(-21);

const GWL_WNDPROC = WINDOW_LONG_PTR_INDEX(-4);

const GWL_HWNDPARENT = WINDOW_LONG_PTR_INDEX(-8);

/// {@category enum}
extension type const WINDOW_MESSAGE_FILTER_ACTION(int _) implements int {}

const MSGFLT_ALLOW = WINDOW_MESSAGE_FILTER_ACTION(1);

const MSGFLT_DISALLOW = WINDOW_MESSAGE_FILTER_ACTION(2);

const MSGFLT_RESET = WINDOW_MESSAGE_FILTER_ACTION(0);

/// {@category enum}
extension type const WINDOW_STYLE(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(WINDOW_STYLE other) => _ & other._ == other._;

  WINDOW_STYLE operator &(int other) => .new(_ & other);
  WINDOW_STYLE operator |(int other) => .new(_ | other);
}

const WS_OVERLAPPED = WINDOW_STYLE(0);

const WS_POPUP = WINDOW_STYLE(2147483648);

const WS_CHILD = WINDOW_STYLE(1073741824);

const WS_MINIMIZE = WINDOW_STYLE(536870912);

const WS_VISIBLE = WINDOW_STYLE(268435456);

const WS_DISABLED = WINDOW_STYLE(134217728);

const WS_CLIPSIBLINGS = WINDOW_STYLE(67108864);

const WS_CLIPCHILDREN = WINDOW_STYLE(33554432);

const WS_MAXIMIZE = WINDOW_STYLE(16777216);

const WS_CAPTION = WINDOW_STYLE(12582912);

const WS_BORDER = WINDOW_STYLE(8388608);

const WS_DLGFRAME = WINDOW_STYLE(4194304);

const WS_VSCROLL = WINDOW_STYLE(2097152);

const WS_HSCROLL = WINDOW_STYLE(1048576);

const WS_SYSMENU = WINDOW_STYLE(524288);

const WS_THICKFRAME = WINDOW_STYLE(262144);

const WS_GROUP = WINDOW_STYLE(131072);

const WS_TABSTOP = WINDOW_STYLE(65536);

const WS_MINIMIZEBOX = WINDOW_STYLE(131072);

const WS_MAXIMIZEBOX = WINDOW_STYLE(65536);

const WS_TILED = WINDOW_STYLE(0);

const WS_ICONIC = WINDOW_STYLE(536870912);

const WS_SIZEBOX = WINDOW_STYLE(262144);

const WS_TILEDWINDOW = WINDOW_STYLE(13565952);

const WS_OVERLAPPEDWINDOW = WINDOW_STYLE(13565952);

const WS_POPUPWINDOW = WINDOW_STYLE(2156396544);

const WS_CHILDWINDOW = WINDOW_STYLE(1073741824);

const WS_ACTIVECAPTION = WINDOW_STYLE(1);

/// {@category enum}
extension type const WINSOCK_SHUTDOWN_HOW(int _) implements int {}

const SD_RECEIVE = WINSOCK_SHUTDOWN_HOW(0);

const SD_SEND = WINSOCK_SHUTDOWN_HOW(1);

const SD_BOTH = WINSOCK_SHUTDOWN_HOW(2);

/// {@category enum}
extension type const WINSOCK_SOCKET_TYPE(int _) implements int {}

const SOCK_STREAM = WINSOCK_SOCKET_TYPE(1);

const SOCK_DGRAM = WINSOCK_SOCKET_TYPE(2);

const SOCK_RAW = WINSOCK_SOCKET_TYPE(3);

const SOCK_RDM = WINSOCK_SOCKET_TYPE(4);

const SOCK_SEQPACKET = WINSOCK_SOCKET_TYPE(5);

/// Specifies an automatic configuration parameter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_autoconf_opcode~r1>.
///
/// {@category enum}
extension type const WLAN_AUTOCONF_OPCODE(int _) implements int {}

const wlan_autoconf_opcode_start = WLAN_AUTOCONF_OPCODE(0);

/// The opcode used to set or query the parameter specifying whether user and
/// group policy denied networks will be included in the available networks
/// list.
const wlan_autoconf_opcode_show_denied_networks = WLAN_AUTOCONF_OPCODE(1);

/// The opcode used to query the power settings.
const wlan_autoconf_opcode_power_setting = WLAN_AUTOCONF_OPCODE(2);

/// The opcode used to query whether profiles not created by group policy can be
/// used to connect to an allowed network with a matching group policy profile.
const wlan_autoconf_opcode_only_use_gp_profiles_for_allowed_networks =
    WLAN_AUTOCONF_OPCODE(3);

/// The opcode used to set or query whether the current wireless interface has
/// shared user credentials allowed.
const wlan_autoconf_opcode_allow_explicit_creds = WLAN_AUTOCONF_OPCODE(4);

/// The opcode used to set or query the blocked period setting for the current
/// wireless interface.
const wlan_autoconf_opcode_block_period = WLAN_AUTOCONF_OPCODE(5);

/// The opcode used to set or query whether extensibility on a virtual station
/// is allowed.
const wlan_autoconf_opcode_allow_virtual_station_extensibility =
    WLAN_AUTOCONF_OPCODE(6);

const wlan_autoconf_opcode_end = WLAN_AUTOCONF_OPCODE(7);

/// Defines the mode of connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_connection_mode>.
///
/// {@category enum}
extension type const WLAN_CONNECTION_MODE(int _) implements int {}

/// A profile will be used to make the connection.
const wlan_connection_mode_profile = WLAN_CONNECTION_MODE(0);

/// A temporary profile will be used to make the connection.
const wlan_connection_mode_temporary_profile = WLAN_CONNECTION_MODE(1);

/// Secure discovery will be used to make the connection.
const wlan_connection_mode_discovery_secure = WLAN_CONNECTION_MODE(2);

/// Unsecure discovery will be used to make the connection.
const wlan_connection_mode_discovery_unsecure = WLAN_CONNECTION_MODE(3);

/// The connection is initiated by the wireless service automatically using a
/// persistent profile.
const wlan_connection_mode_auto = WLAN_CONNECTION_MODE(4);

const wlan_connection_mode_invalid = WLAN_CONNECTION_MODE(5);

/// {@category enum}
extension type const WLAN_CONNECTION_NOTIFICATION_FLAGS(int _) implements int {}

const WLAN_CONNECTION_NOTIFICATION_ADHOC_NETWORK_FORMED =
    WLAN_CONNECTION_NOTIFICATION_FLAGS(1);

const WLAN_CONNECTION_NOTIFICATION_CONSOLE_USER_PROFILE =
    WLAN_CONNECTION_NOTIFICATION_FLAGS(4);

/// Indicates types of filter lists.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_filter_list_type>.
///
/// {@category enum}
extension type const WLAN_FILTER_LIST_TYPE(int _) implements int {}

/// Group policy permit list.
const wlan_filter_list_type_gp_permit = WLAN_FILTER_LIST_TYPE(0);

/// Group policy deny list.
const wlan_filter_list_type_gp_deny = WLAN_FILTER_LIST_TYPE(1);

/// User permit list.
const wlan_filter_list_type_user_permit = WLAN_FILTER_LIST_TYPE(2);

/// User deny list.
const wlan_filter_list_type_user_deny = WLAN_FILTER_LIST_TYPE(3);

/// Specifies the possible values of the operation code for the properties to
/// query or set on the wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_opcode>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_OPCODE(int _) implements int {}

/// The opcode used to query or set the wireless Hosted Network connection
/// settings.
const wlan_hosted_network_opcode_connection_settings =
    WLAN_HOSTED_NETWORK_OPCODE(0);

/// The opcode used to query the wireless Hosted Network security settings.
const wlan_hosted_network_opcode_security_settings = WLAN_HOSTED_NETWORK_OPCODE(
  1,
);

/// The opcode used to query the wireless Hosted Network station profile.
const wlan_hosted_network_opcode_station_profile = WLAN_HOSTED_NETWORK_OPCODE(
  2,
);

/// The opcode used to query or set the wireless Hosted Network enabled flag.
const wlan_hosted_network_opcode_enable = WLAN_HOSTED_NETWORK_OPCODE(3);

/// Specifies the possible values for the authentication state of a peer on the
/// wireless Hosted Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_peer_auth_state>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(int _)
    implements int {}

/// An invalid peer state.
const wlan_hosted_network_peer_state_invalid =
    WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(0);

/// The peer is authenticated.
const wlan_hosted_network_peer_state_authenticated =
    WLAN_HOSTED_NETWORK_PEER_AUTH_STATE(1);

/// Specifies the possible values for the result of a wireless Hosted Network
/// function call.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_reason>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_REASON(int _) implements int {}

/// The operation was successful.
const wlan_hosted_network_reason_success = WLAN_HOSTED_NETWORK_REASON(0);

/// Unknown error.
const wlan_hosted_network_reason_unspecified = WLAN_HOSTED_NETWORK_REASON(1);

/// Bad parameters.
const wlan_hosted_network_reason_bad_parameters = WLAN_HOSTED_NETWORK_REASON(2);

/// Service is shutting down.
const wlan_hosted_network_reason_service_shutting_down =
    WLAN_HOSTED_NETWORK_REASON(3);

/// Service is out of resources.
const wlan_hosted_network_reason_insufficient_resources =
    WLAN_HOSTED_NETWORK_REASON(4);

/// This operation requires elevation.
const wlan_hosted_network_reason_elevation_required =
    WLAN_HOSTED_NETWORK_REASON(5);

/// An attempt was made to write read-only data.
const wlan_hosted_network_reason_read_only = WLAN_HOSTED_NETWORK_REASON(6);

/// Data persistence failed.
const wlan_hosted_network_reason_persistence_failed =
    WLAN_HOSTED_NETWORK_REASON(7);

/// A cryptographic error occurred.
const wlan_hosted_network_reason_crypt_error = WLAN_HOSTED_NETWORK_REASON(8);

/// User impersonation failed.
const wlan_hosted_network_reason_impersonation = WLAN_HOSTED_NETWORK_REASON(9);

/// An incorrect function call sequence was made.
const wlan_hosted_network_reason_stop_before_start = WLAN_HOSTED_NETWORK_REASON(
  10,
);

/// A wireless interface has become available.
const wlan_hosted_network_reason_interface_available =
    WLAN_HOSTED_NETWORK_REASON(11);

/// A wireless interface has become unavailable.
const wlan_hosted_network_reason_interface_unavailable =
    WLAN_HOSTED_NETWORK_REASON(12);

/// The wireless miniport driver stopped the Hosted Network.
const wlan_hosted_network_reason_miniport_stopped = WLAN_HOSTED_NETWORK_REASON(
  13,
);

/// The wireless miniport driver status changed.
const wlan_hosted_network_reason_miniport_started = WLAN_HOSTED_NETWORK_REASON(
  14,
);

/// An incompatible connection started.
const wlan_hosted_network_reason_incompatible_connection_started =
    WLAN_HOSTED_NETWORK_REASON(15);

/// An incompatible connection stopped.
const wlan_hosted_network_reason_incompatible_connection_stopped =
    WLAN_HOSTED_NETWORK_REASON(16);

/// A state change occurred that was caused by explicit user action.
const wlan_hosted_network_reason_user_action = WLAN_HOSTED_NETWORK_REASON(17);

/// A state change occurred that was caused by client abort.
const wlan_hosted_network_reason_client_abort = WLAN_HOSTED_NETWORK_REASON(18);

/// The driver for the wireless Hosted Network failed to start.
const wlan_hosted_network_reason_ap_start_failed = WLAN_HOSTED_NETWORK_REASON(
  19,
);

/// A peer connected to the wireless Hosted Network.
const wlan_hosted_network_reason_peer_arrived = WLAN_HOSTED_NETWORK_REASON(20);

/// A peer disconnected from the wireless Hosted Network.
const wlan_hosted_network_reason_peer_departed = WLAN_HOSTED_NETWORK_REASON(21);

/// A peer timed out.
const wlan_hosted_network_reason_peer_timeout = WLAN_HOSTED_NETWORK_REASON(22);

/// The operation was denied by group policy.
const wlan_hosted_network_reason_gp_denied = WLAN_HOSTED_NETWORK_REASON(23);

/// The Wireless LAN service is not running.
const wlan_hosted_network_reason_service_unavailable =
    WLAN_HOSTED_NETWORK_REASON(24);

/// The wireless adapter used by the wireless Hosted Network changed.
const wlan_hosted_network_reason_device_change = WLAN_HOSTED_NETWORK_REASON(25);

/// The properties of the wireless Hosted Network changed.
const wlan_hosted_network_reason_properties_change = WLAN_HOSTED_NETWORK_REASON(
  26,
);

/// A virtual station is active and blocking operation.
const wlan_hosted_network_reason_virtual_station_blocking_use =
    WLAN_HOSTED_NETWORK_REASON(27);

/// An identical service is available on a virtual station.
const wlan_hosted_network_reason_service_available_on_virtual_station =
    WLAN_HOSTED_NETWORK_REASON(28);

/// Specifies the possible values for the network state of the wireless Hosted
/// Network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_hosted_network_state>.
///
/// {@category enum}
extension type const WLAN_HOSTED_NETWORK_STATE(int _) implements int {}

/// The wireless Hosted Network is unavailable.
const wlan_hosted_network_unavailable = WLAN_HOSTED_NETWORK_STATE(0);

/// The wireless Hosted Network is idle.
const wlan_hosted_network_idle = WLAN_HOSTED_NETWORK_STATE(1);

/// The wireless Hosted Network is active.
const wlan_hosted_network_active = WLAN_HOSTED_NETWORK_STATE(2);

/// Specifies the type of software bypassed by a vendor-specific method.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_ihv_control_type~r1>.
///
/// {@category enum}
extension type const WLAN_IHV_CONTROL_TYPE(int _) implements int {}

/// Bypasses a WLAN service.
const wlan_ihv_control_type_service = WLAN_IHV_CONTROL_TYPE(0);

/// Bypasses a WLAN driver.
const wlan_ihv_control_type_driver = WLAN_IHV_CONTROL_TYPE(1);

/// Indicates the state of an interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_state~r1>.
///
/// {@category enum}
extension type const WLAN_INTERFACE_STATE(int _) implements int {}

/// The interface is not ready to operate.
const wlan_interface_state_not_ready = WLAN_INTERFACE_STATE(0);

/// The interface is connected to a network.
const wlan_interface_state_connected = WLAN_INTERFACE_STATE(1);

/// The interface is the first node in an ad hoc network.
const wlan_interface_state_ad_hoc_network_formed = WLAN_INTERFACE_STATE(2);

/// The interface is disconnecting from the current network.
const wlan_interface_state_disconnecting = WLAN_INTERFACE_STATE(3);

/// The interface is not connected to any network.
const wlan_interface_state_disconnected = WLAN_INTERFACE_STATE(4);

/// The interface is attempting to associate with a network.
const wlan_interface_state_associating = WLAN_INTERFACE_STATE(5);

/// Auto configuration is discovering the settings for the network.
const wlan_interface_state_discovering = WLAN_INTERFACE_STATE(6);

/// The interface is in the process of authenticating.
const wlan_interface_state_authenticating = WLAN_INTERFACE_STATE(7);

/// Specifies the wireless interface type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_interface_type>.
///
/// {@category enum}
extension type const WLAN_INTERFACE_TYPE(int _) implements int {}

/// Specifies an emulated 802.11 interface.
const wlan_interface_type_emulated_802_11 = WLAN_INTERFACE_TYPE(0);

/// Specifies a native 802.11 interface.
const wlan_interface_type_native_802_11 = WLAN_INTERFACE_TYPE(1);

/// The interface specified is invalid.
const wlan_interface_type_invalid = WLAN_INTERFACE_TYPE(2);

/// Defines various opcodes used to set and query parameters on a wireless
/// interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_intf_opcode~r1>.
///
/// {@category enum}
extension type const WLAN_INTF_OPCODE(int _) implements int {}

const wlan_intf_opcode_autoconf_start = WLAN_INTF_OPCODE(0);

/// The opcode used to set or query whether auto config is enabled.
const wlan_intf_opcode_autoconf_enabled = WLAN_INTF_OPCODE(1);

/// The opcode used to set or query whether background scan is enabled.
const wlan_intf_opcode_background_scan_enabled = WLAN_INTF_OPCODE(2);

/// The opcode used to set or query the media streaming mode of the driver.
const wlan_intf_opcode_media_streaming_mode = WLAN_INTF_OPCODE(3);

/// The opcode used to set or query the radio state.
const wlan_intf_opcode_radio_state = WLAN_INTF_OPCODE(4);

/// The opcode used to set or query the BSS type of the interface.
const wlan_intf_opcode_bss_type = WLAN_INTF_OPCODE(5);

/// The opcode used to query the state of the interface.
const wlan_intf_opcode_interface_state = WLAN_INTF_OPCODE(6);

/// The opcode used to query information about the current connection of the
/// interface.
const wlan_intf_opcode_current_connection = WLAN_INTF_OPCODE(7);

/// The opcode used to query the current channel on which the wireless interface
/// is operating.
const wlan_intf_opcode_channel_number = WLAN_INTF_OPCODE(8);

/// The opcode used to query the supported auth/cipher pairs for infrastructure
/// mode.
const wlan_intf_opcode_supported_infrastructure_auth_cipher_pairs =
    WLAN_INTF_OPCODE(9);

/// The opcode used to query the supported auth/cipher pairs for ad hoc mode.
const wlan_intf_opcode_supported_adhoc_auth_cipher_pairs = WLAN_INTF_OPCODE(10);

/// The opcode used to query the list of supported country or region strings.
const wlan_intf_opcode_supported_country_or_region_string_list =
    WLAN_INTF_OPCODE(11);

/// The opcode used to set or query the current operation mode of the wireless
/// interface.
const wlan_intf_opcode_current_operation_mode = WLAN_INTF_OPCODE(12);

/// The opcode used to query whether the miniport/NIC combination supports
/// Federal Information Processing Standards (FIPS) mode.
const wlan_intf_opcode_supported_safe_mode = WLAN_INTF_OPCODE(13);

/// The opcode used to query whether the miniport/NIC combination is FIPS
/// certified.
const wlan_intf_opcode_certified_safe_mode = WLAN_INTF_OPCODE(14);

/// The opcode used to query for Hosted Network support in the device driver
/// associated with the Wireless interface.
const wlan_intf_opcode_hosted_network_capable = WLAN_INTF_OPCODE(15);

/// The opcode used to query whether Management Frame Protection (MFP) is
/// supported in the device driver associated with the Wireless interface.
const wlan_intf_opcode_management_frame_protection_capable = WLAN_INTF_OPCODE(
  16,
);

const wlan_intf_opcode_secondary_sta_interfaces = WLAN_INTF_OPCODE(17);

const wlan_intf_opcode_secondary_sta_synchronized_connections =
    WLAN_INTF_OPCODE(18);

const wlan_intf_opcode_realtime_connection_quality = WLAN_INTF_OPCODE(19);

const wlan_intf_opcode_qos_info = WLAN_INTF_OPCODE(20);

const wlan_intf_opcode_autoconf_end = WLAN_INTF_OPCODE(268435455);

const wlan_intf_opcode_msm_start = WLAN_INTF_OPCODE(268435712);

/// The opcode used to query driver statistics.
const wlan_intf_opcode_statistics = WLAN_INTF_OPCODE(268435713);

/// Opcode used to query the received signal strength.
const wlan_intf_opcode_rssi = WLAN_INTF_OPCODE(268435714);

const wlan_intf_opcode_msm_end = WLAN_INTF_OPCODE(536870911);

const wlan_intf_opcode_security_start = WLAN_INTF_OPCODE(536936448);

const wlan_intf_opcode_security_end = WLAN_INTF_OPCODE(805306367);

const wlan_intf_opcode_ihv_start = WLAN_INTF_OPCODE(805306368);

const wlan_intf_opcode_ihv_end = WLAN_INTF_OPCODE(1073741823);

/// {@category enum}
extension type const WLAN_NOTIFICATION_SOURCES(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(WLAN_NOTIFICATION_SOURCES other) => _ & other._ == other._;

  WLAN_NOTIFICATION_SOURCES operator &(int other) => .new(_ & other);
  WLAN_NOTIFICATION_SOURCES operator |(int other) => .new(_ | other);
}

const WLAN_NOTIFICATION_SOURCE_NONE = WLAN_NOTIFICATION_SOURCES(0);

const WLAN_NOTIFICATION_SOURCE_ALL = WLAN_NOTIFICATION_SOURCES(65535);

const WLAN_NOTIFICATION_SOURCE_ACM = WLAN_NOTIFICATION_SOURCES(8);

const WLAN_NOTIFICATION_SOURCE_MSM = WLAN_NOTIFICATION_SOURCES(16);

const WLAN_NOTIFICATION_SOURCE_SECURITY = WLAN_NOTIFICATION_SOURCES(32);

const WLAN_NOTIFICATION_SOURCE_IHV = WLAN_NOTIFICATION_SOURCES(64);

const WLAN_NOTIFICATION_SOURCE_HNWK = WLAN_NOTIFICATION_SOURCES(128);

const WLAN_NOTIFICATION_SOURCE_ONEX = WLAN_NOTIFICATION_SOURCES(4);

const WLAN_NOTIFICATION_SOURCE_DEVICE_SERVICE = WLAN_NOTIFICATION_SOURCES(2048);

/// Specifies the origin of automatic configuration (auto config) settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_opcode_value_type~r1>.
///
/// {@category enum}
extension type const WLAN_OPCODE_VALUE_TYPE(int _) implements int {}

/// The auto config settings were queried, but the origin of the settings was
/// not determined.
const wlan_opcode_value_type_query_only = WLAN_OPCODE_VALUE_TYPE(0);

/// The auto config settings were set by group policy.
const wlan_opcode_value_type_set_by_group_policy = WLAN_OPCODE_VALUE_TYPE(1);

/// The auto config settings were set by the user.
const wlan_opcode_value_type_set_by_user = WLAN_OPCODE_VALUE_TYPE(2);

/// The auto config settings are invalid.
const wlan_opcode_value_type_invalid = WLAN_OPCODE_VALUE_TYPE(3);

/// Defines the securable objects used by Native Wifi Functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/ne-wlanapi-wlan_securable_object>.
///
/// {@category enum}
extension type const WLAN_SECURABLE_OBJECT(int _) implements int {}

/// The permissions for modifying the permit list for user profiles.
const wlan_secure_permit_list = WLAN_SECURABLE_OBJECT(0);

/// The permissions for modifying the deny list for user profiles.
const wlan_secure_deny_list = WLAN_SECURABLE_OBJECT(1);

/// The permissions for enabling the auto config service.
const wlan_secure_ac_enabled = WLAN_SECURABLE_OBJECT(2);

/// The permissions for enabling background scans.
const wlan_secure_bc_scan_enabled = WLAN_SECURABLE_OBJECT(3);

/// The permissions for altering the basic service set type.
const wlan_secure_bss_type = WLAN_SECURABLE_OBJECT(4);

/// The permissions for modifying whether networks on the deny list appear in
/// the available networks list.
const wlan_secure_show_denied = WLAN_SECURABLE_OBJECT(5);

/// The permissions for changing interface properties.
const wlan_secure_interface_properties = WLAN_SECURABLE_OBJECT(6);

/// The permissions for using the <a
/// href="https://docs.microsoft.com/windows/desktop/api/wlanapi/nf-wlanapi-wlanihvcontrol">WlanIhvControl</a>
/// function for independent hardware vendor (IHV) control of WLAN drivers or
/// services.
const wlan_secure_ihv_control = WLAN_SECURABLE_OBJECT(7);

/// The permissions for modifying the order of all-user profiles.
const wlan_secure_all_user_profiles_order = WLAN_SECURABLE_OBJECT(8);

/// The permissions for adding new all-user profiles.
const wlan_secure_add_new_all_user_profiles = WLAN_SECURABLE_OBJECT(9);

/// The permissions for adding new per-user profiles.
const wlan_secure_add_new_per_user_profiles = WLAN_SECURABLE_OBJECT(10);

/// The permissions for setting or querying the media streaming mode.
const wlan_secure_media_streaming_mode_enabled = WLAN_SECURABLE_OBJECT(11);

/// The permissions for setting or querying the operation mode of the wireless
/// interface.
const wlan_secure_current_operation_mode = WLAN_SECURABLE_OBJECT(12);

/// The permissions for retrieving the plain text key from a wireless profile.
const wlan_secure_get_plaintext_key = WLAN_SECURABLE_OBJECT(13);

/// The permissions that have elevated access to call the privileged Hosted
/// Network functions.
const wlan_secure_hosted_network_elevated_access = WLAN_SECURABLE_OBJECT(14);

const wlan_secure_virtual_station_extensibility = WLAN_SECURABLE_OBJECT(15);

/// This value is reserved for internal use by the Wi-Fi Direct service.
const wlan_secure_wfd_elevated_access = WLAN_SECURABLE_OBJECT(16);

const WLAN_SECURABLE_OBJECT_COUNT = WLAN_SECURABLE_OBJECT(17);

/// {@category enum}
extension type const WLAN_SET_EAPHOST_FLAGS(int _) implements int {}

const WLAN_SET_EAPHOST_DATA_ALL_USERS = WLAN_SET_EAPHOST_FLAGS(1);

/// {@category enum}
extension type const WNDCLASS_STYLES(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(WNDCLASS_STYLES other) => _ & other._ == other._;

  WNDCLASS_STYLES operator &(int other) => .new(_ & other);
  WNDCLASS_STYLES operator |(int other) => .new(_ | other);
}

const CS_VREDRAW = WNDCLASS_STYLES(1);

const CS_HREDRAW = WNDCLASS_STYLES(2);

const CS_DBLCLKS = WNDCLASS_STYLES(8);

const CS_OWNDC = WNDCLASS_STYLES(32);

const CS_CLASSDC = WNDCLASS_STYLES(64);

const CS_PARENTDC = WNDCLASS_STYLES(128);

const CS_NOCLOSE = WNDCLASS_STYLES(512);

const CS_SAVEBITS = WNDCLASS_STYLES(2048);

const CS_BYTEALIGNCLIENT = WNDCLASS_STYLES(4096);

const CS_BYTEALIGNWINDOW = WNDCLASS_STYLES(8192);

const CS_GLOBALCLASS = WNDCLASS_STYLES(16384);

const CS_IME = WNDCLASS_STYLES(65536);

const CS_DROPSHADOW = WNDCLASS_STYLES(131072);

/// Specifies the behavior of a distribution in the Windows Subsystem for Linux
/// (WSL).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/ne-wslapi-wsl_distribution_flags>.
///
/// {@category enum}
extension type const WSL_DISTRIBUTION_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(WSL_DISTRIBUTION_FLAGS other) => _ & other._ == other._;

  WSL_DISTRIBUTION_FLAGS operator &(int other) => .new(_ & other);
  WSL_DISTRIBUTION_FLAGS operator |(int other) => .new(_ | other);
}

/// No flags are being supplied.
const WSL_DISTRIBUTION_FLAGS_NONE = WSL_DISTRIBUTION_FLAGS(0);

/// Allow the distribution to interoperate with Windows processes (for example,
/// the user can invoke "cmd.exe" or "notepad.exe" from within a WSL session).
const WSL_DISTRIBUTION_FLAGS_ENABLE_INTEROP = WSL_DISTRIBUTION_FLAGS(1);

/// Add the Windows %PATH% environment variable values to WSL sessions.
const WSL_DISTRIBUTION_FLAGS_APPEND_NT_PATH = WSL_DISTRIBUTION_FLAGS(2);

/// Automatically mount Windows drives inside of WSL sessions (for example,
/// "C:\" will be available under "/mnt/c").
const WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING = WSL_DISTRIBUTION_FLAGS(4);

/// Includes possible settings for the Automatic Logon Policy.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinHttp/winhttprequestautologonpolicy>.
///
/// {@category enum}
extension type const WinHttpRequestAutoLogonPolicy(int _) implements int {}

const AutoLogonPolicy_Always = WinHttpRequestAutoLogonPolicy(0);

const AutoLogonPolicy_OnlyIfBypassProxy = WinHttpRequestAutoLogonPolicy(1);

const AutoLogonPolicy_Never = WinHttpRequestAutoLogonPolicy(2);

/// Includes options that can be set or retrieved for the current Microsoft
/// Windows HTTP Services (WinHTTP) session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinHttp/winhttprequestoption>.
///
/// {@category enum}
extension type const WinHttpRequestOption(int _) implements int {}

const WinHttpRequestOption_UserAgentString = WinHttpRequestOption(0);

const WinHttpRequestOption_URL = WinHttpRequestOption(1);

const WinHttpRequestOption_URLCodePage = WinHttpRequestOption(2);

const WinHttpRequestOption_EscapePercentInURL = WinHttpRequestOption(3);

const WinHttpRequestOption_SslErrorIgnoreFlags = WinHttpRequestOption(4);

const WinHttpRequestOption_SelectCertificate = WinHttpRequestOption(5);

const WinHttpRequestOption_EnableRedirects = WinHttpRequestOption(6);

const WinHttpRequestOption_UrlEscapeDisable = WinHttpRequestOption(7);

const WinHttpRequestOption_UrlEscapeDisableQuery = WinHttpRequestOption(8);

const WinHttpRequestOption_SecureProtocols = WinHttpRequestOption(9);

const WinHttpRequestOption_EnableTracing = WinHttpRequestOption(10);

const WinHttpRequestOption_RevertImpersonationOverSsl = WinHttpRequestOption(
  11,
);

const WinHttpRequestOption_EnableHttpsToHttpRedirects = WinHttpRequestOption(
  12,
);

const WinHttpRequestOption_EnablePassportAuthentication = WinHttpRequestOption(
  13,
);

const WinHttpRequestOption_MaxAutomaticRedirects = WinHttpRequestOption(14);

const WinHttpRequestOption_MaxResponseHeaderSize = WinHttpRequestOption(15);

const WinHttpRequestOption_MaxResponseDrainSize = WinHttpRequestOption(16);

const WinHttpRequestOption_EnableHttp1_1 = WinHttpRequestOption(17);

const WinHttpRequestOption_EnableCertificateRevocationCheck =
    WinHttpRequestOption(18);

const WinHttpRequestOption_RejectUserpwd = WinHttpRequestOption(19);

/// Contains values that specify the current state of the window for purposes of
/// user interaction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-windowinteractionstate>.
///
/// {@category enum}
extension type const WindowInteractionState(int _) implements int {}

/// The window is running.
const WindowInteractionState_Running = WindowInteractionState(0);

/// The window is closing.
const WindowInteractionState_Closing = WindowInteractionState(1);

/// The window is ready for user interaction.
const WindowInteractionState_ReadyForUserInteraction = WindowInteractionState(
  2,
);

/// The window is blocked by a modal window.
const WindowInteractionState_BlockedByModalWindow = WindowInteractionState(3);

/// The window is not responding.
const WindowInteractionState_NotResponding = WindowInteractionState(4);

/// Contains values that specify the visual state of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-windowvisualstate>.
///
/// {@category enum}
extension type const WindowVisualState(int _) implements int {}

/// The window is normal (restored).
const WindowVisualState_Normal = WindowVisualState(0);

/// The window is maximized.
const WindowVisualState_Maximized = WindowVisualState(1);

/// The window is minimized.
const WindowVisualState_Minimized = WindowVisualState(2);

/// {@category enum}
extension type const XINPUT_CAPABILITIES_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(XINPUT_CAPABILITIES_FLAGS other) => _ & other._ == other._;

  XINPUT_CAPABILITIES_FLAGS operator &(int other) => .new(_ & other);
  XINPUT_CAPABILITIES_FLAGS operator |(int other) => .new(_ | other);
}

const XINPUT_CAPS_VOICE_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(4);

const XINPUT_CAPS_FFB_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(1);

const XINPUT_CAPS_WIRELESS = XINPUT_CAPABILITIES_FLAGS(2);

const XINPUT_CAPS_PMD_SUPPORTED = XINPUT_CAPABILITIES_FLAGS(8);

const XINPUT_CAPS_NO_NAVIGATION = XINPUT_CAPABILITIES_FLAGS(16);

/// {@category enum}
extension type const XINPUT_DEVSUBTYPE(int _) implements int {}

const XINPUT_DEVSUBTYPE_GAMEPAD = XINPUT_DEVSUBTYPE(1);

const XINPUT_DEVSUBTYPE_UNKNOWN = XINPUT_DEVSUBTYPE(0);

const XINPUT_DEVSUBTYPE_WHEEL = XINPUT_DEVSUBTYPE(2);

const XINPUT_DEVSUBTYPE_ARCADE_STICK = XINPUT_DEVSUBTYPE(3);

const XINPUT_DEVSUBTYPE_FLIGHT_STICK = XINPUT_DEVSUBTYPE(4);

const XINPUT_DEVSUBTYPE_DANCE_PAD = XINPUT_DEVSUBTYPE(5);

const XINPUT_DEVSUBTYPE_GUITAR = XINPUT_DEVSUBTYPE(6);

const XINPUT_DEVSUBTYPE_GUITAR_ALTERNATE = XINPUT_DEVSUBTYPE(7);

const XINPUT_DEVSUBTYPE_DRUM_KIT = XINPUT_DEVSUBTYPE(8);

const XINPUT_DEVSUBTYPE_GUITAR_BASS = XINPUT_DEVSUBTYPE(11);

const XINPUT_DEVSUBTYPE_ARCADE_PAD = XINPUT_DEVSUBTYPE(19);

/// {@category enum}
extension type const XINPUT_DEVTYPE(int _) implements int {}

const XINPUT_DEVTYPE_GAMEPAD = XINPUT_DEVTYPE(1);

/// {@category enum}
extension type const XINPUT_FLAG(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(XINPUT_FLAG other) => _ & other._ == other._;

  XINPUT_FLAG operator &(int other) => .new(_ & other);
  XINPUT_FLAG operator |(int other) => .new(_ | other);
}

const XINPUT_FLAG_ALL = XINPUT_FLAG(0);

const XINPUT_FLAG_GAMEPAD = XINPUT_FLAG(1);

/// {@category enum}
extension type const XINPUT_GAMEPAD_BUTTON_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(XINPUT_GAMEPAD_BUTTON_FLAGS other) => _ & other._ == other._;

  XINPUT_GAMEPAD_BUTTON_FLAGS operator &(int other) => .new(_ & other);
  XINPUT_GAMEPAD_BUTTON_FLAGS operator |(int other) => .new(_ | other);
}

const XINPUT_GAMEPAD_DPAD_UP = XINPUT_GAMEPAD_BUTTON_FLAGS(1);

const XINPUT_GAMEPAD_DPAD_DOWN = XINPUT_GAMEPAD_BUTTON_FLAGS(2);

const XINPUT_GAMEPAD_DPAD_LEFT = XINPUT_GAMEPAD_BUTTON_FLAGS(4);

const XINPUT_GAMEPAD_DPAD_RIGHT = XINPUT_GAMEPAD_BUTTON_FLAGS(8);

const XINPUT_GAMEPAD_START = XINPUT_GAMEPAD_BUTTON_FLAGS(16);

const XINPUT_GAMEPAD_BACK = XINPUT_GAMEPAD_BUTTON_FLAGS(32);

const XINPUT_GAMEPAD_LEFT_THUMB = XINPUT_GAMEPAD_BUTTON_FLAGS(64);

const XINPUT_GAMEPAD_RIGHT_THUMB = XINPUT_GAMEPAD_BUTTON_FLAGS(128);

const XINPUT_GAMEPAD_LEFT_SHOULDER = XINPUT_GAMEPAD_BUTTON_FLAGS(256);

const XINPUT_GAMEPAD_RIGHT_SHOULDER = XINPUT_GAMEPAD_BUTTON_FLAGS(512);

const XINPUT_GAMEPAD_A = XINPUT_GAMEPAD_BUTTON_FLAGS(4096);

const XINPUT_GAMEPAD_B = XINPUT_GAMEPAD_BUTTON_FLAGS(8192);

const XINPUT_GAMEPAD_X = XINPUT_GAMEPAD_BUTTON_FLAGS(16384);

const XINPUT_GAMEPAD_Y = XINPUT_GAMEPAD_BUTTON_FLAGS(32768);

const XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE = XINPUT_GAMEPAD_BUTTON_FLAGS(7849);

const XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE = XINPUT_GAMEPAD_BUTTON_FLAGS(8689);

const XINPUT_GAMEPAD_TRIGGER_THRESHOLD = XINPUT_GAMEPAD_BUTTON_FLAGS(30);

/// {@category enum}
extension type const XINPUT_KEYSTROKE_FLAGS(int _) implements int {
  /// Whether this instance has all the bit fields specified in [other].
  bool has(XINPUT_KEYSTROKE_FLAGS other) => _ & other._ == other._;

  XINPUT_KEYSTROKE_FLAGS operator &(int other) => .new(_ & other);
  XINPUT_KEYSTROKE_FLAGS operator |(int other) => .new(_ | other);
}

const XINPUT_KEYSTROKE_KEYDOWN = XINPUT_KEYSTROKE_FLAGS(1);

const XINPUT_KEYSTROKE_KEYUP = XINPUT_KEYSTROKE_FLAGS(2);

const XINPUT_KEYSTROKE_REPEAT = XINPUT_KEYSTROKE_FLAGS(4);

/// {@category enum}
extension type const XINPUT_VIRTUAL_KEY(int _) implements int {}

const VK_PAD_A = XINPUT_VIRTUAL_KEY(22528);

const VK_PAD_B = XINPUT_VIRTUAL_KEY(22529);

const VK_PAD_X = XINPUT_VIRTUAL_KEY(22530);

const VK_PAD_Y = XINPUT_VIRTUAL_KEY(22531);

const VK_PAD_RSHOULDER = XINPUT_VIRTUAL_KEY(22532);

const VK_PAD_LSHOULDER = XINPUT_VIRTUAL_KEY(22533);

const VK_PAD_LTRIGGER = XINPUT_VIRTUAL_KEY(22534);

const VK_PAD_RTRIGGER = XINPUT_VIRTUAL_KEY(22535);

const VK_PAD_DPAD_UP = XINPUT_VIRTUAL_KEY(22544);

const VK_PAD_DPAD_DOWN = XINPUT_VIRTUAL_KEY(22545);

const VK_PAD_DPAD_LEFT = XINPUT_VIRTUAL_KEY(22546);

const VK_PAD_DPAD_RIGHT = XINPUT_VIRTUAL_KEY(22547);

const VK_PAD_START = XINPUT_VIRTUAL_KEY(22548);

const VK_PAD_BACK = XINPUT_VIRTUAL_KEY(22549);

const VK_PAD_LTHUMB_PRESS = XINPUT_VIRTUAL_KEY(22550);

const VK_PAD_RTHUMB_PRESS = XINPUT_VIRTUAL_KEY(22551);

const VK_PAD_LTHUMB_UP = XINPUT_VIRTUAL_KEY(22560);

const VK_PAD_LTHUMB_DOWN = XINPUT_VIRTUAL_KEY(22561);

const VK_PAD_LTHUMB_RIGHT = XINPUT_VIRTUAL_KEY(22562);

const VK_PAD_LTHUMB_LEFT = XINPUT_VIRTUAL_KEY(22563);

const VK_PAD_LTHUMB_UPLEFT = XINPUT_VIRTUAL_KEY(22564);

const VK_PAD_LTHUMB_UPRIGHT = XINPUT_VIRTUAL_KEY(22565);

const VK_PAD_LTHUMB_DOWNRIGHT = XINPUT_VIRTUAL_KEY(22566);

const VK_PAD_LTHUMB_DOWNLEFT = XINPUT_VIRTUAL_KEY(22567);

const VK_PAD_RTHUMB_UP = XINPUT_VIRTUAL_KEY(22576);

const VK_PAD_RTHUMB_DOWN = XINPUT_VIRTUAL_KEY(22577);

const VK_PAD_RTHUMB_RIGHT = XINPUT_VIRTUAL_KEY(22578);

const VK_PAD_RTHUMB_LEFT = XINPUT_VIRTUAL_KEY(22579);

const VK_PAD_RTHUMB_UPLEFT = XINPUT_VIRTUAL_KEY(22580);

const VK_PAD_RTHUMB_UPRIGHT = XINPUT_VIRTUAL_KEY(22581);

const VK_PAD_RTHUMB_DOWNRIGHT = XINPUT_VIRTUAL_KEY(22582);

const VK_PAD_RTHUMB_DOWNLEFT = XINPUT_VIRTUAL_KEY(22583);

/// Contains possible values for the IUIAutomationTransformPattern2::ZoomByUnit
/// method, which zooms the viewport of a control by the specified unit.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationcore/ne-uiautomationcore-zoomunit>.
///
/// {@category enum}
extension type const ZoomUnit(int _) implements int {}

/// No increase or decrease in zoom.
const ZoomUnit_NoAmount = ZoomUnit(0);

/// Decrease zoom by a large decrement.
const ZoomUnit_LargeDecrement = ZoomUnit(1);

/// Decrease zoom by a small decrement.
const ZoomUnit_SmallDecrement = ZoomUnit(2);

/// Increase zoom by a large increment.
const ZoomUnit_LargeIncrement = ZoomUnit(3);

/// Increase zoom by a small increment.
const ZoomUnit_SmallIncrement = ZoomUnit(4);
