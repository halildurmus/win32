// IFolderFilter.dart

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
import '../../ui/shell/IShellFolder.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFolderFilter = '{9CC22886-DC8E-11D2-B1D0-00C04F8EEB3E}';

/// {@category Interface}
/// {@category com}
class IFolderFilter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFolderFilter(Pointer<COMObject> ptr) : super(ptr);

  int ShouldShow(
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidlFolder,
    Pointer<ITEMIDLIST> pidlItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlFolder,
            Pointer<ITEMIDLIST> pidlItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlFolder,
            Pointer<ITEMIDLIST> pidlItem,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        pidlFolder,
        pidlItem,
      );

  int GetEnumFlags(
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidlFolder,
    Pointer<IntPtr> phwnd,
    Pointer<Uint32> pgrfFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlFolder,
            Pointer<IntPtr> phwnd,
            Pointer<Uint32> pgrfFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlFolder,
            Pointer<IntPtr> phwnd,
            Pointer<Uint32> pgrfFlags,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        pidlFolder,
        phwnd,
        pgrfFlags,
      );
}
