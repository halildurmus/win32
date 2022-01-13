// IPipeByte.dart

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
const IID_IPipeByte = '{DB2F3ACA-2F86-11D1-8E04-00C04FB9989A}';

/// {@category Interface}
/// {@category com}
class IPipeByte extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPipeByte(Pointer<COMObject> ptr) : super(ptr);

  int Pull(
    Pointer<Uint8> buf,
    int cRequest,
    Pointer<Uint32> pcReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> buf,
            Uint32 cRequest,
            Pointer<Uint32> pcReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> buf,
            int cRequest,
            Pointer<Uint32> pcReturned,
          )>()(
        ptr.ref.lpVtbl,
        buf,
        cRequest,
        pcReturned,
      );

  int Push(
    Pointer<Uint8> buf,
    int cSent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> buf,
            Uint32 cSent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> buf,
            int cSent,
          )>()(
        ptr.ref.lpVtbl,
        buf,
        cSent,
      );
}
