// IDropTargetHelper.dart

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
import '../../system/com/IDataObject.dart';

/// @nodoc
const IID_IDropTargetHelper = '{4657278B-411B-11D2-839A-00C04FD918D0}';

/// {@category Interface}
/// {@category com}
class IDropTargetHelper extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDropTargetHelper(Pointer<COMObject> ptr) : super(ptr);

  int DragEnter(
    int hwndTarget,
    Pointer<COMObject> pDataObject,
    Pointer<POINT> ppt,
    int dwEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTarget,
            Pointer<COMObject> pDataObject,
            Pointer<POINT> ppt,
            Uint32 dwEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTarget,
            Pointer<COMObject> pDataObject,
            Pointer<POINT> ppt,
            int dwEffect,
          )>()(
        ptr.ref.lpVtbl,
        hwndTarget,
        pDataObject,
        ppt,
        dwEffect,
      );

  int DragLeave() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int DragOver(
    Pointer<POINT> ppt,
    int dwEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> ppt,
            Uint32 dwEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> ppt,
            int dwEffect,
          )>()(
        ptr.ref.lpVtbl,
        ppt,
        dwEffect,
      );

  int Drop(
    Pointer<COMObject> pDataObject,
    Pointer<POINT> ppt,
    int dwEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataObject,
            Pointer<POINT> ppt,
            Uint32 dwEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataObject,
            Pointer<POINT> ppt,
            int dwEffect,
          )>()(
        ptr.ref.lpVtbl,
        pDataObject,
        ppt,
        dwEffect,
      );

  int Show(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );
}
