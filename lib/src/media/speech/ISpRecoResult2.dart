// ISpRecoResult2.dart

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

import '../../media/speech/ISpRecoResult.dart';
import '../../media/speech/ISpPhraseAlt.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpRecoResult2 = '{27CAC6C4-88F2-41F2-8817-0C95E59F1E6E}';

/// {@category Interface}
/// {@category com}
class ISpRecoResult2 extends ISpRecoResult {
  // vtable begins at 14, is 3 entries long.
  ISpRecoResult2(Pointer<COMObject> ptr) : super(ptr);

  int CommitAlternate(
    Pointer<COMObject> pPhraseAlt,
    Pointer<Pointer<COMObject>> ppNewResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhraseAlt,
            Pointer<Pointer<COMObject>> ppNewResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhraseAlt,
            Pointer<Pointer<COMObject>> ppNewResult,
          )>()(
        ptr.ref.lpVtbl,
        pPhraseAlt,
        ppNewResult,
      );

  int CommitText(
    int ulStartElement,
    int cElements,
    Pointer<Utf16> pszCorrectedData,
    int eCommitFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStartElement,
            Uint32 cElements,
            Pointer<Utf16> pszCorrectedData,
            Uint32 eCommitFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStartElement,
            int cElements,
            Pointer<Utf16> pszCorrectedData,
            int eCommitFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulStartElement,
        cElements,
        pszCorrectedData,
        eCommitFlags,
      );

  int SetTextFeedback(
    Pointer<Utf16> pszFeedback,
    int fSuccessful,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFeedback,
            Int32 fSuccessful,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFeedback,
            int fSuccessful,
          )>()(
        ptr.ref.lpVtbl,
        pszFeedback,
        fSuccessful,
      );
}
