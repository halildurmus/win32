// IDirectMusicThru.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/directmusic/IDirectMusicPort.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectMusicThru = '{CED153E7-3606-11D2-B9F9-0000F875AC12}';

/// {@category Interface}
/// {@category com}
class IDirectMusicThru extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectMusicThru(Pointer<COMObject> ptr) : super(ptr);

  int ThruChannel(
    int dwSourceChannelGroup,
    int dwSourceChannel,
    int dwDestinationChannelGroup,
    int dwDestinationChannel,
    Pointer<COMObject> pDestinationPort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceChannelGroup,
            Uint32 dwSourceChannel,
            Uint32 dwDestinationChannelGroup,
            Uint32 dwDestinationChannel,
            Pointer<COMObject> pDestinationPort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceChannelGroup,
            int dwSourceChannel,
            int dwDestinationChannelGroup,
            int dwDestinationChannel,
            Pointer<COMObject> pDestinationPort,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceChannelGroup,
        dwSourceChannel,
        dwDestinationChannelGroup,
        dwDestinationChannel,
        pDestinationPort,
      );
}
