// IUPnPEventSource.dart

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
import '../../../devices/enumeration/pnp/IUPnPEventSink.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IUPnPEventSource = '{204810B5-73B2-11D4-BF42-00B0D0118B56}';

/// {@category Interface}
/// {@category com}
class IUPnPEventSource extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUPnPEventSource(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    Pointer<COMObject> pesSubscriber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pesSubscriber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pesSubscriber,
          )>()(
        ptr.ref.lpVtbl,
        pesSubscriber,
      );

  int Unadvise(
    Pointer<COMObject> pesSubscriber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pesSubscriber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pesSubscriber,
          )>()(
        ptr.ref.lpVtbl,
        pesSubscriber,
      );
}
