// ICertEncodeStringArray.dart

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
import '../../../security/cryptography/structs.g.dart';

/// @nodoc
const IID_ICertEncodeStringArray = '{12A88820-7494-11D0-8816-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertEncodeStringArray extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ICertEncodeStringArray(Pointer<COMObject> ptr) : super(ptr);

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

  int GetStringType(
    Pointer<Int32> pStringType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStringType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStringType,
          )>()(
        ptr.ref.lpVtbl,
        pStringType,
      );

  int GetCount(
    Pointer<Int32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetValue(
    int Index,
    Pointer<Pointer<Utf16>> pstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<Utf16>> pstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<Utf16>> pstr,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pstr,
      );

  int Reset(
    int Count,
    int StringType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Count,
            Uint32 StringType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            int StringType,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        StringType,
      );

  int SetValue(
    int Index,
    Pointer<Utf16> str,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Utf16> str,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Utf16> str,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        str,
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
