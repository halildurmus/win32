// IDockingWindowSite.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDockingWindowSite = '{2A342FC2-7B26-11D0-8CA9-00A0C92DBFE8}';

/// {@category Interface}
/// {@category com}
class IDockingWindowSite extends IOleWindow {
  // vtable begins at 5, is 3 entries long.
  IDockingWindowSite(Pointer<COMObject> ptr) : super(ptr);

  int GetBorderDW(
    Pointer<COMObject> punkObj,
    Pointer<RECT> prcBorder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkObj,
            Pointer<RECT> prcBorder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkObj,
            Pointer<RECT> prcBorder,
          )>()(
        ptr.ref.lpVtbl,
        punkObj,
        prcBorder,
      );

  int RequestBorderSpaceDW(
    Pointer<COMObject> punkObj,
    Pointer<RECT> pbw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkObj,
            Pointer<RECT> pbw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkObj,
            Pointer<RECT> pbw,
          )>()(
        ptr.ref.lpVtbl,
        punkObj,
        pbw,
      );

  int SetBorderSpaceDW(
    Pointer<COMObject> punkObj,
    Pointer<RECT> pbw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkObj,
            Pointer<RECT> pbw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkObj,
            Pointer<RECT> pbw,
          )>()(
        ptr.ref.lpVtbl,
        punkObj,
        pbw,
      );
}
