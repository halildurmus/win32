// ISecurityObjectTypeInfo.dart

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
import '../../../security/authorization/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISecurityObjectTypeInfo = '{FC3066EB-79EF-444B-9111-D18A75EBF2FA}';

/// {@category Interface}
/// {@category com}
class ISecurityObjectTypeInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISecurityObjectTypeInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetInheritSource(
    int si,
    Pointer<ACL> pACL,
    Pointer<Pointer<INHERITED_FROM>> ppInheritArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 si,
            Pointer<ACL> pACL,
            Pointer<Pointer<INHERITED_FROM>> ppInheritArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int si,
            Pointer<ACL> pACL,
            Pointer<Pointer<INHERITED_FROM>> ppInheritArray,
          )>()(
        ptr.ref.lpVtbl,
        si,
        pACL,
        ppInheritArray,
      );
}
