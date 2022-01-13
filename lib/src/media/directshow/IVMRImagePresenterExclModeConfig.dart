// IVMRImagePresenterExclModeConfig.dart

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

import '../../media/directshow/IVMRImagePresenterConfig.dart';
import '../../graphics/directdraw/IDirectDraw7.dart';
import '../../graphics/directdraw/IDirectDrawSurface7.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVMRImagePresenterExclModeConfig =
    '{E6F7CE40-4673-44F1-8F77-5499D68CB4EA}';

/// {@category Interface}
/// {@category com}
class IVMRImagePresenterExclModeConfig extends IVMRImagePresenterConfig {
  // vtable begins at 5, is 2 entries long.
  IVMRImagePresenterExclModeConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetXlcModeDDObjAndPrimarySurface(
    Pointer<COMObject> lpDDObj,
    Pointer<COMObject> lpPrimarySurf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpDDObj,
            Pointer<COMObject> lpPrimarySurf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpDDObj,
            Pointer<COMObject> lpPrimarySurf,
          )>()(
        ptr.ref.lpVtbl,
        lpDDObj,
        lpPrimarySurf,
      );

  int GetXlcModeDDObjAndPrimarySurface(
    Pointer<Pointer<COMObject>> lpDDObj,
    Pointer<Pointer<COMObject>> lpPrimarySurf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> lpDDObj,
            Pointer<Pointer<COMObject>> lpPrimarySurf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> lpDDObj,
            Pointer<Pointer<COMObject>> lpPrimarySurf,
          )>()(
        ptr.ref.lpVtbl,
        lpDDObj,
        lpPrimarySurf,
      );
}
