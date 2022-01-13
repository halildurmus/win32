// IRequestFilteredSync.dart

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
import '../../system/windowssync/IFilterRequestCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRequestFilteredSync = '{2E020184-6D18-46A7-A32A-DA4AEB06696C}';

/// {@category Interface}
/// {@category com}
class IRequestFilteredSync extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRequestFilteredSync(Pointer<COMObject> ptr) : super(ptr);

  int SpecifyFilter(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );
}
