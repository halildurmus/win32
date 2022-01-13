// IQueryOEMWinSATCustomization.dart

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
import '../../system/assessmenttool/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IQueryOEMWinSATCustomization =
    '{BC9A6A9F-AD4E-420E-9953-B34671E9DF22}';

/// {@category Interface}
/// {@category com}
class IQueryOEMWinSATCustomization extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IQueryOEMWinSATCustomization(Pointer<COMObject> ptr) : super(ptr);

  int GetOEMPrePopulationInfo(
    Pointer<Int32> state,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> state,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> state,
          )>()(
        ptr.ref.lpVtbl,
        state,
      );
}
