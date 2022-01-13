// IDeskBarClient.dart

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
const IID_IDeskBarClient = '{EB0FE175-1A3A-11D0-89B3-00A0C90A90AC}';

/// {@category Interface}
/// {@category com}
class IDeskBarClient extends IOleWindow {
  // vtable begins at 5, is 4 entries long.
  IDeskBarClient(Pointer<COMObject> ptr) : super(ptr);

  int SetDeskBarSite(
    Pointer<COMObject> punkSite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkSite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkSite,
          )>()(
        ptr.ref.lpVtbl,
        punkSite,
      );

  int SetModeDBC(
    int dwMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMode,
          )>()(
        ptr.ref.lpVtbl,
        dwMode,
      );

  int UIActivateDBC(
    int dwState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwState,
          )>()(
        ptr.ref.lpVtbl,
        dwState,
      );

  int GetSize(
    int dwWhich,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWhich,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWhich,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        dwWhich,
        prc,
      );
}
