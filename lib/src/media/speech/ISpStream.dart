// ISpStream.dart

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

import '../../media/speech/ISpStreamFormat.dart';
import '../../system/com/IStream.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpStream = '{12E3CCA9-7518-44C5-A5E7-BA5A79CB929E}';

/// {@category Interface}
/// {@category com}
class ISpStream extends ISpStreamFormat {
  // vtable begins at 15, is 4 entries long.
  ISpStream(Pointer<COMObject> ptr) : super(ptr);

  int SetBaseStream(
    Pointer<COMObject> pStream,
    Pointer<GUID> rguidFormat,
    Pointer<WAVEFORMATEX> pWaveFormatEx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<GUID> rguidFormat,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<GUID> rguidFormat,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        rguidFormat,
        pWaveFormatEx,
      );

  int GetBaseStream(
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        ppStream,
      );

  int BindToFile(
    Pointer<Utf16> pszFileName,
    int eMode,
    Pointer<GUID> pFormatId,
    Pointer<WAVEFORMATEX> pWaveFormatEx,
    int ullEventInterest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            Int32 eMode,
            Pointer<GUID> pFormatId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
            Uint64 ullEventInterest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            int eMode,
            Pointer<GUID> pFormatId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
            int ullEventInterest,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
        eMode,
        pFormatId,
        pWaveFormatEx,
        ullEventInterest,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

/// @nodoc
const CLSID_SpStream = '{715D9C59-4442-11D2-9605-00C04F8EE628}';

/// {@category com}
class SpStream extends ISpStream {
  SpStream(Pointer<COMObject> ptr) : super(ptr);

  factory SpStream.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpStream);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpStream);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpStream(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
