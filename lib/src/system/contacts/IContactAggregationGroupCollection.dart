// IContactAggregationGroupCollection.dart

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
import '../../system/contacts/IContactAggregationGroup.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IContactAggregationGroupCollection =
    '{20A19A9C-D2F3-4B83-9143-BEFFD2CC226D}';

/// {@category Interface}
/// {@category com}
class IContactAggregationGroupCollection extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IContactAggregationGroupCollection(Pointer<COMObject> ptr) : super(ptr);

  int FindFirst(
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        ppGroup,
      );

  int FindFirstByGlobalObjectId(
    Pointer<GUID> pGlobalObjectId,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGlobalObjectId,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGlobalObjectId,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        pGlobalObjectId,
        ppGroup,
      );

  int FindNext(
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        ppGroup,
      );

  int get Count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
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
