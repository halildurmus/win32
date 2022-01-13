// IMFPMPClientApp.dart

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
import '../../media/mediafoundation/IMFPMPHostApp.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFPMPClientApp = '{C004F646-BE2C-48F3-93A2-A0983EBA1108}';

/// {@category Interface}
/// {@category com}
class IMFPMPClientApp extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFPMPClientApp(Pointer<COMObject> ptr) : super(ptr);

  int SetPMPHost(
    Pointer<COMObject> pPMPHost,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPMPHost,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPMPHost,
          )>()(
        ptr.ref.lpVtbl,
        pPMPHost,
      );
}
