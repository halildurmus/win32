// IWdsTransportServer2.dart

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

import '../../system/deploymentservices/IWdsTransportServer.dart';
import '../../system/deploymentservices/IWdsTransportTftpManager.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWdsTransportServer2 = '{256E999F-6DF4-4538-81B9-857B9AB8FB47}';

/// {@category Interface}
/// {@category com}
class IWdsTransportServer2 extends IWdsTransportServer {
  // vtable begins at 12, is 1 entries long.
  IWdsTransportServer2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get TftpManager {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportTftpManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppWdsTransportTftpManager,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
