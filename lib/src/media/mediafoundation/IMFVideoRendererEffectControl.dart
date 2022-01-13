// IMFVideoRendererEffectControl.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoRendererEffectControl =
    '{604D33D7-CF23-41D5-8224-5BBBB1A87475}';

/// {@category Interface}
/// {@category com}
class IMFVideoRendererEffectControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFVideoRendererEffectControl(Pointer<COMObject> ptr) : super(ptr);

  int OnAppServiceConnectionEstablished(
    Pointer<COMObject> pAppServiceConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAppServiceConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAppServiceConnection,
          )>()(
        ptr.ref.lpVtbl,
        pAppServiceConnection,
      );
}
