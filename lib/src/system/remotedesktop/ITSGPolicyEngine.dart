// ITSGPolicyEngine.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../system/remotedesktop/ITSGAuthorizeConnectionSink.dart';
import '../../system/remotedesktop/ITSGAuthorizeResourceSink.dart';

/// @nodoc
const IID_ITSGPolicyEngine = '{8BC24F08-6223-42F4-A5B4-8E37CD135BBD}';

/// {@category Interface}
/// {@category com}
class ITSGPolicyEngine extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITSGPolicyEngine(Pointer<COMObject> ptr) : super(ptr);

  int AuthorizeConnection(
    GUID mainSessionId,
    Pointer<Utf16> username,
    int authType,
    Pointer<Utf16> clientMachineIP,
    Pointer<Utf16> clientMachineName,
    Pointer<Uint8> sohData,
    int numSOHBytes,
    Pointer<Uint8> cookieData,
    int numCookieBytes,
    int userToken,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID mainSessionId,
            Pointer<Utf16> username,
            Int32 authType,
            Pointer<Utf16> clientMachineIP,
            Pointer<Utf16> clientMachineName,
            Pointer<Uint8> sohData,
            Uint32 numSOHBytes,
            Pointer<Uint8> cookieData,
            Uint32 numCookieBytes,
            IntPtr userToken,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID mainSessionId,
            Pointer<Utf16> username,
            int authType,
            Pointer<Utf16> clientMachineIP,
            Pointer<Utf16> clientMachineName,
            Pointer<Uint8> sohData,
            int numSOHBytes,
            Pointer<Uint8> cookieData,
            int numCookieBytes,
            int userToken,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        mainSessionId,
        username,
        authType,
        clientMachineIP,
        clientMachineName,
        sohData,
        numSOHBytes,
        cookieData,
        numCookieBytes,
        userToken,
        pSink,
      );

  int AuthorizeResource(
    GUID mainSessionId,
    int subSessionId,
    Pointer<Utf16> username,
    Pointer<Pointer<Utf16>> resourceNames,
    int numResources,
    Pointer<Pointer<Utf16>> alternateResourceNames,
    int numAlternateResourceName,
    int portNumber,
    Pointer<Utf16> operation,
    Pointer<Uint8> cookie,
    int numBytesInCookie,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID mainSessionId,
            Int32 subSessionId,
            Pointer<Utf16> username,
            Pointer<Pointer<Utf16>> resourceNames,
            Uint32 numResources,
            Pointer<Pointer<Utf16>> alternateResourceNames,
            Uint32 numAlternateResourceName,
            Uint32 portNumber,
            Pointer<Utf16> operation,
            Pointer<Uint8> cookie,
            Uint32 numBytesInCookie,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID mainSessionId,
            int subSessionId,
            Pointer<Utf16> username,
            Pointer<Pointer<Utf16>> resourceNames,
            int numResources,
            Pointer<Pointer<Utf16>> alternateResourceNames,
            int numAlternateResourceName,
            int portNumber,
            Pointer<Utf16> operation,
            Pointer<Uint8> cookie,
            int numBytesInCookie,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        mainSessionId,
        subSessionId,
        username,
        resourceNames,
        numResources,
        alternateResourceNames,
        numAlternateResourceName,
        portNumber,
        operation,
        cookie,
        numBytesInCookie,
        pSink,
      );

  int Refresh() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int IsQuarantineEnabled(
    Pointer<Int32> quarantineEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> quarantineEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> quarantineEnabled,
          )>()(
        ptr.ref.lpVtbl,
        quarantineEnabled,
      );
}
