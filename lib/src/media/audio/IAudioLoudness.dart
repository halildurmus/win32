// IAudioLoudness.dart

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

/// @nodoc
const IID_IAudioLoudness = '{7D8B1437-DD53-4350-9C1B-1EE2890BD938}';

/// {@category Interface}
/// {@category com}
class IAudioLoudness extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioLoudness(Pointer<COMObject> ptr) : super(ptr);

  int GetEnabled(
    Pointer<Int32> pbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetEnabled(
    int bEnable,
    Pointer<GUID> pguidEventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bEnable,
            Pointer<GUID> pguidEventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnable,
            Pointer<GUID> pguidEventContext,
          )>()(
        ptr.ref.lpVtbl,
        bEnable,
        pguidEventContext,
      );
}
