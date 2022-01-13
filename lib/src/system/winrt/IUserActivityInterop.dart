// IUserActivityInterop.dart

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
const IID_IUserActivityInterop = '{1ADE314D-0E0A-40D9-824C-9A088A50059F}';

/// {@category Interface}
/// {@category com}
class IUserActivityInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IUserActivityInterop(Pointer<COMObject> ptr) : super(ptr);

  int CreateSessionForWindow(
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
