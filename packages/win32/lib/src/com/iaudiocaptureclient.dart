// iaudiocaptureclient.dart

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
const IID_IAudioCaptureClient = '{c8adbd64-e71e-48a0-a4de-185c395cd317}';

/// The IAudioCaptureClient interface enables a client to read input data
/// from a capture endpoint buffer. The client obtains a reference to the
/// `IAudioCaptureClient` interface on a stream object by calling the
/// `IAudioClient::GetService` method with parameter `riid` set to REFIID
/// [IID_IAudioCaptureClient].
///
/// {@category com}
class IAudioCaptureClient extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioCaptureClient(super.ptr);

  factory IAudioCaptureClient.from(IUnknown interface) =>
      IAudioCaptureClient(interface.toInterface(IID_IAudioCaptureClient));

  int getBuffer(
    Pointer<Pointer<Uint8>> ppData,
    Pointer<Uint32> pNumFramesToRead,
    Pointer<Uint32> pdwFlags,
    Pointer<Uint64> pu64DevicePosition,
    Pointer<Uint64> pu64QPCPosition,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Pointer<Uint8>> ppData,
              Pointer<Uint32> pNumFramesToRead,
              Pointer<Uint32> pdwFlags,
              Pointer<Uint64> pu64DevicePosition,
              Pointer<Uint64> pu64QPCPosition,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Pointer<Uint8>> ppData,
          Pointer<Uint32> pNumFramesToRead,
          Pointer<Uint32> pdwFlags,
          Pointer<Uint64> pu64DevicePosition,
          Pointer<Uint64> pu64QPCPosition,
        )
      >()(
    ptr.ref.lpVtbl,
    ppData,
    pNumFramesToRead,
    pdwFlags,
    pu64DevicePosition,
    pu64QPCPosition,
  );

  int releaseBuffer(int NumFramesRead) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Uint32 NumFramesRead)>>
      >()
      .value
      .asFunction<int Function(Pointer, int NumFramesRead)>()(
    ptr.ref.lpVtbl,
    NumFramesRead,
  );

  int getNextPacketSize(Pointer<Uint32> pNumFramesInNextPacket) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Uint32> pNumFramesInNextPacket)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Uint32> pNumFramesInNextPacket)
          >()(ptr.ref.lpVtbl, pNumFramesInNextPacket);
}
