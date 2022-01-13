// IRTCClientPresence.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/IRTCEnumBuddies.dart';
import '../../system/realtimecommunications/IRTCCollection.dart';
import '../../system/realtimecommunications/IRTCBuddy.dart';
import '../../system/realtimecommunications/IRTCProfile.dart';
import '../../system/realtimecommunications/IRTCEnumWatchers.dart';
import '../../system/realtimecommunications/IRTCWatcher.dart';
import '../../system/realtimecommunications/structs.g.dart';

/// @nodoc
const IID_IRTCClientPresence = '{11C3CBCC-0744-42D1-968A-51AA1BB274C6}';

/// {@category Interface}
/// {@category com}
class IRTCClientPresence extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IRTCClientPresence(Pointer<COMObject> ptr) : super(ptr);

  int EnablePresence(
    int fUseStorage,
    VARIANT varStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fUseStorage,
            VARIANT varStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fUseStorage,
            VARIANT varStorage,
          )>()(
        ptr.ref.lpVtbl,
        fUseStorage,
        varStorage,
      );

  int Export(
    VARIANT varStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varStorage,
          )>()(
        ptr.ref.lpVtbl,
        varStorage,
      );

  int Import(
    VARIANT varStorage,
    int fReplaceAll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varStorage,
            Int16 fReplaceAll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varStorage,
            int fReplaceAll,
          )>()(
        ptr.ref.lpVtbl,
        varStorage,
        fReplaceAll,
      );

  int EnumerateBuddies(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  Pointer<COMObject> get Buddies {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int get_Buddy(
    Pointer<Utf16> bstrPresentityURI,
    Pointer<Pointer<COMObject>> ppBuddy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Pointer<COMObject>> ppBuddy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Pointer<COMObject>> ppBuddy,
          )>()(
        ptr.ref.lpVtbl,
        bstrPresentityURI,
        ppBuddy,
      );

  int AddBuddy(
    Pointer<Utf16> bstrPresentityURI,
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrData,
    int fPersistent,
    Pointer<COMObject> pProfile,
    int lFlags,
    Pointer<Pointer<COMObject>> ppBuddy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrData,
            Int16 fPersistent,
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
            Pointer<COMObject> pProfile,
            int lFlags,
            Pointer<Pointer<COMObject>> ppBuddy,
          )>()(
        ptr.ref.lpVtbl,
        bstrPresentityURI,
        bstrUserName,
        bstrData,
        fPersistent,
        pProfile,
        lFlags,
        ppBuddy,
      );

  int RemoveBuddy(
    Pointer<COMObject> pBuddy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuddy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuddy,
          )>()(
        ptr.ref.lpVtbl,
        pBuddy,
      );

  int EnumerateWatchers(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  Pointer<COMObject> get Watchers {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int get_Watcher(
    Pointer<Utf16> bstrPresentityURI,
    Pointer<Pointer<COMObject>> ppWatcher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>()(
        ptr.ref.lpVtbl,
        bstrPresentityURI,
        ppWatcher,
      );

  int AddWatcher(
    Pointer<Utf16> bstrPresentityURI,
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrData,
    int fBlocked,
    int fPersistent,
    Pointer<Pointer<COMObject>> ppWatcher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrData,
            Int16 fBlocked,
            Int16 fPersistent,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPresentityURI,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrData,
            int fBlocked,
            int fPersistent,
            Pointer<Pointer<COMObject>> ppWatcher,
          )>()(
        ptr.ref.lpVtbl,
        bstrPresentityURI,
        bstrUserName,
        bstrData,
        fBlocked,
        fPersistent,
        ppWatcher,
      );

  int RemoveWatcher(
    Pointer<COMObject> pWatcher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pWatcher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pWatcher,
          )>()(
        ptr.ref.lpVtbl,
        pWatcher,
      );

  int SetLocalPresenceInfo(
    int enStatus,
    Pointer<Utf16> bstrNotes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enStatus,
            Pointer<Utf16> bstrNotes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enStatus,
            Pointer<Utf16> bstrNotes,
          )>()(
        ptr.ref.lpVtbl,
        enStatus,
        bstrNotes,
      );

  int get OfferWatcherMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set OfferWatcherMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 enMode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int enMode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get PrivacyMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PrivacyMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 enMode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int enMode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
