// IColumnProvider.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IColumnProvider = '{E8025004-1C42-11D2-BE2C-00A0C9A83DA1}';

/// {@category Interface}
/// {@category com}
class IColumnProvider extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IColumnProvider(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<SHCOLUMNINIT> psci,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SHCOLUMNINIT> psci,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SHCOLUMNINIT> psci,
          )>()(
        ptr.ref.lpVtbl,
        psci,
      );

  int GetColumnInfo(
    int dwIndex,
    Pointer<SHCOLUMNINFO> psci,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<SHCOLUMNINFO> psci,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<SHCOLUMNINFO> psci,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        psci,
      );

  int GetItemData(
    Pointer<PROPERTYKEY> pscid,
    Pointer<SHCOLUMNDATA> pscd,
    Pointer<VARIANT> pvarData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pscid,
            Pointer<SHCOLUMNDATA> pscd,
            Pointer<VARIANT> pvarData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pscid,
            Pointer<SHCOLUMNDATA> pscd,
            Pointer<VARIANT> pvarData,
          )>()(
        ptr.ref.lpVtbl,
        pscid,
        pscd,
        pvarData,
      );
}
