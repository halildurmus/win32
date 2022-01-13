// IBrowserFrameOptions.dart

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
const IID_IBrowserFrameOptions = '{10DF43C8-1DBE-11D3-8B34-006097DF5BD4}';

/// {@category Interface}
/// {@category com}
class IBrowserFrameOptions extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBrowserFrameOptions(Pointer<COMObject> ptr) : super(ptr);

  int GetFrameOptions(
    int dwMask,
    Pointer<Uint32> pdwOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMask,
            Pointer<Uint32> pdwOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMask,
            Pointer<Uint32> pdwOptions,
          )>()(
        ptr.ref.lpVtbl,
        dwMask,
        pdwOptions,
      );
}
