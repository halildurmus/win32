// ISpatialAudioObjectRenderStreamBase.dart

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
const IID_ISpatialAudioObjectRenderStreamBase =
    '{FEAAF403-C1D8-450D-AA05-E0CCEE7502A8}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectRenderStreamBase extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISpatialAudioObjectRenderStreamBase(Pointer<COMObject> ptr) : super(ptr);

  int GetAvailableDynamicObjectCount(
    Pointer<Uint32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetService(
    Pointer<GUID> riid,
    Pointer<Pointer> service,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> service,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> service,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        service,
      );

  int Start() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int BeginUpdatingAudioObjects(
    Pointer<Uint32> availableDynamicObjectCount,
    Pointer<Uint32> frameCountPerBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> availableDynamicObjectCount,
            Pointer<Uint32> frameCountPerBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> availableDynamicObjectCount,
            Pointer<Uint32> frameCountPerBuffer,
          )>()(
        ptr.ref.lpVtbl,
        availableDynamicObjectCount,
        frameCountPerBuffer,
      );

  int EndUpdatingAudioObjects() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
}
