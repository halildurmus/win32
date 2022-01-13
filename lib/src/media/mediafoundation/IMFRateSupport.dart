// IMFRateSupport.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFRateSupport = '{0A9CCDBC-D797-4563-9667-94EC5D79292D}';

/// {@category Interface}
/// {@category com}
class IMFRateSupport extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFRateSupport(Pointer<COMObject> ptr) : super(ptr);

  int GetSlowestRate(
    int eDirection,
    int fThin,
    Pointer<Float> pflRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eDirection,
            Int32 fThin,
            Pointer<Float> pflRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eDirection,
            int fThin,
            Pointer<Float> pflRate,
          )>()(
        ptr.ref.lpVtbl,
        eDirection,
        fThin,
        pflRate,
      );

  int GetFastestRate(
    int eDirection,
    int fThin,
    Pointer<Float> pflRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eDirection,
            Int32 fThin,
            Pointer<Float> pflRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eDirection,
            int fThin,
            Pointer<Float> pflRate,
          )>()(
        ptr.ref.lpVtbl,
        eDirection,
        fThin,
        pflRate,
      );

  int IsRateSupported(
    int fThin,
    double flRate,
    Pointer<Float> pflNearestSupportedRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fThin,
            Float flRate,
            Pointer<Float> pflNearestSupportedRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fThin,
            double flRate,
            Pointer<Float> pflNearestSupportedRate,
          )>()(
        ptr.ref.lpVtbl,
        fThin,
        flRate,
        pflNearestSupportedRate,
      );
}
