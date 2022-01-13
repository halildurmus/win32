// IESFileExpiryDateEvent.dart

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
const IID_IESFileExpiryDateEvent = '{BA9EDCB6-4D36-4CFE-8C56-87A6B0CA48E1}';

/// {@category Interface}
/// {@category com}
class IESFileExpiryDateEvent extends IESEvent {
  // vtable begins at 8, is 6 entries long.
  IESFileExpiryDateEvent(Pointer<COMObject> ptr) : super(ptr);

  int GetTunerId(
    Pointer<GUID> pguidTunerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidTunerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidTunerId,
          )>()(
        ptr.ref.lpVtbl,
        pguidTunerId,
      );

  int GetExpiryDate(
    Pointer<Uint64> pqwExpiryDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwExpiryDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwExpiryDate,
          )>()(
        ptr.ref.lpVtbl,
        pqwExpiryDate,
      );

  int GetFinalExpiryDate(
    Pointer<Uint64> pqwExpiryDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwExpiryDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwExpiryDate,
          )>()(
        ptr.ref.lpVtbl,
        pqwExpiryDate,
      );

  int GetMaxRenewalCount(
    Pointer<Uint32> dwMaxRenewalCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwMaxRenewalCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwMaxRenewalCount,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxRenewalCount,
      );

  int IsEntitlementTokenPresent(
    Pointer<Int32> pfEntTokenPresent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEntTokenPresent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEntTokenPresent,
          )>()(
        ptr.ref.lpVtbl,
        pfEntTokenPresent,
      );

  int DoesExpireAfterFirstUse(
    Pointer<Int32> pfExpireAfterFirstUse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfExpireAfterFirstUse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfExpireAfterFirstUse,
          )>()(
        ptr.ref.lpVtbl,
        pfExpireAfterFirstUse,
      );
}
