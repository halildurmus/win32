// IContactManager.dart

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
import '../../system/contacts/IContact.dart';
import '../../system/contacts/IContactCollection.dart';

/// @nodoc
const IID_IContactManager = '{AD553D98-DEB1-474A-8E17-FC0C2075B738}';

/// {@category Interface}
/// {@category com}
class IContactManager extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IContactManager(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszAppName,
    Pointer<Utf16> pszAppVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppName,
            Pointer<Utf16> pszAppVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppName,
            Pointer<Utf16> pszAppVersion,
          )>()(
        ptr.ref.lpVtbl,
        pszAppName,
        pszAppVersion,
      );

  int Load(
    Pointer<Utf16> pszContactID,
    Pointer<Pointer<COMObject>> ppContact,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszContactID,
            Pointer<Pointer<COMObject>> ppContact,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszContactID,
            Pointer<Pointer<COMObject>> ppContact,
          )>()(
        ptr.ref.lpVtbl,
        pszContactID,
        ppContact,
      );

  int MergeContactIDs(
    Pointer<Utf16> pszNewContactID,
    Pointer<Utf16> pszOldContactID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszNewContactID,
            Pointer<Utf16> pszOldContactID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszNewContactID,
            Pointer<Utf16> pszOldContactID,
          )>()(
        ptr.ref.lpVtbl,
        pszNewContactID,
        pszOldContactID,
      );

  int GetMeContact(
    Pointer<Pointer<COMObject>> ppMeContact,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMeContact,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMeContact,
          )>()(
        ptr.ref.lpVtbl,
        ppMeContact,
      );

  int SetMeContact(
    Pointer<COMObject> pMeContact,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMeContact,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMeContact,
          )>()(
        ptr.ref.lpVtbl,
        pMeContact,
      );

  int GetContactCollection(
    Pointer<Pointer<COMObject>> ppContactCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContactCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContactCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppContactCollection,
      );
}

/// @nodoc
const CLSID_ContactManager = '{7165C8AB-AF88-42BD-86FD-5310B4285A02}';

/// {@category com}
class ContactManager extends IContactManager {
  ContactManager(Pointer<COMObject> ptr) : super(ptr);

  factory ContactManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ContactManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IContactManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ContactManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
