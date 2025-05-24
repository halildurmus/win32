// iaudiosessioncontrol2.dart

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
import 'iaudiosessioncontrol.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioSessionControl2 = '{bfb7ff88-7239-4fc9-8fa2-07c950be9c6d}';

/// The IAudioSessionControl2 interface can be used by a client to get
/// information about the audio session.
///
/// {@category com}
class IAudioSessionControl2 extends IAudioSessionControl {
  // vtable begins at 12, is 5 entries long.
  IAudioSessionControl2(super.ptr);

  factory IAudioSessionControl2.from(IUnknown interface) =>
      IAudioSessionControl2(interface.toInterface(IID_IAudioSessionControl2));

  int getSessionIdentifier(Pointer<Pointer<Utf16>> pRetVal) =>
      (ptr.ref.vtable + 12)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int getSessionInstanceIdentifier(Pointer<Pointer<Utf16>> pRetVal) =>
      (ptr.ref.vtable + 13)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int getProcessId(Pointer<Uint32> pRetVal) =>
      (ptr.ref.vtable + 14)
          .cast<
            Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pRetVal)>
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> pRetVal)>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int isSystemSoundsSession() => (ptr.ref.vtable + 15)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setDuckingPreference(int optOut) => (ptr.ref.vtable + 16)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 optOut)>>>()
      .value
      .asFunction<int Function(Pointer, int optOut)>()(ptr.ref.lpVtbl, optOut);
}
