// ISpRecoGrammar.dart

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

import '../../media/speech/ISpGrammarBuilder.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpRecoContext.dart';
import '../../media/speech/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_ISpRecoGrammar = '{2177DB29-7F45-47D0-8554-067E91C80502}';

/// {@category Interface}
/// {@category com}
class ISpRecoGrammar extends ISpGrammarBuilder {
  // vtable begins at 11, is 18 entries long.
  ISpRecoGrammar(Pointer<COMObject> ptr) : super(ptr);

  int GetGrammarId(
    Pointer<Uint64> pullGrammarId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullGrammarId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullGrammarId,
          )>()(
        ptr.ref.lpVtbl,
        pullGrammarId,
      );

  int GetRecoContext(
    Pointer<Pointer<COMObject>> ppRecoCtxt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecoCtxt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRecoCtxt,
          )>()(
        ptr.ref.lpVtbl,
        ppRecoCtxt,
      );

  int LoadCmdFromFile(
    Pointer<Utf16> pszFileName,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            Int32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
        Options,
      );

  int LoadCmdFromObject(
    Pointer<GUID> rcid,
    Pointer<Utf16> pszGrammarName,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rcid,
            Pointer<Utf16> pszGrammarName,
            Int32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rcid,
            Pointer<Utf16> pszGrammarName,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        rcid,
        pszGrammarName,
        Options,
      );

  int LoadCmdFromResource(
    int hModule,
    Pointer<Utf16> pszResourceName,
    Pointer<Utf16> pszResourceType,
    int wLanguage,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hModule,
            Pointer<Utf16> pszResourceName,
            Pointer<Utf16> pszResourceType,
            Uint16 wLanguage,
            Int32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hModule,
            Pointer<Utf16> pszResourceName,
            Pointer<Utf16> pszResourceType,
            int wLanguage,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        hModule,
        pszResourceName,
        pszResourceType,
        wLanguage,
        Options,
      );

  int LoadCmdFromMemory(
    Pointer<SPBINARYGRAMMAR> pGrammar,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPBINARYGRAMMAR> pGrammar,
            Int32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPBINARYGRAMMAR> pGrammar,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        pGrammar,
        Options,
      );

  int LoadCmdFromProprietaryGrammar(
    Pointer<GUID> rguidParam,
    Pointer<Utf16> pszStringParam,
    Pointer pvDataPrarm,
    int cbDataSize,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidParam,
            Pointer<Utf16> pszStringParam,
            Pointer pvDataPrarm,
            Uint32 cbDataSize,
            Int32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidParam,
            Pointer<Utf16> pszStringParam,
            Pointer pvDataPrarm,
            int cbDataSize,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        rguidParam,
        pszStringParam,
        pvDataPrarm,
        cbDataSize,
        Options,
      );

  int SetRuleState(
    Pointer<Utf16> pszName,
    Pointer pReserved,
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer pReserved,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer pReserved,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pReserved,
        NewState,
      );

  int SetRuleIdState(
    int ulRuleId,
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRuleId,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRuleId,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        ulRuleId,
        NewState,
      );

  int LoadDictation(
    Pointer<Utf16> pszTopicName,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTopicName,
            Int32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTopicName,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        pszTopicName,
        Options,
      );

  int UnloadDictation() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int SetDictationState(
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
      );

  int SetWordSequenceData(
    Pointer<Utf16> pText,
    int cchText,
    Pointer<SPTEXTSELECTIONINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pText,
            Uint32 cchText,
            Pointer<SPTEXTSELECTIONINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pText,
            int cchText,
            Pointer<SPTEXTSELECTIONINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pText,
        cchText,
        pInfo,
      );

  int SetTextSelection(
    Pointer<SPTEXTSELECTIONINFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPTEXTSELECTIONINFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPTEXTSELECTIONINFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );

  int IsPronounceable(
    Pointer<Utf16> pszWord,
    Pointer<Int32> pWordPronounceable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Pointer<Int32> pWordPronounceable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Pointer<Int32> pWordPronounceable,
          )>()(
        ptr.ref.lpVtbl,
        pszWord,
        pWordPronounceable,
      );

  int SetGrammarState(
    int eGrammarState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eGrammarState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eGrammarState,
          )>()(
        ptr.ref.lpVtbl,
        eGrammarState,
      );

  int SaveCmd(
    Pointer<COMObject> pStream,
    Pointer<Pointer<Utf16>> ppszCoMemErrorText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Pointer<Utf16>> ppszCoMemErrorText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Pointer<Utf16>> ppszCoMemErrorText,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        ppszCoMemErrorText,
      );

  int GetGrammarState(
    Pointer<Int32> peGrammarState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> peGrammarState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> peGrammarState,
          )>()(
        ptr.ref.lpVtbl,
        peGrammarState,
      );
}
