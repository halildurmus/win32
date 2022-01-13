// IDxcVersionInfo2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../graphics/direct3d/dxc/IDxcVersionInfo.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDxcVersionInfo2 = '{FB6904C4-42F0-4B62-9C46-983AF7DA7C83}';

/// {@category Interface}
/// {@category com}
class IDxcVersionInfo2 extends IDxcVersionInfo {
  // vtable begins at 5, is 1 entries long.
  IDxcVersionInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetCommitInfo(
    Pointer<Uint32> pCommitCount,
    Pointer<Pointer<Int8>> pCommitHash,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCommitCount,
            Pointer<Pointer<Int8>> pCommitHash,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCommitCount,
            Pointer<Pointer<Int8>> pCommitHash,
          )>()(
        ptr.ref.lpVtbl,
        pCommitCount,
        pCommitHash,
      );
}
