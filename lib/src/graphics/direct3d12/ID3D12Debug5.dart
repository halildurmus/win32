// ID3D12Debug5.dart

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

import '../../graphics/direct3d12/ID3D12Debug4.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Debug5 = '{548D6B12-09FA-40E0-9069-5DCD589A52C9}';

/// {@category Interface}
/// {@category com}
class ID3D12Debug5 extends ID3D12Debug4 {
  // vtable begins at 8, is 1 entries long.
  ID3D12Debug5(Pointer<COMObject> ptr) : super(ptr);

  void SetEnableAutoName(
    int Enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Enable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Enable,
          )>()(
        ptr.ref.lpVtbl,
        Enable,
      );
}
