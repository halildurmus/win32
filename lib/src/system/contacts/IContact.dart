// IContact.dart

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

/// @nodoc
const IID_IContact = '{F941B671-BDA7-4F77-884A-F46462F226A7}';

/// {@category Interface}
/// {@category com}
class IContact extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IContact(Pointer<COMObject> ptr) : super(ptr);

  int GetContactID(
    Pointer<Utf16> pszContactID,
    int cchContactID,
    Pointer<Uint32> pdwcchContactIDRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszContactID,
            Uint32 cchContactID,
            Pointer<Uint32> pdwcchContactIDRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszContactID,
            int cchContactID,
            Pointer<Uint32> pdwcchContactIDRequired,
          )>()(
        ptr.ref.lpVtbl,
        pszContactID,
        cchContactID,
        pdwcchContactIDRequired,
      );

  int GetPath(
    Pointer<Utf16> pszPath,
    int cchPath,
    Pointer<Uint32> pdwcchPathRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Uint32 cchPath,
            Pointer<Uint32> pdwcchPathRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int cchPath,
            Pointer<Uint32> pdwcchPathRequired,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        cchPath,
        pdwcchPathRequired,
      );

  int CommitChanges(
    int dwCommitFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCommitFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCommitFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwCommitFlags,
      );
}

/// @nodoc
const CLSID_Contact = '{61B68808-8EEE-4FD1-ACB8-3D804C8DB056}';

/// {@category com}
class Contact extends IContact {
  Contact(Pointer<COMObject> ptr) : super(ptr);

  factory Contact.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Contact);
    final iid = calloc<GUID>()..ref.setGUID(IID_IContact);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Contact(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
