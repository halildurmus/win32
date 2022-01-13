// ID3D12ProtectedResourceSession1.dart

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

import '../../graphics/direct3d12/ID3D12ProtectedResourceSession.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12ProtectedResourceSession1 =
    '{D6F12DD6-76FB-406E-8961-4296EEFC0409}';

/// {@category Interface}
/// {@category com}
class ID3D12ProtectedResourceSession1 extends ID3D12ProtectedResourceSession {
  // vtable begins at 11, is 1 entries long.
  ID3D12ProtectedResourceSession1(Pointer<COMObject> ptr) : super(ptr);

  D3D12_PROTECTED_RESOURCE_SESSION_DESC1 GetDesc1() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_PROTECTED_RESOURCE_SESSION_DESC1 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_PROTECTED_RESOURCE_SESSION_DESC1 Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
