// IDxcBlobUtf16.dart

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

import '../../../graphics/direct3d/dxc/IDxcBlobEncoding.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDxcBlobUtf16 = '{A3F84EAB-0FAA-497E-A39C-EE6ED60B2D84}';

/// {@category Interface}
/// {@category com}
class IDxcBlobUtf16 extends IDxcBlobEncoding {
  // vtable begins at 6, is 2 entries long.
  IDxcBlobUtf16(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> GetStringPointer() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<Utf16> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<Utf16> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetStringLength() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
