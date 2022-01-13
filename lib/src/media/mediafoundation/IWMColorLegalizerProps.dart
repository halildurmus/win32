// IWMColorLegalizerProps.dart

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
const IID_IWMColorLegalizerProps = '{776C93B3-B72D-4508-B6D0-208785F553E7}';

/// {@category Interface}
/// {@category com}
class IWMColorLegalizerProps extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMColorLegalizerProps(Pointer<COMObject> ptr) : super(ptr);

  int SetColorLegalizerQuality(
    int lquality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lquality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lquality,
          )>()(
        ptr.ref.lpVtbl,
        lquality,
      );
}
