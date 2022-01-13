// IRTCClientPresence2.dart

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

import '../../system/realtimecommunications/IRTCClientPresence.dart';
import '../../system/realtimecommunications/IRTCProfile.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/IRTCBuddyGroup.dart';
import '../../system/realtimecommunications/IRTCEnumGroups.dart';
import '../../system/realtimecommunications/IRTCCollection.dart';
import '../../system/realtimecommunications/structs.g.dart';
import '../../system/realtimecommunications/IRTCWatcher2.dart';
import '../../system/realtimecommunications/IRTCBuddy2.dart';

/// @nodoc
const IID_IRTCClientPresence2 = '{AD1809E8-62F7-4783-909A-29C9D2CB1D34}';

/// {@category Interface}
/// {@category com}
class IRTCClientPresence2 extends IRTCClientPresence {
  // vtable begins at 21, is 15 entries long.
  IRTCClientPresence2(Pointer<COMObject> ptr) : super(ptr);

  int EnablePresenceEx(
    Pointer<COMObject> pProfile,
    VARIANT varStorage,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
            VARIANT varStorage,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
            VARIANT varStorage,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
        varStorage,
        lFlags,
      );

  int DisablePresence() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int AddGroup(
    Pointer<Utf16> bstrGroupName,
    Pointer<Utf16> bstrData,
    Pointer<COMObject> pProfile,
    int lFlags,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            Pointer<Utf16> bstrData,
            Pointer<COMObject> pProfile,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            Pointer<Utf16> bstrData,
            Pointer<COMObject> pProfile,
            int lFlags,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        bstrGroupName,
        bstrData,
        pProfile,
        lFlags,
        ppGroup,
      );

  int RemoveGroup(
    Pointer<COMObject> pGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGroup,
          )>()(
        ptr.ref.lpVtbl,
        pGroup,
      );

  int EnumerateGroups(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  Pointer<COMObject> get Groups {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Group(
    Pointer<Utf16> bstrGroupName,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGroupName,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        bstrGroupName,
        ppGroup,
      );

  int AddWatcherEx(
    Pointer<Utf16> bstrPresentityURI,
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrData,
    int enState,
    int fPersistent,
    int enScope,
    Pointer<COMObject> pProfile,
    int lFlags,
    Pointer<Pointer<COMObject>> ppWatcher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrData,
            Int32 enState,
            Int16 fPersistent,
            Int32 enScope,
            Pointer<COMObject> pProfile,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrData,
            int enState,
            int fPersistent,
            int enScope,
            Pointer<COMObject> pProfile,
            int lFlags,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>()(
        ptr.ref.lpVtbl,
        bstrPresentityURI,
        bstrUserName,
        bstrData,
        enState,
        fPersistent,
        enScope,
        pProfile,
        lFlags,
        ppWatcher,
      );

  int get_WatcherEx(
    int enMode,
    Pointer<Utf16> bstrPresentityURI,
    Pointer<Pointer<COMObject>> ppWatcher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enMode,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enMode,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>()(
        ptr.ref.lpVtbl,
        enMode,
        bstrPresentityURI,
        ppWatcher,
      );

  int put_PresenceProperty(
    int enProperty,
    Pointer<Utf16> bstrProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enProperty,
            Pointer<Utf16> bstrProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enProperty,
            Pointer<Utf16> bstrProperty,
          )>()(
        ptr.ref.lpVtbl,
        enProperty,
        bstrProperty,
      );

  int get_PresenceProperty(
    int enProperty,
    Pointer<Pointer<Utf16>> pbstrProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enProperty,
            Pointer<Pointer<Utf16>> pbstrProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enProperty,
            Pointer<Pointer<Utf16>> pbstrProperty,
          )>()(
        ptr.ref.lpVtbl,
        enProperty,
        pbstrProperty,
      );

  int SetPresenceData(
    Pointer<Utf16> bstrNamespace,
    Pointer<Utf16> bstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrNamespace,
            Pointer<Utf16> bstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrNamespace,
            Pointer<Utf16> bstrData,
          )>()(
        ptr.ref.lpVtbl,
        bstrNamespace,
        bstrData,
      );

  int GetPresenceData(
    Pointer<Pointer<Utf16>> pbstrNamespace,
    Pointer<Pointer<Utf16>> pbstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNamespace,
            Pointer<Pointer<Utf16>> pbstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrNamespace,
            Pointer<Pointer<Utf16>> pbstrData,
          )>()(
        ptr.ref.lpVtbl,
        pbstrNamespace,
        pbstrData,
      );

  int GetLocalPresenceInfo(
    Pointer<Int32> penStatus,
    Pointer<Pointer<Utf16>> pbstrNotes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penStatus,
            Pointer<Pointer<Utf16>> pbstrNotes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penStatus,
            Pointer<Pointer<Utf16>> pbstrNotes,
          )>()(
        ptr.ref.lpVtbl,
        penStatus,
        pbstrNotes,
      );

  int AddBuddyEx(
    Pointer<Utf16> bstrPresentityURI,
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrData,
    int fPersistent,
    int enSubscriptionType,
    Pointer<COMObject> pProfile,
    int lFlags,
    Pointer<Pointer<COMObject>> ppBuddy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrData,
            Int16 fPersistent,
            Int32 enSubscriptionType,
            Pointer<COMObject> pProfile,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppBuddy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrData,
            int fPersistent,
            int enSubscriptionType,
            Pointer<COMObject> pProfile,
            int lFlags,
            Pointer<Pointer<COMObject>> ppBuddy,
          )>()(
        ptr.ref.lpVtbl,
        bstrPresentityURI,
        bstrUserName,
        bstrData,
        fPersistent,
        enSubscriptionType,
        pProfile,
        lFlags,
        ppBuddy,
      );
}
