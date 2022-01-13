// IDataCollectorCollection.dart

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
import '../../system/performance/IDataCollector.dart';
import '../../system/performance/IDataCollectorCollection.dart';
import '../../system/performance/IValueMap.dart';
import '../../system/performance/structs.g.dart';

/// @nodoc
const IID_IDataCollectorCollection = '{03837502-098B-11D8-9414-505054503030}';

/// {@category Interface}
/// {@category com}
class IDataCollectorCollection extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  IDataCollectorCollection(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> collector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> collector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT index,
            Pointer<Pointer<COMObject>> collector,
          )>()(
        ptr.ref.lpVtbl,
        index,
        collector,
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
    Pointer<COMObject> collector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> collector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> collector,
          )>()(
        ptr.ref.lpVtbl,
        collector,
      );

  int Remove(
    VARIANT collector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT collector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT collector,
          )>()(
        ptr.ref.lpVtbl,
        collector,
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
    Pointer<COMObject> collectors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> collectors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> collectors,
          )>()(
        ptr.ref.lpVtbl,
        collectors,
      );

  int CreateDataCollectorFromXml(
    Pointer<Utf16> bstrXml,
    Pointer<Pointer<COMObject>> pValidation,
    Pointer<Pointer<COMObject>> pCollector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXml,
            Pointer<Pointer<COMObject>> pValidation,
            Pointer<Pointer<COMObject>> pCollector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXml,
            Pointer<Pointer<COMObject>> pValidation,
            Pointer<Pointer<COMObject>> pCollector,
          )>()(
        ptr.ref.lpVtbl,
        bstrXml,
        pValidation,
        pCollector,
      );

  int CreateDataCollector(
    int Type,
    Pointer<Pointer<COMObject>> Collector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer<Pointer<COMObject>> Collector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer<Pointer<COMObject>> Collector,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        Collector,
      );
}
