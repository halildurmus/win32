// ID3D12Debug.dart

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

/// @nodoc
const IID_ID3D12Debug = '{344488B7-6846-474B-B989-F027448245E0}';

/// {@category Interface}
/// {@category com}
class ID3D12Debug extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D12Debug(Pointer<COMObject> ptr) : super(ptr);

  void EnableDebugLayer() => ptr.ref.lpVtbl.value
          .elementAt(3)
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
