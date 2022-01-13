// ID3D12ProtectedResourceSession.dart

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

import '../../graphics/direct3d12/ID3D12ProtectedSession.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12ProtectedResourceSession =
    '{6CD696F4-F289-40CC-8091-5A6C0A099C3D}';

/// {@category Interface}
/// {@category com}
class ID3D12ProtectedResourceSession extends ID3D12ProtectedSession {
  // vtable begins at 10, is 1 entries long.
  ID3D12ProtectedResourceSession(Pointer<COMObject> ptr) : super(ptr);

  D3D12_PROTECTED_RESOURCE_SESSION_DESC GetDesc() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_PROTECTED_RESOURCE_SESSION_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_PROTECTED_RESOURCE_SESSION_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
