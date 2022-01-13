// IClockVector.dart

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
const IID_IClockVector = '{14B2274A-8698-4CC6-9333-F89BD1D47BC4}';

/// {@category Interface}
/// {@category com}
class IClockVector extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IClockVector(Pointer<COMObject> ptr) : super(ptr);

  int GetClockVectorElements(
    Pointer<GUID> riid,
    Pointer<Pointer> ppiEnumClockVector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppiEnumClockVector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppiEnumClockVector,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppiEnumClockVector,
      );

  int GetClockVectorElementCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );
}
