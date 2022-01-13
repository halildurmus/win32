// IWMPCore3.dart

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

import '../../media/mediaplayer/IWMPCore2.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';
import '../../media/mediaplayer/IWMPMedia.dart';

/// @nodoc
const IID_IWMPCore3 = '{7587C667-628F-499F-88E7-6A6F4E888464}';

/// {@category Interface}
/// {@category com}
class IWMPCore3 extends IWMPCore2 {
  // vtable begins at 29, is 2 entries long.
  IWMPCore3(Pointer<COMObject> ptr) : super(ptr);

  int newPlaylist(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrURL,
    Pointer<Pointer<COMObject>> ppPlaylist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrURL,
            Pointer<Pointer<COMObject>> ppPlaylist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrURL,
            Pointer<Pointer<COMObject>> ppPlaylist,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrURL,
        ppPlaylist,
      );

  int newMedia(
    Pointer<Utf16> bstrURL,
    Pointer<Pointer<COMObject>> ppMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrURL,
            Pointer<Pointer<COMObject>> ppMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrURL,
            Pointer<Pointer<COMObject>> ppMedia,
          )>()(
        ptr.ref.lpVtbl,
        bstrURL,
        ppMedia,
      );
}
