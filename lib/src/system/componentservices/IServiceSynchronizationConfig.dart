// IServiceSynchronizationConfig.dart

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
const IID_IServiceSynchronizationConfig =
    '{FD880E81-6DCE-4C58-AF83-A208846C0030}';

/// {@category Interface}
/// {@category com}
class IServiceSynchronizationConfig extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IServiceSynchronizationConfig(Pointer<COMObject> ptr) : super(ptr);

  int ConfigureSynchronization(
    int synchConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 synchConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int synchConfig,
          )>()(
        ptr.ref.lpVtbl,
        synchConfig,
      );
}
