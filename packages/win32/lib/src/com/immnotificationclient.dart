// immnotificationclient.dart

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
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMMNotificationClient = '{7991eec9-7e89-4d85-8390-6c703cec60c0}';

/// The IMMNotificationClient interface provides notifications when an audio
/// endpoint device is added or removed, when the state or properties of an
/// endpoint device change, or when there is a change in the default role
/// assigned to an endpoint device.
///
/// {@category com}
class IMMNotificationClient extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMMNotificationClient(super.ptr);

  factory IMMNotificationClient.from(IUnknown interface) =>
      IMMNotificationClient(interface.toInterface(IID_IMMNotificationClient));

  int onDeviceStateChanged(Pointer<Utf16> pwstrDeviceId, int dwNewState) =>
      (ptr.ref.vtable + 3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Utf16> pwstrDeviceId,
                          Uint32 dwNewState)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Utf16> pwstrDeviceId,
                  int dwNewState)>()(ptr.ref.lpVtbl, pwstrDeviceId, dwNewState);

  int onDeviceAdded(Pointer<Utf16> pwstrDeviceId) => (ptr.ref.vtable + 4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Utf16> pwstrDeviceId)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Utf16> pwstrDeviceId)>()(
      ptr.ref.lpVtbl, pwstrDeviceId);

  int onDeviceRemoved(Pointer<Utf16> pwstrDeviceId) => (ptr.ref.vtable + 5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Utf16> pwstrDeviceId)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Utf16> pwstrDeviceId)>()(
      ptr.ref.lpVtbl, pwstrDeviceId);

  int onDefaultDeviceChanged(
          int flow, int role, Pointer<Utf16> pwstrDefaultDeviceId) =>
      (ptr.ref.vtable + 6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Int32 flow, Int32 role,
                              Pointer<Utf16> pwstrDefaultDeviceId)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int flow, int role,
                      Pointer<Utf16> pwstrDefaultDeviceId)>()(
          ptr.ref.lpVtbl, flow, role, pwstrDefaultDeviceId);

  int onPropertyValueChanged(Pointer<Utf16> pwstrDeviceId, PROPERTYKEY key) =>
      (ptr.ref.vtable + 7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Utf16> pwstrDeviceId,
                          PROPERTYKEY key)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Utf16> pwstrDeviceId,
                  PROPERTYKEY key)>()(ptr.ref.lpVtbl, pwstrDeviceId, key);
}
