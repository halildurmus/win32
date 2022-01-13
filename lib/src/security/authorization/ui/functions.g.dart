// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/authorization/ui/ISecurityInformation.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/authorization/ui/structs.g.dart'; // -----------------------------------------------------------------------

// aclui.dll
// -----------------------------------------------------------------------
final _aclui = DynamicLibrary.open('aclui.dll');

int CreateSecurityPage(
  Pointer<COMObject> psi,
) =>
    _CreateSecurityPage(
      psi,
    );

late final _CreateSecurityPage = _aclui.lookupFunction<
    IntPtr Function(
  Pointer<COMObject> psi,
),
    int Function(
  Pointer<COMObject> psi,
)>('CreateSecurityPage');

int EditSecurity(
  int hwndOwner,
  Pointer<COMObject> psi,
) =>
    _EditSecurity(
      hwndOwner,
      psi,
    );

late final _EditSecurity = _aclui.lookupFunction<
    Int32 Function(
  IntPtr hwndOwner,
  Pointer<COMObject> psi,
),
    int Function(
  int hwndOwner,
  Pointer<COMObject> psi,
)>('EditSecurity');

int EditSecurityAdvanced(
  int hwndOwner,
  Pointer<COMObject> psi,
  int uSIPage,
) =>
    _EditSecurityAdvanced(
      hwndOwner,
      psi,
      uSIPage,
    );

late final _EditSecurityAdvanced = _aclui.lookupFunction<
    Int32 Function(
  IntPtr hwndOwner,
  Pointer<COMObject> psi,
  Int32 uSIPage,
),
    int Function(
  int hwndOwner,
  Pointer<COMObject> psi,
  int uSIPage,
)>('EditSecurityAdvanced');
