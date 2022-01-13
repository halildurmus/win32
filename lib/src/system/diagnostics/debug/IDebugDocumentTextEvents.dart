// IDebugDocumentTextEvents.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugDocumentTextEvents = '{51973C23-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentTextEvents extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDebugDocumentTextEvents(Pointer<COMObject> ptr) : super(ptr);

  int onDestroy() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int onInsertText(
    int cCharacterPosition,
    int cNumToInsert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Uint32 cNumToInsert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            int cNumToInsert,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        cNumToInsert,
      );

  int onRemoveText(
    int cCharacterPosition,
    int cNumToRemove,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int onReplaceText(
    int cCharacterPosition,
    int cNumToReplace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Uint32 cNumToReplace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            int cNumToReplace,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        cNumToReplace,
      );

  int onUpdateTextAttributes(
    int cCharacterPosition,
    int cNumToUpdate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cCharacterPosition,
            Uint32 cNumToUpdate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cCharacterPosition,
            int cNumToUpdate,
          )>()(
        ptr.ref.lpVtbl,
        cCharacterPosition,
        cNumToUpdate,
      );

  int onUpdateDocumentAttributes(
    int textdocattr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textdocattr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textdocattr,
          )>()(
        ptr.ref.lpVtbl,
        textdocattr,
      );
}
