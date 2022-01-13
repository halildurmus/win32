// INSSBuffer4.dart

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

import '../../media/windowsmediaformat/INSSBuffer3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INSSBuffer4 = '{B6B8FD5A-32E2-49D4-A910-C26CC85465ED}';

/// {@category Interface}
/// {@category com}
class INSSBuffer4 extends INSSBuffer3 {
  // vtable begins at 12, is 2 entries long.
  INSSBuffer4(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyCount(
    Pointer<Uint32> pcBufferProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcBufferProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcBufferProperties,
          )>()(
        ptr.ref.lpVtbl,
        pcBufferProperties,
      );

  int GetPropertyByIndex(
    int dwBufferPropertyIndex,
    Pointer<GUID> pguidBufferProperty,
    Pointer pvBufferProperty,
    Pointer<Uint32> pdwBufferPropertySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBufferPropertyIndex,
            Pointer<GUID> pguidBufferProperty,
            Pointer pvBufferProperty,
            Pointer<Uint32> pdwBufferPropertySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBufferPropertyIndex,
            Pointer<GUID> pguidBufferProperty,
            Pointer pvBufferProperty,
            Pointer<Uint32> pdwBufferPropertySize,
          )>()(
        ptr.ref.lpVtbl,
        dwBufferPropertyIndex,
        pguidBufferProperty,
        pvBufferProperty,
        pdwBufferPropertySize,
      );
}
