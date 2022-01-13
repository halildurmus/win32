// ICrmFormatLogRecords.dart

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
import '../../specialTypes.dart';
import '../../system/componentservices/structs.g.dart';

/// @nodoc
const IID_ICrmFormatLogRecords = '{9C51D821-C98B-11D1-82FB-00A0C91EEDE9}';

/// {@category Interface}
/// {@category com}
class ICrmFormatLogRecords extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ICrmFormatLogRecords(Pointer<COMObject> ptr) : super(ptr);

  int GetColumnCount(
    Pointer<Int32> plColumnCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plColumnCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plColumnCount,
          )>()(
        ptr.ref.lpVtbl,
        plColumnCount,
      );

  int GetColumnHeaders(
    Pointer<VARIANT> pHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pHeaders,
          )>()(
        ptr.ref.lpVtbl,
        pHeaders,
      );

  int GetColumn(
    CrmLogRecordRead CrmLogRec,
    Pointer<VARIANT> pFormattedLogRecord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            CrmLogRecordRead CrmLogRec,
            Pointer<VARIANT> pFormattedLogRecord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            CrmLogRecordRead CrmLogRec,
            Pointer<VARIANT> pFormattedLogRecord,
          )>()(
        ptr.ref.lpVtbl,
        CrmLogRec,
        pFormattedLogRecord,
      );

  int GetColumnVariants(
    VARIANT LogRecord,
    Pointer<VARIANT> pFormattedLogRecord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT LogRecord,
            Pointer<VARIANT> pFormattedLogRecord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT LogRecord,
            Pointer<VARIANT> pFormattedLogRecord,
          )>()(
        ptr.ref.lpVtbl,
        LogRecord,
        pFormattedLogRecord,
      );
}
