// ID3D11TracingDevice.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_ID3D11TracingDevice = '{1911C771-1587-413E-A7E0-FB26C3DE0268}';

/// {@category Interface}
/// {@category com}
class ID3D11TracingDevice extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID3D11TracingDevice(Pointer<COMObject> ptr) : super(ptr);

  int SetShaderTrackingOptionsByType(
    int ResourceTypeFlags,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ResourceTypeFlags,
            Uint32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResourceTypeFlags,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        ResourceTypeFlags,
        Options,
      );

  int SetShaderTrackingOptions(
    Pointer<COMObject> pShader,
    int Options,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShader,
            Uint32 Options,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShader,
            int Options,
          )>()(
        ptr.ref.lpVtbl,
        pShader,
        Options,
      );
}
