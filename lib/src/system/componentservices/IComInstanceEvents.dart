// IComInstanceEvents.dart

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
const IID_IComInstanceEvents = '{683130A7-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComInstanceEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IComInstanceEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnObjectCreate(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    Pointer<GUID> clsid,
    Pointer<GUID> tsid,
    int CtxtID,
    int ObjectID,
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
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        clsid,
        tsid,
        CtxtID,
        ObjectID,
      );

  int OnObjectDestroy(
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
