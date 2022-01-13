// IMFVideoProcessorControl3.dart

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

import '../../media/mediafoundation/IMFVideoProcessorControl2.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFVideoProcessorControl3 = '{2424B3F2-EB23-40F1-91AA-74BDDEEA0883}';

/// {@category Interface}
/// {@category com}
class IMFVideoProcessorControl3 extends IMFVideoProcessorControl2 {
  // vtable begins at 12, is 4 entries long.
  IMFVideoProcessorControl3(Pointer<COMObject> ptr) : super(ptr);

  int GetNaturalOutputType(
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        ppType,
      );

  int EnableSphericalVideoProcessing(
    int fEnable,
    int eFormat,
    int eProjectionMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
            Int32 eFormat,
            Int32 eProjectionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
            int eFormat,
            int eProjectionMode,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
        eFormat,
        eProjectionMode,
      );

  int SetSphericalVideoProperties(
    double X,
    double Y,
    double Z,
    double W,
    double fieldOfView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float X,
            Float Y,
            Float Z,
            Float W,
            Float fieldOfView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double X,
            double Y,
            double Z,
            double W,
            double fieldOfView,
          )>()(
        ptr.ref.lpVtbl,
        X,
        Y,
        Z,
        W,
        fieldOfView,
      );

  int SetOutputDevice(
    Pointer<COMObject> pOutputDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOutputDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOutputDevice,
          )>()(
        ptr.ref.lpVtbl,
        pOutputDevice,
      );
}
