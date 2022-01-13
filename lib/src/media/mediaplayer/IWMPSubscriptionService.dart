// IWMPSubscriptionService.dart

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
import '../../media/mediaplayer/IWMPMedia.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';

/// @nodoc
const IID_IWMPSubscriptionService = '{376055F8-2A59-4A73-9501-DCA5273A7A10}';

/// {@category Interface}
/// {@category com}
class IWMPSubscriptionService extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMPSubscriptionService(Pointer<COMObject> ptr) : super(ptr);

  int allowPlay(
    int hwnd,
    Pointer<COMObject> pMedia,
    Pointer<Int32> pfAllowPlay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> pMedia,
            Pointer<Int32> pfAllowPlay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> pMedia,
            Pointer<Int32> pfAllowPlay,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pMedia,
        pfAllowPlay,
      );

  int allowCDBurn(
    int hwnd,
    Pointer<COMObject> pPlaylist,
    Pointer<Int32> pfAllowBurn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> pPlaylist,
            Pointer<Int32> pfAllowBurn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> pPlaylist,
            Pointer<Int32> pfAllowBurn,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pPlaylist,
        pfAllowBurn,
      );

  int allowPDATransfer(
    int hwnd,
    Pointer<COMObject> pPlaylist,
    Pointer<Int32> pfAllowTransfer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> pPlaylist,
            Pointer<Int32> pfAllowTransfer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> pPlaylist,
            Pointer<Int32> pfAllowTransfer,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pPlaylist,
        pfAllowTransfer,
      );

  int startBackgroundProcessing(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );
}
