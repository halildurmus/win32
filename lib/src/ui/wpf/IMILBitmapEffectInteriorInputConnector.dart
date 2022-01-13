// IMILBitmapEffectInteriorInputConnector.dart

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
import '../../ui/wpf/IMILBitmapEffectInputConnector.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMILBitmapEffectInteriorInputConnector =
    '{20287E9E-86A2-4E15-953D-EB1438A5B842}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectInteriorInputConnector extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMILBitmapEffectInteriorInputConnector(Pointer<COMObject> ptr) : super(ptr);

  int GetInputConnector(
    Pointer<Pointer<COMObject>> pInputConnector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pInputConnector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pInputConnector,
          )>()(
        ptr.ref.lpVtbl,
        pInputConnector,
      );
}
