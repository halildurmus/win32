// IWTSPlugin.dart

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
import '../../system/remotedesktop/IWTSVirtualChannelManager.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSPlugin = '{A1230201-1439-4E62-A414-190D0AC3D40E}';

/// {@category Interface}
/// {@category com}
class IWTSPlugin extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWTSPlugin(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pChannelMgr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannelMgr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannelMgr,
          )>()(
        ptr.ref.lpVtbl,
        pChannelMgr,
      );

  int Connected() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Disconnected(
    int dwDisconnectCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDisconnectCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDisconnectCode,
          )>()(
        ptr.ref.lpVtbl,
        dwDisconnectCode,
      );

  int Terminated() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
