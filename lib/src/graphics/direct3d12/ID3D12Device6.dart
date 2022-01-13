// ID3D12Device6.dart

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

import '../../graphics/direct3d12/ID3D12Device5.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Device6 = '{C70B221B-40E4-4A17-89AF-025A0727A6DC}';

/// {@category Interface}
/// {@category com}
class ID3D12Device6 extends ID3D12Device5 {
  // vtable begins at 65, is 1 entries long.
  ID3D12Device6(Pointer<COMObject> ptr) : super(ptr);

  int SetBackgroundProcessingMode(
    int Mode,
    int MeasurementsAction,
    int hEventToSignalUponCompletion,
    Pointer<Int32> pbFurtherMeasurementsDesired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
            Int32 MeasurementsAction,
            IntPtr hEventToSignalUponCompletion,
            Pointer<Int32> pbFurtherMeasurementsDesired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
            int MeasurementsAction,
            int hEventToSignalUponCompletion,
            Pointer<Int32> pbFurtherMeasurementsDesired,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
        MeasurementsAction,
        hEventToSignalUponCompletion,
        pbFurtherMeasurementsDesired,
      );
}
