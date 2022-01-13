// IColumnManager.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IColumnManager = '{D8EC27BB-3F3B-4042-B10A-4ACFD924D453}';

/// {@category Interface}
/// {@category com}
class IColumnManager extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IColumnManager(Pointer<COMObject> ptr) : super(ptr);

  int SetColumnInfo(
    Pointer<PROPERTYKEY> propkey,
    Pointer<CM_COLUMNINFO> pcmci,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<CM_COLUMNINFO> pcmci,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<CM_COLUMNINFO> pcmci,
          )>()(
        ptr.ref.lpVtbl,
        propkey,
        pcmci,
      );

  int GetColumnInfo(
    Pointer<PROPERTYKEY> propkey,
    Pointer<CM_COLUMNINFO> pcmci,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<CM_COLUMNINFO> pcmci,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<CM_COLUMNINFO> pcmci,
          )>()(
        ptr.ref.lpVtbl,
        propkey,
        pcmci,
      );

  int GetColumnCount(
    int dwFlags,
    Pointer<Uint32> puCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwFlags,
            Pointer<Uint32> puCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Uint32> puCount,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        puCount,
      );

  int GetColumns(
    int dwFlags,
    Pointer<PROPERTYKEY> rgkeyOrder,
    int cColumns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwFlags,
            Pointer<PROPERTYKEY> rgkeyOrder,
            Uint32 cColumns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<PROPERTYKEY> rgkeyOrder,
            int cColumns,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        rgkeyOrder,
        cColumns,
      );

  int SetColumns(
    Pointer<PROPERTYKEY> rgkeyOrder,
    int cVisible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> rgkeyOrder,
            Uint32 cVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> rgkeyOrder,
            int cVisible,
          )>()(
        ptr.ref.lpVtbl,
        rgkeyOrder,
        cVisible,
      );
}
