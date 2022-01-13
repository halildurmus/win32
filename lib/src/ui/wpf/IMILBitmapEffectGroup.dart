// IMILBitmapEffectGroup.dart

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
import '../../ui/wpf/IMILBitmapEffectOutputConnector.dart';
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectInputConnector.dart';
import '../../ui/wpf/IMILBitmapEffect.dart';

/// @nodoc
const IID_IMILBitmapEffectGroup = '{2F952360-698A-4AC6-81A1-BCFDF08EB8E8}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectGroup extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMILBitmapEffectGroup(Pointer<COMObject> ptr) : super(ptr);

  int GetInteriorInputConnector(
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

  int GetInteriorOutputConnector(
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

  int Add(
    Pointer<COMObject> pEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEffect,
          )>()(
        ptr.ref.lpVtbl,
        pEffect,
      );
}
