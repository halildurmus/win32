// IVdsLunPlex.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/virtualdiskservice/IVdsLun.dart';

/// @nodoc
const IID_IVdsLunPlex = '{0EE1A790-5D2E-4ABB-8C99-C481E8BE2138}';

/// {@category Interface}
/// {@category com}
class IVdsLunPlex extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IVdsLunPlex(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_LUN_PLEX_PROP> pPlexProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_LUN_PLEX_PROP> pPlexProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_LUN_PLEX_PROP> pPlexProp,
          )>()(
        ptr.ref.lpVtbl,
        pPlexProp,
      );

  int GetLun(
    Pointer<Pointer<COMObject>> ppLun,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLun,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLun,
          )>()(
        ptr.ref.lpVtbl,
        ppLun,
      );

  int QueryExtents(
    Pointer<Pointer<VDS_DRIVE_EXTENT>> ppExtentArray,
    Pointer<Int32> plNumberOfExtents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<VDS_DRIVE_EXTENT>> ppExtentArray,
            Pointer<Int32> plNumberOfExtents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<VDS_DRIVE_EXTENT>> ppExtentArray,
            Pointer<Int32> plNumberOfExtents,
          )>()(
        ptr.ref.lpVtbl,
        ppExtentArray,
        plNumberOfExtents,
      );

  int QueryHints(
    Pointer<VDS_HINTS> pHints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>()(
        ptr.ref.lpVtbl,
        pHints,
      );

  int ApplyHints(
    Pointer<VDS_HINTS> pHints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>()(
        ptr.ref.lpVtbl,
        pHints,
      );
}
