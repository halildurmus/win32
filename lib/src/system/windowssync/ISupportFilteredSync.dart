// ISupportFilteredSync.dart

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
import '../../specialTypes.dart';
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISupportFilteredSync = '{3D128DED-D555-4E0D-BF4B-FB213A8A9302}';

/// {@category Interface}
/// {@category com}
class ISupportFilteredSync extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISupportFilteredSync(Pointer<COMObject> ptr) : super(ptr);

  int AddFilter(
    Pointer<COMObject> pFilter,
    int filteringType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilter,
            Int32 filteringType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilter,
            int filteringType,
          )>()(
        ptr.ref.lpVtbl,
        pFilter,
        filteringType,
      );
}
