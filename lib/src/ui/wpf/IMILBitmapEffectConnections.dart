// IMILBitmapEffectConnections.dart

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
import '../../ui/wpf/IMILBitmapEffectOutputConnector.dart';

/// @nodoc
const IID_IMILBitmapEffectConnections =
    '{C2B5D861-9B1A-4374-89B0-DEC4874D6A81}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectConnections extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMILBitmapEffectConnections(Pointer<COMObject> ptr) : super(ptr);

  int GetInputConnector(
    int uiIndex,
    Pointer<Pointer<COMObject>> ppConnector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Pointer<COMObject>> ppConnector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Pointer<COMObject>> ppConnector,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        ppConnector,
      );

  int GetOutputConnector(
    int uiIndex,
    Pointer<Pointer<COMObject>> ppConnector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Pointer<COMObject>> ppConnector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Pointer<COMObject>> ppConnector,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        ppConnector,
      );
}
