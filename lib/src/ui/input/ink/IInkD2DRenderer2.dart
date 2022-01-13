// IInkD2DRenderer2.dart

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
import '../../../specialTypes.dart';
import '../../../ui/input/ink/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInkD2DRenderer2 = '{0A95DCD9-4578-4B71-B20B-BF664D4BFEEE}';

/// {@category Interface}
/// {@category com}
class IInkD2DRenderer2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInkD2DRenderer2(Pointer<COMObject> ptr) : super(ptr);

  int Draw(
    Pointer<COMObject> pD2D1DeviceContext,
    Pointer<COMObject> pInkStrokeIterable,
    int highContrastAdjustment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pD2D1DeviceContext,
            Pointer<COMObject> pInkStrokeIterable,
            Int32 highContrastAdjustment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pD2D1DeviceContext,
            Pointer<COMObject> pInkStrokeIterable,
            int highContrastAdjustment,
          )>()(
        ptr.ref.lpVtbl,
        pD2D1DeviceContext,
        pInkStrokeIterable,
        highContrastAdjustment,
      );
}
