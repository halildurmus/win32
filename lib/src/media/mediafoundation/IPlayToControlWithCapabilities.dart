// IPlayToControlWithCapabilities.dart

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

import '../../media/mediafoundation/IPlayToControl.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPlayToControlWithCapabilities =
    '{AA9DD80F-C50A-4220-91C1-332287F82A34}';

/// {@category Interface}
/// {@category com}
class IPlayToControlWithCapabilities extends IPlayToControl {
  // vtable begins at 5, is 1 entries long.
  IPlayToControlWithCapabilities(Pointer<COMObject> ptr) : super(ptr);

  int GetCapabilities(
    Pointer<Int32> pCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pCapabilities,
      );
}
