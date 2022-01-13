// IDxcBlob.dart

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

/// @nodoc
const IID_IDxcBlob = '{8BA5FB08-5195-40E2-AC58-0D989C3A0102}';

/// {@category Interface}
/// {@category com}
class IDxcBlob extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDxcBlob(Pointer<COMObject> ptr) : super(ptr);

  Pointer GetBufferPointer() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetBufferSize() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
