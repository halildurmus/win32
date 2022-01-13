// IAzRoleAssignment.dart

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

import '../../security/authorization/IAzRole.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/IAzRoleDefinitions.dart';
import '../../security/authorization/IAzScope.dart';

/// @nodoc
const IID_IAzRoleAssignment = '{55647D31-0D5A-4FA3-B4AC-2B5F9AD5AB76}';

/// {@category Interface}
/// {@category com}
class IAzRoleAssignment extends IAzRole {
  // vtable begins at 34, is 4 entries long.
  IAzRoleAssignment(Pointer<COMObject> ptr) : super(ptr);

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

  Pointer<COMObject> get Scope {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppScope,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
