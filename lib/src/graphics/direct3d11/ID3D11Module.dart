// ID3D11Module.dart

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
import '../../graphics/direct3d11/ID3D11ModuleInstance.dart';

/// @nodoc
const IID_ID3D11Module = '{CAC701EE-80FC-4122-8242-10B39C8CEC34}';

/// {@category Interface}
/// {@category com}
class ID3D11Module extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D11Module(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    Pointer<Utf8> pNamespace,
    Pointer<Pointer<COMObject>> ppModuleInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pNamespace,
            Pointer<Pointer<COMObject>> ppModuleInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pNamespace,
            Pointer<Pointer<COMObject>> ppModuleInstance,
          )>()(
        ptr.ref.lpVtbl,
        pNamespace,
        ppModuleInstance,
      );
}
