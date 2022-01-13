// IVdsLunIscsi.dart

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
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';

/// @nodoc
const IID_IVdsLunIscsi = '{0D7C1E64-B59B-45AE-B86A-2C2CC6A42067}';

/// {@category Interface}
/// {@category com}
class IVdsLunIscsi extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IVdsLunIscsi(Pointer<COMObject> ptr) : super(ptr);

  int AssociateTargets(
    Pointer<GUID> pTargetIdArray,
    int lNumberOfTargets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pTargetIdArray,
            Int32 lNumberOfTargets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pTargetIdArray,
            int lNumberOfTargets,
          )>()(
        ptr.ref.lpVtbl,
        pTargetIdArray,
        lNumberOfTargets,
      );

  int QueryAssociatedTargets(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
