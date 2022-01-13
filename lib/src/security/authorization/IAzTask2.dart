// IAzTask2.dart

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

import '../../security/authorization/IAzTask.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/IAzRoleAssignments.dart';

/// @nodoc
const IID_IAzTask2 = '{03A9A5EE-48C8-4832-9025-AAD503C46526}';

/// {@category Interface}
/// {@category com}
class IAzTask2 extends IAzTask {
  // vtable begins at 33, is 1 entries long.
  IAzTask2(Pointer<COMObject> ptr) : super(ptr);

  int RoleAssignments(
    Pointer<Utf16> bstrScopeName,
    int bRecursive,
    Pointer<Pointer<COMObject>> ppRoleAssignments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
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
