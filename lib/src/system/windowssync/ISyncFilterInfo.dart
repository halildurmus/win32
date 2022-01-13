// ISyncFilterInfo.dart

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
const IID_ISyncFilterInfo = '{794EAAF8-3F2E-47E6-9728-17E6FCF94CB7}';

/// {@category Interface}
/// {@category com}
class ISyncFilterInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncFilterInfo(Pointer<COMObject> ptr) : super(ptr);

  int Serialize(
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pcbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pcbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pcbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pbBuffer,
        pcbBuffer,
      );
}
