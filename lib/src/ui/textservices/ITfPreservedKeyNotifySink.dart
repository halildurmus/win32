// ITfPreservedKeyNotifySink.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfPreservedKeyNotifySink = '{6F77C993-D2B1-446E-853E-5912EFC8A286}';

/// {@category Interface}
/// {@category com}
class ITfPreservedKeyNotifySink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfPreservedKeyNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnUpdated(
    Pointer<TF_PRESERVEDKEY> pprekey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TF_PRESERVEDKEY> pprekey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TF_PRESERVEDKEY> pprekey,
          )>()(
        ptr.ref.lpVtbl,
        pprekey,
      );
}
