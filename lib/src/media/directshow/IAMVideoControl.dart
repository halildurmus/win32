// IAMVideoControl.dart

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
import '../../media/directshow/IPin.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMVideoControl = '{6A2E0670-28E4-11D0-A18C-00A0C9118956}';

/// {@category Interface}
/// {@category com}
class IAMVideoControl extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IAMVideoControl(Pointer<COMObject> ptr) : super(ptr);

  int GetCaps(
    Pointer<COMObject> pPin,
    Pointer<Int32> pCapsFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Int32> pCapsFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Int32> pCapsFlags,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        pCapsFlags,
      );

  int SetMode(
    Pointer<COMObject> pPin,
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        Mode,
      );

  int GetMode(
    Pointer<COMObject> pPin,
    Pointer<Int32> Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Int32> Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Int32> Mode,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        Mode,
      );

  int GetCurrentActualFrameRate(
    Pointer<COMObject> pPin,
    Pointer<Int64> ActualFrameRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Int64> ActualFrameRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            Pointer<Int64> ActualFrameRate,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        ActualFrameRate,
      );

  int GetMaxAvailableFrameRate(
    Pointer<COMObject> pPin,
    int iIndex,
    SIZE Dimensions,
    Pointer<Int64> MaxAvailableFrameRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Int32 iIndex,
            SIZE Dimensions,
            Pointer<Int64> MaxAvailableFrameRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            int iIndex,
            SIZE Dimensions,
            Pointer<Int64> MaxAvailableFrameRate,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        iIndex,
        Dimensions,
        MaxAvailableFrameRate,
      );

  int GetFrameRateList(
    Pointer<COMObject> pPin,
    int iIndex,
    SIZE Dimensions,
    Pointer<Int32> ListSize,
    Pointer<Pointer<Int64>> FrameRates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
            Int32 iIndex,
            SIZE Dimensions,
            Pointer<Int32> ListSize,
            Pointer<Pointer<Int64>> FrameRates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
            int iIndex,
            SIZE Dimensions,
            Pointer<Int32> ListSize,
            Pointer<Pointer<Int64>> FrameRates,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
        iIndex,
        Dimensions,
        ListSize,
        FrameRates,
      );
}
