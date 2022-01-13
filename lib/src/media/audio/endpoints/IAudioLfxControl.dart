// IAudioLfxControl.dart

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
const IID_IAudioLfxControl = '{076A6922-D802-4F83-BAF6-409D9CA11BFE}';

/// {@category Interface}
/// {@category com}
class IAudioLfxControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioLfxControl(Pointer<COMObject> ptr) : super(ptr);

  int SetLocalEffectsState(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int GetLocalEffectsState(
    Pointer<Int32> pbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pbEnabled,
      );
}
