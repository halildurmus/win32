// IMAPITable.dart

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
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/IMAPIAdviseSink.dart';

/// @nodoc
const IID_IMAPITable = 'null';

/// {@category Interface}
/// {@category com}
class IMAPITable extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IMAPITable(Pointer<COMObject> ptr) : super(ptr);

  int GetLastError(
    int hResult,
    int ulFlags,
    Pointer<Pointer<MAPIERROR>> lppMAPIError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
            Uint32 ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
            int ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
        ulFlags,
        lppMAPIError,
      );

  int Advise(
    int ulEventMask,
    Pointer<COMObject> lpAdviseSink,
    Pointer<Uint32> lpulConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulEventMask,
            Pointer<COMObject> lpAdviseSink,
            Pointer<Uint32> lpulConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulEventMask,
            Pointer<COMObject> lpAdviseSink,
            Pointer<Uint32> lpulConnection,
          )>()(
        ptr.ref.lpVtbl,
        ulEventMask,
        lpAdviseSink,
        lpulConnection,
      );

  int Unadvise(
    int ulConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulConnection,
          )>()(
        ptr.ref.lpVtbl,
        ulConnection,
      );

  int GetStatus(
    Pointer<Uint32> lpulTableStatus,
    Pointer<Uint32> lpulTableType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulTableStatus,
            Pointer<Uint32> lpulTableType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulTableStatus,
            Pointer<Uint32> lpulTableType,
          )>()(
        ptr.ref.lpVtbl,
        lpulTableStatus,
        lpulTableType,
      );

  int SetColumns(
    Pointer<SPropTagArray> lpPropTagArray,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpPropTagArray,
        ulFlags,
      );

  int QueryColumns(
    int ulFlags,
    Pointer<Pointer<SPropTagArray>> lpPropTagArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<SPropTagArray>> lpPropTagArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<SPropTagArray>> lpPropTagArray,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpPropTagArray,
      );

  int GetRowCount(
    int ulFlags,
    Pointer<Uint32> lpulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Uint32> lpulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Uint32> lpulCount,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpulCount,
      );

  int SeekRow(
    int bkOrigin,
    int lRowCount,
    Pointer<Int32> lplRowsSought,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bkOrigin,
            Int32 lRowCount,
            Pointer<Int32> lplRowsSought,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bkOrigin,
            int lRowCount,
            Pointer<Int32> lplRowsSought,
          )>()(
        ptr.ref.lpVtbl,
        bkOrigin,
        lRowCount,
        lplRowsSought,
      );

  int SeekRowApprox(
    int ulNumerator,
    int ulDenominator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulNumerator,
            Uint32 ulDenominator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulNumerator,
            int ulDenominator,
          )>()(
        ptr.ref.lpVtbl,
        ulNumerator,
        ulDenominator,
      );

  int QueryPosition(
    Pointer<Uint32> lpulRow,
    Pointer<Uint32> lpulNumerator,
    Pointer<Uint32> lpulDenominator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulRow,
            Pointer<Uint32> lpulNumerator,
            Pointer<Uint32> lpulDenominator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulRow,
            Pointer<Uint32> lpulNumerator,
            Pointer<Uint32> lpulDenominator,
          )>()(
        ptr.ref.lpVtbl,
        lpulRow,
        lpulNumerator,
        lpulDenominator,
      );

  int FindRow(
    Pointer<SRestriction> lpRestriction,
    int bkOrigin,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SRestriction> lpRestriction,
            Uint32 bkOrigin,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SRestriction> lpRestriction,
            int bkOrigin,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpRestriction,
        bkOrigin,
        ulFlags,
      );

  int Restrict(
    Pointer<SRestriction> lpRestriction,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SRestriction> lpRestriction,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SRestriction> lpRestriction,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpRestriction,
        ulFlags,
      );

  int CreateBookmark(
    Pointer<Uint32> lpbkPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpbkPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpbkPosition,
          )>()(
        ptr.ref.lpVtbl,
        lpbkPosition,
      );

  int FreeBookmark(
    int bkPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bkPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bkPosition,
          )>()(
        ptr.ref.lpVtbl,
        bkPosition,
      );

  int SortTable(
    Pointer<SSortOrderSet> lpSortCriteria,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SSortOrderSet> lpSortCriteria,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SSortOrderSet> lpSortCriteria,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpSortCriteria,
        ulFlags,
      );

  int QuerySortOrder(
    Pointer<Pointer<SSortOrderSet>> lppSortCriteria,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SSortOrderSet>> lppSortCriteria,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SSortOrderSet>> lppSortCriteria,
          )>()(
        ptr.ref.lpVtbl,
        lppSortCriteria,
      );

  int QueryRows(
    int lRowCount,
    int ulFlags,
    Pointer<Pointer<SRowSet>> lppRows,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRowCount,
            Uint32 ulFlags,
            Pointer<Pointer<SRowSet>> lppRows,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRowCount,
            int ulFlags,
            Pointer<Pointer<SRowSet>> lppRows,
          )>()(
        ptr.ref.lpVtbl,
        lRowCount,
        ulFlags,
        lppRows,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ExpandRow(
    int cbInstanceKey,
    Pointer<Uint8> pbInstanceKey,
    int ulRowCount,
    int ulFlags,
    Pointer<Pointer<SRowSet>> lppRows,
    Pointer<Uint32> lpulMoreRows,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbInstanceKey,
            Pointer<Uint8> pbInstanceKey,
            Uint32 ulRowCount,
            Uint32 ulFlags,
            Pointer<Pointer<SRowSet>> lppRows,
            Pointer<Uint32> lpulMoreRows,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbInstanceKey,
            Pointer<Uint8> pbInstanceKey,
            int ulRowCount,
            int ulFlags,
            Pointer<Pointer<SRowSet>> lppRows,
            Pointer<Uint32> lpulMoreRows,
          )>()(
        ptr.ref.lpVtbl,
        cbInstanceKey,
        pbInstanceKey,
        ulRowCount,
        ulFlags,
        lppRows,
        lpulMoreRows,
      );

  int CollapseRow(
    int cbInstanceKey,
    Pointer<Uint8> pbInstanceKey,
    int ulFlags,
    Pointer<Uint32> lpulRowCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbInstanceKey,
            Pointer<Uint8> pbInstanceKey,
            Uint32 ulFlags,
            Pointer<Uint32> lpulRowCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbInstanceKey,
            Pointer<Uint8> pbInstanceKey,
            int ulFlags,
            Pointer<Uint32> lpulRowCount,
          )>()(
        ptr.ref.lpVtbl,
        cbInstanceKey,
        pbInstanceKey,
        ulFlags,
        lpulRowCount,
      );

  int WaitForCompletion(
    int ulFlags,
    int ulTimeout,
    Pointer<Uint32> lpulTableStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 ulTimeout,
            Pointer<Uint32> lpulTableStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int ulTimeout,
            Pointer<Uint32> lpulTableStatus,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        ulTimeout,
        lpulTableStatus,
      );

  int GetCollapseState(
    int ulFlags,
    int cbInstanceKey,
    Pointer<Uint8> lpbInstanceKey,
    Pointer<Uint32> lpcbCollapseState,
    Pointer<Pointer<Uint8>> lppbCollapseState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 cbInstanceKey,
            Pointer<Uint8> lpbInstanceKey,
            Pointer<Uint32> lpcbCollapseState,
            Pointer<Pointer<Uint8>> lppbCollapseState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int cbInstanceKey,
            Pointer<Uint8> lpbInstanceKey,
            Pointer<Uint32> lpcbCollapseState,
            Pointer<Pointer<Uint8>> lppbCollapseState,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        cbInstanceKey,
        lpbInstanceKey,
        lpcbCollapseState,
        lppbCollapseState,
      );

  int SetCollapseState(
    int ulFlags,
    int cbCollapseState,
    Pointer<Uint8> pbCollapseState,
    Pointer<Uint32> lpbkLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 cbCollapseState,
            Pointer<Uint8> pbCollapseState,
            Pointer<Uint32> lpbkLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int cbCollapseState,
            Pointer<Uint8> pbCollapseState,
            Pointer<Uint32> lpbkLocation,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        cbCollapseState,
        pbCollapseState,
        lpbkLocation,
      );
}
