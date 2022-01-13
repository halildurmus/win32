// IBufferingTime.dart

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
const IID_IBufferingTime = '{1E00486A-78DD-11D2-8DD3-006097C9A2B2}';

/// {@category Interface}
/// {@category com}
class IBufferingTime extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBufferingTime(Pointer<COMObject> ptr) : super(ptr);

  int GetBufferingTime(
    Pointer<Uint32> pdwMilliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMilliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMilliseconds,
          )>()(
        ptr.ref.lpVtbl,
        pdwMilliseconds,
      );

  int SetBufferingTime(
    int dwMilliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMilliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMilliseconds,
          )>()(
        ptr.ref.lpVtbl,
        dwMilliseconds,
      );
}
