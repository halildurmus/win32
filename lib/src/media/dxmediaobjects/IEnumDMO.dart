// IEnumDMO.dart

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
import '../../media/dxmediaobjects/IEnumDMO.dart';

/// @nodoc
const IID_IEnumDMO = '{2C3CD98A-2BFA-4A53-9C27-5249BA64BA0F}';

/// {@category Interface}
/// {@category com}
class IEnumDMO extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumDMO(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cItemsToFetch,
    Pointer<GUID> pCLSID,
    Pointer<Pointer<Utf16>> Names,
    Pointer<Uint32> pcItemsFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cItemsToFetch,
            Pointer<GUID> pCLSID,
            Pointer<Pointer<Utf16>> Names,
            Pointer<Uint32> pcItemsFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cItemsToFetch,
            Pointer<GUID> pCLSID,
            Pointer<Pointer<Utf16>> Names,
            Pointer<Uint32> pcItemsFetched,
          )>()(
        ptr.ref.lpVtbl,
        cItemsToFetch,
        pCLSID,
        Names,
        pcItemsFetched,
      );

  int Skip(
    int cItemsToSkip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cItemsToSkip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cItemsToSkip,
          )>()(
        ptr.ref.lpVtbl,
        cItemsToSkip,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
