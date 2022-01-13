// ISensOnNow.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISensOnNow = '{D597BAB2-5B9F-11D1-8DD2-00AA004ABD5E}';

/// {@category Interface}
/// {@category com}
class ISensOnNow extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ISensOnNow(Pointer<COMObject> ptr) : super(ptr);

  int OnACPower() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int OnBatteryPower(
    int dwBatteryLifePercent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBatteryLifePercent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBatteryLifePercent,
          )>()(
        ptr.ref.lpVtbl,
        dwBatteryLifePercent,
      );

  int BatteryLow(
    int dwBatteryLifePercent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBatteryLifePercent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBatteryLifePercent,
          )>()(
        ptr.ref.lpVtbl,
        dwBatteryLifePercent,
      );
}
