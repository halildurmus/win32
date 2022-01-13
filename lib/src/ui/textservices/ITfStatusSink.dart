// ITfStatusSink.dart

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
import '../../ui/textservices/ITfContext.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfStatusSink = '{6B7D8D73-B267-4F69-B32E-1CA321CE4F45}';

/// {@category Interface}
/// {@category com}
class ITfStatusSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfStatusSink(Pointer<COMObject> ptr) : super(ptr);

  int OnStatusChange(
    Pointer<COMObject> pic,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pic,
        dwFlags,
      );
}
