// INSSBuffer3.dart

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

import '../../media/windowsmediaformat/INSSBuffer2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INSSBuffer3 = '{C87CEAAF-75BE-4BC4-84EB-AC2798507672}';

/// {@category Interface}
/// {@category com}
class INSSBuffer3 extends INSSBuffer2 {
  // vtable begins at 10, is 2 entries long.
  INSSBuffer3(Pointer<COMObject> ptr) : super(ptr);

  int SetProperty(
    GUID guidBufferProperty,
    Pointer pvBufferProperty,
    int dwBufferPropertySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidBufferProperty,
            Pointer pvBufferProperty,
            Uint32 dwBufferPropertySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidBufferProperty,
            Pointer pvBufferProperty,
            int dwBufferPropertySize,
          )>()(
        ptr.ref.lpVtbl,
        guidBufferProperty,
        pvBufferProperty,
        dwBufferPropertySize,
      );

  int GetProperty(
    GUID guidBufferProperty,
    Pointer pvBufferProperty,
    Pointer<Uint32> pdwBufferPropertySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidBufferProperty,
            Pointer pvBufferProperty,
            Pointer<Uint32> pdwBufferPropertySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidBufferProperty,
            Pointer pvBufferProperty,
            Pointer<Uint32> pdwBufferPropertySize,
          )>()(
        ptr.ref.lpVtbl,
        guidBufferProperty,
        pvBufferProperty,
        pdwBufferPropertySize,
      );
}
