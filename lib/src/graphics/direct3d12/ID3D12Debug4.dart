// ID3D12Debug4.dart

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

import '../../graphics/direct3d12/ID3D12Debug3.dart';

/// @nodoc
const IID_ID3D12Debug4 = '{014B816E-9EC5-4A2F-A845-FFBE441CE13A}';

/// {@category Interface}
/// {@category com}
class ID3D12Debug4 extends ID3D12Debug3 {
  // vtable begins at 7, is 1 entries long.
  ID3D12Debug4(Pointer<COMObject> ptr) : super(ptr);

  void DisableDebugLayer() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
