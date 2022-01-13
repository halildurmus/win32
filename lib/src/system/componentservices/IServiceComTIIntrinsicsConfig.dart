// IServiceComTIIntrinsicsConfig.dart

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
const IID_IServiceComTIIntrinsicsConfig =
    '{09E6831E-04E1-4ED4-9D0F-E8B168BAFEAF}';

/// {@category Interface}
/// {@category com}
class IServiceComTIIntrinsicsConfig extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IServiceComTIIntrinsicsConfig(Pointer<COMObject> ptr) : super(ptr);

  int ComTIIntrinsicsConfig(
    int comtiIntrinsicsConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 comtiIntrinsicsConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int comtiIntrinsicsConfig,
          )>()(
        ptr.ref.lpVtbl,
        comtiIntrinsicsConfig,
      );
}
