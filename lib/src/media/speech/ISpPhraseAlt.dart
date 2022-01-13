// ISpPhraseAlt.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpPhraseAlt = '{8FCEBC98-4E49-4067-9C6C-D86A0E092E3D}';

/// {@category Interface}
/// {@category com}
class ISpPhraseAlt extends ISpPhrase {
  // vtable begins at 7, is 2 entries long.
  ISpPhraseAlt(Pointer<COMObject> ptr) : super(ptr);

  int GetAltInfo(
    Pointer<Pointer<COMObject>> ppParent,
    Pointer<Uint32> pulStartElementInParent,
    Pointer<Uint32> pcElementsInParent,
    Pointer<Uint32> pcElementsInAlt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParent,
            Pointer<Uint32> pulStartElementInParent,
            Pointer<Uint32> pcElementsInParent,
            Pointer<Uint32> pcElementsInAlt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppParent,
            Pointer<Uint32> pulStartElementInParent,
            Pointer<Uint32> pcElementsInParent,
            Pointer<Uint32> pcElementsInAlt,
          )>()(
        ptr.ref.lpVtbl,
        ppParent,
        pulStartElementInParent,
        pcElementsInParent,
        pcElementsInAlt,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
