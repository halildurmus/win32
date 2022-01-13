// IVdsIscsiPortalGroup.dart

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
import '../../storage/virtualdiskservice/IVdsIscsiTarget.dart';
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';
import '../../storage/virtualdiskservice/IVdsAsync.dart';

/// @nodoc
const IID_IVdsIscsiPortalGroup = '{FEF5F89D-A3DD-4B36-BF28-E7DDE045C593}';

/// {@category Interface}
/// {@category com}
class IVdsIscsiPortalGroup extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IVdsIscsiPortalGroup(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_ISCSI_PORTALGROUP_PROP> pPortalGroupProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_ISCSI_PORTALGROUP_PROP> pPortalGroupProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_ISCSI_PORTALGROUP_PROP> pPortalGroupProp,
          )>()(
        ptr.ref.lpVtbl,
        pPortalGroupProp,
      );

  int GetTarget(
    Pointer<Pointer<COMObject>> ppTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTarget,
          )>()(
        ptr.ref.lpVtbl,
        ppTarget,
      );

  int QueryAssociatedPortals(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int AddPortal(
    GUID portalId,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID portalId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID portalId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        portalId,
        ppAsync,
      );

  int RemovePortal(
    GUID portalId,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID portalId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID portalId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        portalId,
        ppAsync,
      );

  int Delete(
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        ppAsync,
      );
}
