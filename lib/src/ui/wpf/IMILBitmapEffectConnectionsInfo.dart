// IMILBitmapEffectConnectionsInfo.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/wpf/IMILBitmapEffectConnectorInfo.dart';

/// @nodoc
const IID_IMILBitmapEffectConnectionsInfo =
    '{476B538A-C765-4237-BA4A-D6A880FF0CFC}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectConnectionsInfo extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMILBitmapEffectConnectionsInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetNumberInputs(
    Pointer<Uint32> puiNumInputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiNumInputs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiNumInputs,
          )>()(
        ptr.ref.lpVtbl,
        puiNumInputs,
      );

  int GetNumberOutputs(
    Pointer<Uint32> puiNumOutputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiNumOutputs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiNumOutputs,
          )>()(
        ptr.ref.lpVtbl,
        puiNumOutputs,
      );

  int GetInputConnectorInfo(
    int uiIndex,
    Pointer<Pointer<COMObject>> ppConnectorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Pointer<COMObject>> ppConnectorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Pointer<COMObject>> ppConnectorInfo,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        ppConnectorInfo,
      );

  int GetOutputConnectorInfo(
    int uiIndex,
    Pointer<Pointer<COMObject>> ppConnectorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiIndex,
            Pointer<Pointer<COMObject>> ppConnectorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiIndex,
            Pointer<Pointer<COMObject>> ppConnectorInfo,
          )>()(
        ptr.ref.lpVtbl,
        uiIndex,
        ppConnectorInfo,
      );
}
