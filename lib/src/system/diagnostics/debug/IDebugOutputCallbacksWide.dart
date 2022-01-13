// IDebugOutputCallbacksWide.dart

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
const IID_IDebugOutputCallbacksWide = '{4C7FD663-C394-4E26-8EF1-34AD5ED3764C}';

/// {@category Interface}
/// {@category com}
class IDebugOutputCallbacksWide extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugOutputCallbacksWide(Pointer<COMObject> ptr) : super(ptr);

  int Output(
    int Mask,
    Pointer<Utf16> Text,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Mask,
            Pointer<Utf16> Text,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mask,
            Pointer<Utf16> Text,
          )>()(
        ptr.ref.lpVtbl,
        Mask,
        Text,
      );
}
