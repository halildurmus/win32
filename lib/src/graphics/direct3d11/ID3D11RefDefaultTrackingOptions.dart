// ID3D11RefDefaultTrackingOptions.dart

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
const IID_ID3D11RefDefaultTrackingOptions =
    '{03916615-C644-418C-9BF4-75DB5BE63CA0}';

/// {@category Interface}
/// {@category com}
class ID3D11RefDefaultTrackingOptions extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D11RefDefaultTrackingOptions(Pointer<COMObject> ptr) : super(ptr);

  int SetTrackingOptions(
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
}
