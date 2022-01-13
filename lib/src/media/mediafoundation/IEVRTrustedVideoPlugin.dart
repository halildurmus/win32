// IEVRTrustedVideoPlugin.dart

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
const IID_IEVRTrustedVideoPlugin = '{83A4CE40-7710-494B-A893-A472049AF630}';

/// {@category Interface}
/// {@category com}
class IEVRTrustedVideoPlugin extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEVRTrustedVideoPlugin(Pointer<COMObject> ptr) : super(ptr);

  int IsInTrustedVideoMode(
    Pointer<Int32> pYes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pYes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pYes,
          )>()(
        ptr.ref.lpVtbl,
        pYes,
      );

  int CanConstrict(
    Pointer<Int32> pYes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pYes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pYes,
          )>()(
        ptr.ref.lpVtbl,
        pYes,
      );

  int SetConstriction(
    int dwKPix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwKPix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwKPix,
          )>()(
        ptr.ref.lpVtbl,
        dwKPix,
      );

  int DisableImageExport(
    int bDisable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bDisable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bDisable,
          )>()(
        ptr.ref.lpVtbl,
        bDisable,
      );
}
