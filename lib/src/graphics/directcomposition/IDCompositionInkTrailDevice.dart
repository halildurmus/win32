// IDCompositionInkTrailDevice.dart

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
import '../../graphics/directcomposition/IDCompositionDelegatedInkTrail.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDCompositionInkTrailDevice =
    '{DF0C7CEC-CDEB-4D4A-B91C-721BF22F4E6C}';

/// {@category Interface}
/// {@category com}
class IDCompositionInkTrailDevice extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDCompositionInkTrailDevice(Pointer<COMObject> ptr) : super(ptr);

  int CreateDelegatedInkTrail(
    Pointer<Pointer<COMObject>> inkTrail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> inkTrail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> inkTrail,
          )>()(
        ptr.ref.lpVtbl,
        inkTrail,
      );

  int CreateDelegatedInkTrailForSwapChain(
    Pointer<COMObject> swapChain,
    Pointer<Pointer<COMObject>> inkTrail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> swapChain,
            Pointer<Pointer<COMObject>> inkTrail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> swapChain,
            Pointer<Pointer<COMObject>> inkTrail,
          )>()(
        ptr.ref.lpVtbl,
        swapChain,
        inkTrail,
      );
}
