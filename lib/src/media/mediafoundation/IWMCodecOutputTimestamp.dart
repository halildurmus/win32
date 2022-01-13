// IWMCodecOutputTimestamp.dart

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
const IID_IWMCodecOutputTimestamp = '{B72ADF95-7ADC-4A72-BC05-577D8EA6BF68}';

/// {@category Interface}
/// {@category com}
class IWMCodecOutputTimestamp extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMCodecOutputTimestamp(Pointer<COMObject> ptr) : super(ptr);

  int GetNextOutputTime(
    Pointer<Int64> prtTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtTime,
          )>()(
        ptr.ref.lpVtbl,
        prtTime,
      );
}
