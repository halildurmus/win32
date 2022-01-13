// IDockingWindow.dart

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

import '../../system/ole/IOleWindow.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDockingWindow = '{012DD920-7B26-11D0-8CA9-00A0C92DBFE8}';

/// {@category Interface}
/// {@category com}
class IDockingWindow extends IOleWindow {
  // vtable begins at 5, is 3 entries long.
  IDockingWindow(Pointer<COMObject> ptr) : super(ptr);

  int ShowDW(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int CloseDW(
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
      );

  int ResizeBorderDW(
    Pointer<RECT> prcBorder,
    Pointer<COMObject> punkToolbarSite,
    int fReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcBorder,
            Pointer<COMObject> punkToolbarSite,
            Int32 fReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcBorder,
            Pointer<COMObject> punkToolbarSite,
            int fReserved,
          )>()(
        ptr.ref.lpVtbl,
        prcBorder,
        punkToolbarSite,
        fReserved,
      );
}
