// IAMAsyncReaderTimestampScaling.dart

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
const IID_IAMAsyncReaderTimestampScaling =
    '{CF7B26FC-9A00-485B-8147-3E789D5E8F67}';

/// {@category Interface}
/// {@category com}
class IAMAsyncReaderTimestampScaling extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAMAsyncReaderTimestampScaling(Pointer<COMObject> ptr) : super(ptr);

  int GetTimestampMode(
    Pointer<Int32> pfRaw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfRaw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfRaw,
          )>()(
        ptr.ref.lpVtbl,
        pfRaw,
      );

  int SetTimestampMode(
    int fRaw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRaw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRaw,
          )>()(
        ptr.ref.lpVtbl,
        fRaw,
      );
}
