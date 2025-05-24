// ignore_for_file: camel_case_types, constant_identifier_names

import 'structs.dart';

/// Affects the rendering of the background of a window.
extension type const ACCENT_STATE(int _) implements int {}

/// The default value, background is black.
const ACCENT_DISABLED = ACCENT_STATE(0);

/// Background is GradientColor, alpha channel ignored.
const ACCENT_ENABLE_GRADIENT = ACCENT_STATE(1);

/// Background is GradientColor.
const ACCENT_ENABLE_TRANSPARENTGRADIENT = ACCENT_STATE(2);

/// Background is GradientColor, with blur effect.
const ACCENT_ENABLE_BLURBEHIND = ACCENT_STATE(3);

/// Background is GradientColor, with acrylic blur effect.
const ACCENT_ENABLE_ACRYLICBLURBEHIND = ACCENT_STATE(4);

/// Unknown.
const ACCENT_ENABLE_HOSTBACKDROP = ACCENT_STATE(5);

/// Unknown. Seems to draw background fully transparent.
const ACCENT_INVALID_STATE = ACCENT_STATE(6);

/// Specifies options used by the [WINDOWCOMPOSITIONATTRIBDATA] structure.
extension type const WINDOWCOMPOSITIONATTRIB(int _) implements int {}

const WCA_UNDEFINED = WINDOWCOMPOSITIONATTRIB(0);
const WCA_NCRENDERING_ENABLED = WINDOWCOMPOSITIONATTRIB(1);
const WCA_NCRENDERING_POLICY = WINDOWCOMPOSITIONATTRIB(2);
const WCA_TRANSITIONS_FORCEDISABLED = WINDOWCOMPOSITIONATTRIB(3);
const WCA_ALLOW_NCPAINT = WINDOWCOMPOSITIONATTRIB(4);
const WCA_CAPTION_BUTTON_BOUNDS = WINDOWCOMPOSITIONATTRIB(5);
const WCA_NONCLIENT_RTL_LAYOUT = WINDOWCOMPOSITIONATTRIB(6);
const WCA_FORCE_ICONIC_REPRESENTATION = WINDOWCOMPOSITIONATTRIB(7);
const WCA_EXTENDED_FRAME_BOUNDS = WINDOWCOMPOSITIONATTRIB(8);
const WCA_HAS_ICONIC_BITMAP = WINDOWCOMPOSITIONATTRIB(9);
const WCA_THEME_ATTRIBUTES = WINDOWCOMPOSITIONATTRIB(10);
const WCA_NCRENDERING_EXILED = WINDOWCOMPOSITIONATTRIB(11);
const WCA_NCADORNMENTINFO = WINDOWCOMPOSITIONATTRIB(12);
const WCA_EXCLUDED_FROM_LIVEPREVIEW = WINDOWCOMPOSITIONATTRIB(13);
const WCA_VIDEO_OVERLAY_ACTIVE = WINDOWCOMPOSITIONATTRIB(14);
const WCA_FORCE_ACTIVEWINDOW_APPEARANCE = WINDOWCOMPOSITIONATTRIB(15);
const WCA_DISALLOW_PEEK = WINDOWCOMPOSITIONATTRIB(16);
const WCA_CLOAK = WINDOWCOMPOSITIONATTRIB(17);
const WCA_CLOAKED = WINDOWCOMPOSITIONATTRIB(18);
const WCA_ACCENT_POLICY = WINDOWCOMPOSITIONATTRIB(19);
const WCA_FREEZE_REPRESENTATION = WINDOWCOMPOSITIONATTRIB(20);
const WCA_EVER_UNCLOAKED = WINDOWCOMPOSITIONATTRIB(21);
const WCA_VISUAL_OWNER = WINDOWCOMPOSITIONATTRIB(22);
const WCA_HOLOGRAPHIC = WINDOWCOMPOSITIONATTRIB(23);
const WCA_EXCLUDED_FROM_DDA = WINDOWCOMPOSITIONATTRIB(24);
const WCA_PASSIVEUPDATEMODE = WINDOWCOMPOSITIONATTRIB(25);
const WCA_LAST = WINDOWCOMPOSITIONATTRIB(26);

/// Represents the trust level of an activatable class.
///
/// {@category enum}
enum TrustLevel {
  /// The component has access to resources that are not protected.
  baseTrust(0),

  /// The component has access to resources requested in the app manifest and
  /// approved by the user.
  partialTrust(1),

  /// The component requires the full privileges of the user.
  fullTrust(2);

  const TrustLevel(this.value);

  factory TrustLevel.from(int value) => TrustLevel.values.firstWhere(
    (e) => e.value == value,
    orElse: () => throw ArgumentError.value(
      value,
      'value',
      'No enum value with that value',
    ),
  );

  final int value;
}

/// {@category enum}
extension type const COPYFILE_FLAGS(int _) implements int {}

const COPY_FILE_FAIL_IF_EXISTS = 1;
const COPY_FILE_RESTARTABLE = 2;
const COPY_FILE_OPEN_SOURCE_FOR_WRITE = 4;
const COPY_FILE_ALLOW_DECRYPTED_DESTINATION = 8;
const COPY_FILE_COPY_SYMLINK = 0x800;
const COPY_FILE_NO_BUFFERING = 0x1000;
const COPY_FILE_REQUEST_SECURITY_PRIVILEGES = 0x2000;
const COPY_FILE_RESUME_FROM_PAUSE = 0x4000;
const COPY_FILE_NO_OFFLOAD = 0x40000;
const COPY_FILE_IGNORE_EDP_BLOCK = 0x400000;
const COPY_FILE_IGNORE_SOURCE_ENCRYPTION = 0x800000;
const COPY_FILE_DONT_REQUEST_DEST_WRITE_DAC = 0x2000000;
const COPY_FILE_REQUEST_COMPRESSED_TRAFFIC = 0x10000000;
const COPY_FILE_OPEN_AND_COPY_REPARSE_POINT = 0x200000;
const COPY_FILE_DIRECTORY = 0x80;
const COPY_FILE_SKIP_ALTERNATE_STREAMS = 0x8000;
const COPY_FILE_DISABLE_PRE_ALLOCATION = 0x4000000;
const COPY_FILE_ENABLE_LOW_FREE_SPACE_MODE = 0x8000000;
const COPY_FILE_ENABLE_SPARSE_COPY = 0x20000000;

/// {@category enum}
extension type const COPYPROGRESSROUTINE_PROGRESS(int _) implements int {}

const PROGRESS_CONTINUE = 0;
const PROGRESS_CANCEL = 1;
const PROGRESS_STOP = 2;
const PROGRESS_QUIET = 3;

/// {@category enum}
extension type const LPPROGRESS_ROUTINE_CALLBACK_REASON(int _) implements int {}

const CALLBACK_CHUNK_FINISHED = 0x00000000;
const CALLBACK_STREAM_SWITCH = 0x00000001;

/// {@category enum}
extension type const MOVE_FILE_FLAGS(int _) implements int {}

const MOVEFILE_COPY_ALLOWED = 0x2;
const MOVEFILE_CREATE_HARDLINK = 0x10;
const MOVEFILE_DELAY_UNTIL_REBOOT = 0x4;
const MOVEFILE_REPLACE_EXISTING = 0x1;
const MOVEFILE_WRITE_THROUGH = 0x8;
const MOVEFILE_FAIL_IF_NOT_TRACKABLE = 0x20;

/// {@category enum}
extension type const SYMBOLIC_LINK_FLAGS(int _) implements int {}

const SYMBOLIC_LINK_FLAG_DIRECTORY = 1;
const SYMBOLIC_LINK_FLAG_ALLOW_UNPRIVILEGED_CREATE = 2;
