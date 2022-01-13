// IMILBitmapEffectOutputConnector.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectInputConnector.dart';

/// @nodoc
const IID_IMILBitmapEffectOutputConnector =
    '{92957AAD-841B-4866-82EC-8752468B07FD}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectOutputConnector extends IMILBitmapEffectConnector {
  // vtable begins at 9, is 2 entries long.
  IMILBitmapEffectOutputConnector(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberConnections(
    Pointer<Uint32> puiNumberConnections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiNumberConnections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiNumberConnections,
          )>()(
        ptr.ref.lpVtbl,
        puiNumberConnections,
      );

  int GetConnection(
    int uiIndex,
    Pointer<Pointer<COMObject>> ppConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Pointer<COMObject>> ppConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Pointer<COMObject>> ppConnection,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        ppConnection,
      );
}
