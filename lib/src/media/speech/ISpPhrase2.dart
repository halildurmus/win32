// ISpPhrase2.dart

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
import '../../media/speech/structs.g.dart';
import '../../media/speech/ISpStreamFormat.dart';

/// @nodoc
const IID_ISpPhrase2 = '{F264DA52-E457-4696-B856-A737B717AF79}';

/// {@category Interface}
/// {@category com}
class ISpPhrase2 extends ISpPhrase {
  // vtable begins at 7, is 3 entries long.
  ISpPhrase2(Pointer<COMObject> ptr) : super(ptr);

  int GetXMLResult(
    Pointer<Pointer<Utf16>> ppszCoMemXMLResult,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCoMemXMLResult,
            Int32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCoMemXMLResult,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        ppszCoMemXMLResult,
        Options,
      );

  int GetXMLErrorInfo(
    Pointer<SPSEMANTICERRORINFO> pSemanticErrorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPSEMANTICERRORINFO> pSemanticErrorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPSEMANTICERRORINFO> pSemanticErrorInfo,
          )>()(
        ptr.ref.lpVtbl,
        pSemanticErrorInfo,
      );

  int GetAudio(
    int ulStartElement,
    int cElements,
    Pointer<Pointer<COMObject>> ppStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStartElement,
            Uint32 cElements,
            Pointer<Pointer<COMObject>> ppStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStartElement,
            int cElements,
            Pointer<Pointer<COMObject>> ppStream,
          )>()(
        ptr.ref.lpVtbl,
        ulStartElement,
        cElements,
        ppStream,
      );
}
