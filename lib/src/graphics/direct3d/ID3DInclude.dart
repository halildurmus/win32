// ID3DInclude.dart

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

import '../../graphics/direct3d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3DInclude = 'null';

/// {@category Interface}
/// {@category com}
class ID3DInclude {
  // vtable begins at 0, is 2 entries long.
  Pointer<COMObject> ptr;

  ID3DInclude(this.ptr);

  int Open(
    int IncludeType,
    Pointer<Utf8> pFileName,
    Pointer pParentData,
    Pointer<Pointer> ppData,
    Pointer<Uint32> pBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 IncludeType,
            Pointer<Utf8> pFileName,
            Pointer pParentData,
            Pointer<Pointer> ppData,
            Pointer<Uint32> pBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int IncludeType,
            Pointer<Utf8> pFileName,
            Pointer pParentData,
            Pointer<Pointer> ppData,
            Pointer<Uint32> pBytes,
          )>()(
        ptr.ref.lpVtbl,
        IncludeType,
        pFileName,
        pParentData,
        ppData,
        pBytes,
      );

  int Close(
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );
}
