// gamepad.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import '../types.dart';
import '../winrt_callbacks.dart';
import '../winrt_helpers.dart';

import '../extensions/hstring_array.dart';

import 'igamepad.dart';
import 'igamecontroller.dart';
import 'igamepad2.dart';
import 'igamecontrollerbatteryinfo.dart';
import 'igamepadstatics.dart';
import 'igamepadstatics2.dart';
import 'structs.g.dart';
import 'headset.dart';
import 'userchangedeventargs.dart';
import 'user.dart';
import 'batteryreport.dart';
import 'ivectorview.dart';
import '../com/iinspectable.dart';

/// {@category Class}
/// {@category winrt}
class Gamepad extends IInspectable
    implements
        IGamepad,
        IGameController,
        IGamepad2,
        IGameControllerBatteryInfo {
  Gamepad.from(super.ptr);

  static const _className = 'Windows.Gaming.Input.Gamepad';

  // IGamepadStatics methods
  static int add_GamepadAdded(Pointer<NativeFunction<EventHandler>> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IGamepadStatics);

    try {
      return IGamepadStatics.from(activationFactory).add_GamepadAdded(value);
    } finally {
      free(activationFactory);
    }
  }

  static void remove_GamepadAdded(int token) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IGamepadStatics);

    try {
      return IGamepadStatics.from(activationFactory).remove_GamepadAdded(token);
    } finally {
      free(activationFactory);
    }
  }

  static int add_GamepadRemoved(Pointer<NativeFunction<EventHandler>> value) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IGamepadStatics);

    try {
      return IGamepadStatics.from(activationFactory).add_GamepadRemoved(value);
    } finally {
      free(activationFactory);
    }
  }

  static void remove_GamepadRemoved(int token) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IGamepadStatics);

    try {
      return IGamepadStatics.from(activationFactory)
          .remove_GamepadRemoved(token);
    } finally {
      free(activationFactory);
    }
  }

  static List<String> get Gamepads {
    final activationFactory =
        CreateActivationFactory(_className, IID_IGamepadStatics);

    try {
      return IGamepadStatics.from(activationFactory).Gamepads;
    } finally {
      free(activationFactory);
    }
  }

  // IGamepadStatics2 methods
  static Pointer<COMObject> FromGameController(
      Pointer<COMObject> gameController) {
    final activationFactory =
        CreateActivationFactory(_className, IID_IGamepadStatics2);

    try {
      return IGamepadStatics2.from(activationFactory)
          .FromGameController(gameController);
    } finally {
      free(activationFactory);
    }
  }

  // IGamepad methods
  late final _iGamepad = IGamepad.from(toInterface(IID_IGamepad));

  @override
  GamepadVibration get Vibration => _iGamepad.Vibration;

  @override
  set Vibration(GamepadVibration value) => _iGamepad.Vibration = value;

  @override
  GamepadReading GetCurrentReading() => _iGamepad.GetCurrentReading();
  // IGameController methods
  late final _iGameController =
      IGameController.from(toInterface(IID_IGameController));

  @override
  int add_HeadsetConnected(Pointer<NativeFunction<TypedEventHandler>> value) =>
      _iGameController.add_HeadsetConnected(value);

  @override
  void remove_HeadsetConnected(int token) =>
      _iGameController.remove_HeadsetConnected(token);

  @override
  int add_HeadsetDisconnected(
          Pointer<NativeFunction<TypedEventHandler>> value) =>
      _iGameController.add_HeadsetDisconnected(value);

  @override
  void remove_HeadsetDisconnected(int token) =>
      _iGameController.remove_HeadsetDisconnected(token);

  @override
  int add_UserChanged(Pointer<NativeFunction<TypedEventHandler>> value) =>
      _iGameController.add_UserChanged(value);

  @override
  void remove_UserChanged(int token) =>
      _iGameController.remove_UserChanged(token);

  @override
  Pointer<COMObject> get Headset => _iGameController.Headset;

  @override
  bool get IsWireless => _iGameController.IsWireless;

  @override
  Pointer<COMObject> get User => _iGameController.User;
  // IGamepad2 methods
  late final _iGamepad2 = IGamepad2.from(toInterface(IID_IGamepad2));

  @override
  int GetButtonLabel(int button) => _iGamepad2.GetButtonLabel(button);
  // IGameControllerBatteryInfo methods
  late final _iGameControllerBatteryInfo = IGameControllerBatteryInfo.from(
      toInterface(IID_IGameControllerBatteryInfo));

  @override
  Pointer<COMObject> TryGetBatteryReport() =>
      _iGameControllerBatteryInfo.TryGetBatteryReport();
}
