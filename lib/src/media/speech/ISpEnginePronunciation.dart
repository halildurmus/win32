// ISpEnginePronunciation.dart

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
const IID_ISpEnginePronunciation = '{C360CE4B-76D1-4214-AD68-52657D5083DA}';

/// {@category Interface}
/// {@category com}
class ISpEnginePronunciation extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpEnginePronunciation(Pointer<COMObject> ptr) : super(ptr);

  int Normalize(
    Pointer<Utf16> pszWord,
    Pointer<Utf16> pszLeftContext,
    Pointer<Utf16> pszRightContext,
    int LangID,
    Pointer<SPNORMALIZATIONLIST> pNormalizationList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Pointer<Utf16> pszLeftContext,
            Pointer<Utf16> pszRightContext,
            Uint16 LangID,
            Pointer<SPNORMALIZATIONLIST> pNormalizationList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Pointer<Utf16> pszLeftContext,
            Pointer<Utf16> pszRightContext,
            int LangID,
            Pointer<SPNORMALIZATIONLIST> pNormalizationList,
          )>()(
        ptr.ref.lpVtbl,
        pszWord,
        pszLeftContext,
        pszRightContext,
        LangID,
        pNormalizationList,
      );

  int GetPronunciations(
    Pointer<Utf16> pszWord,
    Pointer<Utf16> pszLeftContext,
    Pointer<Utf16> pszRightContext,
    int LangID,
    Pointer<SPWORDPRONUNCIATIONLIST> pEnginePronunciationList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Pointer<Utf16> pszLeftContext,
            Pointer<Utf16> pszRightContext,
            Uint16 LangID,
            Pointer<SPWORDPRONUNCIATIONLIST> pEnginePronunciationList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszWord,
            Pointer<Utf16> pszLeftContext,
            Pointer<Utf16> pszRightContext,
            int LangID,
            Pointer<SPWORDPRONUNCIATIONLIST> pEnginePronunciationList,
          )>()(
        ptr.ref.lpVtbl,
        pszWord,
        pszLeftContext,
        pszRightContext,
        LangID,
        pEnginePronunciationList,
      );
}
