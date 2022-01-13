// ISpeechLexicon.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/structs.g.dart';
import '../../media/speech/ISpeechLexiconWords.dart';
import '../../specialTypes.dart';
import '../../media/speech/ISpeechLexiconPronunciations.dart';

/// @nodoc
const IID_ISpeechLexicon = '{3DA7627A-C7AE-4B23-8708-638C50362C25}';

/// {@category Interface}
/// {@category com}
class ISpeechLexicon extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  ISpeechLexicon(Pointer<COMObject> ptr) : super(ptr);

  int get GenerationId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> GenerationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> GenerationId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetWords(
    int Flags,
    Pointer<Int32> GenerationID,
    Pointer<Pointer<COMObject>> Words,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Int32> GenerationID,
            Pointer<Pointer<COMObject>> Words,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Int32> GenerationID,
            Pointer<Pointer<COMObject>> Words,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        GenerationID,
        Words,
      );

  int AddPronunciation(
    Pointer<Utf16> bstrWord,
    int LangId,
    int PartOfSpeech,
    Pointer<Utf16> bstrPronunciation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            Int32 LangId,
            Int32 PartOfSpeech,
            Pointer<Utf16> bstrPronunciation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            int LangId,
            int PartOfSpeech,
            Pointer<Utf16> bstrPronunciation,
          )>()(
        ptr.ref.lpVtbl,
        bstrWord,
        LangId,
        PartOfSpeech,
        bstrPronunciation,
      );

  int AddPronunciationByPhoneIds(
    Pointer<Utf16> bstrWord,
    int LangId,
    int PartOfSpeech,
    Pointer<VARIANT> PhoneIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            Int32 LangId,
            Int32 PartOfSpeech,
            Pointer<VARIANT> PhoneIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            int LangId,
            int PartOfSpeech,
            Pointer<VARIANT> PhoneIds,
          )>()(
        ptr.ref.lpVtbl,
        bstrWord,
        LangId,
        PartOfSpeech,
        PhoneIds,
      );

  int RemovePronunciation(
    Pointer<Utf16> bstrWord,
    int LangId,
    int PartOfSpeech,
    Pointer<Utf16> bstrPronunciation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            Int32 LangId,
            Int32 PartOfSpeech,
            Pointer<Utf16> bstrPronunciation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            int LangId,
            int PartOfSpeech,
            Pointer<Utf16> bstrPronunciation,
          )>()(
        ptr.ref.lpVtbl,
        bstrWord,
        LangId,
        PartOfSpeech,
        bstrPronunciation,
      );

  int RemovePronunciationByPhoneIds(
    Pointer<Utf16> bstrWord,
    int LangId,
    int PartOfSpeech,
    Pointer<VARIANT> PhoneIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            Int32 LangId,
            Int32 PartOfSpeech,
            Pointer<VARIANT> PhoneIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            int LangId,
            int PartOfSpeech,
            Pointer<VARIANT> PhoneIds,
          )>()(
        ptr.ref.lpVtbl,
        bstrWord,
        LangId,
        PartOfSpeech,
        PhoneIds,
      );

  int GetPronunciations(
    Pointer<Utf16> bstrWord,
    int LangId,
    int TypeFlags,
    Pointer<Pointer<COMObject>> ppPronunciations,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            Int32 LangId,
            Int32 TypeFlags,
            Pointer<Pointer<COMObject>> ppPronunciations,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWord,
            int LangId,
            int TypeFlags,
            Pointer<Pointer<COMObject>> ppPronunciations,
          )>()(
        ptr.ref.lpVtbl,
        bstrWord,
        LangId,
        TypeFlags,
        ppPronunciations,
      );

  int GetGenerationChange(
    Pointer<Int32> GenerationID,
    Pointer<Pointer<COMObject>> ppWords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> GenerationID,
            Pointer<Pointer<COMObject>> ppWords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> GenerationID,
            Pointer<Pointer<COMObject>> ppWords,
          )>()(
        ptr.ref.lpVtbl,
        GenerationID,
        ppWords,
      );
}
