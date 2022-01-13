// ICrmMonitorClerks.dart

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

import '../../system/com/IDispatch.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICrmMonitorClerks = '{70C8E442-C7ED-11D1-82FB-00A0C91EEDE9}';

/// {@category Interface}
/// {@category com}
class ICrmMonitorClerks extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ICrmMonitorClerks(Pointer<COMObject> ptr) : super(ptr);

  int Item(
    VARIANT Index,
    Pointer<VARIANT> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pItem,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ProgIdCompensator(
    VARIANT Index,
    Pointer<VARIANT> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pItem,
      );

  int Description(
    VARIANT Index,
    Pointer<VARIANT> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pItem,
      );

  int TransactionUOW(
    VARIANT Index,
    Pointer<VARIANT> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pItem,
      );

  int ActivityId(
    VARIANT Index,
    Pointer<VARIANT> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Index,
            Pointer<VARIANT> pItem,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pItem,
      );
}
