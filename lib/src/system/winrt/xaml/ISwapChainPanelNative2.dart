// ISwapChainPanelNative2.dart

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

import '../../../system/winrt/xaml/ISwapChainPanelNative.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISwapChainPanelNative2 = '{D5A2F60C-37B2-44A2-937B-8D8EB9726821}';

/// {@category Interface}
/// {@category com}
class ISwapChainPanelNative2 extends ISwapChainPanelNative {
  // vtable begins at 4, is 1 entries long.
  ISwapChainPanelNative2(Pointer<COMObject> ptr) : super(ptr);

  int SetSwapChainHandle(
    int swapChainHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr swapChainHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int swapChainHandle,
          )>()(
        ptr.ref.lpVtbl,
        swapChainHandle,
      );
}
