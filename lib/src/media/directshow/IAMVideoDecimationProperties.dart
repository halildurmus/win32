// IAMVideoDecimationProperties.dart

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
const IID_IAMVideoDecimationProperties =
    '{60D32930-13DA-11D3-9EC6-C4FCAEF5C7BE}';

/// {@category Interface}
/// {@category com}
class IAMVideoDecimationProperties extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAMVideoDecimationProperties(Pointer<COMObject> ptr) : super(ptr);

  int QueryDecimationUsage(
    Pointer<Int32> lpUsage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpUsage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpUsage,
          )>()(
        ptr.ref.lpVtbl,
        lpUsage,
      );

  int SetDecimationUsage(
    int Usage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Usage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Usage,
          )>()(
        ptr.ref.lpVtbl,
        Usage,
      );
}
