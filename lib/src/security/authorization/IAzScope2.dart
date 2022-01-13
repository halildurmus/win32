// IAzScope2.dart

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

import '../../security/authorization/IAzScope.dart';
import '../../security/authorization/IAzRoleDefinitions.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/IAzRoleDefinition.dart';
import '../../security/authorization/IAzRoleAssignments.dart';
import '../../security/authorization/IAzRoleAssignment.dart';

/// @nodoc
const IID_IAzScope2 = '{EE9FE8C9-C9F3-40E2-AA12-D1D8599727FD}';

/// {@category Interface}
/// {@category com}
class IAzScope2 extends IAzScope {
  // vtable begins at 45, is 8 entries long.
  IAzScope2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get RoleDefinitions {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(45)
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

  int CreateRoleDefinition(
    Pointer<Utf16> bstrRoleDefinitionName,
    Pointer<Pointer<COMObject>> ppRoleDefinitions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinitionName,
            Pointer<Pointer<COMObject>> ppRoleDefinitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinitionName,
            Pointer<Pointer<COMObject>> ppRoleDefinitions,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleDefinitionName,
        ppRoleDefinitions,
      );

  int OpenRoleDefinition(
    Pointer<Utf16> bstrRoleDefinitionName,
    Pointer<Pointer<COMObject>> ppRoleDefinitions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinitionName,
            Pointer<Pointer<COMObject>> ppRoleDefinitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinitionName,
            Pointer<Pointer<COMObject>> ppRoleDefinitions,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleDefinitionName,
        ppRoleDefinitions,
      );

  int DeleteRoleDefinition(
    Pointer<Utf16> bstrRoleDefinitionName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinitionName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleDefinitionName,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleDefinitionName,
      );

  Pointer<COMObject> get RoleAssignments {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoleAssignments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppRoleAssignments,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateRoleAssignment(
    Pointer<Utf16> bstrRoleAssignmentName,
    Pointer<Pointer<COMObject>> ppRoleAssignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleAssignmentName,
            Pointer<Pointer<COMObject>> ppRoleAssignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleAssignmentName,
            Pointer<Pointer<COMObject>> ppRoleAssignment,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleAssignmentName,
        ppRoleAssignment,
      );

  int OpenRoleAssignment(
    Pointer<Utf16> bstrRoleAssignmentName,
    Pointer<Pointer<COMObject>> ppRoleAssignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleAssignmentName,
            Pointer<Pointer<COMObject>> ppRoleAssignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleAssignmentName,
            Pointer<Pointer<COMObject>> ppRoleAssignment,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleAssignmentName,
        ppRoleAssignment,
      );

  int DeleteRoleAssignment(
    Pointer<Utf16> bstrRoleAssignmentName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleAssignmentName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleAssignmentName,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleAssignmentName,
      );
}
