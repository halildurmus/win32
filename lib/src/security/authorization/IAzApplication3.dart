// IAzApplication3.dart

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

import '../../security/authorization/IAzApplication2.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/IAzScope2.dart';
import '../../security/authorization/IAzRoleDefinitions.dart';
import '../../security/authorization/IAzRoleDefinition.dart';
import '../../security/authorization/IAzRoleAssignments.dart';
import '../../security/authorization/IAzRoleAssignment.dart';

/// @nodoc
const IID_IAzApplication3 = '{181C845E-7196-4A7D-AC2E-020C0BB7A303}';

/// {@category Interface}
/// {@category com}
class IAzApplication3 extends IAzApplication2 {
  // vtable begins at 70, is 14 entries long.
  IAzApplication3(Pointer<COMObject> ptr) : super(ptr);

  int ScopeExists(
    Pointer<Utf16> bstrScopeName,
    Pointer<Int16> pbExist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Int16> pbExist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Int16> pbExist,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        pbExist,
      );

  int OpenScope2(
    Pointer<Utf16> bstrScopeName,
    Pointer<Pointer<COMObject>> ppScope2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppScope2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppScope2,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        ppScope2,
      );

  int CreateScope2(
    Pointer<Utf16> bstrScopeName,
    Pointer<Pointer<COMObject>> ppScope2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppScope2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppScope2,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        ppScope2,
      );

  int DeleteScope2(
    Pointer<Utf16> bstrScopeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
      );

  Pointer<COMObject> get RoleDefinitions {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(74)
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
          .elementAt(75)
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
          .elementAt(76)
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
          .elementAt(77)
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
          .elementAt(78)
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
          .elementAt(79)
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
          .elementAt(80)
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
          .elementAt(81)
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

  int get BizRulesEnabled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BizRulesEnabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(83)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bEnabled,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bEnabled,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
