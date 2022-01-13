// IDataObjectAsyncCapability.dart

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
import '../../system/com/IBindCtx.dart';

/// @nodoc
const IID_IDataObjectAsyncCapability = '{3D8B0590-F691-11D2-8EA9-006097DF5BD4}';

/// {@category Interface}
/// {@category com}
class IDataObjectAsyncCapability extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDataObjectAsyncCapability(Pointer<COMObject> ptr) : super(ptr);

  int SetAsyncMode(
    int fDoOpAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fDoOpAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fDoOpAsync,
          )>()(
        ptr.ref.lpVtbl,
        fDoOpAsync,
      );

  int GetAsyncMode(
    Pointer<Int32> pfIsOpAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsOpAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsOpAsync,
          )>()(
        ptr.ref.lpVtbl,
        pfIsOpAsync,
      );

  int StartOperation(
    Pointer<COMObject> pbcReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pbcReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pbcReserved,
          )>()(
        ptr.ref.lpVtbl,
        pbcReserved,
      );

  int InOperation(
    Pointer<Int32> pfInAsyncOp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfInAsyncOp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfInAsyncOp,
          )>()(
        ptr.ref.lpVtbl,
        pfInAsyncOp,
      );

  int EndOperation(
    int hResult,
    Pointer<COMObject> pbcReserved,
    int dwEffects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
            Pointer<COMObject> pbcReserved,
            Uint32 dwEffects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
            Pointer<COMObject> pbcReserved,
            int dwEffects,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
        pbcReserved,
        dwEffects,
      );
}
