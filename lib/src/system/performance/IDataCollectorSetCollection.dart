// IDataCollectorSetCollection.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/performance/IDataCollectorSet.dart';
import '../../system/performance/IDataCollectorSetCollection.dart';

/// @nodoc
const IID_IDataCollectorSetCollection =
    '{03837524-098B-11D8-9414-505054503030}';

/// {@category Interface}
/// {@category com}
class IDataCollectorSetCollection extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  IDataCollectorSetCollection(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> retVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    VARIANT index,
    Pointer<Pointer<COMObject>> set,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> set,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> set,
          )>()(
        ptr.ref.lpVtbl,
        index,
        set,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Add(
    Pointer<COMObject> set,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> set,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> set,
          )>()(
        ptr.ref.lpVtbl,
        set,
      );

  int Remove(
    VARIANT set,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT set,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT set,
          )>()(
        ptr.ref.lpVtbl,
        set,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int AddRange(
    Pointer<COMObject> sets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sets,
          )>()(
        ptr.ref.lpVtbl,
        sets,
      );

  int GetDataCollectorSets(
    Pointer<Utf16> server,
    Pointer<Utf16> filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> server,
            Pointer<Utf16> filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> server,
            Pointer<Utf16> filter,
          )>()(
        ptr.ref.lpVtbl,
        server,
        filter,
      );
}

/// @nodoc
const CLSID_DataCollectorSetCollection =
    '{03837525-098B-11D8-9414-505054503030}';

/// {@category com}
class DataCollectorSetCollection extends IDataCollectorSetCollection {
  DataCollectorSetCollection(Pointer<COMObject> ptr) : super(ptr);

  factory DataCollectorSetCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DataCollectorSetCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDataCollectorSetCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DataCollectorSetCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
