// IDvbContentDescriptor.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDvbContentDescriptor = '{2E883881-A467-412A-9D63-6F2B6DA05BF0}';

/// {@category Interface}
/// {@category com}
class IDvbContentDescriptor extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDvbContentDescriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetTag(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLength(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetCountOfRecords(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetRecordContentNibbles(
    int bRecordIndex,
    Pointer<Uint8> pbValLevel1,
    Pointer<Uint8> pbValLevel2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Uint8> pbValLevel1,
            Pointer<Uint8> pbValLevel2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Uint8> pbValLevel1,
            Pointer<Uint8> pbValLevel2,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        pbValLevel1,
        pbValLevel2,
      );

  int GetRecordUserNibbles(
    int bRecordIndex,
    Pointer<Uint8> pbVal1,
    Pointer<Uint8> pbVal2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Uint8> pbVal1,
            Pointer<Uint8> pbVal2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Uint8> pbVal1,
            Pointer<Uint8> pbVal2,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        pbVal1,
        pbVal2,
      );
}
