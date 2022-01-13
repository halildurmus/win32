// IFilterKeyMap.dart

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
import '../../system/windowssync/ISyncFilter.dart';

/// @nodoc
const IID_IFilterKeyMap = '{CA169652-07C6-4708-A3DA-6E4EBA8D2297}';

/// {@category Interface}
/// {@category com}
class IFilterKeyMap extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFilterKeyMap(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int AddFilter(
    Pointer<COMObject> pISyncFilter,
    Pointer<Uint32> pdwFilterKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pISyncFilter,
            Pointer<Uint32> pdwFilterKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pISyncFilter,
            Pointer<Uint32> pdwFilterKey,
          )>()(
        ptr.ref.lpVtbl,
        pISyncFilter,
        pdwFilterKey,
      );

  int GetFilter(
    int dwFilterKey,
    Pointer<Pointer<COMObject>> ppISyncFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFilterKey,
            Pointer<Pointer<COMObject>> ppISyncFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFilterKey,
            Pointer<Pointer<COMObject>> ppISyncFilter,
          )>()(
        ptr.ref.lpVtbl,
        dwFilterKey,
        ppISyncFilter,
      );

  int Serialize(
    Pointer<Uint8> pbFilterKeyMap,
    Pointer<Uint32> pcbFilterKeyMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbFilterKeyMap,
            Pointer<Uint32> pcbFilterKeyMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbFilterKeyMap,
            Pointer<Uint32> pcbFilterKeyMap,
          )>()(
        ptr.ref.lpVtbl,
        pbFilterKeyMap,
        pcbFilterKeyMap,
      );
}
