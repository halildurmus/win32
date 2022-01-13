// IShellService.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellService = '{5836FB00-8187-11CF-A12B-00AA004AE837}';

/// {@category Interface}
/// {@category com}
class IShellService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellService(Pointer<COMObject> ptr) : super(ptr);

  int SetOwner(
    Pointer<COMObject> punkOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkOwner,
          )>()(
        ptr.ref.lpVtbl,
        punkOwner,
      );
}
