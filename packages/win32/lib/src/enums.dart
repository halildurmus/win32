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

  final int value;

  const TrustLevel(this.value);

  factory TrustLevel.from(int value) =>
      TrustLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
