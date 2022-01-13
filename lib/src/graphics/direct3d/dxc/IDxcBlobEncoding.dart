// IDxcBlobEncoding.dart

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

import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/structs.g.dart';

/// @nodoc
const IID_IDxcBlobEncoding = '{7241D424-2646-4191-97C0-98E96E42FC68}';

/// {@category Interface}
/// {@category com}
class IDxcBlobEncoding extends IDxcBlob {
  // vtable begins at 5, is 1 entries long.
  IDxcBlobEncoding(Pointer<COMObject> ptr) : super(ptr);

  int GetEncoding(
    Pointer<Int32> pKnown,
    Pointer<Uint32> pCodePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pKnown,
            Pointer<Uint32> pCodePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pKnown,
            Pointer<Uint32> pCodePage,
          )>()(
        ptr.ref.lpVtbl,
        pKnown,
        pCodePage,
      );
}
