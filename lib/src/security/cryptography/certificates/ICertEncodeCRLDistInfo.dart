// ICertEncodeCRLDistInfo.dart

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
const IID_ICertEncodeCRLDistInfo = '{01958640-BBFF-11D0-8825-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertEncodeCRLDistInfo extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  ICertEncodeCRLDistInfo(Pointer<COMObject> ptr) : super(ptr);

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

  int GetDistPointCount(
    Pointer<Int32> pDistPointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pDistPointCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pDistPointCount,
          )>()(
        ptr.ref.lpVtbl,
        pDistPointCount,
      );

  int GetNameCount(
    int DistPointIndex,
    Pointer<Int32> pNameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DistPointIndex,
            Pointer<Int32> pNameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DistPointIndex,
            Pointer<Int32> pNameCount,
          )>()(
        ptr.ref.lpVtbl,
        DistPointIndex,
        pNameCount,
      );

  int GetNameChoice(
    int DistPointIndex,
    int NameIndex,
    Pointer<Int32> pNameChoice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DistPointIndex,
            Int32 NameIndex,
            Pointer<Int32> pNameChoice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DistPointIndex,
            int NameIndex,
            Pointer<Int32> pNameChoice,
          )>()(
        ptr.ref.lpVtbl,
        DistPointIndex,
        NameIndex,
        pNameChoice,
      );

  int GetName(
    int DistPointIndex,
    int NameIndex,
    Pointer<Pointer<Utf16>> pstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DistPointIndex,
            Int32 NameIndex,
            Pointer<Pointer<Utf16>> pstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DistPointIndex,
            int NameIndex,
            Pointer<Pointer<Utf16>> pstrName,
          )>()(
        ptr.ref.lpVtbl,
        DistPointIndex,
        NameIndex,
        pstrName,
      );

  int Reset(
    int DistPointCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DistPointCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DistPointCount,
          )>()(
        ptr.ref.lpVtbl,
        DistPointCount,
      );

  int SetNameCount(
    int DistPointIndex,
    int NameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DistPointIndex,
            Int32 NameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DistPointIndex,
            int NameCount,
          )>()(
        ptr.ref.lpVtbl,
        DistPointIndex,
        NameCount,
      );

  int SetNameEntry(
    int DistPointIndex,
    int NameIndex,
    int NameChoice,
    Pointer<Utf16> strName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DistPointIndex,
            Int32 NameIndex,
            Uint32 NameChoice,
            Pointer<Utf16> strName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DistPointIndex,
            int NameIndex,
            int NameChoice,
            Pointer<Utf16> strName,
          )>()(
        ptr.ref.lpVtbl,
        DistPointIndex,
        NameIndex,
        NameChoice,
        strName,
      );

  int Encode(
    Pointer<Pointer<Utf16>> pstrBinary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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
