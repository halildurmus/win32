// ISpRecoContext.dart

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

import '../../media/speech/ISpEventSource.dart';
import '../../media/speech/ISpRecognizer.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpRecoGrammar.dart';
import '../../media/speech/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/speech/ISpRecoResult.dart';
import '../../media/speech/ISpVoice.dart';

/// @nodoc
const IID_ISpRecoContext = '{F740A62F-7C15-489E-8234-940A33D9272D}';

/// {@category Interface}
/// {@category com}
class ISpRecoContext extends ISpEventSource {
  // vtable begins at 13, is 18 entries long.
  ISpRecoContext(Pointer<COMObject> ptr) : super(ptr);

  int GetRecognizer(
    Pointer<Pointer<COMObject>> ppRecognizer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecognizer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecognizer,
          )>()(
        ptr.ref.lpVtbl,
        ppRecognizer,
      );

  int CreateGrammar(
    int ullGrammarId,
    Pointer<Pointer<COMObject>> ppGrammar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullGrammarId,
            Pointer<Pointer<COMObject>> ppGrammar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullGrammarId,
            Pointer<Pointer<COMObject>> ppGrammar,
          )>()(
        ptr.ref.lpVtbl,
        ullGrammarId,
        ppGrammar,
      );

  int GetStatus(
    Pointer<SPRECOCONTEXTSTATUS> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPRECOCONTEXTSTATUS> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPRECOCONTEXTSTATUS> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int GetMaxAlternates(
    Pointer<Uint32> pcAlternates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcAlternates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcAlternates,
          )>()(
        ptr.ref.lpVtbl,
        pcAlternates,
      );

  int SetMaxAlternates(
    int cAlternates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cAlternates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cAlternates,
          )>()(
        ptr.ref.lpVtbl,
        cAlternates,
      );

  int SetAudioOptions(
    int Options,
    Pointer<GUID> pAudioFormatId,
    Pointer<WAVEFORMATEX> pWaveFormatEx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Options,
            Pointer<GUID> pAudioFormatId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            Pointer<GUID> pAudioFormatId,
            Pointer<WAVEFORMATEX> pWaveFormatEx,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        pAudioFormatId,
        pWaveFormatEx,
      );

  int GetAudioOptions(
    Pointer<Int32> pOptions,
    Pointer<GUID> pAudioFormatId,
    Pointer<Pointer<WAVEFORMATEX>> ppCoMemWFEX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pOptions,
            Pointer<GUID> pAudioFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWFEX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pOptions,
            Pointer<GUID> pAudioFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWFEX,
          )>()(
        ptr.ref.lpVtbl,
        pOptions,
        pAudioFormatId,
        ppCoMemWFEX,
      );

  int DeserializeResult(
    Pointer<SPSERIALIZEDRESULT> pSerializedResult,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSERIALIZEDRESULT> pSerializedResult,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSERIALIZEDRESULT> pSerializedResult,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pSerializedResult,
        ppResult,
      );

  int Bookmark(
    int Options,
    int ullStreamPosition,
    int lparamEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Options,
            Uint64 ullStreamPosition,
            IntPtr lparamEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            int ullStreamPosition,
            int lparamEvent,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        ullStreamPosition,
        lparamEvent,
      );

  int SetAdaptationData(
    Pointer<Utf16> pAdaptationData,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAdaptationData,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAdaptationData,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        pAdaptationData,
        cch,
      );

  int Pause(
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
      );

  int Resume(
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
      );

  int SetVoice(
    Pointer<COMObject> pVoice,
    int fAllowFormatChanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pVoice,
            Int32 fAllowFormatChanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pVoice,
            int fAllowFormatChanges,
          )>()(
        ptr.ref.lpVtbl,
        pVoice,
        fAllowFormatChanges,
      );

  int GetVoice(
    Pointer<Pointer<COMObject>> ppVoice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVoice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVoice,
          )>()(
        ptr.ref.lpVtbl,
        ppVoice,
      );

  int SetVoicePurgeEvent(
    int ullEventInterest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullEventInterest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullEventInterest,
          )>()(
        ptr.ref.lpVtbl,
        ullEventInterest,
      );

  int GetVoicePurgeEvent(
    Pointer<Uint64> pullEventInterest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullEventInterest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullEventInterest,
          )>()(
        ptr.ref.lpVtbl,
        pullEventInterest,
      );

  int SetContextState(
    int eContextState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eContextState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eContextState,
          )>()(
        ptr.ref.lpVtbl,
        eContextState,
      );

  int GetContextState(
    Pointer<Int32> peContextState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> peContextState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> peContextState,
          )>()(
        ptr.ref.lpVtbl,
        peContextState,
      );
}
