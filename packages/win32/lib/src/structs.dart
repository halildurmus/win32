// Dart representations of Win32 structs.
//
// These structs are handwritten as they are not included in the metadata.

// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

import 'enums.dart';
import 'functions.dart';

/// Determines how a window's background is rendered.
///
/// {@category struct}
base class ACCENT_POLICY extends Struct {
  @Int32()
  external int _AccentState;

  /// Background effect.
  @pragma('vm:prefer-inline')
  ACCENT_STATE get AccentState => ACCENT_STATE(_AccentState);
  @pragma('vm:prefer-inline')
  set AccentState(ACCENT_STATE value) => _AccentState = value;

  /// Set to `2` to specify which [GradientColor] is used, rest is unknown.
  @Uint32()
  external int AccentFlags;

  /// Background color.
  @Uint32()
  external int GradientColor;

  /// Unknown.
  @Uint32()
  external int AnimationId;
}

/// Describes a key/value pair that specifies a window composition attribute and
/// its value.
///
/// This structure is used with the [GetWindowCompositionAttribute] and
/// [SetWindowCompositionAttribute] functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dwm/windowcompositionattribdata>.
///
/// {@category struct}
base class WINDOWCOMPOSITIONATTRIBDATA extends Struct {
  @Int32()
  external int _Attrib;

  /// A flag describing which value to get or set, specified as a value of the
  /// [WINDOWCOMPOSITIONATTRIB] enumeration.
  ///
  /// This field specifies which attribute to get or set, and the [pvData]
  /// member points to an object containing the attribute value.
  @pragma('vm:prefer-inline')
  WINDOWCOMPOSITIONATTRIB get Attrib => WINDOWCOMPOSITIONATTRIB(_Attrib);
  @pragma('vm:prefer-inline')
  set Attrib(WINDOWCOMPOSITIONATTRIB value) => _Attrib = value;

  /// When used with the [GetWindowCompositionAttribute] function, this member
  /// contains a pointer to a variable that will hold the value of the requested
  /// attribute when the function returns.
  ///
  /// When used with the [SetWindowCompositionAttribute] function, it points an
  /// object containing the attribute value to set. The type of the value set
  /// depends on the value of the Attrib member.
  ///
  /// The type of the value set depends on the value of the [Attrib] member.
  external Pointer pvData;

  /// The size of the object pointed to by the [pvData] member, in bytes.
  @Uint32()
  external int cbData;
}
