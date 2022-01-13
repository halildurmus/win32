// ITmNodeName.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITmNodeName = '{30274F88-6EE4-474E-9B95-7807BC9EF8CF}';

/// {@category Interface}
/// {@category com}
class ITmNodeName extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITmNodeName(Pointer<COMObject> ptr) : super(ptr);

  int GetNodeNameSize(
    Pointer<Uint32> pcbNodeNameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbNodeNameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbNodeNameSize,
          )>()(
        ptr.ref.lpVtbl,
        pcbNodeNameSize,
      );

  int GetNodeName(
    int cbNodeNameBufferSize,
    Pointer<Utf16> pNodeNameBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbNodeNameBufferSize,
            Pointer<Utf16> pNodeNameBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbNodeNameBufferSize,
            Pointer<Utf16> pNodeNameBuffer,
          )>()(
        ptr.ref.lpVtbl,
        cbNodeNameBufferSize,
        pNodeNameBuffer,
      );
}
