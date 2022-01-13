// IVMRMixerBitmap.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVMRMixerBitmap = '{1E673275-0257-40AA-AF20-7C608D4A0428}';

/// {@category Interface}
/// {@category com}
class IVMRMixerBitmap extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVMRMixerBitmap(Pointer<COMObject> ptr) : super(ptr);

  int SetAlphaBitmap(
    Pointer<VMRALPHABITMAP> pBmpParms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRALPHABITMAP> pBmpParms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRALPHABITMAP> pBmpParms,
          )>()(
        ptr.ref.lpVtbl,
        pBmpParms,
      );

  int UpdateAlphaBitmapParameters(
    Pointer<VMRALPHABITMAP> pBmpParms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRALPHABITMAP> pBmpParms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRALPHABITMAP> pBmpParms,
          )>()(
        ptr.ref.lpVtbl,
        pBmpParms,
      );

  int GetAlphaBitmapParameters(
    Pointer<VMRALPHABITMAP> pBmpParms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VMRALPHABITMAP> pBmpParms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VMRALPHABITMAP> pBmpParms,
          )>()(
        ptr.ref.lpVtbl,
        pBmpParms,
      );
}
