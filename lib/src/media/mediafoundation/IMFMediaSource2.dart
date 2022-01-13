// IMFMediaSource2.dart

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

import '../../media/mediafoundation/IMFMediaSourceEx.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaSource2 = '{FBB03414-D13B-4786-8319-5AC51FC0A136}';

/// {@category Interface}
/// {@category com}
class IMFMediaSource2 extends IMFMediaSourceEx {
  // vtable begins at 16, is 1 entries long.
  IMFMediaSource2(Pointer<COMObject> ptr) : super(ptr);

  int SetMediaType(
    int dwStreamID,
    Pointer<COMObject> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<COMObject> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<COMObject> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pMediaType,
      );
}
