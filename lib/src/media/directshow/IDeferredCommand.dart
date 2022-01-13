// IDeferredCommand.dart

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
const IID_IDeferredCommand = '{56A868B8-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IDeferredCommand extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDeferredCommand(Pointer<COMObject> ptr) : super(ptr);

  int Cancel() => ptr.ref.lpVtbl.value
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

  int Confidence(
    Pointer<Int32> pConfidence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pConfidence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pConfidence,
          )>()(
        ptr.ref.lpVtbl,
        pConfidence,
      );

  int Postpone(
    double newtime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double newtime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double newtime,
          )>()(
        ptr.ref.lpVtbl,
        newtime,
      );

  int GetHResult(
    Pointer<Int32> phrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrResult,
          )>()(
        ptr.ref.lpVtbl,
        phrResult,
      );
}
