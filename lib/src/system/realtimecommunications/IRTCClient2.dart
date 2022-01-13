// IRTCClient2.dart

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

import '../../system/realtimecommunications/IRTCClient.dart';
import '../../system/realtimecommunications/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/realtimecommunications/IRTCProfile.dart';
import '../../system/realtimecommunications/IRTCSession2.dart';
import '../../system/realtimecommunications/IRTCSessionDescriptionManager.dart';

/// @nodoc
const IID_IRTCClient2 = '{0C91D71D-1064-42DA-BFA5-572BEB8EEA84}';

/// {@category Interface}
/// {@category com}
class IRTCClient2 extends IRTCClient {
  // vtable begins at 45, is 13 entries long.
  IRTCClient2(Pointer<COMObject> ptr) : super(ptr);

  int put_AnswerMode(
    int enType,
    int enMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enType,
            Int32 enMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enType,
            int enMode,
          )>()(
        ptr.ref.lpVtbl,
        enType,
        enMode,
      );

  int get_AnswerMode(
    int enType,
    Pointer<Int32> penMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enType,
            Pointer<Int32> penMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enType,
            Pointer<Int32> penMode,
          )>()(
        ptr.ref.lpVtbl,
        enType,
        penMode,
      );

  int InvokeTuningWizardEx(
    int hwndParent,
    int fAllowAudio,
    int fAllowVideo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Int16 fAllowAudio,
            Int16 fAllowVideo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int fAllowAudio,
            int fAllowVideo,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        fAllowAudio,
        fAllowVideo,
      );

  int get Version {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plVersion,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ClientName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(49)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrClientName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrClientName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set ClientCurVer(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(50)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrClientCurVer,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrClientCurVer,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int InitializeEx(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

  int CreateSessionWithDescription(
    Pointer<Utf16> bstrContentType,
    Pointer<Utf16> bstrSessionDescription,
    Pointer<COMObject> pProfile,
    int lFlags,
    Pointer<Pointer<COMObject>> ppSession2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
            Pointer<COMObject> pProfile,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppSession2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrContentType,
            Pointer<Utf16> bstrSessionDescription,
            Pointer<COMObject> pProfile,
            int lFlags,
            Pointer<Pointer<COMObject>> ppSession2,
          )>()(
        ptr.ref.lpVtbl,
        bstrContentType,
        bstrSessionDescription,
        pProfile,
        lFlags,
        ppSession2,
      );

  int SetSessionDescriptionManager(
    Pointer<COMObject> pSessionDescriptionManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSessionDescriptionManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSessionDescriptionManager,
          )>()(
        ptr.ref.lpVtbl,
        pSessionDescriptionManager,
      );

  int put_PreferredSecurityLevel(
    int enSecurityType,
    int enSecurityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSecurityType,
            Int32 enSecurityLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSecurityType,
            int enSecurityLevel,
          )>()(
        ptr.ref.lpVtbl,
        enSecurityType,
        enSecurityLevel,
      );

  int get_PreferredSecurityLevel(
    int enSecurityType,
    Pointer<Int32> penSecurityLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enSecurityType,
            Pointer<Int32> penSecurityLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enSecurityType,
            Pointer<Int32> penSecurityLevel,
          )>()(
        ptr.ref.lpVtbl,
        enSecurityType,
        penSecurityLevel,
      );

  int put_AllowedPorts(
    int lTransport,
    int enListenMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTransport,
            Int32 enListenMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTransport,
            int enListenMode,
          )>()(
        ptr.ref.lpVtbl,
        lTransport,
        enListenMode,
      );

  int get_AllowedPorts(
    int lTransport,
    Pointer<Int32> penListenMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lTransport,
            Pointer<Int32> penListenMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lTransport,
            Pointer<Int32> penListenMode,
          )>()(
        ptr.ref.lpVtbl,
        lTransport,
        penListenMode,
      );
}
