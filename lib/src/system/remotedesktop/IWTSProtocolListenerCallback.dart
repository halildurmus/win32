// IWTSProtocolListenerCallback.dart

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
import '../../system/remotedesktop/IWTSProtocolConnection.dart';
import '../../system/remotedesktop/IWTSProtocolConnectionCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSProtocolListenerCallback =
    '{23083765-1A2D-4DE2-97DE-4A35F260F0B3}';

/// {@category Interface}
/// {@category com}
class IWTSProtocolListenerCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWTSProtocolListenerCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnConnected(
    Pointer<COMObject> pConnection,
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
            Pointer<Pointer<COMObject>> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnection,
            Pointer<Pointer<COMObject>> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pConnection,
        pCallback,
      );
}
