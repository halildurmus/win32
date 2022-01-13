// IWMResamplerProps.dart

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
const IID_IWMResamplerProps = '{E7E9984F-F09F-4DA4-903F-6E2E0EFE56B5}';

/// {@category Interface}
/// {@category com}
class IWMResamplerProps extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMResamplerProps(Pointer<COMObject> ptr) : super(ptr);

  int SetHalfFilterLength(
    int lhalfFilterLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lhalfFilterLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lhalfFilterLen,
          )>()(
        ptr.ref.lpVtbl,
        lhalfFilterLen,
      );

  int SetUserChannelMtx(
    Pointer<Float> userChannelMtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> userChannelMtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> userChannelMtx,
          )>()(
        ptr.ref.lpVtbl,
        userChannelMtx,
      );
}
