// IESRequestTunerEvent.dart

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

import '../../media/directshow/IESEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IESRequestTunerEvent = '{54C7A5E8-C3BB-4F51-AF14-E0E2C0E34C6D}';

/// {@category Interface}
/// {@category com}
class IESRequestTunerEvent extends IESEvent {
  // vtable begins at 8, is 4 entries long.
  IESRequestTunerEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetPriority(
    Pointer<Uint8> pbyPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbyPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbyPriority,
          )>()(
        ptr.ref.lpVtbl,
        pbyPriority,
      );

  int GetReason(
    Pointer<Uint8> pbyReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbyReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbyReason,
          )>()(
        ptr.ref.lpVtbl,
        pbyReason,
      );

  int GetConsequences(
    Pointer<Uint8> pbyConsequences,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbyConsequences,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbyConsequences,
          )>()(
        ptr.ref.lpVtbl,
        pbyConsequences,
      );

  int GetEstimatedTime(
    Pointer<Uint32> pdwEstimatedTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwEstimatedTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwEstimatedTime,
          )>()(
        ptr.ref.lpVtbl,
        pdwEstimatedTime,
      );
}
