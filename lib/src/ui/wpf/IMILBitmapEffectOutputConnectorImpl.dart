// IMILBitmapEffectOutputConnectorImpl.dart

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
const IID_IMILBitmapEffectOutputConnectorImpl =
    '{21FAE777-8B39-4BFA-9F2D-F3941ED36913}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectOutputConnectorImpl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMILBitmapEffectOutputConnectorImpl(Pointer<COMObject> ptr) : super(ptr);

  int AddBackLink(
    Pointer<COMObject> pConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnection,
          )>()(
        ptr.ref.lpVtbl,
        pConnection,
      );

  int RemoveBackLink(
    Pointer<COMObject> pConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnection,
          )>()(
        ptr.ref.lpVtbl,
        pConnection,
      );
}
