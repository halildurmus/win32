// ITrackShellMenu.dart

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

import '../../ui/shell/IShellMenu.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITrackShellMenu = '{8278F932-2A3E-11D2-838F-00C04FD918D0}';

/// {@category Interface}
/// {@category com}
class ITrackShellMenu extends IShellMenu {
  // vtable begins at 12, is 2 entries long.
  ITrackShellMenu(Pointer<COMObject> ptr) : super(ptr);

  int SetObscured(
    int hwndTB,
    Pointer<COMObject> punkBand,
    int dwSMSetFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTB,
            Pointer<COMObject> punkBand,
            Uint32 dwSMSetFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTB,
            Pointer<COMObject> punkBand,
            int dwSMSetFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwndTB,
        punkBand,
        dwSMSetFlags,
      );

  int Popup(
    int hwnd,
    Pointer<POINTL> ppt,
    Pointer<RECTL> prcExclude,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<POINTL> ppt,
            Pointer<RECTL> prcExclude,
            Int32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<POINTL> ppt,
            Pointer<RECTL> prcExclude,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        ppt,
        prcExclude,
        dwFlags,
      );
}

/// @nodoc
const CLSID_TrackShellMenu = '{8278F931-2A3E-11D2-838F-00C04FD918D0}';

/// {@category com}
class TrackShellMenu extends ITrackShellMenu {
  TrackShellMenu(Pointer<COMObject> ptr) : super(ptr);

  factory TrackShellMenu.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_TrackShellMenu);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITrackShellMenu);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TrackShellMenu(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
