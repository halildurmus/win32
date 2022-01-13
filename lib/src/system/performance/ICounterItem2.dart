// ICounterItem2.dart

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

import '../../system/performance/ICounterItem.dart';
import '../../foundation/structs.g.dart';
import '../../system/performance/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ICounterItem2 = '{EEFCD4E1-EA1C-4435-B7F4-E341BA03B4F9}';

/// {@category Interface}
/// {@category com}
class ICounterItem2 extends ICounterItem {
  // vtable begins at 15, is 5 entries long.
  ICounterItem2(Pointer<COMObject> ptr) : super(ptr);

  set Selected(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bState,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bState,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Selected {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Visible(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bState,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bState,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Visible {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetDataAt(
    int iIndex,
    int iWhich,
    Pointer<VARIANT> pVariant,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iIndex,
            Int32 iWhich,
            Pointer<VARIANT> pVariant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            int iWhich,
            Pointer<VARIANT> pVariant,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        iWhich,
        pVariant,
      );
}

/// @nodoc
const CLSID_CounterItem2 = '{43196C62-C31F-4CE3-A02E-79EFE0F6A525}';

/// {@category com}
class CounterItem2 extends ICounterItem2 {
  CounterItem2(Pointer<COMObject> ptr) : super(ptr);

  factory CounterItem2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_CounterItem2);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICounterItem2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return CounterItem2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
