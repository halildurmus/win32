// IReconcilableObject.dart

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
import '../../ui/legacywindowsenvironmentfeatures/IReconcileInitiator.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IMoniker.dart';
import '../../system/com/structuredstorage/IStorage.dart';

/// @nodoc
const IID_IReconcilableObject = '{99180162-DA16-101A-935C-444553540000}';

/// {@category Interface}
/// {@category com}
class IReconcilableObject extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IReconcilableObject(Pointer<COMObject> ptr) : super(ptr);

  int Reconcile(
    Pointer<COMObject> pInitiator,
    int dwFlags,
    int hwndOwner,
    int hwndProgressFeedback,
    int ulcInput,
    Pointer<Pointer<COMObject>> rgpmkOtherInput,
    Pointer<Int32> plOutIndex,
    Pointer<COMObject> pstgNewResidues,
    Pointer pvReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInitiator,
            Uint32 dwFlags,
            IntPtr hwndOwner,
            IntPtr hwndProgressFeedback,
            Uint32 ulcInput,
            Pointer<Pointer<COMObject>> rgpmkOtherInput,
            Pointer<Int32> plOutIndex,
            Pointer<COMObject> pstgNewResidues,
            Pointer pvReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInitiator,
            int dwFlags,
            int hwndOwner,
            int hwndProgressFeedback,
            int ulcInput,
            Pointer<Pointer<COMObject>> rgpmkOtherInput,
            Pointer<Int32> plOutIndex,
            Pointer<COMObject> pstgNewResidues,
            Pointer pvReserved,
          )>()(
        ptr.ref.lpVtbl,
        pInitiator,
        dwFlags,
        hwndOwner,
        hwndProgressFeedback,
        ulcInput,
        rgpmkOtherInput,
        plOutIndex,
        pstgNewResidues,
        pvReserved,
      );

  int GetProgressFeedbackMaxEstimate(
    Pointer<Uint32> pulProgressMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulProgressMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulProgressMax,
          )>()(
        ptr.ref.lpVtbl,
        pulProgressMax,
      );
}
