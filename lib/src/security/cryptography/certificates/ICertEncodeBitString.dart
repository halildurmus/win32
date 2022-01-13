// ICertEncodeBitString.dart

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
const IID_ICertEncodeBitString = '{6DB525BE-1278-11D1-9BD4-00C04FB683FA}';

/// {@category Interface}
/// {@category com}
class ICertEncodeBitString extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ICertEncodeBitString(Pointer<COMObject> ptr) : super(ptr);

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

  int GetBitCount(
    Pointer<Int32> pBitCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pBitCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pBitCount,
          )>()(
        ptr.ref.lpVtbl,
        pBitCount,
      );

  int GetBitString(
    Pointer<Pointer<Utf16>> pstrBitString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrBitString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrBitString,
          )>()(
        ptr.ref.lpVtbl,
        pstrBitString,
      );

  int Encode(
    int BitCount,
    Pointer<Utf16> strBitString,
    Pointer<Pointer<Utf16>> pstrBinary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 BitCount,
            Pointer<Utf16> strBitString,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BitCount,
            Pointer<Utf16> strBitString,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>()(
        ptr.ref.lpVtbl,
        BitCount,
        strBitString,
        pstrBinary,
      );
}
