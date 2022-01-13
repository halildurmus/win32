// ITfReverseConversionList.dart

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
const IID_ITfReverseConversionList = '{151D69F0-86F4-4674-B721-56911E797F47}';

/// {@category Interface}
/// {@category com}
class ITfReverseConversionList extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfReverseConversionList(Pointer<COMObject> ptr) : super(ptr);

  int GetLength(
    Pointer<Uint32> puIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puIndex,
          )>()(
        ptr.ref.lpVtbl,
        puIndex,
      );

  int GetString(
    int uIndex,
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pbstr,
      );
}
