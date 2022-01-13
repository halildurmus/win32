// IWMGetSecureChannel.dart

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
import '../../media/windowsmediaformat/IWMSecureChannel.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMGetSecureChannel = '{94BC0598-C3D2-11D3-BEDF-00C04F612986}';

/// {@category Interface}
/// {@category com}
class IWMGetSecureChannel extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMGetSecureChannel(Pointer<COMObject> ptr) : super(ptr);

  int GetPeerSecureChannelInterface(
    Pointer<Pointer<COMObject>> ppPeer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPeer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPeer,
          )>()(
        ptr.ref.lpVtbl,
        ppPeer,
      );
}
