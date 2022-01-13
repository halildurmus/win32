// IVisualTreeServiceCallback2.dart

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

import '../../../ui/xaml/diagnostics/IVisualTreeServiceCallback.dart';
import '../../../ui/xaml/diagnostics/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IVisualTreeServiceCallback2 =
    '{BAD9EB88-AE77-4397-B948-5FA2DB0A19EA}';

/// {@category Interface}
/// {@category com}
class IVisualTreeServiceCallback2 extends IVisualTreeServiceCallback {
  // vtable begins at 4, is 1 entries long.
  IVisualTreeServiceCallback2(Pointer<COMObject> ptr) : super(ptr);

  int OnElementStateChanged(
    int element,
    int elementState,
    Pointer<Utf16> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 element,
            Int32 elementState,
            Pointer<Utf16> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int element,
            int elementState,
            Pointer<Utf16> context,
          )>()(
        ptr.ref.lpVtbl,
        element,
        elementState,
        context,
      );
}
