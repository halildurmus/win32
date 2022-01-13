// IContactAggregationAggregateCollection.dart

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
import '../../system/contacts/IContactAggregationAggregate.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IContactAggregationAggregateCollection =
    '{2359F3A6-3A68-40AF-98DB-0F9EB143C3BB}';

/// {@category Interface}
/// {@category com}
class IContactAggregationAggregateCollection extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IContactAggregationAggregateCollection(Pointer<COMObject> ptr) : super(ptr);

  int FindFirst(
    Pointer<Pointer<COMObject>> ppAggregate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAggregate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAggregate,
          )>()(
        ptr.ref.lpVtbl,
        ppAggregate,
      );

  int FindFirstByAntiLinkId(
    Pointer<Utf16> pAntiLinkId,
    Pointer<Pointer<COMObject>> ppAggregate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAntiLinkId,
            Pointer<Pointer<COMObject>> ppAggregate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAntiLinkId,
            Pointer<Pointer<COMObject>> ppAggregate,
          )>()(
        ptr.ref.lpVtbl,
        pAntiLinkId,
        ppAggregate,
      );

  int FindNext(
    Pointer<Pointer<COMObject>> ppAggregate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAggregate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAggregate,
          )>()(
        ptr.ref.lpVtbl,
        ppAggregate,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
