// IVssComponentEx2.dart

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

import '../../storage/vss/IVssComponentEx.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVssComponentEx2 = '{3B5BE0F2-07A9-4E4B-BDD3-CFDC8E2C0D2D}';

/// {@category Interface}
/// {@category com}
class IVssComponentEx2 extends IVssComponentEx {
  // vtable begins at 48, is 2 entries long.
  IVssComponentEx2(Pointer<COMObject> ptr) : super(ptr);

  int SetFailure(
    int hr,
    int hrApplication,
    Pointer<Utf16> wszApplicationMessage,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
            Int32 hrApplication,
            Pointer<Utf16> wszApplicationMessage,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            int hrApplication,
            Pointer<Utf16> wszApplicationMessage,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        hrApplication,
        wszApplicationMessage,
        dwReserved,
      );

  int GetFailure(
    Pointer<Int32> phr,
    Pointer<Int32> phrApplication,
    Pointer<Pointer<Utf16>> pbstrApplicationMessage,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phr,
            Pointer<Int32> phrApplication,
            Pointer<Pointer<Utf16>> pbstrApplicationMessage,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phr,
            Pointer<Int32> phrApplication,
            Pointer<Pointer<Utf16>> pbstrApplicationMessage,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        phr,
        phrApplication,
        pbstrApplicationMessage,
        pdwReserved,
      );
}
