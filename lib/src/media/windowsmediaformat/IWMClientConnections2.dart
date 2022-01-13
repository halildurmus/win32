// IWMClientConnections2.dart

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

import '../../media/windowsmediaformat/IWMClientConnections.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMClientConnections2 = '{4091571E-4701-4593-BB3D-D5F5F0C74246}';

/// {@category Interface}
/// {@category com}
class IWMClientConnections2 extends IWMClientConnections {
  // vtable begins at 5, is 1 entries long.
  IWMClientConnections2(Pointer<COMObject> ptr) : super(ptr);

  int GetClientInfo(
    int dwClientNum,
    Pointer<Utf16> pwszNetworkAddress,
    Pointer<Uint32> pcchNetworkAddress,
    Pointer<Utf16> pwszPort,
    Pointer<Uint32> pcchPort,
    Pointer<Utf16> pwszDNSName,
    Pointer<Uint32> pcchDNSName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwClientNum,
            Pointer<Utf16> pwszNetworkAddress,
            Pointer<Uint32> pcchNetworkAddress,
            Pointer<Utf16> pwszPort,
            Pointer<Uint32> pcchPort,
            Pointer<Utf16> pwszDNSName,
            Pointer<Uint32> pcchDNSName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwClientNum,
            Pointer<Utf16> pwszNetworkAddress,
            Pointer<Uint32> pcchNetworkAddress,
            Pointer<Utf16> pwszPort,
            Pointer<Uint32> pcchPort,
            Pointer<Utf16> pwszDNSName,
            Pointer<Uint32> pcchDNSName,
          )>()(
        ptr.ref.lpVtbl,
        dwClientNum,
        pwszNetworkAddress,
        pcchNetworkAddress,
        pwszPort,
        pcchPort,
        pwszDNSName,
        pcchDNSName,
      );
}
