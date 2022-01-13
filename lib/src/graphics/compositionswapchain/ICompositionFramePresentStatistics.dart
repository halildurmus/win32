// ICompositionFramePresentStatistics.dart

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

import '../../graphics/compositionswapchain/IPresentStatistics.dart';
import '../../graphics/compositionswapchain/structs.g.dart';

/// @nodoc
const IID_ICompositionFramePresentStatistics =
    '{AB41D127-C101-4C0A-911D-F9F2E9D08E64}';

/// {@category Interface}
/// {@category com}
class ICompositionFramePresentStatistics extends IPresentStatistics {
  // vtable begins at 5, is 3 entries long.
  ICompositionFramePresentStatistics(Pointer<COMObject> ptr) : super(ptr);

  int GetContentTag() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetCompositionFrameId() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void GetDisplayInstanceArray(
    Pointer<Uint32> displayInstanceArrayCount,
    Pointer<Pointer<CompositionFrameDisplayInstance>> displayInstanceArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint32> displayInstanceArrayCount,
            Pointer<Pointer<CompositionFrameDisplayInstance>>
                displayInstanceArray,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint32> displayInstanceArrayCount,
            Pointer<Pointer<CompositionFrameDisplayInstance>>
                displayInstanceArray,
          )>()(
        ptr.ref.lpVtbl,
        displayInstanceArrayCount,
        displayInstanceArray,
      );
}
