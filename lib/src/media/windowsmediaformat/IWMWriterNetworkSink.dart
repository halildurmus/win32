// IWMWriterNetworkSink.dart

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

import '../../media/windowsmediaformat/IWMWriterSink.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMWriterNetworkSink = '{96406BE7-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMWriterNetworkSink extends IWMWriterSink {
  // vtable begins at 8, is 8 entries long.
  IWMWriterNetworkSink(Pointer<COMObject> ptr) : super(ptr);

  int SetMaximumClients(
    int dwMaxClients,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxClients,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxClients,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxClients,
      );

  int GetMaximumClients(
    Pointer<Uint32> pdwMaxClients,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxClients,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxClients,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxClients,
      );

  int SetNetworkProtocol(
    int protocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 protocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int protocol,
          )>()(
        ptr.ref.lpVtbl,
        protocol,
      );

  int GetNetworkProtocol(
    Pointer<Int32> pProtocol,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pProtocol,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pProtocol,
          )>()(
        ptr.ref.lpVtbl,
        pProtocol,
      );

  int GetHostURL(
    Pointer<Utf16> pwszURL,
    Pointer<Uint32> pcchURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<Uint32> pcchURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<Uint32> pcchURL,
          )>()(
        ptr.ref.lpVtbl,
        pwszURL,
        pcchURL,
      );

  int Open(
    Pointer<Uint32> pdwPortNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPortNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPortNum,
          )>()(
        ptr.ref.lpVtbl,
        pdwPortNum,
      );

  int Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(15)
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
}
