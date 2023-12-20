// iaudioclient2.dart

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
import 'iaudioclient.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClient2 = '{726778cd-f60a-4eda-82de-e47610cd78aa}';

/// The IAudioClient2 interface is derived from the IAudioClient interface,
/// with a set of additional methods that enable a Windows Audio Session API
/// (WASAPI) audio client to do the following: opt in for offloading, query
/// stream properties, and get information from the hardware that handles
/// offloading.
///
/// {@category com}
class IAudioClient2 extends IAudioClient {
  // vtable begins at 15, is 3 entries long.
  IAudioClient2(super.ptr);

  factory IAudioClient2.from(IUnknown interface) =>
      IAudioClient2(interface.toInterface(IID_IAudioClient2));

  int isOffloadCapable(int Category, Pointer<Int32> pbOffloadCapable) => ptr
          .ref.vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Int32 Category,
                          Pointer<Int32> pbOffloadCapable)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, int Category, Pointer<Int32> pbOffloadCapable)>()(
      ptr.ref.lpVtbl, Category, pbOffloadCapable);

  int setClientProperties(Pointer<AudioClientProperties> pProperties) =>
      ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<AudioClientProperties> pProperties)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<AudioClientProperties> pProperties)>()(
          ptr.ref.lpVtbl, pProperties);

  int getBufferSizeLimits(
          Pointer<WAVEFORMATEX> pFormat,
          int bEventDriven,
          Pointer<Int64> phnsMinBufferDuration,
          Pointer<Int64> phnsMaxBufferDuration) =>
      ptr.ref.vtable
              .elementAt(17)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<WAVEFORMATEX> pFormat,
                              Int32 bEventDriven,
                              Pointer<Int64> phnsMinBufferDuration,
                              Pointer<Int64> phnsMaxBufferDuration)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<WAVEFORMATEX> pFormat,
                      int bEventDriven,
                      Pointer<Int64> phnsMinBufferDuration,
                      Pointer<Int64> phnsMaxBufferDuration)>()(ptr.ref.lpVtbl,
          pFormat, bEventDriven, phnsMinBufferDuration, phnsMaxBufferDuration);
}
