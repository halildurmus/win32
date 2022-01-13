// IDebugDocumentTextAuthor.dart

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

import '../../../system/diagnostics/debug/IDebugDocumentText.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugDocumentTextAuthor = '{51973C24-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentTextAuthor extends IDebugDocumentText {
  // vtable begins at 12, is 3 entries long.
  IDebugDocumentTextAuthor(Pointer<COMObject> ptr) : super(ptr);

  int InsertText(
    int cCharacterPosition,
    int cNumToInsert,
    Pointer<Utf16> pcharText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Uint32 cNumToInsert,
            Pointer<Utf16> pcharText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            int cNumToInsert,
            Pointer<Utf16> pcharText,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        cNumToInsert,
        pcharText,
      );

  int RemoveText(
    int cCharacterPosition,
    int cNumToRemove,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Uint32 cNumToRemove,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            int cNumToRemove,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        cNumToRemove,
      );

  int ReplaceText(
    int cCharacterPosition,
    int cNumToReplace,
    Pointer<Utf16> pcharText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Uint32 cNumToReplace,
            Pointer<Utf16> pcharText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            int cNumToReplace,
            Pointer<Utf16> pcharText,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        cNumToReplace,
        pcharText,
      );
}
