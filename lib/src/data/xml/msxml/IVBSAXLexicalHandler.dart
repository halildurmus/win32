// IVBSAXLexicalHandler.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IVBSAXLexicalHandler = '{032AAC35-8C0E-4D9D-979F-E3B702935576}';

/// {@category Interface}
/// {@category com}
class IVBSAXLexicalHandler extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IVBSAXLexicalHandler(Pointer<COMObject> ptr) : super(ptr);

  int startDTD(
    Pointer<Pointer<Utf16>> strName,
    Pointer<Pointer<Utf16>> strPublicId,
    Pointer<Pointer<Utf16>> strSystemId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strPublicId,
            Pointer<Pointer<Utf16>> strSystemId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
            Pointer<Pointer<Utf16>> strPublicId,
            Pointer<Pointer<Utf16>> strSystemId,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        strPublicId,
        strSystemId,
      );

  int endDTD() => ptr.ref.lpVtbl.value
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

  int startEntity(
    Pointer<Pointer<Utf16>> strName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>()(
        ptr.ref.lpVtbl,
        strName,
      );

  int endEntity(
    Pointer<Pointer<Utf16>> strName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strName,
          )>()(
        ptr.ref.lpVtbl,
        strName,
      );

  int startCDATA() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int endCDATA() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int comment(
    Pointer<Pointer<Utf16>> strChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> strChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> strChars,
          )>()(
        ptr.ref.lpVtbl,
        strChars,
      );
}
