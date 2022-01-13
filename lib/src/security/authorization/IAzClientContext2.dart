// IAzClientContext2.dart

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

import '../../security/authorization/IAzClientContext.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAzClientContext2 = '{2B0C92B8-208A-488A-8F81-E4EDB22111CD}';

/// {@category Interface}
/// {@category com}
class IAzClientContext2 extends IAzClientContext {
  // vtable begins at 20, is 6 entries long.
  IAzClientContext2(Pointer<COMObject> ptr) : super(ptr);

  int GetAssignedScopesPage(
    int lOptions,
    int PageSize,
    Pointer<VARIANT> pvarCursor,
    Pointer<VARIANT> pvarScopeNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lOptions,
            Int32 PageSize,
            Pointer<VARIANT> pvarCursor,
            Pointer<VARIANT> pvarScopeNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lOptions,
            int PageSize,
            Pointer<VARIANT> pvarCursor,
            Pointer<VARIANT> pvarScopeNames,
          )>()(
        ptr.ref.lpVtbl,
        lOptions,
        PageSize,
        pvarCursor,
        pvarScopeNames,
      );

  int AddRoles(
    VARIANT varRoles,
    Pointer<Utf16> bstrScopeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varRoles,
            Pointer<Utf16> bstrScopeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varRoles,
            Pointer<Utf16> bstrScopeName,
          )>()(
        ptr.ref.lpVtbl,
        varRoles,
        bstrScopeName,
      );

  int AddApplicationGroups(
    VARIANT varApplicationGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varApplicationGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varApplicationGroups,
          )>()(
        ptr.ref.lpVtbl,
        varApplicationGroups,
      );

  int AddStringSids(
    VARIANT varStringSids,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varStringSids,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varStringSids,
          )>()(
        ptr.ref.lpVtbl,
        varStringSids,
      );

  set LDAPQueryDN(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrLDAPQueryDN,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrLDAPQueryDN,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get LDAPQueryDN {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLDAPQueryDN,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLDAPQueryDN,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
