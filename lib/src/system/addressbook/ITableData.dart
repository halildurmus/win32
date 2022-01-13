// ITableData.dart

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
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/callbacks.g.dart';
import '../../system/addressbook/IMAPITable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITableData = 'null';

/// {@category Interface}
/// {@category com}
class ITableData extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ITableData(Pointer<COMObject> ptr) : super(ptr);

  int HrGetView(
    Pointer<SSortOrderSet> lpSSortOrderSet,
    Pointer<Pointer<NativeFunction<CALLERRELEASE>>> lpfCallerRelease,
    int ulCallerData,
    Pointer<Pointer<COMObject>> lppMAPITable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SSortOrderSet> lpSSortOrderSet,
            Pointer<Pointer<NativeFunction<CALLERRELEASE>>> lpfCallerRelease,
            Uint32 ulCallerData,
            Pointer<Pointer<COMObject>> lppMAPITable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SSortOrderSet> lpSSortOrderSet,
            Pointer<Pointer<NativeFunction<CALLERRELEASE>>> lpfCallerRelease,
            int ulCallerData,
            Pointer<Pointer<COMObject>> lppMAPITable,
          )>()(
        ptr.ref.lpVtbl,
        lpSSortOrderSet,
        lpfCallerRelease,
        ulCallerData,
        lppMAPITable,
      );

  int HrModifyRow(
    Pointer<SRow> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SRow> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SRow> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int HrDeleteRow(
    Pointer<SPropValue> lpSPropValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropValue> lpSPropValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropValue> lpSPropValue,
          )>()(
        ptr.ref.lpVtbl,
        lpSPropValue,
      );

  int HrQueryRow(
    Pointer<SPropValue> lpsPropValue,
    Pointer<Pointer<SRow>> lppSRow,
    Pointer<Uint32> lpuliRow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropValue> lpsPropValue,
            Pointer<Pointer<SRow>> lppSRow,
            Pointer<Uint32> lpuliRow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropValue> lpsPropValue,
            Pointer<Pointer<SRow>> lppSRow,
            Pointer<Uint32> lpuliRow,
          )>()(
        ptr.ref.lpVtbl,
        lpsPropValue,
        lppSRow,
        lpuliRow,
      );

  int HrEnumRow(
    int ulRowNumber,
    Pointer<Pointer<SRow>> lppSRow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRowNumber,
            Pointer<Pointer<SRow>> lppSRow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRowNumber,
            Pointer<Pointer<SRow>> lppSRow,
          )>()(
        ptr.ref.lpVtbl,
        ulRowNumber,
        lppSRow,
      );

  int HrNotify(
    int ulFlags,
    int cValues,
    Pointer<SPropValue> lpSPropValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 cValues,
            Pointer<SPropValue> lpSPropValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int cValues,
            Pointer<SPropValue> lpSPropValue,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        cValues,
        lpSPropValue,
      );

  int HrInsertRow(
    int uliRow,
    Pointer<SRow> lpSRow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uliRow,
            Pointer<SRow> lpSRow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uliRow,
            Pointer<SRow> lpSRow,
          )>()(
        ptr.ref.lpVtbl,
        uliRow,
        lpSRow,
      );

  int HrModifyRows(
    int ulFlags,
    Pointer<SRowSet> lpSRowSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<SRowSet> lpSRowSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<SRowSet> lpSRowSet,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpSRowSet,
      );

  int HrDeleteRows(
    int ulFlags,
    Pointer<SRowSet> lprowsetToDelete,
    Pointer<Uint32> cRowsDeleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<SRowSet> lprowsetToDelete,
            Pointer<Uint32> cRowsDeleted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<SRowSet> lprowsetToDelete,
            Pointer<Uint32> cRowsDeleted,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lprowsetToDelete,
        cRowsDeleted,
      );
}
