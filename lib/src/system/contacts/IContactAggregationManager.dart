// IContactAggregationManager.dart

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
import '../../system/contacts/structs.g.dart';
import '../../system/contacts/IContactAggregationGroup.dart';
import '../../system/contacts/IContactAggregationContact.dart';
import '../../system/contacts/IContactAggregationServerPerson.dart';
import '../../system/contacts/IContactAggregationLink.dart';
import '../../system/contacts/IContactAggregationAggregate.dart';
import '../../system/contacts/IContactAggregationContactCollection.dart';
import '../../system/contacts/IContactAggregationAggregateCollection.dart';
import '../../system/contacts/IContactAggregationGroupCollection.dart';
import '../../system/contacts/IContactAggregationServerPersonCollection.dart';
import '../../system/contacts/IContactAggregationLinkCollection.dart';

/// @nodoc
const IID_IContactAggregationManager = '{1D865989-4B1F-4B60-8F34-C2AD468B2B50}';

/// {@category Interface}
/// {@category com}
class IContactAggregationManager extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IContactAggregationManager(Pointer<COMObject> ptr) : super(ptr);

  int GetVersionInfo(
    Pointer<Int32> plMajorVersion,
    Pointer<Int32> plMinorVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMajorVersion,
            Pointer<Int32> plMinorVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMajorVersion,
            Pointer<Int32> plMinorVersion,
          )>()(
        ptr.ref.lpVtbl,
        plMajorVersion,
        plMinorVersion,
      );

  int CreateOrOpenGroup(
    Pointer<Utf16> pGroupName,
    int options,
    Pointer<Int32> pCreatedGroup,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pGroupName,
            Int32 options,
            Pointer<Int32> pCreatedGroup,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pGroupName,
            int options,
            Pointer<Int32> pCreatedGroup,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        pGroupName,
        options,
        pCreatedGroup,
        ppGroup,
      );

  int CreateExternalContact(
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        ppItem,
      );

  int CreateServerPerson(
    Pointer<Pointer<COMObject>> ppServerPerson,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPerson,
          )>()(
        ptr.ref.lpVtbl,
        ppServerPerson,
      );

  int CreateServerContactLink(
    Pointer<Pointer<COMObject>> ppServerContactLink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerContactLink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerContactLink,
          )>()(
        ptr.ref.lpVtbl,
        ppServerContactLink,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int OpenAggregateContact(
    Pointer<Utf16> pItemId,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pItemId,
        ppItem,
      );

  int OpenContact(
    Pointer<Utf16> pItemId,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pItemId,
        ppItem,
      );

  int OpenServerContactLink(
    Pointer<Utf16> pItemId,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pItemId,
        ppItem,
      );

  int OpenServerPerson(
    Pointer<Utf16> pItemId,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pItemId,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pItemId,
        ppItem,
      );

  int get_Contacts(
    int options,
    Pointer<Pointer<COMObject>> ppItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> ppItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> ppItems,
          )>()(
        ptr.ref.lpVtbl,
        options,
        ppItems,
      );

  int get_AggregateContacts(
    int options,
    Pointer<Pointer<COMObject>> ppAggregates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> ppAggregates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> ppAggregates,
          )>()(
        ptr.ref.lpVtbl,
        options,
        ppAggregates,
      );

  int get_Groups(
    int options,
    Pointer<Pointer<COMObject>> ppGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> ppGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> ppGroups,
          )>()(
        ptr.ref.lpVtbl,
        options,
        ppGroups,
      );

  Pointer<COMObject> get ServerPersons {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPersonCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppServerPersonCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_ServerContactLinks(
    Pointer<Utf16> pPersonItemId,
    Pointer<Pointer<COMObject>> ppServerContactLinkCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pPersonItemId,
            Pointer<Pointer<COMObject>> ppServerContactLinkCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pPersonItemId,
            Pointer<Pointer<COMObject>> ppServerContactLinkCollection,
          )>()(
        ptr.ref.lpVtbl,
        pPersonItemId,
        ppServerContactLinkCollection,
      );
}
