// ITfCompositionSink.dart

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
import '../../ui/textservices/ITfComposition.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfCompositionSink = '{A781718C-579A-4B15-A280-32B8577ACC5E}';

/// {@category Interface}
/// {@category com}
class ITfCompositionSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfCompositionSink(Pointer<COMObject> ptr) : super(ptr);

  int OnCompositionTerminated(
    int ecWrite,
    Pointer<COMObject> pComposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecWrite,
            Pointer<COMObject> pComposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecWrite,
            Pointer<COMObject> pComposition,
          )>()(
        ptr.ref.lpVtbl,
        ecWrite,
        pComposition,
      );
}
