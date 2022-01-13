// IWiaErrorHandler.dart

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
const IID_IWiaErrorHandler = '{0E4A51B1-BC1F-443D-A835-72E890759EF3}';

/// {@category Interface}
/// {@category com}
class IWiaErrorHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWiaErrorHandler(Pointer<COMObject> ptr) : super(ptr);

  int ReportStatus(
    int lFlags,
    int hwndParent,
    Pointer<COMObject> pWiaItem2,
    int hrStatus,
    int lPercentComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            IntPtr hwndParent,
            Pointer<COMObject> pWiaItem2,
            Int32 hrStatus,
            Int32 lPercentComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            int hwndParent,
            Pointer<COMObject> pWiaItem2,
            int hrStatus,
            int lPercentComplete,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        hwndParent,
        pWiaItem2,
        hrStatus,
        lPercentComplete,
      );

  int GetStatusDescription(
    int lFlags,
    Pointer<COMObject> pWiaItem2,
    int hrStatus,
    Pointer<Pointer<Utf16>> pbstrDescription,
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
            Pointer<Pointer<Utf16>> pbstrDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pWiaItem2,
            int hrStatus,
            Pointer<Pointer<Utf16>> pbstrDescription,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pWiaItem2,
        hrStatus,
        pbstrDescription,
      );
}
