// IShellView2.dart

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

import '../../ui/shell/IShellView.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_IShellView2 = '{88E39E80-3578-11CF-AE69-08002B2E1262}';

/// {@category Interface}
/// {@category com}
class IShellView2 extends IShellView {
  // vtable begins at 16, is 4 entries long.
  IShellView2(Pointer<COMObject> ptr) : super(ptr);

  int GetView(
    Pointer<GUID> pvid,
    int uView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pvid,
            Uint32 uView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pvid,
            int uView,
          )>()(
        ptr.ref.lpVtbl,
        pvid,
        uView,
      );

  int CreateViewWindow2(
    Pointer<SV2CVW2_PARAMS> lpParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SV2CVW2_PARAMS> lpParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SV2CVW2_PARAMS> lpParams,
          )>()(
        ptr.ref.lpVtbl,
        lpParams,
      );

  int HandleRename(
    Pointer<ITEMIDLIST> pidlNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlNew,
          )>()(
        ptr.ref.lpVtbl,
        pidlNew,
      );

  int SelectAndPositionItem(
    Pointer<ITEMIDLIST> pidlItem,
    int uFlags,
    Pointer<POINT> ppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlItem,
            Uint32 uFlags,
            Pointer<POINT> ppt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlItem,
            int uFlags,
            Pointer<POINT> ppt,
          )>()(
        ptr.ref.lpVtbl,
        pidlItem,
        uFlags,
        ppt,
      );
}
