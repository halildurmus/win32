// immdeviceenumerator.dart

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
const IID_IMMDeviceEnumerator = '{a95664d2-9614-4f35-a746-de8db63617e6}';

/// The IMMDeviceEnumerator interface provides methods for enumerating
/// multimedia device resources.
///
/// {@category com}
class IMMDeviceEnumerator extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMMDeviceEnumerator(super.ptr);

  factory IMMDeviceEnumerator.from(IUnknown interface) =>
      IMMDeviceEnumerator(interface.toInterface(IID_IMMDeviceEnumerator));

  int enumAudioEndpoints(
    int dataFlow,
    int dwStateMask,
    Pointer<Pointer<COMObject>> ppDevices,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 dataFlow,
              Uint32 dwStateMask,
              Pointer<Pointer<COMObject>> ppDevices,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int dataFlow,
          int dwStateMask,
          Pointer<Pointer<COMObject>> ppDevices,
        )
      >()(ptr.ref.lpVtbl, dataFlow, dwStateMask, ppDevices);

  int getDefaultAudioEndpoint(
    int dataFlow,
    int role,
    Pointer<Pointer<COMObject>> ppEndpoint,
  ) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 dataFlow,
              Int32 role,
              Pointer<Pointer<COMObject>> ppEndpoint,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int dataFlow,
          int role,
          Pointer<Pointer<COMObject>> ppEndpoint,
        )
      >()(ptr.ref.lpVtbl, dataFlow, role, ppEndpoint);

  int getDevice(Pointer<Utf16> pwstrId, Pointer<Pointer<COMObject>> ppDevice) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> pwstrId,
                  Pointer<Pointer<COMObject>> ppDevice,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> pwstrId,
              Pointer<Pointer<COMObject>> ppDevice,
            )
          >()(ptr.ref.lpVtbl, pwstrId, ppDevice);

  int registerEndpointNotificationCallback(
    Pointer<COMObject> pClient,
  ) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pClient)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pClient)>()(
    ptr.ref.lpVtbl,
    pClient,
  );

  int unregisterEndpointNotificationCallback(
    Pointer<COMObject> pClient,
  ) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pClient)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pClient)>()(
    ptr.ref.lpVtbl,
    pClient,
  );
}

/// @nodoc
const CLSID_MMDeviceEnumerator = '{bcde0395-e52f-467c-8e3d-c4579291692e}';

/// {@category com}
class MMDeviceEnumerator extends IMMDeviceEnumerator {
  MMDeviceEnumerator(super.ptr);

  factory MMDeviceEnumerator.createInstance() => MMDeviceEnumerator(
    COMObject.createFromID(CLSID_MMDeviceEnumerator, IID_IMMDeviceEnumerator),
  );
}
