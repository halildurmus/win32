// IComTrackingInfoEvents.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComTrackingInfoEvents = '{4E6CDCC9-FB25-4FD5-9CC5-C9F4B6559CEC}';

/// {@category Interface}
/// {@category com}
class IComTrackingInfoEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IComTrackingInfoEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnNewTrackingInfo(
    Pointer<COMObject> pToplevelCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pToplevelCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pToplevelCollection,
          )>()(
        ptr.ref.lpVtbl,
        pToplevelCollection,
      );
}
