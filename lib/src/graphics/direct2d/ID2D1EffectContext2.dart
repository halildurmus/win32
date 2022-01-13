// ID2D1EffectContext2.dart

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

import '../../graphics/direct2d/ID2D1EffectContext1.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1ColorContext1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1EffectContext2 = '{577AD2A0-9FC7-4DDA-8B18-DAB810140052}';

/// {@category Interface}
/// {@category com}
class ID2D1EffectContext2 extends ID2D1EffectContext1 {
  // vtable begins at 25, is 2 entries long.
  ID2D1EffectContext2(Pointer<COMObject> ptr) : super(ptr);

  int CreateColorContextFromDxgiColorSpace(
    int colorSpace,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 colorSpace,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int colorSpace,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        colorSpace,
        colorContext,
      );

  int CreateColorContextFromSimpleColorProfile(
    Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
    Pointer<Pointer<COMObject>> colorContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
            Pointer<Pointer<COMObject>> colorContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
            Pointer<Pointer<COMObject>> colorContext,
          )>()(
        ptr.ref.lpVtbl,
        simpleProfile,
        colorContext,
      );
}
