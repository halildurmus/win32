// ISyncMgrSynchronizeInvoke.dart

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

/// @nodoc
const IID_ISyncMgrSynchronizeInvoke = '{6295DF2C-35EE-11D1-8707-00C04FD93327}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSynchronizeInvoke extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISyncMgrSynchronizeInvoke(Pointer<COMObject> ptr) : super(ptr);

  int UpdateItems(
    int dwInvokeFlags,
    Pointer<GUID> clsid,
    int cbCookie,
    Pointer<Uint8> pCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInvokeFlags,
            Pointer<GUID> clsid,
            Uint32 cbCookie,
            Pointer<Uint8> pCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInvokeFlags,
            Pointer<GUID> clsid,
            int cbCookie,
            Pointer<Uint8> pCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwInvokeFlags,
        clsid,
        cbCookie,
        pCookie,
      );

  int UpdateAll() => ptr.ref.lpVtbl.value
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
}
