// IDebugAdvanced.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugAdvanced = '{F2DF5F53-071F-47BD-9DE6-5734C3FED689}';

/// {@category Interface}
/// {@category com}
class IDebugAdvanced extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDebugAdvanced(Pointer<COMObject> ptr) : super(ptr);

  int GetThreadContext(
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        ContextSize,
      );

  int SetThreadContext(
    Pointer Context,
    int ContextSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer Context,
            Uint32 ContextSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer Context,
            int ContextSize,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        ContextSize,
      );
}
