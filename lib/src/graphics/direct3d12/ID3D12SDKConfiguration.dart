// ID3D12SDKConfiguration.dart

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

/// @nodoc
const IID_ID3D12SDKConfiguration = '{E9EB5314-33AA-42B2-A718-D77F58B1F1C7}';

/// {@category Interface}
/// {@category com}
class ID3D12SDKConfiguration extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D12SDKConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int SetSDKVersion(
    int SDKVersion,
    Pointer<Utf8> SDKPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SDKVersion,
            Pointer<Utf8> SDKPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SDKVersion,
            Pointer<Utf8> SDKPath,
          )>()(
        ptr.ref.lpVtbl,
        SDKVersion,
        SDKPath,
      );
}
