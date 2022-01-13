// IVdsSubSystemIscsi.dart

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
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';
import '../../foundation/structs.g.dart';
import '../../storage/virtualdiskservice/IVdsAsync.dart';
import '../../storage/virtualdiskservice/structs.g.dart';

/// @nodoc
const IID_IVdsSubSystemIscsi = '{0027346F-40D0-4B45-8CEC-5906DC0380C8}';

/// {@category Interface}
/// {@category com}
class IVdsSubSystemIscsi extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVdsSubSystemIscsi(Pointer<COMObject> ptr) : super(ptr);

  int QueryTargets(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int QueryPortals(
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

  int CreateTarget(
    Pointer<Utf16> pwszIscsiName,
    Pointer<Utf16> pwszFriendlyName,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszIscsiName,
            Pointer<Utf16> pwszFriendlyName,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszIscsiName,
            Pointer<Utf16> pwszFriendlyName,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        pwszIscsiName,
        pwszFriendlyName,
        ppAsync,
      );

  int SetIpsecGroupPresharedKey(
    Pointer<VDS_ISCSI_IPSEC_KEY> pIpsecKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_ISCSI_IPSEC_KEY> pIpsecKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_ISCSI_IPSEC_KEY> pIpsecKey,
          )>()(
        ptr.ref.lpVtbl,
        pIpsecKey,
      );
}
