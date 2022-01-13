// ISpDisplayAlternates.dart

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
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpDisplayAlternates = '{C8D7C7E2-0DDE-44B7-AFE3-B0C991FBEB5E}';

/// {@category Interface}
/// {@category com}
class ISpDisplayAlternates extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpDisplayAlternates(Pointer<COMObject> ptr) : super(ptr);

  int GetDisplayAlternates(
    Pointer<SPDISPLAYPHRASE> pPhrase,
    int cRequestCount,
    Pointer<Pointer<SPDISPLAYPHRASE>> ppCoMemPhrases,
    Pointer<Uint32> pcPhrasesReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPDISPLAYPHRASE> pPhrase,
            Uint32 cRequestCount,
            Pointer<Pointer<SPDISPLAYPHRASE>> ppCoMemPhrases,
            Pointer<Uint32> pcPhrasesReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPDISPLAYPHRASE> pPhrase,
            int cRequestCount,
            Pointer<Pointer<SPDISPLAYPHRASE>> ppCoMemPhrases,
            Pointer<Uint32> pcPhrasesReturned,
          )>()(
        ptr.ref.lpVtbl,
        pPhrase,
        cRequestCount,
        ppCoMemPhrases,
        pcPhrasesReturned,
      );

  int SetFullStopTrailSpace(
    int ulTrailSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTrailSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTrailSpace,
          )>()(
        ptr.ref.lpVtbl,
        ulTrailSpace,
      );
}
