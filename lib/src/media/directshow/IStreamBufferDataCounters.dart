// IStreamBufferDataCounters.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferDataCounters = '{9D2A2563-31AB-402E-9A6B-ADB903489440}';

/// {@category Interface}
/// {@category com}
class IStreamBufferDataCounters extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IStreamBufferDataCounters(Pointer<COMObject> ptr) : super(ptr);

  int GetData(
    Pointer<SBE_PIN_DATA> pPinData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SBE_PIN_DATA> pPinData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SBE_PIN_DATA> pPinData,
          )>()(
        ptr.ref.lpVtbl,
        pPinData,
      );

  int ResetData() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
