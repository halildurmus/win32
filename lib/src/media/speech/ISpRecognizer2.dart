// ISpRecognizer2.dart

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
import '../../media/speech/ISpPhrase.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpRecognizer2 = '{8FC6D974-C81E-4098-93C5-0147F61ED4D3}';

/// {@category Interface}
/// {@category com}
class ISpRecognizer2 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISpRecognizer2(Pointer<COMObject> ptr) : super(ptr);

  int EmulateRecognitionEx(
    Pointer<COMObject> pPhrase,
    int dwCompareFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPhrase,
            Uint32 dwCompareFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPhrase,
            int dwCompareFlags,
          )>()(
        ptr.ref.lpVtbl,
        pPhrase,
        dwCompareFlags,
      );

  int SetTrainingState(
    int fDoingTraining,
    int fAdaptFromTrainingData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fDoingTraining,
            Int32 fAdaptFromTrainingData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fDoingTraining,
            int fAdaptFromTrainingData,
          )>()(
        ptr.ref.lpVtbl,
        fDoingTraining,
        fAdaptFromTrainingData,
      );

  int ResetAcousticModelAdaptation() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
