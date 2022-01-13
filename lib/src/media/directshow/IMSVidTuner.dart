// IMSVidTuner.dart

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

import '../../media/directshow/IMSVidVideoInputDevice.dart';
import '../../media/directshow/ITuneRequest.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/ITuningSpace.dart';

/// @nodoc
const IID_IMSVidTuner = '{1C15D47D-911D-11D2-B632-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidTuner extends IMSVidVideoInputDevice {
  // vtable begins at 18, is 4 entries long.
  IMSVidTuner(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Tune {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTR,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTR,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Tune(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> pTR,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> pTR,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get TuningSpace {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> plTS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> plTS,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TuningSpace(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(21)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> plTS,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> plTS,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
