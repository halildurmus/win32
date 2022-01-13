// IAccPropServices.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IAccPropServer.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IAccPropServices = '{6E26E776-04F0-495D-80E4-3330352E3169}';

/// {@category Interface}
/// {@category com}
class IAccPropServices extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IAccPropServices(Pointer<COMObject> ptr) : super(ptr);

  int SetPropValue(
    Pointer<Uint8> pIDString,
    int dwIDStringLen,
    GUID idProp,
    VARIANT $var,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pIDString,
            Uint32 dwIDStringLen,
            GUID idProp,
            VARIANT $var,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pIDString,
            int dwIDStringLen,
            GUID idProp,
            VARIANT $var,
          )>()(
        ptr.ref.lpVtbl,
        pIDString,
        dwIDStringLen,
        idProp,
        $var,
      );

  int SetPropServer(
    Pointer<Uint8> pIDString,
    int dwIDStringLen,
    Pointer<GUID> paProps,
    int cProps,
    Pointer<COMObject> pServer,
    int annoScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pIDString,
            Uint32 dwIDStringLen,
            Pointer<GUID> paProps,
            Int32 cProps,
            Pointer<COMObject> pServer,
            Int32 annoScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pIDString,
            int dwIDStringLen,
            Pointer<GUID> paProps,
            int cProps,
            Pointer<COMObject> pServer,
            int annoScope,
          )>()(
        ptr.ref.lpVtbl,
        pIDString,
        dwIDStringLen,
        paProps,
        cProps,
        pServer,
        annoScope,
      );

  int ClearProps(
    Pointer<Uint8> pIDString,
    int dwIDStringLen,
    Pointer<GUID> paProps,
    int cProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pIDString,
            Uint32 dwIDStringLen,
            Pointer<GUID> paProps,
            Int32 cProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pIDString,
            int dwIDStringLen,
            Pointer<GUID> paProps,
            int cProps,
          )>()(
        ptr.ref.lpVtbl,
        pIDString,
        dwIDStringLen,
        paProps,
        cProps,
      );

  int SetHwndProp(
    int hwnd,
    int idObject,
    int idChild,
    GUID idProp,
    VARIANT $var,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 idObject,
            Uint32 idChild,
            GUID idProp,
            VARIANT $var,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int idObject,
            int idChild,
            GUID idProp,
            VARIANT $var,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        idObject,
        idChild,
        idProp,
        $var,
      );

  int SetHwndPropStr(
    int hwnd,
    int idObject,
    int idChild,
    GUID idProp,
    Pointer<Utf16> str,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 idObject,
            Uint32 idChild,
            GUID idProp,
            Pointer<Utf16> str,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int idObject,
            int idChild,
            GUID idProp,
            Pointer<Utf16> str,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        idObject,
        idChild,
        idProp,
        str,
      );

  int SetHwndPropServer(
    int hwnd,
    int idObject,
    int idChild,
    Pointer<GUID> paProps,
    int cProps,
    Pointer<COMObject> pServer,
    int annoScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 idObject,
            Uint32 idChild,
            Pointer<GUID> paProps,
            Int32 cProps,
            Pointer<COMObject> pServer,
            Int32 annoScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int idObject,
            int idChild,
            Pointer<GUID> paProps,
            int cProps,
            Pointer<COMObject> pServer,
            int annoScope,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        idObject,
        idChild,
        paProps,
        cProps,
        pServer,
        annoScope,
      );

  int ClearHwndProps(
    int hwnd,
    int idObject,
    int idChild,
    Pointer<GUID> paProps,
    int cProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 idObject,
            Uint32 idChild,
            Pointer<GUID> paProps,
            Int32 cProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int idObject,
            int idChild,
            Pointer<GUID> paProps,
            int cProps,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        idObject,
        idChild,
        paProps,
        cProps,
      );

  int ComposeHwndIdentityString(
    int hwnd,
    int idObject,
    int idChild,
    Pointer<Pointer<Uint8>> ppIDString,
    Pointer<Uint32> pdwIDStringLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 idObject,
            Uint32 idChild,
            Pointer<Pointer<Uint8>> ppIDString,
            Pointer<Uint32> pdwIDStringLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int idObject,
            int idChild,
            Pointer<Pointer<Uint8>> ppIDString,
            Pointer<Uint32> pdwIDStringLen,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        idObject,
        idChild,
        ppIDString,
        pdwIDStringLen,
      );

  int DecomposeHwndIdentityString(
    Pointer<Uint8> pIDString,
    int dwIDStringLen,
    Pointer<IntPtr> phwnd,
    Pointer<Uint32> pidObject,
    Pointer<Uint32> pidChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pIDString,
            Uint32 dwIDStringLen,
            Pointer<IntPtr> phwnd,
            Pointer<Uint32> pidObject,
            Pointer<Uint32> pidChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pIDString,
            int dwIDStringLen,
            Pointer<IntPtr> phwnd,
            Pointer<Uint32> pidObject,
            Pointer<Uint32> pidChild,
          )>()(
        ptr.ref.lpVtbl,
        pIDString,
        dwIDStringLen,
        phwnd,
        pidObject,
        pidChild,
      );

  int SetHmenuProp(
    int hmenu,
    int idChild,
    GUID idProp,
    VARIANT $var,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenu,
            Uint32 idChild,
            GUID idProp,
            VARIANT $var,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenu,
            int idChild,
            GUID idProp,
            VARIANT $var,
          )>()(
        ptr.ref.lpVtbl,
        hmenu,
        idChild,
        idProp,
        $var,
      );

  int SetHmenuPropStr(
    int hmenu,
    int idChild,
    GUID idProp,
    Pointer<Utf16> str,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenu,
            Uint32 idChild,
            GUID idProp,
            Pointer<Utf16> str,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenu,
            int idChild,
            GUID idProp,
            Pointer<Utf16> str,
          )>()(
        ptr.ref.lpVtbl,
        hmenu,
        idChild,
        idProp,
        str,
      );

  int SetHmenuPropServer(
    int hmenu,
    int idChild,
    Pointer<GUID> paProps,
    int cProps,
    Pointer<COMObject> pServer,
    int annoScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenu,
            Uint32 idChild,
            Pointer<GUID> paProps,
            Int32 cProps,
            Pointer<COMObject> pServer,
            Int32 annoScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenu,
            int idChild,
            Pointer<GUID> paProps,
            int cProps,
            Pointer<COMObject> pServer,
            int annoScope,
          )>()(
        ptr.ref.lpVtbl,
        hmenu,
        idChild,
        paProps,
        cProps,
        pServer,
        annoScope,
      );

  int ClearHmenuProps(
    int hmenu,
    int idChild,
    Pointer<GUID> paProps,
    int cProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenu,
            Uint32 idChild,
            Pointer<GUID> paProps,
            Int32 cProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenu,
            int idChild,
            Pointer<GUID> paProps,
            int cProps,
          )>()(
        ptr.ref.lpVtbl,
        hmenu,
        idChild,
        paProps,
        cProps,
      );

  int ComposeHmenuIdentityString(
    int hmenu,
    int idChild,
    Pointer<Pointer<Uint8>> ppIDString,
    Pointer<Uint32> pdwIDStringLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenu,
            Uint32 idChild,
            Pointer<Pointer<Uint8>> ppIDString,
            Pointer<Uint32> pdwIDStringLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenu,
            int idChild,
            Pointer<Pointer<Uint8>> ppIDString,
            Pointer<Uint32> pdwIDStringLen,
          )>()(
        ptr.ref.lpVtbl,
        hmenu,
        idChild,
        ppIDString,
        pdwIDStringLen,
      );

  int DecomposeHmenuIdentityString(
    Pointer<Uint8> pIDString,
    int dwIDStringLen,
    Pointer<IntPtr> phmenu,
    Pointer<Uint32> pidChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pIDString,
            Uint32 dwIDStringLen,
            Pointer<IntPtr> phmenu,
            Pointer<Uint32> pidChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pIDString,
            int dwIDStringLen,
            Pointer<IntPtr> phmenu,
            Pointer<Uint32> pidChild,
          )>()(
        ptr.ref.lpVtbl,
        pIDString,
        dwIDStringLen,
        phmenu,
        pidChild,
      );
}
