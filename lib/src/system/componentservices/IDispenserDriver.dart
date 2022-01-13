// IDispenserDriver.dart

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
const IID_IDispenserDriver = '{208B3651-2B48-11CF-BE10-00AA00A2FA25}';

/// {@category Interface}
/// {@category com}
class IDispenserDriver extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDispenserDriver(Pointer<COMObject> ptr) : super(ptr);

  int CreateResource(
    int ResTypId,
    Pointer<IntPtr> pResId,
    Pointer<Int32> pSecsFreeBeforeDestroy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ResTypId,
            Pointer<IntPtr> pResId,
            Pointer<Int32> pSecsFreeBeforeDestroy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResTypId,
            Pointer<IntPtr> pResId,
            Pointer<Int32> pSecsFreeBeforeDestroy,
          )>()(
        ptr.ref.lpVtbl,
        ResTypId,
        pResId,
        pSecsFreeBeforeDestroy,
      );

  int RateResource(
    int ResTypId,
    int ResId,
    int fRequiresTransactionEnlistment,
    Pointer<Uint32> pRating,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ResTypId,
            IntPtr ResId,
            Int32 fRequiresTransactionEnlistment,
            Pointer<Uint32> pRating,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResTypId,
            int ResId,
            int fRequiresTransactionEnlistment,
            Pointer<Uint32> pRating,
          )>()(
        ptr.ref.lpVtbl,
        ResTypId,
        ResId,
        fRequiresTransactionEnlistment,
        pRating,
      );

  int EnlistResource(
    int ResId,
    int TransId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ResId,
            IntPtr TransId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResId,
            int TransId,
          )>()(
        ptr.ref.lpVtbl,
        ResId,
        TransId,
      );

  int ResetResource(
    int ResId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ResId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResId,
          )>()(
        ptr.ref.lpVtbl,
        ResId,
      );

  int DestroyResource(
    int ResId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ResId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ResId,
          )>()(
        ptr.ref.lpVtbl,
        ResId,
      );

  int DestroyResourceS(
    Pointer<Uint16> ResId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> ResId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> ResId,
          )>()(
        ptr.ref.lpVtbl,
        ResId,
      );
}
