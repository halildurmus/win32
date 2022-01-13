// ISyncChangeBatchBase2.dart

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

import '../../system/windowssync/ISyncChangeBatchBase.dart';
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncChangeBatchBase2 = '{6FDB596A-D755-4584-BD0C-C0C23A548FBF}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBatchBase2 extends ISyncChangeBatchBase {
  // vtable begins at 17, is 1 entries long.
  ISyncChangeBatchBase2(Pointer<COMObject> ptr) : super(ptr);

  int SerializeWithOptions(
    int targetFormatVersion,
    int dwFlags,
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pdwSerializedSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 targetFormatVersion,
            Uint32 dwFlags,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwSerializedSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int targetFormatVersion,
            int dwFlags,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwSerializedSize,
          )>()(
        ptr.ref.lpVtbl,
        targetFormatVersion,
        dwFlags,
        pbBuffer,
        pdwSerializedSize,
      );
}
