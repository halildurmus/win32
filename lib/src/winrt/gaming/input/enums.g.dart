// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../../winrt/internal/flags_enum.dart';

/// Label that appears on the physical controller button.
///
/// {@category Enum}
enum GameControllerButtonLabel {
  None(0),
  XboxBack(1),
  XboxStart(2),
  XboxMenu(3),
  XboxView(4),
  XboxUp(5),
  XboxDown(6),
  XboxLeft(7),
  XboxRight(8),
  XboxA(9),
  XboxB(10),
  XboxX(11),
  XboxY(12),
  XboxLeftBumper(13),
  XboxLeftTrigger(14),
  XboxLeftStickButton(15),
  XboxRightBumper(16),
  XboxRightTrigger(17),
  XboxRightStickButton(18),
  XboxPaddle1(19),
  XboxPaddle2(20),
  XboxPaddle3(21),
  XboxPaddle4(22),
  Mode(23),
  Select(24),
  Menu(25),
  View(26),
  Back(27),
  Start(28),
  Options(29),
  Share(30),
  Up(31),
  Down(32),
  Left(33),
  Right(34),
  LetterA(35),
  LetterB(36),
  LetterC(37),
  LetterL(38),
  LetterR(39),
  LetterX(40),
  LetterY(41),
  LetterZ(42),
  Cross(43),
  Circle(44),
  Square(45),
  Triangle(46),
  LeftBumper(47),
  LeftTrigger(48),
  LeftStickButton(49),
  Left1(50),
  Left2(51),
  Left3(52),
  RightBumper(53),
  RightTrigger(54),
  RightStickButton(55),
  Right1(56),
  Right2(57),
  Right3(58),
  Paddle1(59),
  Paddle2(60),
  Paddle3(61),
  Paddle4(62),
  Plus(63),
  Minus(64),
  DownLeftArrow(65),
  DialLeft(66),
  DialRight(67),
  Suspension(68);

  final int value;

  const GameControllerButtonLabel(this.value);

  factory GameControllerButtonLabel.from(int value) =>
      GameControllerButtonLabel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the button type.
///
/// {@category Enum}
class GamepadButtons extends FlagsEnum {
  const GamepadButtons(super.value, {super.name});

  factory GamepadButtons.from(int value) =>
      GamepadButtons.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));

  static const None = GamepadButtons(0, name: 'None');
  static const Menu = GamepadButtons(1, name: 'Menu');
  static const View = GamepadButtons(2, name: 'View');
  static const A = GamepadButtons(4, name: 'A');
  static const B = GamepadButtons(8, name: 'B');
  static const X = GamepadButtons(16, name: 'X');
  static const Y = GamepadButtons(32, name: 'Y');
  static const DPadUp = GamepadButtons(64, name: 'DPadUp');
  static const DPadDown = GamepadButtons(128, name: 'DPadDown');
  static const DPadLeft = GamepadButtons(256, name: 'DPadLeft');
  static const DPadRight = GamepadButtons(512, name: 'DPadRight');
  static const LeftShoulder = GamepadButtons(1024, name: 'LeftShoulder');
  static const RightShoulder = GamepadButtons(2048, name: 'RightShoulder');
  static const LeftThumbstick = GamepadButtons(4096, name: 'LeftThumbstick');
  static const RightThumbstick = GamepadButtons(8192, name: 'RightThumbstick');
  static const Paddle1 = GamepadButtons(16384, name: 'Paddle1');
  static const Paddle2 = GamepadButtons(32768, name: 'Paddle2');
  static const Paddle3 = GamepadButtons(65536, name: 'Paddle3');
  static const Paddle4 = GamepadButtons(131072, name: 'Paddle4');

  static const List<GamepadButtons> values = [
    None,
    Menu,
    View,
    A,
    B,
    X,
    Y,
    DPadUp,
    DPadDown,
    DPadLeft,
    DPadRight,
    LeftShoulder,
    RightShoulder,
    LeftThumbstick,
    RightThumbstick,
    Paddle1,
    Paddle2,
    Paddle3,
    Paddle4
  ];

  GamepadButtons operator &(GamepadButtons other) =>
      GamepadButtons(value & other.value);

  GamepadButtons operator |(GamepadButtons other) =>
      GamepadButtons(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  bool hasFlag(GamepadButtons flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}
