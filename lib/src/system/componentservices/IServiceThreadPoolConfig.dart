// IServiceThreadPoolConfig.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServiceThreadPoolConfig = '{186D89BC-F277-4BCC-80D5-4DF7B836EF4A}';

/// {@category Interface}
/// {@category com}
class IServiceThreadPoolConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IServiceThreadPoolConfig(Pointer<COMObject> ptr) : super(ptr);

  int SelectThreadPool(
    int threadPool,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 threadPool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threadPool,
          )>()(
        ptr.ref.lpVtbl,
        threadPool,
      );

  int SetBindingInfo(
    int binding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 binding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int binding,
          )>()(
        ptr.ref.lpVtbl,
        binding,
      );
}
