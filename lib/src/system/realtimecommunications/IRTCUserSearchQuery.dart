// IRTCUserSearchQuery.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/structs.g.dart';

/// @nodoc
const IID_IRTCUserSearchQuery = '{288300F5-D23A-4365-9A73-9985C98C2881}';

/// {@category Interface}
/// {@category com}
class IRTCUserSearchQuery extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IRTCUserSearchQuery(Pointer<COMObject> ptr) : super(ptr);

  int put_SearchTerm(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrValue,
      );

  int get_SearchTerm(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pbstrValue,
      );

  Pointer<Utf16> get SearchTerms {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNames,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int put_SearchPreference(
    int enPreference,
    int lValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enPreference,
            Int32 lValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enPreference,
            int lValue,
          )>()(
        ptr.ref.lpVtbl,
        enPreference,
        lValue,
      );

  int get_SearchPreference(
    int enPreference,
    Pointer<Int32> plValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enPreference,
            Pointer<Int32> plValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enPreference,
            Pointer<Int32> plValue,
          )>()(
        ptr.ref.lpVtbl,
        enPreference,
        plValue,
      );

  set SearchDomain(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrDomain,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrDomain,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get SearchDomain {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDomain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDomain,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
