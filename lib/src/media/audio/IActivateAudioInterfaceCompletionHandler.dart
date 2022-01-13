// IActivateAudioInterfaceCompletionHandler.dart

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
import '../../media/audio/IActivateAudioInterfaceAsyncOperation.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IActivateAudioInterfaceCompletionHandler =
    '{41D949AB-9862-444A-80F6-C261334DA5EB}';

/// {@category Interface}
/// {@category com}
class IActivateAudioInterfaceCompletionHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActivateAudioInterfaceCompletionHandler(Pointer<COMObject> ptr) : super(ptr);

  int ActivateCompleted(
    Pointer<COMObject> activateOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> activateOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> activateOperation,
          )>()(
        ptr.ref.lpVtbl,
        activateOperation,
      );
}
