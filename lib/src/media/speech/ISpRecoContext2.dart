// ISpRecoContext2.dart

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
const IID_ISpRecoContext2 = '{BEAD311C-52FF-437F-9464-6B21054CA73D}';

/// {@category Interface}
/// {@category com}
class ISpRecoContext2 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISpRecoContext2(Pointer<COMObject> ptr) : super(ptr);

  int SetGrammarOptions(
    int eGrammarOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 eGrammarOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eGrammarOptions,
          )>()(
        ptr.ref.lpVtbl,
        eGrammarOptions,
      );

  int GetGrammarOptions(
    Pointer<Uint32> peGrammarOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> peGrammarOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> peGrammarOptions,
          )>()(
        ptr.ref.lpVtbl,
        peGrammarOptions,
      );

  int SetAdaptationData2(
    Pointer<Utf16> pAdaptationData,
    int cch,
    Pointer<Utf16> pTopicName,
    int eAdaptationSettings,
    int eRelevance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAdaptationData,
            Uint32 cch,
            Pointer<Utf16> pTopicName,
            Uint32 eAdaptationSettings,
            Int32 eRelevance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAdaptationData,
            int cch,
            Pointer<Utf16> pTopicName,
            int eAdaptationSettings,
            int eRelevance,
          )>()(
        ptr.ref.lpVtbl,
        pAdaptationData,
        cch,
        pTopicName,
        eAdaptationSettings,
        eRelevance,
      );
}
