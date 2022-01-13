// ISAXLexicalHandler.dart

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
const IID_ISAXLexicalHandler = '{7F85D5F5-47A8-4497-BDA5-84BA04819EA6}';

/// {@category Interface}
/// {@category com}
class ISAXLexicalHandler extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISAXLexicalHandler(Pointer<COMObject> ptr) : super(ptr);

  int startDTD(
    Pointer<Utf16> pwchName,
    int cchName,
    Pointer<Utf16> pwchPublicId,
    int cchPublicId,
    Pointer<Utf16> pwchSystemId,
    int cchSystemId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Int32 cchName,
            Pointer<Utf16> pwchPublicId,
            Int32 cchPublicId,
            Pointer<Utf16> pwchSystemId,
            Int32 cchSystemId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            int cchName,
            Pointer<Utf16> pwchPublicId,
            int cchPublicId,
            Pointer<Utf16> pwchSystemId,
            int cchSystemId,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        cchName,
        pwchPublicId,
        cchPublicId,
        pwchSystemId,
        cchSystemId,
      );

  int endDTD() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
    Pointer<Utf16> pwchName,
    int cchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Int32 cchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            int cchName,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        cchName,
      );

  int endEntity(
    Pointer<Utf16> pwchName,
    int cchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchName,
            Int32 cchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchName,
            int cchName,
          )>()(
        ptr.ref.lpVtbl,
        pwchName,
        cchName,
      );

  int startCDATA() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int comment(
    Pointer<Utf16> pwchChars,
    int cchChars,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchChars,
            Int32 cchChars,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchChars,
            int cchChars,
          )>()(
        ptr.ref.lpVtbl,
        pwchChars,
        cchChars,
      );
}
