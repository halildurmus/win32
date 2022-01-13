// ICertEncodeAltName.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertEncodeAltName = '{1C9A8C70-1271-11D1-9BD4-00C04FB683FA}';

/// {@category Interface}
/// {@category com}
class ICertEncodeAltName extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ICertEncodeAltName(Pointer<COMObject> ptr) : super(ptr);

  int Decode(
    Pointer<Utf16> strBinary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strBinary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strBinary,
          )>()(
        ptr.ref.lpVtbl,
        strBinary,
      );

  int GetNameCount(
    Pointer<Int32> pNameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pNameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pNameCount,
          )>()(
        ptr.ref.lpVtbl,
        pNameCount,
      );

  int GetNameChoice(
    int NameIndex,
    Pointer<Int32> pNameChoice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NameIndex,
            Pointer<Int32> pNameChoice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NameIndex,
            Pointer<Int32> pNameChoice,
          )>()(
        ptr.ref.lpVtbl,
        NameIndex,
        pNameChoice,
      );

  int GetName(
    int NameIndex,
    Pointer<Pointer<Utf16>> pstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NameIndex,
            Pointer<Pointer<Utf16>> pstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NameIndex,
            Pointer<Pointer<Utf16>> pstrName,
          )>()(
        ptr.ref.lpVtbl,
        NameIndex,
        pstrName,
      );

  int Reset(
    int NameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NameCount,
          )>()(
        ptr.ref.lpVtbl,
        NameCount,
      );

  int SetNameEntry(
    int NameIndex,
    int NameChoice,
    Pointer<Utf16> strName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NameIndex,
            Uint32 NameChoice,
            Pointer<Utf16> strName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NameIndex,
            int NameChoice,
            Pointer<Utf16> strName,
          )>()(
        ptr.ref.lpVtbl,
        NameIndex,
        NameChoice,
        strName,
      );

  int Encode(
    Pointer<Pointer<Utf16>> pstrBinary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>()(
        ptr.ref.lpVtbl,
        pstrBinary,
      );
}
