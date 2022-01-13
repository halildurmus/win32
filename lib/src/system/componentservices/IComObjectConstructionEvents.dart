// IComObjectConstructionEvents.dart

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
const IID_IComObjectConstructionEvents =
    '{683130AF-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComObjectConstructionEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IComObjectConstructionEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnObjectConstruct(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidObject,
    Pointer<Utf16> sConstructString,
    int oid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            Pointer<Utf16> sConstructString,
            Uint64 oid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            Pointer<Utf16> sConstructString,
            int oid,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidObject,
        sConstructString,
        oid,
      );
}
