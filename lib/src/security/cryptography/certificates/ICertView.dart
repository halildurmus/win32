// ICertView.dart

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
import '../../../security/cryptography/certificates/IEnumCERTVIEWCOLUMN.dart';
import '../../../specialTypes.dart';
import '../../../security/cryptography/certificates/IEnumCERTVIEWRO.dart';

/// @nodoc
const IID_ICertView = '{C3FAC344-1E84-11D1-9BD6-00C04FB683FA}';

/// {@category Interface}
/// {@category com}
class ICertView extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  ICertView(Pointer<COMObject> ptr) : super(ptr);

  int OpenConnection(
    Pointer<Utf16> strConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
      );

  int EnumCertViewColumn(
    int fResultColumn,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fResultColumn,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fResultColumn,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        fResultColumn,
        ppenum,
      );

  int GetColumnCount(
    int fResultColumn,
    Pointer<Int32> pcColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fResultColumn,
            Pointer<Int32> pcColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fResultColumn,
            Pointer<Int32> pcColumn,
          )>()(
        ptr.ref.lpVtbl,
        fResultColumn,
        pcColumn,
      );

  int GetColumnIndex(
    int fResultColumn,
    Pointer<Utf16> strColumnName,
    Pointer<Int32> pColumnIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fResultColumn,
            Pointer<Utf16> strColumnName,
            Pointer<Int32> pColumnIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fResultColumn,
            Pointer<Utf16> strColumnName,
            Pointer<Int32> pColumnIndex,
          )>()(
        ptr.ref.lpVtbl,
        fResultColumn,
        strColumnName,
        pColumnIndex,
      );

  int SetResultColumnCount(
    int cResultColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cResultColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cResultColumn,
          )>()(
        ptr.ref.lpVtbl,
        cResultColumn,
      );

  int SetResultColumn(
    int ColumnIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ColumnIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ColumnIndex,
          )>()(
        ptr.ref.lpVtbl,
        ColumnIndex,
      );

  int SetRestriction(
    int ColumnIndex,
    int SeekOperator,
    int SortOrder,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ColumnIndex,
            Uint32 SeekOperator,
            Int32 SortOrder,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ColumnIndex,
            int SeekOperator,
            int SortOrder,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        ColumnIndex,
        SeekOperator,
        SortOrder,
        pvarValue,
      );

  int OpenView(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );
}
