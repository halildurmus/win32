// IMFDXGIDeviceManagerSource.dart

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
import '../../media/mediafoundation/IMFDXGIDeviceManager.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFDXGIDeviceManagerSource = '{20BC074B-7A8D-4609-8C3B-64A0A3B5D7CE}';

/// {@category Interface}
/// {@category com}
class IMFDXGIDeviceManagerSource extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFDXGIDeviceManagerSource(Pointer<COMObject> ptr) : super(ptr);

  int GetManager(
    Pointer<Pointer<COMObject>> ppManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppManager,
          )>()(
        ptr.ref.lpVtbl,
        ppManager,
      );
}
