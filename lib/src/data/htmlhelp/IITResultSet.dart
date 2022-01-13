// IITResultSet.dart

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
import '../../data/htmlhelp/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../data/htmlhelp/callbacks.g.dart';
import '../../data/htmlhelp/IITResultSet.dart';

/// @nodoc
const IID_IITResultSet = '{3BB91D41-998B-11D0-A850-00AA006C7D01}';

/// {@category Interface}
/// {@category com}
class IITResultSet extends IUnknown {
  // vtable begins at 3, is 30 entries long.
  IITResultSet(Pointer<COMObject> ptr) : super(ptr);

  int SetColumnPriority(
    int lColumnIndex,
    int ColumnPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lColumnIndex,
            Int32 ColumnPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lColumnIndex,
            int ColumnPriority,
          )>()(
        ptr.ref.lpVtbl,
        lColumnIndex,
        ColumnPriority,
      );

  int SetColumnHeap(
    int lColumnIndex,
    Pointer lpvHeap,
    Pointer<NativeFunction<PFNCOLHEAPFREE>> pfnColHeapFree,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lColumnIndex,
            Pointer lpvHeap,
            Pointer<NativeFunction<PFNCOLHEAPFREE>> pfnColHeapFree,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lColumnIndex,
            Pointer lpvHeap,
            Pointer<NativeFunction<PFNCOLHEAPFREE>> pfnColHeapFree,
          )>()(
        ptr.ref.lpVtbl,
        lColumnIndex,
        lpvHeap,
        pfnColHeapFree,
      );

  int SetKeyProp(
    int PropID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
      );

  int Add_3(
    int PropID,
    int dwDefaultData,
    int Priority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Uint32 dwDefaultData,
            Int32 Priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            int dwDefaultData,
            int Priority,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        dwDefaultData,
        Priority,
      );

  int Add_2(
    int PropID,
    Pointer<Utf16> lpszwDefault,
    int Priority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Pointer<Utf16> lpszwDefault,
            Int32 Priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            Pointer<Utf16> lpszwDefault,
            int Priority,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        lpszwDefault,
        Priority,
      );

  int Add_1(
    int PropID,
    Pointer lpvDefaultData,
    int cbData,
    int Priority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Pointer lpvDefaultData,
            Uint32 cbData,
            Int32 Priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            Pointer lpvDefaultData,
            int cbData,
            int Priority,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        lpvDefaultData,
        cbData,
        Priority,
      );

  int Add(
    Pointer lpvHdr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvHdr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvHdr,
          )>()(
        ptr.ref.lpVtbl,
        lpvHdr,
      );

  int Append(
    Pointer lpvHdr,
    Pointer lpvData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvHdr,
            Pointer lpvData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvHdr,
            Pointer lpvData,
          )>()(
        ptr.ref.lpVtbl,
        lpvHdr,
        lpvData,
      );

  int $Set_3(
    int lRowIndex,
    int lColumnIndex,
    Pointer lpvData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRowIndex,
            Int32 lColumnIndex,
            Pointer lpvData,
            Uint32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRowIndex,
            int lColumnIndex,
            Pointer lpvData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        lRowIndex,
        lColumnIndex,
        lpvData,
        cbData,
      );

  int $Set_2(
    int lRowIndex,
    int lColumnIndex,
    Pointer<Utf16> lpwStr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRowIndex,
            Int32 lColumnIndex,
            Pointer<Utf16> lpwStr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRowIndex,
            int lColumnIndex,
            Pointer<Utf16> lpwStr,
          )>()(
        ptr.ref.lpVtbl,
        lRowIndex,
        lColumnIndex,
        lpwStr,
      );

  int $Set_1(
    int lRowIndex,
    int lColumnIndex,
    int dwData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRowIndex,
            Int32 lColumnIndex,
            IntPtr dwData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRowIndex,
            int lColumnIndex,
            int dwData,
          )>()(
        ptr.ref.lpVtbl,
        lRowIndex,
        lColumnIndex,
        dwData,
      );

  int $Set(
    int lRowIndex,
    Pointer lpvHdr,
    Pointer lpvData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRowIndex,
            Pointer lpvHdr,
            Pointer lpvData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRowIndex,
            Pointer lpvHdr,
            Pointer lpvData,
          )>()(
        ptr.ref.lpVtbl,
        lRowIndex,
        lpvHdr,
        lpvData,
      );

  int Copy(
    Pointer<COMObject> pRSCopy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRSCopy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRSCopy,
          )>()(
        ptr.ref.lpVtbl,
        pRSCopy,
      );

  int AppendRows(
    Pointer<COMObject> pResSrc,
    int lRowSrcFirst,
    int cSrcRows,
    Pointer<Int32> lRowFirstDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResSrc,
            Int32 lRowSrcFirst,
            Int32 cSrcRows,
            Pointer<Int32> lRowFirstDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResSrc,
            int lRowSrcFirst,
            int cSrcRows,
            Pointer<Int32> lRowFirstDest,
          )>()(
        ptr.ref.lpVtbl,
        pResSrc,
        lRowSrcFirst,
        cSrcRows,
        lRowFirstDest,
      );

  int Get(
    int lRowIndex,
    int lColumnIndex,
    Pointer<CProperty> Prop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRowIndex,
            Int32 lColumnIndex,
            Pointer<CProperty> Prop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRowIndex,
            int lColumnIndex,
            Pointer<CProperty> Prop,
          )>()(
        ptr.ref.lpVtbl,
        lRowIndex,
        lColumnIndex,
        Prop,
      );

  int GetKeyProp(
    Pointer<Uint32> KeyPropID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> KeyPropID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> KeyPropID,
          )>()(
        ptr.ref.lpVtbl,
        KeyPropID,
      );

  int GetColumnPriority(
    int lColumnIndex,
    Pointer<Int32> ColumnPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lColumnIndex,
            Pointer<Int32> ColumnPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lColumnIndex,
            Pointer<Int32> ColumnPriority,
          )>()(
        ptr.ref.lpVtbl,
        lColumnIndex,
        ColumnPriority,
      );

  int GetRowCount(
    Pointer<Int32> lNumberOfRows,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lNumberOfRows,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lNumberOfRows,
          )>()(
        ptr.ref.lpVtbl,
        lNumberOfRows,
      );

  int GetColumnCount(
    Pointer<Int32> lNumberOfColumns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lNumberOfColumns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lNumberOfColumns,
          )>()(
        ptr.ref.lpVtbl,
        lNumberOfColumns,
      );

  int GetColumn_1(
    int lColumnIndex,
    Pointer<Uint32> PropID,
    Pointer<Uint32> dwType,
    Pointer<Pointer> lpvDefaultValue,
    Pointer<Uint32> cbSize,
    Pointer<Int32> ColumnPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lColumnIndex,
            Pointer<Uint32> PropID,
            Pointer<Uint32> dwType,
            Pointer<Pointer> lpvDefaultValue,
            Pointer<Uint32> cbSize,
            Pointer<Int32> ColumnPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lColumnIndex,
            Pointer<Uint32> PropID,
            Pointer<Uint32> dwType,
            Pointer<Pointer> lpvDefaultValue,
            Pointer<Uint32> cbSize,
            Pointer<Int32> ColumnPriority,
          )>()(
        ptr.ref.lpVtbl,
        lColumnIndex,
        PropID,
        dwType,
        lpvDefaultValue,
        cbSize,
        ColumnPriority,
      );

  int GetColumn(
    int lColumnIndex,
    Pointer<Uint32> PropID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lColumnIndex,
            Pointer<Uint32> PropID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lColumnIndex,
            Pointer<Uint32> PropID,
          )>()(
        ptr.ref.lpVtbl,
        lColumnIndex,
        PropID,
      );

  int GetColumnFromPropID(
    int PropID,
    Pointer<Int32> lColumnIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Pointer<Int32> lColumnIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            Pointer<Int32> lColumnIndex,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        lColumnIndex,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int ClearRows() => ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int Free() => ptr.ref.lpVtbl.value
          .elementAt(27)
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

  int IsCompleted() => ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(29)
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

  int Pause(
    int fPause,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fPause,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fPause,
          )>()(
        ptr.ref.lpVtbl,
        fPause,
      );

  int GetRowStatus(
    int lRowFirst,
    int cRows,
    Pointer<ROWSTATUS> lpRowStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRowFirst,
            Int32 cRows,
            Pointer<ROWSTATUS> lpRowStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRowFirst,
            int cRows,
            Pointer<ROWSTATUS> lpRowStatus,
          )>()(
        ptr.ref.lpVtbl,
        lRowFirst,
        cRows,
        lpRowStatus,
      );

  int GetColumnStatus(
    Pointer<COLUMNSTATUS> lpColStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COLUMNSTATUS> lpColStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COLUMNSTATUS> lpColStatus,
          )>()(
        ptr.ref.lpVtbl,
        lpColStatus,
      );
}
