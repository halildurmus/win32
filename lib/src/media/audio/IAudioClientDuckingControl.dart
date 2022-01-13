// IAudioClientDuckingControl.dart

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
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioClientDuckingControl = '{C789D381-A28C-4168-B28F-D3A837924DC3}';

/// {@category Interface}
/// {@category com}
class IAudioClientDuckingControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClientDuckingControl(Pointer<COMObject> ptr) : super(ptr);

  int SetDuckingOptionsForCurrentStream(
    int options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
          )>()(
        ptr.ref.lpVtbl,
        options,
      );
}
