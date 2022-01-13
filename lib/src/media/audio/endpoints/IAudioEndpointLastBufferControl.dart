// IAudioEndpointLastBufferControl.dart

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
import '../../../foundation/structs.g.dart';
import '../../../media/audio/apo/structs.g.dart';

/// @nodoc
const IID_IAudioEndpointLastBufferControl =
    '{F8520DD3-8F9D-4437-9861-62F584C33DD6}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointLastBufferControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioEndpointLastBufferControl(Pointer<COMObject> ptr) : super(ptr);

  int IsLastBufferControlSupported() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  void ReleaseOutputDataPointerForLastBuffer(
    Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
          )>()(
        ptr.ref.lpVtbl,
        pConnectionProperty,
      );
}
