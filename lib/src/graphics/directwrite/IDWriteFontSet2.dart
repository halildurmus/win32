// IDWriteFontSet2.dart

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

import '../../graphics/directwrite/IDWriteFontSet1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontSet2 = '{DC7EAD19-E54C-43AF-B2DA-4E2B79BA3F7F}';

/// {@category Interface}
/// {@category com}
class IDWriteFontSet2 extends IDWriteFontSet1 {
  // vtable begins at 26, is 1 entries long.
  IDWriteFontSet2(Pointer<COMObject> ptr) : super(ptr);

  int GetExpirationEvent() => ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
