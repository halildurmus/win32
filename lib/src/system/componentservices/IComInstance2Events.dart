// IComInstance2Events.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComInstance2Events = '{20E3BF07-B506-4AD5-A50C-D2CA5B9C158E}';

/// {@category Interface}
/// {@category com}
class IComInstance2Events extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IComInstance2Events(Pointer<COMObject> ptr) : super(ptr);

  int OnObjectCreate2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    Pointer<GUID> clsid,
    Pointer<GUID> tsid,
    int CtxtID,
    int ObjectID,
    Pointer<GUID> guidPartition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> clsid,
            Pointer<GUID> tsid,
            Uint64 CtxtID,
            Uint64 ObjectID,
            Pointer<GUID> guidPartition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> clsid,
            Pointer<GUID> tsid,
            int CtxtID,
            int ObjectID,
            Pointer<GUID> guidPartition,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        clsid,
        tsid,
        CtxtID,
        ObjectID,
        guidPartition,
      );

  int OnObjectDestroy2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int CtxtID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 CtxtID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int CtxtID,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        CtxtID,
      );
}
