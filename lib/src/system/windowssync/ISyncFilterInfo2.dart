// ISyncFilterInfo2.dart

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

import '../../system/windowssync/ISyncFilterInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncFilterInfo2 = '{19B394BA-E3D0-468C-934D-321968B2AB34}';

/// {@category Interface}
/// {@category com}
class ISyncFilterInfo2 extends ISyncFilterInfo {
  // vtable begins at 4, is 1 entries long.
  ISyncFilterInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );
}
