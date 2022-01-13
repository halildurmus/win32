// ID2D1ColorContext1.dart

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

import '../../graphics/direct2d/ID2D1ColorContext.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1ColorContext1 = '{1AB42875-C57F-4BE9-BD85-9CD78D6F55EE}';

/// {@category Interface}
/// {@category com}
class ID2D1ColorContext1 extends ID2D1ColorContext {
  // vtable begins at 7, is 3 entries long.
  ID2D1ColorContext1(Pointer<COMObject> ptr) : super(ptr);

  int GetColorContextType() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetDXGIColorSpace() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetSimpleColorProfile(
    Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_SIMPLE_COLOR_PROFILE> simpleProfile,
          )>()(
        ptr.ref.lpVtbl,
        simpleProfile,
      );
}
