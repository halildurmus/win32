// IKsPropertySet.dart

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

/// @nodoc
const IID_IKsPropertySet = '{31EFAC30-515C-11D0-A9AA-00AA0061BE93}';

/// {@category Interface}
/// {@category com}
class IKsPropertySet extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IKsPropertySet(Pointer<COMObject> ptr) : super(ptr);

  int $Set(
    Pointer<GUID> PropSet,
    int Id,
    Pointer InstanceData,
    int InstanceLength,
    Pointer PropertyData,
    int DataLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> PropSet,
            Uint32 Id,
            Pointer InstanceData,
            Uint32 InstanceLength,
            Pointer PropertyData,
            Uint32 DataLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> PropSet,
            int Id,
            Pointer InstanceData,
            int InstanceLength,
            Pointer PropertyData,
            int DataLength,
          )>()(
        ptr.ref.lpVtbl,
        PropSet,
        Id,
        InstanceData,
        InstanceLength,
        PropertyData,
        DataLength,
      );

  int Get(
    Pointer<GUID> PropSet,
    int Id,
    Pointer InstanceData,
    int InstanceLength,
    Pointer PropertyData,
    int DataLength,
    Pointer<Uint32> BytesReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> PropSet,
            Uint32 Id,
            Pointer InstanceData,
            Uint32 InstanceLength,
            Pointer PropertyData,
            Uint32 DataLength,
            Pointer<Uint32> BytesReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> PropSet,
            int Id,
            Pointer InstanceData,
            int InstanceLength,
            Pointer PropertyData,
            int DataLength,
            Pointer<Uint32> BytesReturned,
          )>()(
        ptr.ref.lpVtbl,
        PropSet,
        Id,
        InstanceData,
        InstanceLength,
        PropertyData,
        DataLength,
        BytesReturned,
      );

  int QuerySupported(
    Pointer<GUID> PropSet,
    int Id,
    Pointer<Uint32> TypeSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> PropSet,
            Uint32 Id,
            Pointer<Uint32> TypeSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> PropSet,
            int Id,
            Pointer<Uint32> TypeSupport,
          )>()(
        ptr.ref.lpVtbl,
        PropSet,
        Id,
        TypeSupport,
      );
}
