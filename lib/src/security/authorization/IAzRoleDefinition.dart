// IAzRoleDefinition.dart

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
import '../../security/authorization/IAzRoleDefinitions.dart';

/// @nodoc
const IID_IAzRoleDefinition = '{D97FCEA1-2599-44F1-9FC3-58E9FBE09466}';

/// {@category Interface}
/// {@category com}
class IAzRoleDefinition extends IAzTask {
  // vtable begins at 33, is 4 entries long.
  IAzRoleDefinition(Pointer<COMObject> ptr) : super(ptr);

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

  int AddRoleDefinition(
    Pointer<Utf16> bstrRoleDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinition,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleDefinition,
      );

  int DeleteRoleDefinition(
    Pointer<Utf16> bstrRoleDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinition,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleDefinition,
      );

  Pointer<COMObject> get RoleDefinitions {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoleDefinitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoleDefinitions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
