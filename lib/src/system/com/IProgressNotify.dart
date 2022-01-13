// IProgressNotify.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IProgressNotify = '{A9D758A0-4617-11CF-95FC-00AA00680DB4}';

/// {@category Interface}
/// {@category com}
class IProgressNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProgressNotify(Pointer<COMObject> ptr) : super(ptr);

  int OnProgress(
    int dwProgressCurrent,
    int dwProgressMaximum,
    int fAccurate,
    int fOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProgressCurrent,
            Uint32 dwProgressMaximum,
            Int32 fAccurate,
            Int32 fOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProgressCurrent,
            int dwProgressMaximum,
            int fAccurate,
            int fOwner,
          )>()(
        ptr.ref.lpVtbl,
        dwProgressCurrent,
        dwProgressMaximum,
        fAccurate,
        fOwner,
      );
}
