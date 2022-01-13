// ISpatialAudioClient.dart

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
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/IAudioFormatEnumerator.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISpatialAudioClient = '{BBF8E066-AAAA-49BE-9A4D-FD2A858EA27F}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioClient extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISpatialAudioClient(Pointer<COMObject> ptr) : super(ptr);

  int GetStaticObjectPosition(
    int type,
    Pointer<Float> x,
    Pointer<Float> y,
    Pointer<Float> z,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 type,
            Pointer<Float> x,
            Pointer<Float> y,
            Pointer<Float> z,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<Float> x,
            Pointer<Float> y,
            Pointer<Float> z,
          )>()(
        ptr.ref.lpVtbl,
        type,
        x,
        y,
        z,
      );

  int GetNativeStaticObjectTypeMask(
    Pointer<Uint32> mask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> mask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> mask,
          )>()(
        ptr.ref.lpVtbl,
        mask,
      );

  int GetMaxDynamicObjectCount(
    Pointer<Uint32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetSupportedAudioObjectFormatEnumerator(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        enumerator,
      );

  int GetMaxFrameCount(
    Pointer<WAVEFORMATEX> objectFormat,
    Pointer<Uint32> frameCountPerBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> objectFormat,
            Pointer<Uint32> frameCountPerBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> objectFormat,
            Pointer<Uint32> frameCountPerBuffer,
          )>()(
        ptr.ref.lpVtbl,
        objectFormat,
        frameCountPerBuffer,
      );

  int IsAudioObjectFormatSupported(
    Pointer<WAVEFORMATEX> objectFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> objectFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> objectFormat,
          )>()(
        ptr.ref.lpVtbl,
        objectFormat,
      );

  int IsSpatialAudioStreamAvailable(
    Pointer<GUID> streamUuid,
    Pointer<PROPVARIANT> auxiliaryInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> streamUuid,
            Pointer<PROPVARIANT> auxiliaryInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> streamUuid,
            Pointer<PROPVARIANT> auxiliaryInfo,
          )>()(
        ptr.ref.lpVtbl,
        streamUuid,
        auxiliaryInfo,
      );

  int ActivateSpatialAudioStream(
    Pointer<PROPVARIANT> activationParams,
    Pointer<GUID> riid,
    Pointer<Pointer> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> activationParams,
            Pointer<GUID> riid,
            Pointer<Pointer> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> activationParams,
            Pointer<GUID> riid,
            Pointer<Pointer> stream,
          )>()(
        ptr.ref.lpVtbl,
        activationParams,
        riid,
        stream,
      );
}
