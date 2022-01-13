// IWMPNodeRealEstateHost.dart

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
const IID_IWMPNodeRealEstateHost = '{1491087D-2C6B-44C8-B019-B3C929D2ADA9}';

/// {@category Interface}
/// {@category com}
class IWMPNodeRealEstateHost extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMPNodeRealEstateHost(Pointer<COMObject> ptr) : super(ptr);

  int OnDesiredSizeChange(
    Pointer<SIZE> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pSize,
          )>()(
        ptr.ref.lpVtbl,
        pSize,
      );

  int OnFullScreenTransition(
    int fFullScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fFullScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fFullScreen,
          )>()(
        ptr.ref.lpVtbl,
        fFullScreen,
      );
}
