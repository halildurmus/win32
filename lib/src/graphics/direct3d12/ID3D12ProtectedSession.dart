// ID3D12ProtectedSession.dart

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

import '../../graphics/direct3d12/ID3D12DeviceChild.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12ProtectedSession = '{A1533D18-0AC1-4084-85B9-89A96116806B}';

/// {@category Interface}
/// {@category com}
class ID3D12ProtectedSession extends ID3D12DeviceChild {
  // vtable begins at 8, is 2 entries long.
  ID3D12ProtectedSession(Pointer<COMObject> ptr) : super(ptr);

  int GetStatusFence(
    Pointer<GUID> riid,
    Pointer<Pointer> ppFence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppFence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppFence,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppFence,
      );

  int GetSessionStatus() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
