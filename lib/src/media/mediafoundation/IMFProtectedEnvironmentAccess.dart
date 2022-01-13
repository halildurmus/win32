// IMFProtectedEnvironmentAccess.dart

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
const IID_IMFProtectedEnvironmentAccess =
    '{EF5DC845-F0D9-4EC9-B00C-CB5183D38434}';

/// {@category Interface}
/// {@category com}
class IMFProtectedEnvironmentAccess extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFProtectedEnvironmentAccess(Pointer<COMObject> ptr) : super(ptr);

  int Call(
    int inputLength,
    Pointer<Uint8> input,
    int outputLength,
    Pointer<Uint8> output,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 inputLength,
            Pointer<Uint8> input,
            Uint32 outputLength,
            Pointer<Uint8> output,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int inputLength,
            Pointer<Uint8> input,
            int outputLength,
            Pointer<Uint8> output,
          )>()(
        ptr.ref.lpVtbl,
        inputLength,
        input,
        outputLength,
        output,
      );

  int ReadGRL(
    Pointer<Uint32> outputLength,
    Pointer<Pointer<Uint8>> output,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> outputLength,
            Pointer<Pointer<Uint8>> output,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> outputLength,
            Pointer<Pointer<Uint8>> output,
          )>()(
        ptr.ref.lpVtbl,
        outputLength,
        output,
      );
}
