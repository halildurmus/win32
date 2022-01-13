// IImePadApplet.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/input/ime/structs.g.dart';

/// @nodoc
const IID_IImePadApplet = '{5D8E643B-C3A9-11D1-AFEF-00805F0C8B6D}';

/// {@category Interface}
/// {@category com}
class IImePadApplet extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IImePadApplet(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> lpIImePad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIImePad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIImePad,
          )>()(
        ptr.ref.lpVtbl,
        lpIImePad,
      );

  int Terminate() => ptr.ref.lpVtbl.value
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

  int GetAppletConfig(
    Pointer<IMEAPPLETCFG> lpAppletCfg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMEAPPLETCFG> lpAppletCfg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMEAPPLETCFG> lpAppletCfg,
          )>()(
        ptr.ref.lpVtbl,
        lpAppletCfg,
      );

  int CreateUI(
    int hwndParent,
    Pointer<IMEAPPLETUI> lpImeAppletUI,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<IMEAPPLETUI> lpImeAppletUI,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<IMEAPPLETUI> lpImeAppletUI,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lpImeAppletUI,
      );

  int Notify(
    Pointer<COMObject> lpImePad,
    int notify,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpImePad,
            Int32 notify,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpImePad,
            int notify,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        lpImePad,
        notify,
        wParam,
        lParam,
      );
}
