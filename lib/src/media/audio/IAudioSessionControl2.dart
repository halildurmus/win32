// IAudioSessionControl2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../media/audio/IAudioSessionControl.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioSessionControl2 = '{BFB7FF88-7239-4FC9-8FA2-07C950BE9C6D}';

/// {@category Interface}
/// {@category com}
class IAudioSessionControl2 extends IAudioSessionControl {
  // vtable begins at 12, is 5 entries long.
  IAudioSessionControl2(Pointer<COMObject> ptr) : super(ptr);

  int GetSessionIdentifier(
    Pointer<Pointer<Utf16>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int GetSessionInstanceIdentifier(
    Pointer<Pointer<Utf16>> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int GetProcessId(
    Pointer<Uint32> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int IsSystemSoundsSession() => ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetDuckingPreference(
    int optOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 optOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int optOut,
          )>()(
        ptr.ref.lpVtbl,
        optOut,
      );
}
