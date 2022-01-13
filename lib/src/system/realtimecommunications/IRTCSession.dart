// IRTCSession.dart

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
import '../../system/realtimecommunications/IRTCClient.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/structs.g.dart';
import '../../system/realtimecommunications/IRTCProfile.dart';
import '../../system/realtimecommunications/IRTCCollection.dart';
import '../../system/realtimecommunications/IRTCParticipant.dart';
import '../../system/realtimecommunications/IRTCEnumParticipants.dart';

/// @nodoc
const IID_IRTCSession = '{387C8086-99BE-42FB-9973-7C0FC0CA9FA8}';

/// {@category Interface}
/// {@category com}
class IRTCSession extends IUnknown {
  // vtable begins at 3, is 20 entries long.
  IRTCSession(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Client {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClient,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get State {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Type {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Profile {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Participants {
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

  int Answer() => ptr.ref.lpVtbl.value
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

  int Terminate(
    int enReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enReason,
          )>()(
        ptr.ref.lpVtbl,
        enReason,
      );

  int Redirect(
    int enType,
    Pointer<Utf16> bstrLocalPhoneURI,
    Pointer<COMObject> pProfile,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enType,
            Pointer<Utf16> bstrLocalPhoneURI,
            Pointer<COMObject> pProfile,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enType,
            Pointer<Utf16> bstrLocalPhoneURI,
            Pointer<COMObject> pProfile,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        enType,
        bstrLocalPhoneURI,
        pProfile,
        lFlags,
      );

  int AddParticipant(
    Pointer<Utf16> bstrAddress,
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> ppParticipant,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAddress,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppParticipant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAddress,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppParticipant,
          )>()(
        ptr.ref.lpVtbl,
        bstrAddress,
        bstrName,
        ppParticipant,
      );

  int RemoveParticipant(
    Pointer<COMObject> pParticipant,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pParticipant,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pParticipant,
          )>()(
        ptr.ref.lpVtbl,
        pParticipant,
      );

  int EnumerateParticipants(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int get CanAddParticipants {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfCanAdd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfCanAdd,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get RedirectedUserURI {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserURI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserURI,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get RedirectedUserName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUserName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int NextRedirectedUser() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int SendMessage(
    Pointer<Utf16> bstrMessageHeader,
    Pointer<Utf16> bstrMessage,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMessageHeader,
            Pointer<Utf16> bstrMessage,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMessageHeader,
            Pointer<Utf16> bstrMessage,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        bstrMessageHeader,
        bstrMessage,
        lCookie,
      );

  int SendMessageStatus(
    int enUserStatus,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enUserStatus,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enUserStatus,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        enUserStatus,
        lCookie,
      );

  int AddStream(
    int lMediaType,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
        lCookie,
      );

  int RemoveStream(
    int lMediaType,
    int lCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
            IntPtr lCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
            int lCookie,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
        lCookie,
      );

  int put_EncryptionKey(
    int lMediaType,
    Pointer<Utf16> EncryptionKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
            Pointer<Utf16> EncryptionKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
            Pointer<Utf16> EncryptionKey,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
        EncryptionKey,
      );
}
