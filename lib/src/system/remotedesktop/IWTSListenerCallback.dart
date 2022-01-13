// IWTSListenerCallback.dart

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
import '../../system/remotedesktop/IWTSVirtualChannel.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/IWTSVirtualChannelCallback.dart';

/// @nodoc
const IID_IWTSListenerCallback = '{A1230203-D6A7-11D8-B9FD-000BDBD1F198}';

/// {@category Interface}
/// {@category com}
class IWTSListenerCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWTSListenerCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnNewChannelConnection(
    Pointer<COMObject> pChannel,
    Pointer<Utf16> data,
    Pointer<Int32> pbAccept,
    Pointer<Pointer<COMObject>> ppCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Pointer<Utf16> data,
            Pointer<Int32> pbAccept,
            Pointer<Pointer<COMObject>> ppCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannel,
            Pointer<Utf16> data,
            Pointer<Int32> pbAccept,
            Pointer<Pointer<COMObject>> ppCallback,
          )>()(
        ptr.ref.lpVtbl,
        pChannel,
        data,
        pbAccept,
        ppCallback,
      );
}
