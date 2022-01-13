// IPresentationFactory.dart

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
import '../../graphics/compositionswapchain/IPresentationManager.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPresentationFactory = '{8FB37B58-1D74-4F64-A49C-1F97A80A2EC0}';

/// {@category Interface}
/// {@category com}
class IPresentationFactory extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPresentationFactory(Pointer<COMObject> ptr) : super(ptr);

  int IsPresentationSupported() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint8 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsPresentationSupportedWithIndependentFlip() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint8 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CreatePresentationManager(
    Pointer<Pointer<COMObject>> ppPresentationManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationManager,
          )>()(
        ptr.ref.lpVtbl,
        ppPresentationManager,
      );
}
