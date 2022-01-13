// ISpLexicon.dart

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
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpLexicon = '{DA41A7C2-5383-4DB2-916B-6C1719E3DB58}';

/// {@category Interface}
/// {@category com}
class ISpLexicon extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ISpLexicon(Pointer<COMObject> ptr) : super(ptr);

  int GetPronunciations(
    Pointer<Utf16> pszWord,
    int LangID,
    int dwFlags,
    Pointer<SPWORDPRONUNCIATIONLIST> pWordPronunciationList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Uint16 LangID,
            Uint32 dwFlags,
            Pointer<SPWORDPRONUNCIATIONLIST> pWordPronunciationList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszWord,
            int LangID,
            int dwFlags,
            Pointer<SPWORDPRONUNCIATIONLIST> pWordPronunciationList,
          )>()(
        ptr.ref.lpVtbl,
        pszWord,
        LangID,
        dwFlags,
        pWordPronunciationList,
      );

  int AddPronunciation(
    Pointer<Utf16> pszWord,
    int LangID,
    int ePartOfSpeech,
    Pointer<Uint16> pszPronunciation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Uint16 LangID,
            Int32 ePartOfSpeech,
            Pointer<Uint16> pszPronunciation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszWord,
            int LangID,
            int ePartOfSpeech,
            Pointer<Uint16> pszPronunciation,
          )>()(
        ptr.ref.lpVtbl,
        pszWord,
        LangID,
        ePartOfSpeech,
        pszPronunciation,
      );

  int RemovePronunciation(
    Pointer<Utf16> pszWord,
    int LangID,
    int ePartOfSpeech,
    Pointer<Uint16> pszPronunciation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Uint16 LangID,
            Int32 ePartOfSpeech,
            Pointer<Uint16> pszPronunciation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszWord,
            int LangID,
            int ePartOfSpeech,
            Pointer<Uint16> pszPronunciation,
          )>()(
        ptr.ref.lpVtbl,
        pszWord,
        LangID,
        ePartOfSpeech,
        pszPronunciation,
      );

  int GetGeneration(
    Pointer<Uint32> pdwGeneration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwGeneration,
          )>()(
        ptr.ref.lpVtbl,
        pdwGeneration,
      );

  int GetGenerationChange(
    int dwFlags,
    Pointer<Uint32> pdwGeneration,
    Pointer<SPWORDLIST> pWordList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Uint32> pdwGeneration,
            Pointer<SPWORDLIST> pWordList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Uint32> pdwGeneration,
            Pointer<SPWORDLIST> pWordList,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pdwGeneration,
        pWordList,
      );

  int GetWords(
    int dwFlags,
    Pointer<Uint32> pdwGeneration,
    Pointer<Uint32> pdwCookie,
    Pointer<SPWORDLIST> pWordList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Uint32> pdwGeneration,
            Pointer<Uint32> pdwCookie,
            Pointer<SPWORDLIST> pWordList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Uint32> pdwGeneration,
            Pointer<Uint32> pdwCookie,
            Pointer<SPWORDLIST> pWordList,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pdwGeneration,
        pdwCookie,
        pWordList,
      );
}

/// @nodoc
const CLSID_SpLexicon = '{0655E396-25D0-11D3-9C26-00C04F8EF87C}';

/// {@category com}
class SpLexicon extends ISpLexicon {
  SpLexicon(Pointer<COMObject> ptr) : super(ptr);

  factory SpLexicon.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpLexicon);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpLexicon);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpLexicon(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
