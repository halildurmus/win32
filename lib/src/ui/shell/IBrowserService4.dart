// IBrowserService4.dart

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

import '../../ui/shell/IBrowserService3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBrowserService4 = '{639F1BFF-E135-4096-ABD8-E0F504D649A4}';

/// {@category Interface}
/// {@category com}
class IBrowserService4 extends IBrowserService3 {
  // vtable begins at 97, is 3 entries long.
  IBrowserService4(Pointer<COMObject> ptr) : super(ptr);

  int ActivateView(
    int fPendingView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fPendingView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fPendingView,
          )>()(
        ptr.ref.lpVtbl,
        fPendingView,
      );

  int SaveViewState() => ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ResizeAllBorders() => ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
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
