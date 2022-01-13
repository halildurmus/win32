// IEnumerableView.dart

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
import '../../ui/shell/IEnumReadyCallback.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/IEnumIDList.dart';

/// @nodoc
const IID_IEnumerableView = '{8C8BF236-1AEC-495F-9894-91D57C3C686F}';

/// {@category Interface}
/// {@category com}
class IEnumerableView extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEnumerableView(Pointer<COMObject> ptr) : super(ptr);

  int SetEnumReadyCallback(
    Pointer<COMObject> percb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> percb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> percb,
          )>()(
        ptr.ref.lpVtbl,
        percb,
      );

  int CreateEnumIDListFromContents(
    Pointer<ITEMIDLIST> pidlFolder,
    int dwEnumFlags,
    Pointer<Pointer<COMObject>> ppEnumIDList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
            Uint32 dwEnumFlags,
            Pointer<Pointer<COMObject>> ppEnumIDList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
            int dwEnumFlags,
            Pointer<Pointer<COMObject>> ppEnumIDList,
          )>()(
        ptr.ref.lpVtbl,
        pidlFolder,
        dwEnumFlags,
        ppEnumIDList,
      );
}
