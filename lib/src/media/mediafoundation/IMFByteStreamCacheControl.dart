// IMFByteStreamCacheControl.dart

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
const IID_IMFByteStreamCacheControl = '{F5042EA4-7A96-4A75-AA7B-2BE1EF7F88D5}';

/// {@category Interface}
/// {@category com}
class IMFByteStreamCacheControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFByteStreamCacheControl(Pointer<COMObject> ptr) : super(ptr);

  int StopBackgroundTransfer() => ptr.ref.lpVtbl.value
          .elementAt(3)
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
