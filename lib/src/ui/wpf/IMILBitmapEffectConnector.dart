// IMILBitmapEffectConnector.dart

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

import '../../ui/wpf/IMILBitmapEffectConnectorInfo.dart';
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffect.dart';

/// @nodoc
const IID_IMILBitmapEffectConnector = '{F59567B3-76C1-4D47-BA1E-79F955E350EF}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectConnector extends IMILBitmapEffectConnectorInfo {
  // vtable begins at 7, is 2 entries long.
  IMILBitmapEffectConnector(Pointer<COMObject> ptr) : super(ptr);

  int IsConnected(
    Pointer<Int16> pfConnected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfConnected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfConnected,
          )>()(
        ptr.ref.lpVtbl,
        pfConnected,
      );

  int GetBitmapEffect(
    Pointer<Pointer<COMObject>> ppEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEffect,
          )>()(
        ptr.ref.lpVtbl,
        ppEffect,
      );
}
