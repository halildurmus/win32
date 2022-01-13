// ISpRecoResult.dart

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

import '../../media/speech/ISpPhrase.dart';
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpPhraseAlt.dart';
import '../../media/speech/ISpStreamFormat.dart';
import '../../media/audio/structs.g.dart';
import '../../media/speech/ISpRecoContext.dart';

/// @nodoc
const IID_ISpRecoResult = '{20B053BE-E235-43CD-9A2A-8D17A48B7842}';

/// {@category Interface}
/// {@category com}
class ISpRecoResult extends ISpPhrase {
  // vtable begins at 7, is 7 entries long.
  ISpRecoResult(Pointer<COMObject> ptr) : super(ptr);

  int GetResultTimes(
    Pointer<SPRECORESULTTIMES> pTimes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPRECORESULTTIMES> pTimes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPRECORESULTTIMES> pTimes,
          )>()(
        ptr.ref.lpVtbl,
        pTimes,
      );

  int GetAlternates(
    int ulStartElement,
    int cElements,
    int ulRequestCount,
    Pointer<Pointer<COMObject>> ppPhrases,
    Pointer<Uint32> pcPhrasesReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStartElement,
            Uint32 cElements,
            Uint32 ulRequestCount,
            Pointer<Pointer<COMObject>> ppPhrases,
            Pointer<Uint32> pcPhrasesReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStartElement,
            int cElements,
            int ulRequestCount,
            Pointer<Pointer<COMObject>> ppPhrases,
            Pointer<Uint32> pcPhrasesReturned,
          )>()(
        ptr.ref.lpVtbl,
        ulStartElement,
        cElements,
        ulRequestCount,
        ppPhrases,
        pcPhrasesReturned,
      );

  int GetAudio(
    int ulStartElement,
    int cElements,
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStartElement,
            Uint32 cElements,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStartElement,
            int cElements,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        ulStartElement,
        cElements,
        ppStream,
      );

  int SpeakAudio(
    int ulStartElement,
    int cElements,
    int dwFlags,
    Pointer<Uint32> pulStreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStartElement,
            Uint32 cElements,
            Uint32 dwFlags,
            Pointer<Uint32> pulStreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStartElement,
            int cElements,
            int dwFlags,
            Pointer<Uint32> pulStreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        ulStartElement,
        cElements,
        dwFlags,
        pulStreamNumber,
      );

  int Serialize(
    Pointer<Pointer<SPSERIALIZEDRESULT>> ppCoMemSerializedResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SPSERIALIZEDRESULT>> ppCoMemSerializedResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SPSERIALIZEDRESULT>> ppCoMemSerializedResult,
          )>()(
        ptr.ref.lpVtbl,
        ppCoMemSerializedResult,
      );

  int ScaleAudio(
    Pointer<GUID> pAudioFormatId,
    Pointer<WAVEFORMATEX> pWaveFormatEx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pAudioFormatId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pAudioFormatId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>()(
        ptr.ref.lpVtbl,
        pAudioFormatId,
        pWaveFormatEx,
      );

  int GetRecoContext(
    Pointer<Pointer<COMObject>> ppRecoContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecoContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecoContext,
          )>()(
        ptr.ref.lpVtbl,
        ppRecoContext,
      );
}
