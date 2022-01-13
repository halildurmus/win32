// IStreamInterleave.dart

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

import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamInterleave = '{27354147-7F64-5B0F-8F00-5D77AFBE261E}';

/// {@category Interface}
/// {@category com}
class IStreamInterleave extends IStream {
  // vtable begins at 14, is 1 entries long.
  IStreamInterleave(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Pointer<COMObject>> streams,
    Pointer<Uint32> interleaveSizes,
    int streamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> streams,
            Pointer<Uint32> interleaveSizes,
            Uint32 streamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> streams,
            Pointer<Uint32> interleaveSizes,
            int streamCount,
          )>()(
        ptr.ref.lpVtbl,
        streams,
        interleaveSizes,
        streamCount,
      );
}
