// IUserActivitySourceHostInterop.dart

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
import '../../system/winrt/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUserActivitySourceHostInterop =
    '{C15DF8BC-8844-487A-B85B-7578E0F61419}';

/// {@category Interface}
/// {@category com}
class IUserActivitySourceHostInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IUserActivitySourceHostInterop(Pointer<COMObject> ptr) : super(ptr);

  int SetActivitySourceHost(
    int activitySourceHost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr activitySourceHost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int activitySourceHost,
          )>()(
        ptr.ref.lpVtbl,
        activitySourceHost,
      );
}
