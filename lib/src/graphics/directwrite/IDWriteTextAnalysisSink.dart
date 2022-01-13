// IDWriteTextAnalysisSink.dart

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
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteNumberSubstitution.dart';

/// @nodoc
const IID_IDWriteTextAnalysisSink = '{5810CD44-0CA0-4701-B3FA-BEC5182AE4F6}';

/// {@category Interface}
/// {@category com}
class IDWriteTextAnalysisSink extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDWriteTextAnalysisSink(Pointer<COMObject> ptr) : super(ptr);

  int SetScriptAnalysis(
    int textPosition,
    int textLength,
    Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            int textLength,
            Pointer<DWRITE_SCRIPT_ANALYSIS> scriptAnalysis,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        scriptAnalysis,
      );

  int SetLineBreakpoints(
    int textPosition,
    int textLength,
    Pointer<DWRITE_LINE_BREAKPOINT> lineBreakpoints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<DWRITE_LINE_BREAKPOINT> lineBreakpoints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            int textLength,
            Pointer<DWRITE_LINE_BREAKPOINT> lineBreakpoints,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        lineBreakpoints,
      );

  int SetBidiLevel(
    int textPosition,
    int textLength,
    int explicitLevel,
    int resolvedLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Uint32 textLength,
            Uint8 explicitLevel,
            Uint8 resolvedLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            int textLength,
            int explicitLevel,
            int resolvedLevel,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        explicitLevel,
        resolvedLevel,
      );

  int SetNumberSubstitution(
    int textPosition,
    int textLength,
    Pointer<COMObject> numberSubstitution,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Uint32 textLength,
            Pointer<COMObject> numberSubstitution,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            int textLength,
            Pointer<COMObject> numberSubstitution,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        numberSubstitution,
      );
}
