// IWRdsProtocolListenerCallback.dart

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
import '../../system/remotedesktop/IWRdsProtocolConnection.dart';
import '../../system/remotedesktop/structs.g.dart';
import '../../system/remotedesktop/IWRdsProtocolConnectionCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWRdsProtocolListenerCallback =
    '{3AB27E5B-4449-4DC1-B74A-91621D4FE984}';

/// {@category Interface}
/// {@category com}
class IWRdsProtocolListenerCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWRdsProtocolListenerCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnConnected(
    Pointer<COMObject> pConnection,
    Pointer<WRDS_CONNECTION_SETTINGS> pWRdsConnectionSettings,
    Pointer<Pointer<COMObject>> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<WRDS_CONNECTION_SETTINGS> pWRdsConnectionSettings,
            Pointer<Pointer<COMObject>> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<WRDS_CONNECTION_SETTINGS> pWRdsConnectionSettings,
            Pointer<Pointer<COMObject>> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pConnection,
        pWRdsConnectionSettings,
        pCallback,
      );
}
