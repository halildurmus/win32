// ICrmLogControl.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_ICrmLogControl = '{A0E174B3-D26E-11D2-8F84-00805FC7BCD9}';

/// {@category Interface}
/// {@category com}
class ICrmLogControl extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ICrmLogControl(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get TransactionUOW {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int RegisterCompensator(
    Pointer<Utf16> lpcwstrProgIdCompensator,
    Pointer<Utf16> lpcwstrDescription,
    int lCrmRegFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpcwstrProgIdCompensator,
            Pointer<Utf16> lpcwstrDescription,
            Int32 lCrmRegFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpcwstrProgIdCompensator,
            Pointer<Utf16> lpcwstrDescription,
            int lCrmRegFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpcwstrProgIdCompensator,
        lpcwstrDescription,
        lCrmRegFlags,
      );

  int WriteLogRecordVariants(
    Pointer<VARIANT> pLogRecord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pLogRecord,
          )>()(
        ptr.ref.lpVtbl,
        pLogRecord,
      );

  int ForceLog() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int ForgetLogRecord() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int ForceTransactionToAbort() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int WriteLogRecord(
    Pointer<BLOB> rgBlob,
    int cBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BLOB> rgBlob,
            Uint32 cBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BLOB> rgBlob,
            int cBlob,
          )>()(
        ptr.ref.lpVtbl,
        rgBlob,
        cBlob,
      );
}
