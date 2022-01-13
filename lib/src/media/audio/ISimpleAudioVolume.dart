// ISimpleAudioVolume.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISimpleAudioVolume = '{87CE5498-68D6-44E5-9215-6DA47EF883D8}';

/// {@category Interface}
/// {@category com}
class ISimpleAudioVolume extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISimpleAudioVolume(Pointer<COMObject> ptr) : super(ptr);

  int SetMasterVolume(
    double fLevel,
    Pointer<GUID> EventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fLevel,
            Pointer<GUID> EventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fLevel,
            Pointer<GUID> EventContext,
          )>()(
        ptr.ref.lpVtbl,
        fLevel,
        EventContext,
      );

  int GetMasterVolume(
    Pointer<Float> pfLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pfLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pfLevel,
          )>()(
        ptr.ref.lpVtbl,
        pfLevel,
      );

  int SetMute(
    int bMute,
    Pointer<GUID> EventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMute,
            Pointer<GUID> EventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMute,
            Pointer<GUID> EventContext,
          )>()(
        ptr.ref.lpVtbl,
        bMute,
        EventContext,
      );

  int GetMute(
    Pointer<Int32> pbMute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbMute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbMute,
          )>()(
        ptr.ref.lpVtbl,
        pbMute,
      );
}
