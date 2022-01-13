// IContactAggregationContactCollection.dart

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
import '../../system/contacts/IContactAggregationContact.dart';
import '../../foundation/structs.g.dart';
import '../../system/contacts/structs.g.dart';

/// @nodoc
const IID_IContactAggregationContactCollection =
    '{826E66FA-81DE-43CA-A6FB-8C785CD996C6}';

/// {@category Interface}
/// {@category com}
class IContactAggregationContactCollection extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IContactAggregationContactCollection(Pointer<COMObject> ptr) : super(ptr);

  int FindFirst(
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        ppItem,
      );

  int FindNext(
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        ppItem,
      );

  int FindFirstByIdentityHash(
    Pointer<Utf16> pSourceType,
    Pointer<Utf16> pAccountId,
    Pointer<CONTACT_AGGREGATION_BLOB> pIdentityHash,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pSourceType,
            Pointer<Utf16> pAccountId,
            Pointer<CONTACT_AGGREGATION_BLOB> pIdentityHash,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pSourceType,
            Pointer<Utf16> pAccountId,
            Pointer<CONTACT_AGGREGATION_BLOB> pIdentityHash,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pSourceType,
        pAccountId,
        pIdentityHash,
        ppItem,
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

  int FindFirstByRemoteId(
    Pointer<Utf16> pSourceType,
    Pointer<Utf16> pAccountId,
    Pointer<CONTACT_AGGREGATION_BLOB> pRemoteObjectId,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pSourceType,
            Pointer<Utf16> pAccountId,
            Pointer<CONTACT_AGGREGATION_BLOB> pRemoteObjectId,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pSourceType,
            Pointer<Utf16> pAccountId,
            Pointer<CONTACT_AGGREGATION_BLOB> pRemoteObjectId,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pSourceType,
        pAccountId,
        pRemoteObjectId,
        ppItem,
      );
}
