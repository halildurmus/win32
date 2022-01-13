// IWTSVirtualChannelCallback.dart

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

/// @nodoc
const IID_IWTSVirtualChannelCallback = '{A1230204-D6A7-11D8-B9FD-000BDBD1F198}';

/// {@category Interface}
/// {@category com}
class IWTSVirtualChannelCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWTSVirtualChannelCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnDataReceived(
    int cbSize,
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSize,
            Pointer<Uint8> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
            Pointer<Uint8> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
        pBuffer,
      );

  int OnClose() => ptr.ref.lpVtbl.value
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
}
