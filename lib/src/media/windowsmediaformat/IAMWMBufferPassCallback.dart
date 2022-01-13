// IAMWMBufferPassCallback.dart

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
import '../../media/windowsmediaformat/INSSBuffer3.dart';
import '../../media/directshow/IPin.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMWMBufferPassCallback = '{B25B8372-D2D2-44B2-8653-1B8DAE332489}';

/// {@category Interface}
/// {@category com}
class IAMWMBufferPassCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMWMBufferPassCallback(Pointer<COMObject> ptr) : super(ptr);

  int Notify(
    Pointer<COMObject> pNSSBuffer3,
    Pointer<COMObject> pPin,
    Pointer<Int64> prtStart,
    Pointer<Int64> prtEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNSSBuffer3,
            Pointer<COMObject> pPin,
            Pointer<Int64> prtStart,
            Pointer<Int64> prtEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNSSBuffer3,
            Pointer<COMObject> pPin,
            Pointer<Int64> prtStart,
            Pointer<Int64> prtEnd,
          )>()(
        ptr.ref.lpVtbl,
        pNSSBuffer3,
        pPin,
        prtStart,
        prtEnd,
      );
}
