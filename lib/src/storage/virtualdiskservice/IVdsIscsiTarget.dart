// IVdsIscsiTarget.dart

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
import '../../storage/virtualdiskservice/IVdsSubSystem.dart';
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';
import '../../storage/virtualdiskservice/IVdsAsync.dart';

/// @nodoc
const IID_IVdsIscsiTarget = '{AA8F5055-83E5-4BCC-AA73-19851A36A849}';

/// {@category Interface}
/// {@category com}
class IVdsIscsiTarget extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IVdsIscsiTarget(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_ISCSI_TARGET_PROP> pTargetProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_ISCSI_TARGET_PROP> pTargetProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_ISCSI_TARGET_PROP> pTargetProp,
          )>()(
        ptr.ref.lpVtbl,
        pTargetProp,
      );

  int GetSubSystem(
    Pointer<Pointer<COMObject>> ppSubSystem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubSystem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubSystem,
          )>()(
        ptr.ref.lpVtbl,
        ppSubSystem,
      );

  int QueryPortalGroups(
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

  int QueryAssociatedLuns(
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

  int CreatePortalGroup(
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetFriendlyName(
    Pointer<Utf16> pwszFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        pwszFriendlyName,
      );

  int SetSharedSecret(
    Pointer<VDS_ISCSI_SHARED_SECRET> pTargetSharedSecret,
    Pointer<Utf16> pwszInitiatorName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_ISCSI_SHARED_SECRET> pTargetSharedSecret,
            Pointer<Utf16> pwszInitiatorName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_ISCSI_SHARED_SECRET> pTargetSharedSecret,
            Pointer<Utf16> pwszInitiatorName,
          )>()(
        ptr.ref.lpVtbl,
        pTargetSharedSecret,
        pwszInitiatorName,
      );

  int RememberInitiatorSharedSecret(
    Pointer<Utf16> pwszInitiatorName,
    Pointer<VDS_ISCSI_SHARED_SECRET> pInitiatorSharedSecret,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszInitiatorName,
            Pointer<VDS_ISCSI_SHARED_SECRET> pInitiatorSharedSecret,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszInitiatorName,
            Pointer<VDS_ISCSI_SHARED_SECRET> pInitiatorSharedSecret,
          )>()(
        ptr.ref.lpVtbl,
        pwszInitiatorName,
        pInitiatorSharedSecret,
      );

  int GetConnectedInitiators(
    Pointer<Pointer<Pointer<Utf16>>> pppwszInitiatorList,
    Pointer<Int32> plNumberOfInitiators,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<Utf16>>> pppwszInitiatorList,
            Pointer<Int32> plNumberOfInitiators,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<Utf16>>> pppwszInitiatorList,
            Pointer<Int32> plNumberOfInitiators,
          )>()(
        ptr.ref.lpVtbl,
        pppwszInitiatorList,
        plNumberOfInitiators,
      );
}
