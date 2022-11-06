// igamepad2.dart

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
import 'structs.g.dart';
import 'headset.dart';
import 'userchangedeventargs.dart';
import 'user.dart';
import '../com/iinspectable.dart';

/// @nodoc
const IID_IGamepad2 = '{3C1689BD-5915-4245-B0C0-C89FAE0308FF}';

/// {@category Interface}
/// {@category winrt}
class IGamepad2 extends IInspectable implements IGamepad, IGameController {
  // vtable begins at 6, is 1 entries long.
  IGamepad2.from(super.ptr);

  int GetButtonLabel(int button) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, Uint32 button, Pointer<Int32>)>>>()
              .value
              .asFunction<int Function(Pointer, int button, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, button, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
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
}