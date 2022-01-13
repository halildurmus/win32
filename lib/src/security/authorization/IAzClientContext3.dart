// IAzClientContext3.dart

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

import '../../security/authorization/IAzClientContext2.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/IAzOperations.dart';
import '../../security/authorization/IAzTasks.dart';
import '../../security/authorization/IAzBizRuleParameters.dart';
import '../../security/authorization/IAzBizRuleInterfaces.dart';
import '../../security/authorization/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IAzClientContext3 = '{11894FDE-1DEB-4B4B-8907-6D1CDA1F5D4F}';

/// {@category Interface}
/// {@category com}
class IAzClientContext3 extends IAzClientContext2 {
  // vtable begins at 26, is 8 entries long.
  IAzClientContext3(Pointer<COMObject> ptr) : super(ptr);

  int AccessCheck2(
    Pointer<Utf16> bstrObjectName,
    Pointer<Utf16> bstrScopeName,
    int lOperation,
    Pointer<Uint32> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrObjectName,
            Pointer<Utf16> bstrScopeName,
            Int32 lOperation,
            Pointer<Uint32> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrObjectName,
            Pointer<Utf16> bstrScopeName,
            int lOperation,
            Pointer<Uint32> plResult,
          )>()(
        ptr.ref.lpVtbl,
        bstrObjectName,
        bstrScopeName,
        lOperation,
        plResult,
      );

  int IsInRoleAssignment(
    Pointer<Utf16> bstrScopeName,
    Pointer<Utf16> bstrRoleName,
    Pointer<Int16> pbIsInRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Utf16> bstrRoleName,
            Pointer<Int16> pbIsInRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Utf16> bstrRoleName,
            Pointer<Int16> pbIsInRole,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        bstrRoleName,
        pbIsInRole,
      );

  int GetOperations(
    Pointer<Utf16> bstrScopeName,
    Pointer<Pointer<COMObject>> ppOperationCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppOperationCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppOperationCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        ppOperationCollection,
      );

  int GetTasks(
    Pointer<Utf16> bstrScopeName,
    Pointer<Pointer<COMObject>> ppTaskCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppTaskCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Pointer<Pointer<COMObject>> ppTaskCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        ppTaskCollection,
      );

  Pointer<COMObject> get BizRuleParameters {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBizRuleParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBizRuleParam,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get BizRuleInterfaces {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBizRuleInterfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBizRuleInterfaces,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetGroups(
    Pointer<Utf16> bstrScopeName,
    int ulOptions,
    Pointer<VARIANT> pGroupArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            Int32 ulOptions,
            Pointer<VARIANT> pGroupArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrScopeName,
            int ulOptions,
            Pointer<VARIANT> pGroupArray,
          )>()(
        ptr.ref.lpVtbl,
        bstrScopeName,
        ulOptions,
        pGroupArray,
      );

  VARIANT get Sids {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pStringSidArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pStringSidArray,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
