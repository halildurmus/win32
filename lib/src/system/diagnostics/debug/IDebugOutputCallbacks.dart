// IDebugOutputCallbacks.dart

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
const IID_IDebugOutputCallbacks = '{4BF58045-D654-4C40-B0AF-683090F356DC}';

/// {@category Interface}
/// {@category com}
class IDebugOutputCallbacks extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugOutputCallbacks(Pointer<COMObject> ptr) : super(ptr);

  int Output(
    int Mask,
    Pointer<Utf8> Text,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
            Pointer<Utf8> Text,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
            Pointer<Utf8> Text,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
        Text,
      );
}
