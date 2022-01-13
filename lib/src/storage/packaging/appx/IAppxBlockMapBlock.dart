// IAppxBlockMapBlock.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxBlockMapBlock = '{75CF3930-3244-4FE0-A8C8-E0BCB270B889}';

/// {@category Interface}
/// {@category com}
class IAppxBlockMapBlock extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxBlockMapBlock(Pointer<COMObject> ptr) : super(ptr);

  int GetHash(
    Pointer<Uint32> bufferSize,
    Pointer<Pointer<Uint8>> buffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> bufferSize,
            Pointer<Pointer<Uint8>> buffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> bufferSize,
            Pointer<Pointer<Uint8>> buffer,
          )>()(
        ptr.ref.lpVtbl,
        bufferSize,
        buffer,
      );

  int GetCompressedSize(
    Pointer<Uint32> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );
}
