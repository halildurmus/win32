// ISpeechPhraseInfoBuilder.dart

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
import '../../specialTypes.dart';
import '../../media/speech/ISpeechPhraseInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpeechPhraseInfoBuilder = '{3B151836-DF3A-4E0A-846C-D2ADC9334333}';

/// {@category Interface}
/// {@category com}
class ISpeechPhraseInfoBuilder extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  ISpeechPhraseInfoBuilder(Pointer<COMObject> ptr) : super(ptr);

  int RestorePhraseFromMemory(
    Pointer<VARIANT> PhraseInMemory,
    Pointer<Pointer<COMObject>> PhraseInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> PhraseInMemory,
            Pointer<Pointer<COMObject>> PhraseInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> PhraseInMemory,
            Pointer<Pointer<COMObject>> PhraseInfo,
          )>()(
        ptr.ref.lpVtbl,
        PhraseInMemory,
        PhraseInfo,
      );
}
