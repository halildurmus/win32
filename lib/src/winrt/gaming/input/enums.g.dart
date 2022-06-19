// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

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
enum GamepadButtons {
  None(0),
  Menu(1),
  View(2),
  A(4),
  B(8),
  X(16),
  Y(32),
  DPadUp(64),
  DPadDown(128),
  DPadLeft(256),
  DPadRight(512),
  LeftShoulder(1024),
  RightShoulder(2048),
  LeftThumbstick(4096),
  RightThumbstick(8192),
  Paddle1(16384),
  Paddle2(32768),
  Paddle3(65536),
  Paddle4(131072);

  final int value;

  const GamepadButtons(this.value);

  factory GamepadButtons.from(int value) =>
      GamepadButtons.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));

  static Set<GamepadButtons> createSetFrom(int value) {
    final values =
        GamepadButtons.values.skip(1).where((e) => value & e.value == e.value);
    return Set.unmodifiable(
        values.isEmpty ? [GamepadButtons.values.first] : values);
  }
}
