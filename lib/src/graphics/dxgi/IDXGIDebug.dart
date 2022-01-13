// IDXGIDebug.dart

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
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIDebug = '{119E7452-DE9E-40FE-8806-88F90C12B441}';

/// {@category Interface}
/// {@category com}
class IDXGIDebug extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDXGIDebug(Pointer<COMObject> ptr) : super(ptr);

  int ReportLiveObjects(
    GUID apiid,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID apiid,
            Uint32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID apiid,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        apiid,
        flags,
      );
}
