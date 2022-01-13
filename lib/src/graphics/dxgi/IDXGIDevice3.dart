// IDXGIDevice3.dart

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

import '../../graphics/dxgi/IDXGIDevice2.dart';

/// @nodoc
const IID_IDXGIDevice3 = '{6007896C-3244-4AFD-BF18-A6D3BEDA5023}';

/// {@category Interface}
/// {@category com}
class IDXGIDevice3 extends IDXGIDevice2 {
  // vtable begins at 17, is 1 entries long.
  IDXGIDevice3(Pointer<COMObject> ptr) : super(ptr);

  void Trim() => ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
