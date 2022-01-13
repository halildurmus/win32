// IDefaultFolderMenuInitialize.dart

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
import '../../ui/shell/IContextMenuCB.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/IShellFolder.dart';
import '../../specialTypes.dart';
import '../../system/registry/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IDefaultFolderMenuInitialize =
    '{7690AA79-F8FC-4615-A327-36F7D18F5D91}';

/// {@category Interface}
/// {@category com}
class IDefaultFolderMenuInitialize extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDefaultFolderMenuInitialize(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hwnd,
    Pointer<COMObject> pcmcb,
    Pointer<ITEMIDLIST> pidlFolder,
    Pointer<COMObject> psf,
    int cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl,
    Pointer<COMObject> punkAssociation,
    int cKeys,
    Pointer<IntPtr> aKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> pcmcb,
            Pointer<ITEMIDLIST> pidlFolder,
            Pointer<COMObject> psf,
            Uint32 cidl,
            Pointer<Pointer<ITEMIDLIST>> apidl,
            Pointer<COMObject> punkAssociation,
            Uint32 cKeys,
            Pointer<IntPtr> aKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> pcmcb,
            Pointer<ITEMIDLIST> pidlFolder,
            Pointer<COMObject> psf,
            int cidl,
            Pointer<Pointer<ITEMIDLIST>> apidl,
            Pointer<COMObject> punkAssociation,
            int cKeys,
            Pointer<IntPtr> aKeys,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pcmcb,
        pidlFolder,
        psf,
        cidl,
        apidl,
        punkAssociation,
        cKeys,
        aKeys,
      );

  int SetMenuRestrictions(
    int dfmrValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dfmrValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dfmrValues,
          )>()(
        ptr.ref.lpVtbl,
        dfmrValues,
      );

  int GetMenuRestrictions(
    int dfmrMask,
    Pointer<Int32> pdfmrValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dfmrMask,
            Pointer<Int32> pdfmrValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dfmrMask,
            Pointer<Int32> pdfmrValues,
          )>()(
        ptr.ref.lpVtbl,
        dfmrMask,
        pdfmrValues,
      );

  int SetHandlerClsid(
    Pointer<GUID> rclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
      );
}
