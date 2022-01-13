// IDeskBar.dart

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
const IID_IDeskBar = '{EB0FE173-1A3A-11D0-89B3-00A0C90A90AC}';

/// {@category Interface}
/// {@category com}
class IDeskBar extends IOleWindow {
  // vtable begins at 5, is 3 entries long.
  IDeskBar(Pointer<COMObject> ptr) : super(ptr);

  int SetClient(
    Pointer<COMObject> punkClient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkClient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkClient,
          )>()(
        ptr.ref.lpVtbl,
        punkClient,
      );

  int GetClient(
    Pointer<Pointer<COMObject>> ppunkClient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkClient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkClient,
          )>()(
        ptr.ref.lpVtbl,
        ppunkClient,
      );

  int OnPosRectChangeDB(
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        prc,
      );
}
