// IDXGIFactory3.dart

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

import '../../graphics/dxgi/IDXGIFactory2.dart';

/// @nodoc
const IID_IDXGIFactory3 = '{25483823-CD46-4C7D-86CA-47AA95B837BD}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory3 extends IDXGIFactory2 {
  // vtable begins at 25, is 1 entries long.
  IDXGIFactory3(Pointer<COMObject> ptr) : super(ptr);

  int GetCreationFlags() => ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
