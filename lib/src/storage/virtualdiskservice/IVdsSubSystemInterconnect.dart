// IVdsSubSystemInterconnect.dart

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
const IID_IVdsSubSystemInterconnect = '{9E6FA560-C141-477B-83BA-0B6C38F7FEBF}';

/// {@category Interface}
/// {@category com}
class IVdsSubSystemInterconnect extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVdsSubSystemInterconnect(Pointer<COMObject> ptr) : super(ptr);

  int GetSupportedInterconnects(
    Pointer<Uint32> pulSupportedInterconnectsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulSupportedInterconnectsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulSupportedInterconnectsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pulSupportedInterconnectsFlag,
      );
}
