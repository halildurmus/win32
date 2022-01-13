// IVPConfig.dart

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

import '../../media/directshow/IVPBaseConfig.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IVPConfig = 'null';

/// {@category Interface}
/// {@category com}
class IVPConfig extends IVPBaseConfig {
  // vtable begins at 16, is 2 entries long.
  IVPConfig(Pointer<COMObject> ptr) : super(ptr);

  int IsVPDecimationAllowed(
    Pointer<Int32> pbIsDecimationAllowed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsDecimationAllowed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsDecimationAllowed,
          )>()(
        ptr.ref.lpVtbl,
        pbIsDecimationAllowed,
      );

  int SetScalingFactors(
    Pointer<AMVPSIZE> pamvpSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMVPSIZE> pamvpSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMVPSIZE> pamvpSize,
          )>()(
        ptr.ref.lpVtbl,
        pamvpSize,
      );
}
