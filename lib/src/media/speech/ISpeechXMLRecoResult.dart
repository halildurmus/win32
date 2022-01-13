// ISpeechXMLRecoResult.dart

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

import '../../media/speech/ISpeechRecoResult.dart';
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpeechXMLRecoResult = '{AAEC54AF-8F85-4924-944D-B79D39D72E19}';

/// {@category Interface}
/// {@category com}
class ISpeechXMLRecoResult extends ISpeechRecoResult {
  // vtable begins at 17, is 2 entries long.
  ISpeechXMLRecoResult(Pointer<COMObject> ptr) : super(ptr);

  int GetXMLResult(
    int Options,
    Pointer<Pointer<Utf16>> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Options,
            Pointer<Pointer<Utf16>> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Options,
            Pointer<Pointer<Utf16>> pResult,
          )>()(
        ptr.ref.lpVtbl,
        Options,
        pResult,
      );

  int GetXMLErrorInfo(
    Pointer<Int32> LineNumber,
    Pointer<Pointer<Utf16>> ScriptLine,
    Pointer<Pointer<Utf16>> Source,
    Pointer<Pointer<Utf16>> Description,
    Pointer<Int32> ResultCode,
    Pointer<Int16> IsError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> LineNumber,
            Pointer<Pointer<Utf16>> ScriptLine,
            Pointer<Pointer<Utf16>> Source,
            Pointer<Pointer<Utf16>> Description,
            Pointer<Int32> ResultCode,
            Pointer<Int16> IsError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> LineNumber,
            Pointer<Pointer<Utf16>> ScriptLine,
            Pointer<Pointer<Utf16>> Source,
            Pointer<Pointer<Utf16>> Description,
            Pointer<Int32> ResultCode,
            Pointer<Int16> IsError,
          )>()(
        ptr.ref.lpVtbl,
        LineNumber,
        ScriptLine,
        Source,
        Description,
        ResultCode,
        IsError,
      );
}
