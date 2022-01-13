// IRoleAssociationUtil.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRoleAssociationUtil = '{6EB22876-8A19-11D0-81B6-00A0C9231C29}';

/// {@category Interface}
/// {@category com}
class IRoleAssociationUtil extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IRoleAssociationUtil(Pointer<COMObject> ptr) : super(ptr);

  int AssociateRole(
    Pointer<Utf16> bstrRoleID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleID,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleID,
      );

  int AssociateRoleByName(
    Pointer<Utf16> bstrRoleName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRoleName,
          )>()(
        ptr.ref.lpVtbl,
        bstrRoleName,
      );
}

/// @nodoc
const CLSID_RoleAssociationUtil = '{6EB22887-8A19-11D0-81B6-00A0C9231C29}';

/// {@category com}
class RoleAssociationUtil extends IRoleAssociationUtil {
  RoleAssociationUtil(Pointer<COMObject> ptr) : super(ptr);

  factory RoleAssociationUtil.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_RoleAssociationUtil);
    final iid = calloc<GUID>()..ref.setGUID(IID_IRoleAssociationUtil);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return RoleAssociationUtil(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
