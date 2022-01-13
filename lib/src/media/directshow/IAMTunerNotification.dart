// IAMTunerNotification.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMTunerNotification = '{211A8760-03AC-11D1-8D13-00AA00BD8339}';

/// {@category Interface}
/// {@category com}
class IAMTunerNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMTunerNotification(Pointer<COMObject> ptr) : super(ptr);

  int OnEvent(
    int Event,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Event,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Event,
          )>()(
        ptr.ref.lpVtbl,
        Event,
      );
}
