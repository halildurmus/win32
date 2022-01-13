// IDebugDocumentText.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/diagnostics/debug/IDebugDocument.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugDocumentContext.dart';

/// @nodoc
const IID_IDebugDocumentText = '{51973C22-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentText extends IDebugDocument {
  // vtable begins at 5, is 7 entries long.
  IDebugDocumentText(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentAttributes(
    Pointer<Uint32> ptextdocattr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> ptextdocattr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> ptextdocattr,
          )>()(
        ptr.ref.lpVtbl,
        ptextdocattr,
      );

  int GetSize(
    Pointer<Uint32> pcNumLines,
    Pointer<Uint32> pcNumChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcNumLines,
            Pointer<Uint32> pcNumChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcNumLines,
            Pointer<Uint32> pcNumChars,
          )>()(
        ptr.ref.lpVtbl,
        pcNumLines,
        pcNumChars,
      );

  int GetPositionOfLine(
    int cLineNumber,
    Pointer<Uint32> pcCharacterPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cLineNumber,
            Pointer<Uint32> pcCharacterPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cLineNumber,
            Pointer<Uint32> pcCharacterPosition,
          )>()(
        ptr.ref.lpVtbl,
        cLineNumber,
        pcCharacterPosition,
      );

  int GetLineOfPosition(
    int cCharacterPosition,
    Pointer<Uint32> pcLineNumber,
    Pointer<Uint32> pcCharacterOffsetInLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Pointer<Uint32> pcLineNumber,
            Pointer<Uint32> pcCharacterOffsetInLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            Pointer<Uint32> pcLineNumber,
            Pointer<Uint32> pcCharacterOffsetInLine,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        pcLineNumber,
        pcCharacterOffsetInLine,
      );

  int GetText(
    int cCharacterPosition,
    Pointer<Utf16> pcharText,
    Pointer<Uint16> pstaTextAttr,
    Pointer<Uint32> pcNumChars,
    int cMaxChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Pointer<Utf16> pcharText,
            Pointer<Uint16> pstaTextAttr,
            Pointer<Uint32> pcNumChars,
            Uint32 cMaxChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            Pointer<Utf16> pcharText,
            Pointer<Uint16> pstaTextAttr,
            Pointer<Uint32> pcNumChars,
            int cMaxChars,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        pcharText,
        pstaTextAttr,
        pcNumChars,
        cMaxChars,
      );

  int GetPositionOfContext(
    Pointer<COMObject> psc,
    Pointer<Uint32> pcCharacterPosition,
    Pointer<Uint32> cNumChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psc,
            Pointer<Uint32> pcCharacterPosition,
            Pointer<Uint32> cNumChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psc,
            Pointer<Uint32> pcCharacterPosition,
            Pointer<Uint32> cNumChars,
          )>()(
        ptr.ref.lpVtbl,
        psc,
        pcCharacterPosition,
        cNumChars,
      );

  int GetContextOfPosition(
    int cCharacterPosition,
    int cNumChars,
    Pointer<Pointer<COMObject>> ppsc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Uint32 cNumChars,
            Pointer<Pointer<COMObject>> ppsc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            int cNumChars,
            Pointer<Pointer<COMObject>> ppsc,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        cNumChars,
        ppsc,
      );
}
