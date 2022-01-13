// ISortColumnArray.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISortColumnArray = '{6DFC60FB-F2E9-459B-BEB5-288F1A7C7D54}';

/// {@category Interface}
/// {@category com}
class ISortColumnArray extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISortColumnArray(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> columnCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> columnCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> columnCount,
          )>()(
        ptr.ref.lpVtbl,
        columnCount,
      );

  int GetAt(
    int index,
    Pointer<SORTCOLUMN> sortcolumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<SORTCOLUMN> sortcolumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<SORTCOLUMN> sortcolumn,
          )>()(
        ptr.ref.lpVtbl,
        index,
        sortcolumn,
      );

  int GetSortType(
    Pointer<Int32> type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> type,
          )>()(
        ptr.ref.lpVtbl,
        type,
      );
}
