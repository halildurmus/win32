// IAMParse.dart

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
const IID_IAMParse = '{C47A3420-005C-11D2-9038-00A0C9697298}';

/// {@category Interface}
/// {@category com}
class IAMParse extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMParse(Pointer<COMObject> ptr) : super(ptr);

  int GetParseTime(
    Pointer<Int64> prtCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtCurrent,
          )>()(
        ptr.ref.lpVtbl,
        prtCurrent,
      );

  int SetParseTime(
    int rtCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rtCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rtCurrent,
          )>()(
        ptr.ref.lpVtbl,
        rtCurrent,
      );

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
