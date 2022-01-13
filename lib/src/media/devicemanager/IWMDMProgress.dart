// IWMDMProgress.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMProgress = '{1DCB3A0C-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IWMDMProgress extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMDMProgress(Pointer<COMObject> ptr) : super(ptr);

  int Begin(
    int dwEstimatedTicks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEstimatedTicks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEstimatedTicks,
          )>()(
        ptr.ref.lpVtbl,
        dwEstimatedTicks,
      );

  int Progress(
    int dwTranspiredTicks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTranspiredTicks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTranspiredTicks,
          )>()(
        ptr.ref.lpVtbl,
        dwTranspiredTicks,
      );

  int End() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
