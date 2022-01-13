// IMILBitmapEffectInputConnector.dart

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

import '../../ui/wpf/IMILBitmapEffectConnector.dart';
import '../../ui/wpf/IMILBitmapEffectOutputConnector.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMILBitmapEffectInputConnector =
    '{A9B4ECAA-7A3C-45E7-8573-F4B81B60DD6C}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectInputConnector extends IMILBitmapEffectConnector {
  // vtable begins at 9, is 2 entries long.
  IMILBitmapEffectInputConnector(Pointer<COMObject> ptr) : super(ptr);

  int ConnectTo(
    Pointer<COMObject> pConnector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnector,
          )>()(
        ptr.ref.lpVtbl,
        pConnector,
      );

  int GetConnection(
    Pointer<Pointer<COMObject>> ppConnector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConnector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConnector,
          )>()(
        ptr.ref.lpVtbl,
        ppConnector,
      );
}
