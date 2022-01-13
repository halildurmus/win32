// IDataTransferManagerInterop.dart

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
const IID_IDataTransferManagerInterop =
    '{3A3DCD6C-3EAB-43DC-BCDE-45671CE800C8}';

/// {@category Interface}
/// {@category com}
class IDataTransferManagerInterop extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataTransferManagerInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> dataTransferManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> dataTransferManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> dataTransferManager,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        dataTransferManager,
      );

  int ShowShareUIForWindow(
    int appWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
      );
}
