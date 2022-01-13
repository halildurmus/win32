// IShellFolderBand.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IShellFolderBand = '{7FE80CC8-C247-11D0-B93A-00A0C90312E1}';

/// {@category Interface}
/// {@category com}
class IShellFolderBand extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IShellFolderBand(Pointer<COMObject> ptr) : super(ptr);

  int InitializeSFB(
    Pointer<COMObject> psf,
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            Pointer<ITEMIDLIST> pidl,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        pidl,
      );

  int SetBandInfoSFB(
    Pointer<BANDINFOSFB> pbi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BANDINFOSFB> pbi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BANDINFOSFB> pbi,
          )>()(
        ptr.ref.lpVtbl,
        pbi,
      );

  int GetBandInfoSFB(
    Pointer<BANDINFOSFB> pbi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BANDINFOSFB> pbi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BANDINFOSFB> pbi,
          )>()(
        ptr.ref.lpVtbl,
        pbi,
      );
}
