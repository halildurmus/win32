// IWRdsGraphicsChannelManager.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../system/remotedesktop/IWRdsGraphicsChannel.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWRdsGraphicsChannelManager =
    '{0FD57159-E83E-476A-A8B9-4A7976E71E18}';

/// {@category Interface}
/// {@category com}
class IWRdsGraphicsChannelManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWRdsGraphicsChannelManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateChannel(
    Pointer<Uint8> pszChannelName,
    int channelType,
    Pointer<Pointer<COMObject>> ppVirtualChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pszChannelName,
            Int32 channelType,
            Pointer<Pointer<COMObject>> ppVirtualChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pszChannelName,
            int channelType,
            Pointer<Pointer<COMObject>> ppVirtualChannel,
          )>()(
        ptr.ref.lpVtbl,
        pszChannelName,
        channelType,
        ppVirtualChannel,
      );
}
