// iaudioclock2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClock2 = '{6f49ff73-6727-49ac-a008-d98cf5e70048}';

/// The IAudioClock2 interface is used to get the current device position.
/// The client obtains a reference to the `IAudioClock` interface of a
/// stream object by calling the `IAudioClient::GetService` method with
/// parameter `riid` set to REFIID [IID_IAudioClock].
///
/// {@category com}
class IAudioClock2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClock2(super.ptr);

  factory IAudioClock2.from(IUnknown interface) =>
      IAudioClock2(interface.toInterface(IID_IAudioClock2));

  int
      getDevicePosition(
              Pointer<Uint64> DevicePosition, Pointer<Uint64> QPCPosition) =>
          ptr.ref.vtable
                  .elementAt(3)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Pointer<Uint64> DevicePosition,
                                  Pointer<Uint64> QPCPosition)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, Pointer<Uint64> DevicePosition,
                          Pointer<Uint64> QPCPosition)>()(
              ptr.ref.lpVtbl, DevicePosition, QPCPosition);
}
