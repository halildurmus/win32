// IDXGIDeviceSubObject.dart

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

import '../../graphics/dxgi/IDXGIObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIDeviceSubObject = '{3D3E0379-F9DE-4D58-BB6C-18D62992F1A6}';

/// {@category Interface}
/// {@category com}
class IDXGIDeviceSubObject extends IDXGIObject {
  // vtable begins at 7, is 1 entries long.
  IDXGIDeviceSubObject(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(
    Pointer<GUID> riid,
    Pointer<Pointer> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppDevice,
      );
}
