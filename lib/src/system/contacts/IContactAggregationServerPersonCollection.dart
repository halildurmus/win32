// IContactAggregationServerPersonCollection.dart

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
import '../../system/contacts/IContactAggregationServerPerson.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IContactAggregationServerPersonCollection =
    '{4F730A4A-6604-47B6-A987-669ECF1E5751}';

/// {@category Interface}
/// {@category com}
class IContactAggregationServerPersonCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IContactAggregationServerPersonCollection(Pointer<COMObject> ptr)
      : super(ptr);

  int FindFirst(
    Pointer<Pointer<COMObject>> ppServerPerson,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>()(
        ptr.ref.lpVtbl,
        ppServerPerson,
      );

  int FindFirstByServerId(
    Pointer<Utf16> pServerId,
    Pointer<Pointer<COMObject>> ppServerPerson,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pServerId,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pServerId,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>()(
        ptr.ref.lpVtbl,
        pServerId,
        ppServerPerson,
      );

  int FindFirstByAggregateId(
    Pointer<Utf16> pAggregateId,
    Pointer<Pointer<COMObject>> ppServerPerson,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAggregateId,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAggregateId,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>()(
        ptr.ref.lpVtbl,
        pAggregateId,
        ppServerPerson,
      );

  int FindFirstByLinkedAggregateId(
    Pointer<Utf16> pAggregateId,
    Pointer<Pointer<COMObject>> ppServerPerson,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pAggregateId,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pAggregateId,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>()(
        ptr.ref.lpVtbl,
        pAggregateId,
        ppServerPerson,
      );

  int FindNext(
    Pointer<Pointer<COMObject>> ppServerPerson,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>()(
        ptr.ref.lpVtbl,
        ppServerPerson,
      );

  int get Count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
