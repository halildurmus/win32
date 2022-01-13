// IUserActivityRequestManagerInterop.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUserActivityRequestManagerInterop =
    '{DD69F876-9699-4715-9095-E37EA30DFA1B}';

/// {@category Interface}
/// {@category com}
class IUserActivityRequestManagerInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IUserActivityRequestManagerInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int window,
    Pointer<GUID> iid,
    Pointer<Pointer> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr window,
            Pointer<GUID> iid,
            Pointer<Pointer> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int window,
            Pointer<GUID> iid,
            Pointer<Pointer> value,
          )>()(
        ptr.ref.lpVtbl,
        window,
        iid,
        value,
      );
}
