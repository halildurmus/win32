// IFaxAccountSet.dart

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
import '../../devices/fax/IFaxAccounts.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxAccount.dart';

/// @nodoc
const IID_IFaxAccountSet = '{7428FBAE-841E-47B8-86F4-2288946DCA1B}';

/// {@category Interface}
/// {@category com}
class IFaxAccountSet extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IFaxAccountSet(Pointer<COMObject> ptr) : super(ptr);

  int GetAccounts(
    Pointer<Pointer<COMObject>> ppFaxAccounts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFaxAccounts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFaxAccounts,
          )>()(
        ptr.ref.lpVtbl,
        ppFaxAccounts,
      );

  int GetAccount(
    Pointer<Utf16> bstrAccountName,
    Pointer<Pointer<COMObject>> pFaxAccount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAccountName,
            Pointer<Pointer<COMObject>> pFaxAccount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAccountName,
            Pointer<Pointer<COMObject>> pFaxAccount,
          )>()(
        ptr.ref.lpVtbl,
        bstrAccountName,
        pFaxAccount,
      );

  int AddAccount(
    Pointer<Utf16> bstrAccountName,
    Pointer<Pointer<COMObject>> pFaxAccount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAccountName,
            Pointer<Pointer<COMObject>> pFaxAccount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAccountName,
            Pointer<Pointer<COMObject>> pFaxAccount,
          )>()(
        ptr.ref.lpVtbl,
        bstrAccountName,
        pFaxAccount,
      );

  int RemoveAccount(
    Pointer<Utf16> bstrAccountName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAccountName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAccountName,
          )>()(
        ptr.ref.lpVtbl,
        bstrAccountName,
      );
}

/// @nodoc
const CLSID_FaxAccountSet = '{FBC23C4B-79E0-4291-BC56-C12E253BBF3A}';

/// {@category com}
class FaxAccountSet extends IFaxAccountSet {
  FaxAccountSet(Pointer<COMObject> ptr) : super(ptr);

  factory FaxAccountSet.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxAccountSet);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxAccountSet);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxAccountSet(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
