// IWMCodecLeakyBucket.dart

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
const IID_IWMCodecLeakyBucket = '{A81BA647-6227-43B7-B231-C7B15135DD7D}';

/// {@category Interface}
/// {@category com}
class IWMCodecLeakyBucket extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMCodecLeakyBucket(Pointer<COMObject> ptr) : super(ptr);

  int SetBufferSizeBits(
    int ulBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        ulBufferSize,
      );

  int GetBufferSizeBits(
    Pointer<Uint32> pulBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pulBufferSize,
      );

  int SetBufferFullnessBits(
    int ulBufferFullness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulBufferFullness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulBufferFullness,
          )>()(
        ptr.ref.lpVtbl,
        ulBufferFullness,
      );

  int GetBufferFullnessBits(
    Pointer<Uint32> pulBufferFullness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulBufferFullness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulBufferFullness,
          )>()(
        ptr.ref.lpVtbl,
        pulBufferFullness,
      );
}
