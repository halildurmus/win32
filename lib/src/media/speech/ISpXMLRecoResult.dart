// ISpXMLRecoResult.dart

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
import '../../foundation/structs.g.dart';
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpXMLRecoResult = '{AE39362B-45A8-4074-9B9E-CCF49AA2D0B6}';

/// {@category Interface}
/// {@category com}
class ISpXMLRecoResult extends ISpRecoResult {
  // vtable begins at 14, is 2 entries long.
  ISpXMLRecoResult(Pointer<COMObject> ptr) : super(ptr);

  int GetXMLResult(
    Pointer<Pointer<Utf16>> ppszCoMemXMLResult,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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
          .elementAt(15)
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
}
