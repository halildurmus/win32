// ISwapChainInterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISwapChainInterop = '{26F496A0-7F38-45FB-88F7-FAAABE67DD59}';

/// {@category Interface}
/// {@category com}
class ISwapChainInterop extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISwapChainInterop(Pointer<COMObject> ptr) : super(ptr);

  int SetSwapChain(
    Pointer<COMObject> swapChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> swapChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> swapChain,
          )>()(
        ptr.ref.lpVtbl,
        swapChain,
      );
}
