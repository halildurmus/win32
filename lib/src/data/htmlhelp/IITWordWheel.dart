// IITWordWheel.dart

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
import '../../data/htmlhelp/IITDatabase.dart';
import '../../foundation/structs.g.dart';
import '../../data/htmlhelp/structs.g.dart';
import '../../data/htmlhelp/IITResultSet.dart';

/// @nodoc
const IID_IITWordWheel = '{8FA0D5A4-DEDF-11D0-9A61-00C04FB68BF7}';

/// {@category Interface}
/// {@category com}
class IITWordWheel extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IITWordWheel(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<COMObject> lpITDB,
    Pointer<Utf16> lpszMoniker,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpITDB,
            Pointer<Utf16> lpszMoniker,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpITDB,
            Pointer<Utf16> lpszMoniker,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpITDB,
        lpszMoniker,
        dwFlags,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetLocaleInfo(
    Pointer<Uint32> pdwCodePageID,
    Pointer<Uint32> plcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCodePageID,
            Pointer<Uint32> plcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCodePageID,
            Pointer<Uint32> plcid,
          )>()(
        ptr.ref.lpVtbl,
        pdwCodePageID,
        plcid,
      );

  int GetSorterInstance(
    Pointer<Uint32> pdwObjInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwObjInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwObjInstance,
          )>()(
        ptr.ref.lpVtbl,
        pdwObjInstance,
      );

  int Count(
    Pointer<Int32> pcEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcEntries,
          )>()(
        ptr.ref.lpVtbl,
        pcEntries,
      );

  int Lookup_2(
    Pointer lpcvPrefix,
    int fExactMatch,
    Pointer<Int32> plEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpcvPrefix,
            Int32 fExactMatch,
            Pointer<Int32> plEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpcvPrefix,
            int fExactMatch,
            Pointer<Int32> plEntry,
          )>()(
        ptr.ref.lpVtbl,
        lpcvPrefix,
        fExactMatch,
        plEntry,
      );

  int Lookup_1(
    int lEntry,
    Pointer<COMObject> lpITResult,
    int cEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEntry,
            Pointer<COMObject> lpITResult,
            Int32 cEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEntry,
            Pointer<COMObject> lpITResult,
            int cEntries,
          )>()(
        ptr.ref.lpVtbl,
        lEntry,
        lpITResult,
        cEntries,
      );

  int Lookup(
    int lEntry,
    Pointer lpvKeyBuf,
    int cbKeyBuf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEntry,
            Pointer lpvKeyBuf,
            Uint32 cbKeyBuf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEntry,
            Pointer lpvKeyBuf,
            int cbKeyBuf,
          )>()(
        ptr.ref.lpVtbl,
        lEntry,
        lpvKeyBuf,
        cbKeyBuf,
      );

  int SetGroup(
    Pointer<IITGroup> piitGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IITGroup> piitGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IITGroup> piitGroup,
          )>()(
        ptr.ref.lpVtbl,
        piitGroup,
      );

  int GetGroup(
    Pointer<Pointer<IITGroup>> ppiitGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<IITGroup>> ppiitGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<IITGroup>> ppiitGroup,
          )>()(
        ptr.ref.lpVtbl,
        ppiitGroup,
      );

  int GetDataCount(
    int lEntry,
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEntry,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEntry,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        lEntry,
        pdwCount,
      );

  int GetData(
    int lEntry,
    Pointer<COMObject> lpITResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEntry,
            Pointer<COMObject> lpITResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEntry,
            Pointer<COMObject> lpITResult,
          )>()(
        ptr.ref.lpVtbl,
        lEntry,
        lpITResult,
      );

  int GetDataColumns(
    Pointer<COMObject> pRS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRS,
          )>()(
        ptr.ref.lpVtbl,
        pRS,
      );
}
