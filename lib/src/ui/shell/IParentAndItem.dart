// IParentAndItem.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/IShellFolder.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IParentAndItem = '{B3A4B685-B685-4805-99D9-5DEAD2873236}';

/// {@category Interface}
/// {@category com}
class IParentAndItem extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IParentAndItem(Pointer<COMObject> ptr) : super(ptr);

  int SetParentAndItem(
    Pointer<ITEMIDLIST> pidlParent,
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidlChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlParent,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlParent,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidlChild,
          )>()(
        ptr.ref.lpVtbl,
        pidlParent,
        psf,
        pidlChild,
      );

  int GetParentAndItem(
    Pointer<Pointer<ITEMIDLIST>> ppidlParent,
    Pointer<Pointer<COMObject>> ppsf,
    Pointer<Pointer<ITEMIDLIST>> ppidlChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> ppidlParent,
            Pointer<Pointer<COMObject>> ppsf,
            Pointer<Pointer<ITEMIDLIST>> ppidlChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> ppidlParent,
            Pointer<Pointer<COMObject>> ppsf,
            Pointer<Pointer<ITEMIDLIST>> ppidlChild,
          )>()(
        ptr.ref.lpVtbl,
        ppidlParent,
        ppsf,
        ppidlChild,
      );
}
