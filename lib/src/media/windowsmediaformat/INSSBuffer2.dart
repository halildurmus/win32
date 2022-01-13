// INSSBuffer2.dart

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

import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INSSBuffer2 = '{4F528693-1035-43FE-B428-757561AD3A68}';

/// {@category Interface}
/// {@category com}
class INSSBuffer2 extends INSSBuffer {
  // vtable begins at 8, is 2 entries long.
  INSSBuffer2(Pointer<COMObject> ptr) : super(ptr);

  int GetSampleProperties(
    int cbProperties,
    Pointer<Uint8> pbProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbProperties,
            Pointer<Uint8> pbProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbProperties,
            Pointer<Uint8> pbProperties,
          )>()(
        ptr.ref.lpVtbl,
        cbProperties,
        pbProperties,
      );

  int SetSampleProperties(
    int cbProperties,
    Pointer<Uint8> pbProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbProperties,
            Pointer<Uint8> pbProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbProperties,
            Pointer<Uint8> pbProperties,
          )>()(
        ptr.ref.lpVtbl,
        cbProperties,
        pbProperties,
      );
}
