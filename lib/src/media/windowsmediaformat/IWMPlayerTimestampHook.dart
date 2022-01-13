// IWMPlayerTimestampHook.dart

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
const IID_IWMPlayerTimestampHook = '{28580DDA-D98E-48D0-B7AE-69E473A02825}';

/// {@category Interface}
/// {@category com}
class IWMPlayerTimestampHook extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMPlayerTimestampHook(Pointer<COMObject> ptr) : super(ptr);

  int MapTimestamp(
    int rtIn,
    Pointer<Int64> prtOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rtIn,
            Pointer<Int64> prtOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rtIn,
            Pointer<Int64> prtOut,
          )>()(
        ptr.ref.lpVtbl,
        rtIn,
        prtOut,
      );
}
