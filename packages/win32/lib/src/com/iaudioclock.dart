// iaudioclock.dart

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
const IID_IAudioClock = '{cd63314f-3fba-4a1b-812c-ef96358728e7}';

/// The IAudioClock interface enables a client to monitor a stream's data
/// rate and the current position in the stream. The client obtains a
/// reference to the `IAudioClock` interface of a stream object by calling
/// the `IAudioClient::GetService` method with parameter `riid` set to
/// REFIID [IID_IAudioClock].
///
/// {@category com}
class IAudioClock extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioClock(super.ptr);

  factory IAudioClock.from(IUnknown interface) =>
      IAudioClock(interface.toInterface(IID_IAudioClock));

  int getFrequency(Pointer<Uint64> pu64Frequency) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint64> pu64Frequency)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint64> pu64Frequency)>()(
    ptr.ref.lpVtbl,
    pu64Frequency,
  );

  int getPosition(
    Pointer<Uint64> pu64Position,
    Pointer<Uint64> pu64QPCPosition,
  ) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Uint64> pu64Position,
              Pointer<Uint64> pu64QPCPosition,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Uint64> pu64Position,
          Pointer<Uint64> pu64QPCPosition,
        )
      >()(ptr.ref.lpVtbl, pu64Position, pu64QPCPosition);

  int getCharacteristics(
    Pointer<Uint32> pdwCharacteristics,
  ) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Uint32> pdwCharacteristics)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pdwCharacteristics)>()(
    ptr.ref.lpVtbl,
    pdwCharacteristics,
  );
}
