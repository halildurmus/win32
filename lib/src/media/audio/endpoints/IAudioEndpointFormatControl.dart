// IAudioEndpointFormatControl.dart

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

/// @nodoc
const IID_IAudioEndpointFormatControl =
    '{784CFD40-9F89-456E-A1A6-873B006A664E}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointFormatControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioEndpointFormatControl(Pointer<COMObject> ptr) : super(ptr);

  int ResetToDefault(
    int ResetFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ResetFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResetFlags,
          )>()(
        ptr.ref.lpVtbl,
        ResetFlags,
      );
}
