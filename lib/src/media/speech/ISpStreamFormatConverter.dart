// ISpStreamFormatConverter.dart

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
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_ISpStreamFormatConverter = '{678A932C-EA71-4446-9B41-78FDA6280A29}';

/// {@category Interface}
/// {@category com}
class ISpStreamFormatConverter extends ISpStreamFormat {
  // vtable begins at 15, is 6 entries long.
  ISpStreamFormatConverter(Pointer<COMObject> ptr) : super(ptr);

  int SetBaseStream(
    Pointer<COMObject> pStream,
    int fSetFormatToBaseStreamFormat,
    int fWriteToBaseStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Int32 fSetFormatToBaseStreamFormat,
            Int32 fWriteToBaseStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            int fSetFormatToBaseStreamFormat,
            int fWriteToBaseStream,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        fSetFormatToBaseStreamFormat,
        fWriteToBaseStream,
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

  int SetFormat(
    Pointer<GUID> rguidFormatIdOfConvertedStream,
    Pointer<WAVEFORMATEX> pWaveFormatExOfConvertedStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidFormatIdOfConvertedStream,
            Pointer<WAVEFORMATEX> pWaveFormatExOfConvertedStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidFormatIdOfConvertedStream,
            Pointer<WAVEFORMATEX> pWaveFormatExOfConvertedStream,
          )>()(
        ptr.ref.lpVtbl,
        rguidFormatIdOfConvertedStream,
        pWaveFormatExOfConvertedStream,
      );

  int ResetSeekPosition() => ptr.ref.lpVtbl.value
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

  int ScaleConvertedToBaseOffset(
    int ullOffsetConvertedStream,
    Pointer<Uint64> pullOffsetBaseStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullOffsetConvertedStream,
            Pointer<Uint64> pullOffsetBaseStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullOffsetConvertedStream,
            Pointer<Uint64> pullOffsetBaseStream,
          )>()(
        ptr.ref.lpVtbl,
        ullOffsetConvertedStream,
        pullOffsetBaseStream,
      );

  int ScaleBaseToConvertedOffset(
    int ullOffsetBaseStream,
    Pointer<Uint64> pullOffsetConvertedStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullOffsetBaseStream,
            Pointer<Uint64> pullOffsetConvertedStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullOffsetBaseStream,
            Pointer<Uint64> pullOffsetConvertedStream,
          )>()(
        ptr.ref.lpVtbl,
        ullOffsetBaseStream,
        pullOffsetConvertedStream,
      );
}

/// @nodoc
const CLSID_SpStreamFormatConverter = '{7013943A-E2EC-11D2-A086-00C04F8EF9B5}';

/// {@category com}
class SpStreamFormatConverter extends ISpStreamFormatConverter {
  SpStreamFormatConverter(Pointer<COMObject> ptr) : super(ptr);

  factory SpStreamFormatConverter.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpStreamFormatConverter);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpStreamFormatConverter);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpStreamFormatConverter(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
