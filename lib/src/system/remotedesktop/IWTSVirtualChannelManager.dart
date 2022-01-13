// IWTSVirtualChannelManager.dart

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
import '../../system/remotedesktop/IWTSListenerCallback.dart';
import '../../system/remotedesktop/IWTSListener.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSVirtualChannelManager = '{A1230205-D6A7-11D8-B9FD-000BDBD1F198}';

/// {@category Interface}
/// {@category com}
class IWTSVirtualChannelManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWTSVirtualChannelManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateListener(
    Pointer<Uint8> pszChannelName,
    int uFlags,
    Pointer<COMObject> pListenerCallback,
    Pointer<Pointer<COMObject>> ppListener,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pszChannelName,
            Uint32 uFlags,
            Pointer<COMObject> pListenerCallback,
            Pointer<Pointer<COMObject>> ppListener,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pszChannelName,
            int uFlags,
            Pointer<COMObject> pListenerCallback,
            Pointer<Pointer<COMObject>> ppListener,
          )>()(
        ptr.ref.lpVtbl,
        pszChannelName,
        uFlags,
        pListenerCallback,
        ppListener,
      );
}
