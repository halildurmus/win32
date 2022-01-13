// IAudioMediaType.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/apo/IAudioMediaType.dart';
import '../../../media/audio/structs.g.dart';
import '../../../media/audio/apo/structs.g.dart';

/// @nodoc
const IID_IAudioMediaType = '{4E997F73-B71F-4798-873B-ED7DFCF15B4D}';

/// {@category Interface}
/// {@category com}
class IAudioMediaType extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAudioMediaType(Pointer<COMObject> ptr) : super(ptr);

  int IsCompressedFormat(
    Pointer<Int32> pfCompressed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCompressed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCompressed,
          )>()(
        ptr.ref.lpVtbl,
        pfCompressed,
      );

  int IsEqual(
    Pointer<COMObject> pIAudioType,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIAudioType,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIAudioType,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pIAudioType,
        pdwFlags,
      );

  Pointer<WAVEFORMATEX> GetAudioFormat() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<WAVEFORMATEX> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<WAVEFORMATEX> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetUncompressedAudioFormat(
    Pointer<UNCOMPRESSEDAUDIOFORMAT> pUncompressedAudioFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<UNCOMPRESSEDAUDIOFORMAT> pUncompressedAudioFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<UNCOMPRESSEDAUDIOFORMAT> pUncompressedAudioFormat,
          )>()(
        ptr.ref.lpVtbl,
        pUncompressedAudioFormat,
      );
}
