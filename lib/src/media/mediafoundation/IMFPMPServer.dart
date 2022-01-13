// IMFPMPServer.dart

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
const IID_IMFPMPServer = '{994E23AF-1CC2-493C-B9FA-46F1CB040FA4}';

/// {@category Interface}
/// {@category com}
class IMFPMPServer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFPMPServer(Pointer<COMObject> ptr) : super(ptr);

  int LockProcess() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int UnlockProcess() => ptr.ref.lpVtbl.value
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

  int CreateObjectByCLSID(
    Pointer<GUID> clsid,
    Pointer<GUID> riid,
    Pointer<Pointer> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<GUID> riid,
            Pointer<Pointer> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<GUID> riid,
            Pointer<Pointer> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        riid,
        ppObject,
      );
}
