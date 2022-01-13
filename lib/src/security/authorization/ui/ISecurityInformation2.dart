// ISecurityInformation2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../security/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IDataObject.dart';

/// @nodoc
const IID_ISecurityInformation2 = '{C3CCFDB4-6F88-11D2-A3CE-00C04FB1782A}';

/// {@category Interface}
/// {@category com}
class ISecurityInformation2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISecurityInformation2(Pointer<COMObject> ptr) : super(ptr);

  int IsDaclCanonical(
    Pointer<ACL> pDacl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ACL> pDacl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ACL> pDacl,
          )>()(
        ptr.ref.lpVtbl,
        pDacl,
      );

  int LookupSids(
    int cSids,
    Pointer<IntPtr> rgpSids,
    Pointer<Pointer<COMObject>> ppdo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cSids,
            Pointer<IntPtr> rgpSids,
            Pointer<Pointer<COMObject>> ppdo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cSids,
            Pointer<IntPtr> rgpSids,
            Pointer<Pointer<COMObject>> ppdo,
          )>()(
        ptr.ref.lpVtbl,
        cSids,
        rgpSids,
        ppdo,
      );
}
