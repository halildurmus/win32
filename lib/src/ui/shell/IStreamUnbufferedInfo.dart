// IStreamUnbufferedInfo.dart

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
const IID_IStreamUnbufferedInfo = '{8A68FDDA-1FDC-4C20-8CEB-416643B5A625}';

/// {@category Interface}
/// {@category com}
class IStreamUnbufferedInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStreamUnbufferedInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetSectorSize(
    Pointer<Uint32> pcbSectorSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbSectorSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbSectorSize,
          )>()(
        ptr.ref.lpVtbl,
        pcbSectorSize,
      );
}
