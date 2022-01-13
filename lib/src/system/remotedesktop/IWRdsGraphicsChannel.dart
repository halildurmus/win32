// IWRdsGraphicsChannel.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/IWRdsGraphicsChannelEvents.dart';

/// @nodoc
const IID_IWRdsGraphicsChannel = '{684B7A0B-EDFF-43AD-D5A2-4A8D5388F401}';

/// {@category Interface}
/// {@category com}
class IWRdsGraphicsChannel extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWRdsGraphicsChannel(Pointer<COMObject> ptr) : super(ptr);

  int Write(
    int cbSize,
    Pointer<Uint8> pBuffer,
    Pointer<COMObject> pContext,
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
            Pointer<COMObject> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
            Pointer<Uint8> pBuffer,
            Pointer<COMObject> pContext,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
        pBuffer,
        pContext,
      );

  int Close() => ptr.ref.lpVtbl.value
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

  int Open(
    Pointer<COMObject> pChannelEvents,
    Pointer<COMObject> pOpenContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChannelEvents,
            Pointer<COMObject> pOpenContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChannelEvents,
            Pointer<COMObject> pOpenContext,
          )>()(
        ptr.ref.lpVtbl,
        pChannelEvents,
        pOpenContext,
      );
}
