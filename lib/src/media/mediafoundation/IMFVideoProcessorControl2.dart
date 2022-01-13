// IMFVideoProcessorControl2.dart

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

import '../../media/mediafoundation/IMFVideoProcessorControl.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoProcessorControl2 = '{BDE633D3-E1DC-4A7F-A693-BBAE399C4A20}';

/// {@category Interface}
/// {@category com}
class IMFVideoProcessorControl2 extends IMFVideoProcessorControl {
  // vtable begins at 9, is 3 entries long.
  IMFVideoProcessorControl2(Pointer<COMObject> ptr) : super(ptr);

  int SetRotationOverride(
    int uiRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiRotation,
          )>()(
        ptr.ref.lpVtbl,
        uiRotation,
      );

  int EnableHardwareEffects(
    int fEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnabled,
          )>()(
        ptr.ref.lpVtbl,
        fEnabled,
      );

  int GetSupportedHardwareEffects(
    Pointer<Uint32> puiSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiSupport,
          )>()(
        ptr.ref.lpVtbl,
        puiSupport,
      );
}
