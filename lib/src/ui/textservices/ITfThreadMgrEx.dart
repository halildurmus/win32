// ITfThreadMgrEx.dart

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

import '../../ui/textservices/ITfThreadMgr.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfThreadMgrEx = '{3E90ADE3-7594-4CB0-BB58-69628F5F458C}';

/// {@category Interface}
/// {@category com}
class ITfThreadMgrEx extends ITfThreadMgr {
  // vtable begins at 14, is 2 entries long.
  ITfThreadMgrEx(Pointer<COMObject> ptr) : super(ptr);

  int ActivateEx(
    Pointer<Uint32> ptid,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> ptid,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> ptid,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        ptid,
        dwFlags,
      );

  int GetActiveFlags(
    Pointer<Uint32> lpdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpdwFlags,
      );
}
