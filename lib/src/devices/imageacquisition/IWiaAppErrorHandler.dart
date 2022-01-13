// IWiaAppErrorHandler.dart

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
import '../../foundation/structs.g.dart';
import '../../devices/imageacquisition/IWiaItem2.dart';

/// @nodoc
const IID_IWiaAppErrorHandler = '{6C16186C-D0A6-400C-80F4-D26986A0E734}';

/// {@category Interface}
/// {@category com}
class IWiaAppErrorHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWiaAppErrorHandler(Pointer<COMObject> ptr) : super(ptr);

  int GetWindow(
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>()(
        ptr.ref.lpVtbl,
        phwnd,
      );

  int ReportStatus(
    int lFlags,
    Pointer<COMObject> pWiaItem2,
    int hrStatus,
    int lPercentComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pWiaItem2,
            Int32 hrStatus,
            Int32 lPercentComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pWiaItem2,
            int hrStatus,
            int lPercentComplete,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pWiaItem2,
        hrStatus,
        lPercentComplete,
      );
}
