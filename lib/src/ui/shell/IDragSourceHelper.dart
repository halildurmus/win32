// IDragSourceHelper.dart

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
import '../../ui/shell/structs.g.dart';
import '../../system/com/IDataObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDragSourceHelper = '{DE5BF786-477A-11D2-839D-00C04FD918D0}';

/// {@category Interface}
/// {@category com}
class IDragSourceHelper extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDragSourceHelper(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromBitmap(
    Pointer<SHDRAGIMAGE> pshdi,
    Pointer<COMObject> pDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SHDRAGIMAGE> pshdi,
            Pointer<COMObject> pDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SHDRAGIMAGE> pshdi,
            Pointer<COMObject> pDataObject,
          )>()(
        ptr.ref.lpVtbl,
        pshdi,
        pDataObject,
      );

  int InitializeFromWindow(
    int hwnd,
    Pointer<POINT> ppt,
    Pointer<COMObject> pDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<POINT> ppt,
            Pointer<COMObject> pDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<POINT> ppt,
            Pointer<COMObject> pDataObject,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        ppt,
        pDataObject,
      );
}
