// IShellMenu.dart

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
import '../../ui/shell/IShellMenuCallback.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IShellFolder.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellMenu = '{EE1F7637-E138-11D1-8379-00C04FD918D0}';

/// {@category Interface}
/// {@category com}
class IShellMenu extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IShellMenu(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> psmc,
    int uId,
    int uIdAncestor,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psmc,
            Uint32 uId,
            Uint32 uIdAncestor,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psmc,
            int uId,
            int uIdAncestor,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        psmc,
        uId,
        uIdAncestor,
        dwFlags,
      );

  int GetMenuInfo(
    Pointer<Pointer<COMObject>> ppsmc,
    Pointer<Uint32> puId,
    Pointer<Uint32> puIdAncestor,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsmc,
            Pointer<Uint32> puId,
            Pointer<Uint32> puIdAncestor,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsmc,
            Pointer<Uint32> puId,
            Pointer<Uint32> puIdAncestor,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        ppsmc,
        puId,
        puIdAncestor,
        pdwFlags,
      );

  int SetShellFolder(
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidlFolder,
    int hKey,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlFolder,
            IntPtr hKey,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlFolder,
            int hKey,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        pidlFolder,
        hKey,
        dwFlags,
      );

  int GetShellFolder(
    Pointer<Uint32> pdwFlags,
    Pointer<Pointer<ITEMIDLIST>> ppidl,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
        ppidl,
        riid,
        ppv,
      );

  int SetMenu(
    int hmenu,
    int hwnd,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenu,
            IntPtr hwnd,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenu,
            int hwnd,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        hmenu,
        hwnd,
        dwFlags,
      );

  int GetMenu(
    Pointer<IntPtr> phmenu,
    Pointer<IntPtr> phwnd,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phmenu,
            Pointer<IntPtr> phwnd,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phmenu,
            Pointer<IntPtr> phwnd,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        phmenu,
        phwnd,
        pdwFlags,
      );

  int InvalidateItem(
    Pointer<SMDATA> psmd,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SMDATA> psmd,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SMDATA> psmd,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        psmd,
        dwFlags,
      );

  int GetState(
    Pointer<SMDATA> psmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SMDATA> psmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SMDATA> psmd,
          )>()(
        ptr.ref.lpVtbl,
        psmd,
      );

  int SetMenuToolbar(
    Pointer<COMObject> punk,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        dwFlags,
      );
}
