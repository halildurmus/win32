// IMenuPopup.dart

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

import '../../ui/shell/IDeskBar.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IMenuPopup.dart';

/// @nodoc
const IID_IMenuPopup = '{D1E7AFEB-6A2E-11D0-8C78-00C04FD918B4}';

/// {@category Interface}
/// {@category com}
class IMenuPopup extends IDeskBar {
  // vtable begins at 8, is 3 entries long.
  IMenuPopup(Pointer<COMObject> ptr) : super(ptr);

  int Popup(
    Pointer<POINTL> ppt,
    Pointer<RECTL> prcExclude,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINTL> ppt,
            Pointer<RECTL> prcExclude,
            Int32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINTL> ppt,
            Pointer<RECTL> prcExclude,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        ppt,
        prcExclude,
        dwFlags,
      );

  int OnSelect(
    int dwSelectType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSelectType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSelectType,
          )>()(
        ptr.ref.lpVtbl,
        dwSelectType,
      );

  int SetSubMenu(
    Pointer<COMObject> pmp,
    int fSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pmp,
            Int32 fSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pmp,
            int fSet,
          )>()(
        ptr.ref.lpVtbl,
        pmp,
        fSet,
      );
}
