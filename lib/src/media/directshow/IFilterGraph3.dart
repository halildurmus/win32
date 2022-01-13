// IFilterGraph3.dart

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

import '../../media/directshow/IFilterGraph2.dart';
import '../../media/IReferenceClock.dart';
import '../../media/directshow/IBaseFilter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFilterGraph3 = '{AAF38154-B80B-422F-91E6-B66467509A07}';

/// {@category Interface}
/// {@category com}
class IFilterGraph3 extends IFilterGraph2 {
  // vtable begins at 21, is 1 entries long.
  IFilterGraph3(Pointer<COMObject> ptr) : super(ptr);

  int SetSyncSourceEx(
    Pointer<COMObject> pClockForMostOfFilterGraph,
    Pointer<COMObject> pClockForFilter,
    Pointer<COMObject> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pClockForMostOfFilterGraph,
            Pointer<COMObject> pClockForFilter,
            Pointer<COMObject> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pClockForMostOfFilterGraph,
            Pointer<COMObject> pClockForFilter,
            Pointer<COMObject> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        pClockForMostOfFilterGraph,
        pClockForFilter,
        pFilter,
      );
}
