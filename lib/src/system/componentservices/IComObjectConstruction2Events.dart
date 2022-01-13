// IComObjectConstruction2Events.dart

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
const IID_IComObjectConstruction2Events =
    '{4B5A7827-8DF2-45C0-8F6F-57EA1F856A9F}';

/// {@category Interface}
/// {@category com}
class IComObjectConstruction2Events extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IComObjectConstruction2Events(Pointer<COMObject> ptr) : super(ptr);

  int OnObjectConstruct2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidObject,
    Pointer<Utf16> sConstructString,
    int oid,
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
            Pointer<GUID> guidObject,
            Pointer<Utf16> sConstructString,
            Uint64 oid,
            Pointer<GUID> guidPartition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            Pointer<Utf16> sConstructString,
            int oid,
            Pointer<GUID> guidPartition,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidObject,
        sConstructString,
        oid,
        guidPartition,
      );
}
