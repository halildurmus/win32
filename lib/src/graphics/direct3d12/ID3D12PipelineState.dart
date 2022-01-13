// ID3D12PipelineState.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../graphics/direct3d/ID3DBlob.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12PipelineState = '{765A30F3-F624-4C6F-A828-ACE948622445}';

/// {@category Interface}
/// {@category com}
class ID3D12PipelineState extends ID3D12Pageable {
  // vtable begins at 8, is 1 entries long.
  ID3D12PipelineState(Pointer<COMObject> ptr) : super(ptr);

  int GetCachedBlob(
    Pointer<Pointer<COMObject>> ppBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBlob,
          )>()(
        ptr.ref.lpVtbl,
        ppBlob,
      );
}
