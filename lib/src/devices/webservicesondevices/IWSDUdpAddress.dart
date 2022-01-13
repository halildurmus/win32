// IWSDUdpAddress.dart

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

import '../../devices/webservicesondevices/IWSDTransportAddress.dart';
import '../../networking/winsock/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/structs.g.dart';

/// @nodoc
const IID_IWSDUdpAddress = '{74D6124A-A441-4F78-A1EB-97A8D1996893}';

/// {@category Interface}
/// {@category com}
class IWSDUdpAddress extends IWSDTransportAddress {
  // vtable begins at 10, is 10 entries long.
  IWSDUdpAddress(Pointer<COMObject> ptr) : super(ptr);

  int SetSockaddr(
    Pointer<SOCKADDR_STORAGE> pSockAddr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SOCKADDR_STORAGE> pSockAddr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SOCKADDR_STORAGE> pSockAddr,
          )>()(
        ptr.ref.lpVtbl,
        pSockAddr,
      );

  int GetSockaddr(
    Pointer<SOCKADDR_STORAGE> pSockAddr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SOCKADDR_STORAGE> pSockAddr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SOCKADDR_STORAGE> pSockAddr,
          )>()(
        ptr.ref.lpVtbl,
        pSockAddr,
      );

  int SetExclusive(
    int fExclusive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fExclusive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fExclusive,
          )>()(
        ptr.ref.lpVtbl,
        fExclusive,
      );

  int GetExclusive() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int SetMessageType(
    int messageType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 messageType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int messageType,
          )>()(
        ptr.ref.lpVtbl,
        messageType,
      );

  int GetMessageType(
    Pointer<Int32> pMessageType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMessageType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMessageType,
          )>()(
        ptr.ref.lpVtbl,
        pMessageType,
      );

  int SetTTL(
    int dwTTL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTTL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTTL,
          )>()(
        ptr.ref.lpVtbl,
        dwTTL,
      );

  int GetTTL(
    Pointer<Uint32> pdwTTL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwTTL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwTTL,
          )>()(
        ptr.ref.lpVtbl,
        pdwTTL,
      );

  int SetAlias(
    Pointer<GUID> pAlias,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pAlias,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pAlias,
          )>()(
        ptr.ref.lpVtbl,
        pAlias,
      );

  int GetAlias(
    Pointer<GUID> pAlias,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pAlias,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pAlias,
          )>()(
        ptr.ref.lpVtbl,
        pAlias,
      );
}
