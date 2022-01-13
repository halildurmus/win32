// ID3D10EffectPool.dart

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
import '../../graphics/direct3d10/ID3D10Effect.dart';

/// @nodoc
const IID_ID3D10EffectPool = '{9537AB04-3250-412E-8213-FCD2F8677933}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectPool extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D10EffectPool(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> AsEffect() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
