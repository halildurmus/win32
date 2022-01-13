// IWiaSegmentationFilter.dart

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
import '../../system/com/IStream.dart';
import '../../devices/imageacquisition/IWiaItem2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWiaSegmentationFilter = '{EC46A697-AC04-4447-8F65-FF63D5154B21}';

/// {@category Interface}
/// {@category com}
class IWiaSegmentationFilter extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWiaSegmentationFilter(Pointer<COMObject> ptr) : super(ptr);

  int DetectRegions(
    int lFlags,
    Pointer<COMObject> pInputStream,
    Pointer<COMObject> pWiaItem2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pInputStream,
            Pointer<COMObject> pWiaItem2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pInputStream,
            Pointer<COMObject> pWiaItem2,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pInputStream,
        pWiaItem2,
      );
}
