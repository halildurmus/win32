// IAzOperation2.dart

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

import '../../security/authorization/IAzOperation.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/IAzRoleAssignments.dart';

/// @nodoc
const IID_IAzOperation2 = '{1F5EA01F-44A2-4184-9C48-A75B4DCC8CCC}';

/// {@category Interface}
/// {@category com}
class IAzOperation2 extends IAzOperation {
  // vtable begins at 19, is 1 entries long.
  IAzOperation2(Pointer<COMObject> ptr) : super(ptr);

  int RoleAssignments(
    Pointer<Utf16> bstrScopeName,
    int bRecursive,
    Pointer<Pointer<COMObject>> ppRoleAssignments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Int16 bRecursive,
            Pointer<Pointer<COMObject>> ppRoleAssignments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            int bRecursive,
            Pointer<Pointer<COMObject>> ppRoleAssignments,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        bRecursive,
        ppRoleAssignments,
      );
}
