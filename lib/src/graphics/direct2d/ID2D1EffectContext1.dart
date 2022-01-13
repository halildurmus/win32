// ID2D1EffectContext1.dart

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

import '../../graphics/direct2d/ID2D1EffectContext.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1LookupTable3D.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1EffectContext1 = '{84AB595A-FC81-4546-BACD-E8EF4D8ABE7A}';

/// {@category Interface}
/// {@category com}
class ID2D1EffectContext1 extends ID2D1EffectContext {
  // vtable begins at 24, is 1 entries long.
  ID2D1EffectContext1(Pointer<COMObject> ptr) : super(ptr);

  int CreateLookupTable3D(
    int precision,
    Pointer<Uint32> extents,
    Pointer<Uint8> data,
    int dataCount,
    Pointer<Uint32> strides,
    Pointer<Pointer<COMObject>> lookupTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 precision,
            Pointer<Uint32> extents,
            Pointer<Uint8> data,
            Uint32 dataCount,
            Pointer<Uint32> strides,
            Pointer<Pointer<COMObject>> lookupTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int precision,
            Pointer<Uint32> extents,
            Pointer<Uint8> data,
            int dataCount,
            Pointer<Uint32> strides,
            Pointer<Pointer<COMObject>> lookupTable,
          )>()(
        ptr.ref.lpVtbl,
        precision,
        extents,
        data,
        dataCount,
        strides,
        lookupTable,
      );
}
