// IWMPPlaylistArray.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';

/// @nodoc
const IID_IWMPPlaylistArray = '{679409C0-99F7-11D3-9FB7-00105AA620BB}';

/// {@category Interface}
/// {@category com}
class IWMPPlaylistArray extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IWMPPlaylistArray(Pointer<COMObject> ptr) : super(ptr);

  int get count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int item(
    int lIndex,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        ppItem,
      );
}
